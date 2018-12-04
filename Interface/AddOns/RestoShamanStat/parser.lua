local revision = tonumber(string.sub("$Revision: 111 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

-- Compile the stat information for healing which is being copied by Ascendance, Ancestral Guidance or Cloudburst Totem
-- This information will be used to estimate stat effects on the copies
function rss.CalcCopy(record, amount, incrementalSpGain, masteryGain, incrementalMasteryGain, versatilityGain, incrementalVersatilityGain, critical )
	if critical then
		record.rawHealing[1] = record.rawHealing[1] + amount;
	else
		record.rawHealing[2] = record.rawHealing[2] + amount;
	end
	record.incrementalSp = record.incrementalSp + incrementalSpGain;
	record.masteryTotal = record.masteryTotal + masteryGain;
	record.versatilityTotal = record.versatilityTotal + versatilityGain;
	record.incrementalMastery = record.incrementalMastery + incrementalMasteryGain;
	record.incrementalVersatility = record.incrementalVersatility + incrementalVersatilityGain;
end

function rss.Leak(reason, healed)
	--print("RSS: Leakage detected");
	if not rss.fight.leakage[reason] then
		rss.fight.leakage[reason] = 0.0;
	end
	rss.fight.leakage[reason] = rss.fight.leakage[reason] + healed;
end

function rss.CombatLogEntry(...)
	local playerState = rss.playerState;
	local fight = rss.fight;
	local timestamp, combatEvent, hideCaster, 
	      sourceGUID, sourceName, sourceFlags, sourceRaidFlags, 
	      destGUID, destName, destFlags, destRaidFlags = select(1, ...);
		  
	-- watch for the comings and goings of Spirit Link Totem and Cloudburst Totem
	if sourceGUID == playerState.GUID and combatEvent and strfind(combatEvent, 'SPELL_SUMMON') then
		local spellId, spellName, spellSchool = select(12, ...);
		if spellId == rss.SUMMON_SPIRIT_LINK then 
			playerState.spiritLinkGUID = destGUID;
		elseif spellId == rss.SUMMON_CLOUDBURST then
			playerState.cloudburstGUID = destGUID;
			if playerState.cloudburst then
				rss.ProcessCopyRecord(playerState.cloudburst, fight);
			end
			playerState.cloudburst = rss.CreateCopyRecord();
		end
		return;
	end
	if combatEvent and strfind(combatEvent, 'UNIT_DESTROYED') and destGUID then
		if destGUID == playerState.spiritLinkGUID then
			playerState.spiritLinkGUID = nil;
			return;
		elseif destGUID == playerState.cloudburstGUID then
			playerState.cloudburstGUID = nil;
			return;
		end
    end
	
    -- handle power gains like resurgence
	--[[
    if sourceGUID == playerState.GUID and combatEvent and combatEvent == "SPELL_ENERGIZE" then
        local spellId, spellName, spellSchool = select(12, ...)
        local amount, powerType = select(15, ...)
        if spellId == rss.RESURGENCE then
            fight.resurgence = fight.resurgence + amount
        elseif spellId == rss.PROC_WATER_SHIELD then
            fight.spells[rss.PROC_WATER_SHIELD] = (fight.spells[rss.PROC_WATER_SHIELD] or 0) + 1
        end
        return;
    end
	--]]

	-- The remainder only looks at 
	-- 1) Heals
	-- 2) Cast by us or our SLT/CBT
	-- 3) On a target whose health we know
	local healthTable = rss.healthTable;
	local spiritLinkHeal = playerState.spiritLinkGUID and sourceGUID == playerState.spiritLinkGUID;
	if (sourceGUID == playerState.GUID or spiritLinkHeal) and combatEvent and strfind(combatEvent, '_HEAL') and healthTable[destGUID] then
		-- Check for boss encounter by looking at the target of anybody we heal
		if ( (not fight.isBoss) or (fight.encounterName == "Unknown") ) then
			rss.CheckBoss(destName);
		end

		-- Check for first action of combat
		if fight.startTime <= 0 then
                    fight.startTime = timestamp;
		end
                fight.totalTime = timestamp - fight.startTime;
		
		-- We healed somebody; get the details
		local spellId, spellName, spellSchool = select(12, ...)
		local amount, overhealing, absorbed, critical = select(15, ...)

		-- accumulate total effective throughput
		local healed = math.max(0.,amount - overhealing);
                fight.effectiveTotal = fight.effectiveTotal + healed;

		-- no stat effects on Spirit Link totem heals
		if spiritLinkHeal then 
			return;
                end
		
		-- ignore Leech effects
		if spellId == rss.LEECH then
			return;
		end

		-- Recognize consumables so they can be (mostly) ignored
		if tContains(rss.BANDAGES, spellId) then return; end
		local consumable = tContains(rss.CONSUMABLES, spellId);	
		
		-- Recognize totems
		local totem;
		if rss.SPELLS[spellId] and rss.SPELLS[spellId].totem then
			totem = true;
		end

		-- Recognize periodic healing
		local periodic;
		periodic = strfind(combatEvent, 'PERIODIC_HEAL');

                -- count the number of times we healed with non-periodic spells
                if not periodic then
                    local spellId_count = fight.spells[spellId] or 0
                    spellId_count = spellId_count + 1
                    fight.spells[spellId] = spellId_count
                end

		-- get the health missing from our target
		local deficit = math.max(healthTable[destGUID].maxHealth - healthTable[destGUID].currentHealth, 0);	
		
		-- deal with spell copies from Ascendance, Ancestral Guidance and Cloudburst Totem
		-- this is necessarily only an approximate procedure, especially for Cloudburst (since the original and copied heals happen at completely different times)
		if spellId == rss.RESTORATIVE_MISTS or spellId == rss.ANCESTRAL_GUIDANCE or spellId == rss.CLOUDBURST then
			if playerState.ascendance and spellId == rss.RESTORATIVE_MISTS then
				local ascendance = playerState.ascendance;
				if (overhealing == 0) then
					ascendance.effectiveCopies = ascendance.effectiveCopies + healed;
				end
				ascendance.incrementalCritical[1] = ascendance.incrementalCritical[1] + rss.EvaluateCriticalRating(amount, deficit, true);
				ascendance.incrementalCritical[2] = ascendance.incrementalCritical[2] + rss.EvaluateCriticalRating(amount, deficit, false);
			elseif playerState.ancestralGuidance and spellId == rss.ANCESTRAL_GUIDANCE then
				local guidance = playerState.ancestralGuidance;
				if (overhealing == 0) then
					guidance.effectiveCopies = guidance.effectiveCopies + healed;	
				end
				guidance.incrementalCritical[1] = guidance.incrementalCritical[1] + rss.EvaluateCriticalRating(amount, deficit, true);
				guidance.incrementalCritical[2] = guidance.incrementalCritical[2] + rss.EvaluateCriticalRating(amount, deficit, false);
			elseif playerState.cloudburst and spellId == rss.CLOUDBURST then
				local cloudburst = playerState.cloudburst;
				if (overhealing == 0) then
					cloudburst.effectiveCopies = cloudburst.effectiveCopies + healed;
				end
				cloudburst.incrementalCritical[1] = cloudburst.incrementalCritical[1] + rss.EvaluateCriticalRating(amount, deficit, true);
				cloudburst.incrementalCritical[2] = cloudburst.incrementalCritical[2] + rss.EvaluateCriticalRating(amount, deficit, false);			
			else
				rss.Leak("Missing originals for copy", healed);  -- derp, we have no record of the spell(s) that this heal was copied from
			end
			return; -- nothing more to do for now; stats affect the spell that was copied, not the copy itself
		end
						
		-- Deal with Spellpower and Intellect
		local mySpellPower = playerState.stats.healingBonus;
		local incrementalSp = 0.0;		
		if rss.SPELLS[spellId] and rss.SPELLS[spellId][combatEvent] then
			incrementalSp = amount / mySpellPower;		
		elseif not rss.SPELLS[spellId] and not consumable then
			if not rss.unknownSpells[spellId] then
				print("Unrecognized healing entry: "..spellName.." "..spellId.." "..combatEvent);
				rss.unknownSpells[spellId] = { name = spellName , count = 0 };
			end
			rss.unknownSpells[spellId].count = rss.unknownSpells[spellId].count + 1;
			incrementalSp = 0;
			consumable = true;  -- assume no stat benefits other than crit
		end
		if overhealing == 0 then
			fight.incrementalSpellpower = fight.incrementalSpellpower + incrementalSp;
		end
		
		-- Deal with Mastery
		local masteryGain = 0.0;
		local incrementalMasteryGain = 0.0;
		local hpratio = 0.0;
		-- find last known values of health and max health
		local unitHealthTable = healthTable[destGUID];
		if (not consumable) and rss.SPELLS[spellId] and (not rss.SPELLS[spellId].noMastery) and playerState.stats.masteryBonus > 0 then
			hpratio = 1 - (unitHealthTable.currentHealth/unitHealthTable.maxHealth);
			local m = playerState.stats.masteryBonus;
			masteryGain = amount * hpratio * m / (1 + hpratio * m);
			incrementalMasteryGain = (0.01/rss.RATING_TO_MASTERY) * masteryGain / m;     -- how much would +1 Mastery Rating increase this heal?
			-- average the mastery efficiency factor over all relevant heals
			fight.weightedTotal = fight.weightedTotal + healed * hpratio
			fight.effectiveSubTotal = fight.effectiveSubTotal + healed
			-- accumulate gain from current Mastery
			fight.masteryTotal = fight.masteryTotal + math.max(0.0, masteryGain - overhealing);
			-- accumulate gain from +1 Mastery Rating
			if (overhealing == 0) then
				fight.incrementalMastery = fight.incrementalMastery + incrementalMasteryGain;       
			end	
		end

		-- Versatility
		if (not consumable) and rss.SPELLS[spellId] then
			versatilityGain = amount * ( 1 - 1 / ( 1 + playerState.stats.versatilityBonus) );
			incrementalVersatilityGain = (0.01 / rss.RATING_TO_VERSATILITY) * amount / (1 + playerState.stats.versatilityBonus);
			fight.versatilityTotal = fight.versatilityTotal + math.max(0.0, versatilityGain - overhealing);
			if (overhealing == 0) then
				fight.incrementalVersatility = fight.incrementalVersatility + incrementalVersatilityGain;
			end
		end
		
		-- Deal with Crit
	
		local criticalIncrement, criticalContribution = rss.EvaluateCriticalRating(amount, deficit, critical);
		fight.incrementalCritical = fight.incrementalCritical + criticalIncrement;
		if critical then
			fight.criticalTotal = fight.criticalTotal + criticalContribution;
		end

	-- store info for active copy buffs
		if (playerState.ascendanceAura or playerState.guidanceAura or playerState.cloudburstGUID) then
			-- Ascendance doesn't copy totems
			if playerState.ascendance and (not totem) then
				rss.CalcCopy(playerState.ascendance, amount, incrementalSp, masteryGain, incrementalMasteryGain, versatilityGain, incrementalVersatilityGain, critical);
			end
			-- AG doesn't copy totems, HoTs and some other effects
			if playerState.ancestralGuidance and (not periodic) and (not totem) and (consumable or not rss.SPELLS[spellId] or not rss.SPELLS[spellId].noAG) then
				rss.CalcCopy(playerState.ancestralGuidance, amount, incrementalSp, masteryGain, incrementalMasteryGain, versatilityGain, incrementalVersatilityGain, critical)
			end
			-- Cloudburst copies HoTs and totems
			if playerState.cloudburst then
				rss.CalcCopy(playerState.cloudburst, amount, incrementalSp, masteryGain, incrementalMasteryGain, versatilityGain, incrementalVersatilityGain, critical);
			end
		end
	end
end

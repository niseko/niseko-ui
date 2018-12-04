local revision = tonumber(string.sub("$Revision: 119 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

--Monitor and record player gear, stat, and buff changes

local playerState = 
{
	-- the "stats" table is a current snapshot of the player's relevant stats, talents, etc.
	-- At the start or end of combat (after the previous fight is processed) it is cloned into the baseStats table
	-- At the start of combat, the baseStats table is cloned and stored with the fight record.
	-- Any information required for post-processing/display of the fight data must be included.
	-- Any post-combat routine that needs the player's stats must get them from the corresponding copy of baseStats in the archive.
	stats = 
	{
		-- primary stats
		intellect = nil,
		damageBonus = nil,
		healingBonus = nil,
		-- secondary stats
		passiveCombatRegen = nil,
		spellHaste = nil,
		hasteRating = nil,
		criticalChance = nil,
		criticalRating = nil,
		criticalMultiplier = nil,
		masteryBonus = nil,
		masteryRating = nil,
		versatilityBonus = nil,
		versatilityRating = nil,
	},
	baseStats = { },
	-- basic player info that shouldn't change and doesn't need to be stored
	GUID = nil,
	class = nil,
	role = "UNKNOWN",
	level = nil,
--[[
	artifactEquipped = nil,
	artifactCriticalBonuses =
	{
		[rss.CHAIN_HEAL] = 0.0,
		[rss.CHAIN_HEAL_2T17] = 0.0,
		[rss.HEALING_RAIN] = 0.0,
                [rss.AURA_TIDAL_WAVES] = 0.0, -- increase to tidal waves bonus
	},
--]]
	-- remaining temporary info that may change frequently during combat, but is not needed afterward
	ascendance = nil,
	ascendanceAura = false,
	ascendanceCast = nil,
	ancestralGuidance = nil,
	ancestralGuidanceCast = nil,
	guidanceAura = false,
	tidalWaves = nil,
	spiritLinkGUID = nil,
	cloudburst = nil,
	cloudburstGUID = nil,
	lastHealingWave = nil,
	lastFlameShock = { combatEvent = "SPELL_DAMAGE" },
	busy = 0,
	busyRing = nil,
	busyCounts = 0,
	busyPointer = 0,
	busyInterval = 1.0/rss.WINDOW_RATE,
	busyElapsed = 0.0,
}
rss.playerState = playerState;

local healthTable = { };
rss.healthTable = healthTable;

function rss.CreateCopyRecord()
	local record = { };
	record.rawHealing = { 0.0 , 0.0, 0.0, 0.0 };
	record.incrementalSp = 0.0;
	record.incrementalMastery = 0.0;
	record.incrementalVersatility = 0.0;
	record.incrementalCritical = { 0.0 , 0.0 };
	record.masteryTotal = 0.0;
	record.versatilityTotal = 0.0;
	record.effectiveCopies = 0.0;
	return record;
end

-- deal with healing copy abilities
-- we assume that every 1% increase in our raw (not effective) heals during the duration will mean a corresponding 1% increase in the effective (not raw) copied heals
function rss.ProcessCopyRecord(record, fight)
	local totalRaw = record.rawHealing[1] + record.rawHealing[2];
	if fight and totalRaw > 0 then
		fight.incrementalSpellpower = fight.incrementalSpellpower + record.effectiveCopies*(record.incrementalSp/totalRaw);
		record.incrementalSp = 0.0;
		fight.incrementalMastery = fight.incrementalMastery + record.effectiveCopies*(record.incrementalMastery/totalRaw);
		record.incrementalMastery = 0.0;
		fight.incrementalVersatility = fight.incrementalVersatility + record.effectiveCopies*(record.incrementalVersatility/totalRaw);
		record.incrementalVersatility = 0.0;
		fight.masteryTotal = fight.masteryTotal + record.masteryTotal * (record.effectiveCopies/totalRaw);
		record.masteryTotal = 0.0;
		fight.versatilityTotal = fight.versatilityTotal + record.versatilityTotal * (record.effectiveCopies/totalRaw);
		record.versatilityTotal = 0.0;
		fight.criticalTotal = fight.criticalTotal + record.incrementalCritical[1]*(record.rawHealing[1]/totalRaw)*(rss.RATING_TO_CRIT/0.01)
		for i = 1, 2 do
			fight.incrementalCritical = fight.incrementalCritical + record.incrementalCritical[i]*(record.rawHealing[i]/totalRaw);
			record.incrementalCritical[i] = 0.0;
		end
		record.rawHealing = { 0.0 , 0.0 };
		record.effectiveCopies = 0.0;
	end
end
-- called when the player logs in, and at the start and end of combat
function rss.ResetPlayerState()
	rss.CheckPlayer();
	rss.ClearHealthTable();
	playerState.lastHealingWave = nil;
	playerState.spiritLinkGUID = nil;
	playerState.cloudburstGUID = nil;
	playerState.ascendance = nil;
	playerState.ascendanceCast = nil;
	playerState.ancestralGuidance = nil;
	playerState.ancestralGuidanceCast = nil;
end

-- Finalize any copy processing that's still going on
function rss.FinalizePlayerState()
	if rss.playerState and rss.playerState.ascendance then
		rss.ProcessCopyRecord(rss.playerState.ascendance, rss.fight);
	end
	if rss.playerState and rss.playerState.ancestralGuidance then
		rss.ProcessCopyRecord(rss.playerState.ancestralGuidance, rss.fight);
	end
	if rss.playerState and rss.playerState.cloudburst then
		rss.ProcessCopyRecord(rss.playerState.cloudburst, rss.fight);
	end
	rss.playerState.ascendance = nil;
	rss.playerState.ancestralGuidance = nil;
	rss.playerState.cloudburst = nil;
end

function rss.MonitorState(fight)
	-- detect changes in ascendance/ancestral guidance buff
	local ascendanceUp = playerState.ascendanceAura;
	local guidanceUp = playerState.guidanceAura;
	
	rss.CheckStats();
	rss.CheckBuffs();
	
	if playerState.ascendanceAura and not ascendanceUp then
		-- ascendance was just popped; handle it
		if playerState.ascendance then
			rss.ProcessCopyRecord(playerState.ascendance, fight);
		end
		playerState.ascendance = rss.CreateCopyRecord();
	end
	
	if playerState.guidanceAura and not guidanceUp then
		-- guidance was just popped; handle it
		if playerState.ancestralGuidance then
			rss.ProcessCopyRecord(playerState.ancestralGuidance, fight);
		end
		playerState.ancestralGuidance = rss.CreateCopyRecord();
	end
	
	return playerState;
end

-- called when a spellcast is sent to server
-- this initiates a cast, since by definition no effects can happen before the spell is sent
-- we know the name, but not the spellID, which is only returned if the cast succeeds
function rss.SpellcastSent(...)
	if not rss.casts then return; end
	local spellName = select(2, ...);
	local targetName = select(4, ...);
	targetName = #targetName > 0 and targetName or nil; -- blank targets here are nil in combat log...
	local lineID = select(5, ...);
	local sentEventTime = GetTime();
	local haste = playerState.stats.spellHaste;
	-- how much does +1 Haste Rating increase Haste%, right now
	local unitHaste = rss.CalcBuffedHasteFromRating(rss.playerState.stats.hasteRating+1) - rss.CalcBuffedHasteFromRating(rss.playerState.stats.hasteRating);
	local cast = { sentEventTime = sentEventTime , spellName = spellName , haste = haste , unitHaste = unitHaste , lineID = lineID , targetName = targetName };
	rss.casts:Prepend(cast);
	rss.casts:Visit(rss.PruneCast, sentEventTime);
end

-- called when a spellcast succeeds
-- effects of the spellcast may have already begun to appear in the combat log before this event is received
-- 
function rss.SpellcastSucceeded(fight, ...)
	if not rss.casts then return; end
	local spellName = select(2, ...);
	local lineID = select(4, ...);
	local spellID = select(5, ...);
	local succeedEventTime = GetTime();
	rss.casts:Visit(rss.MatchCast, spellName, lineID, fight, spellID, succeedEventTime);
	rss.casts:Visit(rss.PruneCast, succeedEventTime);
end

-- Called to fill in success information for matching cast, or trash it if we don't care about the spell
function rss.MatchCast(list, node, spellName, lineID, fight, spellID, succeedEventTime)
	if node.spellName == spellName and node.lineID == lineID and not node.succeedEventTime then
		if rss.SpellFilter(spellID) then
			node.fight = fight;
			node.spellID = spellID;
			node.succeedEventTime = succeedEventTime;
			local updatePointer = math.floor((playerState.busyPointer + rss.WINDOW_FUTURE * rss.WINDOW_RATE) % rss.WINDOW_BINS);
			playerState.busyRing[updatePointer].casts:Append({ cast = node });
			rss.CorrelateEvents();
		else
			list:Remove(node);
			node = nil;
		end
		return true;
	end
end

-- runs the correlator function to test every event to a specified cast
-- if exclusive is true, the comparison stops after the first successful match
-- any matched events are deleted from the event list
function rss.CorrelateCastToEvents(events, event, cast, correlator, exclusive)
	if correlator(cast, event) then
		events:Remove(event);
		return exclusive;
	end
end

-- Called to remove casts that were sent but have not succeeded after some time, or casts that have had their busy fraction filled in
function rss.PruneCast(list, node, eventTime)
	if not node.succeedEventTime and eventTime >= node.sentEventTime + rss.CAST_TIMEOUT then
		list:Remove(node);
		node = nil;
	elseif node.succeedEventTime and node.succeedLogTime and node.busyFraction then
		local finished = (eventTime >= node.lastEventTime + rss.CAST_TIMEOUT and node.activeAuras == nil) or (rss.QueueInterCombat and rss.QueueEndOfCombat) ;
		if finished then
			rss.CastTotalHealing(node);
			--rss.DumpCast(node);
			rss.VaryTicks(node);
			rss.VaryCasts(node);
			node.fight.incrementalHaste = node.fight.incrementalHaste + (node.deltaCasts or 0) + (node.deltaTicks or 0);
			node.fight.hasteTotal = node.fight.hasteTotal + (node.contribCasts or 0) + (node.contribTicks or 0);
			list:Remove(node);
			node = nil;
		end
	elseif (rss.QueueInterCombat and rss.QueueEndOfCombat) then
		list:Remove(node);
		node = nil;
	end
end

function rss.DumpCast(node)
	print(("%s: (%.4f) Haste; (%d/%d) effective healing"):format(node.spellName, node.haste, node.healing, node.rawHealing));
	if node.originalHealing and node.originalHealing > 0 then print(("    %d healing copied from other spells"):format(node.originalHealing or 0)); end
	if node.copiedHealing then node.copiedHealing:Visit(function (copiers, copier) print(("    %d healing copied by %s"):format(copier.totalCopied, select(1,GetSpellInfo(copier.cast.spellID)))); end); end
	if node.events then
		local start = node.events:Start();
		while start do
			local spellName = start.event.spellId ~= 0 and select(1,GetSpellInfo(start.event.spellId)) or select(1,GetSpellInfo(node.spellID));
			local copiers = "";
			if start.event.copiedBy then
				local copier = start.event.copiedBy:Start();
				while copier do
					copiers = copiers.." (->"..select(1,GetSpellInfo(copier.copier.spellID))..")  ";
					copier = copier.forward;
				end
			end
			print(start.event.eventType.." "..spellName.." -> ("..start.event.healed.."/"..start.event.amount..")"..copiers);
			start = start.forward;
		end
	end
end

function rss.CastTotalHealing(node)
	local healing = 0.0;
	local rawHealing = 0.0;
	local copiedHealing = nil;
	if node.events then
		local start = node.events:Start();
		while start do
			-- Loop over events for this cast
			if start.event.eventType == rss.EVENTS.SPELL_HEAL or start.event.eventType == rss.EVENTS.SPELL_PERIODIC_HEAL then
				healing = healing + start.event.healed;
				rawHealing = rawHealing + start.event.amount;
				if start.event.copiedBy then
					if not copiedHealing then
						copiedHealing = rss.LinkedList:Create();
					end
					local copy = start.event.copiedBy:Start();
					while copy do
						-- Loop over spells copying this event
						local copyCast = copy.copier;
						local total = copiedHealing:Start();
						local copyTotal = nil; 
						while total do
							-- Loop over the spells we've already seen copying this *cast* (if any)
							if (total.cast == copyCast) then
								-- Saw this copier already
								copyTotal = total;
								break;
							end
							total = total.forward;
						end
						if not copyTotal then
							-- Have not seen this copier already
							copyTotal = {cast = copyCast , totalCopied = 0.0 };
							copiedHealing:Append(copyTotal);
						end
						copyTotal.totalCopied = copyTotal.totalCopied + start.event.amount;
						copy = copy.forward;
					end
				end
			end
			start = start.forward;
		end
	end
	node.healing = healing;
	node.rawHealing = rawHealing;
	node.copiedHealing = copiedHealing;
end

-- Busy ring maintenance
function rss.InitializeRing()
	local busyRing = { };
	for i = 0, rss.WINDOW_BINS-1 do
		busyRing[i] = { busy = 0 , casts = rss.LinkedList:Create() };
	end
	playerState.busyCounts = 0;
	playerState.busyPointer = 0;
	playerState.busyElapsed = 0.0;
	playerState.busyRing = busyRing;
end

function rss.SampleBusy()
	playerState.busy = (UnitCastingInfo("player") or GetSpellCooldown(rss.GCD_MONITOR) > 0 or UnitChannelInfo("player")) and 1 or 0;
	rss.UpdateRing(playerState.busy);
	if math.floor(playerState.busyPointer % rss.WINDOW_RATE) == 0 then 	-- keep data flowing at least once/second, during lulls/out-of-combat
		local globalTime = GetTime();
		if rss.metaGlobalTimestamp and globalTime > rss.metaGlobalTimestamp + 1 then
			rss.FlushMetaBuffer();
		end
		rss.casts:Visit(rss.PruneCast, globalTime); 
	end
end

function rss.UpdateRing(state)
	playerState.busyCounts = playerState.busyCounts - playerState.busyRing[playerState.busyPointer].busy;
	playerState.busyRing[playerState.busyPointer].busy = state;
	playerState.busyCounts = playerState.busyCounts + state;
	RShamanStat.BusyFraction = playerState.busyCounts/rss.WINDOW_BINS;
	if playerState.busyRing[playerState.busyPointer].casts:Start() then
		playerState.busyRing[playerState.busyPointer].casts:Visit(rss.UpdateCastActivity, playerState.busyCounts/rss.WINDOW_BINS);
		rss.casts:Visit(rss.PruneCast, GetTime());
	end
	playerState.busyPointer = math.floor((playerState.busyPointer + 1) % rss.WINDOW_BINS);
	-- accumulate busy count for entire fight
	if rss.fight then
	    rss.fight.totalTicks = rss.fight.totalTicks + 1
	    rss.fight.busyTicks = rss.fight.busyTicks + state
	end
end

function rss.UpdateCastActivity(list, node, busyFraction)
	node.cast.busyFraction = math.max(0.0, math.min(1.0, busyFraction));
	list:Remove(node);
	node = nil;
end

-- health table maintenance
function rss.ClearHealthTable()
	if UnitHealthMax("player") > 0 then
		healthTable = { [UnitGUID("player")] = { maxHealth = UnitHealthMax("player") , currentHealth = UnitHealth("player") } };
	else
		healthTable = { };
	end
	rss.healthTable = healthTable;
end
-- respond to HEALTH_CHANGED and MAX_HEALTH_CHANGED events for party/raid members
function rss.UpdateHealthTable(...)
	local unitID = select(1,...);
	if unitID == nil then return; end
	if UnitIsPlayer(unitID) or UnitPlayerOrPetInParty(unitID) or UnitPlayerOrPetInRaid(unitID) then
		rss.UpdateUnitHealth(unitID);
	end
end
-- general routine to add any unit we can heal to the health table
function rss.UpdateUnitHealth(unitID)
	if not UnitCanAssist("player", unitID) then return; end
	local unitGUID = UnitGUID(unitID);
	if unitGUID == nil then return; end
	local unitHealthTable = healthTable[unitGUID];
	if unitHealthTable == nil then
		unitHealthTable = { };
		healthTable[unitGUID] = unitHealthTable;
	end
	unitHealthTable.maxHealth = UnitHealthMax(unitID);
	unitHealthTable.currentHealth = UnitHealth(unitID);
	if unitHealthTable.maxHealth < 1 then
		healthTable[unitGUID] = nil;
	end
end

local spellSchools = { }; -- lookup table to cache expensive logarithm calculation 

--[[
-- look up the critical chance for a particular spell/school
function rss.GetCriticalChance(spellId, spellSchool)
	local schoolIndex;
	-- check for override (Flames of Life)
	if rss.SPELLS[spellId] and rss.SPELLS[spellId].school then
		schoolindex = rss.SPELLS[spellId].school;
	else
		if not spellSchools[spellSchool] then
			spellSchools[spellSchool] =  math.floor(1+log(spellSchool)/log(2));
		end
		schoolIndex = spellSchools[spellSchool];
	end
	local myCriticalChance = rss.playerState.stats.criticalChance[schoolIndex] or rss.playerState.stats.criticalChance[rss.SCHOOL_NATURE];

        -- attempt to read artifact traits


	if spellId == rss.HEALING_SURGE then                                -- is this a Healing Surge critical?
		if rss.playerState.tidalWaves then              				-- tested: even if this cast consumed the last TW stack, we still have the buff at this moment
			-- adjust HS critical chance for TW
			-- add Tidal Chains effect on critical chance here
			myCriticalChance = math.min(1.0, myCriticalChance + rss.TIDAL_WAVES_BASE_CRITICAL_BONUS * (1 + playerState.artifactCriticalBonuses[rss.AURA_TIDAL_WAVES]));
		end
	elseif spellId == rss.HEALING_RAIN then
		-- add Empowered Droplets critical bonus
        elseif spellId == rss.RIPTIDE then
		-- 2T18 set bonus?
	elseif spellId == rss.CHAIN_HEAL then
		-- add Floodwaters critical bonus
	end
	return myCriticalChance;
end
--]]

-- Record player stats, ratings, talents, gear bonuses
-- This routine checks everything, and should only be called at the start/end of combat, or when the player logs in
-- For information that may change during combat, use rss.CheckStats()
function rss.CheckPlayer()
	playerState.GUID = UnitGUID("player");
	
	-- no need to do anything else if player is wrong class/spec/level
	if playerState.GUID and rss.CheckRestoShaman() then
		rss.CheckGear();     -- determines critical multiplier and set bonuses
		rss.CheckTalents();  -- ancestral swiftness, race and haste breakpoints
		-- we don't want baseStats to pick up buffs triggered by the start of combat
		if rss.QueueStartOfCombat then
			playerState.baseStats = rss.Clone(playerState.stats);
			rss.CheckStats();
		else
			rss.CheckStats();
			playerState.baseStats = rss.Clone(playerState.stats);
		end
		
		return true;
	else
		return false;
	end
end

-- Basic sanity checks to make sure addon should run
function rss.CheckRestoShaman()
	--playerState.level = UnitLevel("player");
	--playerState.class = select(2, UnitClass("player"));
	--local currentSpec = GetSpecialization();
	--playerState.role = currentSpec and select(6, GetSpecializationInfo(currentSpec)) or "NONE";
	playerState.level = rss.MAX_LEVEL;
	playerState.class = "SHAMAN";
	playerState.role = "HEALER";
	if playerState.level == rss.MAX_LEVEL and playerState.class == "SHAMAN" and playerState.role == "HEALER" then
		return true;
	else
		return false;
	end
end

function rss.CheckStats()
	-- primary stats
	-- these are the current, buffed values of the stats
	playerState.stats.intellect = select(2, UnitStat("player", rss.STAT_INTELLECT));
	
	-- passive regen (mp1)
	playerState.stats.passiveCombatRegen = select(2, GetManaRegen());
	
	-- spellpower and healing power
	playerState.stats.healingBonus = GetSpellBonusHealing();
	playerState.stats.damageBonus = { };
	for i = 1, 7 do
		playerState.stats.damageBonus[i] = GetSpellBonusDamage(i);
	end
	
	-- secondary stats
	playerState.stats.masteryBonus = 0.03 * GetMastery();
	playerState.stats.masteryRating = GetCombatRating(CR_MASTERY);
	playerState.stats.criticalChance = { };
	for i = 1, 7 do
		playerState.stats.criticalChance[i] = GetSpellCritChance(i)/100.;
	end
	playerState.stats.criticalRating = GetCombatRating(CR_CRIT_SPELL);
	playerState.stats.criticalMultiplier = rss.CRITICAL_MULTIPLIER;
	playerState.stats.spellHaste = UnitSpellHaste("player")/100.0;
	playerState.stats.hasteRating = GetCombatRating(CR_HASTE_SPELL);
	playerState.stats.versatilityBonus = (GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE) + GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE))/100.0;
	playerState.stats.versatilityRating = GetCombatRating(CR_VERSATILITY_DAMAGE_DONE);

	rss.CheckBuffs();
end

-- Scan auras, setting the spellHasteBuff stat entry, and others that we want to track in combat
function rss.CheckBuffs()
	playerState.tidalWaves = false;
	playerState.ascendanceAura = false;
	playerState.guidanceAura = false;
	
	for i = 1, 40 do
		local id = select(11,UnitAura("player", i));
		if id then
			if id == rss.AURA_TIDAL_WAVES then
				playerState.tidalWaves = true;
			elseif id == rss.AURA_ASCENDANCE then
				playerState.ascendanceAura = true;
			elseif id == rss.AURA_ANCESTRAL_GUIDANCE then
				playerState.guidanceAura = true;
			end
		else
			break;
		end
	end
	
	return;
end

function rss.CheckGear()
-- check for artifact
--[[
	print("CheckGear called");
	playerState.artifactEquipped = HasArtifactEquipped() and rss.artifactLib and (rss.artifactLib:GetActiveArtifactID() == rss.SCEPTER);
	print("RSS: artifactEquipped = "..tostring(playerState.artifactEquipped));
	if playerState.artifactEquipped then
		--local artifactData = rss.artifactLib:GetArtifactInfo(rss.SCEPTER);
		local _,traits = rss.artifactLib:GetArtifactTraits(rss.SCEPTER);
		if traits then
		  for _, trait in ipairs(traits) do
			print(trait.name.."("..trait.spellID..") : ("..trait.currentRank.."/"..trait.maxRank..") ranks (including "..trait.bonusRanks.." from relic bonuses)")
			if rss.ARTIFACT_DATA[trait.spellID] and trait.currentRank > 0 then
                          local rank = math.min(trait.currentRank, #rss.ARTIFACT_DATA[trait.spellID]);
			  if (trait.spellID == rss.TIDAL_CHAINS) then
			    playerState.artifactCriticalBonuses[rss.AURA_TIDAL_WAVES] = rss.ARTIFACT_DATA[trait.spellID][rank];
			    print("Tidal Chains bonus = "..playerState.artifactCriticalBonuses[rss.AURA_TIDAL_WAVES]);
			  end
			end
		  end
		else
		  print("RSS: no trait data found");
		end
	end
--]]
end


function rss.CheckTalents()
-- nothing to do
end

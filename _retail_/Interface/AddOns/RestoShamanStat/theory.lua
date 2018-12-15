local revision = tonumber(string.sub("$Revision: 119 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

-- Crit-related
function rss.EvaluateCriticalRating(amount, deficit, critical)	
	local m = rss.playerState.stats.criticalMultiplier;
	local criticalContribution, criticalIncrement;
	if critical then
		criticalContribution = math.min(amount, deficit) - math.min(amount/m,deficit);
		criticalIncrement = criticalContribution;
	else
		criticalContribution = 0.0;
		criticalIncrement = math.min(amount*m,deficit) - math.min(amount,deficit);
	end
	criticalIncrement = criticalIncrement * (0.01/rss.RATING_TO_CRIT);
	return criticalIncrement, criticalContribution;
end

--[[
-- special case for Glyph of Healing Wave, since both the original heal and the glyph heal (or both) can crit
function rss.GlyphOfHealingWaveCritical(origAmount, amount, deficit, origCritical)
	local m = rss.playerState.stats.criticalMultiplier;
	local f = rss.SPELLS[rss.GLYPH_OF_HEALING_WAVE].copy;
	local baseHW = origCritical and origAmount/m or origAmount;
	local c = rss.playerState.stats.criticalChance[rss.SCHOOL_NATURE];
	local criticalContribution = math.max(0, math.min(amount, deficit)-math.min(f*baseHW, deficit));
	local criticalIncrement = 2*(-(1-c)*math.min(f*baseHW,deficit)+(1-2*c)*math.min(f*baseHW*m,deficit)+c*math.min(f*baseHW*m*m,deficit));
	criticalIncrement = criticalIncrement * (0.01/rss.RATING_TO_CRIT);
	return criticalIncrement, criticalContribution;
end
--]]

-- Multistrike-related
--[[
function rss.EvaluateMultistrikeRating(amount, deficit, critical)
	local m = rss.playerState.stats.criticalMultiplier;
	local c = rss.playerState.stats.criticalChance[rss.SCHOOL_NATURE];
	local b = rss.playerState.stats.multistrikeMultiplier;
	local t = rss.playerState.stats.multistrikeChance;
	local d = deficit;
	local a;
	if critical then
		a = amount/m;
	else
		a = amount;
	end
	local qp = -2*(1-t)*(math.min(m*a,d)*c + math.min(a,d)*(1-c));
	qp = qp + 2*(1-2*t)*(math.min((1+b)*a,d)*(1-c)^2 + (math.min(a*(1+m*b),d) + math.min(a*(m+b),d))*c*(1-c) + math.min(a*m*(1+b),d)*c^2);
	qp = qp + 2*t*(math.min((1+2*b)*a,d)*(1-c)^3 + (2*math.min((1+b+b*m)*a,d)+math.min(m+2*b,d))*c*(1-c)^2 + (math.min(a*(1+2*m*b),d)+math.min(a*(m*(1+b)+b),d))*c^2*(1-c));
	qp = qp + 2*t*math.min(a*m*(1+2*b),d)*c^3;
	return qp * (0.01/rss.RATING_TO_MULTISTRIKE);
end
--]]

-- Haste-related

-- Estimate the change in periodic healing of a cast for +1 Haste Rating
function rss.VaryTicks(cast)
	if not cast.events or cast.healing <= 0 or cast.spellID == rss.ASCENDANCE or cast.spellID == rss.AURA_ANCESTRAL_GUIDANCE or cast.spellID == rss.CLOUDBURST then return; end

	cast.deltaTicks = 0;
	cast.contribTicks = 0;

	local castHaste = cast.haste;
	local unitHaste = cast.unitHaste;
	local deltaTicks = 0.0; -- increase from +1 Haste Rating
	local contribTicks = 0.0; -- increase from Haste we actually have
	local current = cast.events:Start();
	while current do
		local event = current.event;
		local eventType = event.eventType;
		if event.healed > 0 then
			if eventType == rss.EVENTS.SPELL_HEAL or eventType == rss.EVENTS.SPELL_PERIODIC_HEAL then
				local spellId = event.spellId
				if spellId and rss.SPELLS[spellId] and rss.SPELLS[spellId].ticks and 
					(spellId ~= rss.RIPTIDE or eventType == rss.EVENTS.SPELL_PERIODIC_HEAL) then
					deltaTicks = deltaTicks + event.healed * unitHaste / (1 + castHaste);
					contribTicks = contribTicks + event.healed * castHaste / (1 + castHaste);
					cast.fight.weightedBusy = cast.fight.weightedBusy + event.healed * cast.busyFraction;
					cast.fight.weightedBusyTotal = cast.fight.weightedBusyTotal + event.healed;
					if event.copiedBy then
						local copy = event.copiedBy:Start();
						while copy do
							local copyCast = copy.copier;
							if not copyCast.healing then
								rss.CastTotalHealing(copyCast);
							end
							if copyCast.originalHealing and copyCast.originalHealing > 0 then
								local copyRatio = copyCast.healing / copyCast.originalHealing;
								deltaTicks = deltaTicks + event.amount * ( unitHaste / (1 + castHaste) ) * copyRatio;
								contribTicks = contribTicks + event.amount * ( castHaste / (1 + castHaste) ) * copyRatio;
								cast.fight.weightedBusy = cast.fight.weightedBusy + event.amount * cast.busyFraction * copyRatio;
								cast.fight.weightedBusyTotal = cast.fight.weightedBusyTotal + event.amount * copyRatio;
							end
							copy = copy.forward;
						end
					end
				end
			end
		end
		current = current.forward;
	end
	cast.deltaTicks = deltaTicks;
	cast.contribTicks = contribTicks;
end

-- Estimate the change in overall healing, based on the rate of activity and reduction in cast time
function rss.VaryCasts(cast)
	if cast.healing <= 0 or not cast.haste or not cast.busyFraction or cast.spellID == rss.ASCENDANCE or cast.spellID == rss.AURA_ANCESTRAL_GUIDANCE or cast.spellID == rss.CLOUDBURST then return; end
	local castHaste = cast.haste;
	local hasteEfficiency = math.pow(cast.busyFraction, rss.CAST_HASTE_MODEL);
	local fractionalDelta = hasteEfficiency * cast.unitHaste / (1 + castHaste);
	local fractionalContrib = hasteEfficiency * castHaste / (1 + castHaste);
	cast.deltaCasts = cast.healing * fractionalDelta;
	cast.contribCasts = cast.healing * fractionalContrib;
	cast.fight.weightedBusy = cast.fight.weightedBusy + cast.healing * cast.busyFraction;
	cast.fight.weightedBusyTotal = cast.fight.weightedBusyTotal + cast.healing;
	if cast.copiedHealing then
		local copies = cast.copiedHealing:Start();
		while copies do
			local copiedTotal = copies.totalCopied;
			local copier = copies.cast;
			if not copier.healing then
				rss.CastTotalHealing(copier);
			end
			if copier.originalHealing and copier.originalHealing > 0 then
				local copyRatio = copier.healing/copier.originalHealing;
				cast.deltaCasts = cast.deltaCasts + copiedTotal * copyRatio * fractionalDelta;
				cast.contribCasts = cast.contribCasts + copiedTotal * copyRatio * fractionalContrib;
				cast.fight.weightedBusy = cast.fight.weightedBusy + copiedTotal * copyRatio * cast.busyFraction;
				cast.fight.weightedBusyTotal = cast.fight.weightedBusyTotal + copiedTotal * copyRatio;
			end
			copies = copies.forward;
		end
	end	
end

--[[
-- analyze Haste effect on RPPM trinket healing procs, based on the scaling of the proc rate
function rss.VaryProc(fight, spellId, healed)
	if healed <= 0 or rss.SPELLS[spellId].noHaste or not fight or not rss.playerState.baseStats.hasteBreakpoints or not rss.playerState.buffedSpellHaste or not rss.playerState.stats.hasteRating then return; end
	local haste = rss.playerState.stats.buffedSpellHaste;
	for i, breakpoint in ipairs(rss.playerState.baseStats.hasteBreakpoints) do
			local targetHaste = rss.CalcBuffedHasteFromRating(breakpoint.rating);
			fight.incrementalHaste[i] = fight.incrementalHaste[i] + healed * ((1 + targetHaste)/(1 + haste) - 1);
	end
	fight.incrementalHaste[0] = fight.incrementalHaste[0] + healed * ((1 + rss.CalcBuffedHasteFromRating(rss.playerState.stats.hasteRating+1))/(1 + haste) - 1);
end
--]]

-- "banker's rounding" function to mirror Blizzard's calculations (round 0.5 to even)
function rss.bankRound(x)
	if x == 0 then return 0; end
	local signX = x/math.abs(x);
	local answer = signX * math.floor(math.abs(x + 0.5 * signX));
	if x - math.floor(x) == 0.5 then
		if answer/2 ~= math.floor(answer/2) then
			answer = answer - signX
		end
	end
	return answer;
end

-- Calculate the buffed spell haste if the player's unbuffed haste rating were the specified valued
-- This includes all short- and long-term buffs: 
-- Goblin, Ancestral Swiftness, 5% raid buff, Heroism/Bloodlust, and any +Haste Rating buffs on top of the base rating value
-- It requires that the player's unbuffed Haste *Rating* is known
function rss.CalcBuffedHasteFromRating(rating)
	local currentRating = rss.playerState.stats.hasteRating;
	local bonus = (rating+(currentRating-rss.playerState.baseStats.hasteRating))/rss.RATING_TO_HASTE/100.0;
	local currentBonus = currentRating/rss.RATING_TO_HASTE/100.0;
	return (1+rss.playerState.stats.spellHaste) * (1+bonus)/(1+currentBonus) - 1;
end



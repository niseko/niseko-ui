local revision = tonumber(string.sub("$Revision: 46 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end


-- returns the name and classification of any hostile target of anyone we heal (boss detection)
function rss.CheckTarget(unit)
	local unitTarget = unit.."-target";
	if ( UnitExists(unitTarget) and UnitAffectingCombat(unitTarget) and UnitCanAttack(unit, unitTarget) ) then
		return UnitName(unitTarget), UnitClassification(unitTarget);
	end
end

-- sets boss flag if worldboss target is detected, and sets encounter name
function rss.CheckBoss(unit)
	local name, classification = rss.CheckTarget(unit);
	if (classification == "worldboss" or (name ~= nil and rss.fight.encounterName == "Unknown")) then
		rss.fight.encounterName = name;
	end
	if (classification == "worldboss") then
		rss.fight.isBoss = true;
		print("RSS:: Detected boss encounter "..name);
	end
end

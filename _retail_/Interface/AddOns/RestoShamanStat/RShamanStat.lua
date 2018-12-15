--[[
Restoration Shaman Stat Analyzer, by Rheeah

Expanded and enhanced version based on the original "Resto Shaman Mastery Analyzer" addon by _swift
See:
http://www.curse.com/addons/wow/rshamanmastery

--]]

local revision = tonumber(string.sub("$Revision: 119 $", 12, -3))
_G.RShamanStat = {
    ["revision"] = revision
}
local rss = _G.RShamanStat

-- table to store unrecognized heals for debugging
rss.unknownSpells = { }
-- table to store data for the fight in progress
rss.fight = nil;
-- the main frame
rss.mainFrame = nil;

-- initialization
function RShamanStatOnLoad(self)
	rss.mainFrame = self;
	if not rss.artifactLib then
	  rss.artifactLib = LibStub("LibArtifactData-1.0");
	end

	-- initialize some addon-global variables
	rss.InitializeRing();
	rss.metaBuffer = { };
	rss.casts = rss.LinkedList:Create();
	rss.events = rss.LinkedList:Create();

	-- enable escape to close the window
	tinsert(UISpecialFrames, "RShamanStatFrame")
		
	-- listen for combat log and other events
	self:RegisterEvent("PLAYER_REGEN_ENABLED");
	self:RegisterEvent("PLAYER_REGEN_DISABLED");
	self:RegisterEvent("ADDON_LOADED");
	self:RegisterEvent("PLAYER_LOGIN");
	self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED");
	self:RegisterEvent("PLAYER_TALENT_UPDATE");
	rss.RegisterCombatEvents()
	print(("Resto Shaman Stat Analyzer (r%s) loaded!"):format(rss.revision));
end

function rss.UnregisterCombatEvents()
	local self = rss.mainFrame;
	self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	self:UnregisterEvent("UNIT_MAXHEALTH");
	self:UnregisterEvent("UNIT_HEALTH_FREQUENT");
	self:UnregisterEvent("PLAYER_TARGET_CHANGED");
	self:UnregisterEvent("PLAYER_FOCUS_CHANGED");
	self:UnregisterEvent("MASTERY_UPDATE");
	self:UnregisterEvent("UNIT_SPELL_HASTE");
	self:UnregisterEvent("PLAYER_DAMAGE_DONE_MODS");
	self:UnregisterEvent("COMBAT_RATING_UPDATE");
	self:UnregisterEvent("UNIT_AURA");
	self:UnregisterEvent("UNIT_STATS");
	self:UnregisterEvent("UNIT_SPELLCAST_SENT");
	self:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED");
end

function rss.RegisterCombatEvents()
	local self = rss.mainFrame;
	rss.UnregisterCombatEvents();
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	self:RegisterEvent("UNIT_MAXHEALTH");
	self:RegisterEvent("UNIT_HEALTH_FREQUENT");
	self:RegisterEvent("PLAYER_TARGET_CHANGED");
	self:RegisterEvent("PLAYER_FOCUS_CHANGED");
	self:RegisterEvent("MASTERY_UPDATE");
	self:RegisterUnitEvent("UNIT_SPELL_HASTE","player");
	self:RegisterEvent("PLAYER_DAMAGE_DONE_MODS");
	self:RegisterEvent("COMBAT_RATING_UPDATE");
	self:RegisterUnitEvent("UNIT_AURA","player");
	self:RegisterUnitEvent("UNIT_STATS","player");
	self:RegisterEvent("UNIT_SPELLCAST_SENT");
	self:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED","player");
end

function RShamanStatOnUpdate(self, elapsed)
	local playerState = rss.playerState;
	if not playerState or not playerState.busyRing then return; end
	playerState.busyElapsed = playerState.busyElapsed + elapsed;
	while playerState.busyElapsed > playerState.busyInterval do
		rss.SampleBusy();
		playerState.busyElapsed = playerState.busyElapsed - playerState.busyInterval
	end
	if rss.QueueEndOfCombat and not rss.QueueInterCombat then
		rss.UnregisterCombatEvents();
		rss.QueueInterCombat = true;
		rss.EndCombatTimer = 0.0;
	elseif rss.QueueEndOfCombat and rss.QueueInterCombat then
		rss.PreFinalize();
		rss.Finalize();
		rss.PostFinalize();
		rss.QueueInterCombat = nil;
		rss.QueueEndOfCombat = nil;
		rss.RegisterCombatEvents();
	elseif rss.QueueStartOfCombat and not rss.QueueInterCombat then
		rss.UnregisterCombatEvents();
		rss.QueueInterCombat = true;
	elseif rss.QueueStartOfCombat and rss.QueueInterCombat then
		rss.PreFinalize();
		rss.PostFinalize();
		rss.QueueInterCombat = nil;
		rss.QueueStartOfCombat = nil;
		rss.RegisterCombatEvents();
	end
end
-- create a frame to catch OnUpdate events for integrator
local f = CreateFrame("frame");
f:SetScript("OnUpdate", RShamanStatOnUpdate);

-- erase current combat data AND all archived/saved data
function rss.ClearAll()
	rss.unknownSpells = { };
    rss.PostFinalize();
    RShamanStatArchive = rss.CreateArchive();
end

-- erase current combat data; called when entering or leaving combat
function rss.PostFinalize()
	rss.ResetPlayerState();
    rss.fight = rss.CreateRecord();
	rss.MonitorState(rss.fight);
end

-- Print data from combat that just ended
-- Save it to archive table
-- Zero accumulators for next combat
function rss.PreFinalize()
-- Clear out all events which have not been looked at yet
	rss.FlushMetaBuffer();
-- Clear out unmatched events
	rss.events:Clear();
-- Treat all time after the end of combat as idle; fill in activity level for casts which don't have it yet
	for i = 1, rss.WINDOW_BINS do
		rss.UpdateRing(0);
	end
-- Clear out all casts which have not succeeded yet
-- Finalize all casts that have succeeded
	rss.casts:Visit(rss.PruneCast, GetTime()+rss.CAST_TIMEOUT);
-- Finalize copied buffs still being watched
	rss.FinalizePlayerState();
end

function rss.Finalize()
-- requiring incrementalHaste > 0 will mean that at least one cast was begun and succeeded during the combat
	if rss.fight.effectiveTotal > 0 and rss.fight.incrementalHaste > 0 and rss.fight.totalTime > rss.MINIMUM_FIGHT_DURATION then
        rss.SaveRecord(RShamanStatArchive, rss.fight);
        --rss.PrintRecord(rss.fight);
    end
end

SLASH_RSHAMANSTAT1 = '/rss';

function rss.PrintDifficulty()
    if (RShamanStatArchive.filter.difficulty ~= 0) then
        local difficultyName = GetDifficultyInfo(RShamanStatArchive.filter.difficulty);
        print("Instance difficulty is set to '"..difficultyName.."'");
    else
        print("Instance difficulty is set to 'Any'");
    end
end

function rss.PrintUseAll()
    if (RShamanStatArchive.filter.useAll) then
        print("Recording all encounters.");
    else
        print("Recording boss encounters only.");
    end
end

-- Supported commands:
function RShamanStatCmd(msg, ...)
	if not rss.CheckRestoShaman() then
		print("Resto Shaman Stats is only available for level "..rss.MAX_LEVEL.." Shaman in Restoration spec");
		return;
	end
	
    local msg, args = msg:match("^(%S*)%s*(.-)$");
    if (msg == "help") then
        print(("Resto Shaman Stats (r%s) - Available Commands:"):format(revision));
        print(" * /rss sum          Print all data, and grand totals");
        print(" * /rss difficulty   <Any,Normal,Heroic,Mythic,LFR, Challenge> Display data from a specific difficulty only");
        print(" * /rss sum <boss>   Print data for the specified boss");
        print(" * /rss clr          Print all data, and grand totals, then wipe all data");
        print(" * /rss boss         Only include boss encounter data for grand totals");
        print(" * /rss all          Include all data for grand totals");
--        print(" * /rss rsm          Print data of last encounter in RSM mode");

        rss.PrintUseAll()
        rss.PrintDifficulty()
        return;
    end
	
	if (msg == "") then
		RShamanStatFrame:Show()
	end
--[[
    if (msg == "rsm") then
        rss.PrintRSM();
        return;
    end
--]]	
	if msg == "debug" then
		local found;
		for id, spell in pairs(rss.unknownSpells) do
			found = true;
			print("Unrecognized: "..spell.name.."("..id..") : "..spell.count);
		end
		if not found then
			print("No unrecognized spells encountered!");
		end
		
        local filter = function(r)
            return (RShamanStatArchive.filter.useAll or r.isBoss) and (RShamanStatArchive.filter.difficulty == 0 or RShamanStatArchive.filter.difficulty == r.difficulty);
        end
        local summary = rss.CreateAggregateRecord("Summary", RShamanStatArchive, filter);
		if (summary.effectiveTotal > 0) then
			for reason, leak in pairs(summary.leakage) do
				print(("%s : %.1f  (%.2f%%)"):format(reason, leak, 100*leak/summary.effectiveTotal));
			end
		end
	end

    if (msg == "sum" and args ~= "") then
        local r = rss.CreateAggregateRecord(args, RShamanStatArchive, function(r)
            return (r.encounterName == args) and (RShamanStatArchive.filter.difficulty == 0 or RShamanStatArchive.filter.difficulty == r.difficulty);
        end)
        rss.args = args
        rss.PrintRecord(r)
        return;
    end

    if (msg == "difficulty" and args ~= "") then
        if args == "Normal" then
            RShamanStatArchive.filter.difficulty = 14;
        elseif args == "Heroic" then
            RShamanStatArchive.filter.difficulty = 15;
        elseif args == "Mythic" then
            RShamanStatArchive.filter.difficulty = 16;
        elseif args == "LFR" then
            RShamanStatArchive.filter.difficulty = 17;
		elseif args == "Challenge" then
			RShamanStatArchive.filter.difficulty = 8;
        else
            RShamanStatArchive.filter.difficulty = 0;
        end
        rss.PrintDifficulty()
        return;
    end

    if (msg == "boss") then
        RShamanStatArchive.filter.useAll = false;
        rss.PrintUseAll()
        return
	elseif (msg == "all") then
        RShamanStatArchive.filter.useAll = true;
        rss.PrintUseAll()
        return
    end

	if (msg == "sum" or msg == "clr") then
        local filter = function(r)
            return (RShamanStatArchive.filter.useAll or r.isBoss) and (RShamanStatArchive.filter.difficulty == 0 or RShamanStatArchive.filter.difficulty == r.difficulty)
        end
		if (#RShamanStatArchive > 0 and msg == "sum") then
            for i, v in ipairs(RShamanStatArchive) do
                if (filter(v)) then
                    rss.PrintRecord(v)
                end
			end
        end

        local summary = rss.CreateAggregateRecord("Summary", RShamanStatArchive, filter)
        rss.PrintRecord(summary)
		print("---------------");
	end
	if (msg == "clr") then
		rss.ClearAll();
		print("RSS:: All archived data cleared");
	end
end
SlashCmdList["RSHAMANSTAT"] = RShamanStatCmd;

function RShamanStatOnEvent(self, event, ...)
    if event == "ADDON_LOADED" and select(1,...) == "RestoShamanStat" then
        RShamanStatArchive = rss.LoadArchive(RShamanStatArchive)
        if RShamanStatArchive and #RShamanStatArchive > 0 then
            DEFAULT_CHAT_FRAME:AddMessage("RSS: "..#RShamanStatArchive.." archived records found.");
        end
        return;
    end
	
	if event == "PLAYER_LOGIN" or event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "PLAYER_TALENT_UPDATE" then
		RShamanStatFrame:Hide();
		if rss.CheckRestoShaman() then
			rss.PostFinalize();
			rss.ValidateArchive(RShamanStatArchive);
			rss.UpdateUI();
		end
		return;
	end
	
	if rss.playerState.class ~= "SHAMAN" or rss.playerState.role ~= "HEALER" or rss.playerState.level ~= rss.MAX_LEVEL then return; end

	if event == "PLAYER_REGEN_DISABLED" then
		-- entering combat; reset counters
		rss.QueueStartOfCombat = true;
		return;
	end
	
	if event == "PLAYER_REGEN_ENABLED" then
		-- leaving combat: print status and reset counters
		rss.QueueEndOfCombat = true;
		return;
	end

	if rss.QueueEndOfCombat or rss.QueueStartOfCombat then return; end
	
	if event == "UNIT_HEALTH_FREQUENT" or event == "UNIT_MAXHEALTH" then
		rss.UpdateHealthTable(...);
		return;
	end

	if event == "COMBAT_LOG_EVENT_UNFILTERED" then
		rss.FillMetaBuffer(...);
		rss.CombatLogEntry(...);
		return;
	end	
	
	if event == "UNIT_SPELLCAST_SENT" then
		if UnitIsUnit(select(1,...), "player") then
			rss.SpellcastSent(...);
		end
		return;
	end
	
	if event == "UNIT_SPELLCAST_SUCCEEDED" then
		if UnitIsUnit(select(1,...), "player") then
			rss.SpellcastSucceeded(rss.fight, ...);
		end
		return;
	end
	
	if event == "PLAYER_TARGET_CHANGED" then
		rss.UpdateUnitHealth("target");
		return;
	end
	
	if event == "PLAYER_FOCUS_CHANGED" then
		rss.UpdateUnitHealth("focus");
		return;
	end
	
	if event == "MASTERY_UPDATE" or 
	   event == "PLAYER_DAMAGE_DONE_MODS" or event == "COMBAT_RATING_UPDATE" or 
	   (event == "UNIT_SPELL_HASTE" and UnitIsUnit(select(1,...),"player")) or
	   (event == "UNIT_AURA" and UnitIsUnit(select(1,...),"player")) or 
	   (event == "UNIT_STATS" and UnitIsUnit(select(1,...),"player")) then
		rss.MonitorState(rss.fight);
		return;
	end
	
end

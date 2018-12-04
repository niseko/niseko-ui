--
-- Handles initialisation, versioning and migration of saved variables
--

local revision = tonumber(string.sub("$Revision: 119 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

-- Archive version and code version are separate, as not every code change changes the archive
local archiveVersion = 36


-- Instructions for changing the archive:
-- 1. Increase the archiveVersion
-- 2. Write a function to migrate data from the previous version to the next
-- 3. Add the function with its version number to the 2-dimensional migration table
-- 4. Update the initial archive initialisation routine
-- 5. If data cannot be migrated, delete all migration functions and add ArchiveClear with the new Version
--    to the migration table

-- Initialize the archive
-- returns either a new or a modified version of the passed archive
function rss.LoadArchive(archive)
    if archive == nil then
        archive = rss.CreateArchive(archive)
    end

    print(("RSS: Loading Archive v%d"):format(archive.version))

    if archive.version == nil then
        archive.version = 0
    end
    return archive
end

-- Migration helper function to clear all saved records if archive cannot be migrated or does not match current haste breakpoints
local ArchiveClear = function(archive)
	for i in ipairs(archive) do
		archive[i] = nil;
	end
end

-- Migrate or clear the archive
-- Unlike the load function, this will only happen when in Resto spec
function rss.ValidateArchive(archive)
	if not rss.playerState or rss.playerState.role ~= "HEALER" then return; end
    if archive.version < archiveVersion then
        -- prevent data loss by testing the code prior to running the real migration
        -- TODO: save the old archive under archive.old and provide a way to revert the data
        local proceed = rss.TestMigration();
        if not proceed then
            print("RSS: Migrations are currently not working. Aborting...")
			return;
        end
		print(("RSS: Migrating Archived Records from v%d to v%d"):format(archive.version, archiveVersion))
		rss.MigrateArchive(archive)
    end
end

-- returns a new empty archive
function rss.CreateArchive()
    archive = { };
    archive.version = archiveVersion;
    archive.filter = {
        difficulty = 0,     -- difficulty 0 = any difficulty; otherwise archive.filter.difficulty = fight.difficulty
        useAll     = true,  -- if false, /rss sum will only show boss fights
    }
    return archive;
end


function rss.CreateRecord()
	local record = 
        {
            startTime               =                        0,   -- time counter for start of current combat
            totalTime               =                       .0,   -- aggregator for total time in combat
            totalTicks              =                        0,   -- calls to sample busy
            busyTicks               =                        0,   -- calls to sample busy that we were busy
            weightedBusy            =                        0,   -- sum of busy*(effectiveHeals)
            weightedBusyTotal       =                        0,   -- sum of (effectiveHeals) for weightedBusy

            effectiveTotal          =                       .0,   -- total effective healing in current combat
            leakage                 =                      { },   -- effective healing for which we could not analyze stats
            criticalTotal           =                       .0,   -- effective healing from Critical in current combat
            masteryTotal            =                       .0,   -- effective healing from Mastery in current combat
            versatilityTotal        =                       .0,   -- effective healing from Versatility in current combat
            hasteTotal              =                       .0,   -- effective healing from Haste in current combat
            incrementalSpellpower   =                       .0,   -- increase to effective healing from +1 Spellpower
            incrementalCritical     =               		.0,   -- increase to effective healing from +1 Critical Rating
            incrementalMastery      =                       .0,   -- increase to effective healing from +1 Mastery Rating
            incrementalHaste        =                       .0,   -- increase to effective healing from +1 Haste Rating
            incrementalVersatility  =                       .0,   -- increase to effective healing from +1 Versatility Rating
            weightedTotal           =                       .0,   -- total weighted by the mastery effect of each heal
            effectiveSubTotal       =                       .0,   -- total effective healing of spells where we know the mastery effect (i.e. not RM/AG/SLT)
            spells                  =                       {},   -- a table of spellIDs and how often they healed somebody
            resurgence              =                       .0,   -- sum of mana gained from resurgence

            stats                   =  rss.Clone(rss.playerState.baseStats),

            difficulty              = select(3, GetInstanceInfo()),  --  8 = Challenge, 14 = Normal (Raid), 15 = Heroic (Raid), 16 = Mythic (Raid), 17 = LFR
            instance                =        GetInstanceInfo(),   -- localized instance name
            isBoss                  =                    false,   -- flag to indicate if a boss encounter is in progress
            encounterName           =                "Unknown",   -- highest classification enemy detected
        };
	return record;
end

local RoundStat = function(num, idp)
	local mult = 10^(idp or 0);
	if num >= 0 then return math.floor(num*mult+0.5)/mult;
	else return math.ceil(num*mult - 0.5)/mult; end
end

local UpdateStatRange = function(value, stat, idp)
	stat.min = RoundStat(math.min(value, stat.min or value), idp);
	stat.max = RoundStat(math.max(value, stat.max or value), idp);
end

function rss.CreateAggregateRecord(name, archive, filter)
    local a = rss.CreateRecord()
    local recordCount = 0;
    a.encounterName = name
    a.difficulty = -1;
	
	-- aggregate stats in a way that allows us to know/show whether we have consistent values or not
	a.stats = { 
		intellect = { average = 0.0 } , 
		healingBonus = { average = 0.0 }, 
		passiveCombatRegen = { average = 0.0 },
		spellHaste = { average = 0.0 }, 
		criticalChance = {[1] = { average = 0.0 }, [2] = { average = 0.0 }, [3] = { average = 0.0 }, [4] = {average = 0.0}, [5] = { average = 0.0 }, [6] = { average = 0.0 }, [7] = { average = 0.0 }};
		masteryBonus = { average = 0.0 }, 
		hasteRating = { average = 0 },
		versatilityBonus = { average = 0},
	};
		
    if (#archive > 0) then
        for i, r in ipairs(archive) do
            if (filter(r)) then
                recordCount = recordCount + 1;
                if a.startTime <= 0 or a.startTime > r.startTime then
                    a.startTime = r.startTime
                end

                if a.difficulty == -1 then
                    a.difficulty = r.difficulty;
                elseif a.difficulty ~= r.difficulty then
                    a.difficulty = 0;
                end

                a.effectiveTotal = a.effectiveTotal + r.effectiveTotal
                for reason, leak in pairs(r.leakage) do
                    if not a.leakage[reason] then
                        a.leakage[reason] = 0.0
                    end
                    a.leakage[reason] = a.leakage[reason] + leak
                end
                a.effectiveSubTotal = a.effectiveSubTotal + r.effectiveSubTotal
                a.totalTime = a.totalTime + r.totalTime
                a.totalTicks = a.totalTicks + r.totalTicks
                a.busyTicks = a.busyTicks + r.busyTicks
                a.criticalTotal = a.criticalTotal + r.criticalTotal
                a.masteryTotal = a.masteryTotal + r.masteryTotal
                a.versatilityTotal = a.versatilityTotal + r.versatilityTotal
		a.hasteTotal = a.hasteTotal + r.hasteTotal
                a.incrementalSpellpower = a.incrementalSpellpower + r.incrementalSpellpower
                a.incrementalCritical = a.incrementalCritical + r.incrementalCritical
                a.incrementalMastery = a.incrementalMastery + r.incrementalMastery
                a.incrementalHaste = a.incrementalHaste + r.incrementalHaste
                a.incrementalVersatility = a.incrementalVersatility + r.incrementalVersatility
				
                a.isBoss = r.isBoss
                a.weightedTotal = a.weightedTotal + r.weightedTotal

		a.weightedBusy = a.weightedBusy + r.weightedBusy
		a.weightedBusyTotal = a.weightedBusyTotal + r.weightedBusyTotal

                a.stats.intellect.average = a.stats.intellect.average + r.stats.intellect * r.effectiveTotal;
                UpdateStatRange(r.stats.intellect, a.stats.intellect);
                a.stats.healingBonus.average = a.stats.healingBonus.average + r.stats.healingBonus * r.effectiveTotal;
                UpdateStatRange(r.stats.healingBonus, a.stats.healingBonus);
                a.stats.passiveCombatRegen.average = a.stats.passiveCombatRegen.average + r.stats.passiveCombatRegen * r.effectiveTotal;
                UpdateStatRange(r.stats.passiveCombatRegen, a.stats.passiveCombatRegen);
                a.stats.spellHaste.average = a.stats.spellHaste.average + r.stats.spellHaste * r.effectiveTotal;
                UpdateStatRange(r.stats.spellHaste, a.stats.spellHaste, 4);
                for i = 1, #r.stats.criticalChance do
                    a.stats.criticalChance[i].average = a.stats.criticalChance[i].average + r.stats.criticalChance[i] * r.effectiveTotal;
                    UpdateStatRange(r.stats.criticalChance[i], a.stats.criticalChance[i], 4);
                end
                a.stats.masteryBonus.average = a.stats.masteryBonus.average + r.stats.masteryBonus * r.effectiveTotal;
                UpdateStatRange(r.stats.masteryBonus, a.stats.masteryBonus, 4);
                a.stats.hasteRating.average = a.stats.hasteRating.average + r.stats.hasteRating * r.effectiveTotal;
                UpdateStatRange(r.stats.hasteRating, a.stats.hasteRating);
                a.stats.versatilityBonus.average = a.stats.versatilityBonus.average + r.stats.versatilityBonus * r.effectiveTotal;
                UpdateStatRange(r.stats.versatilityBonus, a.stats.versatilityBonus, 4);
				
                -- sum spell counts
                for spellid, count in pairs(r.spells) do
                    if a.spells[spellid] then
                        a.spells[spellid] = count + a.spells[spellid]
                    else
                        a.spells[spellid] = count
                    end
                end

            end
        end
    end

    if a.effectiveTotal > 0 then
        a.stats.intellect.average = a.stats.intellect.average / a.effectiveTotal;
        a.stats.healingBonus.average = a.stats.healingBonus.average / a.effectiveTotal;
        a.stats.passiveCombatRegen.average = a.stats.passiveCombatRegen.average / a.effectiveTotal;
        a.stats.spellHaste.average = a.stats.spellHaste.average / a.effectiveTotal;
        for i = 1, #a.stats.criticalChance do
            a.stats.criticalChance[i].average = a.stats.criticalChance[i].average / a.effectiveTotal;
        end
        a.stats.masteryBonus.average = a.stats.masteryBonus.average / a.effectiveTotal;
        a.stats.hasteRating.average = a.stats.hasteRating.average / a.effectiveTotal;
        a.stats.versatilityBonus.average = a.stats.versatilityBonus.average / a.effectiveTotal;
    end

    return a
end

function rss.SaveRecord(archive, record)
    table.insert(archive, record)
end

function rss.ResurgenceGains(record)
    local sum = 0
	for spellid, casts in pairs(record.spells) do
		if rss.SPELLS[spellid] and rss.SPELLS[spellid].resurgence then
			sum = sum + casts * rss.SPELLS[spellid].resurgence
		end
	end
    return sum
end

function rss.GetAverageOrValue(stat)
	if type(stat) == 'table' then
		return stat.average;
	else
		return stat;
	end
end

function rss.AnalyzeRecord(record)
    local r = record;
    local archive = RShamanStatArchive;

    -- initialize and document all values, so we can leave things we can't calculate for a specific record unset
    local a = {
        hps = 0.0,
	busyFraction = 0.0,
	weightedBusyFraction = 0.0,
        effectiveHealing = record.effectiveTotal,
        leakageTotal = 0.0,
        analyzedTotal = 0.0,
        -- average health ratio (0.0 - 1.0)
        averageHealth = 0.0,
        -- total gain in percent
        masteryTotalThroughputGain = 0.0,
        critTotalThroughputGain = 0.0,
        versTotalThroughputGain = 0.0,
	hasteTotalThroughputGain = 0.0,
        -- rating required for 1% throughput
        spellpowerInc = 0.0,
        intellectInc = 0.0,
        masteryInc = 0.0,
        versInc = 0.0,
        critInc = 0.0,
	hasteInc = 0.0,
        -- same as above, but for 1% more regen
--[[
        critRegenInc = 0.0,
        spiritRegenInc = 0.0,

        -- average expected mp5 for the entire fight
        crit_mp5 = 0.0,
        spirit_mp5 = 338.61, -- hardcoded gain without MTT
        -- potential mana gain from using glyph of water shield, may be negative.
        waterShieldGlyphManaGain = 0.0,
--]]
    };

    if record.totalTime > 0 then
        a.hps = r.effectiveTotal / r.totalTime;
    end

    if record.totalTicks > 0 then
        a.busyFraction = r.busyTicks / r.totalTicks
    end

    if record.weightedBusyTotal > 0 then
	a.weightedBusyFraction = record.weightedBusy / record.weightedBusyTotal
    end

    local leakageTotal = 0.0
    for reason, leaks in pairs(record.leakage) do
        leakageTotal = leakageTotal + leaks;
    end
    a.leakageTotal = leakageTotal;

    local analyzedTotal = math.max(0.0, record.effectiveTotal - leakageTotal)
    a.analyzedTotal = analyzedTotal
    if analyzedTotal > 0 then
        local critPct = 100 * record.criticalTotal / analyzedTotal
        local mstPct = 100 * record.masteryTotal / analyzedTotal
        local vrsPct = 100 * record.versatilityTotal / analyzedTotal
	local hstPct = 100 * record.hasteTotal / analyzedTotal
        local critInc = nil
        local mstInc = nil
        local vrsInc = nil
        local hstInc = nil
        local spInc = nil
        local intInc = nil

        if record.incrementalCritical > 0 then
            critInc = 0.01 * analyzedTotal / record.incrementalCritical
        end
        -- the factors 1.05 and 1.10 reflected the +5% stat buff to Intellect and +10% spellpower buff in raids
	-- starting in Legion, every 100 points of Intellect from gear or consumable adds 105 points
	-- effectively, the stat buff is always present
        if record.incrementalSpellpower > 0 then
--            spInc = 0.01 / (1.10 * record.incrementalSpellpower / analyzedTotal);
--            intInc = spInc / 1.05;
            spInc = 0.01 / (record.incrementalSpellpower / analyzedTotal) / 1.05;
            intInc = spInc;
        end
        -- the factor 1.05 reflected the 5% Purification buff to Mastery 
        if record.incrementalMastery > 0 then
            --mstInc = 0.01 / (1.05*record.incrementalMastery / analyzedTotal)
            mstInc = 0.01 / (record.incrementalMastery / analyzedTotal)
        end
		
        if record.incrementalVersatility > 0 then
            vrsInc = 0.01 / (record.incrementalVersatility / analyzedTotal)
        end
		
        if record.incrementalHaste > 0 then
            hstInc = 0.01 / (record.incrementalHaste / analyzedTotal)
        end
				
        a.critTotalThroughputGain = critPct;
        a.masteryTotalThroughputGain = mstPct;
        a.versTotalThroughputGain = vrsPct;
	a.hasteTotalThroughputGain = hstPct;

        a.spellpowerInc = spInc
        a.intellectInc = intInc
        a.critInc = critInc
        a.masteryInc = mstInc
        a.versInc = vrsInc
        a.hasteInc = hstInc
    end
	
    if r.effectiveSubTotal > 0 then
        a.averageHealth = 1 - r.weightedTotal/r.effectiveSubTotal
    end

    return a;
end

function rss.RecordToString(record)
	local archive = RShamanStatArchive;
	local s ="";
	local a = rss.AnalyzeRecord(record);
	
    if a.hps > 0 then
        s = s..("RSS: Effective Healing Done: %.1fk ; Effective HPS: %.1fk\n"):format(a.effectiveHealing/1000,a.hps/1000)
    else
        s = s..("RSS: Effective Healing Done: %.1fk\n"):format(a.effectiveHealing/1000)
    end
    s = s..("RSS: Busy Fraction: %.2f%%\n"):format(a.busyFraction*100);
    s = s..("RSS: Weighted Busy Fraction: %.2f%%\n"):format(a.weightedBusyFraction*100);
    if a.analyzedTotal > 0 then
        s = s..("RSS: Throughput from Critical:    %.2f%%\n"):format(a.critTotalThroughputGain);
        s = s..("RSS: Throughput from Mastery:     %.2f%%\n"):format(a.masteryTotalThroughputGain);
        s = s..("RSS: Throughput from Versatility: %.2f%%\n"):format(a.versTotalThroughputGain);
        s = s..("RSS: Throughput from Haste (est): %.2f%%\n"):format(a.hasteTotalThroughputGain);
		
        if a.spellpowerInc then
            s = s..("RSS: Spell Power for +1%% Throughput: %.1f\n"):format(a.spellpowerInc);
        end
        if a.intellectInc then
            s = s..("RSS: Intellect for +1%% Throughput: %.1f\n"):format(a.intellectInc);
        end
        if a.critInc then
            s = s..("RSS: Critical Rating for +1%% Throughput: %.1f\n"):format(a.critInc);
        end
        if a.masteryInc then
            s = s..("RSS: Mastery Rating for +1%% Throughput: %.1f\n"):format(a.masteryInc);
        end
        if a.versInc then
            s = s..("RSS: Versatility Rating for +1%% Throughput: %.1f\n"):format(a.versInc);
        end
        if a.hasteInc then
            s = s..("RSS: Haste Rating for +1%% Throughput: %.1f\n"):format(a.hasteInc);
        end
    end
    return s;
end

function rss.PrintRecord(record)
-- when printing a string with embedded \n, lua seems to indent each line after the first
-- so it is slightly better looking to have the header be the first line, so the following
-- lines are all indented the same
-- another side effect of doing it as one long string with \n's is that you can't scroll through 
-- the printout one line at a time, because the chat window thinks it's all one line
    print(("---- %s ----\n"):format(record.encounterName)..rss.RecordToString(record))
end

-- Migration Helper function that adds unset keys to a certain default value
-- keys should be formatted as {"newKey1" = .0, "newKey2" = "DefVal", .. }
local AddKeys = function(archive, keys)
    for i, record in ipairs(archive) do
        for key, value in pairs(keys) do
            if (not archive[i][key]) then
                archive[i][key] = value
            end
        end
    end
end

-- Migration Helper function that will rename a key
-- keys should be formatted as {"newKey1 = "oldKey1, "newKey2" = "oldKey2", .. }
local RenameKeys = function(archive, keys)
    for i, record in ipairs(archive) do
        for new, old in pairs(keys) do
            archive[i][new] = record[old]
            archive[i][old] = nil
        end
    end
end

-- Migration helper function that passes every record to a function
-- the passed function needs to take a 'record' as it's single parameter
local Map = function(archive, fn)
    for i, record in ipairs(archive) do
        fn(archive[i])
    end
end

local ArchiveMigration_36 = function(archive)
	ArchiveClear(archive);
	if rss.playerState then
		-- nothing to do
	end
end

-- Don't use keyword indices here to ensure a fixed order when we iterate over it.
local migrations = {
	{v=36, f=ArchiveMigration_36},
}

-- modifies the passed archive to be compatible with the current version
rss.MigrateArchive = function(archive)

    for i, m in ipairs(migrations) do
        if archive.version < m.v then
            m.f(archive)
            -- update the version after every step, in case the next migration fails
            archive.version = m.v
        end
    end
end


-- A really simple test to see if the migrations are working as intended
rss.TestMigration = function()

	local testArchive = { version = 32 };

	if testArchive.version == archiveVersion then return true; end
	
    rss.MigrateArchive(testArchive)

    if not testArchive then return false; end
    if not testArchive.version == archiveVersion then return false; end
    local r = rss.CreateAggregateRecord("Test", testArchive, function(r) return true; end)
    if not r then return false; end
    --if not (r.effectiveTotal > 0.) then return false; end;
    return true;
end

local revision = tonumber(string.sub("$Revision: 121 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

-- Spell IDs
rss.ANCESTRAL_GUIDANCE = 114911        -- heal copy from AG
--rss.ASCENDANCE = 114049              -- the spell which triggers the Ascendance buff
--rss.ASCENDANCE = 165344              -- spell which triggers Ascendance buff
rss.ASCENDANCE = 114052                -- spell which triggers Ascendance buff as of 6.1
rss.CHAIN_HEAL = 1064
rss.CHAIN_HEAL_2T17 = 177972           -- Chain Heal cast from T17 2-piece set bonus
rss.CLEANSING_WATERS = 55562           -- heal from glyphed Purify Spirit
rss.EARTH_SHIELD = 379                 -- the heal from Earth Shield
--rss.FLAMES_OF_LIFE = 137808            -- heal from glyphed Flame Shock
rss.GHOST_WOLF = 2645                  -- for GCD monitoring
rss.GIFT_OF_THE_NAARU = 59547          -- spacegoat racial; fun fact: the spell/aura ID is different for every class...
rss.GIFT_OF_THE_QUEEN = 207778         -- artifact ability
--rss.GLYPH_OF_HEALING_WAVE = 55533      -- self heal from glyph
rss.HEALING_WAVE = 77472
rss.HEALING_RAIN = 73921               -- the heal from Healing Rain
rss.HEALING_STREAM = 52042             -- the actual heal applied by HST
rss.HEALING_SURGE = 8004
rss.HEALING_TIDE = 114942              -- the actual heal applied by HTT
rss.PULSE = 215263                     -- proc from the Concave Reflecting Lens trinket (Legion)
rss.QUEENS_DECREE = 208899             -- gold artifact ability proc
rss.TIDAL_POOLS = 207358               -- Tidal Pools spell/trait (?)
rss.TIDAL_TOTEM = 209069               -- Tidal Totem generated by Tidal Pools(?)
rss.RESTORATIVE_MISTS = 114083         -- heal copy from Ascendance
rss.RIPTIDE = 61295
rss.RIPTIDE_T18 = 185875               -- the proc from T18 4-piece
rss.SPIRIT_LINK = 98021                -- the actual heal applied by SLT
rss.CLOUDBURST = 157503                -- the actual heal applied by CBT
rss.UNLEASH_LIFE = 73685
rss.WELLSPRING = 197997                -- the actual heal from Wellspring
-- Casts that do not actually heal
rss.FLAME_SHOCK = 8050                 -- the damaging spell
rss.PURIFY_SPIRIT = 77130              -- decurse which can trigger heal if glyphed
rss.SUMMON_ANCESTRAL_GUIDANCE = 108281 -- the spell which applies the Ancestral Guidance buff 
rss.SUMMON_EARTH_SHIELD = 974          -- the spell which applies the Earth Shield aura
rss.SUMMON_HEALING_RAIN = 73920        -- the spell which casts Healing Rain
rss.SUMMON_HEALING_STREAM = 5394       -- the spell which summons HST
rss.SUMMON_HEALING_TIDE = 108280       -- the spell which summons HTT
rss.SUMMON_SPIRIT_LINK = 98008         -- the spell which summons SLT
rss.SUMMON_CLOUDBURST = 157153         -- the spell which summons CBT
rss.UNLEASH_ELEMENTS = 73680           -- the spell which applies the Unleash Life heal
rss.SUMMON_WELLSPRING = 197995         -- the spell which generates Wellspring
-- Spells that grant Mana: logged under SPELL_ENERGIZE
rss.RESURGENCE = 101033                -- procced from crits and t15p2
rss.PROC_WATER_SHIELD = 52128          -- the on-hit effect of Water Shield
-- Aura IDs
rss.AURA_ANCESTRAL_GUIDANCE = rss.SUMMON_ANCESTRAL_GUIDANCE   -- ID of the aura AND the spell that applies it
rss.AURA_ASCENDANCE = 114052
rss.AURA_EARTH_SHIELD = 974   
rss.AURA_GIFT_OF_THE_NAARU = rss.GIFT_OF_THE_NAARU
rss.AURA_RIPTIDE = rss.RIPTIDE
rss.AURA_RIPTIDE_T18 = 185875  
rss.AURA_TIDAL_WAVES = 53390
rss.AURA_WATER_SHIELD = 52127

-- Consumables
rss.HEALTHSTONE = 6262                 -- Warlock cookie
rss.HEAVY_WINDWOOL_BANDAGE = 102695
rss.MASTER_HEALING_POTION = 105708
rss.WINDWOOL_BANDAGE = 102694
rss.ANTISEPTIC_BANDAGE = 111603
rss.SILKWEAVE_BANDAGE = 202850
rss.HEALING_TONIC = 156438
rss.ANCIENT_HEALING_POTION = 188016
rss.CONSUMABLES = { rss.ANCIENT_HEALING_POTION, rss.HEALTHSTONE , rss.MASTER_HEALING_POTION, rss.HEALING_TONIC } -- unaffected by Spellpower or Mastery
rss.BANDAGES = { rss.SILKWEAVE_BANDAGE, rss.ANTISEPTIC_BANDAGE, rss.WINDWOOL_BANDAGE , rss.HEAVY_WINDWOOL_BANDAGE } -- cannot crit

-- Leech

rss.LEECH = 143924

-- Spell schools
rss.SCHOOL_FIRE = 3
rss.SCHOOL_NATURE = 4

-- Spell Descriptors
-- the spell (min/max/coefficient) data are out of date, but no longer used
rss.SPELLS =
{
	[rss.ANCESTRAL_GUIDANCE] = { copy = 1.8 },
	[rss.ASCENDANCE] = { aura = rss.AURA_ASCENDANCE },
	[rss.CHAIN_HEAL] = { ["SPELL_HEAL"] = { 7086, 8094, 0.6876 } , resurgence = 160000*0.0025 },
	[rss.CHAIN_HEAL_2T17] = { ["SPELL_HEAL"] = { 7086, 8084, 0.6876 }, resurgence = 160000*0.0025 },
	[rss.CLEANSING_WATERS] = { alias = rss.PURIFY_SPIRIT , noInt = true , noAG = true },
	[rss.EARTH_SHIELD] = { ["SPELL_HEAL"] = { 2043, 2043, 0.13 } , charges = 9 , aura = rss.AURA_EARTH_SHIELD },
	[rss.GIFT_OF_THE_NAARU] = { aura = rss.AURA_GIFT_OF_THE_NAARU , ticks = { duration = 15 , tick = 3 } , noInt = true, noMastery = true, noHaste = true },
	[rss.GIFT_OF_THE_QUEEN] = { ["SPELL_HEAL"] = { 0, 0, 1.0} },
	[rss.HEALING_WAVE] = { ["SPELL_HEAL"] = { 14172, 16190, 1.377 } , resurgence = 160000*0.01 },
	[rss.HEALING_RAIN] = { ["SPELL_HEAL"] = { 2380, 2829, 0.2364 } , alias = rss.SUMMON_HEALING_RAIN , ticks = { duration = 10 , tick = 2 } },
	[rss.HEALING_STREAM] = { ["SPELL_PERIODIC_HEAL"] = { 0, 0, 0.44 } , totem = rss.SUMMON_HEALING_STREAM , ticks = { duration = 15 , tick = 2 } },
	[rss.HEALING_SURGE] = { ["SPELL_HEAL"] = { 11687, 13351, 1.135 }, resurgence = 160000*0.006 },
	[rss.HEALING_TIDE] = { ["SPELL_HEAL"] = { 4932, 4932, 0.484 } , totem = rss.SUMMON_HEALING_TIDE , ticks = { duration = 10, tick = 2 } },
	[rss.PULSE] = { ["SPELL_HEAL"] = { 0, 0, 1} },
	[rss.PURIFY_SPIRIT] = { },
	[rss.QUEENS_DECREE] = { ["SPELL_PERIODIC_HEAL"] = { 0, 0, 1 }, totem = rss.SUMMON_HEALING_STREAM, ticks = { duration = 6, tick = 2 } }, 
	[rss.TIDAL_POOLS] = { ["SPELL_PERIODIC_HEAL"] = { 0, 0, 1 }, ticks = { duration = 6, tick = 2} },
	[rss.TIDAL_TOTEM] = { ["SPELL_PERIODIC_HEAL"] = { 0, 0, 1 }, ticks = { duration = 6, tick = 2} },
	[rss.RESTORATIVE_MISTS] = { aura = rss.AURA_ASCENDANCE , copy = 1.0 , noAG = true },
	[rss.RIPTIDE] = { ["SPELL_HEAL"] = { 3735, 3735, 0.339 } , ["SPELL_PERIODIC_HEAL"] = { 10584, 10584, 0.96 } , 
					aura = rss.AURA_RIPTIDE , ticks = { duration = 18 , tick = 3 } , resurgence = 160000*0.006 },
	[rss.RIPTIDE_T18] = { ["SPELL_HEAL"] = { 3735, 3735, 0.339 } , ["SPELL_PERIODIC_HEAL"] = { 10584, 10584, 0.96 } , 
					aura = rss.AURA_RIPTIDE_T18 , ticks = { duration = 18 , tick = 3 } , resurgence = 160000*0.006 },
	[rss.SPIRIT_LINK] = { noMastery = true, noInt = true, noCrit = true , noAG = true },
	[rss.CLOUDBURST] = { copy = 0.2, noAG = true },
	[rss.SUMMON_ANCESTRAL_GUIDANCE] = { },
	[rss.SUMMON_EARTH_SHIELD] = { },
	[rss.SUMMON_HEALING_RAIN] = { },
	[rss.SUMMON_HEALING_STREAM] = { },
	[rss.SUMMON_HEALING_TIDE] = { },
	[rss.SUMMON_SPIRIT_LINK] = { },
	[rss.SUMMON_CLOUDBURST] = { copy = 0.2 },
	[rss.UNLEASH_ELEMENTS] = {  },
	[rss.UNLEASH_LIFE] = { ["SPELL_HEAL"] = { 3028, 3280, 0.286 } , alias = rss.UNLEASH_ELEMENTS, resurgence = 8849*0.6 },
	[rss.WELLSPRING] = { ["SPELL_HEAL"] = { 0, 0, 0.0 }, alias = rss.SUMMON_WELLSPRING },
	[rss.SUMMON_WELLSPRING] = { },
}

-- Buffs/Auras descriptors

rss.AURAS = {
	[rss.AURA_ASCENDANCE] = { cast = rss.ASCENDANCE , selfTarget = true },
	[rss.AURA_ANCESTRAL_GUIDANCE] = { cast = rss.SUMMON_ANCESTRAL_GUIDANCE , selfTarget = true },
	[rss.AURA_EARTH_SHIELD] = { cast = rss.SUMMON_EARTH_SHIELD , noHaste , charges = rss.SPELLS[rss.EARTH_SHIELD].charges },
	[rss.AURA_GIFT_OF_THE_NAARU] = { cast = rss.GIFT_OF_THE_NAARU , noHaste , ticks = rss.SPELLS[rss.GIFT_OF_THE_NAARU].ticks },
	[rss.AURA_RIPTIDE] = { cast = rss.RIPTIDE , ticks = rss.SPELLS[rss.RIPTIDE].ticks },
	[rss.AURA_RIPTIDE_T18] = { cast = rss.RIPTIDE_T18, ticks = rss.SPELLS[rss.RIPTIDE_T18].ticks },
}

rss.TIDAL_WAVES_BASE_CRITICAL_BONUS = 0.4  -- Critical Chance bonus for Healing Surge

-- Stat conversion constants (7.0.3 PTR/pre-patch values)
rss.STAT_INTELLECT = 4
rss.STAT_SPIRIT = 5
rss.CRITICAL_MULTIPLIER = 2.00
rss.RATING_TO_CRIT = 350.0              -- Crit Rating to Crit% (->350)
rss.RATING_TO_MASTERY = 116.667          -- Mastery Rating to Mastery% (->350/3 = 116.667)
rss.RATING_TO_HASTE = 325.0             -- Haste Rating to Haste% (buffs and talents not included) (->325)
rss.RATING_TO_VERSATILITY = 400.0       -- Versatility Rating to Versatility(Damage) % (->400)

-- Steering constants

rss.MAX_LEVEL = 110                 -- level for which stat calculations work properly
rss.MINIMUM_FIGHT_DURATION = 10.0   -- seconds
rss.GCD_MONITOR = rss.GHOST_WOLF    -- 
rss.WINDOW_PAST = 6.0               -- seconds before cast
rss.WINDOW_FUTURE = 12.0            -- seconds after cast
rss.WINDOW_RATE = 12.0              -- updates (frames) per second
rss.WINDOW_BINS = (rss.WINDOW_PAST+rss.WINDOW_FUTURE) * rss.WINDOW_RATE
rss.CAST_TIMEOUT = 15.0	            -- time in seconds for a sent cast to succeed before being discarded
rss.CAST_HASTE_MODEL = 2.0          -- 1 = optimistic (linear) scaling of busy fraction (e.g. 50% busy = 50% haste cast effectiveness), 
                                    -- 2 = pessimistic (quadratic) scaling of busy fraction (e.g. 50% busy = 25% haste cast effectiveness)

-- Flags for internal processing of combat events; number is the order in which events with the same timestamp are processed

rss.EVENTS = { }
rss.EVENTS.SPELL_CAST_SUCCESS = 1
rss.EVENTS.SPELL_SUMMON = 2
rss.EVENTS.SPELL_HEAL = 3
rss.EVENTS.SPELL_AURA_APPLIED = 4
rss.EVENTS.SPELL_AURA_REFRESH = 5
rss.EVENTS.SPELL_AURA_REFRESH_ON = 5
rss.EVENTS.SPELL_PERIODIC_HEAL = 6
rss.EVENTS.SPELL_AURA_REMOVED = 7
rss.EVENTS.SPELL_AURA_REFRESH_OFF = 8
rss.EVENTS.UNIT_DESTROYED = 9
rss.EVENTS.UNIT_DIED = 10
rss.EVENTS.UNKNOWN = 100

rss.EVENT_CODES = {
	["SPELL_CAST_SUCCESS"] = rss.EVENTS.SPELL_CAST_SUCCESS,
	["SPELL_SUMMON"] = rss.EVENTS.SPELL_SUMMON,
	["SPELL_AURA_APPLIED"] = rss.EVENTS.SPELL_AURA_APPLIED,
	["SPELL_AURA_REFRESH"] = rss.EVENTS.SPELL_AURA_REFRESH,
	["SPELL_HEAL"] = rss.EVENTS.SPELL_HEAL,
	["SPELL_PERIODIC_HEAL"] = rss.EVENTS.SPELL_PERIODIC_HEAL,
	["SPELL_AURA_REMOVED"] = rss.EVENTS.SPELL_AURA_REMOVED,
	["UNIT_DESTROYED"] = rss.EVENTS.UNIT_DESTROYED,
	["UNIT_DIED"] = rss.EVENTS.UNIT_DIED,
}

rss.PLAYER_TOTEM_FLAGS = 8465 -- 0x2111, the flag for a totem we own

-- Items

rss.SCEPTER = 128911		-- ItemID of Sharas'dal, Scepter of Tides

-- Artifact Traits

rss.TIDAL_CHAINS = 207088

rss.ARTIFACT_DATA = 
{
	[rss.TIDAL_CHAINS] = {0.1, 0.2, 0.3, 0.4, 0.5, 0.6 },
}
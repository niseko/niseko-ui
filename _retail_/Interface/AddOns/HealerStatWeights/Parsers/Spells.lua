local name, addon = ...;
local T = true;
local F = false;
local _ = false;



--[[----------------------------------------------------------------------------
	SpellType - Enumeration of specialization ids for each healing spec;
				and a "Shared" type for spells used by all healing specializations (Trinkets, etc.)
------------------------------------------------------------------------------]]
local SpellType = {
	DRUID = 105,
	SHAMAN = 264,
	HPRIEST = 257,
	PALADIN = 65,
	MONK = 270,
	DPRIEST = 256,
	SHARED = 1,
	IGNORED = -1
}



--[[----------------------------------------------------------------------------
	Spells - stored spell data. Used by the parsers/decomp methods.
------------------------------------------------------------------------------]]
local Spells = {};



--[[----------------------------------------------------------------------------
	createSpellInfo - helper function for setting up spell information
------------------------------------------------------------------------------]]
local function createSpellInfo(id, spellType, isIntScaled, isCritScaled, isHasteHPMScaled, isHasteHPCTScaled, isVersScaled, isMasteryScaled, isLeechScaled)
	Spells[id] = {
		spellID = id,
		spellType = spellType,
		int = isIntScaled,
		sp = isIntScaled,
		crt = isCritScaled,
		hstHPM = isHasteHPMScaled,
		hstHPCT = isHasteHPCTScaled,
		vrs = isVersScaled,
		mst = isMasteryScaled,
		lee = isLeechScaled,
		cd = false,
		filler = false,
		manaCost = -1,
		hstHPMPeriodic = false,
		hstHPMequalsHPCT = false
	}
end

local function setRaidCooldown(id)
	Spells[id].cd = true;
end

local function setHasteHpmOnlyOnPeriodic(id)
	Spells[id].hstHPMPeriodic=true;
end

local function setFillerSpell(id,manaCost,f_multiplier)
	Spells[id].filler = true;
	Spells[id].manaCost = manaCost;
	Spells[id].manaCostAdjustmentMultiplier = f_multiplier;
end

local function setHPMequalsHPCT(id)
	Spells[id].hstHPMequalsHPCT = true;
end

--[[----------------------------------------------------------------------------
	DiscoverIgnoredSpell - when we encounter an unknown healing event, print a message
------------------------------------------------------------------------------]]
function addon:DiscoverIgnoredSpell(spellID)
	createSpellInfo(spellID,SpellType.IGNORED);
	if ( HSW_ENABLE_FOR_TESTING ) then
		self:Msg("[HealerStatWeights]: Discovered SpellID \"" .. spellID .. "\" not in database. Tell the author!" );
	end
end



--[[----------------------------------------------------------------------------
	Get - Get current spell info
------------------------------------------------------------------------------]]
function Spells:Get(id)
	return self[id and tonumber(id)];
end



--[[----------------------------------------------------------------------------
	Resto Druid
------------------------------------------------------------------------------]]
addon.Druid = {};
addon.Druid.Tranquility = 157982;
addon.Druid.Rejuvenation = 774;
addon.Druid.Germination = 155777;
addon.Druid.LifebloomHoT = 33763;
addon.Druid.LifebloomHeal = 33778;
addon.Druid.Regrowth = 8936;
addon.Druid.WildGrowth = 48438;
addon.Druid.Effloresence = 81269;
addon.Druid.Swiftmend = 18562;
addon.Druid.FrenziedRegen = 22842;
addon.Druid.SpringBlossoms = 207386;
addon.Druid.Cultivation = 200389;
addon.Druid.CenarionWard = 102352;
addon.Druid.Renewal = 108238;
addon.Druid.DreamerHoT = 253432; -- t21
addon.Druid.AbundanceBuff = 207383;
addon.Druid.CenarionWardCast = 102351;
addon.Druid.YserasGift = 145109;

--																I C H H V M L
createSpellInfo(addon.Druid.Tranquility,	SpellType.DRUID,	T,T,_,T,T,T,T); --can crit now 7/17/2018
createSpellInfo(addon.Druid.Rejuvenation,	SpellType.DRUID,	T,T,T,T,T,T,T);
createSpellInfo(addon.Druid.Germination,	SpellType.DRUID,	T,T,T,T,T,T,T);
createSpellInfo(addon.Druid.LifebloomHoT,	SpellType.DRUID,	T,T,T,T,T,T,T);
createSpellInfo(addon.Druid.LifebloomHeal,	SpellType.DRUID,	T,T,_,T,T,T,T);
createSpellInfo(addon.Druid.Regrowth,		SpellType.DRUID,	T,T,_,T,T,T,T);
createSpellInfo(addon.Druid.WildGrowth,		SpellType.DRUID,	T,T,T,T,T,T,T);
createSpellInfo(addon.Druid.Effloresence,	SpellType.DRUID,	T,T,T,T,T,T,T);
createSpellInfo(addon.Druid.Swiftmend,		SpellType.DRUID,	T,T,_,T,T,T,T);
createSpellInfo(addon.Druid.FrenziedRegen,	SpellType.DRUID,	_,_,_,T,T,T,_);
createSpellInfo(addon.Druid.SpringBlossoms,	SpellType.DRUID,	T,T,T,_,T,T,T);
createSpellInfo(addon.Druid.Cultivation,	SpellType.DRUID,	T,T,T,_,T,T,T);
createSpellInfo(addon.Druid.CenarionWard,	SpellType.DRUID,	T,T,T,T,T,T,T);
createSpellInfo(addon.Druid.Renewal,		SpellType.DRUID,	_,_,_,T,_,_,_);
createSpellInfo(addon.Druid.DreamerHoT,		SpellType.DRUID,	T,T,T,_,T,T,T);

createSpellInfo(addon.Druid.CenarionWardCast, SpellType.IGNORED);
createSpellInfo(addon.Druid.YserasGift, SpellType.IGNORED); -- Ignored since it only scales with Stamina currently.

addon.BuffTracker:Track(addon.Druid.AbundanceBuff)

setRaidCooldown(addon.Druid.Tranquility);

setHasteHpmOnlyOnPeriodic(addon.Druid.Regrowth);
setHasteHpmOnlyOnPeriodic(addon.Druid.Tranquility);

--azerite 
addon.Druid.GroveTending = 279793; --spell ids
addon.Druid.FungalEssence = 272807;
addon.Druid.AutumnLeaves = 274436;
addon.Druid.EarlyHarvest = 287255;
addon.Druid.UrsocsEndurance = 280165;
addon.Druid.SwitchHitter = 287811;
addon.Druid.Azerite = {}; --azerite trait ids
addon.Druid.Azerite.RampantGrowth = 362;
addon.Druid.Azerite.WakingDream = 363;

createSpellInfo(addon.Druid.GroveTending,	SpellType.DRUID,	_,T,T,T,T,T,T);
createSpellInfo(addon.Druid.FungalEssence,	SpellType.DRUID,	_,T,_,T,T,T,T);
createSpellInfo(addon.Druid.AutumnLeaves,	SpellType.DRUID,	_,T,_,T,T,T,T); --full amount on partial ticks
createSpellInfo(addon.Druid.EarlyHarvest,	SpellType.DRUID,	_,T,_,_,T,T,T);
createSpellInfo(addon.Druid.UrsocsEndurance,SpellType.DRUID,	_,_,_,_,T,_,_);
createSpellInfo(addon.Druid.SwitchHitter,	SpellType.DRUID,	_,_,_,_,T,_,_);
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Druid.Azerite.RampantGrowth,2.795,addon.Druid.Regrowth,0.30,{Overtime=true}); --was 2.67
--since yseras gift is ignored, we can also ignore WakingDream.

local function RegrowthAbundanceManaCostMultiplier()
	local s = addon.BuffTracker:Get(addon.Druid.AbundanceBuff)
	if ( s and s > 0 ) then
		return math.max(0, 1.0 - 0.06*s);
	end
	return 1.0;
end

setFillerSpell(addon.Druid.Regrowth, 	 0.028, RegrowthAbundanceManaCostMultiplier);
setFillerSpell(addon.Druid.Rejuvenation, 0.021); 
setFillerSpell(addon.Druid.Germination,  0.021);



--[[----------------------------------------------------------------------------
	Resto Shaman
------------------------------------------------------------------------------]]
addon.Shaman = {};
addon.Shaman.HealingWave = 77472;
addon.Shaman.Downpour = 252159;
addon.Shaman.GiftOfTheQueen = 207778;
addon.Shaman.GiftOfTheQueen2 = 255227;
addon.Shaman.Riptide = 61295;
addon.Shaman.Rainfall = 252154; --t21
addon.Shaman.ChainHeal = 1064;
addon.Shaman.HealingTide = 114942;
addon.Shaman.HealingSurge = 8004;
addon.Shaman.HealingStream = 52042;
addon.Shaman.HealingRain = 73921;
addon.Shaman.CloudburstHeal = 157503;
addon.Shaman.Undulation = 200071;
addon.Shaman.UnleashLife = 73685;
addon.Shaman.WellSpring = 197997;
addon.Shaman.SpiritLink = 98021;
addon.Shaman.Ascendance = 114083;
addon.Shaman.EarthenWallTotem = 201633;
addon.Shaman.EarthShield = 379;

addon.Shaman.CloudburstBuff = 157504;
addon.Shaman.TidalWavesBuff = 53390;
addon.Shaman.AscendanceBuff = 114052;
addon.Shaman.Resurgence = 101033;

addon.Shaman.CBTCast = 157153;
addon.Shaman.CBTRecallCast = 201764;
addon.Shaman.HealingRainCast = 73920;
addon.Shaman.AscendanceCast = 114052; --same as buff
addon.Shaman.HSTCast = 5394;
addon.Shaman.SLTCast = 98008;
addon.Shaman.ESTCast = 198838;
addon.Shaman.APTCast = 207399;
addon.Shaman.WellspringCast = 197995;

--																	I C H H V M L
createSpellInfo(addon.Shaman.HealingWave,		SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.Downpour,			SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.GiftOfTheQueen,	SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.GiftOfTheQueen2,	SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.Riptide,			SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.Rainfall,			SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.ChainHeal, 		SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.HealingTide, 		SpellType.SHAMAN,	T,T,T,T,T,T,T);
createSpellInfo(addon.Shaman.HealingSurge,  	SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.HealingStream, 	SpellType.SHAMAN,	T,T,T,T,T,T,T);
createSpellInfo(addon.Shaman.HealingRain, 		SpellType.SHAMAN,	T,T,T,T,T,T,T);
createSpellInfo(addon.Shaman.CloudburstHeal, 	SpellType.SHAMAN,	T,T,_,T,T,T,_); --handled via special case
createSpellInfo(addon.Shaman.Undulation,	 	SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.UnleashLife,		SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.WellSpring,		SpellType.SHAMAN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.Ascendance,		SpellType.SHAMAN,	T,T,_,T,T,T,_);
createSpellInfo(addon.Shaman.EarthenWallTotem,	SpellType.SHAMAN,	T,_,_,T,_,_,_); --int per hit; stamina overall
createSpellInfo(addon.Shaman.EarthShield,		SpellType.SHAMAN,	T,T,_,T,T,T,_);

createSpellInfo(addon.Shaman.SpiritLink,		SpellType.IGNORED);
createSpellInfo(addon.Shaman.CBTCast,			SpellType.IGNORED);
createSpellInfo(addon.Shaman.CBTRecallCast,		SpellType.IGNORED);
createSpellInfo(addon.Shaman.HealingRainCast,	SpellType.IGNORED);
createSpellInfo(addon.Shaman.AscendanceCast,	SpellType.IGNORED);
createSpellInfo(addon.Shaman.HSTCast,			SpellType.IGNORED);
createSpellInfo(addon.Shaman.SLTCast,			SpellType.IGNORED);
createSpellInfo(addon.Shaman.ESTCast,			SpellType.IGNORED);
createSpellInfo(addon.Shaman.APTCast,			SpellType.IGNORED);
createSpellInfo(addon.Shaman.WellspringCast,	SpellType.IGNORED);

setRaidCooldown(addon.Shaman.HealingTide);

addon.BuffTracker:Track(addon.Shaman.TidalWavesBuff);

setHasteHpmOnlyOnPeriodic(addon.Shaman.Riptide);

setFillerSpell(addon.Shaman.HealingWave,0.018);
setFillerSpell(addon.Shaman.HealingSurge,0.04);
setFillerSpell(addon.Shaman.ChainHeal,0.05);

--azerite
addon.Shaman.SpoutingSpirits = 279505;
addon.Shaman.SwellingStreams = 275499;
addon.Shaman.OverflowingShores = 278095;
addon.Shaman.SurgingTides = 279187; --absorption
addon.Shaman.Azerite = {};
addon.Shaman.Azerite.SoothingWaters = 138;
--addon.Shaman.EbbAndFlow --ignoring for now.
createSpellInfo(addon.Shaman.SpoutingSpirits,	SpellType.SHAMAN,	_,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.SwellingStreams,	SpellType.SHAMAN,	_,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.OverflowingShores,	SpellType.SHAMAN,	_,T,_,T,T,T,T);
createSpellInfo(addon.Shaman.SurgingTides,		SpellType.SHAMAN,	_,_,_,T,T,T,T);
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Shaman.Azerite.SoothingWaters,2.44,addon.Shaman.ChainHeal,1.05,{Timeout=0.667});




--[[----------------------------------------------------------------------------
	Holy Priest
------------------------------------------------------------------------------]]
addon.HolyPriest = {};
addon.HolyPriest.Renew = 139;
addon.HolyPriest.Serenity = 2050;
addon.HolyPriest.PrayerOfHealing = 596;
addon.HolyPriest.Heal = 2060;
addon.HolyPriest.FlashHeal = 2061;
addon.HolyPriest.BindingHeal = 32546;
addon.HolyPriest.DesperatePrayer = 19236;
addon.HolyPriest.CosmicRipple = 243241;
addon.HolyPriest.DivineHymn = 64844;
addon.HolyPriest.Sanctify = 34861;
addon.HolyPriest.LightOfTuure = 208065;
addon.HolyPriest.PrayerOfMending = 33110;
addon.HolyPriest.Halo = 120692;
addon.HolyPriest.CircleOfHealing = 204883;
addon.HolyPriest.TrailOfLight = 234946;
addon.HolyPriest.DivineStar = 110745;
addon.HolyPriest.BodyAndMind = 214121;
addon.HolyPriest.EchoOfLight = 77489;
addon.HolyPriest.Salvation = 265202;
addon.HolyPriest.HolyNova = 281265;
addon.HolyPriest.PoMCast = 33076;
addon.HolyPriest.DivineStarCast = 110744;
addon.HolyPriest.HaloCast = 120517;
addon.HolyPriest.DivineHymnCast = 64843;


--																		I C H H V M L
createSpellInfo(addon.HolyPriest.Renew,				SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.Serenity,			SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.PrayerOfHealing,	SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.Heal,				SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.FlashHeal,			SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.BindingHeal,		SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.DesperatePrayer,	SpellType.HPRIEST,	F,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.CosmicRipple,		SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.DivineHymn,		SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.Salvation,			SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.Sanctify,			SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.LightOfTuure,		SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.PrayerOfMending,	SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.CircleOfHealing,	SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.TrailOfLight,		SpellType.HPRIEST,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.BodyAndMind,		SpellType.HPRIEST,	T,T,T,T,T,_,T);
createSpellInfo(addon.HolyPriest.EchoOfLight,		SpellType.HPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.HolyPriest.DivineStar,		SpellType.SHARED,	T,T,_,T,T,_,T); --shared with disc priest
createSpellInfo(addon.HolyPriest.Halo,				SpellType.SHARED,	T,T,_,T,T,_,T); 
createSpellInfo(addon.HolyPriest.HolyNova,			SpellType.SHARED,	T,T,_,T,T,_,T);
createSpellInfo(addon.HolyPriest.PoMCast,			SpellType.IGNORED);
createSpellInfo(addon.HolyPriest.DivineStarCast,	SpellType.IGNORED);
createSpellInfo(addon.HolyPriest.HaloCast,			SpellType.IGNORED);
createSpellInfo(addon.HolyPriest.DivineHymnCast,	SpellType.IGNORED);

setRaidCooldown(addon.HolyPriest.DivineHymn);
setRaidCooldown(addon.HolyPriest.Salvation);

setHasteHpmOnlyOnPeriodic(addon.HolyPriest.Renew);

setFillerSpell(addon.HolyPriest.Heal, 0.017);
setFillerSpell(addon.HolyPriest.BindingHeal, 0.017);
setFillerSpell(addon.HolyPriest.FlashHeal, 0.028);
setFillerSpell(addon.HolyPriest.PrayerOfHealing,0.045);


--Azerite
addon.HolyPriest.Azerite = {};
addon.HolyPriest.Azerite.PrayerfulLitany = 228; --strategy:  store all PoH in a bucket until next echo application. On first echo application, allocate all the PoH from bucket, then empty bucket. Trait only applies to lowest pre-heal hp percent amongst the buckets.
addon.HolyPriest.Azerite.PrayerfulLitanySpell = -addon.HolyPriest.Azerite.PrayerfulLitany; --Use dummy spellID so we can capture special case in holypriest.lua
addon.HolyPriest.Azerite.BlessedSanctuary = 165;
addon.HolyPriest.Azerite.BlessedSanctuarySpell = -addon.HolyPriest.Azerite.BlessedSanctuary; --Use dummy spellID so we can capture special case of main spell not affected, but echo is affected.
addon.HolyPriest.Azerite.WordOfMending = 401;
addon.HolyPriest.Azerite.EverlastingLight = 400;
addon.HolyPriest.Azerite.PermeatingGlow = 114; 
addon.HolyPriest.PermeatingGlowBuff = 272783;

local function permeatingGlowScalar(unit)
	if ( addon.Util.HasAuraFromPlayer(unit,addon.HolyPriest.PermeatingGlowBuff) ) then
		return 1;
	else
		return 0;
	end
end

local function blessedSanctuaryHealScalar()
	return ( 1+addon.ply_vrs ) * ( 1+addon.ply_crt*addon.ply_crtbonus) * addon.ply_mst;
end

local function everlastingLightScalar(unit)
	local mana = UnitPower("player",0);
	local maxmana = UnitPowerMax("player",0);
	return math.max(0,1-mana/maxmana);
end

addon.AzeriteAugmentations:TraitAugmentsSpell(addon.HolyPriest.Azerite.PermeatingGlow,1.83*1.1,addon.HolyPriest.FlashHeal,1.35,{ValueScalar = permeatingGlowScalar}); 
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.HolyPriest.Azerite.BlessedSanctuary,4.58*1.15,addon.HolyPriest.Azerite.BlessedSanctuarySpell,1.75*1.4,{HealScalar = blessedSanctuaryHealScalar}); --special case spellid is handled in healevent of holypriest.lua
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.HolyPriest.Azerite.WordOfMending,0.643,addon.HolyPriest.PrayerOfMending,0.438); 
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.HolyPriest.Azerite.EverlastingLight,3.05*1.20,addon.HolyPriest.Heal,1.60,{ValueScalar = everlastingLightScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.HolyPriest.Azerite.PrayerfulLitany,3.51,addon.HolyPriest.Azerite.PrayerfulLitanySpell,0.625); --only applies to lowest HP target, handled as special case in holypriest.lua



--[[----------------------------------------------------------------------------
	Holy Paladin
------------------------------------------------------------------------------]]
addon.Paladin = {};
addon.Paladin.BestowFaith = 223306;
addon.Paladin.HolyLight = 82326;
addon.Paladin.HolyShock = 25914;
addon.Paladin.LightOfDawn = 225311;
addon.Paladin.HolyPrism = 114871;
addon.Paladin.TyrsDeliverance = 200654;
addon.Paladin.ArcingLight = 119952;
addon.Paladin.FlashOfLight = 19750;
addon.Paladin.LightOfTheMartyr = 183998;
addon.Paladin.AuraOfMercy = 210291;
addon.Paladin.AuraOfSacrifice = 210383;
addon.Paladin.JudgementOfLight = 183811;
addon.Paladin.BeaconOfLight = 53652;
addon.Paladin.LayOnHands = 633;
addon.Paladin.AvengingCrusader = 216371;
addon.Paladin.HolyAvenger = 105809;
addon.Paladin.HolyShockCast = 20473;
addon.Paladin.HolyPrismCast = 114165;
addon.Paladin.AuraMasteryCast = 31821;
addon.Paladin.LightOfDawnCast = 85222;
addon.Paladin.InfusionOfLight = 54149;

--																	I C H H V M L
createSpellInfo(addon.Paladin.BeaconOfLight,	SpellType.PALADIN,	T,T,_,T,T,T,_);
createSpellInfo(addon.Paladin.AuraOfSacrifice,	SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.AuraOfMercy,		SpellType.PALADIN,	T,T,_,T,T,_,T);
createSpellInfo(addon.Paladin.JudgementOfLight,	SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.BestowFaith,		SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.HolyLight,		SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.HolyShock,		SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.LightOfDawn,		SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.HolyPrism,		SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.TyrsDeliverance,	SpellType.PALADIN,	T,T,T,T,T,T,T);
createSpellInfo(addon.Paladin.ArcingLight,		SpellType.PALADIN,	T,T,T,T,T,T,T);
createSpellInfo(addon.Paladin.FlashOfLight,		SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.LightOfTheMartyr,	SpellType.PALADIN,	T,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.AvengingCrusader,	SpellType.PALADIN,	T,T,_,T,T,_,T);

createSpellInfo(addon.Paladin.LayOnHands, 		SpellType.IGNORED);
createSpellInfo(addon.Paladin.HolyShockCast, 	SpellType.IGNORED);
createSpellInfo(addon.Paladin.HolyPrismCast, 	SpellType.IGNORED);
createSpellInfo(addon.Paladin.AuraMasteryCast, 	SpellType.IGNORED);
createSpellInfo(addon.Paladin.LightOfDawnCast, 	SpellType.IGNORED);

local function setTransfersToBeacon(id)
	Spells[id].transfersToBeacon=true;
end

setTransfersToBeacon(addon.Paladin.BestowFaith);
setTransfersToBeacon(addon.Paladin.HolyLight);
setTransfersToBeacon(addon.Paladin.HolyShock);
setTransfersToBeacon(addon.Paladin.LightOfDawn);
setTransfersToBeacon(addon.Paladin.HolyPrism);
setTransfersToBeacon(addon.Paladin.TyrsDeliverance);
setTransfersToBeacon(addon.Paladin.ArcingLight);
setTransfersToBeacon(addon.Paladin.FlashOfLight);
setTransfersToBeacon(addon.Paladin.LightOfTheMartyr);
setRaidCooldown(addon.Paladin.AuraOfMercy);

setFillerSpell(addon.Paladin.HolyLight, 0.026);
setFillerSpell(addon.Paladin.FlashOfLight, 0.044);
setFillerSpell(addon.Paladin.LightOfTheMartyr, 0.014);

addon.BuffTracker:Track(addon.Paladin.HolyAvenger);
addon.BuffTracker:Track(addon.Paladin.InfusionOfLight);

--Azerite
addon.Paladin.RadiantIncandesence = 278147;
addon.Paladin.GraceOfTheJusticar = 278785;
addon.Paladin.MartyrsBreath = 273035;
addon.Paladin.Glimmer = 287286;
addon.Paladin.Azerite = {};
addon.Paladin.Azerite.MomentOfCompassion = 188;
addon.Paladin.Azerite.BreakingDawn = 394;
createSpellInfo(addon.Paladin.Glimmer,				SpellType.PALADIN,	_,T,T,T,T,T,T); 
createSpellInfo(addon.Paladin.RadiantIncandesence,	SpellType.PALADIN,	_,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.GraceOfTheJusticar,	SpellType.PALADIN,	_,T,_,T,T,T,T);
createSpellInfo(addon.Paladin.MartyrsBreath,		SpellType.PALADIN,	_,T,_,T,T,T,T);
setTransfersToBeacon(addon.Paladin.Glimmer);
setTransfersToBeacon(addon.Paladin.RadiantIncandesence);
setTransfersToBeacon(addon.Paladin.GraceOfTheJusticar);
setHPMequalsHPCT(addon.Paladin.Glimmer);

local function momentOfCompassionScalar(unit)
	if addon.Util.HasAnyAuraFromPlayer(unit,addon.BeaconBuffs) then
		return 1;
	else
		return 0;
	end
end
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Paladin.Azerite.MomentOfCompassion,0.8,addon.Paladin.FlashOfLight,1.25*1.07,{ValueScalar=momentOfCompassionScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Paladin.Azerite.BreakingDawn,0.67,addon.Paladin.LightOfDawn,0.55);



--[[----------------------------------------------------------------------------
	Mistweaver Monk
------------------------------------------------------------------------------]]
addon.Monk = {};
addon.Monk.RenewingMist = 119611;
addon.Monk.ChiBurst = 130654;
addon.Monk.GustOfMists = 191894;
addon.Monk.SoothingMist = 115175;
addon.Monk.EnvelopingMist = 124682;
addon.Monk.EssenceFont = 191840; 
addon.Monk.HealingElixir = 122281;
addon.Monk.Revival = 115310;
addon.Monk.RJW = 162530;
addon.Monk.Vivify = 116670;
addon.Monk.CraneHeal = 198756;
addon.Monk.ChiWave = 132463;
addon.Monk.ZenPulse = 198487;
addon.Monk.TranquilMist = 253448; --T21
addon.Monk.ChiBolt = 253581; --T21
addon.Monk.LifeCocoon = 116849;
addon.Monk.EnvelopingMistTFT = 274062;
addon.Monk.StatueSoothingMist = 198533;

addon.Monk.JadeStatueCast = 115313;
addon.Monk.ZenPulseCast = 124081;
addon.Monk.EssenceFontCast = 191837;
addon.Monk.ChiBurstCast = 123986;
addon.Monk.ChiWaveCast = 115098;
addon.Monk.RJWCast = 196725;
addon.Monk.ChiJiCast = 198664;
addon.Monk.ManaTea = 197908;
addon.Monk.LifeCyclesVivify = 197916;
addon.Monk.LifeCyclesEnvelopingMist = 197919;

--																I C H H V M L
createSpellInfo(addon.Monk.RenewingMist,		SpellType.MONK,	T,T,T,T,T,_,T);
createSpellInfo(addon.Monk.StatueSoothingMist,	SpellType.MONK,	T,T,T,T,T,_,T);
createSpellInfo(addon.Monk.RJW,					SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.EnvelopingMist,		SpellType.MONK,	T,T,T,T,T,_,T);
createSpellInfo(addon.Monk.EssenceFont,			SpellType.MONK,	T,T,T,T,T,_,T);
createSpellInfo(addon.Monk.Vivify,				SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.Revival,				SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.CraneHeal,			SpellType.MONK,	T,_,_,T,T,_,T);
createSpellInfo(addon.Monk.SoothingMist,		SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.ChiBurst,			SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.ChiWave,				SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.ZenPulse,			SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.TranquilMist,		SpellType.MONK,	T,T,T,T,T,_,T);
createSpellInfo(addon.Monk.ChiBolt,				SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.LifeCocoon,			SpellType.MONK,	T,_,_,T,T,_,_);
createSpellInfo(addon.Monk.EnvelopingMistTFT,	SpellType.MONK,	T,T,_,T,T,_,T);
createSpellInfo(addon.Monk.HealingElixir,		SpellType.MONK,	_,_,_,T,_,_,_);
createSpellInfo(addon.Monk.GustOfMists,			SpellType.MONK,	T,T,_,T,T,T,T); --monk mastery

createSpellInfo(addon.Monk.JadeStatueCast,		SpellType.IGNORED);
createSpellInfo(addon.Monk.ZenPulseCast,		SpellType.IGNORED);
createSpellInfo(addon.Monk.EssenceFontCast,		SpellType.IGNORED);
createSpellInfo(addon.Monk.ChiBurstCast,		SpellType.IGNORED);
createSpellInfo(addon.Monk.ChiWaveCast,			SpellType.IGNORED);
createSpellInfo(addon.Monk.RJWCast,				SpellType.IGNORED);
createSpellInfo(addon.Monk.ChiJiCast,			SpellType.IGNORED);

setRaidCooldown(addon.Monk.Revival);
setHasteHpmOnlyOnPeriodic(addon.Monk.EssenceFont);

addon.BuffTracker:Track(addon.Monk.ManaTea);
addon.BuffTracker:Track(addon.Monk.LifeCyclesVivify);
addon.BuffTracker:Track(addon.Monk.LifeCyclesEnvelopingMist);

local function LifeCyclesVivifyManaCostMultiplier()
	local s = addon.BuffTracker:Get(addon.Monk.LifeCyclesVivify);
	local ret = 1;
	if ( s and s > 0 ) then
		return 0.75;
	end
	return 1.0;
end

local function LifeCyclesEnvelopingMistManaCostMultiplier()
	local s = addon.BuffTracker:Get(addon.Monk.LifeCyclesEnvelopingMist)
	if ( s and s > 0 ) then
		return 0.75;
	end
	return 1.0;
end

setFillerSpell(addon.Monk.Vivify, 0.035, LifeCyclesVivifyManaCostMultiplier);
setFillerSpell(addon.Monk.EnvelopingMist, 0.052, LifeCyclesEnvelopingMistManaCostMultiplier);
setFillerSpell(addon.Monk.RenewingMist, 0.028);
setFillerSpell(addon.Monk.GustOfMists, 0);

--Azerite
addon.Monk.OverflowingMists = 273354;
addon.Monk.BurstOfLife = 278564;
addon.Monk.Azerite = {};
addon.Monk.Azerite.FontOfLife = 386;
addon.Monk.Azerite.InvigoratingBrew = 76;
addon.Monk.Azerite.UpliftedSpirits = 387;


addon.Monk.TFTBuff = 116680
addon.BuffTracker:Track(addon.Monk.TFTBuff);
local function invigoratingBrewScalar(unit)
	local buff = addon.BuffTracker:Get(addon.Monk.TFTBuff);
	if ( buff > 0 ) then
		return 1;
	else
		return 0;
	end
end

createSpellInfo(addon.Monk.OverflowingMists,		SpellType.MONK,	_,T,_,T,T,_,T); --can crit
createSpellInfo(addon.Monk.BurstOfLife,				SpellType.MONK,	_,T,_,T,T,_,T); --can crit
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Monk.Azerite.FontOfLife,0.535,addon.Monk.EssenceFont,0.338,{Direct=true}); 
--addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Monk.Azerite.InvigoratingBrew,3.05,addon.Monk.Vivify,0.95,{ValueScalar=invigoratingBrewScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.Monk.Azerite.UpliftedSpirits,1.1,addon.Monk.Vivify,0.95);



--[[----------------------------------------------------------------------------
	Discipline Priest
------------------------------------------------------------------------------]]
addon.DiscPriest = {};
addon.DiscPriest.AtonementHeal1 = 81751;
addon.DiscPriest.AtonementHeal2 = 94472;
addon.DiscPriest.ShadowMendHeal = 186263;
addon.DiscPriest.RadianceHeal = 194509;
addon.DiscPriest.PenanceHeal = 47750;
addon.DiscPriest.ContritionHeal1 = 281469;
addon.DiscPriest.ContritionHeal2 = 270501;
addon.DiscPriest.ShadowCovenantHeal = 204065;
addon.DiscPriest.ShadowWordPain = 589;
addon.DiscPriest.PurgeTheWicked = 204197;
addon.DiscPriest.Schism = 214621;
addon.DiscPriest.Solace = 129250;
addon.DiscPriest.SmiteCast = 585;
addon.DiscPriest.SmiteAbsorb = 208771;
addon.DiscPriest.PowerWordShield = 17;
addon.DiscPriest.PetAttack = -1000; --spellid not used by the game, just an identifier we can use internally
addon.DiscPriest.LuminousBarrierAbsorb = 271466;

addon.DiscPriest.HaloDamage = 120696;
addon.DiscPriest.HolyNovaDamage = 132157;
addon.DiscPriest.DivineStarDamage = 122128;

addon.DiscPriest.ShadowFiendCast = 34433;
addon.DiscPriest.PenanceCast1 = 47540;
addon.DiscPriest.PenanceCast2 = 47666;
addon.DiscPriest.AtonementBuff = 194384;

--																			I C H H V M L
createSpellInfo(addon.DiscPriest.AtonementHeal1,		SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.AtonementHeal2,		SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.ShadowMendHeal,		SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.RadianceHeal,			SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.PenanceHeal,			SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.ContritionHeal1,		SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.ContritionHeal2,		SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.ShadowCovenantHeal,	SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.ShadowWordPain,		SpellType.DPRIEST,	T,T,T,T,T,T,T);
createSpellInfo(addon.DiscPriest.PurgeTheWicked,		SpellType.DPRIEST,	T,T,T,T,T,T,T);
createSpellInfo(addon.DiscPriest.Schism,				SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.SmiteCast,				SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.SmiteAbsorb,			SpellType.DPRIEST,	T,T,_,T,T,_,_);
createSpellInfo(addon.DiscPriest.PowerWordShield,		SpellType.DPRIEST,	T,T,_,T,T,T,_);
createSpellInfo(addon.DiscPriest.LuminousBarrierAbsorb,	SpellType.DPRIEST,	T,T,_,T,T,T,_);
createSpellInfo(addon.DiscPriest.PenanceCast1,			SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.PenanceCast2,			SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.Solace,				SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.PetAttack,				SpellType.DPRIEST,	T,T,_,T,T,T,_);
createSpellInfo(addon.DiscPriest.HolyNovaDamage,		SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.HaloDamage,			SpellType.DPRIEST,	T,T,_,T,T,T,T);
createSpellInfo(addon.DiscPriest.DivineStarDamage,		SpellType.DPRIEST,	T,T,_,T,T,T,T);

createSpellInfo(addon.DiscPriest.ShadowFiendCast,		SpellType.IGNORED);


local function setTransfersToAtonement(id,gracePeriod)
	Spells[id].transfersToAtonement=true;
	Spells[id].transfersToAtonementGracePeriod = gracePeriod;
end

setTransfersToAtonement(addon.DiscPriest.SmiteCast);
setTransfersToAtonement(addon.DiscPriest.Schism);
setTransfersToAtonement(addon.DiscPriest.ShadowWordPain);
setTransfersToAtonement(addon.DiscPriest.PurgeTheWicked);
setTransfersToAtonement(addon.DiscPriest.PenanceCast1);
setTransfersToAtonement(addon.DiscPriest.PenanceCast2);
setTransfersToAtonement(addon.DiscPriest.PetAttack);
setTransfersToAtonement(addon.DiscPriest.Solace);

setTransfersToAtonement(addon.DiscPriest.HaloDamage, 5.0);
setTransfersToAtonement(addon.DiscPriest.DivineStarDamage, 5.0);
setTransfersToAtonement(addon.DiscPriest.HolyNovaDamage, 0.5);

setFillerSpell(addon.DiscPriest.PowerWordShield, 0.025);

--Azerite!
addon.DiscPriest.MomentOfRepose = 272776;
addon.DiscPriest.DepthOfTheShadowsBuff = 275544;
addon.DiscPriest.WealBuff = 275544;
addon.DiscPriest.WoeBuff = 273310;
addon.DiscPriest.Azerite = {};
addon.DiscPriest.Azerite.GiftOfForgiveness = 397;
addon.DiscPriest.Azerite.DepthOfTheShadows = 227;
addon.DiscPriest.Azerite.EnduringLuminescence = 399;
addon.DiscPriest.Azerite.WealAndWoe = 164;
addon.DiscPriest.Azerite.ContemptuousHomility = 398;
addon.BuffTracker:Track(addon.DiscPriest.DepthOfTheShadowsBuff);
addon.BuffTracker:Track(addon.DiscPriest.WealBuff);
addon.BuffTracker:Track(addon.DiscPriest.WoeBuff);

local function giftOfForgivenessScalar(unit)
	if (addon.DiscPriest.AtonementTracker:Count() >= 3) then
		return 1;
	else
		return 0;
	end
end

local function depthOfTheShadowsScalar(unit)
	local c = addon.BuffTracker:Get(addon.DiscPriest.DepthOfTheShadowsBuff);
	if ( c and c > 0 ) then
		return c;
	else
		return 0;
	end
end

local function woeScalar(unit)
	local c = addon.BuffTracker:Get(addon.DiscPriest.WoeBuff);
	if ( c and c > 0 ) then
		return 1;
	else
		return 0;
	end
end

local function wealScalar(unit)
	local c = addon.BuffTracker:Get(addon.DiscPriest.WealBuff);
	if ( c and c > 0 ) then
		return 1;
	else
		return 0;
	end
end

createSpellInfo(addon.DiscPriest.MomentOfRepose,		SpellType.DPRIEST,	_,T,_,T,T,T,T);
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.DiscPriest.Azerite.GiftOfForgiveness,0.91,addon.DiscPriest.SmiteCast,0.4277,{ValueScalar=giftOfForgivenessScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.DiscPriest.Azerite.DepthOfTheShadows,0.36,addon.DiscPriest.ShadowMendHeal,1.8,{ValueScalar=depthOfTheShadowsScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.DiscPriest.Azerite.EnduringLuminescence,1.67,addon.DiscPriest.RadianceHeal,0.625);
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.DiscPriest.Azerite.WealAndWoe,1.65,addon.DiscPriest.SmiteCast,0.47,{ValueScalar=woeScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.DiscPriest.Azerite.WealAndWoe,4.37,addon.DiscPriest.PowerWordShield,1.54,{ValueScalar=wealScalar});
addon.AzeriteAugmentations:TraitAugmentsSpell(addon.DiscPriest.Azerite.ContemptuousHomility,0.39,addon.DiscPriest.PenanceCast2,0.40);



--[[----------------------------------------------------------------------------
	Shared Spells
------------------------------------------------------------------------------]]
addon.Trinket = {};
--Legion
addon.Trinket.HighfathersMachinations = 253288;
addon.Trinket.EonarsEmeraldBlossom = 257442; -- 253288;
addon.Trinket.EonarsVerdantEmbrace = 257444;
addon.Trinket.IshkarFelshieldEmitter = 253277;
--Battle for Azeroth
addon.Trinket.LadyWaycrestsMusicBox = 271682;
addon.Trinket.MirrorOfEntwindedFate = 287999;
addon.Trinket.WardofEnvelopment = 287568;
addon.Trinket.RevitalizedVoodooTotem = 266018;


addon.Potion = {};
addon.Potion.Healthstone = 6262;

addon.Enchant = {};
addon.Enchant.AncientPriestess = 228401;

addon.Azerite = {};
addon.Azerite.BondedSouls = 288839;
addon.Azerite.AncientsBulwark = 287605;
addon.Azerite.BlessedPortents = 280052;
addon.Azerite.Savior = 269108;
addon.Azerite.BracingChill = 272428;
addon.Azerite.ConcentratedMending = 272260;
addon.Azerite.AzeriteVeins = 270674;
addon.Azerite.ImpassiveVisage = 270117;
addon.Azerite.ResoundingProtection = 269279;
addon.Azerite.SelfReliance = 270661;
addon.Azerite.BulwarkOfTheMasses = 270657;
addon.Azerite.VampiricSpeed = 269238;
addon.Azerite.ApothecarysConcoctions = 287639;
addon.Azerite.FilthyTransfusion = 273836;
addon.Azerite.AutoSelfCauterizer = 280583;
addon.Azerite.EndlessHunger = 287674;
addon.Azerite.LaserMatrix = 280707;
addon.Azerite.StrengthOfSpirit = 274774;

--Potions																	I C H H V M L
createSpellInfo(addon.Potion.Healthstone,				SpellType.SHARED,	_,_,_,_,T,_,_);

--Trinkets																	I C H H V M L
createSpellInfo(addon.Trinket.HighfathersMachinations,	SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Trinket.EonarsEmeraldBlossom,		SpellType.SHARED,	_,T,T,_,T,_,_);
createSpellInfo(addon.Trinket.EonarsVerdantEmbrace,		SpellType.SHARED,	_,_,_,_,T,_,_);
createSpellInfo(addon.Trinket.IshkarFelshieldEmitter,	SpellType.SHARED,	_,_,_,_,T,_,_);
createSpellInfo(addon.Trinket.LadyWaycrestsMusicBox,	SpellType.SHARED,	_,T,T,_,T,_,_);
createSpellInfo(addon.Trinket.MirrorOfEntwindedFate,	SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Trinket.WardofEnvelopment,		SpellType.SHARED,	_,_,_,_,T,_,_);
createSpellInfo(addon.Trinket.RevitalizedVoodooTotem,	SpellType.SHARED,	_,T,_,_,T,_,_);

--Enchants																	I C H H V M L
createSpellInfo(addon.Enchant.AncientPriestess, 		SpellType.SHARED,	T,T,T,_,T,_,_);

--Azerite
createSpellInfo(addon.Azerite.BondedSouls, 				SpellType.SHARED,	_,T,T,_,T,_,_);
createSpellInfo(addon.Azerite.AncientsBulwark,			SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.BlessedPortents,			SpellType.SHARED,	_,T,T,_,T,_,_);
createSpellInfo(addon.Azerite.Savior,					SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.BracingChill,				SpellType.SHARED,	_,T,T,_,T,_,_);
createSpellInfo(addon.Azerite.ConcentratedMending,		SpellType.SHARED,	_,T,T,_,T,_,_);
createSpellInfo(addon.Azerite.AzeriteVeins,				SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.ImpassiveVisage,			SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.ResoundingProtection,		SpellType.SHARED,	_,_,_,_,T,_,_);
createSpellInfo(addon.Azerite.SelfReliance,				SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.BulwarkOfTheMasses,		SpellType.SHARED,	_,_,_,_,T,_,_);
createSpellInfo(addon.Azerite.VampiricSpeed,			SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.StrengthOfSpirit,			SpellType.SHARED,	_,T,_,_,T,_,_); --Monk
createSpellInfo(addon.Azerite.ApothecarysConcoctions,	SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.FilthyTransfusion,		SpellType.SHARED,	_,_,T,_,T,_,_);
createSpellInfo(addon.Azerite.AutoSelfCauterizer,		SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.EndlessHunger,			SpellType.SHARED,	_,T,_,_,T,_,_);
createSpellInfo(addon.Azerite.LaserMatrix,				SpellType.SHARED,	_,T,T,_,T,_,_);

--[[
todo, an absorption flag for generic absorbs that dont need special tracking?
addon.Azerite.AncientsBulwark
addon.Azerite.ResoundingProtection
addon.Druid.UrsocsEndurance
addon.Monk.LifeCocoon
--]]



--[[----------------------------------------------------------------------------
	Ignored Spells
------------------------------------------------------------------------------]]
createSpellInfo(143924, SpellType.IGNORED); --leech (calculated from other spells)
createSpellInfo(235967, SpellType.IGNORED); --velen's future sight (calculated from other spells)



--[[----------------------------------------------------------------------------
	Shared Buffs
------------------------------------------------------------------------------]]
addon.VelensId = 235966;
addon.BerserkingId = 26297;
addon.BloodlustId = 2825;
addon.HeroismId = 32182;
addon.DrumsOfFuryId = 178207;
addon.TimewarpId = 80353;
addon.PrimalRageId = 264667;
addon.ArcaneIntellectId = 1459;
addon.ScrollOfIntellectId = 264760;
addon.BuffTracker:Track(addon.VelensId)
addon.BuffTracker:Track(addon.BerserkingId)
addon.BuffTracker:Track(addon.BloodlustId)
addon.BuffTracker:Track(addon.HeroismId)
addon.BuffTracker:Track(addon.DrumsOfFuryId)
addon.BuffTracker:Track(addon.TimewarpId)
addon.BuffTracker:Track(addon.PrimalRageId)
addon.BuffTracker:Track(addon.ArcaneIntellectId)
addon.BuffTracker:Track(addon.ScrollOfIntellectId)

addon.Spells = Spells;
addon.SpellType = SpellType;

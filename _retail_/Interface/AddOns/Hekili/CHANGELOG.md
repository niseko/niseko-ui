# Hekili

## [v8.1.0-02](https://github.com/Hekili/hekili/tree/v8.1.0-02) (2018-12-13)
[Full Changelog](https://github.com/Hekili/hekili/compare/v8.1.0-01...v8.1.0-02)

- Demonology:  Add tick\_time to Doom.  
- Marksmanship:  APL update.  
- Affliction:  Update APL.  
- State:  Fake 'ptr' flag for APL support (uses 1/0 instead of true/false).  
     - Fake stacking\_proc support for trinkets.  
- Fury:  Cold Steel, Hot Blood generates 4 rage and procs Gushing Wound on a crit.  
- Windwalker:  SCK consumes Dance of Chi-Ji.  
- Windwalker:  APL update.  
- Unholy:  Summon a Skeleton when resetting if your Ghoul is out and All Will Serve is talented.  
- Elemental:  Update APL to use X\_elemental.up instead of cooldowns for tracking when elementals are up (fixes Lava Burst not showing with CDs disabled).  
     - add tick time for Flame Shock.  
- State:  Update pet handler to more accurately detect full-control pets and totem guardians.  
    Targets:  Add HasMinionID() helper to detect if a minion with a particular ID is summoned.  
- Assassination:  Fix Nothing Personal trait's energy regeneration.  
- Classes:  Attempt to cache textures when loading an aura.  
     - Attempt to use cached textures with Cancel Buff.  
- UI:  Make delay icons use button's alpha.  
- Add support for Cancel Buff action.  
- Balance:  Another tweak for the celestial\_alignment/incarnation -> ca\_inc hotswap.  

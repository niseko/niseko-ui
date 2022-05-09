
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Nisedumb - Stormscale"] = "Default",
		["Nise - Stormscale"] = "Default",
		["Niseko - Stormscale"] = "Default",
		["Donnerbock - Stormscale"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = -184.0003204345703,
					["x"] = -415.9999694824219,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = -189.0000152587891,
					["x"] = -218.9998779296875,
				},
				["Primary"] = {
					["queue"] = {
						["direction"] = "LEFT",
						["anchor"] = "LEFT",
					},
					["y"] = -241.9993743896484,
					["x"] = -219.0001525878906,
					["rel"] = "CENTER",
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["queue"] = {
						["direction"] = "LEFT",
						["anchor"] = "LEFT",
					},
					["y"] = -242.9999084472656,
					["x"] = -480.9996337890625,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = -238.9999542236328,
					["x"] = -414.9997863769531,
				},
			},
			["iconStore"] = {
				["minimapPos"] = 313.5678931901498,
				["hide"] = true,
			},
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["forceReloadClassDefaultOptions_20220306_262"] = true,
				["resetAllPotions_20201209"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["resetGlobalCooldownSync_20210403"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225-102"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225-263"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225-104"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_258"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225-262"] = true,
				["forceReloadClassDefaultOptions_20220306_263"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225-103"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["minimapIcon"] = true,
			["specs"] = {
				[262] = {
					["abilities"] = {
						["spiritwalkers_grace"] = {
							["disabled"] = true,
						},
					},
					["settings"] = {
						["stack_buffer"] = 1.1,
					},
					["aoe"] = 3,
					["damageDots"] = true,
					["potionsReset"] = 20180919.1,
					["package"] = "Elemental",
					["potion"] = "potion_of_spectral_intellect",
					["nameplates"] = false,
				},
				[263] = {
					["settings"] = {
						["pad_lava_lash"] = true,
						["pad_windstrike"] = true,
						["filler_shock"] = true,
					},
					["package"] = "Enhancement",
					["potion"] = "potion_of_spectral_agility",
					["potionsReset"] = 20180919.1,
				},
				[103] = {
					["package"] = "Feral",
					["settings"] = {
						["filler_regrowth"] = false,
						["owlweave_cat"] = false,
					},
					["aoe"] = 3,
					["potion"] = "spectral_agility",
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 3,
				},
				[258] = {
					["settings"] = {
						["pad_void_bolt"] = true,
						["ignore_solvent"] = true,
						["stm_timer"] = 20,
						["sw_death_protection"] = 50,
						["pad_ascended_blast"] = true,
					},
					["aoe"] = 2,
					["potion"] = "prolonged_power",
					["nameplates"] = true,
					["damageExpiration"] = 8,
				},
				[102] = {
					["package"] = "Balance",
					["enhancedRecheck"] = true,
					["settings"] = {
						["starlord_cancel"] = false,
					},
					["aoe"] = 3,
					["damageDots"] = true,
					["nameplates"] = false,
					["potion"] = "spectral_intellect",
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
				},
				[104] = {
					["package"] = "Guardian",
					["settings"] = {
						["catweave_bear"] = false,
						["ironfur_damage_threshold"] = 5,
						["maul_rage"] = 20,
						["mangle_more"] = false,
						["owlweave_bear"] = false,
						["shift_for_convoke"] = false,
					},
					["aoe"] = 3,
					["potion"] = "spectral_agility",
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
				},
			},
			["toggles"] = {
				["cooldowns"] = {
					["value"] = true,
					["separate"] = true,
				},
				["mode"] = {
					["aoe"] = true,
					["value"] = "single",
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "SimC",
					["builtIn"] = true,
					["date"] = 20220326,
					["spec"] = 263,
					["desc"] = "Enhancement Shaman\nMarch 25, 2022",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_harvest",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "sundering",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.raging_vesper_vortex.equipped & talent.earth_shield.enabled & vesper_totem_heal_charges > 0",
								["action"] = "healing_stream_totem",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.raging_vesper_vortex.equipped & talent.earth_shield.enabled & vesper_totem_heal_charges > 0",
								["action"] = "earth_shield",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 6 || ( active_dot.flame_shock >= 4 & active_dot.flame_shock >= cycle_enemies )",
								["action"] = "fire_nova",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["criteria"] = "! buff.primordial_wave.up",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.deeply_rooted_elements.equipped & buff.crash_lightning.up",
								["action"] = "windstrike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.deeply_rooted_elements.equipped & buff.crash_lightning.up",
								["action"] = "stormstrike",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "lava_lash",
								["criteria"] = "dot.flame_shock.ticking & ( active_dot.flame_shock < cycle_enemies & active_dot.flame_shock < 6 )",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "! talent.hailstorm.enabled & active_dot.flame_shock < cycle_enemies & active_dot.flame_shock < 6",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( active_dot.flame_shock >= cycle_enemies || active_dot.flame_shock >= 4 ) & buff.primordial_wave.up & buff.maelstrom_weapon.stack >= 5 & ( ! buff.splintered_elements.up || fight_remains <= 12 || raid_event.adds.remains <= gcd )",
								["action"] = "lightning_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled || runeforge.seeds_of_rampant_growth.equipped",
								["action"] = "fae_transfusion",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.down & buff.primordial_wave.up & buff.maelstrom_weapon.stack < 5",
								["action"] = "crash_lightning",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_wave.up & buff.maelstrom_weapon.stack < 5",
								["action"] = "sundering",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_wave.up & buff.maelstrom_weapon.stack < 5",
								["action"] = "stormstrike",
							}, -- [18]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 4",
								["action"] = "fire_nova",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled || buff.crash_lightning.down",
								["action"] = "crash_lightning",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "lava_lash",
								["criteria"] = "talent.lashing_flames.enabled",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 3",
								["action"] = "fire_nova",
							}, -- [23]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up",
								["action"] = "lava_lash",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "stormkeeper",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 10",
								["action"] = "chain_lightning",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.crash_lightning.up",
								["action"] = "stormstrike",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock >= 2",
								["action"] = "fire_nova",
							}, -- [31]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [32]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [33]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
								["interrupt"] = "1",
							}, -- [35]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [36]
							{
								["action"] = "fae_transfusion",
								["enabled"] = true,
							}, -- [37]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "chain_lightning",
							}, -- [39]
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [40]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [41]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [42]
						},
						["single"] = {
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.up || ( runeforge.primal_lava_actuators.equipped & buff.primal_lava_actuators.stack > 6 )",
								["action"] = "lava_lash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.windfury_totem.up",
								["action"] = "windfury_totem",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "ice_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds.up",
								["action"] = "sundering",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_wave.down & ( raid_event.adds.in > 42 || raid_event.adds.in < 6 )",
								["action"] = "primordial_wave",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "flame_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.primordial_wave.up & raid_event.adds.in > buff.primordial_wave.remains & ( ! buff.splintered_elements.up || fight_remains <= 12 )",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 40",
								["action"] = "vesper_totem",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.hailstorm.up",
								["action"] = "frost_shock",
							}, -- [12]
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.refreshable",
								["action"] = "lava_lash",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.seeds_of_rampant_growth.equipped || cooldown.feral_spirit.remains > 30",
								["action"] = "fae_transfusion",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormflurry.enabled & buff.stormbringer.up",
								["action"] = "stormstrike",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "elemental_blast",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.raging_vesper_vortex.equipped & talent.earth_shield.enabled & ( vesper_totem_heal_charges > 1 || ( vesper_totem_heal_charges > 0 & raid_event.adds.in > ( buff.vesper_totem.remains - 3 ) ) )",
								["action"] = "healing_stream_totem",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.raging_vesper_vortex.equipped & talent.earth_shield.enabled & ( vesper_totem_heal_charges > 1 || ( vesper_totem_heal_charges > 0 & raid_event.adds.in > ( buff.vesper_totem.remains - 3 ) ) )",
								["action"] = "earth_shield",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & raid_event.adds.in >= 90",
								["action"] = "chain_harvest",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack = 10 & buff.primordial_wave.down",
								["action"] = "lightning_bolt",
							}, -- [22]
							{
								["action"] = "stormstrike",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5",
								["action"] = "stormkeeper",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
								["interrupt"] = "1",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 10",
								["action"] = "windfury_totem",
							}, -- [26]
							{
								["action"] = "lava_lash",
								["enabled"] = true,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.maelstrom_weapon.stack >= 5 & buff.primordial_wave.down",
								["action"] = "lightning_bolt",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 40",
								["action"] = "sundering",
							}, -- [29]
							{
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [30]
							{
								["action"] = "crash_lightning",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "ice_strike",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "active_dot.flame_shock",
								["action"] = "fire_nova",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled",
								["action"] = "fleshcraft",
							}, -- [34]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "settings.filler_shock",
								["action"] = "flame_shock",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_totem.remains < 30",
								["action"] = "windfury_totem",
							}, -- [37]
						},
						["default"] = {
							{
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "( talent.ascendance.enabled & raid_event.adds.in >= 90 & cooldown.ascendance.remains < 10 ) || ( talent.hot_hand.enabled & buff.molten_weapon.up ) || buff.icy_edge.up || ( talent.stormflurry.enabled & buff.crackling_surge.up ) || debuff.earthen_spike.up || active_enemies > 1 || boss & fight_remains < 30",
								["description"] = "In-combat potion is before combat ends.",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Interrupt",
								["action"] = "wind_shear",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "the_first_sigil",
								["action"] = "the_first_sigil",
								["criteria"] = "( talent.ascendance.enabled & raid_event.adds.in >= 90 & cooldown.ascendance.remains < 10 ) || ( talent.hot_hand.enabled & buff.molten_weapon.up ) || buff.icy_edge.up || ( talent.stormflurry.enabled & buff.crackling_surge.up ) || debuff.earthen_spike.up || active_enemies > 1 || fight_remains < 30",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "cache_of_acquired_treasures",
								["action"] = "cache_of_acquired_treasures",
								["criteria"] = "buff.acquired_sword.up || fight_remains < 25",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
								["criteria"] = "! buff.scars_of_fraternal_strife_4.up || fight_remains < 31 || raid_event.adds.in < 16 || active_enemies > 1",
							}, -- [6]
							{
								["enabled"] = true,
								["slots"] = "trinket1",
								["action"] = "trinket1",
								["criteria"] = "! variable.trinket1_is_weird",
							}, -- [7]
							{
								["enabled"] = true,
								["slots"] = "trinket2",
								["action"] = "trinket2",
								["criteria"] = "! variable.trinket2_is_weird",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [13]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled || runeforge.doom_winds.equipped ) & ( soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled || active_enemies = 1 )",
								["action"] = "fae_transfusion",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in >= 90 || active_enemies > 1",
								["action"] = "ascendance",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "windfury_totem",
								["criteria"] = "runeforge.doom_winds.equipped & buff.doom_winds_debuff.down & ( raid_event.adds.in >= 60 || active_enemies > 1 ) || buff.windfury_totem.down & ( ! runeforge.doom_winds.equipped || buff.doom_winds_debuff.up )",
								["line_cd"] = "15",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "If only one enemy, priority follows the 'single' action list.",
								["strict"] = 1,
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "On multiple enemies, the priority follows the 'aoe' action list.",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [19]
							{
								["action"] = "counterstrike_totem",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "skyfury_totem",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "primal_strike",
								["enabled"] = true,
							}, -- [22]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.windfury_weapon.remains < 300",
								["action"] = "windfury_weapon",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue_weapon.remains < 300",
								["action"] = "flametongue_weapon",
							}, -- [2]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.lightning_shield.remains < 300",
								["action"] = "lightning_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.doom_winds.equipped & buff.windfury_totem.down",
								["action"] = "windfury_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.the_first_sigil || trinket.t1.is.scars_of_fraternal_strife || trinket.t1.is.cache_of_acquired_treasures",
								["var_name"] = "trinket1_is_weird",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.the_first_sigil || trinket.t2.is.scars_of_fraternal_strife || trinket.t2.is.cache_of_acquired_treasures",
								["var_name"] = "trinket2_is_weird",
							}, -- [9]
						},
					},
					["version"] = 20220326,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 15: Converted 'soulbind.X' to 'soulbind.X.enabled' (2x).\nLine 35: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'single' required some automated changes.\nLine 25: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\nLine 34: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 15: Converted 'soulbind.X' to 'soulbind.X.enabled' (2x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 7: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 7: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\nLine 8: Converted 'trinket.1.X' to 'trinket.t1.X' (3x).\nLine 9: Converted 'trinket.2.X' to 'trinket.t2.X' (3x).\n\nImported 4 action lists.\n",
					["author"] = "SimC",
					["profile"] = "## Enhancement Shaman\n## March 25, 2022\n\nactions.precombat=windfury_weapon,if=buff.windfury_weapon.remains<300\nactions.precombat+=/flametongue_weapon,if=buff.flametongue_weapon.remains<300\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/lightning_shield,if=buff.lightning_shield.remains<300\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.precombat+=/windfury_totem,if=!runeforge.doom_winds.equipped&buff.windfury_totem.down\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent\nactions.precombat+=/variable,name=trinket1_is_weird,value=trinket.1.is.the_first_sigil||trinket.1.is.scars_of_fraternal_strife||trinket.1.is.cache_of_acquired_treasures\nactions.precombat+=/variable,name=trinket2_is_weird,value=trinket.2.is.the_first_sigil||trinket.2.is.scars_of_fraternal_strife||trinket.2.is.cache_of_acquired_treasures\n\n## Executed every time the actor is available.\nactions=bloodlust\n# In-combat potion is before combat ends.\nactions+=/potion,if=(talent.ascendance.enabled&raid_event.adds.in>=90&cooldown.ascendance.remains<10)||(talent.hot_hand.enabled&buff.molten_weapon.up)||buff.icy_edge.up||(talent.stormflurry.enabled&buff.crackling_surge.up)||debuff.earthen_spike.up||active_enemies>1||boss&fight_remains<30\n# Interrupt\nactions+=/wind_shear\nactions+=/use_item,name=the_first_sigil,if=(talent.ascendance.enabled&raid_event.adds.in>=90&cooldown.ascendance.remains<10)||(talent.hot_hand.enabled&buff.molten_weapon.up)||buff.icy_edge.up||(talent.stormflurry.enabled&buff.crackling_surge.up)||debuff.earthen_spike.up||active_enemies>1||fight_remains<30\nactions+=/use_item,name=cache_of_acquired_treasures,if=buff.acquired_sword.up||fight_remains<25\nactions+=/use_item,name=scars_of_fraternal_strife,if=!buff.scars_of_fraternal_strife_4.up||fight_remains<31||raid_event.adds.in<16||active_enemies>1\nactions+=/use_items,slots=trinket1,if=!variable.trinket1_is_weird\nactions+=/use_items,slots=trinket2,if=!variable.trinket2_is_weird\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\nactions+=/feral_spirit\nactions+=/fae_transfusion,if=(talent.ascendance.enabled||runeforge.doom_winds.equipped)&(soulbind.grove_invigoration||soulbind.field_of_blossoms||active_enemies=1)\nactions+=/ascendance,if=raid_event.adds.in>=90||active_enemies>1\nactions+=/windfury_totem,line_cd=15,if=runeforge.doom_winds.equipped&buff.doom_winds_debuff.down&(raid_event.adds.in>=60||active_enemies>1)||buff.windfury_totem.down&(!runeforge.doom_winds.equipped||buff.doom_winds_debuff.up)\n# If only one enemy, priority follows the 'single' action list.\nactions+=/call_action_list,name=single,strict=1,if=active_enemies=1\n# On multiple enemies, the priority follows the 'aoe' action list.\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/counterstrike_totem\nactions+=/skyfury_totem\nactions+=/primal_strike\n\n## Multi target action priority list\nactions.aoe=chain_harvest,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/crash_lightning,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.aoe+=/sundering,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.aoe+=/healing_stream_totem,if=runeforge.raging_vesper_vortex.equipped&talent.earth_shield.enabled&vesper_totem_heal_charges>0\nactions.aoe+=/earth_shield,if=runeforge.raging_vesper_vortex.equipped&talent.earth_shield.enabled&vesper_totem_heal_charges>0\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=6||(active_dot.flame_shock>=4&active_dot.flame_shock>=cycle_enemies)\nactions.aoe+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up\nactions.aoe+=/windstrike,if=runeforge.deeply_rooted_elements.equipped&buff.crash_lightning.up\nactions.aoe+=/stormstrike,if=runeforge.deeply_rooted_elements.equipped&buff.crash_lightning.up\nactions.aoe+=/lava_lash,cycle_targets=1,if=dot.flame_shock.ticking&(active_dot.flame_shock<cycle_enemies&active_dot.flame_shock<6)\nactions.aoe+=/flame_shock,if=!ticking\nactions.aoe+=/flame_shock,cycle_targets=1,if=!talent.hailstorm.enabled&active_dot.flame_shock<cycle_enemies&active_dot.flame_shock<6\nactions.aoe+=/lightning_bolt,if=(active_dot.flame_shock>=cycle_enemies||active_dot.flame_shock>=4)&buff.primordial_wave.up&buff.maelstrom_weapon.stack>=5&(!buff.splintered_elements.up||fight_remains<=12||raid_event.adds.remains<=gcd)\nactions.aoe+=/frost_shock,if=buff.hailstorm.up\nactions.aoe+=/fae_transfusion,if=soulbind.grove_invigoration||soulbind.field_of_blossoms||runeforge.seeds_of_rampant_growth.equipped\nactions.aoe+=/crash_lightning,if=buff.crash_lightning.down&buff.primordial_wave.up&buff.maelstrom_weapon.stack<5\nactions.aoe+=/sundering,if=buff.primordial_wave.up&buff.maelstrom_weapon.stack<5\nactions.aoe+=/stormstrike,if=buff.primordial_wave.up&buff.maelstrom_weapon.stack<5\nactions.aoe+=/sundering\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=4\nactions.aoe+=/crash_lightning,if=talent.crashing_storm.enabled||buff.crash_lightning.down\nactions.aoe+=/lava_lash,cycle_targets=1,if=talent.lashing_flames.enabled\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=3\nactions.aoe+=/vesper_totem\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.up\nactions.aoe+=/lava_lash,if=buff.crash_lightning.up\nactions.aoe+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/stormkeeper,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack=10\nactions.aoe+=/stormstrike,if=buff.crash_lightning.up\nactions.aoe+=/fire_nova,if=active_dot.flame_shock>=2\nactions.aoe+=/crash_lightning\nactions.aoe+=/windstrike\nactions.aoe+=/stormstrike\nactions.aoe+=/fleshcraft,interrupt=1,if=soulbind.volatile_solvent\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable\nactions.aoe+=/fae_transfusion\nactions.aoe+=/frost_shock\nactions.aoe+=/chain_lightning,if=buff.maelstrom_weapon.stack>=5\nactions.aoe+=/earthen_spike\nactions.aoe+=/earth_elemental\nactions.aoe+=/windfury_totem,if=buff.windfury_totem.remains<30\n\n## Single target action priority list\nactions.single=windstrike\nactions.single+=/lava_lash,if=buff.hot_hand.up||(runeforge.primal_lava_actuators.equipped&buff.primal_lava_actuators.stack>6)\nactions.single+=/windfury_totem,if=!buff.windfury_totem.up\nactions.single+=/stormstrike,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/crash_lightning,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/ice_strike,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/sundering,if=runeforge.doom_winds.equipped&buff.doom_winds.up\nactions.single+=/primordial_wave,if=buff.primordial_wave.down&(raid_event.adds.in>42||raid_event.adds.in<6)\nactions.single+=/flame_shock,if=!ticking\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&buff.primordial_wave.up&raid_event.adds.in>buff.primordial_wave.remains&(!buff.splintered_elements.up||fight_remains<=12)\nactions.single+=/vesper_totem,if=raid_event.adds.in>40\nactions.single+=/frost_shock,if=buff.hailstorm.up\nactions.single+=/earthen_spike\nactions.single+=/lava_lash,if=dot.flame_shock.refreshable\nactions.single+=/fae_transfusion,if=!runeforge.seeds_of_rampant_growth.equipped||cooldown.feral_spirit.remains>30\nactions.single+=/stormstrike,if=talent.stormflurry.enabled&buff.stormbringer.up\nactions.single+=/chain_lightning,if=buff.stormkeeper.up\nactions.single+=/elemental_blast,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/healing_stream_totem,if=runeforge.raging_vesper_vortex.equipped&talent.earth_shield.enabled&(vesper_totem_heal_charges>1||(vesper_totem_heal_charges>0&raid_event.adds.in>(buff.vesper_totem.remains-3)))\nactions.single+=/earth_shield,if=runeforge.raging_vesper_vortex.equipped&talent.earth_shield.enabled&(vesper_totem_heal_charges>1||(vesper_totem_heal_charges>0&raid_event.adds.in>(buff.vesper_totem.remains-3)))\nactions.single+=/chain_harvest,if=buff.maelstrom_weapon.stack>=5&raid_event.adds.in>=90\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack=10&buff.primordial_wave.down\nactions.single+=/stormstrike\nactions.single+=/stormkeeper,if=buff.maelstrom_weapon.stack>=5\nactions.single+=/fleshcraft,interrupt=1,if=soulbind.volatile_solvent\nactions.single+=/windfury_totem,if=buff.windfury_totem.remains<10\nactions.single+=/lava_lash\nactions.single+=/lightning_bolt,if=buff.maelstrom_weapon.stack>=5&buff.primordial_wave.down\nactions.single+=/sundering,if=raid_event.adds.in>=40\nactions.single+=/frost_shock\nactions.single+=/crash_lightning\nactions.single+=/ice_strike\nactions.single+=/fire_nova,if=active_dot.flame_shock\nactions.single+=/fleshcraft,if=soulbind.pustule_eruption\nactions.single+=/earth_elemental\nactions.single+=/flame_shock,if=settings.filler_shock\nactions.single+=/windfury_totem,if=buff.windfury_totem.remains<30",
				},
				["Balance"] = {
					["source"] = "https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt",
					["builtIn"] = true,
					["date"] = 20220319,
					["author"] = "SimC",
					["desc"] = "Balance Druid\nMarch 19, 2022\n\nChanges:\n- Added Solar Beam.\n- Changed target_if cases to cycle_targets.\n- Removed unnecessary variables (i.e., prev_starsurge -> prev.starsurge).\n- Avoid precasting Wrath if it's the wrong Eclipse.\n- Make Convoke the Spirits a little more flexible (if you hadn't hit it simultaneously with BOAT + Celestial Alignment, it'd skip).\n- Make most 'fight_remains' scenarios apply to boss fights only.\n- Treat Tome of Blah Blah Blah as a special trinket.\n- Opener (i.e., Wrath, Wrath, Starfire) made more resilient to earlier combat-start.\n- Fix Kindred Empowerment check for CD usage.",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["description"] = "Precast 2 Wrath and a Starsurge on ST with Night Fae and BoAT or Starfire otherwise",
								["criteria"] = "( eclipse.lunar_next || eclipse.in_solar || eclipse.in_both || eclipse.any_next ) & prev.1.wrath & ! prev.2.wrath",
								["action"] = "wrath",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! runeforge.balance_of_all_things.enabled || ! covenant.night_fae || ! spell_targets.starfall = 1 || ! talent.natures_balance.enabled ) || ( eclipse.solar_next || eclipse.in_lunar || eclipse.in_both || eclipse.any_next ) ) & ! set_bonus.tier28_2pc",
								["action"] = "starfire",
								["line_cd"] = "5",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( runeforge.balance_of_all_things.enabled & covenant.night_fae & spell_targets.starfall = 1 ) & ! set_bonus.tier28_2pc",
								["action"] = "starsurge",
								["line_cd"] = "5",
							}, -- [3]
						},
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "time < ( 2 * action.wrath.cast_time + action.starfire.cast_time )",
								["list_name"] = "opener",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > 1 & ( ! talent.starlord.enabled || talent.stellar_drift.enabled ) || spell_targets.starfall > 2",
								["var_name"] = "is_aoe",
								["description"] = "Sets AoE on 3+ without drift and with Starlord and 2+ otherwise",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire > 1",
								["var_name"] = "is_cleave",
								["description"] = "Sets cleave when Starfire can hit 2+ targets which is relevant for the Eclipse to be preferred and which filler to cast",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "prev_gcd.1.moonfire || prev_gcd.1.sunfire || prev_gcd.1.starsurge || prev_gcd.1.starfall || prev_gcd.1.fury_of_elune || prev.ravenous_frenzy || buff.ca_inc.remains = buff.ca_inc.duration || variable.is_aoe",
								["var_name"] = "in_gcd",
								["description"] = "Variable that checks if you are in a gcd to avoid the situation where a trinket etc is used in between casts",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Use Berserking at the end of Frenzy when haste is above 60%, after Convoke with BoaT and otherwise with CA/Inc",
								["criteria"] = "( ( ! covenant.night_fae || ! cooldown.convoke_the_spirits.up || ! runeforge.balance_of_all_things.enabled ) & buff.ca_inc.remains > 15 & buff.ravenous_frenzy.remains < 4 & ! covenant.venthyr || covenant.venthyr & buff.ca_inc.up & buff.ravenous_frenzy.up & ( buff.ravenous_frenzy.remains <= 12 - 4 * runeforge.sinful_hysteria.enabled || buff.ca_inc.remains < 11 || 1 / spell_haste < 1.6 ) ) & variable.in_gcd",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Pot with a CA/Inc that isn't a Pulsar proc or when the fight is about to end",
								["action"] = "potion",
								["criteria"] = "( buff.ca_inc.remains > 15 & ( ! runeforge.sinful_hysteria.enabled || buff.ravenous_frenzy.remains < 19 & buff.ravenous_frenzy.up ) || boss & fight_remains < 25 ) & variable.in_gcd",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "ceil ( ( fight_remains - 15 - cooldown.ca_inc.remains ) / 180 ) > ceil ( ( fight_remains - 15 - cooldown.convoke_the_spirits.remains ) / 180 ) & ! raid_event.adds.exists & ( ! cooldown.ca_inc.ready || ! cooldown.convoke_the_spirits.ready ) || cooldown.ca_inc.remains > interpolated_fight_remains || runeforge.celestial_spirits.enabled & cooldown.ca_inc.remains > 30 || cooldown.convoke_the_spirits.remains > interpolated_fight_remains - 10 || ! covenant.night_fae",
								["var_name"] = "convoke_desync",
								["description"] = "Calculates whether using Convoke now will allow you to still cast the same amount of Convoke+CA/Inc casts",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( target.time_to_die > 15 || raid_event.adds.in > 50 ) & ( ( equipped.empyreal_ordnance & ( ! covenant.venthyr || cooldown.empyreal_ordnance.remains < 167 + ( 5 * runeforge.sinful_hysteria.enabled ) ) & ! cooldown.empyreal_ordnance.ready ) || equipped.soulletting_ruby & ( ! covenant.night_fae || cooldown.soulletting_ruby_345801.remains < 114 ) || ( cooldown.berserking.ready || ! race.troll || covenant.night_fae ) & ( ! talent.fury_of_elune.enabled || covenant.venthyr & cooldown.fury_of_elune.remains < 11 + 5 * runeforge.sinful_hysteria.enabled || ! covenant.venthyr & cooldown.fury_of_elune.remains < buff.ca_inc.duration + 12 * runeforge.primordial_arcanic_pulsar.enabled - 12 ) & ( equipped.inscrutable_quantum_device & cooldown.inscrutable_quantum_device.remains < 5 ) || ( ( equipped.shadowed_orb_of_torment & cooldown.tormented_insight_355321.remains ) || ( ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & ( trinket.t1.ready_cooldown || trinket.t1.cooldown.remains > interpolated_fight_remains - 10 ) || variable.on_use_trinket = 2 & ( trinket.t2.ready_cooldown || trinket.t2.cooldown.remains > interpolated_fight_remains - 10 ) || variable.on_use_trinket = 0 ) ) )",
								["var_name"] = "cd_condition",
								["description"] = "Used to delay the usage of CA/Inc when using double on use and prevent usage when an add event is about to die",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! soulbind.thrill_seeker.enabled || fight_remains > 200 || boss & fight_remains < 25 + ( 40 - buff.thrill_seeker.stack * 2 ) || buff.thrill_seeker.stack > 38 - ( runeforge.sinful_hysteria.enabled * 2 )",
								["var_name"] = "thrill_seeker_wait",
								["description"] = "Variable used to delay any trinkets and cds when waiting for an Euphoria proc",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "empyreal_ordnance",
								["action"] = "empyreal_ordnance",
								["criteria"] = "cooldown.ca_inc.remains < 20 & cooldown.convoke_the_spirits.remains < 20 & ( variable.thrill_seeker_wait || buff.thrill_seeker.stack > 30 + ( runeforge.sinful_hysteria.enabled * 3 ) ) & variable.in_gcd || boss & fight_remains < 37",
								["description"] = "Use Empyreal Ordnance 20secs before a CA/Inc use or so that it will line up with the end of Frenzy",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "soulletting_ruby",
								["action"] = "soulletting_ruby",
								["criteria"] = "( cooldown.ca_inc.remains < 6 & ! covenant.venthyr & ! covenant.night_fae || covenant.night_fae & cooldown.convoke_the_spirits.remains < 6 & ( variable.convoke_desync || cooldown.ca_inc.remains < 6 ) || covenant.venthyr & ( ! runeforge.sinful_hysteria.enabled & cooldown.ca_inc.remains < 6 || buff.ravenous_frenzy.remains < 10 + ( 5 * equipped.instructors_divine_bell ) & buff.ravenous_frenzy.up ) || boss & fight_remains < 25 || equipped.empyreal_ordnance & cooldown.empyreal_ordnance.remains > 20 ) & variable.in_gcd & ! equipped.inscrutable_quantum_device || cooldown.inscrutable_quantum_device.remains > 20 || boss & fight_remains < 20",
								["description"] = "Use Soulleting Ruby 6secs before a CA/Inc use or so that it will line up with the end of Frenzy",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.ca_inc.remains > 15 & ( ! runeforge.sinful_hysteria.enabled || buff.ravenous_frenzy.remains <= 15.5 + ( 3.5 * buff.bloodlust.up ) + ( 4.5 - 3.5 * buff.bloodlust.up ) * equipped.instructors_divine_bell + 4.5 * ( equipped.the_first_sigil & cooldown.the_first_sigil.remains <= 20 ) & buff.ravenous_frenzy.up ) || boss & fight_remains < 25 || equipped.empyreal_ordnance & cooldown.empyreal_ordnance.remains",
								["var_name"] = "iqd_condition",
								["description"] = "Always use IQD with CA/Inc or at the end of Frenzy",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.iqd_condition & variable.in_gcd",
								["name"] = "inscrutable_quantum_device",
								["action"] = "inscrutable_quantum_device",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
								["criteria"] = "( cooldown.ca_inc.ready & ! covenant.night_fae & variable.thrill_seeker_wait & ( cooldown.berserking.ready || ! race.troll ) || covenant.night_fae & cooldown.convoke_the_spirits.ready & ( variable.convoke_desync || cooldown.ca_inc.ready ) ) & dot.sunfire.ticking & ( dot.stellar_flare.ticking || ! talent.stellar_flare.enabled || spell_targets.starfire > 3 ) & dot.moonfire.ticking & ( variable.is_aoe || runeforge.balance_of_all_things.enabled || astral_power >= 90 || variable.convoke_desync || buff.bloodlust.up ) & ! equipped.inscrutable_quantum_device || equipped.inscrutable_quantum_device & cooldown.inscrutable_quantum_device.remains > 30 & ! buff.ca_inc.up || boss & fight_remains < 40",
								["description"] = "Use Shadowed Orb before CA/Inc",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( variable.on_use_trinket != 1 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & ( buff.ca_inc.up & ( ! covenant.venthyr || buff.ravenous_frenzy.remains + ( 3.5 * runeforge.sinful_hysteria.enabled ) <= trinket.t1.buff_duration & buff.ravenous_frenzy.up || buff.ravenous_frenzy_sinful_hysteria.up ) || cooldown.ca_inc.remains + 2 > trinket.t1.cooldown.duration & ! buff.ca_inc.up & ( ! covenant.night_fae || ! variable.convoke_desync ) & ! covenant.kyrian || covenant.night_fae & variable.convoke_desync & cooldown.convoke_the_spirits.up & ! cooldown.ca_inc.up & ( ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) & ! runeforge.balance_of_all_things.enabled || ( buff.balance_of_all_things_nature.stack = 5 || buff.balance_of_all_things_arcane.stack = 8 ) ) || buff.kindred_empowerment_energize.up ) || boss & fight_remains < 20 || variable.on_use_trinket = 0 ) & variable.in_gcd",
								["action"] = "trinket1",
								["slots"] = "trinket1",
								["description"] = "This is a rather elaborate way to make all on use stat trinkets to be lined up with CA/Inc and Convoke and use the 2nd slot on cd if both trinkets are on use stat trinkets",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & ( buff.ca_inc.up & ( ! covenant.venthyr || buff.ravenous_frenzy.remains + ( 3.5 * runeforge.sinful_hysteria.enabled ) <= trinket.t2.buff_duration & buff.ravenous_frenzy.up || buff.ravenous_frenzy_sinful_hysteria.up ) || cooldown.ca_inc.remains + 2 > trinket.t2.cooldown.duration & ! buff.ca_inc.up & ( ! covenant.night_fae || ! variable.convoke_desync ) & ! covenant.kyrian & ( ! buff.ca_inc.up || ! covenant.venthyr ) || covenant.night_fae & variable.convoke_desync & cooldown.convoke_the_spirits.up & ! cooldown.ca_inc.up & ( ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) & ! runeforge.balance_of_all_things.enabled || ( buff.balance_of_all_things_nature.stack = 5 || buff.balance_of_all_things_arcane.stack = 8 ) ) ) || buff.kindred_empowerment_energize.up || boss & fight_remains < 20 || variable.on_use_trinket = 0 ) & variable.in_gcd",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "Uses all other on use items on cd",
								["action"] = "use_items",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Either go into the st or aoe action list",
								["strict"] = 1,
								["criteria"] = "variable.is_aoe",
								["list_name"] = "aoe",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [20]
						},
						["precombat"] = {
							{
								["action"] = "kindred_spirits",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "on_use_trinket",
								["description"] = "The variable is set to 0 with no stat on use trinkets, 1 when the first one is on use, 2 if the second is and 3 if both are",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["var_name"] = "on_use_trinket",
								["criteria"] = "trinket.t1.has_use_buff & trinket.t1.cooldown.duration & ! trinket.t1.is.tome_of_monstrous_constructions",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "2",
								["var_name"] = "on_use_trinket",
								["criteria"] = "trinket.t2.has_use_buff & trinket.t2.cooldown.duration & ! trinket.t2.is.tome_of_monstrous_constructions",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["var_name"] = "on_use_trinket",
								["value"] = "4",
								["description"] = "These trinkets are not automatically detected as on use stat trinkets.  Set variable to 4 as they also need special handling.",
								["criteria"] = "equipped.inscrutable_quantum_device || equipped.empyreal_ordnance || equipped.soulletting_ruby",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "30 * ( 1 - 0.15 * set_bonus.tier28_4pc )",
								["var_name"] = "ss_cost",
								["description"] = "Sets the Starsurge cost for later calculations (for example when to start dumping before Frenzy falls off)",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "50 * ( 1 - 0.15 * set_bonus.tier28_4pc )",
								["var_name"] = "sf_cost",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "30 + 10 * runeforge.celestial_spirits.enabled",
								["var_name"] = "convoke_asp",
								["description"] = "Sets at which amount of AsP Convoke should be used: 40 without Celestial Spirits and 30 with.",
							}, -- [8]
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.lunar_next || eclipse.in_solar || eclipse.in_both || eclipse.any_next )",
								["action"] = "wrath",
								["line_cd"] = "10",
							}, -- [10]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "runeforge.timeworn_dreambinder.enabled & ( buff.timeworn_dreambinder.remains < gcd.max + 0.1 || buff.timeworn_dreambinder.remains < action.starfire.execute_time + 0.1 & ( eclipse.in_lunar || eclipse.solar_next || eclipse.any_next ) ) & buff.timeworn_dreambinder.up",
								["var_name"] = "dream_will_fall_off",
								["description"] = "Calculates whether the Dreamcatcher buff will fall off within the next cast",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! eclipse.in_solar & spell_targets.starfire > 7 - talent.soul_of_the_forest.enabled * 2 + eclipse.in_both & ! runeforge.primordial_arcanic_pulsar.enabled & ! runeforge.oneths_clear_vision.enabled",
								["var_name"] = "ignore_starsurge",
								["description"] = "Calculates whether Starsurge is worth casting over Starfire in Lunar Eclipse",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Use Convoke when at less than 50 AsP and line up with CA/Inc",
								["criteria"] = "! druid.no_cds & ( ( variable.convoke_desync & ! cooldown.ca_inc.ready & ! runeforge.primordial_arcanic_pulsar.enabled || buff.ca_inc.up & ( ! runeforge.primordial_arcanic_pulsar.enabled || runeforge.celestial_spirits.enabled || fight_remains > 127 || boss & fight_remains < cooldown.ca_inc.remains + 10 || buff.ca_inc.remains > 12 ) ) & ( ( ( astral_power <= variable.convoke_asp || spell_targets.starfire > 3 ) & ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) || buff.ca_inc.remains > 5 & buff.ca_inc.remains <= 12 ) & ( ! talent.stellar_drift.enabled || buff.starfall.remains < 1.5 - 0.5 * runeforge.celestial_spirits.enabled || buff.ca_inc.remains < buff.starfall.remains + 5 & buff.ca_inc.up ) & ( ! runeforge.timeworn_dreambinder.enabled || ! runeforge.celestial_spirits.enabled || buff.timeworn_dreambinder.remains > execute_time ) || runeforge.balance_of_all_things.enabled ) & ( ! runeforge.balance_of_all_things.enabled || ( buff.balance_of_all_things_nature.stack = 8 || buff.balance_of_all_things_arcane.stack = 8 ) ) || boss & fight_remains < 10 & ! cooldown.ca_inc.ready )",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["cycle_targets"] = 1,
								["description"] = "Use Sunfire in pandemic on anything that lives 14secs and less with more targets and at the end of a Solar Eclipse at 14 secs or less remaining as to not having to refresh during Lunar Eclipse",
								["criteria"] = "( refreshable || buff.eclipse_solar.remains < 3 & eclipse.in_solar & remains < 14 & talent.soul_of_the_forest.enabled ) & target.time_to_die > 14 - spell_targets + remains & ( eclipse.in_any || remains < gcd.max )",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Use Sunfire to have a global to use IQD",
								["criteria"] = "variable.iqd_condition & cooldown.inscrutable_quantum_device.ready & equipped.inscrutable_quantum_device & ap_check",
								["action"] = "sunfire",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Keep up Starfall at all times unless using Lycaras and it is about to proc or let the special action line below handle Dreambinder on 2 targets",
								["criteria"] = "! talent.stellar_drift.enabled & ( ! set_bonus.tier28_4pc || eclipse.in_any || spell_targets.starfall > 3 ) & ( buff.starfall.refreshable & ( spell_targets.starfall < 3 || ! runeforge.timeworn_dreambinder.enabled ) || talent.soul_of_the_forest.enabled & buff.eclipse_solar.remains < 3 & eclipse.in_solar & buff.starfall.remains < 7 & spell_targets.starfall >= 4 ) & ( ! runeforge.lycaras_fleeting_glimpse.enabled || time % 45 > buff.starfall.remains + 2 ) & target.time_to_die > 5",
								["action"] = "starfall",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "With Stellar Drift use on cd when refreshable but still wait for Lycaras proc and don't use before CDs. Still use before Convoke since that will proc another Starfall",
								["criteria"] = "talent.stellar_drift.enabled & buff.starfall.refreshable & ( ! set_bonus.tier28_4pc || eclipse.in_any || spell_targets.starfall > 4 ) & ( ! runeforge.lycaras_fleeting_glimpse.enabled || time % 45 > 4 ) & target.time_to_die > 3",
								["action"] = "starfall",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "With Dreambinder use Starfall to keep up the buff by also using Starfall on 5 seconds or less remaining",
								["criteria"] = "runeforge.timeworn_dreambinder.enabled & spell_targets.starfall >= 3 & ( ! buff.timeworn_dreambinder.up & buff.starfall.refreshable || ( variable.dream_will_fall_off & ( buff.starfall.remains < 3 || spell_targets.starfall > 2 & talent.stellar_drift.enabled & buff.starfall.remains < 5 ) ) )",
								["action"] = "starfall",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "astral_power > 80 * ( 1 - set_bonus.tier28_2pc * 0.2 ) * ( 1 - buff.timeworn_dreambinder.stack * 0.1 ) - ( buff.starfall.remains * 3 / spell_haste * ! talent.stellar_drift.enabled ) - ( cooldown.starfall.remains * 3 / spell_haste * talent.stellar_drift.enabled ) - ( buff.fury_of_elune.remains * 5 ) & ( buff.starfall.up || cooldown.starfall.remains )",
								["var_name"] = "starfall_wont_fall_off",
								["description"] = "Calculates whether a Starsurge use will cause Starfall to fall off, and use Starsurge to keep Dreambinder stack up. 80 is the required AsP to cast Starsurge+Starfall",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Use Starsurge with Dreambinder to keep up the buff without losing Starfall uptime and use Starsurge on 4+ BoAT stacks until 4 targets",
								["criteria"] = "variable.dream_will_fall_off & variable.starfall_wont_fall_off & ! variable.ignore_starsurge || ( buff.balance_of_all_things_nature.stack > 3 || buff.balance_of_all_things_arcane.stack > 3 ) & spell_targets.starfall < 4 & variable.starfall_wont_fall_off",
								["action"] = "starsurge",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
								["description"] = "Use swarm so that you get max uptime by using it as late as possible on less than 3 stacks or just when 3+ stacks expire",
								["criteria"] = "! ticking & ! action.adaptive_swarm_damage.in_flight || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 3",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["cycle_targets"] = 1,
								["description"] = "Refresh Moonfire if CA/Inc is ready, there are less than 5 targets in Lunar Eclipse with SotF, less than 10 otherwise in any Eclipse or up to 5 targets before a Lunar Eclipse. Don't refresh during Kindred Empowerment unless in Solar Eclipse",
								["criteria"] = "refreshable & target.time_to_die > ( ( 14 + ( spell_targets.starfire * 2 * buff.eclipse_lunar.up ) ) + remains ) / ( 1 + talent.twin_moons.enabled ) & astral_power > variable.sf_cost - buff.starfall.remains * 6 & ( ap_check || variable.ignore_starsurge || ! eclipse.in_any ) & ( cooldown.ca_inc.ready & eclipse.in_any & ! druid.no_cds & ( variable.convoke_desync || cooldown.convoke_the_spirits.ready || ! covenant.night_fae ) || spell_targets.starfire < ( ( 8 - ( buff.eclipse_lunar.up * 3 ) ) * ( 1 + talent.twin_moons.enabled ) ) & ! eclipse.solar_next & ( ! cooldown.ca_inc.ready || druid.no_cds ) || ( eclipse.in_solar || buff.eclipse_lunar.up & ! talent.soul_of_the_forest.enabled ) & ( spell_targets.starfire < 10 * ( 1 + talent.twin_moons.enabled ) ) ) & ( ! covenant.kyrian || ! buff.kindred_empowerment_energize.up || eclipse.in_solar ) & ! buff.ravenous_frenzy_sinful_hysteria.up",
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "Use FoN on cd without capping",
								["criteria"] = "ap_check || variable.ignore_starsurge",
								["action"] = "force_of_nature",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( variable.cd_condition & ( buff.starfall.up || talent.stellar_drift.enabled || covenant.night_fae ) & dot.moonfire.ticking & ( ! buff.solstice.up & ! buff.ca_inc.up & ( ! talent.fury_of_elune.enabled || buff.ca_inc.duration > cooldown.fury_of_elune.remains + 8 ) & ( ! set_bonus.tier28_2pc || eclipse.in_lunar || eclipse.solar_next ) & variable.thrill_seeker_wait & ( ! covenant.night_fae || variable.convoke_desync || cooldown.convoke_the_spirits.remains < 15 ) & target.time_to_die > buff.ca_inc.duration * 0.7 ) || boss & fight_remains < buff.ca_inc.duration + 12 * runeforge.primordial_arcanic_pulsar.enabled )",
								["var_name"] = "cd_condition_aoe",
							}, -- [14]
							{
								["enabled"] = true,
								["description"] = "Use Frenzy with CA/Inc",
								["criteria"] = "buff.ca_inc.remains > 15 || buff.ca_inc.duration + 12 * runeforge.primordial_arcanic_pulsar.enabled < 26 & variable.cd_condition_aoe",
								["action"] = "ravenous_frenzy",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "Use CA/Inc on cd unless and line it up with Convoke",
								["criteria"] = "variable.cd_condition_aoe & ( ! covenant.venthyr || ! runeforge.sinful_hysteria.enabled || runeforge.primordial_arcanic_pulsar.enabled || buff.ca_inc.duration >= 26 ) || buff.ravenous_frenzy.up & buff.ravenous_frenzy.remains < 15.5",
								["action"] = "celestial_alignment",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "incarnation",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "Use Empower Bond on cd with Starfall up and save for Pulsar and CA/Inc",
								["criteria"] = "( cooldown.ca_inc.remains + buff.ca_inc.duration + runeforge.primordial_arcanic_pulsar.enabled * 12 > cooldown.empower_bond.duration + 10 ) || buff.ca_inc.remains > 8 || druid.no_cds",
								["action"] = "empower_bond",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
								["description"] = "Refresh flare on up to 3 targets without CA/Inc being about to expire and not overcapping",
								["criteria"] = "refreshable & time_to_die > 15 & spell_targets.starfire < 4 & ap_check & ( buff.ca_inc.remains > 10 || ! buff.ca_inc.up )",
							}, -- [19]
							{
								["enabled"] = true,
								["description"] = "Use FoE if inside an Eclipse and line it up with a Pulsar proc and Adaptive Swarm",
								["criteria"] = "eclipse.in_any & ( ap_check || ! runeforge.primordial_arcanic_pulsar.enabled ) & ( buff.primordial_arcanic_pulsar.value < 250 || buff.ca_inc.remains > 8 ) & ( dot.adaptive_swarm_damage.ticking || ! covenant.necrolord || spell_targets > 2 ) & ( buff.ravenous_frenzy.remains < 9 - ( 4 * runeforge.sinful_hysteria.enabled ) & buff.ravenous_frenzy.up || ! buff.ravenous_frenzy.up ) & ( ! cooldown.ca_inc.up || buff.thrill_seeker.stack < 15 & fight_remains < 200 & fight_remains > 100 || ! soulbind.thrill_seeker.enabled ) & ( soulbind.thrill_seeker.enabled || cooldown.ca_inc.remains > 30 ) & target.time_to_die > 5 || boss & fight_remains < 10",
								["action"] = "fury_of_elune",
							}, -- [20]
							{
								["enabled"] = true,
								["description"] = "Use a Starfall Oneth proc unless Starfall is already up or you are about to overcap AsP",
								["criteria"] = "buff.oneths_perception.up & ( buff.starfall.refreshable || astral_power > 90 )",
								["action"] = "starfall",
							}, -- [21]
							{
								["enabled"] = true,
								["description"] = "Dump AsP before Convoke with Starfall and then Starsurge",
								["criteria"] = "covenant.night_fae & ! talent.stellar_drift.enabled & ( variable.convoke_desync || cooldown.ca_inc.up || buff.ca_inc.up ) & cooldown.convoke_the_spirits.remains < gcd.max * ceil ( astral_power / variable.sf_cost ) & buff.starfall.remains < 4 & ! druid.no_cds",
								["action"] = "starfall",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & ( variable.convoke_desync || cooldown.ca_inc.up || buff.ca_inc.up ) & cooldown.convoke_the_spirits.remains < 5 & variable.starfall_wont_fall_off & eclipse.in_any & ! variable.ignore_starsurge & ! druid.no_cds",
								["action"] = "starsurge",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Use Starsurge with an Oneth proc or if you'd overcap AsP with your next cast. Also dump AsP at the end of the Venthyr buff if Starfall wouldn't fall off or you are on 2 targets",
								["criteria"] = "buff.oneths_clear_vision.up || ( ! starfire.ap_check & ! variable.ignore_starsurge || ( buff.ca_inc.remains < 5 & buff.ca_inc.up || ( ( buff.ca_inc.remains < gcd.max * ceil ( astral_power / variable.ss_cost ) & buff.ca_inc.up || buff.ravenous_frenzy_sinful_hysteria.remains < gcd.max * ceil ( astral_power / variable.ss_cost ) & buff.ravenous_frenzy_sinful_hysteria.up ) & covenant.venthyr ) ) & ( spell_targets.starfall < 3 || variable.starfall_wont_fall_off ) ) & ! variable.ignore_starsurge & ( ! runeforge.timeworn_dreambinder.enabled || spell_targets.starfall < 3 )",
								["action"] = "starsurge",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Use Moons in Solar Eclipse and save Full Moon for CA/Inc",
								["criteria"] = "( buff.eclipse_solar.remains > execute_time || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check",
								["action"] = "new_moon",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > execute_time || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check & ( buff.ravenous_frenzy.remains < 5 & buff.ravenous_frenzy.up & ! runeforge.sinful_hysteria.enabled || ! buff.ravenous_frenzy.up )",
								["action"] = "half_moon",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > execute_time & ( cooldown.ca_inc.remains > 50 || cooldown.convoke_the_spirits.remains > 50 ) || ( charges = 2 & recharge_time < 5 ) || charges = 3 ) & ap_check & ( buff.ravenous_frenzy.remains < 5 & buff.ravenous_frenzy.up & ! runeforge.sinful_hysteria.enabled || ! buff.ravenous_frenzy.up )",
								["action"] = "full_moon",
							}, -- [27]
							{
								["enabled"] = true,
								["description"] = "Use WoE on CD",
								["action"] = "warrior_of_elune",
							}, -- [28]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire > 4 + floor ( mastery_value * 100 / 20 ) + floor ( buff.starsurge_empowerment_solar.stack / 4 )",
								["var_name"] = "starfire_in_solar",
								["description"] = "Calculates whether to use Starfire in Solar which is at 5 targets+1 for every 20% mastery or 4 Starsurge Empowerment stacks",
							}, -- [29]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 / spell_haste < 2 - ( 0.2 * ( spell_targets.starfire - 1 ) * ( 1 + talent.soul_of_the_forest.enabled * 1.5 ) ) + 0.15 * buff.ravenous_frenzy.remains",
								["var_name"] = "wrath_in_frenzy",
								["description"] = "Calculates whether to Wrath during Frenzy",
							}, -- [30]
							{
								["enabled"] = true,
								["description"] = "Use Wrath in Solar Eclipse or if no Starfire will fit into CA/Inc anymore",
								["criteria"] = "( eclipse.lunar_next || eclipse.any_next & variable.is_cleave ) & ( target.time_to_die > 4 || eclipse.lunar_in_2 || boss & fight_remains < 10 ) || buff.eclipse_solar.remains < action.starfire.execute_time & buff.eclipse_solar.up || eclipse.in_solar & ! variable.starfire_in_solar || buff.ca_inc.remains < action.starfire.execute_time & ! variable.is_cleave & buff.ca_inc.remains < execute_time & buff.ca_inc.up || buff.ravenous_frenzy.up & variable.wrath_in_frenzy || ! variable.is_cleave & buff.ca_inc.remains > execute_time",
								["action"] = "wrath",
							}, -- [31]
							{
								["enabled"] = true,
								["description"] = "Use Starfire if in Lunar Eclipse, in Solar Eclipse on 4+ targets or to proc Solar Eclipse",
								["action"] = "starfire",
							}, -- [32]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Fallthru",
								["list_name"] = "fallthru",
							}, -- [33]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["description"] = "Starsurge for movement unless using BoAT",
								["criteria"] = "! runeforge.balance_of_all_things.equipped",
								["action"] = "starsurge",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["cycle_targets"] = 1,
								["description"] = "Cast the dot with the most time to add until the max duration is hit. Sunfire remains multiplied to match moonfire duration",
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
							}, -- [2]
							{
								["action"] = "moonfire",
								["enabled"] = true,
							}, -- [3]
						},
						["st"] = {
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
								["description"] = "Use Adaptive Swarm when there is no active swarm, as late as possible on swarm with 2 or fewer stacks or on a 3+ swarm so that the new swarm arrives just after that swarm expires",
								["criteria"] = "! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 5 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 3 & dot.adaptive_swarm_damage.ticking",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Uses Convoke if CA/Inc is up or you are desyncing CA/Inc with Convoke and you are below 40/30(Celestial Spirits) AsP in a 10+ sec Eclipse. Also don't let Dreambinder expire, always use in CA/Inc with Pulsar and at the start of a BoAT window.",
								["criteria"] = "! druid.no_cds & ( ( variable.convoke_desync & ! cooldown.ca_inc.ready & ! runeforge.primordial_arcanic_pulsar.enabled || buff.ca_inc.up & ( ! runeforge.primordial_arcanic_pulsar.enabled || runeforge.celestial_spirits.enabled || fight_remains > 127 || boss & fight_remains < cooldown.ca_inc.remains + 10 || buff.ca_inc.remains > 12 ) ) & ( ( astral_power <= variable.convoke_asp & ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) || buff.ca_inc.remains > 5 & buff.ca_inc.remains <= 12 ) & ( ! runeforge.timeworn_dreambinder.enabled || ! runeforge.celestial_spirits.enabled || buff.timeworn_dreambinder.remains > execute_time ) || runeforge.balance_of_all_things.enabled ) & ( ! runeforge.balance_of_all_things.enabled || ( buff.balance_of_all_things_nature.stack = 8 || buff.balance_of_all_things_arcane.stack = 8 ) ) || boss & fight_remains < 10 & ! cooldown.ca_inc.ready )",
								["action"] = "convoke_the_spirits",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Use Starsurge to keep up the Dreambinder buff if it would expire before finishing the next cast or to dump before Convoke",
								["criteria"] = "runeforge.timeworn_dreambinder.enabled & ( ! ( ( buff.timeworn_dreambinder.remains > action.wrath.execute_time + 0.1 & ( eclipse.in_both || eclipse.in_solar || eclipse.lunar_next ) || buff.timeworn_dreambinder.remains > action.starfire.execute_time + 0.1 & ( eclipse.in_lunar || eclipse.solar_next || eclipse.any_next ) ) || ! buff.timeworn_dreambinder.up ) || ( buff.ca_inc.up || variable.convoke_desync ) & cooldown.convoke_the_spirits.ready & covenant.night_fae & ( buff.eclipse_lunar.remains > 10 || buff.eclipse_solar.remains > 10 ) ) & ( ! covenant.kyrian || cooldown.empower_bond.remains > 8 )",
								["action"] = "starsurge",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Dump Starsurges with Balance of All Things or to prepare for Convoke with BoAT",
								["criteria"] = "runeforge.balance_of_all_things.enabled & ( ( buff.balance_of_all_things_nature.stack > 2 || buff.balance_of_all_things_arcane.stack > 2 ) & cooldown.ca_inc.remains > 7 & ! cooldown.convoke_the_spirits.up || ( covenant.night_fae & cooldown.convoke_the_spirits.remains < 10 & eclipse.in_any & astral_power > 20 + 30 * cooldown.ca_inc.ready ) )",
								["action"] = "starsurge",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( buff.ravenous_frenzy.remains > 5 || ! buff.ravenous_frenzy.up ) & ! buff.ravenous_frenzy_sinful_hysteria.up & ( buff.kindred_empowerment_energize.remains < gcd.max ) & ( buff.eclipse_solar.remains > gcd.max || buff.eclipse_lunar.remains > gcd.max || ( ! buff.eclipse_lunar.up || ! buff.eclipse_solar.up ) & ! talent.solstice.enabled )",
								["var_name"] = "dot_requirements",
								["description"] = "Condition for all dots that makes sure they aren't refreshed when Ravenous Frenzy has less than 5 secs remaining or the Empower Bond buff is about to fall off or any Eclipse is about to expire",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! buff.eclipse_solar.up & ! buff.eclipse_lunar.up ) & ! talent.solstice.enabled & ! runeforge.timeworn_dreambinder.enabled",
								["var_name"] = "dot_outside_eclipse",
								["description"] = "Condition that checks if you are outside eclipse to only dot there or ignore this with Solstice",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["cycle_targets"] = 1,
								["description"] = "Dot all targets within Pandemic without overcapping+the above conditions",
								["criteria"] = "( buff.eclipse_solar.remains > remains || buff.eclipse_lunar.remains > remains || variable.dot_outside_eclipse ) & refreshable & target.time_to_die > 12 & ap_check & variable.dot_requirements",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > remains || buff.eclipse_lunar.remains > remains || variable.dot_outside_eclipse ) & refreshable & target.time_to_die > 12 & ap_check & variable.dot_requirements",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_solar.remains > remains || buff.eclipse_lunar.remains > remains || variable.dot_outside_eclipse ) & refreshable & target.time_to_die > 16 & ap_check & variable.dot_requirements",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "covenant.venthyr & ! runeforge.sinful_hysteria.enabled & ! runeforge.circle_of_life_and_death.enabled & cooldown.berserking.ready & cooldown.ravenous_frenzy.ready & ! buff.ca_inc.up & ( astral_power > 87 || buff.bloodlust.up )",
								["var_name"] = "no_hysteria_early_dot",
								["description"] = "Dot right before Frenzy if it would allow you to refresh less during Frenzy (this only happens without Sinful Hysteria)",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.no_hysteria_early_dot & remains < 20",
								["action"] = "moonfire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.no_hysteria_early_dot & remains < 19",
								["action"] = "sunfire",
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "Use FoN on cd without capping",
								["criteria"] = "ap_check",
								["action"] = "force_of_nature",
							}, -- [13]
							{
								["enabled"] = true,
								["description"] = "Use Empower Bond with any long enough lasting Eclipse and try to line it up with Pulsar and CA/Inc",
								["criteria"] = "( cooldown.ca_inc.remains + buff.ca_inc.duration + runeforge.primordial_arcanic_pulsar.enabled * 12 > cooldown.empower_bond.duration + 10 ) || buff.ca_inc.remains > 8 || druid.no_cds",
								["action"] = "empower_bond",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "astral_power > 90 - ( 2.5 * buff.fury_of_elune.stack - 2 * eclipse.in_lunar )",
								["var_name"] = "asp_dump",
								["description"] = "Sets when AsP should be dumped to not overcap (Depends on Fury of Elune and the Eclipse)",
							}, -- [15]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( variable.cd_condition & ! buff.ca_inc.up & ( ! set_bonus.tier28_2pc || eclipse.in_lunar || eclipse.solar_next ) & ( ( ( variable.asp_dump || covenant.night_fae || ( covenant.kyrian & cooldown.empower_bond.ready ) || runeforge.timeworn_dreambinder.enabled ) & dot.sunfire.remains > 8 & dot.moonfire.remains > 9 & ( dot.stellar_flare.remains > 10 || ! talent.stellar_flare.enabled ) & variable.thrill_seeker_wait & target.time_to_die > buff.ca_inc.duration * 0.7 || buff.bloodlust.up & buff.bloodlust.remains < buff.ca_inc.duration + ( 12 * runeforge.primordial_arcanic_pulsar.enabled ) ) || ( equipped.empyreal_ordnance & cooldown.empyreal_ordnance.remains < 167 + ( 5 * runeforge.sinful_hysteria.enabled ) ) ) & ( ( ! covenant.night_fae || ( variable.convoke_desync || cooldown.convoke_the_spirits.remains < 15 ) & ( ! runeforge.balance_of_all_things.enabled || astral_power < 50 & cooldown.convoke_the_spirits.ready ) ) || fight_remains < cooldown.convoke_the_spirits.remains ) || boss & fight_remains < buff.ca_inc.duration + 12 * runeforge.primordial_arcanic_pulsar.enabled )",
								["var_name"] = "cd_condition_st",
								["description"] = "Use CA/Inc with Convoke/Kindred Spirits and don't overwrite Pulsar or when Bloodlust would expire before CA/Inc expires. Make sure to enter a Lunar Eclipse when usign T28 2pc and all CDs will become ready soon enough during the buff and dots have been sufficiently refreshed.",
							}, -- [16]
							{
								["enabled"] = true,
								["description"] = "Use Frenzy with CA/Inc unless Frenzy would last longer than CA/Inc, then use before",
								["criteria"] = "buff.ca_inc.remains > 15 || buff.ca_inc.duration < 27 + runeforge.primordial_arcanic_pulsar.enabled * 12 & variable.cd_condition_st",
								["action"] = "ravenous_frenzy",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st & ( buff.ca_inc.duration >= 27 + runeforge.primordial_arcanic_pulsar.enabled * 12 || ! covenant.venthyr ) || buff.ravenous_frenzy.up & buff.ravenous_frenzy.remains < 9 + conduit.precise_alignment.time_value + ( ! buff.bloodlust.up & ! talent.starlord.enabled )",
								["action"] = "celestial_alignment",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "incarnation",
							}, -- [19]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.ca_inc.remains > 10 || ! variable.convoke_desync & covenant.night_fae || druid.no_cds",
								["var_name"] = "save_for_ca_inc",
								["description"] = "Variable used on abilities that want to be saved for CA/Inc so that they arent wasted just before them",
							}, -- [20]
							{
								["enabled"] = true,
								["description"] = "Uses FoE if in an Eclipse and tries to line it up with Pulsar, CA/Inc, Empower Bond and Adaptive Swarm",
								["criteria"] = "eclipse.in_any & ( astral_power < 92 - buff.fury_of_elune.stack * 5 || buff.ravenous_frenzy.up ) & ( buff.primordial_arcanic_pulsar.value < 240 || buff.ca_inc.remains > 8 ) & variable.save_for_ca_inc & ( ! covenant.necrolord || dot.adaptive_swarm_damage.ticking ) & ( ! covenant.venthyr || buff.ravenous_frenzy.remains < 9 - ( 4 * runeforge.sinful_hysteria.enabled ) & buff.ravenous_frenzy.up || ! buff.ravenous_frenzy.up ) & ( ! covenant.kyrian || cooldown.empower_bond.remains > 20 ) & target.time_to_die > 5 || boss & fight_remains < 10",
								["action"] = "fury_of_elune",
							}, -- [21]
							{
								["enabled"] = true,
								["description"] = "Use Oneth Starfall procs if Starfall isn't up",
								["criteria"] = "buff.oneths_perception.up & buff.starfall.refreshable",
								["action"] = "starfall",
							}, -- [22]
							{
								["buff_name"] = "starlord",
								["criteria"] = "buff.starlord.remains < 5 & ( buff.eclipse_solar.remains > 5 || buff.eclipse_lunar.remains > 5 ) & astral_power > 90",
								["description"] = "Cancel Starlord if it has less than 5s remaining, you are at 90+ AsP and the current Eclipse has 5+s remaining",
								["enabled"] = true,
								["action"] = "cancel_buff",
							}, -- [23]
							{
								["buff_name"] = "primordial_arcanic_pulsar",
								["criteria"] = "talent.incarnation.enabled & ! talent.new_moon.enabled & @ ( ( 300 - astral_power + 40 - set_bonus.tier28_2pc * 40 ) / ( 4 / spell_haste ) - cooldown.convoke_the_spirits.remains ) < @ ( ( 300 - astral_power - buff.primordial_arcanic_pulsar.value + 40 - set_bonus.tier28_2pc * 40 ) / ( 4 / spell_haste ) - cooldown.convoke_the_spirits.remains ) & cooldown.ca_inc.remains > 30 & buff.primordial_arcanic_pulsar.value < 210 & buff.primordial_arcanic_pulsar.value > 30 & cooldown.convoke_the_spirits.remains < 40 & fight_remains > cooldown.convoke_the_spirits.remains + 6 & ( runeforge.celestial_spirits.enabled || variable.convoke_desync )",
								["description"] = "Cancel the Pulsar buff if the proc wouldn't line up with the next time Convoke comes off cd. This usually only happens during the BL.",
								["enabled"] = true,
								["action"] = "cancel_buff",
							}, -- [24]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "covenant.night_fae & runeforge.primordial_arcanic_pulsar.enabled & buff.primordial_arcanic_pulsar.value + astral_power + 3 >= 300 & variable.convoke_desync & cooldown.convoke_the_spirits.remains < astral_power / 30 * gcd.max & ! druid.no_cds & eclipse.in_any & astral_power > variable.convoke_asp & cooldown.ca_inc.remains > 5",
								["var_name"] = "proc_pulsar_early",
								["description"] = "Sets when Pulsar should be procced early to be able to use Convoke on cooldown (Essentially becomes true if dumping AsP now will allow you to perfectly enter Pulsar and then use Convoke)",
							}, -- [25]
							{
								["enabled"] = true,
								["description"] = "Use Starfall with Stellar Drift or t28 4pc and no Starlord, when no Starfall is up or to proc Pulsar when above 90 AsP(or the early Pulsar proc variable is true) or adpative swarm has 8+secs remaining or is in flight",
								["criteria"] = "( talent.stellar_drift.enabled || set_bonus.tier28_4pc ) & ! talent.starlord.enabled & buff.starfall.refreshable & ! runeforge.timeworn_dreambinder.enabled & ( buff.primordial_arcanic_pulsar.value >= 250 & ! buff.ca_inc.up & ( variable.asp_dump || buff.kindred_empowerment_energize.up || variable.proc_pulsar_early ) || ( covenant.necrolord & talent.stellar_drift.enabled & ( dot.adaptive_swarm_damage.remains > 8 || action.adaptive_swarm_damage.in_flight ) ) ) & ( cooldown.ca_inc.remains > 10 || cooldown.convoke_the_spirits.remains > 10 )",
								["action"] = "starfall",
							}, -- [26]
							{
								["enabled"] = true,
								["description"] = "Dumps AsP before Convoke using the Convoke condition to check if Convoke is actually about to be cast",
								["criteria"] = "variable.proc_pulsar_early",
								["action"] = "starsurge",
							}, -- [27]
							{
								["enabled"] = true,
								["description"] = "Use Moons when you are about to/are capping charges and make sure they are in an Eclipse still for HM/FM",
								["criteria"] = "ap_check & ( charges = 2 & recharge_time < 5 || charges = 3 )",
								["action"] = "new_moon",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "ap_check & ( charges = 2 & recharge_time < 5 || charges = 3 ) & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "ap_check & ( charges = 2 & recharge_time < 5 || charges = 3 ) & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [30]
							{
								["enabled"] = true,
								["description"] = "Use Starsurge Oneth procs and dump AsP when CA/Inc, Empower Bond, the Venthyr buff is about to fall off or you'd cap AsP",
								["criteria"] = "eclipse.in_any & ( buff.oneths_clear_vision.up || buff.kindred_empowerment_energize.up || buff.ca_inc.up & ( ! covenant.kyrian || cooldown.empower_bond.remains > 5 || buff.ca_inc.remains < gcd.max * floor ( astral_power / variable.ss_cost ) ) & ( ! covenant.venthyr || buff.ravenous_frenzy.remains < gcd.max * ceil ( ( astral_power + 40 * talent.fury_of_elune.enabled ) / variable.ss_cost ) + 3 * talent.new_moon.enabled & ! runeforge.sinful_hysteria.enabled & buff.ravenous_frenzy.up || buff.ravenous_frenzy_sinful_hysteria.up || ( buff.ravenous_frenzy.remains < action.starfire.execute_time & spell_haste < 0.4 || buff.ravenous_frenzy.remains < action.wrath.execute_time || variable.iqd_condition & cooldown.inscrutable_quantum_device.ready & equipped.inscrutable_quantum_device ) & buff.ravenous_frenzy.up || ! buff.ravenous_frenzy.up & ! cooldown.ravenous_frenzy.ready ) || variable.asp_dump || boss & fight_remains < gcd.max * ceil ( astral_power / variable.ss_cost ) )",
								["action"] = "starsurge",
							}, -- [31]
							{
								["enabled"] = true,
								["description"] = "Try to make the best of Starlord by stacking it up quickly in any Eclipse but Pulsar isn't about to be procced",
								["criteria"] = "talent.starlord.enabled & ! runeforge.timeworn_dreambinder.enabled & ( buff.starlord.up || astral_power > 90 ) & buff.starlord.stack < 3 & ( buff.eclipse_solar.up || buff.eclipse_lunar.up ) & buff.primordial_arcanic_pulsar.value < 270 & ( cooldown.ca_inc.remains > 10 || ! variable.convoke_desync & covenant.night_fae )",
								["action"] = "starsurge",
							}, -- [32]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "eclipse.in_lunar * 8 / action.starfire.execute_time + ! eclipse.in_lunar * ( 6 + talent.soul_of_the_forest.enabled * 3 ) / action.wrath.execute_time + 0.45 / spell_haste + 0.5 * talent.natures_balance.enabled",
								["var_name"] = "aspPerSec",
								["description"] = "Estimates how much AsP are gained per second. Only takes a snapshot for the current situation so wouldn't be accurate for larger timeframes",
							}, -- [33]
							{
								["enabled"] = true,
								["description"] = "Dump Starsurge in an Eclipse as soon as possible as long as you will end up with 80+ when entering the next Eclipse, don't let it proc Pulsar, don't overwrite an Oneth proc and pool before CA/Inc and Empower Bond",
								["criteria"] = "! runeforge.timeworn_dreambinder.enabled & ( buff.primordial_arcanic_pulsar.value < 270 || buff.primordial_arcanic_pulsar.value < 250 & talent.stellar_drift.enabled ) & ( eclipse.in_solar & astral_power + variable.aspPerSec * buff.eclipse_solar.remains + dot.fury_of_elune.ticks_remain * 2.5 > 80 || eclipse.in_lunar & astral_power + variable.aspPerSec * buff.eclipse_lunar.remains + dot.fury_of_elune.ticks_remain * 2.5 > 90 ) & ! buff.oneths_perception.up & ! talent.starlord.enabled & ( cooldown.ca_inc.remains > 7 || soulbind.thrill_seeker.enabled & buff.thrill_seeker.stack < 33 - ( runeforge.sinful_hysteria.enabled * 2 ) & fight_remains > 100 & fight_remains < 200 || druid.no_cds ) & ( ! covenant.kyrian || cooldown.empower_bond.remains > 2 )",
								["action"] = "starsurge",
							}, -- [34]
							{
								["enabled"] = true,
								["description"] = "Use Moons in any Eclipse and save Half+Full Moon for CA/Inc and Kindred Empowerment. Also use NM and FM at the end of Frenzy and don't let Dreambinder fall off",
								["criteria"] = "ap_check & variable.save_for_ca_inc & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "new_moon",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "ap_check & variable.save_for_ca_inc & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time ) & ( buff.ca_inc.up || buff.primordial_arcanic_pulsar.value <= 210 ) & ( ! covenant.venthyr || buff.ravenous_frenzy.remains < ( 5 - 2 * runeforge.sinful_hysteria.enabled ) & buff.ravenous_frenzy.up || ! buff.ravenous_frenzy.up ) & ( ! runeforge.timeworn_dreambinder.enabled || execute_time < buff.timeworn_dreambinder.remains || ! buff.timeworn_dreambinder.up )",
								["action"] = "half_moon",
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "ap_check & variable.save_for_ca_inc & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time ) & ( buff.ca_inc.up || buff.primordial_arcanic_pulsar.value <= 210 ) & ( ! covenant.kyrian || buff.kindred_empowerment_energize.up ) & ( ! covenant.venthyr || buff.ravenous_frenzy.remains < 5 & buff.ravenous_frenzy.up & ! runeforge.sinful_hysteria.enabled || ! buff.ravenous_frenzy.up ) & ( ! runeforge.timeworn_dreambinder.enabled || execute_time < buff.timeworn_dreambinder.remains || ! buff.timeworn_dreambinder.up )",
								["action"] = "full_moon",
							}, -- [37]
							{
								["enabled"] = true,
								["description"] = "Use WoE on cd",
								["action"] = "warrior_of_elune",
							}, -- [38]
							{
								["enabled"] = true,
								["description"] = "Use Starfire to proc Solar Eclipse, CA/Inc has less time than a Wrath execute left or only Lunar Eclipse is up. With T28 2pc enter a Solar Eclipse if Pulsar still has less than 210 stacks and CA/Inc and Convoke have more than 17s CD remaining. Use above 250% haste during Frenzy and 222% haste without Frenzy",
								["criteria"] = "eclipse.in_lunar & ! buff.ravenous_frenzy.up || eclipse.solar_next || ( eclipse.any_next || buff.ca_inc.remains < action.wrath.execute_time & buff.ca_inc.up ) & ( ! set_bonus.tier28_2pc || runeforge.primordial_arcanic_pulsar.enabled & buff.primordial_arcanic_pulsar.value < 210 & cooldown.ca_inc.remains > 17 & ( ! covenant.night_fae || cooldown.convoke_the_spirits.remains > 17 ) & ( ! race.troll || cooldown.berserking.remains > 17 ) ) || eclipse.in_any & ( buff.warrior_of_elune.up || spell_haste < 0.45 & ( ! covenant.venthyr || ! buff.ravenous_frenzy.up ) || covenant.venthyr & spell_haste < 0.4 )",
								["action"] = "starfire",
							}, -- [39]
							{
								["enabled"] = true,
								["description"] = "Use Wrath otherwise which is in Solar Eclipse, CA/Inc or to proc Lunar Eclipse",
								["action"] = "wrath",
							}, -- [40]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Fallthru",
								["list_name"] = "fallthru",
							}, -- [41]
						},
					},
					["version"] = 20220319,
					["warnings"] = "WARNING:  The import for 'opener' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 6: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 6: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 7: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 8: Converted SimC syntax % to Lua division operator (/) (2x).\nLine 8: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 9: Converted 'runeforge.X' to 'runeforge.X.enabled' (3x).\nLine 9: Converted 'trinket.1.X' to 'trinket.t1.X' (2x).\nLine 9: Converted 'trinket.2.X' to 'trinket.t2.X' (2x).\nLine 10: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 11: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 12: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 13: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 16: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 16: Converted 'trinket.1.X' to 'trinket.t1.X' (2x).\nLine 16: Converted 'trinket.2.X' to 'trinket.t2.X' (1x).\nLine 17: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 17: Converted 'trinket.1.X' to 'trinket.t1.X' (1x).\nLine 17: Converted 'trinket.2.X' to 'trinket.t2.X' (2x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 3: Converted 'trinket.1.X' to 'trinket.t1.X' (3x).\nLine 4: Converted 'trinket.2.X' to 'trinket.t2.X' (3x).\nLine 8: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'aoe' required some automated changes.\nLine 1: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (8x).\nLine 6: Converted SimC syntax %% to Lua modulus operator (%) (1x).\nLine 6: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 7: Converted SimC syntax %% to Lua modulus operator (%) (1x).\nLine 7: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 8: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 9: Converted SimC syntax % to Lua division operator (/) (2x).\nLine 12: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 14: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 16: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 18: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 20: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 22: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 24: Converted SimC syntax % to Lua division operator (/) (2x).\nLine 24: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 26: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 27: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 29: Converted SimC syntax % to Lua division operator (/) (2x).\nLine 30: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'fallthru' required some automated changes.\nLine 2: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'st' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (7x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 6: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 10: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 14: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 16: Converted 'runeforge.X' to 'runeforge.X.enabled' (5x).\nLine 17: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 18: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 21: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 24: Converted SimC syntax % to Lua division operator (/) (4x).\nLine 24: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 25: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 25: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 26: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 31: Converted SimC syntax % to Lua division operator (/) (3x).\nLine 31: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 32: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 33: Converted SimC syntax % to Lua division operator (/) (3x).\nLine 34: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 36: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 37: Converted 'runeforge.X' to 'runeforge.X.enabled' (2x).\nLine 39: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nImported 6 action lists.\n",
					["spec"] = 102,
					["profile"] = "## Balance Druid\n## March 19, 2022\n\n## Changes:\n## - Added Solar Beam.\n## - Changed target_if cases to cycle_targets.\n## - Removed unnecessary variables (i.e., prev_starsurge -> prev.starsurge).\n## - Avoid precasting Wrath if it's the wrong Eclipse.\n## - Make Convoke the Spirits a little more flexible (if you hadn't hit it simultaneously with BOAT + Celestial Alignment, it'd skip).\n## - Make most 'fight_remains' scenarios apply to boss fights only.\n## - Treat Tome of Blah Blah Blah as a special trinket.\n## - Opener (i.e., Wrath, Wrath, Starfire) made more resilient to earlier combat-start.\n## - Fix Kindred Empowerment check for CD usage.\n\n## Annotated Balance APL can be found at https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt\n\nactions.precombat=kindred_spirits\n# The variable is set to 0 with no stat on use trinkets, 1 when the first one is on use, 2 if the second is and 3 if both are\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=1,if=trinket.1.has_use_buff&trinket.1.cooldown.duration&!trinket.1.is.tome_of_monstrous_constructions\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=2,if=trinket.2.has_use_buff&trinket.2.cooldown.duration&!trinket.2.is.tome_of_monstrous_constructions\n# These trinkets are not automatically detected as on use stat trinkets.  Set variable to 4 as they also need special handling.\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=4,if=equipped.inscrutable_quantum_device||equipped.empyreal_ordnance||equipped.soulletting_ruby\n# Sets the Starsurge cost for later calculations (for example when to start dumping before Frenzy falls off)\nactions.precombat+=/variable,name=ss_cost,value=30*(1-0.15*set_bonus.tier28_4pc)\nactions.precombat+=/variable,name=sf_cost,value=50*(1-0.15*set_bonus.tier28_4pc)\n# Sets at which amount of AsP Convoke should be used: 40 without Celestial Spirits and 30 with.\nactions.precombat+=/variable,name=convoke_asp,value=30+10*runeforge.celestial_spirits\nactions.precombat+=/moonkin_form\nactions.precombat+=/wrath,line_cd=10,if=(eclipse.lunar_next||eclipse.in_solar||eclipse.in_both||eclipse.any_next)\n\n# Precast 2 Wrath and a Starsurge on ST with Night Fae and BoAT or Starfire otherwise\nactions.opener+=/wrath,if=(eclipse.lunar_next||eclipse.in_solar||eclipse.in_both||eclipse.any_next)&prev.1.wrath&!prev.2.wrath\nactions.opener+=/starfire,line_cd=5,if=((!runeforge.balance_of_all_things||!covenant.night_fae||!spell_targets.starfall=1||!talent.natures_balance.enabled)||(eclipse.solar_next||eclipse.in_lunar||eclipse.in_both||eclipse.any_next))&!set_bonus.tier28_2pc\nactions.opener+=/starsurge,line_cd=5,if=(runeforge.balance_of_all_things&covenant.night_fae&spell_targets.starfall=1)&!set_bonus.tier28_2pc\n\n## Executed every time the actor is available.\nactions=solar_beam\nactions+=/call_action_list,name=opener,strict=1,if=time<(2*action.wrath.cast_time+action.starfire.cast_time)\n# Sets AoE on 3+ without drift and with Starlord and 2+ otherwise\nactions+=/variable,name=is_aoe,value=spell_targets.starfall>1&(!talent.starlord.enabled||talent.stellar_drift.enabled)||spell_targets.starfall>2\n# Sets cleave when Starfire can hit 2+ targets which is relevant for the Eclipse to be preferred and which filler to cast\nactions+=/variable,name=is_cleave,value=spell_targets.starfire>1\n# Variable that checks if you are in a gcd to avoid the situation where a trinket etc is used in between casts\nactions+=/variable,name=in_gcd,value=prev_gcd.1.moonfire||prev_gcd.1.sunfire||prev_gcd.1.starsurge||prev_gcd.1.starfall||prev_gcd.1.fury_of_elune||prev.ravenous_frenzy||buff.ca_inc.remains=buff.ca_inc.duration||variable.is_aoe\n# Use Berserking at the end of Frenzy when haste is above 60%, after Convoke with BoaT and otherwise with CA/Inc\nactions+=/berserking,if=((!covenant.night_fae||!cooldown.convoke_the_spirits.up||!runeforge.balance_of_all_things)&buff.ca_inc.remains>15&buff.ravenous_frenzy.remains<4&!covenant.venthyr||covenant.venthyr&buff.ca_inc.up&buff.ravenous_frenzy.up&(buff.ravenous_frenzy.remains<=12-4*runeforge.sinful_hysteria||buff.ca_inc.remains<11||1%spell_haste<1.6))&variable.in_gcd\n# Pot with a CA/Inc that isn't a Pulsar proc or when the fight is about to end\nactions+=/potion,if=(buff.ca_inc.remains>15&(!runeforge.sinful_hysteria||buff.ravenous_frenzy.remains<19&buff.ravenous_frenzy.up)||boss&fight_remains<25)&variable.in_gcd\n# Calculates whether using Convoke now will allow you to still cast the same amount of Convoke+CA/Inc casts\nactions+=/variable,name=convoke_desync,value=ceil((fight_remains-15-cooldown.ca_inc.remains)%180)>ceil((fight_remains-15-cooldown.convoke_the_spirits.remains)%180)&!raid_event.adds.exists&(!cooldown.ca_inc.ready||!cooldown.convoke_the_spirits.ready)||cooldown.ca_inc.remains>interpolated_fight_remains||runeforge.celestial_spirits&cooldown.ca_inc.remains>30||cooldown.convoke_the_spirits.remains>interpolated_fight_remains-10||!covenant.night_fae\n# Used to delay the usage of CA/Inc when using double on use and prevent usage when an add event is about to die\nactions+=/variable,name=cd_condition,value=(target.time_to_die>15||raid_event.adds.in>50)&((equipped.empyreal_ordnance&(!covenant.venthyr||cooldown.empyreal_ordnance.remains<167+(5*runeforge.sinful_hysteria))&!cooldown.empyreal_ordnance.ready)||equipped.soulletting_ruby&(!covenant.night_fae||cooldown.soulletting_ruby_345801.remains<114)||(cooldown.berserking.ready||!race.troll||covenant.night_fae)&(!talent.fury_of_elune.enabled||covenant.venthyr&cooldown.fury_of_elune.remains<11+5*runeforge.sinful_hysteria||!covenant.venthyr&cooldown.fury_of_elune.remains<buff.ca_inc.duration+12*runeforge.primordial_arcanic_pulsar-12)&(equipped.inscrutable_quantum_device&cooldown.inscrutable_quantum_device.remains<5)||((equipped.shadowed_orb_of_torment&cooldown.tormented_insight_355321.remains)||((variable.on_use_trinket=1||variable.on_use_trinket=3)&(trinket.1.ready_cooldown||trinket.1.cooldown.remains>interpolated_fight_remains-10)||variable.on_use_trinket=2&(trinket.2.ready_cooldown||trinket.2.cooldown.remains>interpolated_fight_remains-10)||variable.on_use_trinket=0)))\n# Variable used to delay any trinkets and cds when waiting for an Euphoria proc\nactions+=/variable,name=thrill_seeker_wait,value=!soulbind.thrill_seeker.enabled||fight_remains>200||boss&fight_remains<25+(40-buff.thrill_seeker.stack*2)||buff.thrill_seeker.stack>38-(runeforge.sinful_hysteria*2)\n# Use Empyreal Ordnance 20secs before a CA/Inc use or so that it will line up with the end of Frenzy\nactions+=/use_item,name=empyreal_ordnance,if=cooldown.ca_inc.remains<20&cooldown.convoke_the_spirits.remains<20&(variable.thrill_seeker_wait||buff.thrill_seeker.stack>30+(runeforge.sinful_hysteria*3))&variable.in_gcd||boss&fight_remains<37\n# Use Soulleting Ruby 6secs before a CA/Inc use or so that it will line up with the end of Frenzy\nactions+=/use_item,name=soulletting_ruby,if=(cooldown.ca_inc.remains<6&!covenant.venthyr&!covenant.night_fae||covenant.night_fae&cooldown.convoke_the_spirits.remains<6&(variable.convoke_desync||cooldown.ca_inc.remains<6)||covenant.venthyr&(!runeforge.sinful_hysteria&cooldown.ca_inc.remains<6||buff.ravenous_frenzy.remains<10+(5*equipped.instructors_divine_bell)&buff.ravenous_frenzy.up)||boss&fight_remains<25||equipped.empyreal_ordnance&cooldown.empyreal_ordnance.remains>20)&variable.in_gcd&!equipped.inscrutable_quantum_device||cooldown.inscrutable_quantum_device.remains>20||boss&fight_remains<20\n# Always use IQD with CA/Inc or at the end of Frenzy\nactions+=/variable,name=iqd_condition,value=buff.ca_inc.remains>15&(!runeforge.sinful_hysteria||buff.ravenous_frenzy.remains<=15.5+(3.5*buff.bloodlust.up)+(4.5-3.5*buff.bloodlust.up)*equipped.instructors_divine_bell+4.5*(equipped.the_first_sigil&cooldown.the_first_sigil.remains<=20)&buff.ravenous_frenzy.up)||boss&fight_remains<25||equipped.empyreal_ordnance&cooldown.empyreal_ordnance.remains\nactions+=/use_item,name=inscrutable_quantum_device,if=variable.iqd_condition&variable.in_gcd\n# Use Shadowed Orb before CA/Inc\nactions+=/use_item,name=shadowed_orb_of_torment,if=(cooldown.ca_inc.ready&!covenant.night_fae&variable.thrill_seeker_wait&(cooldown.berserking.ready||!race.troll)||covenant.night_fae&cooldown.convoke_the_spirits.ready&(variable.convoke_desync||cooldown.ca_inc.ready))&dot.sunfire.ticking&(dot.stellar_flare.ticking||!talent.stellar_flare.enabled||spell_targets.starfire>3)&dot.moonfire.ticking&(variable.is_aoe||runeforge.balance_of_all_things||astral_power>=90||variable.convoke_desync||buff.bloodlust.up)&!equipped.inscrutable_quantum_device||equipped.inscrutable_quantum_device&cooldown.inscrutable_quantum_device.remains>30&!buff.ca_inc.up||boss&fight_remains<40\n# This is a rather elaborate way to make all on use stat trinkets to be lined up with CA/Inc and Convoke and use the 2nd slot on cd if both trinkets are on use stat trinkets\nactions+=/use_items,slots=trinket1,if=(variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&(buff.ca_inc.up&(!covenant.venthyr||buff.ravenous_frenzy.remains+(3.5*runeforge.sinful_hysteria)<=trinket.1.buff_duration&buff.ravenous_frenzy.up||buff.ravenous_frenzy_sinful_hysteria.up)||cooldown.ca_inc.remains+2>trinket.1.cooldown.duration&!buff.ca_inc.up&(!covenant.night_fae||!variable.convoke_desync)&!covenant.kyrian||covenant.night_fae&variable.convoke_desync&cooldown.convoke_the_spirits.up&!cooldown.ca_inc.up&((buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)&!runeforge.balance_of_all_things||(buff.balance_of_all_things_nature.stack=5||buff.balance_of_all_things_arcane.stack=8))||buff.kindred_empowerment_energize.up)||boss&fight_remains<20||variable.on_use_trinket=0)&variable.in_gcd\nactions+=/use_items,slots=trinket2,if=(variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&(buff.ca_inc.up&(!covenant.venthyr||buff.ravenous_frenzy.remains+(3.5*runeforge.sinful_hysteria)<=trinket.2.buff_duration&buff.ravenous_frenzy.up||buff.ravenous_frenzy_sinful_hysteria.up)||cooldown.ca_inc.remains+2>trinket.2.cooldown.duration&!buff.ca_inc.up&(!covenant.night_fae||!variable.convoke_desync)&!covenant.kyrian&(!buff.ca_inc.up||!covenant.venthyr)||covenant.night_fae&variable.convoke_desync&cooldown.convoke_the_spirits.up&!cooldown.ca_inc.up&((buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)&!runeforge.balance_of_all_things||(buff.balance_of_all_things_nature.stack=5||buff.balance_of_all_things_arcane.stack=8)))||buff.kindred_empowerment_energize.up||boss&fight_remains<20||variable.on_use_trinket=0)&variable.in_gcd\n# Uses all other on use items on cd\nactions+=/use_items\n# Either go into the st or aoe action list\nactions+=/run_action_list,name=aoe,strict=1,if=variable.is_aoe\nactions+=/run_action_list,name=st\n\n# Calculates whether the Dreamcatcher buff will fall off within the next cast\nactions.aoe=variable,name=dream_will_fall_off,value=runeforge.timeworn_dreambinder&(buff.timeworn_dreambinder.remains<gcd.max+0.1||buff.timeworn_dreambinder.remains<action.starfire.execute_time+0.1&(eclipse.in_lunar||eclipse.solar_next||eclipse.any_next))&buff.timeworn_dreambinder.up\n# Calculates whether Starsurge is worth casting over Starfire in Lunar Eclipse\nactions.aoe+=/variable,name=ignore_starsurge,value=!eclipse.in_solar&spell_targets.starfire>7-talent.soul_of_the_forest.enabled*2+eclipse.in_both&!runeforge.primordial_arcanic_pulsar&!runeforge.oneths_clear_vision\n# Use Convoke when at less than 50 AsP and line up with CA/Inc\nactions.aoe+=/convoke_the_spirits,if=!druid.no_cds&((variable.convoke_desync&!cooldown.ca_inc.ready&!runeforge.primordial_arcanic_pulsar||buff.ca_inc.up&(!runeforge.primordial_arcanic_pulsar||runeforge.celestial_spirits||fight_remains>127||boss&fight_remains<cooldown.ca_inc.remains+10||buff.ca_inc.remains>12))&(((astral_power<=variable.convoke_asp||spell_targets.starfire>3)&(buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)||buff.ca_inc.remains>5&buff.ca_inc.remains<=12)&(!talent.stellar_drift||buff.starfall.remains<1.5-0.5*runeforge.celestial_spirits||buff.ca_inc.remains<buff.starfall.remains+5&buff.ca_inc.up)&(!runeforge.timeworn_dreambinder||!runeforge.celestial_spirits||buff.timeworn_dreambinder.remains>execute_time)||runeforge.balance_of_all_things)&(!runeforge.balance_of_all_things||(buff.balance_of_all_things_nature.stack=8||buff.balance_of_all_things_arcane.stack=8))||boss&fight_remains<10&!cooldown.ca_inc.ready)\n# Use Sunfire in pandemic on anything that lives 14secs and less with more targets and at the end of a Solar Eclipse at 14 secs or less remaining as to not having to refresh during Lunar Eclipse\nactions.aoe+=/sunfire,cycle_targets=1,if=(refreshable||buff.eclipse_solar.remains<3&eclipse.in_solar&remains<14&talent.soul_of_the_forest.enabled)&target.time_to_die>14-spell_targets+remains&(eclipse.in_any||remains<gcd.max)\n# Use Sunfire to have a global to use IQD\nactions.aoe+=/sunfire,if=variable.iqd_condition&cooldown.inscrutable_quantum_device.ready&equipped.inscrutable_quantum_device&ap_check\n# Keep up Starfall at all times unless using Lycaras and it is about to proc or let the special action line below handle Dreambinder on 2 targets\nactions.aoe+=/starfall,if=!talent.stellar_drift.enabled&(!set_bonus.tier28_4pc||eclipse.in_any||spell_targets.starfall>3)&(buff.starfall.refreshable&(spell_targets.starfall<3||!runeforge.timeworn_dreambinder)||talent.soul_of_the_forest.enabled&buff.eclipse_solar.remains<3&eclipse.in_solar&buff.starfall.remains<7&spell_targets.starfall>=4)&(!runeforge.lycaras_fleeting_glimpse||time%%45>buff.starfall.remains+2)&target.time_to_die>5\n# With Stellar Drift use on cd when refreshable but still wait for Lycaras proc and don't use before CDs. Still use before Convoke since that will proc another Starfall\nactions.aoe+=/starfall,if=talent.stellar_drift.enabled&buff.starfall.refreshable&(!set_bonus.tier28_4pc||eclipse.in_any||spell_targets.starfall>4)&(!runeforge.lycaras_fleeting_glimpse||time%%45>4)&target.time_to_die>3\n# With Dreambinder use Starfall to keep up the buff by also using Starfall on 5 seconds or less remaining\nactions.aoe+=/starfall,if=runeforge.timeworn_dreambinder&spell_targets.starfall>=3&(!buff.timeworn_dreambinder.up&buff.starfall.refreshable||(variable.dream_will_fall_off&(buff.starfall.remains<3||spell_targets.starfall>2&talent.stellar_drift.enabled&buff.starfall.remains<5)))\n# Calculates whether a Starsurge use will cause Starfall to fall off, and use Starsurge to keep Dreambinder stack up. 80 is the required AsP to cast Starsurge+Starfall\nactions.aoe+=/variable,name=starfall_wont_fall_off,value=astral_power>80*(1-set_bonus.tier28_2pc*0.2)*(1-buff.timeworn_dreambinder.stack*0.1)-(buff.starfall.remains*3%spell_haste*!talent.stellar_drift.enabled)-(cooldown.starfall.remains*3%spell_haste*talent.stellar_drift.enabled)-(buff.fury_of_elune.remains*5)&(buff.starfall.up||cooldown.starfall.remains)\n# Use Starsurge with Dreambinder to keep up the buff without losing Starfall uptime and use Starsurge on 4+ BoAT stacks until 4 targets\nactions.aoe+=/starsurge,if=variable.dream_will_fall_off&variable.starfall_wont_fall_off&!variable.ignore_starsurge||(buff.balance_of_all_things_nature.stack>3||buff.balance_of_all_things_arcane.stack>3)&spell_targets.starfall<4&variable.starfall_wont_fall_off\n# Use swarm so that you get max uptime by using it as late as possible on less than 3 stacks or just when 3+ stacks expire\nactions.aoe+=/adaptive_swarm,cycle_targets=1,if=!ticking&!action.adaptive_swarm_damage.in_flight||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<3\n# Refresh Moonfire if CA/Inc is ready, there are less than 5 targets in Lunar Eclipse with SotF, less than 10 otherwise in any Eclipse or up to 5 targets before a Lunar Eclipse. Don't refresh during Kindred Empowerment unless in Solar Eclipse\nactions.aoe+=/moonfire,cycle_targets=1,if=refreshable&target.time_to_die>((14+(spell_targets.starfire*2*buff.eclipse_lunar.up))+remains)%(1+talent.twin_moons.enabled)&astral_power>variable.sf_cost-buff.starfall.remains*6&(ap_check||variable.ignore_starsurge||!eclipse.in_any)&(cooldown.ca_inc.ready&eclipse.in_any&!druid.no_cds&(variable.convoke_desync||cooldown.convoke_the_spirits.ready||!covenant.night_fae)||spell_targets.starfire<((8-(buff.eclipse_lunar.up*3))*(1+talent.twin_moons.enabled))&!eclipse.solar_next&(!cooldown.ca_inc.ready||druid.no_cds)||(eclipse.in_solar||buff.eclipse_lunar.up&!talent.soul_of_the_forest.enabled)&(spell_targets.starfire<10*(1+talent.twin_moons.enabled)))&(!covenant.kyrian||!buff.kindred_empowerment_energize.up||eclipse.in_solar)&!buff.ravenous_frenzy_sinful_hysteria.up\n# Use FoN on cd without capping\nactions.aoe+=/force_of_nature,if=ap_check||variable.ignore_starsurge\nactions.aoe+=/variable,name=cd_condition_aoe,value=!druid.no_cds&(variable.cd_condition&(buff.starfall.up||talent.stellar_drift.enabled||covenant.night_fae)&dot.moonfire.ticking&(!buff.solstice.up&!buff.ca_inc.up&(!talent.fury_of_elune.enabled||buff.ca_inc.duration>cooldown.fury_of_elune.remains+8)&(!set_bonus.tier28_2pc||eclipse.in_lunar||eclipse.solar_next)&variable.thrill_seeker_wait&(!covenant.night_fae||variable.convoke_desync||cooldown.convoke_the_spirits.remains<15)&target.time_to_die>buff.ca_inc.duration*0.7)||boss&fight_remains<buff.ca_inc.duration+12*runeforge.primordial_arcanic_pulsar)\n# Use Frenzy with CA/Inc\nactions.aoe+=/ravenous_frenzy,if=buff.ca_inc.remains>15||buff.ca_inc.duration+12*runeforge.primordial_arcanic_pulsar<26&variable.cd_condition_aoe\n# Use CA/Inc on cd unless and line it up with Convoke\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe&(!covenant.venthyr||!runeforge.sinful_hysteria||runeforge.primordial_arcanic_pulsar||buff.ca_inc.duration>=26)||buff.ravenous_frenzy.up&buff.ravenous_frenzy.remains<15.5\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\n# Use Empower Bond on cd with Starfall up and save for Pulsar and CA/Inc\nactions.aoe+=/empower_bond,if=(cooldown.ca_inc.remains+buff.ca_inc.duration+runeforge.primordial_arcanic_pulsar*12>cooldown.empower_bond.duration+10)||buff.ca_inc.remains>8||druid.no_cds\n# Refresh flare on up to 3 targets without CA/Inc being about to expire and not overcapping\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&time_to_die>15&spell_targets.starfire<4&ap_check&(buff.ca_inc.remains>10||!buff.ca_inc.up)\n# Use FoE if inside an Eclipse and line it up with a Pulsar proc and Adaptive Swarm\nactions.aoe+=/fury_of_elune,if=eclipse.in_any&(ap_check||!runeforge.primordial_arcanic_pulsar)&(buff.primordial_arcanic_pulsar.value<250||buff.ca_inc.remains>8)&(dot.adaptive_swarm_damage.ticking||!covenant.necrolord||spell_targets>2)&(buff.ravenous_frenzy.remains<9-(4*runeforge.sinful_hysteria)&buff.ravenous_frenzy.up||!buff.ravenous_frenzy.up)&(!cooldown.ca_inc.up||buff.thrill_seeker.stack<15&fight_remains<200&fight_remains>100||!soulbind.thrill_seeker.enabled)&(soulbind.thrill_seeker.enabled||cooldown.ca_inc.remains>30)&target.time_to_die>5||boss&fight_remains<10\n# Use a Starfall Oneth proc unless Starfall is already up or you are about to overcap AsP\nactions.aoe+=/starfall,if=buff.oneths_perception.up&(buff.starfall.refreshable||astral_power>90)\n# Dump AsP before Convoke with Starfall and then Starsurge\nactions.aoe+=/starfall,if=covenant.night_fae&!talent.stellar_drift.enabled&(variable.convoke_desync||cooldown.ca_inc.up||buff.ca_inc.up)&cooldown.convoke_the_spirits.remains<gcd.max*ceil(astral_power%variable.sf_cost)&buff.starfall.remains<4&!druid.no_cds\nactions.aoe+=/starsurge,if=covenant.night_fae&(variable.convoke_desync||cooldown.ca_inc.up||buff.ca_inc.up)&cooldown.convoke_the_spirits.remains<5&variable.starfall_wont_fall_off&eclipse.in_any&!variable.ignore_starsurge&!druid.no_cds\n# Use Starsurge with an Oneth proc or if you'd overcap AsP with your next cast. Also dump AsP at the end of the Venthyr buff if Starfall wouldn't fall off or you are on 2 targets\nactions.aoe+=/starsurge,if=buff.oneths_clear_vision.up||(!starfire.ap_check&!variable.ignore_starsurge||(buff.ca_inc.remains<5&buff.ca_inc.up||((buff.ca_inc.remains<gcd.max*ceil(astral_power%variable.ss_cost)&buff.ca_inc.up||buff.ravenous_frenzy_sinful_hysteria.remains<gcd.max*ceil(astral_power%variable.ss_cost)&buff.ravenous_frenzy_sinful_hysteria.up)&covenant.venthyr))&(spell_targets.starfall<3||variable.starfall_wont_fall_off))&!variable.ignore_starsurge&(!runeforge.timeworn_dreambinder||spell_targets.starfall<3)\n# Use Moons in Solar Eclipse and save Full Moon for CA/Inc\nactions.aoe+=/new_moon,if=(buff.eclipse_solar.remains>execute_time||(charges=2&recharge_time<5)||charges=3)&ap_check\nactions.aoe+=/half_moon,if=(buff.eclipse_solar.remains>execute_time||(charges=2&recharge_time<5)||charges=3)&ap_check&(buff.ravenous_frenzy.remains<5&buff.ravenous_frenzy.up&!runeforge.sinful_hysteria||!buff.ravenous_frenzy.up)\nactions.aoe+=/full_moon,if=(buff.eclipse_solar.remains>execute_time&(cooldown.ca_inc.remains>50||cooldown.convoke_the_spirits.remains>50)||(charges=2&recharge_time<5)||charges=3)&ap_check&(buff.ravenous_frenzy.remains<5&buff.ravenous_frenzy.up&!runeforge.sinful_hysteria||!buff.ravenous_frenzy.up)\n# Use WoE on CD\nactions.aoe+=/warrior_of_elune\n# Calculates whether to use Starfire in Solar which is at 5 targets+1 for every 20% mastery or 4 Starsurge Empowerment stacks\nactions.aoe+=/variable,name=starfire_in_solar,value=spell_targets.starfire>4+floor(mastery_value*100%20)+floor(buff.starsurge_empowerment_solar.stack%4)\n# Calculates whether to Wrath during Frenzy\nactions.aoe+=/variable,name=wrath_in_frenzy,value=1%spell_haste<2-(0.2*(spell_targets.starfire-1)*(1+talent.soul_of_the_forest.enabled*1.5))+0.15*buff.ravenous_frenzy.remains\n# Use Wrath in Solar Eclipse or if no Starfire will fit into CA/Inc anymore\nactions.aoe+=/wrath,if=(eclipse.lunar_next||eclipse.any_next&variable.is_cleave)&(target.time_to_die>4||eclipse.lunar_in_2||boss&fight_remains<10)||buff.eclipse_solar.remains<action.starfire.execute_time&buff.eclipse_solar.up||eclipse.in_solar&!variable.starfire_in_solar||buff.ca_inc.remains<action.starfire.execute_time&!variable.is_cleave&buff.ca_inc.remains<execute_time&buff.ca_inc.up||buff.ravenous_frenzy.up&variable.wrath_in_frenzy||!variable.is_cleave&buff.ca_inc.remains>execute_time\n# Use Starfire if in Lunar Eclipse, in Solar Eclipse on 4+ targets or to proc Solar Eclipse\nactions.aoe+=/starfire\n# Fallthru\nactions.aoe+=/run_action_list,name=fallthru\n\n# Starsurge for movement unless using BoAT\nactions.fallthru=starsurge,if=!runeforge.balance_of_all_things.equipped\n# Cast the dot with the most time to add until the max duration is hit. Sunfire remains multiplied to match moonfire duration\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\n# Use Adaptive Swarm when there is no active swarm, as late as possible on swarm with 2 or fewer stacks or on a 3+ swarm so that the new swarm arrives just after that swarm expires\nactions.st=adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>5)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<3&dot.adaptive_swarm_damage.ticking\n# Uses Convoke if CA/Inc is up or you are desyncing CA/Inc with Convoke and you are below 40/30(Celestial Spirits) AsP in a 10+ sec Eclipse. Also don't let Dreambinder expire, always use in CA/Inc with Pulsar and at the start of a BoAT window.\nactions.st+=/convoke_the_spirits,if=!druid.no_cds&((variable.convoke_desync&!cooldown.ca_inc.ready&!runeforge.primordial_arcanic_pulsar||buff.ca_inc.up&(!runeforge.primordial_arcanic_pulsar||runeforge.celestial_spirits||fight_remains>127||boss&fight_remains<cooldown.ca_inc.remains+10||buff.ca_inc.remains>12))&((astral_power<=variable.convoke_asp&(buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10)||buff.ca_inc.remains>5&buff.ca_inc.remains<=12)&(!runeforge.timeworn_dreambinder||!runeforge.celestial_spirits||buff.timeworn_dreambinder.remains>execute_time)||runeforge.balance_of_all_things)&(!runeforge.balance_of_all_things||(buff.balance_of_all_things_nature.stack=8||buff.balance_of_all_things_arcane.stack=8))||boss&fight_remains<10&!cooldown.ca_inc.ready)\n# Use Starsurge to keep up the Dreambinder buff if it would expire before finishing the next cast or to dump before Convoke\nactions.st+=/starsurge,if=runeforge.timeworn_dreambinder&(!((buff.timeworn_dreambinder.remains>action.wrath.execute_time+0.1&(eclipse.in_both||eclipse.in_solar||eclipse.lunar_next)||buff.timeworn_dreambinder.remains>action.starfire.execute_time+0.1&(eclipse.in_lunar||eclipse.solar_next||eclipse.any_next))||!buff.timeworn_dreambinder.up)||(buff.ca_inc.up||variable.convoke_desync)&cooldown.convoke_the_spirits.ready&covenant.night_fae&(buff.eclipse_lunar.remains>10||buff.eclipse_solar.remains>10))&(!covenant.kyrian||cooldown.empower_bond.remains>8)\n# Dump Starsurges with Balance of All Things or to prepare for Convoke with BoAT\nactions.st+=/starsurge,if=runeforge.balance_of_all_things&((buff.balance_of_all_things_nature.stack>2||buff.balance_of_all_things_arcane.stack>2)&cooldown.ca_inc.remains>7&!cooldown.convoke_the_spirits.up||(covenant.night_fae&cooldown.convoke_the_spirits.remains<10&eclipse.in_any&astral_power>20+30*cooldown.ca_inc.ready))\n# Condition for all dots that makes sure they aren't refreshed when Ravenous Frenzy has less than 5 secs remaining or the Empower Bond buff is about to fall off or any Eclipse is about to expire\nactions.st+=/variable,name=dot_requirements,value=(buff.ravenous_frenzy.remains>5||!buff.ravenous_frenzy.up)&!buff.ravenous_frenzy_sinful_hysteria.up&(buff.kindred_empowerment_energize.remains<gcd.max)&(buff.eclipse_solar.remains>gcd.max||buff.eclipse_lunar.remains>gcd.max||(!buff.eclipse_lunar.up||!buff.eclipse_solar.up)&!talent.solstice.enabled)\n# Condition that checks if you are outside eclipse to only dot there or ignore this with Solstice\nactions.st+=/variable,name=dot_outside_eclipse,value=(!buff.eclipse_solar.up&!buff.eclipse_lunar.up)&!talent.solstice.enabled&!runeforge.timeworn_dreambinder\n# Dot all targets within Pandemic without overcapping+the above conditions\nactions.st+=/moonfire,cycle_targets=1,if=(buff.eclipse_solar.remains>remains||buff.eclipse_lunar.remains>remains||variable.dot_outside_eclipse)&refreshable&target.time_to_die>12&ap_check&variable.dot_requirements\nactions.st+=/sunfire,cycle_targets=1,if=(buff.eclipse_solar.remains>remains||buff.eclipse_lunar.remains>remains||variable.dot_outside_eclipse)&refreshable&target.time_to_die>12&ap_check&variable.dot_requirements\nactions.st+=/stellar_flare,cycle_targets=1,if=(buff.eclipse_solar.remains>remains||buff.eclipse_lunar.remains>remains||variable.dot_outside_eclipse)&refreshable&target.time_to_die>16&ap_check&variable.dot_requirements\n# Dot right before Frenzy if it would allow you to refresh less during Frenzy (this only happens without Sinful Hysteria)\nactions.st+=/variable,name=no_hysteria_early_dot,value=covenant.venthyr&!runeforge.sinful_hysteria&!runeforge.circle_of_life_and_death&cooldown.berserking.ready&cooldown.ravenous_frenzy.ready&!buff.ca_inc.up&(astral_power>87||buff.bloodlust.up)\nactions.st+=/moonfire,if=variable.no_hysteria_early_dot&remains<20\nactions.st+=/sunfire,if=variable.no_hysteria_early_dot&remains<19\n# Use FoN on cd without capping\nactions.st+=/force_of_nature,if=ap_check\n# Use Empower Bond with any long enough lasting Eclipse and try to line it up with Pulsar and CA/Inc\nactions.st+=/empower_bond,if=(cooldown.ca_inc.remains+buff.ca_inc.duration+runeforge.primordial_arcanic_pulsar*12>cooldown.empower_bond.duration+10)||buff.ca_inc.remains>8||druid.no_cds\n# Sets when AsP should be dumped to not overcap (Depends on Fury of Elune and the Eclipse)\nactions.st+=/variable,name=asp_dump,value=astral_power>90-(2.5*buff.fury_of_elune.stack-2*eclipse.in_lunar)\n# Use CA/Inc with Convoke/Kindred Spirits and don't overwrite Pulsar or when Bloodlust would expire before CA/Inc expires. Make sure to enter a Lunar Eclipse when usign T28 2pc and all CDs will become ready soon enough during the buff and dots have been sufficiently refreshed.\nactions.st+=/variable,name=cd_condition_st,value=!druid.no_cds&(variable.cd_condition&!buff.ca_inc.up&(!set_bonus.tier28_2pc||eclipse.in_lunar||eclipse.solar_next)&(((variable.asp_dump||covenant.night_fae||(covenant.kyrian&cooldown.empower_bond.ready)||runeforge.timeworn_dreambinder)&dot.sunfire.remains>8&dot.moonfire.remains>9&(dot.stellar_flare.remains>10||!talent.stellar_flare.enabled)&variable.thrill_seeker_wait&target.time_to_die>buff.ca_inc.duration*0.7||buff.bloodlust.up&buff.bloodlust.remains<buff.ca_inc.duration+(12*runeforge.primordial_arcanic_pulsar))||(equipped.empyreal_ordnance&cooldown.empyreal_ordnance.remains<167+(5*runeforge.sinful_hysteria)))&((!covenant.night_fae||(variable.convoke_desync||cooldown.convoke_the_spirits.remains<15)&(!runeforge.balance_of_all_things||astral_power<50&cooldown.convoke_the_spirits.ready))||fight_remains<cooldown.convoke_the_spirits.remains)||boss&fight_remains<buff.ca_inc.duration+12*runeforge.primordial_arcanic_pulsar)\n# Use Frenzy with CA/Inc unless Frenzy would last longer than CA/Inc, then use before\nactions.st+=/ravenous_frenzy,if=buff.ca_inc.remains>15||buff.ca_inc.duration<27+runeforge.primordial_arcanic_pulsar*12&variable.cd_condition_st\nactions.st+=/celestial_alignment,if=variable.cd_condition_st&(buff.ca_inc.duration>=27+runeforge.primordial_arcanic_pulsar*12||!covenant.venthyr)||buff.ravenous_frenzy.up&buff.ravenous_frenzy.remains<9+conduit.precise_alignment.time_value+(!buff.bloodlust.up&!talent.starlord.enabled)\nactions.st+=/incarnation,if=variable.cd_condition_st\n# Variable used on abilities that want to be saved for CA/Inc so that they arent wasted just before them\nactions.st+=/variable,name=save_for_ca_inc,value=cooldown.ca_inc.remains>10||!variable.convoke_desync&covenant.night_fae||druid.no_cds\n# Uses FoE if in an Eclipse and tries to line it up with Pulsar, CA/Inc, Empower Bond and Adaptive Swarm\nactions.st+=/fury_of_elune,if=eclipse.in_any&(astral_power<92-buff.fury_of_elune.stack*5||buff.ravenous_frenzy.up)&(buff.primordial_arcanic_pulsar.value<240||buff.ca_inc.remains>8)&variable.save_for_ca_inc&(!covenant.necrolord||dot.adaptive_swarm_damage.ticking)&(!covenant.venthyr||buff.ravenous_frenzy.remains<9-(4*runeforge.sinful_hysteria)&buff.ravenous_frenzy.up||!buff.ravenous_frenzy.up)&(!covenant.kyrian||cooldown.empower_bond.remains>20)&target.time_to_die>5||boss&fight_remains<10\n# Use Oneth Starfall procs if Starfall isn't up\nactions.st+=/starfall,if=buff.oneths_perception.up&buff.starfall.refreshable\n# Cancel Starlord if it has less than 5s remaining, you are at 90+ AsP and the current Eclipse has 5+s remaining\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<5&(buff.eclipse_solar.remains>5||buff.eclipse_lunar.remains>5)&astral_power>90\n# Cancel the Pulsar buff if the proc wouldn't line up with the next time Convoke comes off cd. This usually only happens during the BL.\nactions.st+=/cancel_buff,name=primordial_arcanic_pulsar,if=talent.incarnation.enabled&!talent.new_moon.enabled&@((300-astral_power+40-set_bonus.tier28_2pc*40)%(4%spell_haste)-cooldown.convoke_the_spirits.remains)<@((300-astral_power-buff.primordial_arcanic_pulsar.value+40-set_bonus.tier28_2pc*40)%(4%spell_haste)-cooldown.convoke_the_spirits.remains)&cooldown.ca_inc.remains>30&buff.primordial_arcanic_pulsar.value<210&buff.primordial_arcanic_pulsar.value>30&cooldown.convoke_the_spirits.remains<40&fight_remains>cooldown.convoke_the_spirits.remains+6&(runeforge.celestial_spirits||variable.convoke_desync)\n# Sets when Pulsar should be procced early to be able to use Convoke on cooldown (Essentially becomes true if dumping AsP now will allow you to perfectly enter Pulsar and then use Convoke)\nactions.st+=/variable,name=proc_pulsar_early,value=covenant.night_fae&runeforge.primordial_arcanic_pulsar&buff.primordial_arcanic_pulsar.value+astral_power+3>=300&variable.convoke_desync&cooldown.convoke_the_spirits.remains<astral_power%30*gcd.max&!druid.no_cds&eclipse.in_any&astral_power>variable.convoke_asp&cooldown.ca_inc.remains>5\n# Use Starfall with Stellar Drift or t28 4pc and no Starlord, when no Starfall is up or to proc Pulsar when above 90 AsP(or the early Pulsar proc variable is true) or adpative swarm has 8+secs remaining or is in flight\nactions.st+=/starfall,if=(talent.stellar_drift.enabled||set_bonus.tier28_4pc)&!talent.starlord.enabled&buff.starfall.refreshable&!runeforge.timeworn_dreambinder&(buff.primordial_arcanic_pulsar.value>=250&!buff.ca_inc.up&(variable.asp_dump||buff.kindred_empowerment_energize.up||variable.proc_pulsar_early)||(covenant.necrolord&talent.stellar_drift.enabled&(dot.adaptive_swarm_damage.remains>8||action.adaptive_swarm_damage.in_flight)))&(cooldown.ca_inc.remains>10||cooldown.convoke_the_spirits.remains>10)\n# Dumps AsP before Convoke using the Convoke condition to check if Convoke is actually about to be cast\nactions.st+=/starsurge,if=variable.proc_pulsar_early\n# Use Moons when you are about to/are capping charges and make sure they are in an Eclipse still for HM/FM\nactions.st+=/new_moon,if=ap_check&(charges=2&recharge_time<5||charges=3)\nactions.st+=/half_moon,if=ap_check&(charges=2&recharge_time<5||charges=3)&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/full_moon,if=ap_check&(charges=2&recharge_time<5||charges=3)&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\n# Use Starsurge Oneth procs and dump AsP when CA/Inc, Empower Bond, the Venthyr buff is about to fall off or you'd cap AsP\nactions.st+=/starsurge,if=eclipse.in_any&(buff.oneths_clear_vision.up||buff.kindred_empowerment_energize.up||buff.ca_inc.up&(!covenant.kyrian||cooldown.empower_bond.remains>5||buff.ca_inc.remains<gcd.max*floor(astral_power%variable.ss_cost))&(!covenant.venthyr||buff.ravenous_frenzy.remains<gcd.max*ceil((astral_power+40*talent.fury_of_elune.enabled)%variable.ss_cost)+3*talent.new_moon.enabled&!runeforge.sinful_hysteria&buff.ravenous_frenzy.up||buff.ravenous_frenzy_sinful_hysteria.up||(buff.ravenous_frenzy.remains<action.starfire.execute_time&spell_haste<0.4||buff.ravenous_frenzy.remains<action.wrath.execute_time||variable.iqd_condition&cooldown.inscrutable_quantum_device.ready&equipped.inscrutable_quantum_device)&buff.ravenous_frenzy.up||!buff.ravenous_frenzy.up&!cooldown.ravenous_frenzy.ready)||variable.asp_dump||boss&fight_remains<gcd.max*ceil(astral_power%variable.ss_cost))\n# Try to make the best of Starlord by stacking it up quickly in any Eclipse but Pulsar isn't about to be procced\nactions.st+=/starsurge,if=talent.starlord.enabled&!runeforge.timeworn_dreambinder&(buff.starlord.up||astral_power>90)&buff.starlord.stack<3&(buff.eclipse_solar.up||buff.eclipse_lunar.up)&buff.primordial_arcanic_pulsar.value<270&(cooldown.ca_inc.remains>10||!variable.convoke_desync&covenant.night_fae)\n# Estimates how much AsP are gained per second. Only takes a snapshot for the current situation so wouldn't be accurate for larger timeframes\nactions.st+=/variable,name=aspPerSec,value=eclipse.in_lunar*8%action.starfire.execute_time+!eclipse.in_lunar*(6+talent.soul_of_the_forest.enabled*3)%action.wrath.execute_time+0.45%spell_haste+0.5*talent.natures_balance.enabled\n# Dump Starsurge in an Eclipse as soon as possible as long as you will end up with 80+ when entering the next Eclipse, don't let it proc Pulsar, don't overwrite an Oneth proc and pool before CA/Inc and Empower Bond\nactions.st+=/starsurge,if=!runeforge.timeworn_dreambinder&(buff.primordial_arcanic_pulsar.value<270||buff.primordial_arcanic_pulsar.value<250&talent.stellar_drift.enabled)&(eclipse.in_solar&astral_power+variable.aspPerSec*buff.eclipse_solar.remains+dot.fury_of_elune.ticks_remain*2.5>80||eclipse.in_lunar&astral_power+variable.aspPerSec*buff.eclipse_lunar.remains+dot.fury_of_elune.ticks_remain*2.5>90)&!buff.oneths_perception.up&!talent.starlord.enabled&(cooldown.ca_inc.remains>7||soulbind.thrill_seeker.enabled&buff.thrill_seeker.stack<33-(runeforge.sinful_hysteria*2)&fight_remains>100&fight_remains<200||druid.no_cds)&(!covenant.kyrian||cooldown.empower_bond.remains>2)\n# Use Moons in any Eclipse and save Half+Full Moon for CA/Inc and Kindred Empowerment. Also use NM and FM at the end of Frenzy and don't let Dreambinder fall off\nactions.st+=/new_moon,if=ap_check&variable.save_for_ca_inc&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/half_moon,if=ap_check&variable.save_for_ca_inc&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)&(buff.ca_inc.up||buff.primordial_arcanic_pulsar.value<=210)&(!covenant.venthyr||buff.ravenous_frenzy.remains<(5-2*runeforge.sinful_hysteria)&buff.ravenous_frenzy.up||!buff.ravenous_frenzy.up)&(!runeforge.timeworn_dreambinder||execute_time<buff.timeworn_dreambinder.remains||!buff.timeworn_dreambinder.up)\nactions.st+=/full_moon,if=ap_check&variable.save_for_ca_inc&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)&(buff.ca_inc.up||buff.primordial_arcanic_pulsar.value<=210)&(!covenant.kyrian||buff.kindred_empowerment_energize.up)&(!covenant.venthyr||buff.ravenous_frenzy.remains<5&buff.ravenous_frenzy.up&!runeforge.sinful_hysteria||!buff.ravenous_frenzy.up)&(!runeforge.timeworn_dreambinder||execute_time<buff.timeworn_dreambinder.remains||!buff.timeworn_dreambinder.up)\n# Use WoE on cd\nactions.st+=/warrior_of_elune\n# Use Starfire to proc Solar Eclipse, CA/Inc has less time than a Wrath execute left or only Lunar Eclipse is up. With T28 2pc enter a Solar Eclipse if Pulsar still has less than 210 stacks and CA/Inc and Convoke have more than 17s CD remaining. Use above 250% haste during Frenzy and 222% haste without Frenzy\nactions.st+=/starfire,if=eclipse.in_lunar&!buff.ravenous_frenzy.up||eclipse.solar_next||(eclipse.any_next||buff.ca_inc.remains<action.wrath.execute_time&buff.ca_inc.up)&(!set_bonus.tier28_2pc||runeforge.primordial_arcanic_pulsar&buff.primordial_arcanic_pulsar.value<210&cooldown.ca_inc.remains>17&(!covenant.night_fae||cooldown.convoke_the_spirits.remains>17)&(!race.troll||cooldown.berserking.remains>17))||eclipse.in_any&(buff.warrior_of_elune.up||spell_haste<0.45&(!covenant.venthyr||!buff.ravenous_frenzy.up)||covenant.venthyr&spell_haste<0.4)\n# Use Wrath otherwise which is in Solar Eclipse, CA/Inc or to proc Lunar Eclipse\nactions.st+=/wrath\n# Fallthru\nactions.st+=/run_action_list,name=fallthru",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220315,
					["spec"] = 262,
					["desc"] = "Elemental Shaman\nMarch 12, 2022\n\nChanges:\n- Incorporate settings.stack_buffer for Icefury, Stormkeeper.\n- Add Meteor and Eye of the Storm again.",
					["profile"] = "## Elemental Shaman\n## March 12, 2022\n\n## Changes:\n## - Incorporate settings.stack_buffer for Icefury, Stormkeeper.\n## - Add Meteor and Eye of the Storm again.\n\n# Executed every time the actor is available.\nactions.precombat=earth_elemental,if=!talent.primal_elementalist.enabled\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.precombat+=/fire_elemental\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<3\n# Because LvB has a travel time, the addon places *this entry* on CD for 3 seconds to avoid double-LvB on pull.\nactions.precombat+=/lava_burst,line_cd=3,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3||buff.stormkeeper.up\nactions.precombat+=/chain_lightning,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning>=3&!buff.stormkeeper.up\nactions.precombat+=/potion\n\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/spiritwalkers_grace,moving=1\nactions+=/potion\nactions+=/use_items\nactions+=/flame_shock,if=(!talent.elemental_blast.enabled)&!ticking&!pet.storm_elemental.active&(spell_targets.chain_lightning<3||talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped)\nactions+=/primordial_wave,cycle_targets=1,if=!buff.primordial_wave.up&(!pet.storm_elemental.active||spell_targets.chain_lightning<3&buff.wind_gust.stack<20||soulbind.lead_by_example.enabled||runeforge.splintered_elements.equipped)&(spell_targets.chain_lightning<5||talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped||soulbind.lead_by_example.enabled||runeforge.splintered_elements.equipped)&!buff.splintered_elements.up\nactions+=/flame_shock,if=!ticking&(!pet.storm_elemental.active||spell_targets.chain_lightning<3&buff.wind_gust.stack<20)&(spell_targets.chain_lightning<3||talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped)\nactions+=/fire_elemental\nactions+=/meteor\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/bag_of_tricks,if=!talent.ascendance.enabled||!buff.ascendance.up\nactions+=/vesper_totem\nactions+=/fae_transfusion,if=covenant.night_fae&!runeforge.seeds_of_rampant_growth.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up)&spell_targets.chain_lightning<3\nactions+=/fae_transfusion,if=covenant.night_fae&runeforge.seeds_of_rampant_growth.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||spell_targets.chain_lightning>=3)&(cooldown.fire_elemental.remains>20||cooldown.storm_elemental.remains>20)\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target,strict=1,if=!talent.storm_elemental.enabled&active_enemies<=2\nactions+=/run_action_list,name=se_single_target,strict=1,if=talent.storm_elemental.enabled&active_enemies<=2\n\nactions.aoe=storm_elemental,if=!pet.storm_elemental.active\nactions.aoe+=/eye_of_the_storm,if=buff.call_lightning.remains>=10\nactions.aoe+=/earthquake,if=buff.echoing_shock.up\nactions.aoe+=/chain_harvest\nactions.aoe+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&((active_dot.flame_shock<2&active_enemies<=3&cooldown.primordial_wave.remains<16&covenant.necrolord&!pet.storm_elemental.active||active_dot.flame_shock<1&active_enemies>=4&!pet.storm_elemental.active&talent.master_of_the_elements.enabled)||(runeforge.skybreakers_fiery_demise.equipped&!pet.storm_elemental.active)||(runeforge.splintered_elements.equipped&(active_dot.flame_shock<3&!runeforge.echoes_of_great_sundering.equipped||active_dot.flame_shock<4)&(cooldown.primordial_wave.remains<16||buff.primordial_wave.up)))\nactions.aoe+=/flame_shock,if=!active_dot.flame_shock&!pet.storm_elemental.active&(talent.master_of_the_elements.enabled||runeforge.skybreakers_fiery_demise.equipped)||(runeforge.splintered_elements.equipped&!ticking&buff.primordial_wave.up)\nactions.aoe+=/echoing_shock,if=talent.echoing_shock.enabled&maelstrom>=60&(runeforge.echoes_of_great_sundering.equipped&buff.echoes_of_great_sundering.up||!runeforge.echoes_of_great_sundering.equipped)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(!pet.storm_elemental.active)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.aoe+=/chain_lightning,if=spell_targets.chain_lightning<4&buff.master_of_the_elements.up&maelstrom<50\nactions.aoe+=/earth_shock,if=runeforge.echoes_of_great_sundering.equipped&!buff.echoes_of_great_sundering.up\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&spell_targets.chain_lightning<4&(!pet.storm_elemental.active)&(buff.lava_surge.up&!buff.master_of_the_elements.up&talent.master_of_the_elements.enabled)\nactions.aoe+=/earthquake,if=spell_targets.chain_lightning>=2&!runeforge.echoes_of_great_sundering.equipped&(talent.master_of_the_elements.enabled&maelstrom>=50&!buff.master_of_the_elements.up)\nactions.aoe+=/lava_burst,cycle_targets=1,if=covenant.necrolord&runeforge.echoes_of_great_sundering.equipped&set_bonus.tier28_4pc&buff.lava_surge.up&!buff.primordial_wave.up\nactions.aoe+=/lava_burst,cycle_targets=1,if=buff.lava_surge.up&buff.primordial_wave.up&(buff.primordial_wave.remains<3*gcd||active_dot.flame_shock=spell_targets.chain_lightning||active_dot.flame_shock=3&!runeforge.echoes_of_great_sundering.equipped||active_dot.flame_shock=4)\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&spell_targets.chain_lightning<4&runeforge.skybreakers_fiery_demise.equipped&buff.lava_surge.up&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&((spell_targets.chain_lightning<4&runeforge.skybreakers_fiery_demise.equipped&talent.master_of_the_elements.enabled)||(talent.master_of_the_elements.enabled&maelstrom>=50&!buff.master_of_the_elements.up&(!runeforge.echoes_of_great_sundering.equipped||buff.echoes_of_great_sundering.up)&!runeforge.skybreakers_fiery_demise.equipped))\nactions.aoe+=/lava_burst,if=dot.flame_shock.remains&spell_targets.chain_lightning=4&runeforge.skybreakers_fiery_demise.equipped&buff.lava_surge.up&talent.master_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50\nactions.aoe+=/earthquake,if=spell_targets.chain_lightning>=2\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\nactions.aoe+=/lava_burst,cycle_targets=1,if=set_bonus.tier28_4pc&buff.lava_surge.up&!buff.primordial_wave.up\nactions.aoe+=/lava_burst,if=set_bonus.tier28_4pc&buff.lava_surge.up&!buff.primordial_wave.up\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!pet.storm_elemental.active)&dot.flame_shock.ticking\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<5&(!pet.storm_elemental.active)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=buff.lava_surge.up&cooldown_react\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\nactions.se_single_target=storm_elemental,if=!pet.storm_elemental.active\nactions.se_single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.se_single_target+=/primordial_wave,cycle_targets=1,if=covenant.necrolord&!buff.primordial_wave.up&!buff.splintered_elements.up\nactions.se_single_target+=/eye_of_the_storm,if=buff.call_lightning.remains>=10\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack&buff.wind_gust.stack<18\nactions.se_single_target+=/flame_shock,cycle_targets=1,if=refreshable\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\nactions.se_single_target+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.se_single_target+=/stormkeeper,if=talent.stormkeeper.enabled\nactions.se_single_target+=/echoing_shock,if=talent.echoing_shock.enabled&cooldown.lava_burst.remains<=gcd&spell_targets.chain_lightning<2||maelstrom>=60&spell_targets.chain_lightning>=2&(!runeforge.echoes_of_great_sundering.equipped||buff.echoes_of_great_sundering.up)\nactions.se_single_target+=/lava_burst,if=(buff.wind_gust.stack<18&!buff.bloodlust.up)||buff.lava_surge.up\nactions.se_single_target+=/lava_burst,if=talent.echoing_shock.enabled&buff.echoing_shock.up&spell_targets.chain_lightning<2\nactions.se_single_target+=/earthquake,if=talent.echoing_shock.enabled&buff.echoing_shock.up&spell_targets.chain_lightning>=2\nactions.se_single_target+=/lightning_bolt,if=buff.stormkeeper.up\nactions.se_single_target+=/earthquake,if=buff.echoes_of_great_sundering.up\nactions.se_single_target+=/earth_shock,if=spell_targets.chain_lightning<2&maelstrom>=60&(buff.wind_gust.stack<20||maelstrom>90)||(runeforge.echoes_of_great_sundering.equipped&!buff.echoes_of_great_sundering.up)||runeforge.windspeakers_lava_resurgence.equipped\nactions.se_single_target+=/earthquake,if=(spell_targets.chain_lightning>1)&(!dot.flame_shock.refreshable)\nactions.se_single_target+=/chain_lightning,if=active_enemies>1&pet.storm_elemental.active&buff.bloodlust.up\nactions.se_single_target+=/lightning_bolt,if=pet.storm_elemental.active&buff.bloodlust.up\nactions.se_single_target+=/lava_burst,if=buff.ascendance.up\nactions.se_single_target+=/lava_burst,if=cooldown_react\nactions.se_single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\nactions.se_single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.se_single_target+=/chain_harvest\nactions.se_single_target+=/fleshcraft,if=soulbind.volatile_solvent&!buff.volatile_solvent_humanoid.up,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\nactions.se_single_target+=/static_discharge,if=talent.static_discharge.enabled\nactions.se_single_target+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(!pet.storm_elemental.active)\nactions.se_single_target+=/chain_lightning,if=active_enemies>1&(spell_targets.chain_lightning>1||spell_targets.lava_beam>1)\nactions.se_single_target+=/lightning_bolt\nactions.se_single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.se_single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.se_single_target+=/frost_shock,moving=1\n\nactions.single_target=lightning_bolt,if=(buff.stormkeeper.remains<settings.stack_buffer*gcd*buff.stormkeeper.stack)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack\nactions.single_target+=/flame_shock,cycle_targets=1,if=(!ticking||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4)&(buff.lava_surge.up||!buff.bloodlust.up)\nactions.single_target+=/flame_shock,cycle_targets=1,if=buff.primordial_wave.up&refreshable\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&(time>=60||buff.bloodlust.up)&(cooldown.lava_burst.remains>0)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.single_target+=/lava_burst,if=buff.lava_surge.up&(runeforge.windspeakers_lava_resurgence.equipped||!buff.master_of_the_elements.up&talent.master_of_the_elements.enabled)\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(maelstrom<70)&!buff.ascendance.up\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(maelstrom<44)\nactions.single_target+=/echoing_shock,if=talent.echoing_shock.enabled&cooldown.lava_burst.remains<=gcd\nactions.single_target+=/lava_burst,if=talent.echoing_shock.enabled&buff.echoing_shock.up\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.single_target+=/earthquake,if=buff.echoes_of_great_sundering.up&talent.master_of_the_elements.enabled&buff.master_of_the_elements.up\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&buff.master_of_the_elements.up&maelstrom<60\nactions.single_target+=/earthquake,if=buff.echoes_of_great_sundering.up&(talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92||spell_targets.chain_lightning<2&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled||cooldown.elemental_blast.remains<=settings.stack_buffer*gcd*2)\nactions.single_target+=/earthquake,if=spell_targets.chain_lightning>1&!dot.flame_shock.refreshable&!runeforge.echoes_of_great_sundering.equipped&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92)\nactions.single_target+=/earth_shock,if=runeforge.windspeakers_lava_resurgence.equipped&buff.ascendance.up\nactions.single_target+=/lava_burst,if=cooldown_react&(!buff.master_of_the_elements.up&buff.icefury.up)\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled&!buff.icefury.up\nactions.single_target+=/lava_burst,if=talent.echo_of_the_elements.enabled&!buff.master_of_the_elements.up&maelstrom>=50&!buff.echoes_of_great_sundering.up\nactions.single_target+=/earth_shock,if=(runeforge.echoes_of_great_sundering.equipped||spell_targets.chain_lightning<2)&(talent.master_of_the_elements.enabled&!buff.echoes_of_great_sundering.up&(buff.master_of_the_elements.up||maelstrom>=92||spell_targets.chain_lightning<2&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled||cooldown.elemental_blast.remains<=settings.stack_buffer*gcd*2)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>35&cooldown.lava_burst.remains<=0)\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/lava_burst\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable\nactions.single_target+=/frost_shock,if=runeforge.elemental_equilibrium.equipped&!buff.elemental_equilibrium_debuff.up&!talent.elemental_blast.enabled&!talent.echoing_shock.enabled\nactions.single_target+=/fleshcraft,if=soulbind.volatile_solvent&!buff.volatile_solvent_humanoid.up,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\nactions.single_target+=/chain_harvest\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.single_target+=/static_discharge,if=talent.static_discharge.enabled\nactions.single_target+=/earth_elemental,if=!talent.primal_elementalist.enabled||!pet.fire_elemental.active\nactions.single_target+=/chain_lightning,if=spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<settings.stack_buffer*gcd*buff.icefury.stack",
					["version"] = 20220315,
					["warnings"] = "WARNING:  The import for 'single_target' required some automated changes.\nLine 29: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'se_single_target' required some automated changes.\nLine 25: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nImported 5 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.stormkeeper.remains < settings.stack_buffer * gcd * buff.stormkeeper.stack )",
								["action"] = "lightning_bolt",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "( ! ticking || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 ) & ( buff.lava_surge.up || ! buff.bloodlust.up )",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "buff.primordial_wave.up & refreshable",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( time >= 60 || buff.bloodlust.up ) & ( cooldown.lava_burst.remains > 0 ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & ( runeforge.windspeakers_lava_resurgence.equipped || ! buff.master_of_the_elements.up & talent.master_of_the_elements.enabled )",
								["action"] = "lava_burst",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( maelstrom < 70 ) & ! buff.ascendance.up",
								["action"] = "elemental_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( maelstrom < 44 )",
								["action"] = "stormkeeper",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & cooldown.lava_burst.remains <= gcd",
								["action"] = "echoing_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up & talent.master_of_the_elements.enabled & buff.master_of_the_elements.up",
								["action"] = "earthquake",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & buff.master_of_the_elements.up & maelstrom < 60",
								["action"] = "lightning_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up & ( talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 || spell_targets.chain_lightning < 2 & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled || cooldown.elemental_blast.remains <= settings.stack_buffer * gcd * 2 )",
								["action"] = "earthquake",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1 & ! dot.flame_shock.refreshable & ! runeforge.echoes_of_great_sundering.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 )",
								["action"] = "earthquake",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.windspeakers_lava_resurgence.equipped & buff.ascendance.up",
								["action"] = "earth_shock",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ( ! buff.master_of_the_elements.up & buff.icefury.up )",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled & ! buff.icefury.up",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.echo_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50 & ! buff.echoes_of_great_sundering.up",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( runeforge.echoes_of_great_sundering.equipped || spell_targets.chain_lightning < 2 ) & ( talent.master_of_the_elements.enabled & ! buff.echoes_of_great_sundering.up & ( buff.master_of_the_elements.up || maelstrom >= 92 || spell_targets.chain_lightning < 2 & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled || cooldown.elemental_blast.remains <= settings.stack_buffer * gcd * 2 )",
								["action"] = "earth_shock",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 35 & cooldown.lava_burst.remains <= 0 )",
								["action"] = "icefury",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [25]
							{
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.elemental_equilibrium.equipped & ! buff.elemental_equilibrium_debuff.up & ! talent.elemental_blast.enabled & ! talent.echoing_shock.enabled",
								["action"] = "frost_shock",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled & ! buff.volatile_solvent_humanoid.up",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [29]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_discharge.enabled",
								["action"] = "static_discharge",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || ! pet.fire_elemental.active",
								["action"] = "earth_elemental",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [34]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [35]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["enabled"] = true,
							}, -- [36]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = 1,
							}, -- [37]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [39]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Interrupt of casts.",
								["action"] = "wind_shear",
							}, -- [1]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "spiritwalkers_grace",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.elemental_blast.enabled ) & ! ticking & ! pet.storm_elemental.active & ( spell_targets.chain_lightning < 3 || talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped )",
								["action"] = "flame_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["criteria"] = "! buff.primordial_wave.up & ( ! pet.storm_elemental.active || spell_targets.chain_lightning < 3 & buff.wind_gust.stack < 20 || soulbind.lead_by_example.enabled || runeforge.splintered_elements.equipped ) & ( spell_targets.chain_lightning < 5 || talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped || soulbind.lead_by_example.enabled || runeforge.splintered_elements.equipped ) & ! buff.splintered_elements.up",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & ( ! pet.storm_elemental.active || spell_targets.chain_lightning < 3 & buff.wind_gust.stack < 20 ) & ( spell_targets.chain_lightning < 3 || talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped )",
								["action"] = "flame_shock",
							}, -- [7]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || ! buff.ascendance.up",
								["action"] = "bag_of_tricks",
							}, -- [14]
							{
								["action"] = "vesper_totem",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & ! runeforge.seeds_of_rampant_growth.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up ) & spell_targets.chain_lightning < 3",
								["action"] = "fae_transfusion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & runeforge.seeds_of_rampant_growth.equipped & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || spell_targets.chain_lightning >= 3 ) & ( cooldown.fire_elemental.remains > 20 || cooldown.storm_elemental.remains > 20 )",
								["action"] = "fae_transfusion",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["list_name"] = "aoe",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.storm_elemental.enabled & active_enemies <= 2",
								["list_name"] = "single_target",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "talent.storm_elemental.enabled & active_enemies <= 2",
								["list_name"] = "se_single_target",
							}, -- [20]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled",
								["action"] = "earth_elemental",
								["description"] = "Executed every time the actor is available.",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
								["description"] = "Use Stormkeeper precombat unless some adds will spawn soon.",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [3]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 3",
								["action"] = "elemental_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["line_cd"] = "3",
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning < 3 || buff.stormkeeper.up",
								["description"] = "Because LvB has a travel time, the addon places *this entry* on CD for 3 seconds to avoid double-LvB on pull.",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning >= 3 & ! buff.stormkeeper.up",
								["action"] = "chain_lightning",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "! pet.storm_elemental.active",
								["action"] = "storm_elemental",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_lightning.remains >= 10",
								["action"] = "eye_of_the_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoing_shock.up",
								["action"] = "earthquake",
							}, -- [3]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ( ( active_dot.flame_shock < 2 & active_enemies <= 3 & cooldown.primordial_wave.remains < 16 & covenant.necrolord & ! pet.storm_elemental.active || active_dot.flame_shock < 1 & active_enemies >= 4 & ! pet.storm_elemental.active & talent.master_of_the_elements.enabled ) || ( runeforge.skybreakers_fiery_demise.equipped & ! pet.storm_elemental.active ) || ( runeforge.splintered_elements.equipped & ( active_dot.flame_shock < 3 & ! runeforge.echoes_of_great_sundering.equipped || active_dot.flame_shock < 4 ) & ( cooldown.primordial_wave.remains < 16 || buff.primordial_wave.up ) ) )",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! active_dot.flame_shock & ! pet.storm_elemental.active & ( talent.master_of_the_elements.enabled || runeforge.skybreakers_fiery_demise.equipped ) || ( runeforge.splintered_elements.equipped & ! ticking & buff.primordial_wave.up )",
								["action"] = "flame_shock",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & maelstrom >= 60 & ( runeforge.echoes_of_great_sundering.equipped & buff.echoes_of_great_sundering.up || ! runeforge.echoes_of_great_sundering.equipped )",
								["action"] = "echoing_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( ! pet.storm_elemental.active ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.master_of_the_elements.up & maelstrom < 50",
								["action"] = "chain_lightning",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.echoes_of_great_sundering.equipped & ! buff.echoes_of_great_sundering.up",
								["action"] = "earth_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & spell_targets.chain_lightning < 4 & ( ! pet.storm_elemental.active ) & ( buff.lava_surge.up & ! buff.master_of_the_elements.up & talent.master_of_the_elements.enabled )",
								["action"] = "lava_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning >= 2 & ! runeforge.echoes_of_great_sundering.equipped & ( talent.master_of_the_elements.enabled & maelstrom >= 50 & ! buff.master_of_the_elements.up )",
								["action"] = "earthquake",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["criteria"] = "covenant.necrolord & runeforge.echoes_of_great_sundering.equipped & set_bonus.tier28_4pc & buff.lava_surge.up & ! buff.primordial_wave.up",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["criteria"] = "buff.lava_surge.up & buff.primordial_wave.up & ( buff.primordial_wave.remains < 3 * gcd || active_dot.flame_shock = spell_targets.chain_lightning || active_dot.flame_shock = 3 & ! runeforge.echoes_of_great_sundering.equipped || active_dot.flame_shock = 4 )",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & spell_targets.chain_lightning < 4 & runeforge.skybreakers_fiery_demise.equipped & buff.lava_surge.up & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & ( ( spell_targets.chain_lightning < 4 & runeforge.skybreakers_fiery_demise.equipped & talent.master_of_the_elements.enabled ) || ( talent.master_of_the_elements.enabled & maelstrom >= 50 & ! buff.master_of_the_elements.up & ( ! runeforge.echoes_of_great_sundering.equipped || buff.echoes_of_great_sundering.up ) & ! runeforge.skybreakers_fiery_demise.equipped ) )",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.remains & spell_targets.chain_lightning = 4 & runeforge.skybreakers_fiery_demise.equipped & buff.lava_surge.up & talent.master_of_the_elements.enabled & ! buff.master_of_the_elements.up & maelstrom >= 50",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning >= 2",
								["action"] = "earthquake",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "lava_burst",
								["criteria"] = "set_bonus.tier28_4pc & buff.lava_surge.up & ! buff.primordial_wave.up",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier28_4pc & buff.lava_surge.up & ! buff.primordial_wave.up",
								["action"] = "lava_burst",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! pet.storm_elemental.active ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 5 & ( ! pet.storm_elemental.active )",
								["action"] = "elemental_blast",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [26]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [27]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "lava_burst",
								["criteria"] = "buff.lava_surge.up & cooldown_react",
								["moving"] = 1,
							}, -- [28]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["enabled"] = true,
							}, -- [29]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [30]
						},
						["se_single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! pet.storm_elemental.active",
								["action"] = "storm_elemental",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "primordial_wave",
								["criteria"] = "covenant.necrolord & ! buff.primordial_wave.up & ! buff.splintered_elements.up",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.call_lightning.remains >= 10",
								["action"] = "eye_of_the_storm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < settings.stack_buffer * gcd * buff.icefury.stack & buff.wind_gust.stack < 18",
								["action"] = "frost_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & cooldown.lava_burst.remains <= gcd & spell_targets.chain_lightning < 2 || maelstrom >= 60 & spell_targets.chain_lightning >= 2 & ( ! runeforge.echoes_of_great_sundering.equipped || buff.echoes_of_great_sundering.up )",
								["action"] = "echoing_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.wind_gust.stack < 18 & ! buff.bloodlust.up ) || buff.lava_surge.up",
								["action"] = "lava_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up & spell_targets.chain_lightning < 2",
								["action"] = "lava_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.echoing_shock.enabled & buff.echoing_shock.up & spell_targets.chain_lightning >= 2",
								["action"] = "earthquake",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up",
								["action"] = "lightning_bolt",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_great_sundering.up",
								["action"] = "earthquake",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 2 & maelstrom >= 60 & ( buff.wind_gust.stack < 20 || maelstrom > 90 ) || ( runeforge.echoes_of_great_sundering.equipped & ! buff.echoes_of_great_sundering.up ) || runeforge.windspeakers_lava_resurgence.equipped",
								["action"] = "earth_shock",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.chain_lightning > 1 ) & ( ! dot.flame_shock.refreshable )",
								["action"] = "earthquake",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & pet.storm_elemental.active & buff.bloodlust.up",
								["action"] = "chain_lightning",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "pet.storm_elemental.active & buff.bloodlust.up",
								["action"] = "lightning_bolt",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [23]
							{
								["action"] = "chain_harvest",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.volatile_solvent.enabled & ! buff.volatile_solvent_humanoid.up",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "talent.static_discharge.enabled",
								["action"] = "static_discharge",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || talent.primal_elementalist.enabled & ( ! pet.storm_elemental.active )",
								["action"] = "earth_elemental",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( spell_targets.chain_lightning > 1 || spell_targets.lava_beam > 1 )",
								["action"] = "chain_lightning",
							}, -- [28]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [29]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["enable_moving"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = 1,
							}, -- [31]
							{
								["moving"] = 1,
								["enable_moving"] = true,
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [32]
						},
					},
				},
				["Feral"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220227,
					["author"] = "SimC",
					["desc"] = "Feral Druid\nFebruary 27, 2022\n\nChanges:\n- druid.owlweave_cat=1 checks to druid.owlweave_cat.\n- Convert BT pool_resource to wait expression (x2).\n- Add interruptible Fleshcraft if you have nothing else to do.\n- Don't hold Convoke for Rip unless you'll really Rip.",
					["lists"] = {
						["filler"] = {
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "variable.filler = 1 & refreshable & dot.rake.pmultiplier <= 1.2 * persistent_multiplier",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.filler = 2",
								["action"] = "rake",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.filler = 3",
								["action"] = "lunar_inspiration",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.filler = 4",
								["action"] = "swipe_cat",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_ambush.down",
								["action"] = "shred",
							}, -- [5]
						},
						["finisher"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < 3",
								["action"] = "savage_roar",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( druid.primal_wrath.ticks_gained_on_refresh > 3 * ( spell_targets.primal_wrath + 1 ) & spell_targets.primal_wrath > 1 ) || spell_targets.primal_wrath > ( 3 + 1 * talent.sabertooth.enabled )",
								["action"] = "primal_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "refreshable & druid.rip.ticks_gained_on_refresh > variable.rip_ticks & ( ( buff.tigers_fury.up || ! ticking ) & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) || ! talent.sabertooth.enabled ) & ( spell_targets.primal_wrath = 1 || ! talent.primal_wrath.enabled ) & ( active_dot.rip = 0 || ticking & active_dot.rip = 1 || ! runeforge.draught_of_deep_focus.enabled || ! talent.sabertooth.enabled )",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < ( combo_points + 1 ) * 6 * 0.3",
								["action"] = "savage_roar",
							}, -- [5]
							{
								["max_energy"] = 1,
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "buff.bs_inc.up & talent.soul_of_the_forest.enabled || cooldown.convoke_the_spirits.remains < 1 & covenant.night_fae",
								["cycle_targets"] = 1,
							}, -- [7]
						},
						["balance"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.down & buff.eclipse_lunar.down & ( refreshable || ( active_enemies > 1 & active_dot.sunfire < active_enemies ) )",
								["action"] = "sunfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.remains > 10 + cast_time || buff.eclipse_lunar.remains > 10 + cast_time",
								["action"] = "starsurge",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_lunar.remains > cast_time || buff.eclipse_solar.down & solar_eclipse > 0 || buff.eclipse_solar.down & lunar_eclipse - action.wrath.in_flight < 1",
								["action"] = "starfire",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.remains > cast_time || buff.eclipse_lunar.down & lunar_eclipse - action.wrath.in_flight > 0",
								["action"] = "wrath",
							}, -- [4]
						},
						["setup"] = {
							{
								["enabled"] = true,
								["criteria"] = "covenant.necrolord & spell_targets.thrash_cat < 4 & combo_points < 5 & ! ticking & ! buff.bs_inc.up",
								["action"] = "lunar_inspiration",
							}, -- [1]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.feral_frenzy.enabled & cooldown.feral_frenzy.up & ! buff.savage_roar.up & combo_points > 1 & dot.rake.ticking & ( dot.lunar_inspiration.ticking || ! talent.lunar_inspiration.enabled )",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["sec"] = "( ( 115 - 23 * buff.incarnation_king_of_the_jungle.up ) - ( energy.current + 3.5 * energy.regen + ( 40 * buff.clearcasting.up ) ) ) / energy.regen",
								["action"] = "wait",
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & active_bt_triggers = 0",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & ( combo_points < 5 || spell_targets.thrash_cat = 1 )",
								["action"] = "call_action_list",
								["list_name"] = "bloodtalons",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points > 3 & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled )",
								["list_name"] = "finisher",
							}, -- [7]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "buff.moonkin_form.up & ! druid.owlweave_cat",
								["list_name"] = "balance",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "druid.owlweave_cat",
								["list_name"] = "owlweave",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Prowl whenever possible",
								["action"] = "prowl",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.down",
								["action"] = "tigers_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.down",
								["action"] = "cat_form",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "One shot stealth",
								["strict"] = 1,
								["criteria"] = "buff.shadowmeld.up || buff.prowl.up",
								["list_name"] = "stealth",
							}, -- [6]
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_dot.rip = 0",
								["list_name"] = "setup",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Necrolord: Cast 3 or 4 combo point rips on single target outside of berserk or during berserk if feral frenzy is up OR apply a 5cp Rip when TF is up and will soon fall off.",
								["criteria"] = "covenant.necrolord & ( ! talent.bloodtalons.enabled || buff.bloodtalons.up ) & spell_targets.thrash_cat = 1 & ( combo_points > 2 & refreshable & druid.rip.ticks_gained_on_refresh > variable.rip_ticks & ( ! buff.bs_inc.up || cooldown.bs_inc.up || ( buff.bs_inc.up & cooldown.feral_frenzy.up ) ) || combo_points = 5 & buff.tigers_fury.up & buff.tigers_fury.remains < 4 & druid.rip.ticks_gained_on_refresh > 5 )",
								["action"] = "rip",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points >= ( 5 - variable.fourcp_bite )",
								["list_name"] = "finisher",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "druid.primal_wrath.ticks_gained_on_refresh >= 20 & combo_points >= 2",
								["action"] = "primal_wrath",
								["line_cd"] = "5",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Multi-gcd stealth",
								["strict"] = 1,
								["criteria"] = "buff.bs_inc.up",
								["list_name"] = "stealth",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "wait",
								["sec"] = "( ( 115 - 23 * buff.incarnation_king_of_the_jungle.up ) - ( energy.current + 3.5 * energy.regen + ( 40 * buff.clearcasting.up ) ) ) / energy.regen",
								["description"] = "The most expensive BT cycle (Thresh Shred Swipe cost 115 energy, make sure we can make that in 4 globals)",
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & active_bt_triggers = 0",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down",
								["action"] = "run_action_list",
								["list_name"] = "bloodtalons",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "buff.apex_predators_craving.up",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( refreshable || persistent_multiplier > dot.rake.pmultiplier ) & druid.rake.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "( refreshable || persistent_multiplier > dot.lunar_inspiration.pmultiplier ) & druid.lunar_inspiration.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & druid.thrash_cat.ticks_gained_on_refresh > ( 4 + spell_targets.thrash_cat * 4 ) / ( 1 + mastery_value ) - conduit.taste_for_blood.enabled - covenant.necrolord & ( ! buff.bs_inc.up || spell_targets.thrash_cat > 1 )",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > ( 1 + max_charges - charges_fractional ) * recharge_time ) & ( spell_targets.brutal_slash * action.brutal_slash.damage / action.brutal_slash.cost ) > ( action.shred.damage / action.shred.cost )",
								["action"] = "brutal_slash",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 + buff.bs_inc.up * 2",
								["action"] = "swipe_cat",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up & ( buff.sudden_ambush.down & buff.shadowmeld.down || buff.bs_inc.up )",
								["action"] = "shred",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [27]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "fourcp_bite",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1",
								["description"] = "Shred = 0, Non-snapshot Rake = 1, Snapshot Rake = 2, LI = 3, Swipe = 4",
								["var_name"] = "filler",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "7",
								["var_name"] = "rip_ticks",
							}, -- [3]
							{
								["action"] = "kindred_spirits",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "prowl",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "cat_form",
							}, -- [8]
						},
						["bloodtalons"] = {
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( ! ticking || ( 1.2 * persistent_multiplier >= dot.rake.pmultiplier ) || ( active_bt_triggers = 2 & refreshable ) ) & buff.bt_rake.down",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable & buff.bt_moonfire.down",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down & druid.thrash_cat.ticks_gained_on_refresh > ( 4 + spell_targets.thrash_cat * 4 ) / ( 1 + mastery_value ) - conduit.taste_for_blood.enabled",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down & spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [8]
						},
						["stealth"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["criteria"] = "( dot.rake.pmultiplier < 1.5 || refreshable ) & druid.rake.ticks_gained_on_refresh > 2 || ( persistent_multiplier > dot.rake.pmultiplier & buff.bs_inc.up & spell_targets.thrash_cat < 3 & covenant.necrolord ) || buff.bs_inc.remains < 1",
								["description"] = "Rake needs roughly 50% of its length at a minimum to surpass shreds dpe",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.thrash_cat < 3 & refreshable & druid.lunar_inspiration.ticks_gained_on_refresh > 5 & ( combo_points = 4 || dot.lunar_inspiration.remains < 5 || ! dot.lunar_inspiration.ticking )",
								["action"] = "lunar_inspiration",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Brutal Slash is better than stealth Shred at 3 targets",
								["criteria"] = "spell_targets.brutal_slash > 2",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 4 & spell_targets.thrash_cat < 5",
								["action"] = "shred",
							}, -- [6]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "( ( ! dot.adaptive_swarm_damage.ticking || dot.adaptive_swarm_damage.remains < 2 ) & ( dot.adaptive_swarm_damage.stack < 3 || ! dot.adaptive_swarm_heal.stack > 1 ) & ! action.adaptive_swarm_heal.in_flight & ! action.adaptive_swarm_damage.in_flight & ! action.adaptive_swarm.in_flight ) & target.time_to_die > 5 || active_enemies > 2 & ! dot.adaptive_swarm_damage.ticking & energy < 35 & target.time_to_die > 5",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["sync"] = "feral_frenzy",
								["description"] = "Cast Tiger's Fury before (or immediatly after) casting Feral Frenzy if Berserk is NOT on cooldown.",
								["criteria"] = "cooldown.bs_inc.up",
								["action"] = "tigers_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "feral_frenzy",
								["criteria"] = "combo_points < 3 & target.time_to_die > 7 & ( buff.savage_roar.up || ! talent.savage_roar.enabled ) & ( ! cooldown.tigers_fury.up || cooldown.bs_inc.up ) || boss & fight_remains < 8 & fight_remains > 2",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "TODO: Need to sync with with ravenous frenzy when we run frenzyband, or atleast check if its worth it",
								["criteria"] = "combo_points >= 3",
								["action"] = "berserk",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 3",
								["action"] = "incarnation",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Try and not waste TF energy, but also just use it for zerk and incarns",
								["criteria"] = "energy.deficit > 40 || buff.bs_inc.up || ( talent.predator.enabled & shortest_ttd < 3 )",
								["action"] = "tigers_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Might be wrong to use Smeld on Rake in very very niche situations, but very rarely",
								["criteria"] = "buff.tigers_fury.up & buff.bs_inc.down & combo_points < 4 & buff.sudden_ambush.down & dot.rake.pmultiplier < 1.6 & energy > 40 & druid.rake.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2 & target.time_to_die > 5",
								["action"] = "shadowmeld",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up || buff.bs_inc.up",
								["action"] = "berserking",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || boss & fight_remains < cooldown.bs_inc.remains || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || fight_remains < 21",
								["action"] = "ravenous_frenzy",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "TODO: Check moonkin hotw and stuff like this, and maybe better combat remain resync",
								["criteria"] = "( dot.rip.remains > 4 & combo_points < 5 & ( dot.rake.ticking || spell_targets.thrash_cat > 1 ) & energy.deficit >= 20 ) || boss & fight_remains < 5",
								["action"] = "convoke_the_spirits",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "Maybe there should be more conditions on the conduit",
								["criteria"] = "buff.tigers_fury.up || ( conduit.deep_allegiance.enabled )",
								["action"] = "empower_bond",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "jotungeirr_destinys_call",
								["description"] = "Give priority to on-use weapon",
								["criteria"] = "equipped.jotungeirr_destinys_call",
								["action"] = "jotungeirr_destinys_call",
							}, -- [13]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [14]
						},
						["owlweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.heart_of_the_wild.up",
								["action"] = "starsurge",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["line_cd"] = "4*gcd",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "buff.moonkin_form.up & spell_targets.thrash_cat < 2 & ! talent.lunar_inspiration.enabled",
								["line_cd"] = "4*gcd",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "energy < 30 & dot.rip.remains > 4.5 & ( cooldown.tigers_fury.remains >= 6.5 || runeforge.cateye_curio.enabled ) & buff.clearcasting.stack < 1 & ! buff.apex_predators_craving.up & ! buff.bloodlust.up & ! buff.bs_inc.up & ( cooldown.convoke_the_spirits.remains > 6.5 || ! covenant.night_fae ) & ( ! covenant.necrolord || cooldown.adaptive_swarm.remains >= 5 || dot.adaptive_swarm_damage.remains > 7 )",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "energy < 30 & dot.rip.remains > 4.5 & ( cooldown.tigers_fury.remains >= 4.5 || runeforge.cateye_curio.enabled ) & buff.clearcasting.stack < 1 & ! buff.apex_predators_craving.up & ! buff.bloodlust.up & ( ! buff.bs_inc.up || covenant.necrolord & talent.savage_roar.enabled & buff.bs_inc.remains > 6 ) & ( cooldown.convoke_the_spirits.remains > 6.5 || ! covenant.night_fae ) & ( ! covenant.necrolord || cooldown.adaptive_swarm.remains >= 5 || dot.adaptive_swarm_damage.remains > 7 ) & fight_remains > 7",
								["action"] = "moonkin_form",
							}, -- [5]
						},
					},
					["version"] = 20220227,
					["warnings"] = "WARNING:  The import for 'finisher' required some automated changes.\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 21: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 23: Converted SimC syntax % to Lua division operator (/) (2x).\n\nWARNING:  The import for 'bloodtalons' required some automated changes.\nLine 3: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'owlweave' required some automated changes.\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\n\nImported 10 action lists.\n",
					["spec"] = 103,
					["profile"] = "## Feral Druid\n## February 27, 2022\n\n## Changes:\n## - druid.owlweave_cat=1 checks to druid.owlweave_cat.\n## - Convert BT pool_resource to wait expression (x2).\n## - Add interruptible Fleshcraft if you have nothing else to do.\n## - Don't hold Convoke for Rip unless you'll really Rip.\n\nactions.precombat+=/variable,name=fourcp_bite,value=0\n# Shred = 0, Non-snapshot Rake = 1, Snapshot Rake = 2, LI = 3, Swipe = 4\nactions.precombat+=/variable,name=filler,value=1\nactions.precombat+=/variable,name=rip_ticks,value=7\nactions.precombat+=/kindred_spirits\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption.enabled||soulbind.volatile_solvent.enabled\nactions.precombat+=/prowl,if=buff.moonkin_form.down\nactions.precombat+=/cat_form,if=buff.moonkin_form.down\n\nactions=run_action_list,name=balance,strict=1,if=buff.moonkin_form.up&!druid.owlweave_cat\nactions+=/call_action_list,name=owlweave,strict=1,if=druid.owlweave_cat\n# Prowl whenever possible\nactions+=/prowl\nactions+=/tigers_fury,if=buff.cat_form.down\nactions+=/cat_form,if=buff.cat_form.down\n## actions+=/variable,name=shortest_ttd,value=target.time_to_die\n## actions+=/cycling_variable,name=shortest_ttd,op=min,value=target.time_to_die\n# One shot stealth\nactions+=/run_action_list,name=stealth,strict=1,if=buff.shadowmeld.up||buff.prowl.up\nactions+=/skull_bash\nactions+=/call_action_list,name=setup,strict=1,if=active_dot.rip=0\nactions+=/call_action_list,name=cooldown\n# Necrolord: Cast 3 or 4 combo point rips on single target outside of berserk or during berserk if feral frenzy is up OR apply a 5cp Rip when TF is up and will soon fall off.\nactions+=/rip,if=covenant.necrolord&(!talent.bloodtalons.enabled||buff.bloodtalons.up)&spell_targets.thrash_cat=1&(combo_points>2&refreshable&druid.rip.ticks_gained_on_refresh>variable.rip_ticks&(!buff.bs_inc.up||cooldown.bs_inc.up||(buff.bs_inc.up&cooldown.feral_frenzy.up))||combo_points=5&buff.tigers_fury.up&buff.tigers_fury.remains<4&druid.rip.ticks_gained_on_refresh>5)\nactions+=/run_action_list,name=finisher,strict=1,if=combo_points>=(5-variable.fourcp_bite)\nactions+=/primal_wrath,if=druid.primal_wrath.ticks_gained_on_refresh>=20&combo_points>=2,line_cd=5\n# Multi-gcd stealth\nactions+=/call_action_list,name=stealth,strict=1,if=buff.bs_inc.up\n# The most expensive BT cycle (Thresh Shred Swipe cost 115 energy, make sure we can make that in 4 globals)\nactions+=/wait,sec=((115-23*buff.incarnation_king_of_the_jungle.up)-(energy.current+3.5*energy.regen+(40*buff.clearcasting.up)))/energy.regen,if=talent.bloodtalons.enabled&buff.bloodtalons.down&active_bt_triggers=0\n## actions+=/pool_resource,if=talent.bloodtalons.enabled&buff.bloodtalons.down&(energy+3.5*energy.regen+(40*buff.clearcasting.up))<(115-23*buff.incarnation_king_of_the_jungle.up)&active_bt_triggers=0\nactions+=/run_action_list,name=bloodtalons,if=talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/ferocious_bite,cycle_targets=1,if=buff.apex_predators_craving.up\nactions+=/pool_resource,for_next=1\nactions+=/rake,cycle_targets=1,if=(refreshable||persistent_multiplier>dot.rake.pmultiplier)&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2\nactions+=/lunar_inspiration,cycle_targets=1,if=(refreshable||persistent_multiplier>dot.lunar_inspiration.pmultiplier)&druid.lunar_inspiration.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2\nactions+=/pool_resource,for_next=1\nactions+=/thrash_cat,cycle_targets=1,if=refreshable&druid.thrash_cat.ticks_gained_on_refresh>(4+spell_targets.thrash_cat*4)%(1+mastery_value)-conduit.taste_for_blood.enabled-covenant.necrolord&(!buff.bs_inc.up||spell_targets.thrash_cat>1)\nactions+=/pool_resource,for_next=1\nactions+=/brutal_slash,if=(raid_event.adds.in>(1+max_charges-charges_fractional)*recharge_time)&(spell_targets.brutal_slash*action.brutal_slash.damage%action.brutal_slash.cost)>(action.shred.damage%action.shred.cost)\nactions+=/swipe_cat,if=spell_targets.swipe_cat>1+buff.bs_inc.up*2\nactions+=/thrash_cat,if=spell_targets.thrash_cat>3\nactions+=/shred,if=buff.clearcasting.up&(buff.sudden_ambush.down&buff.shadowmeld.down||buff.bs_inc.up)\nactions+=/call_action_list,name=filler\n\nactions.bloodtalons=rake,cycle_targets=1,if=(!ticking||(1.2*persistent_multiplier>=dot.rake.pmultiplier)||(active_bt_triggers=2&refreshable))&buff.bt_rake.down\nactions.bloodtalons+=/lunar_inspiration,cycle_targets=1,if=refreshable&buff.bt_moonfire.down\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down&druid.thrash_cat.ticks_gained_on_refresh>(4+spell_targets.thrash_cat*4)%(1+mastery_value)-conduit.taste_for_blood.enabled\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down&spell_targets.swipe_cat>1\nactions.bloodtalons+=/shred,if=buff.bt_shred.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\n\nactions.cooldown=adaptive_swarm,cycle_targets=1,if=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5\n## actions.cooldown+=/fleshcraft,if=(soulbind.pustule_eruption||soulbind.volatile_solvent),interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\n# Cast Tiger's Fury before (or immediatly after) casting Feral Frenzy if Berserk is NOT on cooldown.\nactions.cooldown+=/tigers_fury,sync=feral_frenzy,if=cooldown.bs_inc.up\nactions.cooldown+=/feral_frenzy,cycle_targets=1,if=combo_points<3&target.time_to_die>7&(buff.savage_roar.up||!talent.savage_roar.enabled)&(!cooldown.tigers_fury.up||cooldown.bs_inc.up)||boss&fight_remains<8&fight_remains>2\n# TODO: Need to sync with with ravenous frenzy when we run frenzyband, or atleast check if its worth it\nactions.cooldown+=/berserk,if=combo_points>=3\nactions.cooldown+=/incarnation,if=combo_points>=3\n# Try and not waste TF energy, but also just use it for zerk and incarns\nactions.cooldown+=/tigers_fury,if=energy.deficit>40||buff.bs_inc.up||(talent.predator.enabled&shortest_ttd<3)\n# Might be wrong to use Smeld on Rake in very very niche situations, but very rarely\nactions.cooldown+=/shadowmeld,if=buff.tigers_fury.up&buff.bs_inc.down&combo_points<4&buff.sudden_ambush.down&dot.rake.pmultiplier<1.6&energy>40&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2&target.time_to_die>5\nactions.cooldown+=/berserking,if=buff.tigers_fury.up||buff.bs_inc.up\nactions.cooldown+=/potion,if=buff.bs_inc.up||boss&fight_remains<cooldown.bs_inc.remains||boss&fight_remains<25\nactions.cooldown+=/ravenous_frenzy,if=buff.bs_inc.up||fight_remains<21\n# TODO: Check moonkin hotw and stuff like this, and maybe better combat remain resync\nactions.cooldown+=/convoke_the_spirits,if=(dot.rip.remains>4&combo_points<5&(dot.rake.ticking||spell_targets.thrash_cat>1)&energy.deficit>=20)||boss&fight_remains<5\n# Maybe there should be more conditions on the conduit\nactions.cooldown+=/empower_bond,if=buff.tigers_fury.up||(conduit.deep_allegiance.enabled)\n# Give priority to on-use weapon\nactions.cooldown+=/use_item,name=jotungeirr_destinys_call,if=equipped.jotungeirr_destinys_call\nactions.cooldown+=/use_items\n\nactions.filler=rake,cycle_targets=1,if=variable.filler=1&refreshable&dot.rake.pmultiplier<=1.2*persistent_multiplier\nactions.filler+=/rake,if=variable.filler=2\nactions.filler+=/lunar_inspiration,if=variable.filler=3\nactions.filler+=/swipe,if=variable.filler=4\nactions.filler+=/shred,if=buff.sudden_ambush.down\n## actions.filler+=/fleshcraft,if=soulbind.pustule_eruption.enabled||soulbind.volatile_solvent.enabled,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\n\nactions.finisher=pool_resource,for_next=1\nactions.finisher+=/savage_roar,if=buff.savage_roar.remains<3\nactions.finisher+=/primal_wrath,if=(druid.primal_wrath.ticks_gained_on_refresh>3*(spell_targets.primal_wrath+1)&spell_targets.primal_wrath>1)||spell_targets.primal_wrath>(3+1*talent.sabertooth.enabled)\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&druid.rip.ticks_gained_on_refresh>variable.rip_ticks&((buff.tigers_fury.up||!ticking)&(buff.bloodtalons.up||!talent.bloodtalons.enabled)||!talent.sabertooth.enabled)&(spell_targets.primal_wrath=1||!talent.primal_wrath.enabled)&(active_dot.rip=0||ticking&active_dot.rip=1||!runeforge.draught_of_deep_focus||!talent.sabertooth.enabled)\nactions.finisher+=/savage_roar,if=buff.savage_roar.remains<(combo_points+1)*6*0.3\nactions.finisher+=/ferocious_bite,max_energy=1,cycle_targets=1\nactions.finisher+=/ferocious_bite,cycle_targets=1,if=buff.bs_inc.up&talent.soul_of_the_forest.enabled||cooldown.convoke_the_spirits.remains<1&covenant.night_fae\n\nactions.owlweave=starsurge,if=buff.heart_of_the_wild.up\nactions.owlweave+=/sunfire,line_cd=4*gcd\nactions.owlweave+=/moonfire,line_cd=4*gcd,if=buff.moonkin_form.up&spell_targets.thrash_cat<2&!talent.lunar_inspiration.enabled\nactions.owlweave+=/heart_of_the_wild,if=energy<30&dot.rip.remains>4.5&(cooldown.tigers_fury.remains>=6.5||runeforge.cateye_curio)&buff.clearcasting.stack<1&!buff.apex_predators_craving.up&!buff.bloodlust.up&!buff.bs_inc.up&(cooldown.convoke_the_spirits.remains>6.5||!covenant.night_fae)&(!covenant.necrolord||cooldown.adaptive_swarm.remains>=5||dot.adaptive_swarm_damage.remains>7)\nactions.owlweave+=/moonkin_form,if=energy<30&dot.rip.remains>4.5&(cooldown.tigers_fury.remains>=4.5||runeforge.cateye_curio)&buff.clearcasting.stack<1&!buff.apex_predators_craving.up&!buff.bloodlust.up&(!buff.bs_inc.up||covenant.necrolord&talent.savage_roar.enabled&buff.bs_inc.remains>6)&(cooldown.convoke_the_spirits.remains>6.5||!covenant.night_fae)&(!covenant.necrolord||cooldown.adaptive_swarm.remains>=5||dot.adaptive_swarm_damage.remains>7)&fight_remains>7\n\nactions.setup=lunar_inspiration,if=covenant.necrolord&spell_targets.thrash_cat<4&combo_points<5&!ticking&!buff.bs_inc.up\nactions.setup+=/pool_resource,for_next=1\nactions.setup+=/savage_roar,if=talent.feral_frenzy.enabled&cooldown.feral_frenzy.up&!buff.savage_roar.up&combo_points>1&dot.rake.ticking&(dot.lunar_inspiration.ticking||!talent.lunar_inspiration.enabled)\n## actions.setup+=/pool_resource,if=talent.bloodtalons.enabled&buff.bloodtalons.down&(energy+3.5*energy.regen+(40*buff.clearcasting.up))<(115-23*buff.incarnation_king_of_the_jungle.up)&active_bt_triggers=0\nactions.setup+=/wait,sec=((115-23*buff.incarnation_king_of_the_jungle.up)-(energy.current+3.5*energy.regen+(40*buff.clearcasting.up)))/energy.regen,if=talent.bloodtalons.enabled&buff.bloodtalons.down&active_bt_triggers=0\nactions.setup+=/call_action_list,name=bloodtalons,if=talent.bloodtalons.enabled&buff.bloodtalons.down&(combo_points<5||spell_targets.thrash_cat=1)\nactions.setup+=/call_action_list,name=cooldown\nactions.setup+=/call_action_list,name=finisher,strict=1,if=combo_points>3&(buff.bloodtalons.up||!talent.bloodtalons.enabled)\n\nactions.stealth=pool_resource,for_next=1\n# Rake needs roughly 50% of its length at a minimum to surpass shreds dpe\nactions.stealth+=/rake,cycle_targets=1,if=(dot.rake.pmultiplier<1.5||refreshable)&druid.rake.ticks_gained_on_refresh>2||(persistent_multiplier>dot.rake.pmultiplier&buff.bs_inc.up&spell_targets.thrash_cat<3&covenant.necrolord)||buff.bs_inc.remains<1\nactions.stealth+=/lunar_inspiration,if=spell_targets.thrash_cat<3&refreshable&druid.lunar_inspiration.ticks_gained_on_refresh>5&(combo_points=4||dot.lunar_inspiration.remains<5||!dot.lunar_inspiration.ticking)\n# Brutal Slash is better than stealth Shred at 3 targets\nactions.stealth+=/brutal_slash,if=spell_targets.brutal_slash>2\nactions.stealth+=/pool_resource,for_next=1\nactions.stealth+=/shred,if=combo_points<4&spell_targets.thrash_cat<5\n\nactions.balance=sunfire,if=buff.eclipse_solar.down&buff.eclipse_lunar.down&(refreshable||(active_enemies>1&active_dot.sunfire<active_enemies))\nactions.balance+=/starsurge,if=buff.eclipse_solar.remains>10+cast_time||buff.eclipse_lunar.remains>10+cast_time\nactions.balance+=/starfire,if=buff.eclipse_lunar.remains>cast_time||buff.eclipse_solar.down&solar_eclipse>0||buff.eclipse_solar.down&lunar_eclipse-action.wrath.in_flight<1\nactions.balance+=/wrath,if=buff.eclipse_solar.remains>cast_time||buff.eclipse_lunar.down&lunar_eclipse-action.wrath.in_flight>0",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220226,
					["author"] = "SimC",
					["desc"] = "Guardian Druid\nFebruary 25, 2022\n\nChanges:\n- Incorporate Cat/Moonkin priorities (if setting is checked).\n- Incorporate option to shift (or not) before Convoke.",
					["lists"] = {
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( talent.balance_affinity.enabled )",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( ( ! ticking & time_to_die > 12 & buff.galactic_guardian.up ) || ( refreshable & time_to_die > 12 & buff.galactic_guardian.up ) ) & active_enemies < 6",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( ( ! ticking & time_to_die > 12 ) || ( refreshable & time_to_die > 12 ) ) & active_enemies < 6",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["action"] = "ravenous_frenzy",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "covenant.venthyr",
								["name"] = "jotungeirr_destinys_call",
								["action"] = "jotungeirr_destinys_call",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["criteria"] = "! buff.prowl.up & covenant.venthyr",
								["slot"] = "trinket1",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "! buff.prowl.up & covenant.venthyr",
								["slot"] = "trinket2",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "covenant.venthyr & buff.incarnation.remains >= 24 & buff.incarnation.remains <= 25",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! druid.catweave_bear & ! druid.owlweave_bear",
								["action"] = "convoke_the_spirits",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ravenous_frenzy.up || ! covenant.venthyr )",
								["action"] = "berserk",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ravenous_frenzy.up || ! covenant.venthyr )",
								["action"] = "incarnation",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [13]
							{
								["action"] = "empower_bond",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["action"] = "adaptive_swarm",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & active_enemies < 3",
								["action"] = "moonfire",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "thrash_bear",
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || ( dot.thrash_bear.stack < 4 & runeforge.luffainfused_embrace.equipped ) || active_enemies >= 4 || buff.berserk_bear.up & buff.berserk_bear.remains <= gcd + 0.5",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled & ( ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 ) & ( dot.moonfire.remains >= 3 ) & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & buff.galactic_guardian.down ) ) || soulbind.volatile_solvent.enabled",
								["interrupt_if"] = "soulbind.volatile_solvent&(cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0)",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 4",
								["action"] = "swipe_bear",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up ) & active_enemies < 3 || ( buff.incarnation.up ) & active_enemies < 3 & ( buff.tooth_and_claw.stack >= 2 ) || ( buff.tooth_and_claw.up & buff.tooth_and_claw.remains < 1.5 ) || ( buff.savage_combatant.stack >= 3 ) || buff.berserk_bear.up & active_enemies < 3",
								["action"] = "maul",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( buff.savage_combatant.stack >= 1 ) & ( buff.tooth_and_claw.up ) & buff.incarnation.up & active_enemies = 2",
								["action"] = "maul",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.up & active_enemies <= 3",
								["action"] = "mangle",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( buff.tooth_and_claw.stack >= 2 ) || ( buff.tooth_and_claw.up & buff.tooth_and_claw.remains < 1.5 ) || ( buff.savage_combatant.stack >= 3 ) ) & active_enemies < 3 )",
								["action"] = "maul",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( ( rage < 90 ) & active_enemies < 3 ) || ( ( rage < 85 ) & active_enemies < 3 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "pulverize",
								["criteria"] = "dot.thrash_bear.stack > 2",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "maul",
							}, -- [29]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 40 & buff.ironfur.remains < 0.5",
								["action"] = "ironfur",
							}, -- [31]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "renewal",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "frenzied_regeneration",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! druid.catweave_bear & ! druid.owlweave_bear ) || active_enemies >= 2",
								["action"] = "empower_bond",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 75 & incoming_damage_5s > 0.1 * health.max",
								["action"] = "barkskin",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! covenant.venthyr",
								["name"] = "jotungeirr_destinys_call",
								["action"] = "jotungeirr_destinys_call",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["criteria"] = "! buff.prowl.up & ! covenant.venthyr",
								["slot"] = "trinket1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "! buff.prowl.up & ! covenant.venthyr",
								["slot"] = "trinket2",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! covenant.venthyr & ( ( ( talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up ) & ( druid.catweave_bear || druid.owlweave_bear ) & ! buff.prowl.up ) || ( ( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up ) & ( ! druid.catweave_bear & ! druid.owlweave_bear ) ) )",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "druid.catweave_bear & ! tanking & ! covenant.venthyr & buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & ( ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= gcd + 0.5 & rage < 40 & buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & buff.galactic_guardian.down ) || ( buff.cat_form.up & energy > 25 ) || ( dot.rake.refreshable & dot.rip.refreshable ) || ( runeforge.oath_of_the_elder_druid.equipped & ! buff.oath_of_the_elder_druid.up & ( buff.cat_form.up & energy > 20 ) & buff.heart_of_the_wild.remains <= 10 ) || ( covenant.kyrian & cooldown.empower_bond.remains <= 1 & active_enemies < 2 ) || ( buff.heart_of_the_wild.up & energy > 90 ) )",
								["list_name"] = "catweave",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "druid.catweave_bear & ! tanking & covenant.venthyr & ( ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= gcd + 0.5 & rage < 40 & buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & buff.galactic_guardian.down ) || ( buff.cat_form.up & energy > 25 ) || ( dot.rake.refreshable & dot.rip.refreshable & rage < 40 & buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & buff.galactic_guardian.down ) )",
								["list_name"] = "catweave",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! druid.catweave_bear & buff.cat_form.up",
								["list_name"] = "catweave",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "druid.owlweave_bear & ! tanking & buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & ( ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & buff.galactic_guardian.down ) || ( buff.moonkin_form.up & dot.sunfire.refreshable ) || ( runeforge.oath_of_the_elder_druid.equipped & ! buff.oath_of_the_elder_druid.up ) || ( covenant.night_fae & cooldown.convoke_the_spirits.remains <= 1 ) )",
								["list_name"] = "owlweave",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! druid.owlweave_bear & buff.moonkin_form.up",
								["list_name"] = "owlweave",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here moonkin form.",
								["criteria"] = "settings.shift_for_convoke & ( ( talent.balance_affinity.enabled ) & ( ! druid.catweave_bear ) & ( ! druid.owlweave_bear ) & ( covenant.night_fae & cooldown.convoke_the_spirits.remains <= 1 ) )",
								["list_name"] = "oconvoke",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here catform form.",
								["criteria"] = "settings.shift_for_convoke & ( ( talent.feral_affinity.enabled ) & ( ! druid.catweave_bear ) & ( ! druid.owlweave_bear ) & ( covenant.night_fae & cooldown.convoke_the_spirits.remains <= 1 ) )",
								["list_name"] = "cconvoke",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [14]
						},
						["oconvoke"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.moonkin_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.moonkin_form.up",
								["action"] = "moonkin_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.first_strike.enabled & buff.first_strike.up",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.legacy_of_the_sleeper.equipped",
								["action"] = "convoke_the_spirits",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || eclipse.solar_next",
								["action"] = "starfire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || eclipse.lunar_next",
								["action"] = "wrath",
							}, -- [6]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [7]
						},
						["catweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up",
								["action"] = "rake",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "druid.catweave_bear",
								["action"] = "empower_bond",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.refreshable || energy < 45",
								["action"] = "rake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.rip.refreshable & combo_points >= 4",
								["action"] = "rip",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "druid.catweave_bear",
								["action"] = "convoke_the_spirits",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "combo_points >= 4 & energy > 50",
								["max_energy"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["action"] = "adaptive_swarm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled & energy < 35 || soulbind.volatile_solvent.enabled",
								["interrupt_if"] = "soulbind.volatile_solvent&energy<35",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [12]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & combo_points < 5",
								["action"] = "rake",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5",
								["action"] = "shred",
							}, -- [15]
						},
						["cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "bristling_fur",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( dot.moonfire.ticking || active_enemies > 1 ) & dot.thrash_bear.ticking",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [11]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [12]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Executed before combat begins. Accepts non-harmful actions only.",
								["action"] = "kindred_spirits",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up || buff.moonkin_form.up & talent.balance_affinity.enabled )",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & druid.catweave_bear",
								["action"] = "prowl",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up & ( ( ! druid.owlweave_bear & ! druid.catweave_bear ) & ( ! covenant.night_fae ) ) || ( ( ! druid.owlweave_bear & ! druid.catweave_bear ) & ( covenant.night_fae & talent.restoration_affinity.enabled ) )",
								["action"] = "bear_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.up & druid.owlweave_bear & ! covenant.night_fae",
								["action"] = "wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.up & druid.owlweave_bear & covenant.night_fae",
								["action"] = "starfire",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [7]
						},
						["cconvoke"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [3]
						},
						["owlweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.moonkin_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.moonkin_form.up",
								["action"] = "moonkin_form",
							}, -- [2]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.legacy_of_the_sleeper.equipped",
								["action"] = "convoke_the_spirits",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.first_strike.enabled",
								["action"] = "convoke_the_spirits",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "druid.owlweave_bear",
								["action"] = "empower_bond",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! dot.adaptive_swarm_damage.ticking & ! action.adaptive_swarm_damage.in_flight & ( ! dot.adaptive_swarm_heal.ticking || dot.adaptive_swarm_heal.remains > 3 ) || dot.adaptive_swarm_damage.stack < 3 & dot.adaptive_swarm_damage.remains < 5 & dot.adaptive_swarm_damage.ticking )",
								["action"] = "adaptive_swarm",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable || buff.galactic_guardian.up",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "covenant.night_fae & eclipse.any_next",
								["action"] = "starfire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! covenant.night_fae & eclipse.any_next",
								["action"] = "wrath",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( buff.eclipse_lunar.up || buff.eclipse_solar.up )",
								["action"] = "convoke_the_spirits",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.in_lunar || eclipse.solar_next ) || ( eclipse.in_lunar & buff.starsurge_empowerment_lunar.up )",
								["action"] = "starfire",
							}, -- [13]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [14]
						},
					},
					["version"] = 20220226,
					["warnings"] = "Imported 9 action lists.\n",
					["profile"] = "## Guardian Druid\n## February 25, 2022\n\n## Changes:\n## - Incorporate Cat/Moonkin priorities (if setting is checked).\n## - Incorporate option to shift (or not) before Convoke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/kindred_spirits\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up||buff.moonkin_form.up&talent.balance_affinity.enabled)\nactions.precombat+=/prowl,if=buff.cat_form.up&druid.catweave_bear\nactions.precombat+=/bear_form,if=!buff.any_form.up&((!druid.owlweave_bear&!druid.catweave_bear)&(!covenant.night_fae))||((!druid.owlweave_bear&!druid.catweave_bear)&(covenant.night_fae&talent.restoration_affinity.enabled))\nactions.precombat+=/wrath,if=buff.moonkin_form.up&druid.owlweave_bear&!covenant.night_fae\nactions.precombat+=/starfire,if=buff.moonkin_form.up&druid.owlweave_bear&covenant.night_fae\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption.enabled||soulbind.volatile_solvent.enabled,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/use_item,name=jotungeirr_destinys_call,if=!buff.prowl.up&!covenant.venthyr\nactions+=/use_item,slot=trinket1,if=!buff.prowl.up&!covenant.venthyr\nactions+=/use_item,slot=trinket2,if=!buff.prowl.up&!covenant.venthyr\nactions+=/potion,if=!covenant.venthyr&(((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)&(druid.catweave_bear||druid.owlweave_bear)&!buff.prowl.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\n## Catweaving action list will be ran if, mangle/thrash are on cd, rage is below 40, zerk and incarnation are down and Gualactic guardian buff is not active, or if, we're in catform and energy is above 25, Or if we have the Oath legendary equipped, the debuff linked to it is not up and energy is above 20,Or if we're kyrian and Empower bond cooldown is up and enemies are inferior to 2.\nactions+=/run_action_list,strict=1,name=catweave,if=druid.catweave_bear&!tanking&!covenant.venthyr&buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&((cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5&rage<40&buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&buff.galactic_guardian.down)||(buff.cat_form.up&energy>25)||(dot.rake.refreshable&dot.rip.refreshable)||(runeforge.oath_of_the_elder_druid.equipped&!buff.oath_of_the_elder_druid.up&(buff.cat_form.up&energy>20)&buff.heart_of_the_wild.remains<=10)||(covenant.kyrian&cooldown.empower_bond.remains<=1&active_enemies<2)||(buff.heart_of_the_wild.up&energy>90))\nactions+=/run_action_list,strict=1,name=catweave,if=druid.catweave_bear&!tanking&covenant.venthyr&((cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5&rage<40&buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&buff.galactic_guardian.down)||(buff.cat_form.up&energy>25)||(dot.rake.refreshable&dot.rip.refreshable&rage<40&buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&buff.galactic_guardian.down))\nactions+=/run_action_list,strict=1,name=catweave,if=!druid.catweave_bear&buff.cat_form.up\n## Owlweaving action list will be ran if, mangle/thrash are on cd, rage is below 15, zerk and incarnation are down and Gualactic guardian buff is not active. Or if, we're in moonkin form and sunfire is refreshable, Or if we have the Oath legendary equipped, the debuff linked to it is not up.Or if we're kyrian and Empower bond cooldown is up and enemies are below 2, or if we're Night fae and Convoke cd is up.\nactions+=/run_action_list,strict=1,name=owlweave,if=druid.owlweave_bear&!tanking&buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&((cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&buff.galactic_guardian.down)||(buff.moonkin_form.up&dot.sunfire.refreshable)||(runeforge.oath_of_the_elder_druid.equipped&!buff.oath_of_the_elder_druid.up)||(covenant.night_fae&cooldown.convoke_the_spirits.remains<=1))\nactions+=/run_action_list,strict=1,name=owlweave,if=!druid.owlweave_bear&buff.moonkin_form.up\n# If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here moonkin form.\nactions+=/run_action_list,name=oconvoke,if=settings.shift_for_convoke&((talent.balance_affinity.enabled)&(!druid.catweave_bear)&(!druid.owlweave_bear)&(covenant.night_fae&cooldown.convoke_the_spirits.remains<=1))\n# If we're a nightfae and we don't want to catweave/owlweave, and we have balance/feral affinity talented, Whenever convoke cd is up we switch into affinity form to cast it, here catform form.\nactions+=/run_action_list,name=cconvoke,if=settings.shift_for_convoke&((talent.feral_affinity.enabled)&(!druid.catweave_bear)&(!druid.owlweave_bear)&(covenant.night_fae&cooldown.convoke_the_spirits.remains<=1))\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear=bear_form,if=!buff.bear_form.up\nactions.bear+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(talent.balance_affinity.enabled)\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12&buff.galactic_guardian.up)||(refreshable&time_to_die>12&buff.galactic_guardian.up))&active_enemies<6\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12)||(refreshable&time_to_die>12))&active_enemies<6\nactions.bear+=/ravenous_frenzy\nactions.bear+=/use_item,name=jotungeirr_destinys_call,if=covenant.venthyr\nactions.bear+=/use_item,slot=trinket1,if=!buff.prowl.up&covenant.venthyr\nactions.bear+=/use_item,slot=trinket2,if=!buff.prowl.up&covenant.venthyr\nactions.bear+=/potion,if=covenant.venthyr&buff.incarnation.remains>=24&buff.incarnation.remains<=25\nactions.bear+=/convoke_the_spirits,if=!druid.catweave_bear&!druid.owlweave_bear\nactions.bear+=/berserk_bear,if=(buff.ravenous_frenzy.up||!covenant.venthyr)\nactions.bear+=/incarnation,if=(buff.ravenous_frenzy.up||!covenant.venthyr)\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/empower_bond\nactions.bear+=/adaptive_swarm,if=(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\nactions.bear+=/moonfire,if=buff.galactic_guardian.up&active_enemies<3\nactions.bear+=/thrash_bear,cycle_targets=1,if=refreshable||dot.thrash_bear.stack<3||(dot.thrash_bear.stack<4&runeforge.luffainfused_embrace.equipped)||active_enemies>=4||buff.berserk_bear.up&buff.berserk_bear.remains<=gcd+0.5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/fleshcraft,if=soulbind.pustule_eruption.enabled&((cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0)&(dot.moonfire.remains>=3)&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&buff.galactic_guardian.down))||soulbind.volatile_solvent.enabled,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent&(cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0)\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=4\nactions.bear+=/maul,if=(buff.incarnation.up)&active_enemies<3||(buff.incarnation.up)&active_enemies<3&(buff.tooth_and_claw.stack>=2)||(buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1.5)||(buff.savage_combatant.stack>=3)||buff.berserk_bear.up&active_enemies<3\nactions.bear+=/maul,if=(buff.savage_combatant.stack>=1)&(buff.tooth_and_claw.up)&buff.incarnation.up&active_enemies=2\nactions.bear+=/mangle,if=buff.incarnation.up&active_enemies<=3\nactions.bear+=/maul,if=(((buff.tooth_and_claw.stack>=2)||(buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1.5)||(buff.savage_combatant.stack>=3))&active_enemies<3)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/mangle,if=((rage<90)&active_enemies<3)||((rage<85)&active_enemies<3&talent.soul_of_the_forest.enabled)\nactions.bear+=/pulverize,cycle_targets=1,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/maul,if=active_enemies<3\nactions.bear+=/swipe_bear\nactions.bear+=/ironfur,if=rage.deficit<40&buff.ironfur.remains<0.5\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/renewal,if=tanking&health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/empower_bond,if=(!druid.catweave_bear&!druid.owlweave_bear)||active_enemies>=2\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/incarnation,if=(dot.moonfire.ticking||active_enemies>1)&dot.thrash_bear.ticking\nactions.cooldowns+=/berserk\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast\nactions.cooldowns+=/use_items\n\nactions.catweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.catweave+=/prowl\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/empower_bond,if=druid.catweave_bear\nactions.catweave+=/rake,if=dot.rake.refreshable||energy<45\nactions.catweave+=/rip,if=dot.rip.refreshable&combo_points>=4\nactions.catweave+=/convoke_the_spirits,if=druid.catweave_bear\nactions.catweave+=/ferocious_bite,max_energy=1,if=combo_points>=4&energy>50\nactions.catweave+=/adaptive_swarm,if=(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\nactions.catweave+=/fleshcraft,if=soulbind.pustule_eruption.enabled&energy<35||soulbind.volatile_solvent.enabled,interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent&energy<35\nactions.catweave+=/swipe\nactions.catweave+=/rake,if=refreshable&combo_points<5\nactions.catweave+=/shred,if=combo_points<5\n\nactions.cconvoke=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.cconvoke+=/cat_form,if=!buff.cat_form.up\nactions.cconvoke+=/convoke_the_spirits\n\nactions.oconvoke=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.moonkin_form.up\nactions.oconvoke+=/moonkin_form,if=!buff.moonkin_form.up\nactions.oconvoke+=/convoke_the_spirits,if=soulbind.first_strike.enabled&buff.first_strike.up\nactions.oconvoke+=/convoke_the_spirits,if=runeforge.legacy_of_the_sleeper.equipped\nactions.oconvoke+=/starfire,if=eclipse.any_next||eclipse.solar_next\nactions.oconvoke+=/wrath,if=eclipse.any_next||eclipse.lunar_next\nactions.oconvoke+=/convoke_the_spirits\n\nactions.owlweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.moonkin_form.up\nactions.owlweave+=/moonkin_form,if=!buff.moonkin_form.up\nactions.owlweave+=/starsurge\nactions.owlweave+=/convoke_the_spirits,if=runeforge.legacy_of_the_sleeper.equipped\nactions.owlweave+=/convoke_the_spirits,if=soulbind.first_strike.enabled\nactions.owlweave+=/empower_bond,if=druid.owlweave_bear\nactions.owlweave+=/adaptive_swarm,if=(!dot.adaptive_swarm_damage.ticking&!action.adaptive_swarm_damage.in_flight&(!dot.adaptive_swarm_heal.ticking||dot.adaptive_swarm_heal.remains>3)||dot.adaptive_swarm_damage.stack<3&dot.adaptive_swarm_damage.remains<5&dot.adaptive_swarm_damage.ticking)\nactions.owlweave+=/sunfire,cycle_targets=1,if=refreshable\nactions.owlweave+=/moonfire,cycle_targets=1,if=refreshable||buff.galactic_guardian.up\nactions.owlweave+=/starfire,if=covenant.night_fae&eclipse.any_next\nactions.owlweave+=/wrath,if=!covenant.night_fae&eclipse.any_next\nactions.owlweave+=/convoke_the_spirits,if=(buff.eclipse_lunar.up||buff.eclipse_solar.up)\nactions.owlweave+=/starfire,if=(eclipse.in_lunar||eclipse.solar_next)||(eclipse.in_lunar&buff.starsurge_empowerment_lunar.up)\nactions.owlweave+=/wrath",
					["spec"] = 104,
				},
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20220501,
					["author"] = "SimC",
					["desc"] = "Shadow Priest\nApril 29, 2022\n\nChanges:\n- Tweak Void Torrent when target counts are forced.\n- Pretend dots are up when targets are close to dying, so that nukes are still recommended.",
					["lists"] = {
						["main"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.boon_of_the_ascended.up",
								["list_name"] = "boon",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! target.is_player",
								["action"] = "dispel_magic",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Use Void Eruption on cooldown pooling at least 25 insanity (or 40 for Blood Elf on opener) but not if you will overcap insanity in VF. Make sure Shadowfiend/Mindbender and Mind Blast is on cooldown before VE if Shadowflame is equipped. Ignore pooling restrictions if using Shadowflame Prism and Bender is out.",
								["criteria"] = "variable.pool_for_cds & ( insanity >= 25 + ( 15 * ( race.blood_elf & time < 30 ) ) || pet.fiend.active & runeforge.shadowflame_prism.equipped & ! cooldown.mind_blast.up & ! cooldown.shadow_word_death.up ) & ( insanity <= 85 || talent.searing_nightmare.enabled & variable.searing_nightmare_cutoff ) & ! cooldown.fiend.up & ( ! soulbind.volatile_solvent.enabled || buff.volatile_solvent.up || settings.ignore_solvent )",
								["action"] = "void_eruption",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Make sure you put up SW:P ASAP on the target if Wrathful Faerie isn't active when fighting 1-3 targets.",
								["criteria"] = "buff.fae_guardians.up & ! debuff.wrathful_faerie.up & spell_targets.mind_sear < 4",
								["action"] = "shadow_word_pain",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["criteria"] = "talent.searing_nightmare.enabled & spell_targets.mind_sear > variable.mind_sear_cutoff & ! dot.shadow_word_pain.ticking & ! cooldown.fiend.up & spell_targets.mind_sear >= 4",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["cycle_targets"] = 1,
								["criteria"] = "talent.searing_nightmare.enabled & spell_targets.mind_sear > variable.mind_sear_cutoff & ! dot.shadow_word_pain.ticking & ! cooldown.fiend.up",
								["description"] = "High Priority Mind Sear action to refresh DoTs with searing_nightmare",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "damnation",
								["cycle_targets"] = 1,
								["criteria"] = "( dot.vampiric_touch.refreshable || dot.shadow_word_pain.refreshable || ( ! buff.mind_devourer.up & insanity < 50 ) ) & ( buff.dark_thought.stack < buff.dark_thought.max_stack || ! set_bonus.tier28_2pc )",
								["description"] = "Prefer to use Damnation ASAP if SW:P or VT is not up or you cannot cast a normal Devouring Plague (including Mind Devourer procs) and you will not cap Dark Thoughts stacks if using T28 2pc.",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Use Shadow Word Death if using Shadowflame Prism and bender will expire during the next gcd.",
								["criteria"] = "pet.fiend.active & runeforge.shadowflame_prism.equipped & pet.fiend.remains <= gcd & spell_targets.mind_sear <= 7",
								["action"] = "shadow_word_death",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Always use mindblasts if capped and hungering void is up and using Shadowflame Prism and bender is up.  Additionally, cast mindblast if you would be unable to get the rift by waiting a gcd.",
								["criteria"] = "( cooldown.mind_blast.charges > 1 & ( debuff.hungering_void.up || ! talent.hungering_void.enabled ) || pet.fiend.remains <= cast_time + gcd ) & pet.fiend.active & runeforge.shadowflame_prism.equipped & pet.fiend.remains > cast_time & spell_targets.mind_sear <= 7 || buff.dark_thought.up & buff.voidform.up & ! cooldown.void_bolt.up & ( ! runeforge.shadowflame_prism.equipped || ! pet.fiend.active ) & set_bonus.tier28_4pc",
								["action"] = "mind_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "Use Void Bolt at higher priority with Hungering Void up to 4 targets, or other talents on ST.",
								["criteria"] = "insanity <= 85 & talent.hungering_void.enabled & talent.searing_nightmare.enabled & spell_targets.mind_sear <= 6 || ( ( talent.hungering_void.enabled & ! talent.searing_nightmare.enabled ) || spell_targets.mind_sear = 1 )",
								["action"] = "void_bolt",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "Special Devouring Plague with Searing Nightmare when usage during Cooldowns",
								["criteria"] = "( set_bonus.tier28_4pc || talent.hungering_void.enabled ) & talent.searing_nightmare.enabled & pet.fiend.active & runeforge.shadowflame_prism.equipped & buff.voidform.up & spell_targets.mind_sear <= 6",
								["action"] = "devouring_plague",
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "Don't use Devouring Plague if you can get into Voidform instead, or if Searing Nightmare is talented and will hit enough targets.",
								["criteria"] = "( refreshable || insanity > 75 || talent.void_torrent.enabled & cooldown.void_torrent.remains <= 3 * gcd ) & ( ! variable.pool_for_cds || insanity >= 85 ) & ( ! talent.searing_nightmare.enabled || ( talent.searing_nightmare.enabled & ! variable.searing_nightmare_cutoff ) )",
								["action"] = "devouring_plague",
							}, -- [13]
							{
								["enabled"] = true,
								["description"] = "Use VB on CD if you don't need to cast Devouring Plague, and there are less than 4 targets out (5 with conduit).",
								["criteria"] = "spell_targets.mind_sear < ( 4 + conduit.dissonant_echoes.enabled ) & insanity <= 85 & talent.searing_nightmare.enabled || ! talent.searing_nightmare.enabled",
								["action"] = "void_bolt",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "shadow_word_death",
								["cycle_targets"] = 1,
								["criteria"] = "( target.health.pct < 20 & spell_targets.mind_sear < 4 ) || ( pet.fiend.active & runeforge.shadowflame_prism.equipped & spell_targets.mind_sear <= 7 )",
								["description"] = "Use Shadow Word: Death if the target is about to die or you have Shadowflame Prism equipped with Mindbender or Shadowfiend active.",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "surrender_to_madness",
								["cycle_targets"] = 1,
								["criteria"] = "target.time_to_die < 20 & buff.voidform.down",
								["description"] = "Use Surrender to Madness on a target that is going to die at the right time.",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "void_torrent",
								["cycle_targets"] = 1,
								["criteria"] = "variable.dots_up & ( buff.voidform.down || buff.voidform.remains < cooldown.void_bolt.remains || prev_gcd.1.void_bolt & ! buff.bloodlust.react & spell_targets.mind_sear < 3 ) & variable.vts_applied & spell_targets.mind_sear < ( 5 + ( 6 * talent.twist_of_fate.enabled ) )",
								["description"] = "Use Void Torrent only if SW:P and VT are active and the target won't die during the channel.",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( talent.searing_nightmare.enabled & spell_targets.mind_sear > variable.mind_sear_cutoff || dot.shadow_word_pain.ticking ) & variable.vts_applied",
								["action"] = "mindbender",
							}, -- [18]
							{
								["enabled"] = true,
								["description"] = "Use SW:D with Painbreaker Psalm unless the target will be below 20% before the cooldown comes back.",
								["criteria"] = "runeforge.painbreaker_psalm.equipped & variable.dots_up & target.time_to_pct_20 > ( cooldown.shadow_word_death.duration + gcd )",
								["action"] = "shadow_word_death",
							}, -- [19]
							{
								["enabled"] = true,
								["description"] = "Use Shadow Crash on CD unless there are adds incoming.",
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "shadow_crash",
							}, -- [20]
							{
								["enabled"] = true,
								["description"] = "Use Mind Sear to consume Dark Thoughts procs on AOE. TODO Confirm is this is a higher priority than redotting on AOE unless dark thoughts is about to time out",
								["action"] = "mind_sear",
								["cycle_targets"] = 1,
								["interrupt_if"] = "ticks>=4",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "spell_targets.mind_sear > variable.mind_sear_cutoff & buff.dark_thought.up",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.dark_thought.up & variable.dots_up & ! buff.voidform.up & ! variable.pool_for_cds & cooldown.mind_blast.full_recharge_time >= gcd.max",
								["description"] = "Use Mind Flay to consume Dark Thoughts procs on ST outside of VF.",
								["interrupt_if"] = "ticks>=4&!buff.dark_thought.up",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["action"] = "mind_flay",
							}, -- [22]
							{
								["enabled"] = true,
								["description"] = "Use Mind Blast if you don't need to refresh DoTs. Stop casting at 4 or more targets with Searing Nightmare talented and you are not using Shadowflame Prism or Psychic Link.spell_targets.mind_sear>?5 gets the minimum of 5 and the number of targets. Also, do not press mindblast until all targets are dotted with VT when using shadowflame prism if bender is available.",
								["criteria"] = "variable.dots_up & raid_event.movement.in > cast_time + 0.5 & spell_targets.mind_sear < ( 4 + 2 * talent.misery.enabled + active_dot.vampiric_touch * talent.psychic_link.enabled + ( spell_targets.mind_sear >? 5 ) * ( pet.fiend.active & runeforge.shadowflame_prism.equipped ) ) & ( ! runeforge.shadowflame_prism.equipped || ! cooldown.fiend.up & runeforge.shadowflame_prism.equipped || variable.vts_applied )",
								["action"] = "mind_blast",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable & target.time_to_die >= 18 & ( dot.vampiric_touch.ticking || ! variable.vts_applied ) & variable.max_vts > 0 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable ) || buff.unfurling_darkness.up",
								["description"] = "Refresh Vampiric Touch wisely based on Damnation and other Talents.",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Special condition to stop casting SW:P on off-targets when fighting 3 or more stacked mobs and using Psychic Link and NOT Misery.",
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & talent.psychic_link.enabled & spell_targets.mind_sear > 2",
								["action"] = "shadow_word_pain",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "shadow_word_pain",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & ! ( talent.searing_nightmare.enabled & spell_targets.mind_sear > variable.mind_sear_cutoff ) & ( ! talent.psychic_link.enabled || ( talent.psychic_link.enabled & spell_targets.mind_sear <= 2 ) )",
								["description"] = "Keep SW:P up on as many targets as possible, except when fighting 3 or more stacked mobs with Psychic Link.",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "fleshcraft",
								["interrupt_if"] = "ticks>=1",
								["interrupt_immediate"] = "1",
								["criteria"] = "soulbind.volatile_solvent.enabled & ! buff.voidform.up & ! buff.power_infusion.up & buff.volatile_solvent.remains < 10",
								["description"] = "Use Fleshcraft outside of main cooldowns to maintain Volatile Solvent buff.",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["cycle_targets"] = 1,
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["criteria"] = "spell_targets.mind_sear > variable.mind_sear_cutoff",
								["chain"] = "1",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(!buff.dark_thought.up||cooldown.void_bolt.up&(buff.voidform.up||!buff.dark_thought.up&buff.dissonant_echoes.up))",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [29]
							{
								["enabled"] = true,
								["description"] = "Use SW:D as last resort if on the move",
								["action"] = "shadow_word_death",
							}, -- [30]
							{
								["enabled"] = true,
								["description"] = "Use SW:P as last resort if on the move and SW:D is on CD",
								["action"] = "shadow_word_pain",
							}, -- [31]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "silence",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up || buff.power_infusion.up",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( dot.shadow_word_pain.ticking || target.time_to_die <= 4 ) & ( dot.vampiric_touch.ticking || target.time_to_die <= 6 )",
								["var_name"] = "dots_up",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.dots_up & ( dot.devouring_plague.ticking || target.time_to_die <= 4 )",
								["var_name"] = "all_dots_up",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.mind_sear > 2 + buff.voidform.up",
								["description"] = "Start using Searing Nightmare at 3+ targets or 4+ if you are in Voidform",
								["var_name"] = "searing_nightmare_cutoff",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! runeforge.spheres_harmony.equipped & ! covenant.necrolord || cooldown.power_infusion.remains <= gcd.max * 3 || buff.power_infusion.up || boss & fight_remains <= 25 )",
								["var_name"] = "cd_management",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.vampiric_touch",
								["var_name"] = "max_vts",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "5 + 2 * ( variable.cd_management & cooldown.void_eruption.remains <= 10 ) & talent.hungering_void.enabled",
								["criteria"] = "talent.searing_nightmare.enabled & spell_targets.mind_sear = 7",
								["var_name"] = "max_vts",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["criteria"] = "talent.searing_nightmare.enabled & spell_targets.mind_sear > 7",
								["var_name"] = "max_vts",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "4",
								["criteria"] = "talent.searing_nightmare.enabled & spell_targets.mind_sear = 8 & ! talent.shadow_crash.enabled",
								["var_name"] = "max_vts",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( spell_targets.mind_sear <= 5 ) * spell_targets.mind_sear",
								["criteria"] = "buff.voidform.up",
								["var_name"] = "max_vts",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["default"] = "1",
								["var_name"] = "is_vt_possible",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "active_dot.vampiric_touch < cycle_enemies",
								["var_name"] = "is_vt_possible",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_dot.vampiric_touch >= variable.max_vts || ! variable.is_vt_possible",
								["var_name"] = "vts_applied",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.void_eruption.up & variable.cd_management",
								["description"] = "Cooldown Pool Variable, Used to pool before activating Voidform.",
								["var_name"] = "pool_for_cds",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.power_infusion.up || cooldown.power_infusion.remains > action.power_infusion.cooldown - 10",
								["action"] = "blood_fury",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "fireblood",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "berserking",
							}, -- [18]
							{
								["enabled"] = true,
								["description"] = "Use Light's Judgment if there are 2 or more targets, or adds aren't spawning for more than 75s.",
								["criteria"] = "spell_targets.lights_judgment >= 2 || ( ! raid_event.adds.exists || raid_event.adds.in > 75 )",
								["action"] = "lights_judgment",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "ancestral_call",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cwc",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "main",
							}, -- [22]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "remains < 300",
								["action"] = "power_word_fortitude",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled",
								["action"] = "fleshcraft",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "insanity.deficit > 15",
								["action"] = "arcane_torrent",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["var_name"] = "mind_sear_cutoff",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.damnation.enabled",
								["action"] = "vampiric_touch",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.damnation.enabled",
								["action"] = "mind_blast",
							}, -- [8]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["description"] = "Use Power Infusion with Voidform. Hold for Voidform comes off cooldown in the next 10 seconds otherwise use on cd unless the player is part of the kyrian covenant, or if there will not be another Void Eruption this fight. Attempt to sync the last power infusion of the fight to void eruption for non Kyrians.",
								["criteria"] = "priest.self_power_infusion & ( buff.voidform.up || ! covenant.kyrian & ! covenant.necrolord & cooldown.void_eruption.remains >= 10 || fight_remains < cooldown.void_eruption.remains ) & ( fight_remains >= cooldown.void_eruption.remains + 15 & cooldown.void_eruption.remains <= gcd * 4 || fight_remains > cooldown.power_infusion.duration || boss & fight_remains < cooldown.void_eruption.remains + 15 || covenant.kyrian || buff.bloodlust.up )",
								["action"] = "power_infusion",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "sinful_gladiators_badge_of_ferocity",
								["description"] = "Use Badge inside of VF for the first use or on CD after the first use. With Night Fae hold for VF.",
								["criteria"] = "buff.voidform.up || time > 10 & ( ! covenant.night_fae )",
								["action"] = "sinful_gladiators_badge_of_ferocity",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Use Fae Guardians on CD outside of Voidform. Use Fae Guardiands in Voidform if you have either Grove Invigoration or Field of Blossoms. Wait for dots to be up before activating Fae Guardians to maximise the buff.",
								["criteria"] = "! buff.voidform.up & ( ! cooldown.void_torrent.up || ! talent.void_torrent.enabled ) & ( variable.dots_up & spell_targets.vampiric_touch = 1 || variable.vts_applied & spell_targets.vampiric_touch > 1 ) || buff.voidform.up & ( soulbind.grove_invigoration.enabled || soulbind.field_of_blossoms.enabled )",
								["action"] = "fae_guardians",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "mindgames",
								["cycle_targets"] = 1,
								["criteria"] = "insanity < 90 & ( ( variable.all_dots_up & ( ! cooldown.void_eruption.up || ! talent.hungering_void.enabled ) ) || buff.voidform.up ) & ( ! talent.hungering_void.enabled || debuff.hungering_void.remains > cast_time || ! buff.voidform.up ) & ( ! talent.searing_nightmare.enabled || spell_targets.mind_sear < 5 )",
								["description"] = "Use Mindgames when all 3 DoTs are up, or you are in Voidform. Ensure Hungering Void will still be up when the cast time finishes. Stop using at 5+ targets with Searing Nightmare.",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Use Unholy Nova on CD, holding briefly to wait for power infusion or add spawns.",
								["criteria"] = "! talent.hungering_void.enabled & variable.dots_up || debuff.hungering_void.up & buff.voidform.up || ( cooldown.void_eruption.remains > 10 || ! variable.pool_for_cds ) & ! buff.voidform.up",
								["action"] = "unholy_nova",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Use on CD but prioritise using Void Eruption first, if used inside of VF on ST use after a voidbolt for cooldown efficiency and for hungering void uptime if talented.",
								["criteria"] = "! buff.voidform.up & ! cooldown.void_eruption.up & spell_targets.mind_sear > 1 & ! talent.searing_nightmare.enabled || ( buff.voidform.up & spell_targets.mind_sear < 2 & ! talent.searing_nightmare.enabled & ( prev_gcd.1.void_bolt & ( ! equipped.empyreal_ordnance || ! talent.hungering_void.enabled ) || equipped.empyreal_ordnance & cooldown.empyreal_ordnance.remains <= 162 & debuff.hungering_void.up ) ) || ( buff.voidform.up & talent.searing_nightmare.enabled )",
								["action"] = "boon_of_the_ascended",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "health.pct <= 75",
								["action"] = "desperate_prayer",
							}, -- [8]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "scars_of_fraternal_strife",
								["description"] = "Use trinket after pull starts and then on CD after that until you get 4th stack. Try to delay getting 5th stack for cooldowns. Use before other on use to not trigger ICD between trinkets (bug?).",
								["criteria"] = "( ! buff.scars_of_fraternal_strife_4.up & time > 1 ) || ( buff.voidform.up || buff.power_infusion.up || cooldown.void_eruption.remains > 10 ) || covenant.night_fae",
								["action"] = "scars_of_fraternal_strife",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "empyreal_ordnance",
								["description"] = "Use on CD ASAP to get DoT ticking and expire to line up better with Voidform",
								["criteria"] = "cooldown.void_eruption.remains <= 12 || cooldown.void_eruption.remains > 27",
								["action"] = "empyreal_ordnance",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "inscrutable_quantum_device",
								["description"] = "Try to Sync IQD with Double Stacked CDs if possible. On longer fights with more IQD uses attempt to sync with any cd or just use it.",
								["criteria"] = "buff.voidform.up & buff.power_infusion.up || boss & fight_remains <= 20 || buff.power_infusion.up & cooldown.void_eruption.remains + 15 > fight_remains || buff.voidform.up & cooldown.power_infusion.remains + 15 > fight_remains || ( cooldown.power_infusion.remains >= 10 & cooldown.void_eruption.remains >= 10 ) & fight_remains >= 190",
								["action"] = "inscrutable_quantum_device",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "macabre_sheet_music",
								["description"] = "Sync Sheet Music with Voidform",
								["criteria"] = "cooldown.void_eruption.remains > 10",
								["action"] = "macabre_sheet_music",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "soulletting_ruby",
								["cycle_targets"] = 1,
								["action"] = "soulletting_ruby",
								["criteria"] = "buff.power_infusion.up || ! priest.self_power_infusion || equipped.shadowed_orb_of_torment",
								["description"] = "Sync Ruby with Power Infusion usage, make sure to snipe the lowest HP target. When used with Shadowed Orb of Torment, just use on CD as much as possible.",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "the_first_sigil",
								["description"] = "First Sigil small optimization with Soulletting Ruby",
								["criteria"] = "buff.voidform.up || buff.power_infusion.up || ! priest.self_power_infusion || cooldown.void_eruption.remains > 10 || ( equipped.soulletting_ruby & ! cooldown.soulletting_ruby.up ) || boss & fight_remains < 20",
								["action"] = "the_first_sigil",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "sinful_gladiators_badge_of_ferocity",
								["description"] = "Use Badge inside of VF for the first use or on CD after the first use. Short circuit if void eruption cooldown is 10s or more away.",
								["criteria"] = "cooldown.void_eruption.remains >= 10",
								["action"] = "sinful_gladiators_badge_of_ferocity",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "shadowed_orb_of_torment",
								["description"] = "Use Shadowed Orb of Torment when not in Voidform, or in between Void Bolt casts in Voidform. As Kyrian or Necrolord line it up with stacked cooldowns.",
								["criteria"] = "cooldown.power_infusion.remains <= 10 & cooldown.void_eruption.remains <= 10 & ( covenant.necrolord || covenant.kyrian ) || ( covenant.venthyr || covenant.night_fae ) & ( ! buff.voidform.up || prev_gcd.1.void_bolt ) || boss & fight_remains <= 40",
								["action"] = "shadowed_orb_of_torment",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Use this on CD for max CDR",
								["name"] = "architects_ingenuity_core",
								["action"] = "architects_ingenuity_core",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Default fallback for usable items: Use on cooldown in order by trinket slot.",
								["criteria"] = "buff.voidform.up || buff.power_infusion.up || cooldown.void_eruption.remains > 10",
								["action"] = "use_items",
							}, -- [10]
						},
						["boon"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear <= 3",
								["action"] = "ascended_blast",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Only use Ascended Nova when not talented into Searing Nightmare on 2+ targets.",
								["criteria"] = "spell_targets.ascended_nova > 1 & spell_targets.mind_sear > 1 & ! talent.searing_nightmare.enabled",
								["action"] = "ascended_nova",
							}, -- [2]
						},
						["cwc"] = {
							{
								["enabled"] = true,
								["description"] = "T28 4-set conditional for CWC Mind Blast",
								["only_cwc"] = "1",
								["criteria"] = "set_bonus.tier28_4pc & buff.dark_thought.up & pet.fiend.active & runeforge.shadowflame_prism.equipped & ! buff.voidform.up & pet.your_shadow.remains < fight_remains || buff.dark_thought.up & pet.your_shadow.remains < gcd.max * ( 3 + ( ! buff.voidform.up ) * 16 ) & pet.your_shadow.remains < fight_remains",
								["action"] = "mind_blast",
							}, -- [1]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "searing_nightmare",
								["cycle_targets"] = 1,
								["criteria"] = "( variable.searing_nightmare_cutoff & ! variable.pool_for_cds ) || ( dot.shadow_word_pain.refreshable & spell_targets.mind_sear > 1 )",
								["description"] = "Use Searing Nightmare if you will hit enough targets and Power Infusion and Voidform are not ready, or to refresh SW:P on two or more targets.",
							}, -- [2]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "searing_nightmare",
								["cycle_targets"] = 1,
								["criteria"] = "talent.searing_nightmare.enabled & dot.shadow_word_pain.refreshable & spell_targets.mind_sear > 2",
								["description"] = "Short Circuit Searing Nightmare condition to keep SW:P up in AoE",
							}, -- [3]
							{
								["enabled"] = true,
								["only_cwc"] = "1",
								["action"] = "mind_blast",
								["description"] = "only_cwc makes the action only usable during channeling and not as a regular action.",
							}, -- [4]
						},
					},
					["version"] = 20220501,
					["warnings"] = "WARNING:  The import for 'trinkets' required some automated changes.\nLine 6: Converted 'trinket.abc.cooldown' to 'cooldown.abc' (1x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'main' required some automated changes.\nLine 3: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 27: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\n\nWARNING:  The import for 'cds' required some automated changes.\nLine 6: Converted 'trinket.abc.cooldown' to 'cooldown.abc' (1x).\n\nImported 7 action lists.\n",
					["spec"] = 258,
					["profile"] = "## Shadow Priest\n## April 29, 2022\n\n## Changes:\n## - Tweak Void Torrent when target counts are forced.\n## - Pretend dots are up when targets are close to dying, so that nukes are still recommended.\n\n## Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat+=/power_word_fortitude,if=remains<300\nactions.precombat+=/fleshcraft,if=soulbind.pustule_eruption||soulbind.volatile_solvent\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/arcane_torrent,if=insanity.deficit>15\nactions.precombat+=/use_item,name=shadowed_orb_of_torment\nactions.precombat+=/variable,name=mind_sear_cutoff,op=set,value=2\nactions.precombat+=/vampiric_touch,if=!talent.damnation.enabled\nactions.precombat+=/mind_blast,if=talent.damnation.enabled\n\n# Executed every time the actor is available.\nactions=silence\n## Potions\nactions=potion,if=buff.voidform.up||buff.power_infusion.up\nactions+=/variable,name=dots_up,op=set,value=(dot.shadow_word_pain.ticking||target.time_to_die<=4)&(dot.vampiric_touch.ticking||target.time_to_die<=6)\nactions+=/variable,name=all_dots_up,op=set,value=variable.dots_up&(dot.devouring_plague.ticking||target.time_to_die<=4)\n# Start using Searing Nightmare at 3+ targets or 4+ if you are in Voidform\nactions+=/variable,name=searing_nightmare_cutoff,op=set,value=spell_targets.mind_sear>2+buff.voidform.up\nactions+=/variable,name=cd_management,op=set,value=(!runeforge.spheres_harmony.equipped&!covenant.necrolord||cooldown.power_infusion.remains<=gcd.max*3||buff.power_infusion.up||boss&fight_remains<=25)\nactions+=/variable,name=max_vts,op=set,value=spell_targets.vampiric_touch\nactions+=/variable,name=max_vts,op=set,value=5+2*(variable.cd_management&cooldown.void_eruption.remains<=10)&talent.hungering_void.enabled,if=talent.searing_nightmare.enabled&spell_targets.mind_sear=7\nactions+=/variable,name=max_vts,op=set,value=0,if=talent.searing_nightmare.enabled&spell_targets.mind_sear>7\nactions+=/variable,name=max_vts,op=set,value=4,if=talent.searing_nightmare.enabled&spell_targets.mind_sear=8&!talent.shadow_crash.enabled\nactions+=/variable,name=max_vts,op=set,value=(spell_targets.mind_sear<=5)*spell_targets.mind_sear,if=buff.voidform.up\nactions+=/variable,name=is_vt_possible,op=set,value=0,default=1\nactions+=/variable,name=is_vt_possible,op=set,value=1,if=active_dot.vampiric_touch<cycle_enemies\nactions+=/variable,name=vts_applied,op=set,value=active_dot.vampiric_touch>=variable.max_vts||!variable.is_vt_possible\n# Cooldown Pool Variable, Used to pool before activating Voidform.\nactions+=/variable,name=pool_for_cds,op=set,value=cooldown.void_eruption.up&variable.cd_management\nactions+=/blood_fury,if=buff.power_infusion.up||cooldown.power_infusion.remains>action.power_infusion.cooldown-10\nactions+=/fireblood,if=buff.voidform.up\nactions+=/berserking,if=buff.voidform.up\n# Use Light's Judgment if there are 2 or more targets, or adds aren't spawning for more than 75s.\nactions+=/lights_judgment,if=spell_targets.lights_judgment>=2||(!raid_event.adds.exists||raid_event.adds.in>75)\nactions+=/ancestral_call,if=buff.voidform.up\nactions+=/call_action_list,name=cwc\nactions+=/run_action_list,name=main\n\n## APL to use when Boon of the Ascended is active\nactions.boon=ascended_blast,if=spell_targets.mind_sear<=3\n# Only use Ascended Nova when not talented into Searing Nightmare on 2+ targets.\nactions.boon+=/ascended_nova,if=spell_targets.ascended_nova>1&spell_targets.mind_sear>1&!talent.searing_nightmare.enabled\n\n## CDs\n# Use Power Infusion with Voidform. Hold for Voidform comes off cooldown in the next 10 seconds otherwise use on cd unless the player is part of the kyrian covenant, or if there will not be another Void Eruption this fight. Attempt to sync the last power infusion of the fight to void eruption for non Kyrians.\nactions.cds=power_infusion,if=priest.self_power_infusion&(buff.voidform.up||!covenant.kyrian&!covenant.necrolord&cooldown.void_eruption.remains>=10||fight_remains<cooldown.void_eruption.remains)&(fight_remains>=cooldown.void_eruption.remains+15&cooldown.void_eruption.remains<=gcd*4||fight_remains>cooldown.power_infusion.duration||boss&fight_remains<cooldown.void_eruption.remains+15||covenant.kyrian||buff.bloodlust.up)\n# Use Silence on CD to proc Sephuz's Proclamation.\n# actions.cds+=/silence,target_if=runeforge.sephuzs_proclamation.equipped&(target.is_add||target.debuff.casting.react)\n# Use Badge inside of VF for the first use or on CD after the first use. With Night Fae hold for VF.\nactions.cds+=/use_item,name=sinful_gladiators_badge_of_ferocity,if=buff.voidform.up||time>10&(!covenant.night_fae)\n# Use Fae Guardians on CD outside of Voidform. Use Fae Guardiands in Voidform if you have either Grove Invigoration or Field of Blossoms. Wait for dots to be up before activating Fae Guardians to maximise the buff.\nactions.cds+=/fae_guardians,if=!buff.voidform.up&(!cooldown.void_torrent.up||!talent.void_torrent.enabled)&(variable.dots_up&spell_targets.vampiric_touch=1||variable.vts_applied&spell_targets.vampiric_touch>1)||buff.voidform.up&(soulbind.grove_invigoration.enabled||soulbind.field_of_blossoms.enabled)\n# Use Mindgames when all 3 DoTs are up, or you are in Voidform. Ensure Hungering Void will still be up when the cast time finishes. Stop using at 5+ targets with Searing Nightmare.\nactions.cds+=/mindgames,cycle_targets=1,if=insanity<90&((variable.all_dots_up&(!cooldown.void_eruption.up||!talent.hungering_void.enabled))||buff.voidform.up)&(!talent.hungering_void.enabled||debuff.hungering_void.remains>cast_time||!buff.voidform.up)&(!talent.searing_nightmare.enabled||spell_targets.mind_sear<5)\n# Use Unholy Nova on CD, holding briefly to wait for power infusion or add spawns.\nactions.cds+=/unholy_nova,if=!talent.hungering_void.enabled&variable.dots_up||debuff.hungering_void.up&buff.voidform.up||(cooldown.void_eruption.remains>10||!variable.pool_for_cds)&!buff.voidform.up\n# Use on CD but prioritise using Void Eruption first, if used inside of VF on ST use after a voidbolt for cooldown efficiency and for hungering void uptime if talented.\nactions.cds+=/boon_of_the_ascended,if=!buff.voidform.up&!cooldown.void_eruption.up&spell_targets.mind_sear>1&!talent.searing_nightmare.enabled||(buff.voidform.up&spell_targets.mind_sear<2&!talent.searing_nightmare.enabled&(prev_gcd.1.void_bolt&(!equipped.empyreal_ordnance||!talent.hungering_void.enabled)||equipped.empyreal_ordnance&trinket.empyreal_ordnance.cooldown.remains<=162&debuff.hungering_void.up))||(buff.voidform.up&talent.searing_nightmare.enabled)\nactions.cds+=/call_action_list,name=trinkets\nactions.cds+=/desperate_prayer,if=health.pct<=75\n\n## Cast While Casting actions. Set at higher priority to short circuit interrupt conditions on Mind Sear/Flay\n# T28 4-set conditional for CWC Mind Blast\nactions.cwc=mind_blast,only_cwc=1,target_if=set_bonus.tier28_4pc&buff.dark_thought.up&pet.fiend.active&runeforge.shadowflame_prism.equipped&!buff.voidform.up&pet.your_shadow.remains<fight_remains||buff.dark_thought.up&pet.your_shadow.remains<gcd.max*(3+(!buff.voidform.up)*16)&pet.your_shadow.remains<fight_remains\n# Use Searing Nightmare if you will hit enough targets and Power Infusion and Voidform are not ready, or to refresh SW:P on two or more targets.\nactions.cwc=searing_nightmare,use_while_casting=1,cycle_targets=1,if=(variable.searing_nightmare_cutoff&!variable.pool_for_cds)||(dot.shadow_word_pain.refreshable&spell_targets.mind_sear>1)\n# Short Circuit Searing Nightmare condition to keep SW:P up in AoE\nactions.cwc+=/searing_nightmare,use_while_casting=1,cycle_targets=1,if=talent.searing_nightmare.enabled&dot.shadow_word_pain.refreshable&spell_targets.mind_sear>2\n# only_cwc makes the action only usable during channeling and not as a regular action.\nactions.cwc+=/mind_blast,only_cwc=1\n\n## Main APL, should cover all ranges of targets and scenarios\nactions.main=call_action_list,name=boon,strict=1,if=buff.boon_of_the_ascended.up\nactions.main+=/dispel_magic,if=!target.is_player\n# Use Void Eruption on cooldown pooling at least 25 insanity (or 40 for Blood Elf on opener) but not if you will overcap insanity in VF. Make sure Shadowfiend/Mindbender and Mind Blast is on cooldown before VE if Shadowflame is equipped. Ignore pooling restrictions if using Shadowflame Prism and Bender is out.\nactions.main+=/void_eruption,if=variable.pool_for_cds&(insanity>=25+(15*(race.blood_elf&time<30))||pet.fiend.active&runeforge.shadowflame_prism.equipped&!cooldown.mind_blast.up&!cooldown.shadow_word_death.up)&(insanity<=85||talent.searing_nightmare.enabled&variable.searing_nightmare_cutoff)&!cooldown.fiend.up&(!soulbind.volatile_solvent||buff.volatile_solvent.up||settings.ignore_solvent)\n# Make sure you put up SW:P ASAP on the target if Wrathful Faerie isn't active when fighting 1-3 targets.\nactions.main+=/shadow_word_pain,if=buff.fae_guardians.up&!debuff.wrathful_faerie.up&spell_targets.mind_sear<4\nactions.main+=/mind_sear,cycle_targets=1,if=talent.searing_nightmare.enabled&spell_targets.mind_sear>variable.mind_sear_cutoff&!dot.shadow_word_pain.ticking&!cooldown.fiend.up&spell_targets.mind_sear>=4\nactions.main+=/call_action_list,name=cds\n# High Priority Mind Sear action to refresh DoTs with searing_nightmare\nactions.main+=/mind_sear,cycle_targets=1,if=talent.searing_nightmare.enabled&spell_targets.mind_sear>variable.mind_sear_cutoff&!dot.shadow_word_pain.ticking&!cooldown.fiend.up\n# Prefer to use Damnation ASAP if SW:P or VT is not up or you cannot cast a normal Devouring Plague (including Mind Devourer procs) and you will not cap Dark Thoughts stacks if using T28 2pc.\nactions.main+=/damnation,cycle_targets=1,if=(dot.vampiric_touch.refreshable||dot.shadow_word_pain.refreshable||(!buff.mind_devourer.up&insanity<50))&(buff.dark_thought.stack<buff.dark_thought.max_stack||!set_bonus.tier28_2pc)\n# Use Shadow Word Death if using Shadowflame Prism and bender will expire during the next gcd.\nactions.main+=/shadow_word_death,if=pet.fiend.active&runeforge.shadowflame_prism.equipped&pet.fiend.remains<=gcd&spell_targets.mind_sear<=7\n# Always use mindblasts if capped and hungering void is up and using Shadowflame Prism and bender is up.  Additionally, cast mindblast if you would be unable to get the rift by waiting a gcd.\nactions.main+=/mind_blast,if=(cooldown.mind_blast.charges>1&(debuff.hungering_void.up||!talent.hungering_void.enabled)||pet.fiend.remains<=cast_time+gcd)&pet.fiend.active&runeforge.shadowflame_prism.equipped&pet.fiend.remains>cast_time&spell_targets.mind_sear<=7||buff.dark_thought.up&buff.voidform.up&!cooldown.void_bolt.up&(!runeforge.shadowflame_prism.equipped||!pet.fiend.active)&set_bonus.tier28_4pc\n# Use Void Bolt at higher priority with Hungering Void up to 4 targets, or other talents on ST.\nactions.main+=/void_bolt,if=insanity<=85&talent.hungering_void.enabled&talent.searing_nightmare.enabled&spell_targets.mind_sear<=6||((talent.hungering_void.enabled&!talent.searing_nightmare.enabled)||spell_targets.mind_sear=1)\n# Special Devouring Plague with Searing Nightmare when usage during Cooldowns\nactions.main+=/devouring_plague,if=(set_bonus.tier28_4pc||talent.hungering_void.enabled)&talent.searing_nightmare.enabled&pet.fiend.active&runeforge.shadowflame_prism.equipped&buff.voidform.up&spell_targets.mind_sear<=6\n# Don't use Devouring Plague if you can get into Voidform instead, or if Searing Nightmare is talented and will hit enough targets.\nactions.main+=/devouring_plague,if=(refreshable||insanity>75||talent.void_torrent.enabled&cooldown.void_torrent.remains<=3*gcd)&(!variable.pool_for_cds||insanity>=85)&(!talent.searing_nightmare.enabled||(talent.searing_nightmare.enabled&!variable.searing_nightmare_cutoff))\n# Use VB on CD if you don't need to cast Devouring Plague, and there are less than 4 targets out (5 with conduit).\nactions.main+=/void_bolt,if=spell_targets.mind_sear<(4+conduit.dissonant_echoes.enabled)&insanity<=85&talent.searing_nightmare.enabled||!talent.searing_nightmare.enabled\n# Use Shadow Word: Death if the target is about to die or you have Shadowflame Prism equipped with Mindbender or Shadowfiend active.\nactions.main+=/shadow_word_death,cycle_targets=1,if=(target.health.pct<20&spell_targets.mind_sear<4)||(pet.fiend.active&runeforge.shadowflame_prism.equipped&spell_targets.mind_sear<=7)\n# Use Surrender to Madness on a target that is going to die at the right time.\nactions.main+=/surrender_to_madness,cycle_targets=1,if=target.time_to_die<20&buff.voidform.down\n# Use Void Torrent only if SW:P and VT are active and the target won't die during the channel.\nactions.main+=/void_torrent,cycle_targets=1,if=variable.dots_up&(buff.voidform.down||buff.voidform.remains<cooldown.void_bolt.remains||prev_gcd.1.void_bolt&!buff.bloodlust.react&spell_targets.mind_sear<3)&variable.vts_applied&spell_targets.mind_sear<(5+(6*talent.twist_of_fate.enabled))\nactions.main+=/mindbender,if=(talent.searing_nightmare.enabled&spell_targets.mind_sear>variable.mind_sear_cutoff||dot.shadow_word_pain.ticking)&variable.vts_applied\n# Use SW:D with Painbreaker Psalm unless the target will be below 20% before the cooldown comes back.\nactions.main+=/shadow_word_death,if=runeforge.painbreaker_psalm.equipped&variable.dots_up&target.time_to_pct_20>(cooldown.shadow_word_death.duration+gcd)\n# Use Shadow Crash on CD unless there are adds incoming.\nactions.main+=/shadow_crash,if=raid_event.adds.in>10\n# Use Mind Sear to consume Dark Thoughts procs on AOE. TODO Confirm is this is a higher priority than redotting on AOE unless dark thoughts is about to time out\nactions.main+=/mind_sear,cycle_targets=1,if=spell_targets.mind_sear>variable.mind_sear_cutoff&buff.dark_thought.up,chain=1,interrupt_immediate=1,interrupt_if=ticks>=4\n## TODO:  Check this Mind Flay implementation to see if it breaks other routine channels of Mind Flay; may need to make this breakage only work with the set bonus.\n# Use Mind Flay to consume Dark Thoughts procs on ST outside of VF.\nactions.main+=/mind_flay,if=buff.dark_thought.up&variable.dots_up&!buff.voidform.up&!variable.pool_for_cds&cooldown.mind_blast.full_recharge_time>=gcd.max,chain=1,interrupt_immediate=1,interrupt_if=ticks>=4&!buff.dark_thought.up\n# Use Mind Blast if you don't need to refresh DoTs. Stop casting at 4 or more targets with Searing Nightmare talented and you are not using Shadowflame Prism or Psychic Link.spell_targets.mind_sear>?5 gets the minimum of 5 and the number of targets. Also, do not press mindblast until all targets are dotted with VT when using shadowflame prism if bender is available.\nactions.main+=/mind_blast,if=variable.dots_up&raid_event.movement.in>cast_time+0.5&spell_targets.mind_sear<(4+2*talent.misery.enabled+active_dot.vampiric_touch*talent.psychic_link.enabled+(spell_targets.mind_sear>?5)*(pet.fiend.active&runeforge.shadowflame_prism.equipped))&(!runeforge.shadowflame_prism.equipped||!cooldown.fiend.up&runeforge.shadowflame_prism.equipped||variable.vts_applied)\n# Refresh Vampiric Touch wisely based on Damnation and other Talents.\nactions.main+=/vampiric_touch,cycle_targets=1,if=refreshable&target.time_to_die>=18&(dot.vampiric_touch.ticking||!variable.vts_applied)&variable.max_vts>0||(talent.misery.enabled&dot.shadow_word_pain.refreshable)||buff.unfurling_darkness.up\n# Special condition to stop casting SW:P on off-targets when fighting 3 or more stacked mobs and using Psychic Link and NOT Misery.\nactions.main+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&talent.psychic_link.enabled&spell_targets.mind_sear>2\n# Keep SW:P up on as many targets as possible, except when fighting 3 or more stacked mobs with Psychic Link.\nactions.main+=/shadow_word_pain,cycle_targets=1,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!(talent.searing_nightmare.enabled&spell_targets.mind_sear>variable.mind_sear_cutoff)&(!talent.psychic_link.enabled||(talent.psychic_link.enabled&spell_targets.mind_sear<=2))\n# Use Fleshcraft outside of main cooldowns to maintain Volatile Solvent buff.\nactions.main+=/fleshcraft,if=soulbind.volatile_solvent&!buff.voidform.up&!buff.power_infusion.up&buff.volatile_solvent.remains<10,interrupt_immediate=1,interrupt_if=ticks>=1\nactions.main+=/mind_sear,cycle_targets=1,if=spell_targets.mind_sear>variable.mind_sear_cutoff,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.main+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(!buff.dark_thought.up||cooldown.void_bolt.up&(buff.voidform.up||!buff.dark_thought.up&buff.dissonant_echoes.up))\n# Use SW:D as last resort if on the move\nactions.main+=/shadow_word_death\n# Use SW:P as last resort if on the move and SW:D is on CD\nactions.main+=/shadow_word_pain\n\n# Use trinket after pull starts and then on CD after that until you get 4th stack. Try to delay getting 5th stack for cooldowns. Use before other on use to not trigger ICD between trinkets (bug?).\nactions.trinkets=use_item,name=scars_of_fraternal_strife,if=(!buff.scars_of_fraternal_strife_4.up&time>1)||(buff.voidform.up||buff.power_infusion.up||cooldown.void_eruption.remains>10)||covenant.night_fae\n# Use on CD ASAP to get DoT ticking and expire to line up better with Voidform\nactions.trinkets+=/use_item,name=empyreal_ordnance,if=cooldown.void_eruption.remains<=12||cooldown.void_eruption.remains>27\n# Try to Sync IQD with Double Stacked CDs if possible. On longer fights with more IQD uses attempt to sync with any cd or just use it.\nactions.trinkets+=/use_item,name=inscrutable_quantum_device,if=buff.voidform.up&buff.power_infusion.up||boss&fight_remains<=20||buff.power_infusion.up&cooldown.void_eruption.remains+15>fight_remains||buff.voidform.up&cooldown.power_infusion.remains+15>fight_remains||(cooldown.power_infusion.remains>=10&cooldown.void_eruption.remains>=10)&fight_remains>=190\n# Sync Sheet Music with Voidform\nactions.trinkets+=/use_item,name=macabre_sheet_music,if=cooldown.void_eruption.remains>10\n# Sync Ruby with Power Infusion usage, make sure to snipe the lowest HP target. When used with Shadowed Orb of Torment, just use on CD as much as possible.\nactions.trinkets+=/use_item,name=soulletting_ruby,cycle_targets=1,if=buff.power_infusion.up||!priest.self_power_infusion||equipped.shadowed_orb_of_torment\n# First Sigil small optimization with Soulletting Ruby\nactions.trinkets+=/use_item,name=the_first_sigil,if=buff.voidform.up||buff.power_infusion.up||!priest.self_power_infusion||cooldown.void_eruption.remains>10||(equipped.soulletting_ruby&!trinket.soulletting_ruby.cooldown.up)||boss&fight_remains<20\n# Use Badge inside of VF for the first use or on CD after the first use. Short circuit if void eruption cooldown is 10s or more away.\nactions.trinkets+=/use_item,name=sinful_gladiators_badge_of_ferocity,if=cooldown.void_eruption.remains>=10\n# Use Shadowed Orb of Torment when not in Voidform, or in between Void Bolt casts in Voidform. As Kyrian or Necrolord line it up with stacked cooldowns.\nactions.trinkets+=/use_item,name=shadowed_orb_of_torment,if=cooldown.power_infusion.remains<=10&cooldown.void_eruption.remains<=10&(covenant.necrolord||covenant.kyrian)||(covenant.venthyr||covenant.night_fae)&(!buff.voidform.up||prev_gcd.1.void_bolt)||boss&fight_remains<=40\n# Use this on CD for max CDR\nactions.trinkets+=/use_item,name=architects_ingenuity_core\n# Default fallback for usable items: Use on cooldown in order by trinket slot.\nactions.trinkets+=/use_items,if=buff.voidform.up||buff.power_infusion.up||cooldown.void_eruption.remains>10",
				},
			},
		},
	},
}

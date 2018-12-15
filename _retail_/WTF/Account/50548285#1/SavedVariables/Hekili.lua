
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Nisekoi - Eredar"] = "Nisekoi - Eredar",
		["Tsuka - Moonglade"] = "Tsuka - Moonglade",
	},
	["profiles"] = {
		["Nisekoi - Eredar"] = {
			["actionLists"] = {
				{
					["Name"] = "Usable Items",
					["Specialization"] = 0,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Draught of Souls",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
							["Ability"] = "draught_of_souls",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Indicator"] = "none",
							["Ability"] = "faulty_countermeasure",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Faulty Countermeasure",
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Fel-Oiled Infernal Machine",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "feloiled_infernal_machine",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "Forgefiend's Fabricator",
							["Indicator"] = "none",
							["Ability"] = "forgefiends_fabricator",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Horn of Valor",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "horn_of_valor",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Indicator"] = "none",
							["Ability"] = "kiljaedens_burning_wish",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Kil'jaeden's Burning Wish",
						}, -- [6]
						{
							["Enabled"] = true,
							["Name"] = "Might of Krosus",
							["Indicator"] = "none",
							["Ability"] = "might_of_krosus",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [7]
						{
							["Enabled"] = true,
							["Name"] = "Ring of Collapsing Futures",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "ring_of_collapsing_futures",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Indicator"] = "none",
							["Ability"] = "specter_of_betrayal",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Specter of Betrayal",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Resources"] = {
							},
							["Ability"] = "tome_of_unraveling_sanity",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Name"] = "Tome of Unraveling Sanity",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Indicator"] = "none",
							["Ability"] = "umbral_moonglaives",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Umbral Moonglaives",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Indicator"] = "none",
							["Ability"] = "vial_of_ceaseless_toxins",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Vial of Ceaseless Toxins",
						}, -- [12]
					},
					["Release"] = 20180208.181753,
					["Script"] = "",
					["Hidden"] = true,
					["Default"] = true,
				}, -- [1]
				{
					["Default"] = true,
					["Name"] = "SimC Enhancement: default",
					["Release"] = 20180122.221851,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "wind_shear",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Wind Shear",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "( ( talent.hailstorm.enabled & ! buff.frostbrand.up ) || ! talent.hailstorm.enabled )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "hailstormCheck",
							["Name"] = "|cff00ccff[Store Value]|r",
							["Args"] = "name=hailstormCheck,value=((talent.hailstorm.enabled&!buff.frostbrand.up)||!talent.hailstorm.enabled)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom.current > 80 ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "furyCheck80",
							["Name"] = "|cff00ccff[Store Value]|r (1)",
							["Args"] = "name=furyCheck80,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>80))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom.current > 70 ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "furyCheck70",
							["Name"] = "|cff00ccff[Store Value]|r (2)",
							["Args"] = "name=furyCheck70,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>70))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom.current > 45 ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "furyCheck45",
							["Name"] = "|cff00ccff[Store Value]|r (3)",
							["Args"] = "name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom.current > 25 ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "furyCheck25",
							["Name"] = "|cff00ccff[Store Value]|r (4)",
							["Args"] = "name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "( talent.overcharge.enabled & variable.furyCheck45 & maelstrom.current >= 40 )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "overcharge",
							["Name"] = "|cff00ccff[Store Value]|r (5)",
							["Args"] = "name=overcharge,value=(talent.overcharge.enabled&variable.furyCheck45&maelstrom>=40)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & ( maelstrom.current > 100 || cooldown.lightning_bolt.remains > gcd ) ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "OCPool100",
							["Name"] = "|cff00ccff[Store Value]|r (6)",
							["Args"] = "name=OCPool100,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&(maelstrom>100||cooldown.lightning_bolt.remains>gcd)))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & ( maelstrom.current > 80 || cooldown.lightning_bolt.remains > gcd ) ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "OCPool80",
							["Name"] = "|cff00ccff[Store Value]|r (7)",
							["Args"] = "name=OCPool80,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&(maelstrom>80||cooldown.lightning_bolt.remains>gcd)))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & ( maelstrom.current > 70 || cooldown.lightning_bolt.remains > gcd ) ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "OCPool70",
							["Name"] = "|cff00ccff[Store Value]|r (8)",
							["Args"] = "name=OCPool70,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&(maelstrom>70||cooldown.lightning_bolt.remains>gcd)))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & ( maelstrom.current > 60 || cooldown.lightning_bolt.remains > gcd ) ) )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "OCPool60",
							["Name"] = "|cff00ccff[Store Value]|r (9)",
							["Args"] = "name=OCPool60,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&(maelstrom>60||cooldown.lightning_bolt.remains>gcd)))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "( equipped.smoldering_heart )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "heartEquipped",
							["Name"] = "|cff00ccff[Store Value]|r (10)",
							["Args"] = "name=heartEquipped,value=(equipped.151819)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "( equipped.akainus_absolute_justice )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "akainuEquipped",
							["Name"] = "|cff00ccff[Store Value]|r (11)",
							["Args"] = "name=akainuEquipped,value=(equipped.137084)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "( equipped.storm_tempests & ! debuff.storm_tempests.up )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "stormTempests",
							["Name"] = "|cff00ccff[Store Value]|r (12)",
							["Args"] = "name=stormTempests,value=(equipped.137103&!debuff.storm_tempests.up)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "( variable.akainuEquipped & buff.hot_hand.up & ! buff.frostbrand.up )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "akainuAS",
							["Name"] = "|cff00ccff[Store Value]|r (13)",
							["Args"] = "name=akainuAS,value=(variable.akainuEquipped&buff.hot_hand.react&!buff.frostbrand.up)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "( ! buff.lightning_crash.up & set_bonus.tier20_2pc > 0 )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "LightningCrashNotUp",
							["Name"] = "|cff00ccff[Store Value]|r (14)",
							["Args"] = "name=LightningCrashNotUp,value=(!buff.lightning_crash.up&set_bonus.tier20_2pc)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [16]
						{
							["Enabled"] = true,
							["Script"] = "( ( buff.alpha_wolf.remains < 2 & buff.alpha_wolf.remains < 2 & buff.alpha_wolf.remains < 2 ) & feral_spirit.remains > 4 )",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "alphaWolfCheck",
							["Name"] = "|cff00ccff[Store Value]|r (15)",
							["Args"] = "name=alphaWolfCheck,value=((pet.frost_wolf.buff.alpha_wolf.remains<2&pet.fiery_wolf.buff.alpha_wolf.remains<2&pet.lightning_wolf.buff.alpha_wolf.remains<2)&feral_spirit.remains>4)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [17]
						{
							["Enabled"] = true,
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Use Items]|r",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [18]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r",
							["Args"] = "name=\"SimC Enhancement: opener\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Enhancement: opener",
						}, -- [19]
						{
							["Enabled"] = true,
							["Script"] = "buff.ascendance.up",
							["Ability"] = "call_action_list",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r (1)",
							["Args"] = "name=\"SimC Enhancement: asc\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "SimC Enhancement: asc",
						}, -- [20]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r (2)",
							["Args"] = "name=\"SimC Enhancement: buffs\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Enhancement: buffs",
						}, -- [21]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r (3)",
							["Args"] = "name=\"SimC Enhancement: CDs\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Enhancement: CDs",
						}, -- [22]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r (4)",
							["Args"] = "name=\"SimC Enhancement: core\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Enhancement: core",
						}, -- [23]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r (5)",
							["Args"] = "name=\"SimC Enhancement: filler\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Enhancement: filler",
						}, -- [24]
					},
					["Specialization"] = 263,
				}, -- [2]
				{
					["Default"] = true,
					["Name"] = "SimC Enhancement: precombat",
					["Release"] = 20180122.221851,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "lightning_shield",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Shield",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
					},
					["Specialization"] = 263,
				}, -- [3]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180122.221851,
					["Specialization"] = 263,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "variable.furyCheck25",
							["Ability"] = "earthen_spike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earthen Spike",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! buff.crash_lightning.up & active_enemies >= 2",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "windsong",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Windsong",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies >= 8 || ( active_enemies >= 6 & talent.crashing_storm.enabled )",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "buff.force_of_the_mountain.up & charges_fractional > 1.7 & active_enemies <= 4",
							["Ability"] = "rockbiter",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rockbiter",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "variable.stormTempests",
							["Ability"] = "stormstrike",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Stormstrike",
							["Args"] = "target_if=variable.stormTempests",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "buff.stormbringer.up & variable.furyCheck25",
							["Ability"] = "stormstrike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormstrike (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "variable.overcharge & debuff.exposed_elements.up",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies >= 4 || ( active_enemies >= 2 & talent.crashing_storm.enabled )",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "buff.force_of_the_mountain.up",
							["Ability"] = "rockbiter",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rockbiter (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "talent.overcharge.enabled & variable.furyCheck45 & maelstrom.current >= 40",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "( buff.hot_hand.up & ( ( variable.akainuEquipped & buff.frostbrand.up ) || ( ! variable.akainuEquipped ) ) )",
							["Ability"] = "lava_lash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Lash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current >= 50 & variable.OCPool70 & variable.furyCheck80 & debuff.exposed_elements.up & debuff.lashing_flames.stack > 90 )",
							["Ability"] = "lava_lash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Lash (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "variable.overcharge",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "variable.furyCheck45 & ( variable.OCPool80 || buff.doom_winds.up )",
							["Ability"] = "stormstrike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormstrike (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "variable.akainuAS",
							["Ability"] = "frostbrand",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frostbrand",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies >= 3",
							["Ability"] = "sundering",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Sundering",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [17]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies >= 3 || variable.LightningCrashNotUp || variable.alphaWolfCheck",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning (3)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [18]
					},
					["Name"] = "SimC Enhancement: core",
				}, -- [4]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180122.221851,
					["Specialization"] = 263,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current < 15 & time < gcd",
							["Ability"] = "rockbiter",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rockbiter",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
					},
					["Name"] = "SimC Enhancement: opener",
				}, -- [5]
				{
					["Default"] = true,
					["Name"] = "SimC Enhancement: CDs",
					["Release"] = 20180122.221851,
					["Specialization"] = 263,
					["Actions"] = {
						{
							["Enabled"] = false,
							["Script"] = "target.health.pct < 25 || time > 0.500",
							["Ability"] = "heroism",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Heroism",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.ascendance.up || ( cooldown.doom_winds.up ) || level < 100",
							["Ability"] = "berserking",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Berserking",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
							["Ability"] = "blood_fury",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blood Fury",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.ascendance.up || ( ! talent.ascendance.enabled & ! variable.heartEquipped & feral_spirit.remains > 5 ) || target.time_to_die <= 60",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "feral_spirit",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Feral Spirit",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.ascendance.remains > 6 || talent.boulderfist.enabled || debuff.earthen_spike.up",
							["Ability"] = "doom_winds",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Doom Winds",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "( cooldown.stormstrike.remains > 0 ) & buff.ascendance.down",
							["Ability"] = "ascendance",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ascendance",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
					},
					["Script"] = "",
				}, -- [6]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180122.221851,
					["Specialization"] = 263,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current < 120 & charges_fractional > 1.7",
							["Ability"] = "rockbiter",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rockbiter",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.flametongue.remains < 4.8",
							["Ability"] = "flametongue",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flametongue",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "( talent.crashing_storm.enabled || active_enemies >= 2 ) & debuff.earthen_spike.up & maelstrom.current >= 40 & variable.OCPool80",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 & maelstrom.current > 40",
							["Ability"] = "frostbrand",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frostbrand",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "variable.akainuEquipped & ! buff.frostbrand.up & maelstrom.current >= 75",
							["Ability"] = "frostbrand",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frostbrand (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Ability"] = "sundering",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Sundering",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 50 & variable.OCPool100 & variable.furyCheck70",
							["Ability"] = "lava_lash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Lash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "rockbiter",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rockbiter (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current >= 45 || talent.crashing_storm.enabled || active_enemies >= 2 ) & variable.OCPool80",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Ability"] = "flametongue",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flametongue (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
					},
					["Name"] = "SimC Enhancement: filler",
				}, -- [7]
				{
					["Default"] = true,
					["Name"] = "SimC Enhancement: buffs",
					["Release"] = 20180122.221851,
					["Specialization"] = 263,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "talent.landslide.enabled & ! buff.landslide.up",
							["Ability"] = "rockbiter",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rockbiter",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! ticking & maelstrom.current > 22",
							["Ability"] = "fury_of_air",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Fury of Air",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "artifact.alpha_wolf.rank > 0 & prev_gcd.1.feral_spirit",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "! buff.flametongue.up",
							["Ability"] = "flametongue",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flametongue",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck45",
							["Ability"] = "frostbrand",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frostbrand",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "buff.flametongue.remains < 6 + gcd & cooldown.doom_winds.remains < gcd * 2",
							["Ability"] = "flametongue",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flametongue (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 6 + gcd & cooldown.doom_winds.remains < gcd * 2",
							["Ability"] = "frostbrand",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frostbrand (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
					},
					["Script"] = "",
				}, -- [8]
				{
					["Default"] = true,
					["Specialization"] = 263,
					["Release"] = 20180122.221851,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "earthen_spike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earthen Spike",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.stormstrike.up",
							["Ability"] = "doom_winds",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Doom Winds",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "! buff.crash_lightning.up & active_enemies >= 2",
							["Ability"] = "crash_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crash Lightning",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "variable.stormTempests",
							["Ability"] = "windstrike",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Windstrike",
							["Args"] = "target_if=variable.stormTempests",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "windstrike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Windstrike (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
					},
					["Name"] = "SimC Enhancement: asc",
				}, -- [9]
				{
					["Default"] = true,
					["Name"] = "SimC Elemental: default",
					["Release"] = 20171129.171639,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = false,
							["Script"] = "target.health.pct < 25 || time > 0.500",
							["Ability"] = "heroism",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Heroism",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.fire_elemental.remains > 280 || target.time_to_die <= 60",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Potion",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "wind_shear",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Wind Shear",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.resonance_totem.remains < 2",
							["Ability"] = "totem_mastery",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Totem Mastery",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "fire_elemental",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Fire Elemental",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Ability"] = "storm_elemental",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Storm Elemental",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Ability"] = "elemental_mastery",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Elemental Mastery",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Use Items",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
							["Ability"] = "blood_fury",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blood Fury",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! talent.ascendance.enabled || buff.ascendance.up",
							["Ability"] = "berserking",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Berserking",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 2",
							["Ability"] = "run_action_list",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Run Action List",
							["Args"] = "name=\"SimC Elemental: AOE\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "SimC Elemental: AOE",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "talent.ascendance.enabled || \n( ! talent.ascendance.enabled & ! talent.lightning_rod.enabled & ! talent.icefury.enabled )",
							["Ability"] = "run_action_list",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Run Action List (1)",
							["Args"] = "name=\"SimC Elemental: single asc\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "SimC Elemental: single asc",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "talent.icefury.enabled",
							["Ability"] = "run_action_list",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Run Action List (2)",
							["Args"] = "name=\"SimC Elemental: single if\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "SimC Elemental: single if",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "talent.lightning_rod.enabled",
							["Ability"] = "run_action_list",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Run Action List (3)",
							["Args"] = "name=\"SimC Elemental: single lr\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "SimC Elemental: single lr",
						}, -- [14]
					},
					["Specialization"] = 262,
				}, -- [10]
				{
					["Default"] = true,
					["Name"] = "SimC Elemental: precombat",
					["Release"] = 20171125.213329,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Potion",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "totem_mastery",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Totem Mastery",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "stormkeeper",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormkeeper",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
					},
					["Specialization"] = 262,
				}, -- [11]
				{
					["Script"] = "",
					["Default"] = true,
					["Specialization"] = 262,
					["Release"] = 20171125.213329,
					["ReadyTime"] = "dot.flame_shock.remains-(debuff.flame_shock.duration*0.3)",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "! ticking || dot.flame_shock.remains <= gcd",
							["Ability"] = "flame_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flame Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.echoes_of_the_great_sundering.up & ! buff.ascendance.up",
							["Ability"] = "earthquake",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earthquake",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "elemental_blast",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Elemental Blast",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 117 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 92",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "stormkeeper",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormkeeper",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Ability"] = "liquid_magma_totem",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Liquid Magma Totem",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "dot.flame_shock.remains > cast_time & cooldown_react",
							["Ability"] = "lava_burst",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Burst",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current >= 20 & buff.elemental_focus.up ) & ( refreshable )",
							["Ability"] = "flame_shock",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (1)",
							["Args"] = "target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 111 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 86 || equipped.smoldering_heart & equipped.the_deceivers_blood_pact & maelstrom.current > 70 & talent.aftershock.enabled",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "buff.resonance_totem.remains < 10 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
							["Ability"] = "totem_mastery",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Totem Mastery",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "( buff.power_of_the_maelstrom.up & active_enemies < 3 ) & ( debuff.lightning_rod.down )",
							["Ability"] = "lightning_bolt",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt",
							["Args"] = "target_if=debuff.lightning_rod.down",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "buff.power_of_the_maelstrom.up & active_enemies < 3",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "( active_enemies > 1 & active_enemies > 1 ) & ( debuff.lightning_rod.down )",
							["Ability"] = "chain_lightning",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Chain Lightning",
							["Args"] = "target_if=debuff.lightning_rod.down",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1 & active_enemies > 1",
							["Ability"] = "chain_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Chain Lightning (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "debuff.lightning_rod.down",
							["Ability"] = "lightning_bolt",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (2)",
							["Args"] = "target_if=debuff.lightning_rod.down",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (3)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
						{
							["Enabled"] = true,
							["Script"] = "refreshable",
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (2)",
							["Args"] = "moving=1,target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [17]
						{
							["Enabled"] = true,
							["Ability"] = "earth_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Earth Shock (2)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [18]
						{
							["Enabled"] = true,
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (3)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [19]
					},
					["Name"] = "SimC Elemental: single lr",
				}, -- [12]
				{
					["Script"] = "",
					["Default"] = true,
					["Specialization"] = 262,
					["Release"] = 20171125.213329,
					["ReadyTime"] = "dot.flame_shock.remains-(debuff.flame_shock.duration*0.3)",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "! ticking || dot.flame_shock.remains <= gcd",
							["Ability"] = "flame_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flame Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.echoes_of_the_great_sundering.up & ! buff.ascendance.up",
							["Ability"] = "earthquake",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earthquake",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "elemental_blast",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Elemental Blast",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current >= 111 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 92 ) & buff.earthen_strength.up",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "buff.icefury.up & maelstrom.current >= 20 & ! buff.ascendance.up & buff.earthen_strength.up",
							["Ability"] = "frost_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frost Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 117 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 92",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Ability"] = "stormkeeper",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormkeeper",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current <= 101 & artifact.swelling_maelstrom.enabled || ! artifact.swelling_maelstrom.enabled & maelstrom.current <= 76 ) & ! buff.ascendance.up",
							["Ability"] = "icefury",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Icefury",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Ability"] = "liquid_magma_totem",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Liquid Magma Totem",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "buff.power_of_the_maelstrom.up & buff.stormkeeper.up & active_enemies < 3",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "dot.flame_shock.remains > cast_time & cooldown_react",
							["Ability"] = "lava_burst",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Burst",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "buff.icefury.up & ( ( maelstrom.current >= 20 ) || buff.icefury.remains < ( 1.5 * spell_haste * buff.icefury.stack + 1 ) )",
							["Ability"] = "frost_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Frost Shock (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current >= 20 & buff.elemental_focus.up ) & ( refreshable )",
							["Ability"] = "flame_shock",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (1)",
							["Args"] = "target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "buff.icefury.up",
							["Ability"] = "frost_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Frost Shock (2)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 111 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 86 || equipped.smoldering_heart & equipped.the_deceivers_blood_pact & maelstrom.current > 70 & talent.aftershock.enabled & buff.earthen_strength.up",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "buff.resonance_totem.remains < 10",
							["Ability"] = "totem_mastery",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Totem Mastery",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
						{
							["Enabled"] = true,
							["Script"] = "buff.power_of_the_maelstrom.up & active_enemies < 3",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [17]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1 & active_enemies > 1",
							["Ability"] = "chain_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Chain Lightning",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [18]
						{
							["Enabled"] = true,
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [19]
						{
							["Enabled"] = true,
							["Script"] = "refreshable",
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (2)",
							["Args"] = "moving=1,target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [20]
						{
							["Enabled"] = true,
							["Ability"] = "earth_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Earth Shock (3)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [21]
						{
							["Enabled"] = true,
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (3)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [22]
					},
					["Name"] = "SimC Elemental: single if",
				}, -- [13]
				{
					["Script"] = "",
					["Specialization"] = 262,
					["Default"] = true,
					["Release"] = 20171125.213329,
					["ReadyTime"] = "dot.flame_shock.remains-(debuff.flame_shock.duration*0.3)",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "stormkeeper",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormkeeper",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "ascendance",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ascendance",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "liquid_magma_totem",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Liquid Magma Totem",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "( active_enemies < 4 & maelstrom.current >= 20 ) & ( refreshable )",
							["Ability"] = "flame_shock",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Flame Shock",
							["Args"] = "target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "earthquake",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earthquake",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "dot.flame_shock.remains > cast_time & buff.lava_surge.up & ! talent.lightning_rod.enabled & active_enemies < 4",
							["Ability"] = "lava_burst",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Burst",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "! talent.lightning_rod.enabled & active_enemies < 5 || talent.lightning_rod.enabled & active_enemies < 4",
							["Ability"] = "elemental_blast",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Elemental Blast",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "lava_beam",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Beam",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "debuff.lightning_rod.down",
							["Ability"] = "chain_lightning",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Chain Lightning",
							["Args"] = "target_if=debuff.lightning_rod.down",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Ability"] = "chain_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Chain Lightning (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Ability"] = "lava_burst",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Lava Burst (1)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "refreshable",
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (1)",
							["Args"] = "moving=1,target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [12]
					},
					["Name"] = "SimC Elemental: AOE",
				}, -- [14]
				{
					["Name"] = "SimC Elemental: single asc",
					["Script"] = "",
					["Default"] = true,
					["Release"] = 20171217.14241,
					["ReadyTime"] = "remains-buff.ascendance.duration",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "dot.flame_shock.remains > buff.ascendance.duration & cooldown.lava_burst.remains > 0 & ! buff.stormkeeper.up",
							["Ability"] = "ascendance",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ascendance",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! ticking || dot.flame_shock.remains <= gcd",
							["Ability"] = "flame_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flame Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 20 & remains <= buff.ascendance.duration & cooldown.ascendance.remains + buff.ascendance.duration <= duration",
							["Ability"] = "flame_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Flame Shock (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.echoes_of_the_great_sundering.up & ! buff.ascendance.up",
							["Ability"] = "earthquake",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earthquake",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "elemental_blast",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Elemental Blast",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 117 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 92",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Ability"] = "stormkeeper",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Stormkeeper",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "liquid_magma_totem",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Liquid Magma Totem",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "buff.power_of_the_maelstrom.up & buff.stormkeeper.up & active_enemies < 3",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "dot.flame_shock.remains > cast_time & ( cooldown_react || buff.ascendance.up )",
							["Ability"] = "lava_burst",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Burst",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "( maelstrom.current >= 20 & buff.elemental_focus.up ) & ( refreshable )",
							["Ability"] = "flame_shock",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (2)",
							["Args"] = "target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "maelstrom.current >= 111 || ! artifact.swelling_maelstrom.enabled & maelstrom.current >= 86 || equipped.smoldering_heart & equipped.the_deceivers_blood_pact & maelstrom.current > 70 & talent.aftershock.enabled",
							["Ability"] = "earth_shock",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Earth Shock (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "buff.resonance_totem.remains < 10 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
							["Ability"] = "totem_mastery",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Totem Mastery",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1 & active_enemies > 1",
							["Ability"] = "lava_beam",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lava Beam",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "buff.power_of_the_maelstrom.up & active_enemies < 3",
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1 & active_enemies > 1",
							["Ability"] = "chain_lightning",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Chain Lightning",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
						{
							["Enabled"] = true,
							["Ability"] = "lightning_bolt",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lightning Bolt (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [17]
						{
							["Enabled"] = true,
							["Script"] = "refreshable",
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (3)",
							["Args"] = "moving=1,target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [18]
						{
							["Enabled"] = true,
							["Ability"] = "earth_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Earth Shock (2)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [19]
						{
							["Enabled"] = true,
							["Ability"] = "flame_shock",
							["CheckMovement"] = true,
							["Moving"] = 1,
							["ModVarName"] = "",
							["Name"] = "Flame Shock (4)",
							["Args"] = "moving=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [20]
					},
					["Specialization"] = 262,
				}, -- [15]
			},
			["Class Option: forecast_swings"] = true,
			["displays"] = {
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Primary Caption Aura"] = "Stormbringer",
					["primaryIconSize"] = 50,
					["showAuraInfo"] = true,
					["quickStyle"] = "a",
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = "SimC Enhancement: precombat",
							["Name"] = "SimC Enhancement: precombat",
							["Release"] = 20161003,
							["Script"] = "time=0",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = "SimC Enhancement: default",
							["Name"] = "SimC Enhancement: default",
							["Release"] = 20161003,
						}, -- [2]
					},
					["Script"] = "",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["y"] = -210,
					["yOffsetKBs"] = -2,
					["Release"] = 20180205.20122,
					["delayFontSize"] = 12,
					["Copy To"] = "Enhancement Single-Target",
					["targetFontSize"] = 12,
					["auraSpellID"] = 201845,
					["Specialization"] = 263,
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["Talent Group"] = 0,
					["Default"] = true,
					["queuedIconSize"] = 50,
					["simpleAOE"] = 3,
					["font"] = "Arial Narrow",
					["Primary Caption"] = "sratio",
					["Name"] = "Enhancement Primary",
					["queuedFontSize"] = 12,
					["Maximum Time"] = 30,
					["x"] = -82,
					["showSwitchAOE"] = true,
					["displayType"] = "a",
				}, -- [1]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Primary Caption Aura"] = "Stormbringer",
					["queuedIconHeight"] = 30,
					["queuedIconSize"] = 40,
					["Maximum Time"] = 30,
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = "SimC Enhancement: precombat",
							["Name"] = "SimC Enhancement: precombat",
							["Release"] = 201506.221,
							["Script"] = "time=0",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = "SimC Enhancement: default",
							["Name"] = "SimC Enhancement: default",
							["Release"] = 201506.221,
						}, -- [2]
					},
					["showSwitchAE"] = false,
					["showAuto"] = false,
					["maxST"] = 0,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["xOffsetKBs"] = 0,
					["x"] = -82,
					["Primary Caption"] = "sratio",
					["delayFontSize"] = 12,
					["primaryIconHeight"] = 30,
					["showAE"] = false,
					["Specialization"] = 263,
					["minST"] = 3,
					["targetFontSize"] = 12,
					["Copy To"] = "Enhancement AOE",
					["y"] = -165,
					["font"] = "Arial Narrow",
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["primaryIconSize"] = 40,
					["simpleAOE"] = 3,
					["Release"] = 20180205.20122,
					["quickVisStyle"] = "b",
					["Talent Group"] = 0,
					["yOffsetKBs"] = 0,
					["Name"] = "Enhancement AOE",
					["queuedFontSize"] = 12,
					["Script"] = "single",
					["minAuto"] = 3,
					["Default"] = true,
					["displayType"] = "c",
				}, -- [2]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Specialization"] = 262,
					["Primary Caption Aura"] = "",
					["Primary Caption"] = "targets",
					["Name"] = "Elemental Primary",
					["delayFontSize"] = 12,
					["queuedIconSize"] = 40,
					["x"] = -82,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["primaryIconSize"] = 40,
					["Talent Group"] = 0,
					["Maximum Time"] = 30,
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = "SEL Elemental Precombat",
							["Name"] = "SEL Elemental Precombat",
							["Release"] = 20161003,
							["Script"] = "time=0",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = "SEL Elemental Default",
							["Name"] = "SEL Elemental Default",
							["Release"] = 20161003,
							["Script"] = "",
						}, -- [2]
					},
					["Script"] = "",
					["defaultAPL"] = 10,
					["Copy To"] = "Elemental AOE",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 11,
					["showCaptions"] = true,
					["y"] = -210,
					["font"] = "Arial Narrow",
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Release"] = 20180205.20044,
					["visibilityType"] = "a",
					["showSwitchAOE"] = true,
					["displayType"] = "a",
				}, -- [3]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Primary Caption Aura"] = "Flame Shock",
					["queuedIconHeight"] = 30,
					["primaryIconSize"] = 40,
					["minAE"] = 2,
					["Maximum Time"] = 30,
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = 8,
							["Name"] = "SEL Elemental Precombat",
							["Release"] = 20161003,
							["Script"] = "time=0",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = 6,
							["Name"] = "SEL Elemental Default",
							["Release"] = 20161003.1,
							["Script"] = "",
						}, -- [2]
					},
					["showSwitchAE"] = false,
					["showAuto"] = false,
					["maxST"] = 0,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 11,
					["xOffsetKBs"] = 0,
					["yOffsetKBs"] = 0,
					["Release"] = 20180205.20044,
					["delayFontSize"] = 12,
					["primaryIconHeight"] = 30,
					["showAE"] = false,
					["Copy To"] = "Elemental AOE",
					["minST"] = 2,
					["targetFontSize"] = 12,
					["Specialization"] = 262,
					["Name"] = "Elemental AOE",
					["simpleAOE"] = 3,
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 10,
					["Primary Caption"] = "ratio",
					["displayType"] = "c",
					["x"] = -82,
					["Talent Group"] = 0,
					["Script"] = "single",
					["y"] = -165,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["queuedIconSize"] = 40,
					["minAuto"] = 2,
					["font"] = "Arial Narrow",
					["quickVisStyle"] = "b",
				}, -- [4]
			},
			["Class Option: t20_stack_threshold"] = 12,
			["Class Option: optimistic_overload"] = false,
			["runOnce"] = {
				["useNewAPLsForDemonHunters_06132017_1"] = true,
				["removeActionListEnabled_04102017"] = true,
				["reduceExtremeZoom_12182017"] = true,
				["changeSwipesToSwipe_11052017"] = true,
				["elementalSimpleAOEis3_12132017"] = true,
				["turnOffDebug_04162017"] = true,
				["removeExtraQuotes_04142017_3"] = true,
				["changeThrashCatToThrash_11062017"] = true,
				["forceRetToRefreshAPLsFor730_09012017"] = true,
				["disableTrinketsForMonks_10102017"] = true,
				["attachDefaultAPLs_04022017"] = true,
				["spruceUpActionListNames_04162017"] = true,
				["changeGuardianAPLToSimC_2018012102"] = true,
				["setDisplayTypes_04022017"] = true,
				["undoIncarnationNameChange_12042017"] = true,
				["disableSpecterForPaladins_10102017"] = true,
				["dontDisableGlobalCooldownYouFools_05232017"] = true,
				["changeBrewmasterAPLToSimC_20180121"] = true,
			},
			["Class Option: save_for_aoe"] = false,
			["Toggle State: save_earthen_spike"] = false,
			["Class Option: allow_dw_desync"] = true,
			["Class Option: forecast_fury"] = true,
			["clashes"] = {
				["windstrike"] = 0.25,
			},
			["Toggle State: hold_t20_stacks"] = false,
		},
		["Tsuka - Moonglade"] = {
			["displays"] = {
				{
					["queuedIconSize"] = 50,
					["y"] = -230,
					["Specialization"] = 103,
					["Default"] = true,
					["displayType"] = "a",
					["kbFontSize"] = 12,
					["Copy To"] = "Feral AOE",
					["Name"] = "Feral Primary",
					["x"] = -83,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["Release"] = 20171207.215448,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["captionFontSize"] = 12,
					["primaryIconSize"] = 50,
					["queuedFontSize"] = 12,
					["defaultAPL"] = 2,
				}, -- [1]
				{
					["captionFontSize"] = 12,
					["primaryIconSize"] = 40,
					["showSwitchAE"] = false,
					["showAuto"] = false,
					["x"] = -135,
					["queuedIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["Copy To"] = "Feral AOE",
					["numIcons"] = 1,
					["queuedIconSize"] = 40,
					["Default"] = true,
					["displayType"] = "c",
					["quickVisStyle"] = "b",
					["kbFontSize"] = 12,
					["queuedIconHeight"] = 40,
					["primaryIconWidth"] = 40,
					["Specialization"] = 103,
					["defaultAPL"] = 2,
					["y"] = -230,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["showAE"] = false,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["Release"] = 20171207.215448,
					["queuedFontSize"] = 12,
					["Name"] = "Feral AOE",
				}, -- [2]
				{
					["queuedIconSize"] = 50,
					["Specialization"] = 104,
					["defaultAPL"] = 14,
					["Default"] = true,
					["kbFontSize"] = 12,
					["x"] = -81.0000076293945,
					["y"] = -239.999954223633,
					["Name"] = "Guardian Primary",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 15,
					["primaryIconSize"] = 50,
					["Release"] = 20180121.231355,
					["captionFontSize"] = 12,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["queuedFontSize"] = 12,
					["displayType"] = "a",
				}, -- [3]
				{
					["captionFontSize"] = 12,
					["queuedIconHeight"] = 40,
					["queuedIconSize"] = 40,
					["y"] = -128.999816894531,
					["x"] = -225,
					["queuedIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["Specialization"] = 104,
					["numIcons"] = 1,
					["primaryIconSize"] = 40,
					["Default"] = true,
					["defaultAPL"] = 12,
					["primaryIconWidth"] = 40,
					["kbFontSize"] = 12,
					["primaryFontSize"] = 12,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["Release"] = 20180121.231355,
					["queuedFontSize"] = 12,
					["Name"] = "Guardian Defensives",
				}, -- [4]
			},
			["Class Option: tf_overlap"] = 2,
			["Class Option: tf_restrictions"] = 1,
			["Class Option: regrowth_instant"] = true,
			["Class Option: brutal_charges"] = 2,
			["Class Option: tf_energy"] = 60,
			["actionLists"] = {
				{
					["Specialization"] = 0,
					["Default"] = true,
					["Hidden"] = true,
					["Release"] = 20180208.181753,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Draught of Souls",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Ability"] = "draught_of_souls",
							["Resources"] = {
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Faulty Countermeasure",
							["Ability"] = "faulty_countermeasure",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Fel-Oiled Infernal Machine",
							["Indicator"] = "none",
							["Ability"] = "feloiled_infernal_machine",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "Forgefiend's Fabricator",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "forgefiends_fabricator",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Horn of Valor",
							["Indicator"] = "none",
							["Ability"] = "horn_of_valor",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Kil'jaeden's Burning Wish",
							["Ability"] = "kiljaedens_burning_wish",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [6]
						{
							["Enabled"] = true,
							["Name"] = "Might of Krosus",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "might_of_krosus",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [7]
						{
							["Enabled"] = true,
							["Name"] = "Ring of Collapsing Futures",
							["Indicator"] = "none",
							["Ability"] = "ring_of_collapsing_futures",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Specter of Betrayal",
							["Ability"] = "specter_of_betrayal",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Tome of Unraveling Sanity",
							["Ability"] = "tome_of_unraveling_sanity",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Umbral Moonglaives",
							["Ability"] = "umbral_moonglaives",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Vial of Ceaseless Toxins",
							["Ability"] = "vial_of_ceaseless_toxins",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [12]
					},
					["Name"] = "Usable Items",
				}, -- [1]
				{
					["Default"] = true,
					["Name"] = "SimC Feral: default",
					["Specialization"] = 103,
					["Release"] = 20180205.201654,
					["ReadyTime"] = "ticking and ( 0.05 + remains - ( duration * 0.3 ) ) or 0",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "skull_bash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Skull Bash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "equipped.luffa_wrapping & 1 || 0",
							["Ability"] = "variable",
							["Indicator"] = "none",
							["ModVarName"] = "use_thrash",
							["Name"] = "Store Value",
							["Args"] = "name=use_thrash,value=equipped.luffa_wrapping&1||0",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "active_dot.rip > 0 || time > 15",
							["Ability"] = "run_action_list",
							["Indicator"] = "none",
							["StrictCheck"] = true,
							["ModVarName"] = "",
							["Resources"] = {
							},
							["Name"] = "Run Action List",
							["Args"] = "name=\"SimC Feral: single target\"",
							["Release"] = 201710,
							["ShowModifiers"] = true,
							["CheckMovement"] = false,
							["ModName"] = "SimC Feral: single target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "! ticking || buff.prowl.up || buff.shadowmeld.up",
							["Ability"] = "rake",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rake",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "! buff.cat_form.up",
							["Ability"] = "dash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Dash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "talent.lunar_inspiration.enabled & ! ticking",
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Moonfire",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "! buff.savage_roar.up",
							["Ability"] = "savage_roar",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Savage Roar",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "berserk",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Berserk",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Ability"] = "incarnation",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Incarnation: King of the Jungle",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Ability"] = "tigers_fury",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Tiger's Fury",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Ability"] = "ashamanes_frenzy",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ashamane's Frenzy",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "( talent.sabertooth.enabled || buff.predatory_swiftness.up ) & talent.bloodtalons.enabled & buff.bloodtalons.down & combo_points.current = 5",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current = 5",
							["Ability"] = "rip",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rip",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "! ticking & variable.use_thrash > 0",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1",
							["Name"] = "Swipe",
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [15]
						{
							["Enabled"] = true,
							["Ability"] = "shred",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Shred",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
					},
					["Script"] = "",
				}, -- [2]
				{
					["Name"] = "SimC Feral: precombat",
					["Specialization"] = 103,
					["Release"] = 20180205.201654,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "talent.bloodtalons.enabled",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "prowl",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Prowl",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "cat_form",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Cat Form",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Potion",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
					},
					["Default"] = true,
				}, -- [3]
				{
					["Specialization"] = 103,
					["Name"] = "SimC Feral: cooldowns",
					["Default"] = true,
					["Release"] = 20180205.201654,
					["ReadyTime"] = "energy.time_to_30",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "! buff.cat_form.up",
							["Ability"] = "dash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Dash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.incarnation.remains < 0.5 & buff.jungle_stalker.up",
							["Ability"] = "prowl",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Prowl",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "energy.current >= 30 & ( cooldown.tigers_fury.remains > 5 || buff.tigers_fury.up )",
							["Ability"] = "berserk",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Berserk",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "energy.deficit >= 60",
							["Ability"] = "tigers_fury",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Tiger's Fury",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "berserking",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Berserking",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current = 0 & energy.current >= 50",
							["Ability"] = "elunes_guidance",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Elune's Guidance",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "energy.current >= 30 & ( cooldown.tigers_fury.remains > 15 || buff.tigers_fury.up )",
							["Ability"] = "incarnation",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Incarnation: King of the Jungle",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Potion",
							["Args"] = "name=\"prolonged_power\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "prolonged_power",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current >= 2 & ( ! talent.bloodtalons.enabled || buff.bloodtalons.up )",
							["Ability"] = "ashamanes_frenzy",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ashamane's Frenzy",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current < 5 & energy.current >= action.rake.cost & dot.rake.pmultiplier < 2.1 & buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.incarnation.enabled || cooldown.incarnation.remains > 18 ) & ! buff.incarnation.up",
							["Ability"] = "shadowmeld",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Shadowmeld",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "! prowling",
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Use Items",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
					},
					["Script"] = "",
				}, -- [4]
				{
					["Name"] = "SimC Feral: single target",
					["Specialization"] = 103,
					["Default"] = true,
					["Release"] = 20180205.201654,
					["ReadyTime"] = "ticking and ( 0.05 + remains - ( duration * 0.3 ) ) or 0",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "! buff.cat_form.up",
							["Ability"] = "cat_form",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Cat Form",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.prowl.up || buff.shadowmeld.up",
							["Ability"] = "rake",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rake",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List",
							["Args"] = "name=\"SimC Feral: cooldowns\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Feral: cooldowns",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > 10 & ( target.health.pct < 25 || talent.sabertooth.enabled )",
							["Ability"] = "ferocious_bite",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ferocious Bite",
							["Args"] = "target_if=dot.rip.ticking&dot.rip.remains<3&target.time_to_die>10&(target.health.pct<25||talent.sabertooth.enabled)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current = 5 & buff.predatory_swiftness.up & talent.bloodtalons.enabled & buff.bloodtalons.down & ( ! buff.incarnation.up || dot.rip.remains < 8 )",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current > 3 & talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.apex_predator.up & buff.incarnation.down",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "buff.apex_predator.up& ( ( combo_points.current > 4 & ( buff.incarnation.up || talent.moment_of_clarity.enabled ) ) || ( talent.bloodtalons.enabled & buff.bloodtalons.up & combo_points.current > 3 ) )\n",
							["Ability"] = "ferocious_bite",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ferocious Bite (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "combo_points.current > 4",
							["Ability"] = "run_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Run Action List",
							["Args"] = "name=\"SimC Feral: ST finishers\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Feral: ST finishers",
						}, -- [8]
						{
							["Enabled"] = true,
							["Ability"] = "run_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Run Action List (1)",
							["Args"] = "name=\"SimC Feral: ST generators\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Feral: ST generators",
						}, -- [9]
					},
					["Script"] = "",
				}, -- [5]
				{
					["Specialization"] = 103,
					["Script"] = "",
					["Name"] = "SimC Feral: ST finishers",
					["Release"] = 20180205.201654,
					["ReadyTime"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "buff.savage_roar.down",
							["Ability"] = "savage_roar",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Savage Roar",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (1)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "! ticking || \n( remains <= duration * 0.3 ) & ( target.health.pct > 25 & ! talent.sabertooth.enabled ) ||\n( remains <= duration * 0.8 & persistent_multiplier > dot.rip.pmultiplier ) & target.time_to_die > 8 \n",
							["Ability"] = "rip",
							["Indicator"] = "none",
							["whenReady"] = "auto",
							["ModVarName"] = "",
							["ReadyTime"] = "",
							["Name"] = "Rip",
							["Args"] = "target_if=!ticking||(remains<=duration*0.3)&(target.health.pct>25&!talent.sabertooth.enabled)||(remains<=duration*0.8&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>8",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (2)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "buff.savage_roar.remains < 12",
							["Ability"] = "savage_roar",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Savage Roar (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "buff.fiery_red_maimers.up",
							["Ability"] = "maim",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Maim",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "ferocious_bite",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ferocious Bite",
							["Args"] = "max_energy=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
					},
					["Default"] = true,
				}, -- [6]
				{
					["Specialization"] = 103,
					["Script"] = "",
					["Name"] = "SimC Feral: ST generators",
					["Release"] = 20180205.201654,
					["ReadyTime"] = "ticking and ( 0.01 + remains - ( duration * 0.3 ) ) or 0",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.bloodtalons.down & combo_points.current >= 2 & cooldown.ashamanes_frenzy.remains < gcd",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.bloodtalons.down & combo_points.current = 4 & dot.rake.remains < 4",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "equipped.ailuro_pouncers & talent.bloodtalons.enabled & ( buff.predatory_swiftness.stack > 2 || ( buff.predatory_swiftness.stack > 1 & dot.rake.remains < 3 ) ) & buff.bloodtalons.down",
							["Ability"] = "regrowth",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Regrowth (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1",
							["Ability"] = "brutal_slash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Brutal Slash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "refreshable & ( active_enemies > 2 )",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (1)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 3 & equipped.luffa_wrappings & talent.brutal_slash.enabled",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (2)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! ticking || ( ! talent.bloodtalons.enabled & remains < duration * 0.3 ) & target.time_to_die > 4",
							["Ability"] = "rake",
							["Indicator"] = "none",
							["whenReady"] = "auto",
							["ModVarName"] = "",
							["Resources"] = {
							},
							["Name"] = "Rake",
							["Args"] = "target_if=!ticking||(!talent.bloodtalons.enabled&remains<duration*0.3)&target.time_to_die>4",
							["Release"] = 201710,
							["ReadyTime"] = "ticking and ( 0.01 + remains - ( duration * 0.3 ) ) or 0",
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (3)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "talent.bloodtalons.enabled & buff.bloodtalons.up & ( ( remains <= 7 ) & persistent_multiplier > dot.rake.pmultiplier * 0.85 ) & target.time_to_die > 4",
							["Ability"] = "rake",
							["Indicator"] = "none",
							["whenReady"] = "auto",
							["ModVarName"] = "",
							["Resources"] = {
							},
							["Name"] = "Rake (1)",
							["Args"] = "target_if=talent.bloodtalons.enabled&buff.bloodtalons.up&((remains<=7)&persistent_multiplier>dot.rake.pmultiplier*0.85)&target.time_to_die>4",
							["Release"] = 201710,
							["ReadyTime"] = "ticking and ( 0.01 + remains - 7 ) or 0",
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = " buff.tigers_fury.up",
							["Ability"] = "brutal_slash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Brutal Slash (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "refreshable",
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Moonfire",
							["Args"] = "target_if=refreshable",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (4)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "refreshable & ( variable.use_thrash = 2 || active_enemies > 1 )",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
						{
							["Enabled"] = true,
							["Script"] = "refreshable & variable.use_thrash = 1 & buff.clearcasting.up",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash (3)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [17]
						{
							["Enabled"] = true,
							["Ability"] = "pool_resource",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["PoolForNext"] = true,
							["Name"] = "Pool Resource (5)",
							["Args"] = "for_next=1",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [18]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1",
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Swipe",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [19]
						{
							["Enabled"] = true,
							["Script"] = "dot.rake.remains > ( action.shred.cost + action.rake.cost - energy.current ) % energy.regen || buff.clearcasting.up",
							["Ability"] = "shred",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Shred",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [20]
					},
					["Default"] = true,
				}, -- [7]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Use Items",
							["Resources"] = {
							},
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Name"] = "Mangle",
							["Resources"] = {
							},
							["Ability"] = "mangle",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Moonfire",
							["Resources"] = {
							},
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "buff.galactic_guardian.up",
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "Thrash",
							["Resources"] = {
							},
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Pulverize",
							["Ability"] = "pulverize",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Script"] = "debuff.thrash_bear.stack = 5 || ( buff.pulverize.refreshable & debuff.thrash_bear.stack > 1 )",
						}, -- [5]
						{
							["Enabled"] = true,
							["Name"] = "Moonfire (1)",
							["Ability"] = "moonfire",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Script"] = "debuff.moonfire.remains <= gcd",
						}, -- [6]
						{
							["Enabled"] = true,
							["Name"] = "Maul",
							["Ability"] = "maul",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Script"] = "! tanking || rage.current > 60",
						}, -- [7]
						{
							["Enabled"] = true,
							["Name"] = "Swipe",
							["Ability"] = "swipe",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Script"] = "",
						}, -- [8]
					},
					["Name"] = "IV Guardian: Single",
				}, -- [8]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "",
							["Indicator"] = "none",
							["Ability"] = "use_items",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Use Items",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Indicator"] = "none",
							["Ability"] = "thrash",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Thrash",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Indicator"] = "none",
							["Ability"] = "mangle",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Mangle",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.galactic_guardian.up",
							["Indicator"] = "none",
							["Ability"] = "moonfire",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Moonfire",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "debuff.thrash_bear.stack = 5 || ( buff.pulverize.refreshable & debuff.thrash_bear.stack > 1 )",
							["Release"] = 201710,
							["Ability"] = "pulverize",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Name"] = "Pulverize",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "debuff.moonfire.remains<=gcd",
							["Release"] = 201710,
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Name"] = "Moonfire (1)",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "! tanking || rage.current > 60",
							["Release"] = 201710,
							["Ability"] = "maul",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Name"] = "Maul",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Release"] = 201710,
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Name"] = "Swipe",
						}, -- [8]
					},
					["Name"] = "IV Guardian: 2-3",
				}, -- [9]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "",
							["Indicator"] = "none",
							["Ability"] = "use_items",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Use Items",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Indicator"] = "none",
							["Ability"] = "thrash",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Thrash",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Indicator"] = "none",
							["Ability"] = "mangle",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Mangle",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.galactic_guardian.up",
							["Indicator"] = "none",
							["Ability"] = "moonfire",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Moonfire",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "debuff.thrash_bear.stack = 5 || ( buff.pulverize.refreshable & debuff.thrash_bear.stack > 1 )",
							["Release"] = 201710,
							["Ability"] = "pulverize",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Name"] = "Pulverize",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Release"] = 201710,
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Name"] = "Swipe",
						}, -- [6]
					},
					["Name"] = "IV Guardian: 4+",
				}, -- [10]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Bear Form",
							["Resources"] = {
							},
							["Ability"] = "bear_form",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "buff.bear_form.down",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies = 1",
							["Name"] = "Single Target",
							["Ability"] = "run_action_list",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["ModName"] = "IV Guardian: Single",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 1 & active_enemies < 4",
							["Name"] = "2-3 Targets",
							["Ability"] = "call_action_list",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["ModName"] = "IV Guardian: 2-3",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies > 3",
							["Name"] = "4+ Targets",
							["Ability"] = "call_action_list",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["ModName"] = "IV Guardian: 4+",
						}, -- [4]
					},
					["Name"] = "IV Guardian: Default",
				}, -- [11]
				{
					["Specialization"] = 104,
					["Name"] = "IV Guardian: Defensives",
					["Release"] = 20180205.201654,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "health.current < health.max * 0.8 & ( charges = 3 || incoming_damage_5s > health.max * 0.25 ) ",
							["Name"] = "Frenzied Regeneration",
							["Ability"] = "frenzied_regeneration",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = " incoming_damage_5s > health.current * 0.2",
							["Name"] = "Ironfur",
							["Ability"] = "ironfur",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "tanking & incoming_damage_3s > health.max * 0.25",
							["Name"] = "Survival Instincts",
							["Ability"] = "survival_instincts",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "tanking & incoming_damage_5s > health.max * 0.25",
							["Name"] = "Barkskin",
							["Ability"] = "barkskin",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [4]
					},
					["Default"] = true,
				}, -- [12]
				{
					["Script"] = "",
					["Default"] = true,
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "buff.rage_of_the_sleeper.up",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "blood_fury",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blood Fury",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "berserking",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Berserking",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "arcane_torrent",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Arcane Torrent",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Ability"] = "rage_of_the_sleeper",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rage of the Sleeper",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Ability"] = "incarnation",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Incarnation: King of the Jungle",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "talent.brambles.enabled & ( buff.rage_of_the_sleeper.up || talent.survival_of_the_fittest.enabled )",
							["Ability"] = "barkskin",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Barkskin",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.rage_of_the_sleeper.remains > 12 || buff.rage_of_the_sleeper.up || ( boss & target.time_to_die < 22 )",
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Use Items]|r",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
					},
					["Name"] = "SimC Guardian: cooldowns",
				}, -- [13]
				{
					["Script"] = "",
					["Default"] = true,
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Skull Bash",
							["Script"] = "",
							["Ability"] = "skull_bash",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r",
							["Args"] = "name=\"SimC Guardian: cooldowns\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Guardian: cooldowns",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.thrash_bear.remains > gcd & active_enemies > 1 & active_enemies < 6 || active_enemies = 1 & rage.deficit < 8",
							["Ability"] = "maul",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Maul",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.thrash_bear.remains < 2 & dot.thrash_bear.stack = dot.thrash_bear.max_stacks",
							["Ability"] = "pulverize",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Pulverize",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "! talent.galactic_guardian.enabled & ( ! dot.moonfire.ticking || ( buff.incarnation.up & dot.moonfire.refreshable ) ) & active_enemies = 1",
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Moonfire",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "( ( buff.incarnation.up & ( dot.thrash_bear.refreshable || ( equipped.luffa_wrappings || artifact.jagged_claws.rank > 4 ) ) ) || dot.thrash_bear.stack < dot.thrash_bear.max_stacks || ( equipped.luffa_wrappings & artifact.jagged_claws.rank > 5 ) ) & ! talent.soul_of_the_forest.enabled || active_enemies > 1",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies < 4",
							["Ability"] = "mangle",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Mangle",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Thrash (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "buff.galactic_guardian.up & ( ( ( ! variable.latc_or_fon_equipped & active_enemies < 4 ) || ( variable.latc_or_fon_equipped & active_enemies < 5 ) ) || dot.moonfire.refreshable & ( ! variable.latc_or_fon_equipped & active_enemies < 5 ) || ( variable.latc_or_fon_equipped & active_enemies < 6 ) )",
							["Ability"] = "moonfire",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Moonfire (1)",
							["Args"] = "target_if=buff.galactic_guardian.up&(((!variable.latc_or_fon_equipped&active_enemies<4)||(variable.latc_or_fon_equipped&active_enemies<5))||dot.moonfire.refreshable&(!variable.latc_or_fon_equipped&active_enemies<5)||(variable.latc_or_fon_equipped&active_enemies<6))",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "dot.moonfire.refreshable & ! talent.galactic_guardian.enabled",
							["Ability"] = "moonfire",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Moonfire (2)",
							["Args"] = "target_if=dot.moonfire.refreshable&!talent.galactic_guardian.enabled",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "active_enemies < 6 & ( cooldown.rage_of_the_sleeper.remains > 10 || buff.rage_of_the_sleeper.up )",
							["Ability"] = "maul",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Maul (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "dot.moonfire.refreshable & active_enemies < 3",
							["Ability"] = "moonfire",
							["CheckMovement"] = false,
							["ModVarName"] = "",
							["Name"] = "Moonfire (3)",
							["Args"] = "target_if=dot.moonfire.refreshable&active_enemies<3",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Swipe",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
					},
					["Name"] = "SimC Guardian: default",
				}, -- [14]
				{
					["Script"] = "",
					["Default"] = true,
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "equipped.lady_and_the_child || equipped.fury_of_nature",
							["Ability"] = "variable",
							["CheckMovement"] = false,
							["ModVarName"] = "latc_or_fon_equipped",
							["Name"] = "|cff00ccff[Store Value]|r",
							["Args"] = "name=latc_or_fon_equipped,value=equipped.lady_and_the_child||equipped.fury_of_nature",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Indicator"] = "none",
						}, -- [1]
						{
							["Enabled"] = true,
							["Ability"] = "bear_form",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Bear Form",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
					},
					["Name"] = "SimC Guardian: precombat",
				}, -- [15]
			},
			["runOnce"] = {
				["useNewAPLsForDemonHunters_06132017_1"] = true,
				["removeActionListEnabled_04102017"] = true,
				["reduceExtremeZoom_12182017"] = true,
				["changeSwipesToSwipe_11052017"] = true,
				["elementalSimpleAOEis3_12132017"] = true,
				["turnOffDebug_04162017"] = true,
				["removeExtraQuotes_04142017_3"] = true,
				["changeThrashCatToThrash_11062017"] = true,
				["forceRetToRefreshAPLsFor730_09012017"] = true,
				["disableTrinketsForMonks_10102017"] = true,
				["attachDefaultAPLs_04022017"] = true,
				["spruceUpActionListNames_04162017"] = true,
				["dontDisableGlobalCooldownYouFools_05232017"] = true,
				["disableSpecterForPaladins_10102017"] = true,
				["undoIncarnationNameChange_12042017"] = true,
				["setDisplayTypes_04022017"] = true,
				["changeGuardianAPLToSimC_2018012102"] = true,
				["changeBrewmasterAPLToSimC_20180121"] = true,
			},
		},
	},
}

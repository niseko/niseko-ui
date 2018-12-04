
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Nise - Stormscale"] = "Nise - Stormscale",
		["Zelda - Mal'Ganis"] = "Zelda - Mal'Ganis",
		["Nisepeg - Stormscale"] = "Nisepeg - Stormscale",
		["Niseniseko - Stormscale"] = "Niseniseko - Stormscale",
		["Yvera - Moonglade"] = "Yvera - Moonglade",
		["Niseko - Stormscale"] = "Niseko - Stormscale",
		["Nisetest - Stormscale"] = "Nisetest - Stormscale",
		["Niseko - Twisting Nether"] = "Niseko - Twisting Nether",
		["Nisedog - Stormscale"] = "Nisedog - Stormscale",
		["Donnerbock - Ysera"] = "Donnerbock - Ysera",
		["Vordt - Twisting Nether"] = "Vordt - Twisting Nether",
		["Nisegob - Stormscale"] = "Nisegob - Stormscale",
		["Nisefy - Stormscale"] = "Nisefy - Stormscale",
		["Nedoka - Antonidas"] = "Nedoka - Antonidas",
	},
	["profiles"] = {
		["Nise - Stormscale"] = {
			["actionLists"] = {
				{
					["Name"] = "Usable Items",
					["Specialization"] = 0,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Draught of Souls",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Ability"] = "draught_of_souls",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Resources"] = {
							},
							["Ability"] = "faulty_countermeasure",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Name"] = "Faulty Countermeasure",
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Fel-Oiled Infernal Machine",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "feloiled_infernal_machine",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "Forgefiend's Fabricator",
							["Resources"] = {
							},
							["Ability"] = "forgefiends_fabricator",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Horn of Valor",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "horn_of_valor",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Resources"] = {
							},
							["Ability"] = "kiljaedens_burning_wish",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Name"] = "Kil'jaeden's Burning Wish",
						}, -- [6]
						{
							["Enabled"] = true,
							["Name"] = "Might of Krosus",
							["Resources"] = {
							},
							["Ability"] = "might_of_krosus",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [7]
						{
							["Enabled"] = true,
							["Name"] = "Ring of Collapsing Futures",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "ring_of_collapsing_futures",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Resources"] = {
							},
							["Ability"] = "specter_of_betrayal",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Name"] = "Specter of Betrayal",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Indicator"] = "none",
							["Ability"] = "tome_of_unraveling_sanity",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Tome of Unraveling Sanity",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Resources"] = {
							},
							["Ability"] = "umbral_moonglaives",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Name"] = "Umbral Moonglaives",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Resources"] = {
							},
							["Ability"] = "vial_of_ceaseless_toxins",
							["Indicator"] = "none",
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
					["Script"] = "",
					["Default"] = true,
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
							["ModName"] = "SimC Feral: single target",
							["ModVarName"] = "",
							["CheckMovement"] = false,
							["Name"] = "Run Action List",
							["Args"] = "name=\"SimC Feral: single target\"",
							["Release"] = 201710,
							["ShowModifiers"] = true,
							["Resources"] = {
							},
							["StrictCheck"] = true,
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
							["Indicator"] = "none",
							["Ability"] = "swipe",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Swipe",
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
					["Name"] = "SimC Feral: default",
				}, -- [2]
				{
					["Name"] = "SimC Feral: precombat",
					["Default"] = true,
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
					["Specialization"] = 103,
				}, -- [3]
				{
					["Script"] = "",
					["Specialization"] = 103,
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
					["Name"] = "SimC Feral: cooldowns",
				}, -- [4]
				{
					["Script"] = "",
					["Name"] = "SimC Feral: single target",
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
					["Specialization"] = 103,
				}, -- [5]
				{
					["Default"] = true,
					["Specialization"] = 103,
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
							["CheckMovement"] = false,
							["Name"] = "Rip",
							["Args"] = "target_if=!ticking||(remains<=duration*0.3)&(target.health.pct>25&!talent.sabertooth.enabled)||(remains<=duration*0.8&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>8",
							["Release"] = 201710,
							["Resources"] = {
							},
							["ReadyTime"] = "",
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
					["Script"] = "",
				}, -- [6]
				{
					["Default"] = true,
					["Specialization"] = 103,
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
							["CheckMovement"] = false,
							["Name"] = "Rake",
							["Args"] = "target_if=!ticking||(!talent.bloodtalons.enabled&remains<duration*0.3)&target.time_to_die>4",
							["Release"] = 201710,
							["ReadyTime"] = "ticking and ( 0.01 + remains - ( duration * 0.3 ) ) or 0",
							["Resources"] = {
							},
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
							["CheckMovement"] = false,
							["Name"] = "Rake (1)",
							["Args"] = "target_if=talent.bloodtalons.enabled&buff.bloodtalons.up&((remains<=7)&persistent_multiplier>dot.rake.pmultiplier*0.85)&target.time_to_die>4",
							["Release"] = 201710,
							["ReadyTime"] = "ticking and ( 0.01 + remains - 7 ) or 0",
							["Resources"] = {
							},
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
					["Script"] = "",
				}, -- [7]
				{
					["Default"] = true,
					["Name"] = "IV Guardian: Single",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Use Items",
							["Script"] = "",
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Name"] = "Mangle",
							["Script"] = "",
							["Ability"] = "mangle",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Moonfire",
							["Script"] = "buff.galactic_guardian.up",
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "Thrash",
							["Script"] = "",
							["Ability"] = "thrash",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Pulverize",
							["Script"] = "debuff.thrash_bear.stack = 5 || ( buff.pulverize.refreshable & debuff.thrash_bear.stack > 1 )",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Ability"] = "pulverize",
						}, -- [5]
						{
							["Enabled"] = true,
							["Name"] = "Moonfire (1)",
							["Script"] = "debuff.moonfire.remains <= gcd",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Ability"] = "moonfire",
						}, -- [6]
						{
							["Enabled"] = true,
							["Name"] = "Maul",
							["Script"] = "! tanking || rage.current > 60",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Ability"] = "maul",
						}, -- [7]
						{
							["Enabled"] = true,
							["Name"] = "Swipe",
							["Script"] = "",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Ability"] = "swipe",
						}, -- [8]
					},
					["Script"] = "",
				}, -- [8]
				{
					["Default"] = true,
					["Name"] = "IV Guardian: 2-3",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Use Items",
							["Ability"] = "use_items",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Thrash",
							["Ability"] = "thrash",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Mangle",
							["Ability"] = "mangle",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.galactic_guardian.up",
							["Name"] = "Moonfire",
							["Ability"] = "moonfire",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "debuff.thrash_bear.stack = 5 || ( buff.pulverize.refreshable & debuff.thrash_bear.stack > 1 )",
							["Name"] = "Pulverize",
							["Ability"] = "pulverize",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Release"] = 201710,
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "debuff.moonfire.remains<=gcd",
							["Name"] = "Moonfire (1)",
							["Ability"] = "moonfire",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Release"] = 201710,
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "! tanking || rage.current > 60",
							["Name"] = "Maul",
							["Ability"] = "maul",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Release"] = 201710,
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Swipe",
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Release"] = 201710,
						}, -- [8]
					},
					["Script"] = "",
				}, -- [9]
				{
					["Default"] = true,
					["Name"] = "IV Guardian: 4+",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Use Items",
							["Ability"] = "use_items",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Thrash",
							["Ability"] = "thrash",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Mangle",
							["Ability"] = "mangle",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "buff.galactic_guardian.up",
							["Name"] = "Moonfire",
							["Ability"] = "moonfire",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "debuff.thrash_bear.stack = 5 || ( buff.pulverize.refreshable & debuff.thrash_bear.stack > 1 )",
							["Name"] = "Pulverize",
							["Ability"] = "pulverize",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Release"] = 201710,
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Swipe",
							["Ability"] = "swipe",
							["Indicator"] = "none",
							["Resources"] = {
							},
							["Release"] = 201710,
						}, -- [6]
					},
					["Script"] = "",
				}, -- [10]
				{
					["Default"] = true,
					["Name"] = "IV Guardian: Default",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Bear Form",
							["Script"] = "buff.bear_form.down",
							["Ability"] = "bear_form",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Name"] = "Single Target",
							["Script"] = "active_enemies = 1",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Ability"] = "run_action_list",
							["ModName"] = "IV Guardian: Single",
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "2-3 Targets",
							["Script"] = "active_enemies > 1 & active_enemies < 4",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Ability"] = "call_action_list",
							["ModName"] = "IV Guardian: 2-3",
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "4+ Targets",
							["Script"] = "active_enemies > 3",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Ability"] = "call_action_list",
							["ModName"] = "IV Guardian: 4+",
						}, -- [4]
					},
					["Script"] = "",
				}, -- [11]
				{
					["Specialization"] = 104,
					["Default"] = true,
					["Release"] = 20180205.201654,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "health.current < health.max * 0.8 & ( charges = 3 || incoming_damage_5s > health.max * 0.25 ) ",
							["Indicator"] = "none",
							["Ability"] = "frenzied_regeneration",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Frenzied Regeneration",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = " incoming_damage_5s > health.current * 0.2",
							["Indicator"] = "none",
							["Ability"] = "ironfur",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Ironfur",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "tanking & incoming_damage_3s > health.max * 0.25",
							["Indicator"] = "none",
							["Ability"] = "survival_instincts",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Survival Instincts",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "tanking & incoming_damage_5s > health.max * 0.25",
							["Indicator"] = "none",
							["Ability"] = "barkskin",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Name"] = "Barkskin",
						}, -- [4]
					},
					["Name"] = "IV Guardian: Defensives",
				}, -- [12]
				{
					["Script"] = "",
					["Name"] = "SimC Guardian: cooldowns",
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
					["Default"] = true,
				}, -- [13]
				{
					["Script"] = "",
					["Name"] = "SimC Guardian: default",
					["Release"] = 20180205.201654,
					["Specialization"] = 104,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Skull Bash",
							["Indicator"] = "none",
							["Ability"] = "skull_bash",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Script"] = "",
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
					["Default"] = true,
				}, -- [14]
				{
					["Script"] = "",
					["Name"] = "SimC Guardian: precombat",
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
					["Default"] = true,
				}, -- [15]
			},
			["Class Option: tf_restrictions"] = 1,
			["displays"] = {
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["queuedIconSize"] = 50,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["primaryIconSize"] = 50,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["Default"] = true,
					["y"] = -230,
					["x"] = -83,
					["Name"] = "Feral Primary",
					["queuedFontSize"] = 12,
					["Release"] = 20171207.215448,
					["Copy To"] = "Feral AOE",
					["Specialization"] = 103,
					["displayType"] = "a",
				}, -- [1]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["showAE"] = false,
					["displayType"] = "c",
					["queuedIconHeight"] = 40,
					["primaryIconSize"] = 40,
					["queuedIconSize"] = 40,
					["targetFontSize"] = 12,
					["numIcons"] = 1,
					["Specialization"] = 103,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["Name"] = "Feral AOE",
					["showSwitchAE"] = false,
					["showAuto"] = false,
					["quickVisStyle"] = "b",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["Copy To"] = "Feral AOE",
					["y"] = -230,
					["x"] = -135,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Release"] = 20171207.215448,
					["primaryIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["queuedIconWidth"] = 40,
				}, -- [2]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["queuedIconSize"] = 50,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 14,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 15,
					["Specialization"] = 104,
					["y"] = -239.999954223633,
					["x"] = -81.0000076293945,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Release"] = 20180121.231355,
					["primaryIconSize"] = 50,
					["Name"] = "Guardian Primary",
					["displayType"] = "a",
				}, -- [3]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["queuedIconHeight"] = 40,
					["queuedIconSize"] = 40,
					["targetFontSize"] = 12,
					["numIcons"] = 1,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 12,
					["Specialization"] = 104,
					["primaryFontSize"] = 12,
					["primaryIconSize"] = 40,
					["Name"] = "Guardian Defensives",
					["y"] = -128.999816894531,
					["x"] = -225,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Release"] = 20180121.231355,
					["primaryIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["queuedIconWidth"] = 40,
				}, -- [4]
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
				["changeGuardianAPLToSimC_2018012102"] = true,
				["undoIncarnationNameChange_12042017"] = true,
				["setDisplayTypes_04022017"] = true,
				["disableSpecterForPaladins_10102017"] = true,
				["dontDisableGlobalCooldownYouFools_05232017"] = true,
				["changeBrewmasterAPLToSimC_20180121"] = true,
			},
			["Class Option: regrowth_instant"] = true,
			["Class Option: tf_energy"] = 60,
			["Class Option: brutal_charges"] = 2,
			["Class Option: tf_overlap"] = 2,
		},
		["Zelda - Mal'Ganis"] = {
			["actionLists"] = {
				{
					["Name"] = "Usable Items",
					["Specialization"] = 0,
					["Hidden"] = true,
					["Release"] = 20180208.181753,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Draught of Souls",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Release"] = 201710,
							["Resources"] = {
							},
							["Ability"] = "draught_of_souls",
							["Indicator"] = "none",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Faulty Countermeasure",
							["Ability"] = "faulty_countermeasure",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Fel-Oiled Infernal Machine",
							["Resources"] = {
							},
							["Ability"] = "feloiled_infernal_machine",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [3]
						{
							["Enabled"] = true,
							["Name"] = "Forgefiend's Fabricator",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "forgefiends_fabricator",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Horn of Valor",
							["Resources"] = {
							},
							["Ability"] = "horn_of_valor",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Kil'jaeden's Burning Wish",
							["Ability"] = "kiljaedens_burning_wish",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Name"] = "Might of Krosus",
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Ability"] = "might_of_krosus",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Name"] = "Ring of Collapsing Futures",
							["Resources"] = {
							},
							["Ability"] = "ring_of_collapsing_futures",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Specter of Betrayal",
							["Ability"] = "specter_of_betrayal",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Tome of Unraveling Sanity",
							["Ability"] = "tome_of_unraveling_sanity",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Umbral Moonglaives",
							["Ability"] = "umbral_moonglaives",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "! settings.disabled & \nactive_enemies >= settings.minimum & \n( settings.maximum == 0 || active_enemies <= settings.maximum )",
							["Name"] = "Vial of Ceaseless Toxins",
							["Ability"] = "vial_of_ceaseless_toxins",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [12]
					},
					["Default"] = true,
				}, -- [1]
				{
					["Specialization"] = 66,
					["Default"] = true,
					["Release"] = 20170727.205954,
					["Name"] = "Protection ST",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Name"] = "Potion",
							["Script"] = "time=0",
							["Args"] = "name=old_war",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["Release"] = 201617.031,
							["attr"] = {
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "toggle.interrupts",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "rebuke",
							["Name"] = "Rebuke",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "set_bonus.tier20_2pc > 1 || ( buff.grand_crusader.up & talent.crusaders_judgment.enabled & cooldown.judgment.charges < 1 )",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "avengers_shield",
							["Name"] = "Avenger's Shield",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "judgment",
							["Name"] = "Judgment",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "consecration",
							["Name"] = "Consecration",
						}, -- [5]
						{
							["Enabled"] = true,
							["attr"] = {
							},
							["Script"] = "cooldown.blessed_hammer.charges>1",
							["Args"] = "",
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "blessed_hammer",
							["Name"] = "Blessed Hammer",
						}, -- [6]
						{
							["attr"] = {
							},
							["Name"] = "Hammer of the Righteous",
							["Enabled"] = true,
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Script"] = "",
							["Ability"] = "hammer_of_the_righteous",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.shield_of_the_righteous.charges=cooldown.shield_of_the_righteous.charges_max",
							["Ability"] = "shield_of_the_righteous",
							["Indicator"] = "none",
							["Advanced"] = true,
							["Name"] = "Shield of the Righteous",
							["Release"] = 201617.031,
							["attr"] = {
							},
							["ScriptType"] = "time",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "avengers_shield",
							["Name"] = "Avenger's Shield (1)",
						}, -- [9]
					},
					["Script"] = "",
				}, -- [2]
				{
					["Name"] = "Protection Defensives",
					["Script"] = "",
					["Release"] = 20170727.205954,
					["Specialization"] = 66,
					["Actions"] = {
						{
							["attr"] = {
							},
							["Script"] = "tanking & use_shield",
							["Name"] = "Shield of the Righteous (1)",
							["Enabled"] = true,
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "shield_of_the_righteous",
							["ScriptType"] = "simc",
						}, -- [1]
						{
							["Enabled"] = true,
							["Name"] = "Hand of the Protector",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "hand_of_the_protector",
							["Script"] = "use_self_heal",
						}, -- [2]
						{
							["Enabled"] = true,
							["Name"] = "Light of the Protector",
							["attr"] = {
							},
							["Release"] = 201617.031,
							["Indicator"] = "none",
							["Ability"] = "light_of_the_protector",
							["Script"] = "use_self_heal",
						}, -- [3]
					},
					["Default"] = true,
				}, -- [3]
				{
					["Default"] = true,
					["Script"] = "",
					["Release"] = 20170727.205954,
					["Specialization"] = 66,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Seraphim",
							["Ability"] = "seraphim",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Eye of Tyr",
							["Ability"] = "eye_of_tyr",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Avenging Wrath",
							["Ability"] = "avenging_wrath",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [3]
					},
					["Name"] = "Protection Cooldowns",
				}, -- [4]
				{
					["Name"] = "Protection Default",
					["Default"] = true,
					["Release"] = 20170727.205954,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "toggle.use_defensives",
							["Name"] = "Protection Defensives",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Ability"] = "call_action_list",
							["ModName"] = "Protection Defensives",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "toggle.cooldowns",
							["Name"] = "Protection Cooldowns",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Ability"] = "call_action_list",
							["ModName"] = "Protection Cooldowns",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Use Items",
							["Ability"] = "use_items",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "",
							["Name"] = "Protection ST",
							["Release"] = 201710,
							["Indicator"] = "none",
							["Ability"] = "call_action_list",
							["ModName"] = "Protection ST",
						}, -- [4]
					},
					["Specialization"] = 66,
				}, -- [5]
				{
					["Name"] = "SimC Retribution: opener",
					["Specialization"] = 70,
					["Release"] = 20171211.164324,
					["Script"] = "",
					["Actions"] = {
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
						}, -- [1]
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "! set_bonus.tier20_2pc > 0",
							["Ability"] = "arcane_torrent",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Arcane Torrent",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Judgment",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "equipped.liadrins_fury_unleashed || race.blood_elf || ! cooldown.wake_of_ashes.up",
							["Ability"] = "blade_of_justice",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blade of Justice",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "equipped.liadrins_fury_unleashed || race.blood_elf || ! cooldown.wake_of_ashes.up",
							["Ability"] = "divine_hammer",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Hammer",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Ability"] = "wake_of_ashes",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Wake of Ashes",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
					},
					["Default"] = true,
				}, -- [6]
				{
					["Name"] = "SimC Retribution: default",
					["Default"] = true,
					["Release"] = 20171211.164324,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "rebuke",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Rebuke",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "time < 2",
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List",
							["Args"] = "name=\"SimC Retribution: opener\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: opener",
						}, -- [2]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List (1)",
							["Args"] = "name=\"SimC Retribution: cooldowns\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: cooldowns",
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List (2)",
							["Args"] = "name=\"SimC Retribution: generators\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: generators",
						}, -- [4]
					},
					["Specialization"] = 70,
				}, -- [7]
				{
					["Name"] = "SimC Retribution: precombat",
					["Specialization"] = 70,
					["Release"] = 20171211.164324,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Potion",
							["Args"] = "name=\"old_war\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "old_war",
						}, -- [1]
					},
					["Default"] = true,
				}, -- [8]
				{
					["Name"] = "SimC Retribution: cooldowns",
					["Specialization"] = 70,
					["Release"] = 20180320.203,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "equipped.ashes_to_dust & dot.wake_of_ashes.remains < gcd * 2 || ( buff.crusade.up & buff.crusade.remains < gcd * 2 || buff.avenging_wrath.up & buff.avenging_wrath.remains < gcd * 2 )",
							["Ability"] = "forgefiends_fabricator",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Forgefiend's Fabricator",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 15 || cooldown.crusade.remains  > 20 & ! buff.crusade.up )",
							["Ability"] = "draught_of_souls",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Draught of Souls",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack>=15 || cooldown.crusade.remains > 5 & ! buff.crusade.up )\n",
							["Ability"] = "might_of_krosus",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Might of Krosus",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "( buff.crusade.up & buff.crusade.stack >= 15 || cooldown.crusade.remains > gcd * 2 ) || ( buff.avenging_wrath.up || cooldown.avenging_wrath.remains > gcd * 2 )\n",
							["Ability"] = "specter_of_betrayal",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Specter of Betrayal",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 15 || ( cooldown.avenging_wrath.remains > action.umbral_moonglaives.cooldown || cooldown.crusade.remains > action.umbral_moonglaives.cooldown )",
							["Ability"] = "umbral_moonglaives",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Umbral Moonglaives",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Name"] = "Vial of Ceaseless Toxins",
							["Script"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 15 ) || ( cooldown.crusade.remains > 30 & ! buff.crusade.up || cooldown.avenging_wrath.remains > 30 )",
							["Ability"] = "vial_of_ceaseless_toxins",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [6]
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
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "( buff.bloodlust.up || buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 25 || target.time_to_die <= 40 )",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Potion",
							["Args"] = "name=\"old_war\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "old_war",
						}, -- [8]
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
						}, -- [9]
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
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "( buff.crusade.up || buff.avenging_wrath.up ) & holy_power.current = 2 & ( cooldown.blade_of_justice.remains > gcd || cooldown.divine_hammer.remains > gcd )",
							["Ability"] = "arcane_torrent",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Arcane Torrent",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Name"] = "Light's Judgment",
							["Script"] = "active_enemies >= 2 || cooldown.judgment.remains > gcd & ( cooldown.divine_hammer.remains > gcd || cooldown.blade_of_justice.remains > gcd ) & ( buff.avenging_wrath.up || buff.crusade.stack >= 15 )",
							["Ability"] = "lights_judgment",
							["Resources"] = {
							},
							["Release"] = 201710,
							["Indicator"] = "none",
						}, -- [12]
						{
							["Enabled"] = true,
							["Ability"] = "holy_wrath",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Holy Wrath",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Ability"] = "shield_of_vengeance",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Shield of Vengeance",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Ability"] = "avenging_wrath",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Avenging Wrath",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "holy_power.current >= 3 || ( ( equipped.liadrins_fury_unleashed || race.blood_elf ) & holy_power.current >= 2 )",
							["Ability"] = "crusade",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crusade",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [16]
					},
					["Default"] = true,
				}, -- [9]
				{
					["Enabled"] = false,
					["Default"] = true,
					["Specialization"] = 70,
					["Release"] = 20171211.164324,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "active_enemies <= 3 & ( cooldown.judgment.remains < gcd * 4.25 || debuff.judgment.remains > gcd * 4.25 )",
							["Ability"] = "execution_sentence",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Execution Sentence",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "judgment_override & variable.ds_castable & buff.divine_purpose.up",
							["Ability"] = "divine_storm",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Storm",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "judgment_override & variable.ds_castable & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 2 )",
							["Ability"] = "divine_storm",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Storm (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "judgment_override & buff.divine_purpose.up & ! equipped.whisper_of_the_nathrezim",
							["Ability"] = "justicars_vengeance",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Justicar's Vengeance",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "judgment_override & buff.divine_purpose.up",
							["Ability"] = "templars_verdict",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Templar's Verdict",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "judgment_override & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 2 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd )",
							["Ability"] = "templars_verdict",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Templar's Verdict (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
					},
					["Name"] = "SimC Retribution: finishers",
				}, -- [10]
				{
					["Enabled"] = false,
					["Default"] = true,
					["Specialization"] = 70,
					["Release"] = 20171211.164324,
					["Script"] = "",
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "active_enemies >= 2 || \n( buff.scarlet_inquisitors_expurgation.stack >= 29 & \n    ( ( equipped.ashes_to_dust & dot.wake_of_ashes.ticking & \n        ( time > 10 || dot.wake_of_ashes.remains < gcd ) \n    ) ||\n    ( ! equipped.ashes_to_dust & \n        ( buff.avenging_wrath.up || ( buff.crusade.up & buff.crusade.stack >= 15 ) || ( cooldown.crusade.remains > 15 & ! buff.crusade.up ) || cooldown.avenging_wrath.remains > 15\n        ) \n    ) )\n)\n\n",
							["Ability"] = "variable",
							["Indicator"] = "none",
							["ModVarName"] = "ds_castable",
							["Name"] = "Store Value",
							["Args"] = "name=ds_castable,value=active_enemies>=2||(buff.scarlet_inquisitors_expurgation.stack>=29&(equipped.144358&(dot.wake_of_ashes.ticking&time>10||dot.wake_of_ashes.remains<gcd))||(buff.scarlet_inquisitors_expurgation.stack>=29&(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=15||cooldown.crusade.remains>15&!buff.crusade.up)||cooldown.avenging_wrath.remains>15||(!action.crusade.enabled&!action.avenging_wrath.enabled))&!equipped.144358)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "( buff.crusade.up & buff.crusade.stack < 15 || buff.liadrins_fury_unleashed.up ) || ( artifact.ashes_to_ashes.enabled & cooldown.wake_of_ashes.remains < gcd * 2 )",
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List",
							["Args"] = "name=\"SimC Retribution: finishers\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: finishers",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "talent.execution_sentence.enabled & ( cooldown.judgment.remains < gcd * 4.25 || debuff.judgment.remains > gcd * 4.25 ) & cooldown.execution_sentence.up || buff.whisper_of_the_nathrezim.up & buff.whisper_of_the_nathrezim.remains < gcd * 1.5",
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List (1)",
							["Args"] = "name=\"SimC Retribution: finishers\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: finishers",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "dot.execution_sentence.ticking & dot.execution_sentence.remains < gcd * 2 & debuff.judgment.remains < gcd * 2 || set_bonus.tier21_4pc > 0",
							["Ability"] = "judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Judgment",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "holy_power.current <= 2 & ( set_bonus.tier20_2pc > 0 || set_bonus.tier20_4pc > 0 )",
							["Ability"] = "blade_of_justice",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blade of Justice",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "holy_power.current <= 2 & ( set_bonus.tier20_2pc > 0 || set_bonus.tier20_4pc > 0 )",
							["Ability"] = "divine_hammer",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Hammer",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "( holy_power.current <= 0 || holy_power.current = 1 & ( cooldown.blade_of_justice.remains > gcd || cooldown.divine_hammer.remains > gcd ) || holy_power.current = 2 & ( ( cooldown.zeal.charges_fractional <= 0.65 || cooldown.crusader_strike.charges_fractional <= 0.65 ) ) )",
							["Ability"] = "wake_of_ashes",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Wake of Ashes",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "holy_power.current <= 3 & ! set_bonus.tier20_4pc > 0",
							["Ability"] = "blade_of_justice",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blade of Justice (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "holy_power.current <= 3 & ! set_bonus.tier20_4pc > 0",
							["Ability"] = "divine_hammer",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Hammer (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Ability"] = "judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Judgment (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "buff.divine_purpose.up",
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List (2)",
							["Args"] = "name=\"SimC Retribution: finishers\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: finishers",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.zeal.charges_fractional >= 1.65 & holy_power.current <= 4 & ( cooldown.blade_of_justice.remains > gcd * 2 || cooldown.divine_hammer.remains > gcd * 2 ) & debuff.judgment.remains > gcd",
							["Ability"] = "zeal",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Zeal",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "cooldown.crusader_strike.charges_fractional >= 1.65 & holy_power.current <= 4 & ( cooldown.blade_of_justice.remains > gcd * 2 || cooldown.divine_hammer.remains > gcd * 2 ) & debuff.judgment.remains > gcd & ( talent.greater_judgment.enabled || ! set_bonus.tier20_4pc > 0 & talent.the_fires_of_justice.enabled )",
							["Ability"] = "crusader_strike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crusader Strike",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Ability"] = "consecration",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Consecration",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "equipped.justice_gaze & target.health.pct >= 75 & holy_power.current <= 4",
							["Ability"] = "hammer_of_justice",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Hammer of Justice",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Call Action List (3)",
							["Args"] = "name=\"SimC Retribution: finishers\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Retribution: finishers",
						}, -- [16]
						{
							["Enabled"] = true,
							["Ability"] = "zeal",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Zeal (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [17]
						{
							["Enabled"] = true,
							["Ability"] = "crusader_strike",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Crusader Strike (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [18]
					},
					["Name"] = "SimC Retribution: generators",
				}, -- [11]
				{
					["Enabled"] = false,
					["Script"] = "",
					["Name"] = "SimC Protection: max survival",
					["Release"] = 20180208.1751,
					["Specialization"] = 66,
					["Actions"] = {
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
						}, -- [1]
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
						}, -- [2]
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "lights_judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Light's Judgment",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
					},
					["Default"] = true,
				}, -- [12]
				{
					["Enabled"] = false,
					["Script"] = "",
					["Name"] = "SimC Protection: default",
					["Release"] = 20180208.1751,
					["Specialization"] = 66,
					["Actions"] = {
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
						}, -- [1]
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
						}, -- [2]
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "lights_judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Light's Judgment",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Name"] = "Use Items",
							["Script"] = "",
							["Ability"] = "use_items",
							["Indicator"] = "none",
							["Release"] = 201710,
							["Resources"] = {
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Ability"] = "call_action_list",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Call Action List]|r",
							["Args"] = "name=\"SimC Protection: prot\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "SimC Protection: prot",
						}, -- [6]
					},
					["Default"] = true,
				}, -- [13]
				{
					["Enabled"] = false,
					["Script"] = "",
					["Name"] = "SimC Protection: precombat",
					["Release"] = 20180208.1751,
					["Specialization"] = 66,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r",
							["Args"] = "name=\"unbending_potion\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "unbending_potion",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "( role.attack || talent.seraphim.enabled ) & active_enemies < 3",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r (1)",
							["Args"] = "name=\"old_war\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "old_war",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "( role.attack || talent.seraphim.enabled ) & active_enemies >= 3",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r (2)",
							["Args"] = "name=\"prolonged_power\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "prolonged_power",
						}, -- [3]
					},
					["Default"] = true,
				}, -- [14]
				{
					["Enabled"] = false,
					["Script"] = "",
					["Name"] = "SimC Protection: prot",
					["Release"] = 20180208.1751,
					["Specialization"] = 66,
					["Actions"] = {
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled & ( action.shield_of_the_righteous.charges > 2 ) & ! ( debuff.eye_of_tyr.up & buff.aegis_of_light.up & buff.ardent_defender.up & buff.guardian_of_ancient_kings.up & buff.divine_shield.up & buff.potion.up )",
							["Ability"] = "shield_of_the_righteous",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Shield of the Righteous",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled & talent.bastion_of_light.enabled & action.shield_of_the_righteous.charges < 1",
							["Ability"] = "bastion_of_light",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Bastion of Light",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Script"] = "use_self_heal",
							["Ability"] = "light_of_the_protector",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Light of the Protector",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [3]
						{
							["Enabled"] = true,
							["Script"] = "use_self_heal",
							["Ability"] = "hand_of_the_protector",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Hand of the Protector",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
						{
							["Enabled"] = true,
							["Script"] = "( incoming_damage_10000ms < health.max * 1.25 ) & health.pct < 55 & talent.righteous_protector.enabled",
							["Ability"] = "light_of_the_protector",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Light of the Protector (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [5]
						{
							["Enabled"] = true,
							["Script"] = "( incoming_damage_13000ms < health.max * 1.6 ) & health.pct < 55",
							["Ability"] = "light_of_the_protector",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Light of the Protector (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [6]
						{
							["Enabled"] = true,
							["Script"] = "( incoming_damage_6000ms < health.max * 0.7 ) & health.pct < 65 & talent.righteous_protector.enabled",
							["Ability"] = "hand_of_the_protector",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Hand of the Protector (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [7]
						{
							["Enabled"] = true,
							["Script"] = "( incoming_damage_9000ms < health.max * 1.2 ) & health.pct < 55",
							["Ability"] = "hand_of_the_protector",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Hand of the Protector (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [8]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled & talent.knight_templar.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
							["Ability"] = "divine_steed",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Steed",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [9]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
							["Ability"] = "eye_of_tyr",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Eye of Tyr",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [10]
						{
							["Enabled"] = true,
							["Script"] = "use_defensives & ( ! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up ) )",
							["Ability"] = "aegis_of_light",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Aegis of Light",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [11]
						{
							["Enabled"] = true,
							["Script"] = "use_defensives & ( ! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up ) )",
							["Ability"] = "guardian_of_ancient_kings",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Guardian of Ancient Kings",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [12]
						{
							["Enabled"] = true,
							["Script"] = "use_defensives & ( ! talent.seraphim.enabled & talent.final_stand.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up ) )",
							["Ability"] = "divine_shield",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Divine Shield",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [13]
						{
							["Enabled"] = true,
							["Script"] = "use_defensives & ( ! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up ) )",
							["Ability"] = "ardent_defender",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ardent Defender",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [14]
						{
							["Enabled"] = true,
							["Script"] = "use_self_heal & ! talent.seraphim.enabled & health.pct < 15",
							["Ability"] = "lay_on_hands",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Lay on Hands",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [15]
						{
							["Enabled"] = true,
							["Script"] = "buff.avenging_wrath.up & talent.seraphim.enabled & active_enemies < 3",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r",
							["Args"] = "name=\"old_war\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "old_war",
						}, -- [16]
						{
							["Enabled"] = true,
							["Script"] = "buff.avenging_wrath.up & talent.seraphim.enabled & active_enemies >= 3",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r (1)",
							["Args"] = "name=\"prolonged_power\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "prolonged_power",
						}, -- [17]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r (2)",
							["Args"] = "name=\"unbending_potion\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "unbending_potion",
						}, -- [18]
						{
							["Enabled"] = true,
							["Script"] = "incoming_damage_2500ms > health.max * 0.4 & ! ( debuff.eye_of_tyr.up || buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up ) || target.time_to_die <= 25",
							["Ability"] = "potion",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "|cff00ccff[Potion]|r (3)",
							["Args"] = "name=\"draenic_strength\"",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "draenic_strength",
						}, -- [19]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "avenging_wrath",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Avenging Wrath",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [20]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Judgment",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [21]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled & talent.crusaders_judgment.enabled & buff.grand_crusader.up",
							["Ability"] = "avengers_shield",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Avenger's Shield",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [22]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "blessed_hammer",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blessed Hammer",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [23]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "avengers_shield",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Avenger's Shield (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [24]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "consecration",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Consecration",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [25]
						{
							["Enabled"] = true,
							["Script"] = "! talent.seraphim.enabled",
							["Ability"] = "hammer_of_the_righteous",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Hammer of the Righteous",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [26]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & action.shield_of_the_righteous.charges >= 2",
							["Ability"] = "seraphim",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Seraphim",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [27]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & ( buff.seraphim.up || cooldown.seraphim.remains < 4 )",
							["Ability"] = "avenging_wrath",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Avenging Wrath (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [28]
						{
							["Enabled"] = true,
							["Script"] = "use_defensives & talent.seraphim.enabled & buff.seraphim.up",
							["Ability"] = "ardent_defender",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Ardent Defender (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [29]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & ( cooldown.consecration.remains >= 0.1 & ( action.shield_of_the_righteous.charges > 2.5 & cooldown.seraphim.remains > 3 ) || ( buff.seraphim.up ) )",
							["Ability"] = "shield_of_the_righteous",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Shield of the Righteous (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [30]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & equipped.pillars_of_inmost_light & buff.seraphim.up",
							["Ability"] = "eye_of_tyr",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Eye of Tyr (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [31]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled",
							["Ability"] = "avengers_shield",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Avenger's Shield (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [32]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & ( active_enemies < 2 || set_bonus.tier20_2pc > 0 )",
							["Ability"] = "judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Judgment (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [33]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & ( buff.seraphim.remains > 6 || buff.seraphim.down )",
							["Ability"] = "consecration",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Consecration (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [34]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled",
							["Ability"] = "judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Judgment (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [35]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled",
							["Ability"] = "consecration",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Consecration (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [36]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled & ! equipped.pillars_of_inmost_light",
							["Ability"] = "eye_of_tyr",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Eye of Tyr (2)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [37]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled",
							["Ability"] = "blessed_hammer",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Blessed Hammer (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [38]
						{
							["Enabled"] = true,
							["Script"] = "talent.seraphim.enabled",
							["Ability"] = "hammer_of_the_righteous",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Hammer of the Righteous (1)",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [39]
					},
					["Default"] = true,
				}, -- [15]
				{
					["Enabled"] = false,
					["Script"] = "",
					["Name"] = "SimC Protection: max dps",
					["Release"] = 20180208.1751,
					["Specialization"] = 66,
					["Actions"] = {
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
						}, -- [1]
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
						}, -- [2]
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Ability"] = "lights_judgment",
							["Indicator"] = "none",
							["ModVarName"] = "",
							["Name"] = "Light's Judgment",
							["Release"] = 201710,
							["Resources"] = {
							},
							["CheckMovement"] = false,
							["ModName"] = "",
						}, -- [4]
					},
					["Default"] = true,
				}, -- [16]
			},
			["Class Option: health_threshold"] = 40,
			["displays"] = {
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Copy To"] = "Protection Primary",
					["Primary Caption Aura"] = "",
					["Keybinding Style"] = 2,
					["showCaptions"] = true,
					["targetFont"] = "PT Sans Narrow",
					["Specialization"] = 70,
					["Release"] = 20171211.164324,
					["targetFontSize"] = 12,
					["Script"] = "",
					["captionFont"] = "PT Sans Narrow",
					["Default"] = true,
					["Maximum Time"] = 30,
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = 2,
							["Name"] = "SimC Retribution: precombat",
							["Release"] = 20170100,
							["Script"] = "time=0",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = 1,
							["Name"] = "SimC Retribution: default",
							["Release"] = 20170100,
						}, -- [2]
					},
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 7,
					["x"] = -83,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 8,
					["primaryIconSize"] = 50,
					["Talent Group"] = 1,
					["lowercaseKBs"] = false,
					["Name"] = "Retribution Primary",
					["queuedFontSize"] = 12,
					["Primary Caption"] = "targets",
					["kbFont"] = "PT Sans Narrow",
					["queuedIconSize"] = 50,
					["displayType"] = "a",
				}, -- [1]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Primary Caption Aura"] = "",
					["targetFont"] = "PT Sans Narrow",
					["primaryIconSize"] = 50,
					["Maximum Time"] = 30,
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = 2,
							["Name"] = "SimC Retribution: precombat",
							["Release"] = 201511.221,
							["Script"] = "time=0",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = 1,
							["Name"] = "SimC Retribution: default",
							["Release"] = 201511.221,
						}, -- [2]
					},
					["showSwitchAE"] = false,
					["showAuto"] = false,
					["maxST"] = 0,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 8,
					["y"] = -170,
					["x"] = -83,
					["Keybinding Style"] = 2,
					["showAE"] = false,
					["Specialization"] = 70,
					["minST"] = 3,
					["targetFontSize"] = 12,
					["captionFont"] = "PT Sans Narrow",
					["quickVisStyle"] = "b",
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 7,
					["Copy To"] = "Retribution AOE",
					["Script"] = "single&!auto",
					["Primary Caption"] = "targets",
					["minAuto"] = 3,
					["Default"] = true,
					["Talent Group"] = 0,
					["Name"] = "Retribution AOE",
					["queuedFontSize"] = 12,
					["queuedIconSize"] = 50,
					["kbFont"] = "PT Sans Narrow",
					["Release"] = 20171211.164324,
					["displayType"] = "c",
				}, -- [2]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Primary Caption Aura"] = "",
					["queuedIconHeight"] = 40,
					["primaryIconSize"] = 40,
					["Maximum Time"] = 30,
					["Queues"] = {
						{
							["Enabled"] = true,
							["Action List"] = 4,
							["Name"] = "Protection Defensives",
							["Release"] = 20161003.1,
							["Script"] = "",
						}, -- [1]
						{
							["Enabled"] = true,
							["Action List"] = 5,
							["Name"] = "Protection Cooldowns",
							["Release"] = 20161003.1,
							["Script"] = "",
						}, -- [2]
						{
							["Enabled"] = true,
							["Action List"] = 3,
							["Name"] = "Protection ST",
							["Release"] = 20161003.1,
							["Script"] = "",
						}, -- [3]
					},
					["Script"] = "",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 14,
					["y"] = -240,
					["x"] = -68,
					["Keybinding Style"] = 2,
					["queuedIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["Specialization"] = 66,
					["delayFont"] = "PT Sans Narrow",
					["Copy To"] = "Protection Primary",
					["captionFont"] = "PT Sans Narrow",
					["delayFontSize"] = 12,
					["primaryIconWidth"] = 40,
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 13,
					["targetFontSize"] = 12,
					["Talent Group"] = 0,
					["Default"] = true,
					["Primary Caption"] = "targets",
					["Release"] = 20180205.185337,
					["lowercaseKBs"] = false,
					["Name"] = "Protection Primary",
					["queuedFontSize"] = 12,
					["queuedIconSize"] = 40,
					["kbFont"] = "PT Sans Narrow",
					["targetFont"] = "PT Sans Narrow",
					["displayType"] = "a",
				}, -- [3]
			},
			["Class Option: shield_damage"] = 20,
			["Class Option: strict_finishers"] = false,
			["Class Option: shield_threshold"] = 5,
			["Toggle State: use_defensives"] = true,
			["Class Option: use_latency"] = true,
			["Class Option: ds_targets"] = "a",
			["trinkets"] = {
				["specter_of_betrayal"] = {
					["disabled"] = true,
				},
			},
			["Class Option: maximum_wake_power"] = 1,
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
				["setDisplayTypes_04022017"] = true,
				["undoIncarnationNameChange_12042017"] = true,
				["changeGuardianAPLToSimC_2018012102"] = true,
				["changeBrewmasterAPLToSimC_20180121"] = true,
			},
		},
		["Nisepeg - Stormscale"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
			},
			["specs"] = {
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Elemental",
					["aoe"] = 3,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = true,
					["damage"] = true,
				},
				[263] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Enhancement",
					["aoe"] = 2,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20180728.1809,
					["spec"] = 263,
					["desc"] = "This is a package of action lists for Hekili.\n\nAdded precombat entry for Totem Mastery.",
					["lists"] = {
						["core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck25",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 8 || ( active_enemies >= 6 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 || ( active_enemies >= 2 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & variable.furyCheck45 & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.overcharge.enabled & variable.furyCheck35 ) || ( talent.overcharge.enabled & variable.furyCheck80 )",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "crash_lightning",
							}, -- [11]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["value"] = "( ( talent.hailstorm.enabled & ! buff.frostbrand.up ) || ! talent.hailstorm.enabled )",
								["action"] = "variable",
								["var_name"] = "hailstormCheck",
							}, -- [2]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & ( ( maelstrom > 35 & cooldown.lightning_bolt.remains >= 3 * gcd ) || maelstrom > 80 ) ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck80",
							}, -- [3]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 70 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck70",
							}, -- [4]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 45 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck45",
							}, -- [5]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 35 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck35",
							}, -- [6]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 25 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck25",
							}, -- [7]
							{
								["enabled"] = true,
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 70 ) )",
								["action"] = "variable",
								["var_name"] = "OCPool70",
							}, -- [8]
							{
								["enabled"] = true,
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 60 ) )",
								["action"] = "variable",
								["var_name"] = "OCPool60",
							}, -- [9]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "buffs",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "core",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [17]
						},
						["asc"] = {
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [3]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [7]
						},
						["buffs"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & maelstrom > 22",
								["action"] = "fury_of_air",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck45",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue.remains < 6 + gcd",
								["action"] = "flametongue",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 6 + gcd",
								["action"] = "frostbrand",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [7]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.strike.remains > 0 ) & buff.ascendance.down",
								["action"] = "ascendance",
							}, -- [6]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [7]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled || buff.flametongue.remains < 4.8",
								["action"] = "flametongue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.crashing_storm.enabled || active_enemies >= 2 ) & debuff.earthen_spike.up & maelstrom >= 40 & variable.OCPool60",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 & maelstrom > 40",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom >= 50 & variable.OCPool70 & variable.furyCheck80",
								["action"] = "lava_lash",
							}, -- [5]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( maelstrom >= 65 || talent.crashing_storm.enabled || active_enemies >= 2 ) & variable.OCPool60 & variable.furyCheck45",
								["action"] = "crash_lightning",
							}, -- [7]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [8]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
					},
					["version"] = 20180728.1809,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 10: Unsupported action 'auto_attack'.\n\nImported 8 action lists.\n",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lightning_shield\nactions.precombat+=/totem_mastery\n\n# Executed every time the actor is available.\nactions=wind_shear\nactions+=/variable,name=hailstormCheck,value=((talent.hailstorm.enabled&!buff.frostbrand.up)||!talent.hailstorm.enabled)\nactions+=/variable,name=furyCheck80,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&((maelstrom>35&cooldown.lightning_bolt.remains>=3*gcd)||maelstrom>80)))\nactions+=/variable,name=furyCheck70,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>70))\nactions+=/variable,name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))\nactions+=/variable,name=furyCheck35,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>35))\nactions+=/variable,name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))\nactions+=/variable,name=OCPool70,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>70))\nactions+=/variable,name=OCPool60,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>60))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=buffs\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=core\nactions+=/call_action_list,name=filler\n\nactions.asc=earthen_spike\nactions.asc+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\nactions.buffs=rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.buffs+=/fury_of_air,if=!ticking&maelstrom>22\nactions.buffs+=/flametongue,if=!buff.flametongue.up\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck45\nactions.buffs+=/flametongue,if=buff.flametongue.remains<6+gcd\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<6+gcd\nactions.buffs+=/totem_mastery,if=buff.resonance_totem.remains<2\n\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions.cds=bloodlust,if=target.health.pct<25||time>0.500\nactions.cds+=/berserking,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/blood_fury,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=(cooldown.strike.remains>0)&buff.ascendance.down\nactions.cds+=/earth_elemental\n\nactions.core=earthen_spike,if=variable.furyCheck25\nactions.core+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.core+=/crash_lightning,if=active_enemies>=8||(active_enemies>=6&talent.crashing_storm.enabled)\nactions.core+=/stormstrike,if=buff.stormbringer.up\nactions.core+=/crash_lightning,if=active_enemies>=4||(active_enemies>=2&talent.crashing_storm.enabled)\nactions.core+=/lightning_bolt,if=talent.overcharge.enabled&variable.furyCheck45&maelstrom>=40\nactions.core+=/stormstrike,if=(!talent.overcharge.enabled&variable.furyCheck35)||(talent.overcharge.enabled&variable.furyCheck80)\nactions.core+=/sundering\nactions.core+=/flametongue,if=talent.searing_assault.enabled\nactions.core+=/lava_lash,if=buff.hot_hand.react\nactions.core+=/crash_lightning,if=active_enemies>=3\n\nactions.filler=rockbiter,if=maelstrom<70\nactions.filler+=/flametongue,if=talent.searing_assault.enabled||buff.flametongue.remains<4.8\nactions.filler+=/crash_lightning,if=(talent.crashing_storm.enabled||active_enemies>=2)&debuff.earthen_spike.up&maelstrom>=40&variable.OCPool60\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8&maelstrom>40\nactions.filler+=/lava_lash,if=maelstrom>=50&variable.OCPool70&variable.furyCheck80\nactions.filler+=/rockbiter\nactions.filler+=/crash_lightning,if=(maelstrom>=65||talent.crashing_storm.enabled||active_enemies>=2)&variable.OCPool60&variable.furyCheck45\nactions.filler+=/flametongue\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd",
					["author"] = "SimC (Rusah, Purge)",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Elemental.simc",
					["builtIn"] = true,
					["date"] = 20180728.1808,
					["spec"] = 262,
					["desc"] = "This is a default package of action lists for Elemental Shamans for BfA.",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\n# Executed every time the actor is available.\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions=bloodlust,if=target.health.pct<25||time>0.500\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion\n# Interrupt of casts and is reliable trigger of Sephuz Secret.\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\n# You're looking at an abomination. Yes with shoulders you can cast only Earth Shock during Aoe and wait for shoulder procs. This playstyle works for <= 6 targets. But be aware that you'll be gambling once more...\nactions.aoe+=/earth_shock,if=equipped.echoes_of_the_great_sundering\nactions.aoe+=/earthquake,if=equipped.echoes_of_the_great_sundering&buff.echoes_of_the_great_sundering.up||!equipped.echoes_of_the_great_sundering\n# Only cast Lava Burst on three targets if it is an instant.\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,target_if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead.\nactions.single_target+=/elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\n# Keep SK for large or soon add waves.\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\n# Use your proc before casting Earth Shock again.\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\n# Use the debuff before casting Earth Shock again.\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\n# If possible, use Earth Shock with Master of the Elements.\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,target_if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,target_if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1ntation\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/storm_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\nactions+=/bloodlust\nactions+=/potion\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n\n// Aoe APL\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\nactions.aoe+=/earthquake\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n// Single target - Ascendance\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n\nactions.single_target=elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20180728.1808,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "SimulationCraft Devs",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering",
								["action"] = "earth_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering & buff.echoes_of_the_great_sundering.up || ! equipped.echoes_of_the_great_sundering",
								["action"] = "earthquake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [8]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [10]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [12]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [15]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [17]
							{
								["action"] = "earthquake",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [20]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [22]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [24]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [25]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [19]
							{
								["moving"] = "1ntation",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [33]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [36]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [39]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [40]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
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
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [12]
							{
								["action"] = "bloodlust",
								["enabled"] = false,
							}, -- [13]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [16]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [19]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [26]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [14]
						},
					},
				},
			},
		},
		["Niseniseko - Stormscale"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
			},
			["specs"] = {
				[64] = {
					["enabled"] = false,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["aoe"] = 3,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = true,
					["damage"] = true,
				},
				[63] = {
					["enabled"] = false,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["aoe"] = 3,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = true,
					["damage"] = true,
				},
				[62] = {
					["enabled"] = false,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["aoe"] = 3,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = true,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
		},
		["Yvera - Moonglade"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
			},
			["specs"] = {
				[263] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Enhancement",
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["aoe"] = 2,
					["damage"] = true,
				},
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Elemental",
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["aoe"] = 3,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/generators/PreRaids/PR_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20180625.105,
					["spec"] = 263,
					["lists"] = {
						["core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck25",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 8 || ( active_enemies >= 6 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 || ( active_enemies >= 2 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & variable.furyCheck45 & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.overcharge.enabled & variable.furyCheck35 ) || ( talent.overcharge.enabled & variable.furyCheck80 )",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "crash_lightning",
							}, -- [11]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["value"] = "( ( talent.hailstorm.enabled & ! buff.frostbrand.up ) || ! talent.hailstorm.enabled )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "hailstormCheck",
							}, -- [2]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & ( ( maelstrom > 35 & cooldown.lightning_bolt.remains >= 3 * gcd ) || maelstrom > 80 ) ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck80",
							}, -- [3]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 70 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck70",
							}, -- [4]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 45 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck45",
							}, -- [5]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 35 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck35",
							}, -- [6]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 25 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck25",
							}, -- [7]
							{
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 70 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool70",
							}, -- [8]
							{
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 60 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool60",
							}, -- [9]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "call_action_list",
								["list_name"] = "asc",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "buffs",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "core",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [17]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled || buff.flametongue.remains < 4.8",
								["action"] = "flametongue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.crashing_storm.enabled || active_enemies >= 2 ) & debuff.earthen_spike.up & maelstrom >= 40 & variable.OCPool60",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 & maelstrom > 40",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom >= 50 & variable.OCPool70 & variable.furyCheck80",
								["action"] = "lava_lash",
							}, -- [5]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( maelstrom >= 65 || talent.crashing_storm.enabled || active_enemies >= 2 ) & variable.OCPool60 & variable.furyCheck45",
								["action"] = "crash_lightning",
							}, -- [7]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [8]
						},
						["buffs"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & maelstrom > 22",
								["action"] = "fury_of_air",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck45",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue.remains < 6 + gcd",
								["action"] = "flametongue",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 6 + gcd",
								["action"] = "frostbrand",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [7]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.strike.remains > 0 ) & buff.ascendance.down",
								["action"] = "ascendance",
							}, -- [6]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [7]
						},
						["asc"] = {
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [3]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20180625.105,
					["warnings"] = "",
					["author"] = "Rusah, Purge",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lightning_shield\n\n# Executed every time the actor is available.\nactions=wind_shear\nactions+=/variable,name=hailstormCheck,value=((talent.hailstorm.enabled&!buff.frostbrand.up)||!talent.hailstorm.enabled)\nactions+=/variable,name=furyCheck80,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&((maelstrom>35&cooldown.lightning_bolt.remains>=3*gcd)||maelstrom>80)))\nactions+=/variable,name=furyCheck70,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>70))\nactions+=/variable,name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))\nactions+=/variable,name=furyCheck35,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>35))\nactions+=/variable,name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))\nactions+=/variable,name=OCPool70,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>70))\nactions+=/variable,name=OCPool60,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>60))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=buffs\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=core\nactions+=/call_action_list,name=filler\n\nactions.asc=earthen_spike\nactions.asc+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\nactions.buffs=rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.buffs+=/fury_of_air,if=!ticking&maelstrom>22\nactions.buffs+=/flametongue,if=!buff.flametongue.up\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck45\nactions.buffs+=/flametongue,if=buff.flametongue.remains<6+gcd\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<6+gcd\nactions.buffs+=/totem_mastery,if=buff.resonance_totem.remains<2\n\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions.cds=bloodlust,if=target.health.pct<25||time>0.500\nactions.cds+=/berserking,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/blood_fury,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=(cooldown.strike.remains>0)&buff.ascendance.down\nactions.cds+=/earth_elemental\n\nactions.core=earthen_spike,if=variable.furyCheck25\nactions.core+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.core+=/crash_lightning,if=active_enemies>=8||(active_enemies>=6&talent.crashing_storm.enabled)\nactions.core+=/stormstrike,if=buff.stormbringer.up\nactions.core+=/crash_lightning,if=active_enemies>=4||(active_enemies>=2&talent.crashing_storm.enabled)\nactions.core+=/lightning_bolt,if=talent.overcharge.enabled&variable.furyCheck45&maelstrom>=40\nactions.core+=/stormstrike,if=(!talent.overcharge.enabled&variable.furyCheck35)||(talent.overcharge.enabled&variable.furyCheck80)\nactions.core+=/sundering\nactions.core+=/flametongue,if=talent.searing_assault.enabled\nactions.core+=/lava_lash,if=buff.hot_hand.react\nactions.core+=/crash_lightning,if=active_enemies>=3\n\nactions.filler=rockbiter,if=maelstrom<70\nactions.filler+=/flametongue,if=talent.searing_assault.enabled||buff.flametongue.remains<4.8\nactions.filler+=/crash_lightning,if=(talent.crashing_storm.enabled||active_enemies>=2)&debuff.earthen_spike.up&maelstrom>=40&variable.OCPool60\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8&maelstrom>40\nactions.filler+=/lava_lash,if=maelstrom>=50&variable.OCPool70&variable.furyCheck80\nactions.filler+=/rockbiter\nactions.filler+=/crash_lightning,if=(maelstrom>=65||talent.crashing_storm.enabled||active_enemies>=2)&variable.OCPool60&variable.furyCheck45\nactions.filler+=/flametongue\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/engine/class_modules/sc_shaman.cpp#L7496",
					["builtIn"] = true,
					["date"] = 20180715.2325,
					["spec"] = 262,
					["desc"] = "This is a default package of action lists for Elemental Shamans for BfA.",
					["profile"] = "actions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/storm_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\nactions+=/bloodlust\nactions+=/potion\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n\n// Aoe APL\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\nactions.aoe+=/earthquake\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n// Single target - Ascendance\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n\nactions.single_target=elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20180715.2325,
					["warnings"] = "",
					["author"] = "SimulationCraft Devs",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [4]
							{
								["action"] = "earthquake",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [7]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [9]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [11]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [12]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "target.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [19]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
						},
						["default"] = {
							{
								["action"] = "bloodlust",
								["enabled"] = false,
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [9]
						},
					},
				},
			},
		},
		["Niseko - Stormscale"] = {
			["Class Option: forecast_swings"] = true,
			["displays"] = {
				["AOE"] = {
					["rel"] = "CENTER",
					["y"] = -146.000015258789,
					["x"] = -176.999816894531,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["y"] = -198.000076293945,
					["x"] = -179,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = -206.999893188477,
					["x"] = -294.000183105469,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = -210,
					["x"] = -232.000015258789,
				},
			},
			["Class Option: t20_stack_threshold"] = 12,
			["Class Option: save_for_aoe"] = false,
			["Toggle State: save_earthen_spike"] = false,
			["Class Option: allow_dw_desync"] = true,
			["Class Option: forecast_fury"] = true,
			["runOnce"] = {
				["useNewAPLsForDemonHunters_06132017_1"] = true,
				["removeActionListEnabled_04102017"] = true,
				["reduceExtremeZoom_12182017"] = true,
				["changeSwipesToSwipe_11052017"] = true,
				["reviseDisplayModes_20180709"] = true,
				["elementalSimpleAOEis3_12132017"] = true,
				["turnOffDebug_04162017"] = true,
				["enableAllOfTheThings_20180820"] = true,
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
			["Toggle State: hold_t20_stacks"] = false,
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier22/T22_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20181022.2129,
					["author"] = "SimulationCraft",
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# October 22, 2018 - 9:29 PM",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
						["core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck25",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "sundering",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & active_enemies > 1 & ( buff.stormbringer.up || ( variable.OCPool70 & variable.furyCheck35 ) )",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( buff.gathering_storms.up & variable.OCPool70 & variable.furyCheck35 )",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck45 & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool70 & variable.furyCheck35",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 45 ) )",
								["var_name"] = "furyCheck45",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [2]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 35 ) )",
								["var_name"] = "furyCheck35",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [3]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 25 ) )",
								["var_name"] = "furyCheck25",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [4]
							{
								["value"] = "( ! talent.overcharge.enabled || active_enemies > 1 || ( talent.overcharge.enabled & active_enemies = 1 & ( cooldown.lightning_bolt.remains >= 2 * gcd || maelstrom > 80 ) ) )",
								["var_name"] = "OCPool80",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [5]
							{
								["value"] = "( ! talent.overcharge.enabled || active_enemies > 1 || ( talent.overcharge.enabled & active_enemies = 1 & ( cooldown.lightning_bolt.remains >= 2 * gcd || maelstrom > 70 ) ) )",
								["var_name"] = "OCPool70",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [6]
							{
								["value"] = "( ! talent.overcharge.enabled || active_enemies > 1 || ( talent.overcharge.enabled & active_enemies = 1 & ( cooldown.lightning_bolt.remains >= 2 * gcd || maelstrom > 60 ) ) )",
								["var_name"] = "OCPool60",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "buffs",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "core",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [15]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [7]
						},
						["asc"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [3]
						},
						["buffs"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & maelstrom >= 20",
								["action"] = "fury_of_air",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck25",
								["action"] = "frostbrand",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue.remains < 4.8 + gcd",
								["action"] = "flametongue",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck25",
								["action"] = "frostbrand",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [8]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & buff.ascendance.up ) || ( talent.elemental_spirits.enabled & feral_spirit.remains > 5 ) || ( ! talent.ascendance.enabled & ! talent.elemental_spirits.enabled )",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [6]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [8]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [9]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70 & ! buff.strength_of_earth.up",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled & variable.OCPool60",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool80 & variable.furyCheck45",
								["action"] = "lava_lash",
							}, -- [3]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [5]
						},
					},
					["version"] = 20181022.2129,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 8: Unsupported action 'auto_attack'.\n\nImported 8 action lists.\n",
					["spec"] = 263,
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# October 22, 2018 - 9:29 PM\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\n\n# Executed every time the actor is available.\nactions=wind_shear\nactions+=/variable,name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))\nactions+=/variable,name=furyCheck35,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>35))\nactions+=/variable,name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))\nactions+=/variable,name=OCPool80,value=(!talent.overcharge.enabled||active_enemies>1||(talent.overcharge.enabled&active_enemies=1&(cooldown.lightning_bolt.remains>=2*gcd||maelstrom>80)))\nactions+=/variable,name=OCPool70,value=(!talent.overcharge.enabled||active_enemies>1||(talent.overcharge.enabled&active_enemies=1&(cooldown.lightning_bolt.remains>=2*gcd||maelstrom>70)))\nactions+=/variable,name=OCPool60,value=(!talent.overcharge.enabled||active_enemies>1||(talent.overcharge.enabled&active_enemies=1&(cooldown.lightning_bolt.remains>=2*gcd||maelstrom>60)))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=buffs\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=core\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck25\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\nactions.buffs=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck25\nactions.buffs+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.buffs+=/fury_of_air,if=!ticking&maelstrom>=20\nactions.buffs+=/flametongue,if=!buff.flametongue.up\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck25\nactions.buffs+=/flametongue,if=buff.flametongue.remains<4.8+gcd\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck25\nactions.buffs+=/totem_mastery,if=buff.resonance_totem.remains<2\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/berserking,if=(talent.ascendance.enabled&buff.ascendance.up)||(talent.elemental_spirits.enabled&feral_spirit.remains>5)||(!talent.ascendance.enabled&!talent.elemental_spirits.enabled)\nactions.cds+=/blood_fury,if=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\nactions.cds+=/fireblood,if=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\nactions.cds+=/ancestral_call,if=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/earth_elemental\n\nactions.core=earthen_spike,if=variable.furyCheck25\nactions.core+=/sundering,if=active_enemies>=3\nactions.core+=/stormstrike,cycle_targets=1,if=azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&active_enemies>1&(buff.stormbringer.up||(variable.OCPool70&variable.furyCheck35))\nactions.core+=/stormstrike,if=buff.stormbringer.up||(buff.gathering_storms.up&variable.OCPool70&variable.furyCheck35)\nactions.core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck25\nactions.core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck45&maelstrom>=40\nactions.core+=/stormstrike,if=variable.OCPool70&variable.furyCheck35\nactions.core+=/sundering\nactions.core+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck25\nactions.core+=/flametongue,if=talent.searing_assault.enabled\nactions.core+=/lava_lash,if=talent.hot_hand.enabled&buff.hot_hand.react\nactions.core+=/crash_lightning,if=active_enemies>1&variable.furyCheck25\n\nactions.filler=rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool60\nactions.filler+=/lava_lash,if=variable.OCPool80&variable.furyCheck45\nactions.filler+=/rockbiter\nactions.filler+=/flametongue\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Elemental.simc",
					["builtIn"] = true,
					["date"] = 20181014.1124,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Elemental.simc\n# October 14, 2018 - 11:23",
					["profile"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Elemental.simc\n# October 14, 2018 - 11:23\n\n# Changes:\n# - Remove time / bloodlust check from Ascendance.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.aoe+=/flame_shock,if=refreshable&spell_targets.chain_lightning<4\nactions.aoe+=/earthquake\n# Only cast Lava Burst on three targets if it is an instant.\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120)\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)\n# Keep SK for large or soon add waves.\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.single_target+=/earthquake,if=active_enemies>1&spell_targets.chain_lightning>1&!talent.exposed_elements.enabled\n# Use the debuff before casting Earth Shock again.\nactions.single_target+=/lightning_bolt,if=talent.exposed_elements.enabled&debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\n# If possible, use Earth Shock with Master of the Elements.\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,if=refreshable\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.single_target+=/icefury,if=talent.icefury.enabled\nactions.single_target+=/lava_beam,if=talent.ascendance.enabled&active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20181014.1124,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
							}, -- [4]
							{
								["action"] = "earthquake",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [8]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_burst",
								["moving"] = "1",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [11]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [12]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 )",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled )",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1 & ! talent.exposed_elements.enabled",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.exposed_elements.enabled & debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled",
								["action"] = "icefury",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [19]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled",
								["action"] = "storm_elemental",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
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
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [8]
						},
					},
				},
			},
			["toggles"] = {
				["cooldowns"] = {
					["value"] = true,
				},
				["defensives"] = {
					["value"] = true,
				},
			},
			["Class Option: optimistic_overload"] = false,
			["clashes"] = {
				["windstrike"] = 0.25,
			},
			["specs"] = {
				[263] = {
					["maxRefresh"] = 10,
					["package"] = "Enhancement",
					["aoe"] = 2,
					["damageDots"] = true,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["potion"] = "battle_potion_of_agility",
					["cycle"] = false,
					["nameplateRange"] = 8,
					["abilities"] = {
						["earth_elemental"] = {
							["disabled"] = true,
						},
					},
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["damage"] = true,
				},
				[262] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["damageDots"] = true,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["abilities"] = {
						["earth_elemental"] = {
							["disabled"] = true,
						},
					},
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_intellect",
					["package"] = "Elemental",
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["potionsReset"] = 20180919.1,
					["damage"] = true,
				},
			},
			["iconStore"] = {
				["minimapPos"] = 219.99599658932,
				["hide"] = true,
			},
			["minimapIcon"] = true,
		},
		["Nisetest - Stormscale"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[263] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["package"] = "Enhancement",
					["throttleRefresh"] = false,
					["potionsReset"] = 20180910.4,
					["nameplateRange"] = 8,
					["potion"] = "prolonged_power",
					["nameplates"] = true,
					["aoe"] = 2,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["damage"] = true,
				},
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["package"] = "Elemental",
					["throttleRefresh"] = false,
					["potionsReset"] = 20180910.4,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_intellect",
					["nameplates"] = false,
					["aoe"] = 3,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier22/T22_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20180916.0019,
					["spec"] = 263,
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier22/T22_Shaman_Enhancement.simc\n# September 17, 2018 - 00:11 AM\n\n# Changes:\n# - Added Totem Mastery to Precombat.",
					["lists"] = {
						["core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck25",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "sundering",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & active_enemies > 1 & ( buff.stormbringer.up || ( variable.OCPool70 & variable.furyCheck35 ) )",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( buff.gathering_storms.up & variable.OCPool70 & variable.furyCheck35 )",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck45 & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool70 & variable.furyCheck35",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 45 ) )",
								["var_name"] = "furyCheck45",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [2]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 35 ) )",
								["var_name"] = "furyCheck35",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [3]
							{
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 25 ) )",
								["var_name"] = "furyCheck25",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [4]
							{
								["value"] = "( ! talent.overcharge.enabled || active_enemies > 1 || ( talent.overcharge.enabled & active_enemies = 1 & ( cooldown.lightning_bolt.remains >= 2 * gcd || maelstrom > 80 ) ) )",
								["var_name"] = "OCPool80",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [5]
							{
								["value"] = "( ! talent.overcharge.enabled || active_enemies > 1 || ( talent.overcharge.enabled & active_enemies = 1 & ( cooldown.lightning_bolt.remains >= 2 * gcd || maelstrom > 70 ) ) )",
								["var_name"] = "OCPool70",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [6]
							{
								["value"] = "( ! talent.overcharge.enabled || active_enemies > 1 || ( talent.overcharge.enabled & active_enemies = 1 & ( cooldown.lightning_bolt.remains >= 2 * gcd || maelstrom > 60 ) ) )",
								["var_name"] = "OCPool60",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "buffs",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "core",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [15]
						},
						["asc"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [3]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [7]
						},
						["buffs"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck25",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & maelstrom >= 20",
								["action"] = "fury_of_air",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck25",
								["action"] = "frostbrand",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue.remains < 4.8 + gcd",
								["action"] = "flametongue",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck25",
								["action"] = "frostbrand",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [8]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & buff.ascendance.up ) || ( talent.elemental_spirits.enabled & feral_spirit.remains > 5 ) || ( ! talent.ascendance.enabled & ! talent.elemental_spirits.enabled )",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [6]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [8]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [9]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled & variable.OCPool60",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool80 & variable.furyCheck45",
								["action"] = "lava_lash",
							}, -- [3]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [5]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
					},
					["version"] = 20180916.0019,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 8: Unsupported action 'auto_attack'.\n\nImported 8 action lists.\n",
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier22/T22_Shaman_Enhancement.simc\n# September 17, 2018 - 00:11 AM\n\n# Changes:\n# - Added Totem Mastery to Precombat.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lightning_shield\nactions.precombat+=/totem_mastery\n\n# Executed every time the actor is available.\nactions=wind_shear\nactions+=/variable,name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))\nactions+=/variable,name=furyCheck35,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>35))\nactions+=/variable,name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))\nactions+=/variable,name=OCPool80,value=(!talent.overcharge.enabled||active_enemies>1||(talent.overcharge.enabled&active_enemies=1&(cooldown.lightning_bolt.remains>=2*gcd||maelstrom>80)))\nactions+=/variable,name=OCPool70,value=(!talent.overcharge.enabled||active_enemies>1||(talent.overcharge.enabled&active_enemies=1&(cooldown.lightning_bolt.remains>=2*gcd||maelstrom>70)))\nactions+=/variable,name=OCPool60,value=(!talent.overcharge.enabled||active_enemies>1||(talent.overcharge.enabled&active_enemies=1&(cooldown.lightning_bolt.remains>=2*gcd||maelstrom>60)))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=buffs\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=core\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck25\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\nactions.buffs=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck25\nactions.buffs+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.buffs+=/fury_of_air,if=!ticking&maelstrom>=20\nactions.buffs+=/flametongue,if=!buff.flametongue.up\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck25\nactions.buffs+=/flametongue,if=buff.flametongue.remains<4.8+gcd\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck25\nactions.buffs+=/totem_mastery,if=buff.resonance_totem.remains<2\n\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions.cds=bloodlust,if=target.health.pct<25||time>0.500\nactions.cds+=/berserking,if=(talent.ascendance.enabled&buff.ascendance.up)||(talent.elemental_spirits.enabled&feral_spirit.remains>5)||(!talent.ascendance.enabled&!talent.elemental_spirits.enabled)\nactions.cds+=/blood_fury,if=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\nactions.cds+=/fireblood,if=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\nactions.cds+=/ancestral_call,if=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/earth_elemental\n\nactions.core=earthen_spike,if=variable.furyCheck25\nactions.core+=/sundering,if=active_enemies>=3\nactions.core+=/stormstrike,cycle_targets=1,if=azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&active_enemies>1&(buff.stormbringer.up||(variable.OCPool70&variable.furyCheck35))\nactions.core+=/stormstrike,if=buff.stormbringer.up||(buff.gathering_storms.up&variable.OCPool70&variable.furyCheck35)\nactions.core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck25\nactions.core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck45&maelstrom>=40\nactions.core+=/stormstrike,if=variable.OCPool70&variable.furyCheck35\nactions.core+=/sundering\nactions.core+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck25\nactions.core+=/flametongue,if=talent.searing_assault.enabled\nactions.core+=/lava_lash,if=talent.hot_hand.enabled&buff.hot_hand.react\nactions.core+=/crash_lightning,if=active_enemies>1&variable.furyCheck25\n\nactions.filler=rockbiter,if=maelstrom<70\nactions.filler+=/crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool60\nactions.filler+=/lava_lash,if=variable.OCPool80&variable.furyCheck45\nactions.filler+=/rockbiter\nactions.filler+=/flametongue\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd",
					["author"] = "SimulationCraft",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Elemental.simc",
					["builtIn"] = true,
					["date"] = 20180813.1733,
					["spec"] = 262,
					["desc"] = "This is a default package of action lists for Elemental Shamans for BfA.",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\n# Executed every time the actor is available.\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions=bloodlust,if=target.health.pct<25||time>0.500\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion\n# Interrupt of casts and is reliable trigger of Sephuz Secret.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\nactions.aoe+=/earthquake\n# Only cast Lava Burst on three targets if it is an instant.\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,target_if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)\n# Keep SK for large or soon add waves.\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.single_target+=/earthquake,if=active_enemies>1&spell_targets.chain_lightning>1&!talent.exposed_elements.enabled\n# Use the debuff before casting Earth Shock again.\nactions.single_target+=/lightning_bolt,if=talent.exposed_elements.enabled&debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\n# If possible, use Earth Shock with Master of the Elements.\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,target_if=refreshable\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up\nactions.single_target+=/icefury,if=talent.icefury.enabled\nactions.single_target+=/lava_beam,if=talent.ascendance.enabled&active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,target_if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20180813.1733,
					["warnings"] = "Imported 4 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "spell_targets.chain_lightning < 4",
								["target_if"] = "refreshable",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering",
								["action"] = "earth_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering & buff.echoes_of_the_great_sundering.up || ! equipped.echoes_of_the_great_sundering",
								["action"] = "earthquake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [8]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [10]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [11]
							{
								["moving"] = "1",
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
							}, -- [12]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [13]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [17]
							{
								["moving"] = "1",
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
							}, -- [18]
							{
								["moving"] = "1",
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
							}, -- [19]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
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
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [12]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [8]
						},
					},
					["author"] = "SimulationCraft Devs",
				},
			},
		},
		["Niseko - Twisting Nether"] = {
			["Enabled"] = false,
			["specs"] = {
				[258] = {
					["enabled"] = false,
					["maxRefresh"] = 10,
					["nameplateRange"] = 8,
					["nameplates"] = false,
					["throttleRefresh"] = false,
					["damageExpiration"] = 6,
					["aoe"] = 3,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["runOnce"] = {
				["useNewAPLsForDemonHunters_06132017_1"] = true,
				["removeActionListEnabled_04102017"] = true,
				["reduceExtremeZoom_12182017"] = true,
				["changeSwipesToSwipe_11052017"] = true,
				["reviseDisplayModes_20180709"] = true,
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
			["AutoDisabled"] = true,
		},
		["Nisedog - Stormscale"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
			},
			["specs"] = {
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Elemental",
					["aoe"] = 3,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = true,
					["damage"] = true,
				},
				[263] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Enhancement",
					["aoe"] = 2,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20180728.1809,
					["spec"] = 263,
					["desc"] = "This is a package of action lists for Hekili.\n\nAdded precombat entry for Totem Mastery.",
					["lists"] = {
						["core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck25",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 8 || ( active_enemies >= 6 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 || ( active_enemies >= 2 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & variable.furyCheck45 & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.overcharge.enabled & variable.furyCheck35 ) || ( talent.overcharge.enabled & variable.furyCheck80 )",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "crash_lightning",
							}, -- [11]
						},
						["asc"] = {
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [3]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [4]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["value"] = "( ( talent.hailstorm.enabled & ! buff.frostbrand.up ) || ! talent.hailstorm.enabled )",
								["action"] = "variable",
								["var_name"] = "hailstormCheck",
							}, -- [2]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & ( ( maelstrom > 35 & cooldown.lightning_bolt.remains >= 3 * gcd ) || maelstrom > 80 ) ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck80",
							}, -- [3]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 70 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck70",
							}, -- [4]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 45 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck45",
							}, -- [5]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 35 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck35",
							}, -- [6]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 25 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck25",
							}, -- [7]
							{
								["enabled"] = true,
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 70 ) )",
								["action"] = "variable",
								["var_name"] = "OCPool70",
							}, -- [8]
							{
								["enabled"] = true,
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 60 ) )",
								["action"] = "variable",
								["var_name"] = "OCPool60",
							}, -- [9]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "buffs",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "core",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [17]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [7]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.strike.remains > 0 ) & buff.ascendance.down",
								["action"] = "ascendance",
							}, -- [6]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [7]
						},
						["buffs"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & maelstrom > 22",
								["action"] = "fury_of_air",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck45",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue.remains < 6 + gcd",
								["action"] = "flametongue",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 6 + gcd",
								["action"] = "frostbrand",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [7]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled || buff.flametongue.remains < 4.8",
								["action"] = "flametongue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.crashing_storm.enabled || active_enemies >= 2 ) & debuff.earthen_spike.up & maelstrom >= 40 & variable.OCPool60",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 & maelstrom > 40",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom >= 50 & variable.OCPool70 & variable.furyCheck80",
								["action"] = "lava_lash",
							}, -- [5]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( maelstrom >= 65 || talent.crashing_storm.enabled || active_enemies >= 2 ) & variable.OCPool60 & variable.furyCheck45",
								["action"] = "crash_lightning",
							}, -- [7]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [8]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
					},
					["version"] = 20180728.1809,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 10: Unsupported action 'auto_attack'.\n\nImported 8 action lists.\n",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lightning_shield\nactions.precombat+=/totem_mastery\n\n# Executed every time the actor is available.\nactions=wind_shear\nactions+=/variable,name=hailstormCheck,value=((talent.hailstorm.enabled&!buff.frostbrand.up)||!talent.hailstorm.enabled)\nactions+=/variable,name=furyCheck80,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&((maelstrom>35&cooldown.lightning_bolt.remains>=3*gcd)||maelstrom>80)))\nactions+=/variable,name=furyCheck70,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>70))\nactions+=/variable,name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))\nactions+=/variable,name=furyCheck35,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>35))\nactions+=/variable,name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))\nactions+=/variable,name=OCPool70,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>70))\nactions+=/variable,name=OCPool60,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>60))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=buffs\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=core\nactions+=/call_action_list,name=filler\n\nactions.asc=earthen_spike\nactions.asc+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\nactions.buffs=rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.buffs+=/fury_of_air,if=!ticking&maelstrom>22\nactions.buffs+=/flametongue,if=!buff.flametongue.up\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck45\nactions.buffs+=/flametongue,if=buff.flametongue.remains<6+gcd\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<6+gcd\nactions.buffs+=/totem_mastery,if=buff.resonance_totem.remains<2\n\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions.cds=bloodlust,if=target.health.pct<25||time>0.500\nactions.cds+=/berserking,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/blood_fury,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=(cooldown.strike.remains>0)&buff.ascendance.down\nactions.cds+=/earth_elemental\n\nactions.core=earthen_spike,if=variable.furyCheck25\nactions.core+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.core+=/crash_lightning,if=active_enemies>=8||(active_enemies>=6&talent.crashing_storm.enabled)\nactions.core+=/stormstrike,if=buff.stormbringer.up\nactions.core+=/crash_lightning,if=active_enemies>=4||(active_enemies>=2&talent.crashing_storm.enabled)\nactions.core+=/lightning_bolt,if=talent.overcharge.enabled&variable.furyCheck45&maelstrom>=40\nactions.core+=/stormstrike,if=(!talent.overcharge.enabled&variable.furyCheck35)||(talent.overcharge.enabled&variable.furyCheck80)\nactions.core+=/sundering\nactions.core+=/flametongue,if=talent.searing_assault.enabled\nactions.core+=/lava_lash,if=buff.hot_hand.react\nactions.core+=/crash_lightning,if=active_enemies>=3\n\nactions.filler=rockbiter,if=maelstrom<70\nactions.filler+=/flametongue,if=talent.searing_assault.enabled||buff.flametongue.remains<4.8\nactions.filler+=/crash_lightning,if=(talent.crashing_storm.enabled||active_enemies>=2)&debuff.earthen_spike.up&maelstrom>=40&variable.OCPool60\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8&maelstrom>40\nactions.filler+=/lava_lash,if=maelstrom>=50&variable.OCPool70&variable.furyCheck80\nactions.filler+=/rockbiter\nactions.filler+=/crash_lightning,if=(maelstrom>=65||talent.crashing_storm.enabled||active_enemies>=2)&variable.OCPool60&variable.furyCheck45\nactions.filler+=/flametongue\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd",
					["author"] = "SimC (Rusah, Purge)",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Elemental.simc",
					["builtIn"] = true,
					["date"] = 20180728.1808,
					["spec"] = 262,
					["desc"] = "This is a default package of action lists for Elemental Shamans for BfA.",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\n# Executed every time the actor is available.\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions=bloodlust,if=target.health.pct<25||time>0.500\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion\n# Interrupt of casts and is reliable trigger of Sephuz Secret.\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\n# You're looking at an abomination. Yes with shoulders you can cast only Earth Shock during Aoe and wait for shoulder procs. This playstyle works for <= 6 targets. But be aware that you'll be gambling once more...\nactions.aoe+=/earth_shock,if=equipped.echoes_of_the_great_sundering\nactions.aoe+=/earthquake,if=equipped.echoes_of_the_great_sundering&buff.echoes_of_the_great_sundering.up||!equipped.echoes_of_the_great_sundering\n# Only cast Lava Burst on three targets if it is an instant.\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,target_if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead.\nactions.single_target+=/elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\n# Keep SK for large or soon add waves.\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\n# Use your proc before casting Earth Shock again.\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\n# Use the debuff before casting Earth Shock again.\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\n# If possible, use Earth Shock with Master of the Elements.\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,target_if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,target_if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1ntation\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/storm_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\nactions+=/bloodlust\nactions+=/potion\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n\n// Aoe APL\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\nactions.aoe+=/earthquake\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n// Single target - Ascendance\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n\nactions.single_target=elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20180728.1808,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "SimulationCraft Devs",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering",
								["action"] = "earth_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering & buff.echoes_of_the_great_sundering.up || ! equipped.echoes_of_the_great_sundering",
								["action"] = "earthquake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [8]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [10]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [12]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [15]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [17]
							{
								["action"] = "earthquake",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [20]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [22]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [24]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [25]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = "1",
							}, -- [19]
							{
								["moving"] = "1ntation",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [33]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [36]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [37]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [38]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = "1",
							}, -- [39]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [40]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
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
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [12]
							{
								["action"] = "bloodlust",
								["enabled"] = false,
							}, -- [13]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [16]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [19]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [26]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [14]
						},
					},
				},
			},
		},
		["Donnerbock - Ysera"] = {
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
			["Class Option: tf_restrictions"] = 1,
			["displays"] = {
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["queuedIconSize"] = 50,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["Copy To"] = "Feral AOE",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["Default"] = true,
					["y"] = -230,
					["x"] = -83,
					["Name"] = "Feral Primary",
					["queuedFontSize"] = 12,
					["Release"] = 20171207.215448,
					["primaryIconSize"] = 50,
					["Specialization"] = 103,
					["displayType"] = "a",
				}, -- [1]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["showAE"] = false,
					["quickVisStyle"] = "b",
					["queuedIconHeight"] = 40,
					["Copy To"] = "Feral AOE",
					["primaryIconSize"] = 40,
					["targetFontSize"] = 12,
					["numIcons"] = 1,
					["displayType"] = "c",
					["queuedIconSize"] = 40,
					["defaultAPL"] = 2,
					["Name"] = "Feral AOE",
					["showSwitchAE"] = false,
					["showAuto"] = false,
					["Specialization"] = 103,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 3,
					["LastConversion"] = 20180114.3,
					["y"] = -230,
					["x"] = -135,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Release"] = 20171207.215448,
					["primaryIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["queuedIconWidth"] = 40,
				}, -- [2]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["queuedIconSize"] = 50,
					["targetFontSize"] = 12,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 14,
					["primaryFontSize"] = 12,
					["precombatAPL"] = 15,
					["Default"] = true,
					["y"] = -239.999954223633,
					["x"] = -81.0000076293945,
					["Name"] = "Guardian Primary",
					["queuedFontSize"] = 12,
					["Release"] = 20180121.231355,
					["primaryIconSize"] = 50,
					["Specialization"] = 104,
					["displayType"] = "a",
				}, -- [3]
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["queuedIconHeight"] = 40,
					["queuedIconSize"] = 40,
					["targetFontSize"] = 12,
					["numIcons"] = 1,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 12,
					["Specialization"] = 104,
					["primaryFontSize"] = 12,
					["primaryIconSize"] = 40,
					["Name"] = "Guardian Defensives",
					["y"] = -128.999816894531,
					["x"] = -225,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Release"] = 20180121.231355,
					["primaryIconWidth"] = 40,
					["primaryIconHeight"] = 40,
					["queuedIconWidth"] = 40,
				}, -- [4]
			},
			["actionLists"] = {
				{
					["Default"] = true,
					["Name"] = "Usable Items",
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
					["Specialization"] = 0,
				}, -- [1]
				{
					["Name"] = "SimC Feral: default",
					["Script"] = "",
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
					["Default"] = true,
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
					["Name"] = "SimC Feral: cooldowns",
					["Script"] = "",
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
					["Specialization"] = 103,
				}, -- [4]
				{
					["Specialization"] = 103,
					["Script"] = "",
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
					["Name"] = "SimC Feral: single target",
				}, -- [5]
				{
					["Script"] = "",
					["Default"] = true,
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
					["Specialization"] = 103,
				}, -- [6]
				{
					["Script"] = "",
					["Default"] = true,
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
					["Specialization"] = 103,
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
			["Class Option: regrowth_instant"] = true,
			["Class Option: tf_energy"] = 60,
			["Class Option: brutal_charges"] = 2,
			["Class Option: tf_overlap"] = 2,
		},
		["Vordt - Twisting Nether"] = {
			["runOnce"] = {
				["useNewAPLsForDemonHunters_06132017_1"] = true,
				["removeActionListEnabled_04102017"] = true,
				["reduceExtremeZoom_12182017"] = true,
				["changeSwipesToSwipe_11052017"] = true,
				["reviseDisplayModes_20180709"] = true,
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
				["setDisplayTypes_04022017"] = true,
				["undoIncarnationNameChange_12042017"] = true,
				["changeGuardianAPLToSimC_2018012102"] = true,
				["changeBrewmasterAPLToSimC_20180121"] = true,
			},
			["Class Option: forecast_swings"] = true,
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Unholy"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Death_Knight_Unholy.simc",
					["builtIn"] = true,
					["date"] = 20180717.135,
					["spec"] = 252,
					["desc"] = "This is the default action pack for Unholy DK in BfA.",
					["lists"] = {
						["cold_heart"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.remains < gcd & buff.unholy_strength.react & buff.cold_heart_item.stack > 16",
								["action"] = "chains_of_ice",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.cold_heart_item.stack = 20 & buff.unholy_strength.react",
								["action"] = "chains_of_ice",
							}, -- [2]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [2]
							{
								["value"] = "( cooldown.summon_gargoyle.remains < 5 & ( cooldown.dark_transformation.remains < 5 || ! equipped.taktheritrixs_shoulderpads ) ) & talent.summon_gargoyle.enabled",
								["var_name"] = "pooling_for_gargoyle",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 65 & ( pet.gargoyle.active || ! talent.summon_gargoyle.enabled ) & rune.deficit >= 5",
								["action"] = "arcane_torrent",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.active || ! talent.summon_gargoyle.enabled",
								["action"] = "blood_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.active || ! talent.summon_gargoyle.enabled",
								["action"] = "berserking",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "pet.gargoyle.active || ! talent.summon_gargoyle.enabled",
								["name"] = "feloiled_infernal_machine",
								["action"] = "feloiled_infernal_machine",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.temptation.stack = 0 & target.time_to_die > 60 ) || target.time_to_die < 60",
								["name"] = "ring_of_collapsing_futures",
								["action"] = "ring_of_collapsing_futures",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.army_of_the_dead.ready || pet.gargoyle.active || buff.unholy_frenzy.up",
								["action"] = "potion",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "(dot.virulent_plague.tick_time_remains+tick_time<=dot.virulent_plague.remains)&dot.virulent_plague.remains<=gcd",
								["action"] = "outbreak",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies >= 2",
								["list_name"] = "aoe",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generic",
							}, -- [14]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "army_of_the_dead",
								["enabled"] = true,
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.apocalypse.remains > 0",
								["action"] = "death_and_decay",
							}, -- [1]
							{
								["action"] = "defile",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & rune < 2 & ! variable.pooling_for_gargoyle",
								["action"] = "epidemic",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & rune < 2 & ! talent.epidemic.enabled & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & cooldown.apocalypse.remains > 0",
								["action"] = "scourge_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "death_and_decay.ticking & cooldown.apocalypse.remains > 0",
								["action"] = "clawing_shadows",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_gargoyle",
								["action"] = "epidemic",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.bursting_sores.enabled & spell_targets.bursting_sores >= 2 & debuff.festering_wound.stack <= 1",
								["action"] = "festering_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react & rune.deficit >= 4",
								["action"] = "death_coil",
							}, -- [9]
						},
						["generic"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_doom.react & ! variable.pooling_for_gargoyle || pet.gargoyle.active",
								["action"] = "death_coil",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 14 & ( cooldown.apocalypse.remains > 5 || debuff.festering_wound.stack > 4 ) & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.pestilence.enabled & cooldown.apocalypse.remains > 0",
								["action"] = "death_and_decay",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.apocalypse.remains > 0",
								["action"] = "defile",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ( debuff.festering_wound.up & cooldown.apocalypse.remains > 5 ) || debuff.festering_wound.stack > 4 ) & cooldown.army_of_the_dead.remains > 5",
								["action"] = "scourge_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ( debuff.festering_wound.up & cooldown.apocalypse.remains > 5 ) || debuff.festering_wound.stack > 4 ) & cooldown.army_of_the_dead.remains > 5",
								["action"] = "clawing_shadows",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & ! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( ( ( ( debuff.festering_wound.stack < 4 & ! buff.unholy_frenzy.up ) || debuff.festering_wound.stack < 3 ) & cooldown.apocalypse.remains < 3 ) || debuff.festering_wound.stack < 1 ) & cooldown.army_of_the_dead.remains > 5",
								["action"] = "festering_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_gargoyle",
								["action"] = "death_coil",
							}, -- [9]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "equipped.cold_heart & buff.cold_heart_item.stack > 10",
								["list_name"] = "cold_heart",
							}, -- [1]
							{
								["action"] = "army_of_the_dead",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack >= 4",
								["action"] = "apocalypse",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( equipped.taktheritrixs_shoulderpads & cooldown.summon_gargoyle.remains > 40 ) || ( ! equipped.taktheritrixs_shoulderpads || ! talent.summon_gargoyle.enabled )",
								["action"] = "dark_transformation",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 14",
								["action"] = "summon_gargoyle",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.festering_wound.stack < 4",
								["action"] = "unholy_frenzy",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( ( cooldown.death_and_decay.remains <= gcd & ! talent.defile.enabled ) || ( cooldown.defile.remains <= gcd & talent.defile.enabled ) )",
								["action"] = "unholy_frenzy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "(target.time_to_die<8||rune<=2)&!buff.unholy_frenzy.up",
								["action"] = "soul_reaper",
							}, -- [8]
							{
								["action"] = "unholy_blight",
								["enabled"] = true,
							}, -- [9]
						},
					},
					["version"] = 20180717.135,
					["warnings"] = "",
					["author"] = "SimulationCraft",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/raise_dead\nactions.precombat+=/army_of_the_dead\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/mind_freeze\nactions+=/variable,name=pooling_for_gargoyle,value=(cooldown.summon_gargoyle.remains<5&(cooldown.dark_transformation.remains<5||!equipped.137075))&talent.summon_gargoyle.enabled\n# Racials, Items, and other ogcds\nactions+=/arcane_torrent,if=runic_power.deficit>65&(pet.gargoyle.active||!talent.summon_gargoyle.enabled)&rune.deficit>=5\nactions+=/blood_fury,if=pet.gargoyle.active||!talent.summon_gargoyle.enabled\nactions+=/berserking,if=pet.gargoyle.active||!talent.summon_gargoyle.enabled\nactions+=/use_items\nactions+=/use_item,name=feloiled_infernal_machine,if=pet.gargoyle.active||!talent.summon_gargoyle.enabled\nactions+=/use_item,name=ring_of_collapsing_futures,if=(buff.temptation.stack=0&target.time_to_die>60)||target.time_to_die<60\nactions+=/potion,if=cooldown.army_of_the_dead.ready||pet.gargoyle.active||buff.unholy_frenzy.up\n# Maintain Virulent Plague\nactions+=/outbreak,target_if=(dot.virulent_plague.tick_time_remains+tick_time<=dot.virulent_plague.remains)&dot.virulent_plague.remains<=gcd\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=aoe,if=active_enemies>=2\nactions+=/call_action_list,name=generic\n\n# AoE rotation\nactions.aoe=death_and_decay,if=cooldown.apocalypse.remains\nactions.aoe+=/defile\nactions.aoe+=/epidemic,if=death_and_decay.ticking&rune<2&!variable.pooling_for_gargoyle\nactions.aoe+=/death_coil,if=death_and_decay.ticking&rune<2&!talent.epidemic.enabled&!variable.pooling_for_gargoyle\nactions.aoe+=/scourge_strike,if=death_and_decay.ticking&cooldown.apocalypse.remains\nactions.aoe+=/clawing_shadows,if=death_and_decay.ticking&cooldown.apocalypse.remains\nactions.aoe+=/epidemic,if=!variable.pooling_for_gargoyle\nactions.aoe+=/festering_strike,if=talent.bursting_sores.enabled&spell_targets.bursting_sores>=2&debuff.festering_wound.stack<=1\nactions.aoe+=/death_coil,if=buff.sudden_doom.react&rune.deficit>=4\n\n# Cold Heart legendary\nactions.cold_heart=chains_of_ice,if=buff.unholy_strength.remains<gcd&buff.unholy_strength.react&buff.cold_heart_item.stack>16\nactions.cold_heart+=/chains_of_ice,if=buff.cold_heart_item.stack=20&buff.unholy_strength.react\n\n# Cold heart and other on-gcd cooldowns\nactions.cooldowns=call_action_list,name=cold_heart,if=equipped.cold_heart&buff.cold_heart_item.stack>10\nactions.cooldowns+=/army_of_the_dead\nactions.cooldowns+=/apocalypse,if=debuff.festering_wound.stack>=4\nactions.cooldowns+=/dark_transformation,if=(equipped.137075&cooldown.summon_gargoyle.remains>40)||(!equipped.137075||!talent.summon_gargoyle.enabled)\nactions.cooldowns+=/summon_gargoyle,if=runic_power.deficit<14\nactions.cooldowns+=/unholy_frenzy,if=debuff.festering_wound.stack<4\nactions.cooldowns+=/unholy_frenzy,if=active_enemies>=2&((cooldown.death_and_decay.remains<=gcd&!talent.defile.enabled)||(cooldown.defile.remains<=gcd&talent.defile.enabled))\nactions.cooldowns+=/soul_reaper,target_if=(target.time_to_die<8||rune<=2)&!buff.unholy_frenzy.up\nactions.cooldowns+=/unholy_blight\n\nactions.generic=death_coil,if=buff.sudden_doom.react&!variable.pooling_for_gargoyle||pet.gargoyle.active\nactions.generic+=/death_coil,if=runic_power.deficit<14&(cooldown.apocalypse.remains>5||debuff.festering_wound.stack>4)&!variable.pooling_for_gargoyle\nactions.generic+=/death_and_decay,if=talent.pestilence.enabled&cooldown.apocalypse.remains\nactions.generic+=/defile,if=cooldown.apocalypse.remains\nactions.generic+=/scourge_strike,if=((debuff.festering_wound.up&cooldown.apocalypse.remains>5)||debuff.festering_wound.stack>4)&cooldown.army_of_the_dead.remains>5\nactions.generic+=/clawing_shadows,if=((debuff.festering_wound.up&cooldown.apocalypse.remains>5)||debuff.festering_wound.stack>4)&cooldown.army_of_the_dead.remains>5\nactions.generic+=/death_coil,if=runic_power.deficit<20&!variable.pooling_for_gargoyle\nactions.generic+=/festering_strike,if=((((debuff.festering_wound.stack<4&!buff.unholy_frenzy.up)||debuff.festering_wound.stack<3)&cooldown.apocalypse.remains<3)||debuff.festering_wound.stack<1)&cooldown.army_of_the_dead.remains>5\nactions.generic+=/death_coil,if=!variable.pooling_for_gargoyle",
				},
				["Frost DK"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Death_Knight_Frost.simc",
					["builtIn"] = true,
					["date"] = 20180720.2222,
					["author"] = "SimC",
					["desc"] = "This is a package of action lists for Hekili.\n\nYou are probably going to be surprised by the opener; I was.  Oblit, Oblit, Oblit, Oblit, ERW feels odd but is consistent with SimC (when Rime doesn't proc).  Then, you may have to wait several seconds for runes before you pop ERW.\n\nJuly 19:  Fixed a Cold Heart entry that was not testing properly.  This should cause Chains of Ice to appear at the end of a Pillar of Frost window if you're using the legendary or talent.\n\nJuly 20:  Updated APL from SimC, made the above changes and then modified APL logic to account for ERW having two charges with the legendary ring.",
					["lists"] = {
						["cold_heart"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.cold_heart_item.stack > 5 || buff.cold_heart_talent.stack > 5 ) & target.time_to_die < gcd",
								["action"] = "chains_of_ice",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.pillar_of_frost.remains <= gcd * ( 1 + ( cooldown.frostwyrms_fury.ready & 1 || 0 ) ) || buff.pillar_of_frost.remains < rune.time_to_3 ) & buff.pillar_of_frost.up",
								["action"] = "chains_of_ice",
							}, -- [2]
						},
						["obliteration"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled",
								["action"] = "remorseless_winter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.frostscythe.enabled & ! buff.rime.up & spell_targets.howling_blast >= 3",
								["action"] = "obliterate",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.killing_machine.react || ( buff.killing_machine.up & ( prev_gcd.1.frost_strike || prev_gcd.1.howling_blast || prev_gcd.1.glacial_advance ) ) ) & ( rune.time_to_4 > gcd || spell_targets.frostscythe >= 2 )",
								["action"] = "frostscythe",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.react || ( buff.killing_machine.up & ( prev_gcd.1.frost_strike || prev_gcd.1.howling_blast || prev_gcd.1.glacial_advance ) )",
								["action"] = "obliterate",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! buff.rime.up || runic_power.deficit < 10 || rune.time_to_2 > gcd ) & spell_targets.glacial_advance >= 2",
								["action"] = "glacial_advance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up & spell_targets.howling_blast >= 2",
								["action"] = "howling_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.rime.up || runic_power.deficit < 10 || rune.time_to_2 > gcd",
								["action"] = "frost_strike",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [8]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [9]
						},
						["bos_ticking"] = {
							{
								["enabled"] = true,
								["criteria"] = "runic_power <= 30",
								["action"] = "obliterate",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled",
								["action"] = "remorseless_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_5 < gcd || runic_power <= 45",
								["action"] = "obliterate",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up",
								["action"] = "frostscythe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= 30 & rune.time_to_3 > gcd",
								["action"] = "horn_of_winter",
							}, -- [6]
							{
								["action"] = "remorseless_winter",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.frostscythe >= 2",
								["action"] = "frostscythe",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 25 || rune > 3",
								["action"] = "obliterate",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 20",
								["action"] = "arcane_torrent",
							}, -- [10]
						},
						["bos_pooling"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "rune.time_to_4 < gcd & runic_power.deficit >= 25",
								["action"] = "obliterate",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & cooldown.pillar_of_frost.remains > rune.time_to_4",
								["action"] = "glacial_advance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20 & cooldown.pillar_of_frost.remains > rune.time_to_4",
								["action"] = "frost_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & runic_power.deficit > ( 15 + talent.runic_attenuation.rank * 3 )",
								["action"] = "frostscythe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit >= ( 25 + talent.runic_attenuation.rank * 3 )",
								["action"] = "obliterate",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40 & spell_targets.glacial_advance >= 2",
								["action"] = "glacial_advance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.remains > rune.time_to_4 & runic_power.deficit < 40",
								["action"] = "frost_strike",
							}, -- [8]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.gathering_storm.enabled",
								["action"] = "remorseless_winter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.frostscythe.enabled",
								["action"] = "glacial_advance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled",
								["action"] = "frost_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up",
								["action"] = "frostscythe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.rank * 3 )",
								["action"] = "glacial_advance",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.rank * 3 )",
								["action"] = "frost_strike",
							}, -- [7]
							{
								["action"] = "remorseless_winter",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "frostscythe",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > ( 25 + talent.runic_attenuation.rank * 3 )",
								["action"] = "obliterate",
							}, -- [10]
							{
								["action"] = "glacial_advance",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [14]
						},
						["standard"] = {
							{
								["action"] = "remorseless_winter",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.remorseless_winter.remains <= 2 * gcd & talent.gathering_storm.enabled",
								["action"] = "frost_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.frozen_pulse.up & talent.frozen_pulse.enabled",
								["action"] = "obliterate",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < ( 15 + talent.runic_attenuation.rank * 3 )",
								["action"] = "frost_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up & rune.time_to_4 >= gcd",
								["action"] = "frostscythe",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > ( 25 + talent.runic_attenuation.rank * 3 )",
								["action"] = "obliterate",
							}, -- [7]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [10]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_talons.remains <= gcd & buff.icy_talons.up & spell_targets.glacial_advance >= 2 & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "glacial_advance",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_talons.remains <= gcd & buff.icy_talons.up & ( ! talent.breath_of_sindragosa.enabled || cooldown.breath_of_sindragosa.remains > 15 )",
								["action"] = "frost_strike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.empower_rune_weapon.up & cooldown.pillar_of_frost.remains > 0",
								["action"] = "breath_of_sindragosa",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.breath_of_sindragosa.enabled & cooldown.breath_of_sindragosa.remains < 5",
								["list_name"] = "bos_pooling",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "dot.breath_of_sindragosa.ticking",
								["list_name"] = "bos_ticking",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.pillar_of_frost.up & talent.obliteration.enabled",
								["list_name"] = "obliteration",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies >= 2",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [12]
						},
						["cooldowns"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "horn_of_valor",
								["criteria"] = "buff.pillar_of_frost.up & ( ! talent.breath_of_sindragosa.enabled || ! cooldown.breath_of_sindragosa.remains > 0 )",
								["name"] = "horn_of_valor",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up & buff.empower_rune_weapon.up",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pillar_of_frost.up",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.empower_rune_weapon.up",
								["action"] = "pillar_of_frost",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.ready & ! talent.breath_of_sindragosa.enabled & rune.time_to_5 > gcd & runic_power.deficit >= 10",
								["action"] = "empower_rune_weapon",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.pillar_of_frost.ready & talent.breath_of_sindragosa.enabled & rune >= 3 & runic_power > 60",
								["action"] = "empower_rune_weapon",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( equipped.cold_heart || talent.cold_heart.enabled ) & ( ( ( buff.cold_heart_item.stack >= 10 || buff.cold_heart_talent.stack >= 10 ) & debuff.razorice.stack = 5 ) || target.time_to_die <= gcd )",
								["list_name"] = "cold_heart",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.pillar_of_frost.remains <= gcd & buff.pillar_of_frost.up )",
								["action"] = "frostwyrms_fury",
							}, -- [10]
						},
					},
					["version"] = 20180720.2222,
					["warnings"] = "",
					["spec"] = 251,
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/mind_freeze\n# Apply Frost Fever and maintain Icy Talons\nactions+=/howling_blast,if=!dot.frost_fever.ticking&(!talent.breath_of_sindragosa.enabled||cooldown.breath_of_sindragosa.remains>15)\nactions+=/glacial_advance,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&spell_targets.glacial_advance>=2&(!talent.breath_of_sindragosa.enabled||cooldown.breath_of_sindragosa.remains>15)\nactions+=/frost_strike,if=buff.icy_talons.remains<=gcd&buff.icy_talons.up&(!talent.breath_of_sindragosa.enabled||cooldown.breath_of_sindragosa.remains>15)\nactions+=/breath_of_sindragosa,if=buff.empower_rune_weapon.up&cooldown.pillar_of_frost.remains\nactions+=/call_action_list,name=cooldowns\nactions+=/run_action_list,name=bos_pooling,if=talent.breath_of_sindragosa.enabled&cooldown.breath_of_sindragosa.remains<5\nactions+=/run_action_list,name=bos_ticking,if=dot.breath_of_sindragosa.ticking\nactions+=/run_action_list,name=obliteration,if=buff.pillar_of_frost.up&talent.obliteration.enabled\nactions+=/run_action_list,name=aoe,if=active_enemies>=2\nactions+=/call_action_list,name=standard\n\nactions.aoe=remorseless_winter,if=talent.gathering_storm.enabled\nactions.aoe+=/glacial_advance,if=talent.frostscythe.enabled\nactions.aoe+=/frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled\nactions.aoe+=/howling_blast,if=buff.rime.up\nactions.aoe+=/frostscythe,if=buff.killing_machine.up\nactions.aoe+=/glacial_advance,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)\nactions.aoe+=/frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)\nactions.aoe+=/remorseless_winter\nactions.aoe+=/frostscythe\nactions.aoe+=/obliterate,if=runic_power.deficit>(25+talent.runic_attenuation.enabled*3)\nactions.aoe+=/glacial_advance\nactions.aoe+=/frost_strike\nactions.aoe+=/horn_of_winter\nactions.aoe+=/arcane_torrent\n\n# Breath of Sindragosa pooling rotation : starts 15s before the cd becomes available\nactions.bos_pooling=howling_blast,if=buff.rime.up\nactions.bos_pooling+=/obliterate,if=rune.time_to_4<gcd&runic_power.deficit>=25\nactions.bos_pooling+=/glacial_advance,if=runic_power.deficit<20&cooldown.pillar_of_frost.remains>rune.time_to_4\nactions.bos_pooling+=/frost_strike,if=runic_power.deficit<20&cooldown.pillar_of_frost.remains>rune.time_to_4\nactions.bos_pooling+=/frostscythe,if=buff.killing_machine.up&runic_power.deficit>(15+talent.runic_attenuation.enabled*3)\nactions.bos_pooling+=/obliterate,if=runic_power.deficit>=(25+talent.runic_attenuation.enabled*3)\nactions.bos_pooling+=/glacial_advance,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40&spell_targets.glacial_advance>=2\nactions.bos_pooling+=/frost_strike,if=cooldown.pillar_of_frost.remains>rune.time_to_4&runic_power.deficit<40\n\nactions.bos_ticking=obliterate,if=runic_power<=30\nactions.bos_ticking+=/remorseless_winter,if=talent.gathering_storm.enabled\nactions.bos_ticking+=/howling_blast,if=buff.rime.up\nactions.bos_ticking+=/obliterate,if=rune.time_to_5<gcd||runic_power<=45\nactions.bos_ticking+=/frostscythe,if=buff.killing_machine.up\nactions.bos_ticking+=/horn_of_winter,if=runic_power.deficit>=30&rune.time_to_3>gcd\nactions.bos_ticking+=/remorseless_winter\nactions.bos_ticking+=/frostscythe,if=spell_targets.frostscythe>=2\nactions.bos_ticking+=/obliterate,if=runic_power.deficit>25||rune>3\nactions.bos_ticking+=/arcane_torrent,if=runic_power.deficit>20\n\n# Cold heart conditions\nactions.cold_heart=chains_of_ice,if=(buff.cold_heart_item.stack>5||buff.cold_heart_talent.stack>5)&target.time_to_die<gcd\nactions.cold_heart+=/chains_of_ice,if=(buff.pillar_of_frost.remains<=gcd*(1+(cooldown.frostwyrms_fury.ready&1||0))||buff.pillar_of_frost.remains<rune.time_to_3)&buff.pillar_of_frost.up\n\nactions.cooldowns=use_items\nactions.cooldowns+=/use_item,name=horn_of_valor,if=buff.pillar_of_frost.up&(!talent.breath_of_sindragosa.enabled||!cooldown.breath_of_sindragosa.remains)\nactions.cooldowns+=/potion,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\nactions.cooldowns+=/blood_fury,if=buff.pillar_of_frost.up&buff.empower_rune_weapon.up\nactions.cooldowns+=/berserking,if=buff.pillar_of_frost.up\n# Frost cooldowns\nactions.cooldowns+=/pillar_of_frost,if=buff.empower_rune_weapon.up\nactions.cooldowns+=/empower_rune_weapon,if=cooldown.pillar_of_frost.ready&!talent.breath_of_sindragosa.enabled&rune.time_to_5>gcd&runic_power.deficit>=10\nactions.cooldowns+=/empower_rune_weapon,if=cooldown.pillar_of_frost.ready&talent.breath_of_sindragosa.enabled&rune>=3&runic_power>60\nactions.cooldowns+=/call_action_list,name=cold_heart,if=(equipped.cold_heart||talent.cold_heart.enabled)&(((buff.cold_heart_item.stack>=10||buff.cold_heart_talent.stack>=10)&debuff.razorice.stack=5)||target.time_to_die<=gcd)\nactions.cooldowns+=/frostwyrms_fury,if=(buff.pillar_of_frost.remains<=gcd&buff.pillar_of_frost.up)\n\n# Obliteration rotation\nactions.obliteration=remorseless_winter,if=talent.gathering_storm.enabled\nactions.obliteration+=/obliterate,if=!talent.frostscythe.enabled&!buff.rime.up&spell_targets.howling_blast>=3\nactions.obliteration+=/frostscythe,if=(buff.killing_machine.react||(buff.killing_machine.up&(prev_gcd.1.frost_strike||prev_gcd.1.howling_blast||prev_gcd.1.glacial_advance)))&(rune.time_to_4>gcd||spell_targets.frostscythe>=2)\nactions.obliteration+=/obliterate,if=buff.killing_machine.react||(buff.killing_machine.up&(prev_gcd.1.frost_strike||prev_gcd.1.howling_blast||prev_gcd.1.glacial_advance))\nactions.obliteration+=/glacial_advance,if=(!buff.rime.up||runic_power.deficit<10||rune.time_to_2>gcd)&spell_targets.glacial_advance>=2\nactions.obliteration+=/howling_blast,if=buff.rime.up&spell_targets.howling_blast>=2\nactions.obliteration+=/frost_strike,if=!buff.rime.up||runic_power.deficit<10||rune.time_to_2>gcd\nactions.obliteration+=/howling_blast,if=buff.rime.up\nactions.obliteration+=/obliterate\n\nactions.standard=remorseless_winter\nactions.standard+=/frost_strike,if=cooldown.remorseless_winter.remains<=2*gcd&talent.gathering_storm.enabled\nactions.standard+=/howling_blast,if=buff.rime.up\nactions.standard+=/obliterate,if=!buff.frozen_pulse.up&talent.frozen_pulse.enabled\nactions.standard+=/frost_strike,if=runic_power.deficit<(15+talent.runic_attenuation.enabled*3)\nactions.standard+=/frostscythe,if=buff.killing_machine.up&rune.time_to_4>=gcd\nactions.standard+=/obliterate,if=runic_power.deficit>(25+talent.runic_attenuation.enabled*3)\nactions.standard+=/frost_strike\nactions.standard+=/horn_of_winter\nactions.standard+=/arcane_torrent",
				},
			},
			["Class Option: bos_frost_strike_rp"] = 25,
			["Class Option: forecast_breath"] = true,
			["specs"] = {
				[252] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Unholy",
					["aoe"] = 2,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["damage"] = true,
				},
				[251] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Frost DK",
					["aoe"] = 2,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["damage"] = true,
				},
				[250] = {
					["enabled"] = false,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["aoe"] = 2,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["damage"] = true,
				},
			},
		},
		["Nisegob - Stormscale"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
			},
			["specs"] = {
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Elemental",
					["aoe"] = 3,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = true,
					["damage"] = true,
				},
				[263] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["nameplateRange"] = 8,
					["package"] = "Enhancement",
					["aoe"] = 2,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20180728.1809,
					["spec"] = 263,
					["desc"] = "This is a package of action lists for Hekili.\n\nAdded precombat entry for Totem Mastery.",
					["lists"] = {
						["core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck25",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 8 || ( active_enemies >= 6 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4 || ( active_enemies >= 2 & talent.crashing_storm.enabled )",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & variable.furyCheck45 & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.overcharge.enabled & variable.furyCheck35 ) || ( talent.overcharge.enabled & variable.furyCheck80 )",
								["action"] = "stormstrike",
							}, -- [7]
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "crash_lightning",
							}, -- [11]
						},
						["asc"] = {
							{
								["action"] = "earthen_spike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies >= 2",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [3]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [4]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["value"] = "( ( talent.hailstorm.enabled & ! buff.frostbrand.up ) || ! talent.hailstorm.enabled )",
								["action"] = "variable",
								["var_name"] = "hailstormCheck",
							}, -- [2]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & ( ( maelstrom > 35 & cooldown.lightning_bolt.remains >= 3 * gcd ) || maelstrom > 80 ) ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck80",
							}, -- [3]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 70 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck70",
							}, -- [4]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 45 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck45",
							}, -- [5]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 35 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck35",
							}, -- [6]
							{
								["enabled"] = true,
								["value"] = "( ! talent.fury_of_air.enabled || ( talent.fury_of_air.enabled & maelstrom > 25 ) )",
								["action"] = "variable",
								["var_name"] = "furyCheck25",
							}, -- [7]
							{
								["enabled"] = true,
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 70 ) )",
								["action"] = "variable",
								["var_name"] = "OCPool70",
							}, -- [8]
							{
								["enabled"] = true,
								["value"] = "( ! talent.overcharge.enabled || ( talent.overcharge.enabled & maelstrom > 60 ) )",
								["action"] = "variable",
								["var_name"] = "OCPool60",
							}, -- [9]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "buffs",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "core",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [17]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [7]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ( feral_spirit.remains > 5 ) || level < 100",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.strike.remains > 0 ) & buff.ascendance.down",
								["action"] = "ascendance",
							}, -- [6]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [7]
						},
						["buffs"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & maelstrom > 22",
								["action"] = "fury_of_air",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck45",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.flametongue.remains < 6 + gcd",
								["action"] = "flametongue",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 6 + gcd",
								["action"] = "frostbrand",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [7]
						},
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled || buff.flametongue.remains < 4.8",
								["action"] = "flametongue",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( talent.crashing_storm.enabled || active_enemies >= 2 ) & debuff.earthen_spike.up & maelstrom >= 40 & variable.OCPool60",
								["action"] = "crash_lightning",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 & maelstrom > 40",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom >= 50 & variable.OCPool70 & variable.furyCheck80",
								["action"] = "lava_lash",
							}, -- [5]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( maelstrom >= 65 || talent.crashing_storm.enabled || active_enemies >= 2 ) & variable.OCPool60 & variable.furyCheck45",
								["action"] = "crash_lightning",
							}, -- [7]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [8]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
					},
					["version"] = 20180728.1809,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 10: Unsupported action 'auto_attack'.\n\nImported 8 action lists.\n",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lightning_shield\nactions.precombat+=/totem_mastery\n\n# Executed every time the actor is available.\nactions=wind_shear\nactions+=/variable,name=hailstormCheck,value=((talent.hailstorm.enabled&!buff.frostbrand.up)||!talent.hailstorm.enabled)\nactions+=/variable,name=furyCheck80,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&((maelstrom>35&cooldown.lightning_bolt.remains>=3*gcd)||maelstrom>80)))\nactions+=/variable,name=furyCheck70,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>70))\nactions+=/variable,name=furyCheck45,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>45))\nactions+=/variable,name=furyCheck35,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>35))\nactions+=/variable,name=furyCheck25,value=(!talent.fury_of_air.enabled||(talent.fury_of_air.enabled&maelstrom>25))\nactions+=/variable,name=OCPool70,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>70))\nactions+=/variable,name=OCPool60,value=(!talent.overcharge.enabled||(talent.overcharge.enabled&maelstrom>60))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=buffs\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=core\nactions+=/call_action_list,name=filler\n\nactions.asc=earthen_spike\nactions.asc+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\nactions.buffs=rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.buffs+=/fury_of_air,if=!ticking&maelstrom>22\nactions.buffs+=/flametongue,if=!buff.flametongue.up\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck45\nactions.buffs+=/flametongue,if=buff.flametongue.remains<6+gcd\nactions.buffs+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<6+gcd\nactions.buffs+=/totem_mastery,if=buff.resonance_totem.remains<2\n\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions.cds=bloodlust,if=target.health.pct<25||time>0.500\nactions.cds+=/berserking,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/blood_fury,if=buff.ascendance.up||(feral_spirit.remains>5)||level<100\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=(cooldown.strike.remains>0)&buff.ascendance.down\nactions.cds+=/earth_elemental\n\nactions.core=earthen_spike,if=variable.furyCheck25\nactions.core+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>=2\nactions.core+=/crash_lightning,if=active_enemies>=8||(active_enemies>=6&talent.crashing_storm.enabled)\nactions.core+=/stormstrike,if=buff.stormbringer.up\nactions.core+=/crash_lightning,if=active_enemies>=4||(active_enemies>=2&talent.crashing_storm.enabled)\nactions.core+=/lightning_bolt,if=talent.overcharge.enabled&variable.furyCheck45&maelstrom>=40\nactions.core+=/stormstrike,if=(!talent.overcharge.enabled&variable.furyCheck35)||(talent.overcharge.enabled&variable.furyCheck80)\nactions.core+=/sundering\nactions.core+=/flametongue,if=talent.searing_assault.enabled\nactions.core+=/lava_lash,if=buff.hot_hand.react\nactions.core+=/crash_lightning,if=active_enemies>=3\n\nactions.filler=rockbiter,if=maelstrom<70\nactions.filler+=/flametongue,if=talent.searing_assault.enabled||buff.flametongue.remains<4.8\nactions.filler+=/crash_lightning,if=(talent.crashing_storm.enabled||active_enemies>=2)&debuff.earthen_spike.up&maelstrom>=40&variable.OCPool60\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8&maelstrom>40\nactions.filler+=/lava_lash,if=maelstrom>=50&variable.OCPool70&variable.furyCheck80\nactions.filler+=/rockbiter\nactions.filler+=/crash_lightning,if=(maelstrom>=65||talent.crashing_storm.enabled||active_enemies>=2)&variable.OCPool60&variable.furyCheck45\nactions.filler+=/flametongue\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd",
					["author"] = "SimC (Rusah, Purge)",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Shaman_Elemental.simc",
					["builtIn"] = true,
					["date"] = 20180728.1808,
					["spec"] = 262,
					["desc"] = "This is a default package of action lists for Elemental Shamans for BfA.",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\n# Executed every time the actor is available.\n# Bloodlust casting behavior mirrors the simulator settings for proxy bloodlust. See options 'bloodlust_percent', and 'bloodlust_time'. \nactions=bloodlust,if=target.health.pct<25||time>0.500\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion\n# Interrupt of casts and is reliable trigger of Sephuz Secret.\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\n# You're looking at an abomination. Yes with shoulders you can cast only Earth Shock during Aoe and wait for shoulder procs. This playstyle works for <= 6 targets. But be aware that you'll be gambling once more...\nactions.aoe+=/earth_shock,if=equipped.echoes_of_the_great_sundering\nactions.aoe+=/earthquake,if=equipped.echoes_of_the_great_sundering&buff.echoes_of_the_great_sundering.up||!equipped.echoes_of_the_great_sundering\n# Only cast Lava Burst on three targets if it is an instant.\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,target_if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead.\nactions.single_target+=/elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\n# Keep SK for large or soon add waves.\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\n# Use your proc before casting Earth Shock again.\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\n# Use the debuff before casting Earth Shock again.\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\n# If possible, use Earth Shock with Master of the Elements.\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,target_if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,target_if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1ntation\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/fire_elemental\nactions.precombat+=/storm_elemental\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast\n\nactions+=/bloodlust\nactions+=/potion\nactions+=/wind_shear\nactions+=/totem_mastery,if=buff.resonance_totem.remains<2\nactions+=/fire_elemental\nactions+=/storm_elemental\nactions+=/earth_elemental,if=cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n\n// Aoe APL\nactions.aoe=stormkeeper\nactions.aoe+=/ascendance,if=talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled\nactions.aoe+=/liquid_magma_totem\nactions.aoe+=/flame_shock,if=spell_targets.chain_lightning<4,target_if=refreshable\nactions.aoe+=/earthquake\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4\nactions.aoe+=/elemental_blast,if=spell_targets.chain_lightning<4\nactions.aoe+=/lava_beam\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1\nactions.aoe+=/flame_shock,moving=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n// Single target - Ascendance\nactions.single_target=flame_shock,if=!ticking||dot.flame_shock.remains<=gcd\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&!talent.storm_elemental.enabled\nactions.single_target+=/ascendance,if=(time>=60||buff.bloodlust.up)&cooldown.lava_burst.remains>0&cooldown.storm_elemental.remains<=120\n\nactions.single_target=elemental_blast,if=talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled\nactions.single_target+=/stormkeeper,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/liquid_magma_totem,if=raid_event.adds.count<3||raid_event.adds.in>50\nactions.single_target+=/earthquake,if=buff.echoes_of_the_great_sundering.up\nactions.single_target+=/lightning_bolt,if=debuff.exposed_elements.up&maelstrom>=60&!buff.ascendance.up\nactions.single_target+=/earth_shock,if=talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92)||!talent.master_of_the_elements.enabled\nactions.single_target+=/lava_burst,if=cooldown_react||buff.ascendance.up\nactions.single_target+=/flame_shock,if=refreshable\nactions.single_target+=/totem_mastery,if=buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15)\nactions.single_target+=/frost_shock,if=buff.icefury.up\nactions.single_target+=/icefury\nactions.single_target+=/lava_beam,if=active_enemies>1&spell_targets.lava_beam>1\nactions.single_target+=/chain_lightning,if=active_enemies>1&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20180728.1808,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "SimulationCraft Devs",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering",
								["action"] = "earth_shock",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "equipped.echoes_of_the_great_sundering & buff.echoes_of_the_great_sundering.up || ! equipped.echoes_of_the_great_sundering",
								["action"] = "earthquake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [8]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [10]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [12]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "stormkeeper",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [15]
							{
								["action"] = "liquid_magma_totem",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "flame_shock",
								["target_if"] = "refreshable",
							}, -- [17]
							{
								["action"] = "earthquake",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4",
								["action"] = "elemental_blast",
							}, -- [20]
							{
								["action"] = "lava_beam",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [22]
							{
								["moving"] = "1",
								["action"] = "lava_burst",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [24]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [25]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [16]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = "1",
							}, -- [19]
							{
								["moving"] = "1ntation",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || dot.flame_shock.remains <= gcd",
								["action"] = "flame_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & ! talent.storm_elemental.enabled",
								["action"] = "ascendance",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( time >= 60 || buff.bloodlust.up ) & cooldown.lava_burst.remains > 0 & cooldown.storm_elemental.remains <= 120",
								["action"] = "ascendance",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled",
								["action"] = "elemental_blast",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "stormkeeper",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.count < 3 || raid_event.adds.in > 50",
								["action"] = "liquid_magma_totem",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.echoes_of_the_great_sundering.up",
								["action"] = "earthquake",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "debuff.exposed_elements.up & maelstrom >= 60 & ! buff.ascendance.up",
								["action"] = "lightning_bolt",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 ) || ! talent.master_of_the_elements.enabled",
								["action"] = "earth_shock",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 )",
								["action"] = "totem_mastery",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.icefury.up",
								["action"] = "frost_shock",
							}, -- [33]
							{
								["action"] = "icefury",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.lava_beam > 1",
								["action"] = "lava_beam",
							}, -- [35]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [36]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [37]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [38]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
								["moving"] = "1",
							}, -- [39]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [40]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "target.health.pct < 25 || time > 0.500",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
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
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [12]
							{
								["action"] = "bloodlust",
								["enabled"] = false,
							}, -- [13]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [16]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_elemental.remains < 120 & ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 & talent.storm_elemental.enabled",
								["action"] = "earth_elemental",
							}, -- [19]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [26]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fire_elemental",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "storm_elemental",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "elemental_blast",
								["enabled"] = true,
							}, -- [14]
						},
					},
				},
			},
			["iconStore"] = {
				["minimapPos"] = 194.886142986271,
			},
		},
		["Nisefy - Stormscale"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[269] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Windwalker",
					["throttleRefresh"] = false,
					["strict"] = false,
					["aoe"] = 2,
					["debuffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle"] = true,
					["potion"] = "potion_of_bursting_blood",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = true,
					["buffPadding"] = 0.25,
				},
				[268] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Brewmaster",
					["debuffPadding"] = 0,
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["potion"] = "battle_potion_of_agility",
					["nameplateRange"] = 8,
					["aoe"] = 2,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20181023.213193,
					["spec"] = 269,
					["desc"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# October 23, 2018 - 12:15 PM\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove RJW cancellation from ST (will become a pref).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).",
					["lists"] = {
						["cd"] = {
							{
								["action"] = "invoke_xuen",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [2]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & energy.time_to_max >= 0.5",
								["action"] = "arcane_torrent",
							}, -- [5]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 9",
								["action"] = "touch_of_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || ( cooldown.fists_of_fury.remains <= 6 & chi >= 3 & cooldown.rising_sun_kick.remains <= 1 ) || target.time_to_die <= 15",
								["action"] = "storm_earth_and_fire",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains <= 2 || target.time_to_die <= 12",
								["action"] = "serenity",
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.serenity.enabled || ! talent.fist_of_the_white_tiger.enabled )",
								["action"] = "chi_burst",
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 || prev_gcd.1.spinning_crane_kick",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bloodlust.up & prev_gcd.1.rising_sun_kick & ! azerite.swift_roundhouse.enabled ) || buff.serenity.remains < 1 || ( active_enemies > 1 & active_enemies < 5 )",
								["action"] = "fists_of_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( active_enemies >= 3 || ( active_enemies = 2 & prev_gcd.1.blackout_kick ) )",
								["action"] = "spinning_crane_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["aoe"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.tiger_palm & chi <= 1 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & energy.time_to_max > 1",
								["action"] = "rushing_jade_wind",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 5 ) & cooldown.fists_of_fury.remains > 3",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( ( ( chi > 3 || cooldown.fists_of_fury.remains > 6 ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 2 ) ) || energy.time_to_max <= 3 )",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3",
								["action"] = "chi_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3 & ( energy > 46 || buff.rushing_jade_wind.down )",
								["action"] = "fist_of_the_white_tiger",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2 & ( energy > 56 || buff.rushing_jade_wind.down ) & ( ! talent.hit_combo.enabled || ! prev_gcd.1.tiger_palm )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.blackout_kick & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["st"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi >= 5",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & energy.time_to_max > 1 & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 2 & ( buff.rushing_jade_wind.down || energy > 46 )",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.blackout_kick & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) ) & buff.swift_roundhouse.stack < 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.tiger_palm & chi.max - chi >= 2 & ( buff.rushing_jade_wind.down || energy > 56 )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.serenity.enabled & cooldown.serenity.remains < 3 & energy.time_to_max > 1 & buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.good_karma.enabled",
								["interval"] = "90",
								["pct_health"] = "0.5",
								["action"] = "touch_of_karma",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.good_karma.enabled",
								["interval"] = "90",
								["pct_health"] = "1",
								["action"] = "touch_of_karma",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || buff.storm_earth_and_fire.up || ( ! talent.serenity.enabled & trinket.proc.agility.react ) || buff.bloodlust.react || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.serenity.up",
								["list_name"] = "serenity",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2 & ! prev_gcd.1.tiger_palm",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "aoe",
							}, -- [11]
						},
					},
					["version"] = 20181023.213193,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "SimC",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# October 23, 2018 - 12:15 PM\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove RJW cancellation from ST (will become a pref).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/rushing_jade_wind,if=talent.serenity.enabled&cooldown.serenity.remains<3&energy.time_to_max>1&buff.rushing_jade_wind.down\n# Touch of Karma on cooldown, if Good Karma is enabled equal to 100% of maximum health\nactions+=/touch_of_karma,interval=90,pct_health=0.5,if=!talent.good_karma.enabled,interval=90,pct_health=0.5\nactions+=/touch_of_karma,interval=90,pct_health=1,if=talent.good_karma.enabled,interval=90,pct_health=1\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm\nactions+=/call_action_list,name=cd\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&energy.time_to_max>1\nactions.aoe+=/rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3&(energy>46||buff.rushing_jade_wind.down)\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(energy>56||buff.rushing_jade_wind.down)&(!talent.hit_combo.enabled||!prev_gcd.1.tiger_palm)\nactions.aoe+=/chi_wave\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_item,name=lustrous_golden_plumage\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/touch_of_death,if=target.time_to_die>9\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)||target.time_to_die<=15\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||target.time_to_die<=12\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick&!azerite.swift_roundhouse.enabled)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\n# Single target / Cleave priority\n# actions.st=cancel_buff,name=rushing_jade_wind,if=active_enemies=1&(!talent.serenity.enabled||cooldown.serenity.remains>3)\nactions.st+=/whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&energy.time_to_max>1&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,if=chi<=2&(buff.rushing_jade_wind.down||energy>46)\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))&buff.swift_roundhouse.stack<2\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2&(buff.rushing_jade_wind.down||energy>56)\n# actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Monk_Brewmaster.simc",
					["builtIn"] = true,
					["date"] = 20180930.164,
					["author"] = "SimC",
					["desc"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health < health.max * 0.65",
								["action"] = "gift_of_the_ox",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & ( buff.dampen_harm.down || buff.diffuse_magic.down )",
								["action"] = "fortifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 25",
								["action"] = "invoke_niuzao",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "stagger.pct > ( 6 * ( 3 - ( cooldown.brews.charges_fractional ) ) ) & ( stagger.last_tick_damage_1 > ( ( 0.02 + 0.001 * ( 3 - cooldown.brews.charges_fractional ) ) * stagger.last_tick_damage_30 ) )",
								["action"] = "purifying_brew",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & incoming_damage_1999ms > ( health.max * 0.1 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2 & ! buff.ironskin_brew.up",
								["action"] = "ironskin_brew",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional > 1 & ( talent.black_ox_brew.enabled & cooldown.black_ox_brew.remains < 3 )",
								["action"] = "ironskin_brew",
							}, -- [17]
							{
								["action"] = "ironskin_brew",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "stagger.moderate",
								["action"] = "guard",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33 || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled || talent.special_delivery.enabled ) & buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [26]
							{
								["action"] = "blackout_strike",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [30]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [34]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [35]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20180930.164,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\nLine 3: Unsupported action 'gift_of_the_ox'.\n\nImported 2 action lists.\n",
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(group&0.4||0.2)&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(group&0.4||0.2)&(buff.dampen_harm.down||buff.diffuse_magic.down)\nactions+=/use_item,name=lustrous_golden_plumage\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\nactions+=/ironskin_brew\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<33||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
					["spec"] = 268,
				},
			},
			["iconStore"] = {
				["minimapPos"] = 217.199790188352,
				["hide"] = true,
			},
			["minimapIcon"] = true,
		},
		["Nedoka - Antonidas"] = {
			["actionLists"] = {
				{
					["Default"] = true,
					["Name"] = "Usable Items",
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
					["Specialization"] = 0,
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
					["Name"] = "SimC Elemental: single lr",
					["Script"] = "",
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
					["Default"] = true,
				}, -- [12]
				{
					["Name"] = "SimC Elemental: single if",
					["Script"] = "",
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
					["Default"] = true,
				}, -- [13]
				{
					["Name"] = "SimC Elemental: AOE",
					["Script"] = "",
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
					["Specialization"] = 262,
				}, -- [14]
				{
					["Specialization"] = 262,
					["Name"] = "SimC Elemental: single asc",
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
					["Script"] = "",
				}, -- [15]
			},
			["Class Option: forecast_swings"] = true,
			["displays"] = {
				{
					["captionFontSize"] = 12,
					["kbFontSize"] = 12,
					["Primary Caption Aura"] = "Stormbringer",
					["targetFont"] = "PT Sans Narrow",
					["primaryIconSize"] = 50,
					["showAuraInfo"] = true,
					["Maximum Time"] = 30,
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
					["Specialization"] = 263,
					["delayFont"] = "PT Sans Narrow",
					["Copy To"] = "Enhancement Single-Target",
					["captionFont"] = "PT Sans Narrow",
					["auraSpellID"] = 201845,
					["x"] = -82,
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["targetFontSize"] = 12,
					["queuedIconSize"] = 50,
					["quickStyle"] = "a",
					["Name"] = "Enhancement Primary",
					["Primary Caption"] = "sratio",
					["simpleAOE"] = 3,
					["Default"] = true,
					["queuedFontSize"] = 12,
					["Talent Group"] = 0,
					["kbFont"] = "PT Sans Narrow",
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
					["y"] = -165,
					["x"] = -82,
					["Release"] = 20180205.20122,
					["delayFontSize"] = 12,
					["primaryIconHeight"] = 30,
					["showAE"] = false,
					["quickVisStyle"] = "b",
					["Specialization"] = 263,
					["Copy To"] = "Enhancement AOE",
					["minST"] = 3,
					["delayFont"] = "PT Sans Narrow",
					["targetFont"] = "PT Sans Narrow",
					["captionFont"] = "PT Sans Narrow",
					["Primary Caption"] = "sratio",
					["Default"] = true,
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 2,
					["minAuto"] = 3,
					["yOffsetKBs"] = 0,
					["xOffsetKBs"] = 0,
					["simpleAOE"] = 3,
					["targetFontSize"] = 12,
					["Talent Group"] = 0,
					["Name"] = "Enhancement AOE",
					["queuedFontSize"] = 12,
					["primaryIconSize"] = 40,
					["kbFont"] = "PT Sans Narrow",
					["Script"] = "single",
					["displayType"] = "c",
				}, -- [2]
				{
					["displayType"] = "a",
					["Specialization"] = 262,
					["captionFontSize"] = 12,
					["kbFont"] = "PT Sans Narrow",
					["kbFontSize"] = 12,
					["Primary Caption"] = "targets",
					["Primary Caption Aura"] = "",
					["delayFont"] = "PT Sans Narrow",
					["Default"] = true,
					["targetFont"] = "PT Sans Narrow",
					["queuedIconSize"] = 40,
					["Talent Group"] = 0,
					["targetFontSize"] = 12,
					["primaryIconSize"] = 40,
					["captionFont"] = "PT Sans Narrow",
					["Script"] = "",
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
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 10,
					["Copy To"] = "Elemental AOE",
					["primaryFontSize"] = 12,
					["precombatAPL"] = 11,
					["showCaptions"] = true,
					["y"] = -210,
					["x"] = -82,
					["Name"] = "Elemental Primary",
					["queuedFontSize"] = 12,
					["Release"] = 20180205.20044,
					["visibilityType"] = "a",
					["showSwitchAOE"] = true,
					["delayFontSize"] = 12,
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
					["y"] = -165,
					["yOffsetKBs"] = 0,
					["Primary Caption"] = "ratio",
					["delayFontSize"] = 12,
					["primaryIconHeight"] = 30,
					["showAE"] = false,
					["displayType"] = "c",
					["Specialization"] = 262,
					["Copy To"] = "Elemental AOE",
					["minST"] = 2,
					["delayFont"] = "PT Sans Narrow",
					["targetFont"] = "PT Sans Narrow",
					["captionFont"] = "PT Sans Narrow",
					["queuedIconSize"] = 40,
					["minAuto"] = 2,
					["showCaptions"] = true,
					["LastConversion"] = 20180114.3,
					["defaultAPL"] = 10,
					["Default"] = true,
					["x"] = -82,
					["xOffsetKBs"] = 0,
					["simpleAOE"] = 3,
					["targetFontSize"] = 12,
					["Talent Group"] = 0,
					["Name"] = "Elemental AOE",
					["queuedFontSize"] = 12,
					["Release"] = 20180205.20044,
					["kbFont"] = "PT Sans Narrow",
					["Script"] = "single",
					["quickVisStyle"] = "b",
				}, -- [4]
			},
			["Toggle State: hold_t20_stacks"] = false,
			["Class Option: save_for_aoe"] = false,
			["Class Option: t20_stack_threshold"] = 12,
			["Class Option: optimistic_overload"] = false,
			["iconStore"] = {
				["minimapPos"] = 198.08349768591,
			},
			["clashes"] = {
				["windstrike"] = 0.25,
			},
			["Toggle State: save_earthen_spike"] = false,
			["Class Option: allow_dw_desync"] = true,
			["Class Option: forecast_fury"] = true,
			["Cooldowns"] = false,
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
		},
	},
}

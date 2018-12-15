
GridDB = {
	["namespaces"] = {
		["GridStatusStagger"] = {
		},
		["GridIndicatorBuffBar"] = {
			["profiles"] = {
				["Default"] = {
					["barBackgroundAlpha"] = 0.7,
					["barHeight"] = 27,
				},
			},
		},
		["GridFrame"] = {
			["profiles"] = {
				["Default"] = {
					["statusmap"] = {
						["healingBar"] = {
							["buff_EarthShield"] = false,
						},
						["text"] = {
							["buff_EarthShield"] = false,
							["unit_healthDeficit"] = false,
							["buff_Riptide"] = false,
						},
						["border"] = {
							["buff_Rejuvenation"] = false,
							["buff_EarthShield"] = false,
						},
						["buffBar"] = {
							["buff_EarthShield"] = true,
						},
						["corner4"] = {
							["buff_EarthShield"] = true,
						},
						["corner1"] = {
							["buff_EarthShield"] = false,
						},
						["frameAlpha"] = {
							["buff_EarthShield"] = false,
						},
						["corner3"] = {
							["buff_EarthShield"] = false,
							["role"] = false,
							["buff_LifeCocoon"] = false,
							["buff_Riptide"] = false,
						},
						["icon"] = {
							["alert_absorbs"] = false,
							["buff_Riptide"] = false,
							["mouseover"] = false,
							["buff_EarthShield"] = false,
						},
					},
					["texture"] = "DGround",
					["frameHeight"] = 50,
					["textorientation"] = "HORIZONTAL",
					["font"] = "Roboto-Medium",
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 70,
					["cornerSize"] = 1,
				},
			},
		},
		["GridStatusRole"] = {
			["profiles"] = {
				["Default"] = {
					["role"] = {
						["TANK"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["HEALER"] = {
							["enable"] = false,
						},
					},
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["buffBar"] = {
		},
		["GridStatusName"] = {
		},
		["GridStatusAbsorbs"] = {
		},
		["GridStatusTarget"] = {
		},
		["GridRoster"] = {
		},
		["GridStatusAuras"] = {
			["profiles"] = {
				["Default"] = {
					["advancedOptions"] = true,
					["buff_EarthShield"] = {
						["mine"] = true,
						["icon"] = 136089,
						["missing"] = false,
					},
					["buff_Riptide"] = {
						["icon"] = 252995,
						["missing"] = false,
					},
				},
			},
		},
		["GridStatusMana"] = {
			["profiles"] = {
				["Default"] = {
					["alert_lowMana"] = {
						["threshold"] = 19,
						["enable"] = false,
					},
				},
			},
		},
		["GridStatusMouseover"] = {
			["profiles"] = {
				["Default"] = {
					["mouseover"] = {
						["enable"] = false,
					},
				},
			},
		},
		["GridLayout"] = {
			["profiles"] = {
				["Default"] = {
					["hideTab"] = true,
					["backgroundTexture"] = "None",
					["layouts"] = {
						["raid"] = "ByGroup",
					},
					["borderSize"] = 1,
					["PosX"] = 575,
					["PosY"] = -626,
					["clickThrough"] = false,
					["unitSpacing"] = 0,
					["layout"] = "ByGroup",
					["splitGroups"] = false,
					["borderInset"] = 0,
					["anchorRel"] = "TOPLEFT",
					["lock"] = true,
					["borderColor"] = {
						["a"] = 0,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["layoutPadding"] = 0,
					["borderTexture"] = "None",
				},
			},
		},
		["GridStatusFastHealth"] = {
		},
		["GridStatusRange"] = {
		},
		["GridStatus"] = {
			["profiles"] = {
				["Default"] = {
					["colors"] = {
						["HUNTER"] = {
							["r"] = 0.67,
							["g"] = 0.83,
							["b"] = 0.45,
						},
						["PALADIN"] = {
							["r"] = 0.96,
							["g"] = 0.55,
							["b"] = 0.73,
						},
						["MAGE"] = {
							["r"] = 0.25,
							["g"] = 0.78,
							["b"] = 0.92,
						},
						["DRUID"] = {
							["r"] = 1,
							["g"] = 0.49,
							["b"] = 0.04,
						},
						["MONK"] = {
							["r"] = 0,
							["g"] = 1,
							["b"] = 0.59,
						},
						["DEATHKNIGHT"] = {
							["r"] = 0.77,
							["g"] = 0.12,
							["b"] = 0.23,
						},
						["PRIEST"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
						["WARLOCK"] = {
							["r"] = 0.53,
							["g"] = 0.53,
							["b"] = 0.93,
						},
						["DEMONHUNTER"] = {
							["r"] = 0.64,
							["g"] = 0.19,
							["b"] = 0.79,
						},
						["WARRIOR"] = {
							["r"] = 0.78,
							["g"] = 0.61,
							["b"] = 0.43,
						},
						["ROGUE"] = {
							["r"] = 1,
							["g"] = 0.96,
							["b"] = 0.41,
						},
						["SHAMAN"] = {
							["r"] = 0,
							["g"] = 0.44,
							["b"] = 0.87,
						},
					},
				},
			},
		},
		["GridLayoutManager"] = {
		},
		["GridStatusAggro"] = {
		},
		["GridStatusHeals"] = {
		},
		["GridStatusReadyCheck"] = {
		},
		["GridStatusRaidIcon"] = {
		},
		["GridStatusGroup"] = {
			["profiles"] = {
				["Default"] = {
					["master_looter"] = {
						["enable"] = false,
					},
					["leader"] = {
						["enable"] = false,
					},
					["assistant"] = {
						["enable"] = false,
					},
				},
			},
		},
		["GridStatusHealth"] = {
			["profiles"] = {
				["Default"] = {
					["unit_healthDeficit"] = {
						["enable"] = false,
					},
					["alert_lowHealth"] = {
						["threshold"] = 50,
					},
					["unit_health"] = {
						["useClassColors"] = false,
						["deadAsFullHealth"] = false,
					},
				},
			},
		},
		["GridStatusVehicle"] = {
		},
		["GridStatusUnitPower"] = {
		},
		["GridStatusResurrect"] = {
		},
	},
	["profileKeys"] = {
		["Niseko - Stormscale"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
		},
	},
}

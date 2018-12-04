
Grid2DB = {
	["namespaces"] = {
		["Grid2Utils"] = {
		},
		["Grid2Frame"] = {
			["profiles"] = {
				["HealerFrames"] = {
					["frameBorder"] = 1,
					["showTooltip"] = "OOC",
					["frameBorderDistance"] = 0,
					["frameHeight"] = 42,
					["frameTexture"] = "Grid2 Flat",
					["frameWidths"] = {
						["Mythic Raids"] = 85,
						["5 Man"] = 100,
						["Raids"] = 100,
						["Flex Raids"] = 85,
						["Heroic Raids"] = 85,
						["by group & role 25"] = 84,
					},
					["font"] = "Roboto-Medium",
					["frameHeights"] = {
						["Mythic Raids"] = 55,
						["5 Man"] = 55,
						["Flex Raids"] = 55,
						["Heroic Raids"] = 55,
						["Raids"] = 67,
					},
					["frameContentColor"] = {
						["b"] = 0.125490196078431,
						["g"] = 0.125490196078431,
						["r"] = 0.125490196078431,
					},
					["frameWidth"] = 105,
					["orientation"] = "HORIZONTAL",
				},
				["Taff Centre Party"] = {
					["frameColor"] = {
						["a"] = 0,
					},
					["frameHeight"] = 42,
					["frameBorder"] = 1,
					["frameTexture"] = "Grid2 Flat",
					["frameWidths"] = {
						["Mythic Raids"] = 85,
						["5 Man"] = 100,
						["Flex Raids"] = 85,
						["Heroic Raids"] = 85,
						["Raids"] = 100,
					},
					["font"] = "Roboto-Medium",
					["orientation"] = "HORIZONTAL",
					["frameContentColor"] = {
						["b"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["r"] = 0.701960784313726,
					},
					["frameHeights"] = {
						["Mythic Raids"] = 55,
						["5 Man"] = 55,
						["Flex Raids"] = 55,
						["Heroic Raids"] = 55,
						["Raids"] = 67,
					},
					["frameWidth"] = 104,
					["frameBorderDistance"] = -1,
				},
				["Mend"] = {
					["frameColor"] = {
						["a"] = 0,
					},
					["frameBorder"] = 1,
					["frameTexture"] = "DGround",
					["frameWidths"] = {
						["By Group | 40"] = 100,
						["Party"] = 100,
						["By Group & Role"] = 100,
						[25] = 84,
						[40] = 52,
						["By Group"] = 100,
						[30] = 84,
						["Party wide"] = 84,
					},
					["frameBorderTexture"] = "Plain White",
					["font"] = "Expressway",
					["frameContentColor"] = {
						["g"] = 0.0549019607843137,
						["r"] = 0.0549019607843137,
					},
					["showTooltip"] = "OOC",
					["frameHeights"] = {
						["By Group | 40"] = 61,
						["Party"] = 67,
						["By Group & Role"] = 50,
						[25] = 58,
						[40] = 40,
						["By Group"] = 61,
						[30] = 58,
						["Party wide"] = 80,
					},
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 65,
					["frameBorderDistance"] = 0,
				},
				["Taff Centre Party2"] = {
					["frameHeight"] = 42,
					["frameBorder"] = 1,
					["frameTexture"] = "Grid2 Flat",
					["frameWidths"] = {
						["Mythic Raids"] = 85,
						["5 Man"] = 100,
						["Flex Raids"] = 85,
						["Heroic Raids"] = 85,
						["Raids"] = 100,
					},
					["font"] = "Roboto-Medium",
					["frameContentColor"] = {
						["b"] = 0.125490196078431,
						["g"] = 0.125490196078431,
						["r"] = 0.125490196078431,
					},
					["showTooltip"] = "OOC",
					["frameHeights"] = {
						["Mythic Raids"] = 55,
						["5 Man"] = 55,
						["Flex Raids"] = 55,
						["Heroic Raids"] = 55,
						["Raids"] = 67,
					},
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 105,
					["frameBorderDistance"] = 0,
				},
			},
		},
		["Grid2Layout"] = {
			["global"] = {
				["customLayouts"] = {
					["by group & role 25"] = {
						{
							["maxColumns"] = 5,
							["type"] = "player",
							["sortMethod"] = "INDEX",
							["unitsPerColumn"] = 5,
							["groupBy"] = "GROUP",
							["groupingOrder"] = "1,2,3,4,5,6,7,8",
						}, -- [1]
						["meta"] = {
							["raid"] = true,
							["party"] = true,
							["solo"] = true,
							["arena"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = true,
							["showParty"] = true,
						},
					},
				},
			},
			["profiles"] = {
				["HealerFrames"] = {
					["BorderB"] = 0,
					["layouts"] = {
						["raid@lfr"] = "By Group & Role",
						["solo"] = "By Role",
						["raid@other"] = "By Group & Role",
						["party"] = "By Role",
						["raid"] = "By Group & Role",
						["raid@none"] = "By Group & Role",
						["arena"] = "By Role",
						["raid@mythic"] = "By Group & Role",
						["raid@flex"] = "by group & role 25",
						["raid@pvp"] = "By Group & Role",
					},
					["BackgroundR"] = 0,
					["FrameDisplay"] = "Grouped",
					["BorderA"] = 0,
					["BorderR"] = 0,
					["Spacing"] = 0,
					["BackgroundG"] = 0,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["PosY"] = -599.465715470556,
					["BackgroundA"] = 0,
					["PosX"] = 532.97809450296,
					["BorderG"] = 0,
					["BackgroundB"] = 0,
					["horizontal"] = false,
					["BorderTexture"] = "None",
					["FrameLock"] = true,
				},
				["Taff Centre Party"] = {
					["BackgroundG"] = 0,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["BorderB"] = 0,
					["PosY"] = -238.222146610417,
					["layouts"] = {
						["raid@lfr"] = "By Role",
						["solo"] = "Solo",
						["raid@other"] = "By Role",
						["party"] = "By Role",
						["arena"] = "By Role",
						["raid@none"] = "By Group & Role",
						["raid"] = "By Group & Role",
						["raid@mythic"] = "By Role",
						["raid@flex"] = "By Role",
						["raid@pvp"] = "By Role",
					},
					["PosX"] = -194.133340746827,
					["BackgroundR"] = 0,
					["BackgroundA"] = 0,
					["BorderTexture"] = "None",
					["BorderA"] = 0,
					["BorderR"] = 0,
					["Spacing"] = 0,
					["anchor"] = "CENTER",
					["horizontal"] = false,
					["BorderG"] = 0,
					["BackgroundB"] = 0,
				},
				["Mend"] = {
					["BorderB"] = 0,
					["layoutBySize"] = {
						[30] = "By Group | 40",
						[25] = "By Group & Role",
						[40] = "By Group & Role",
					},
					["layouts"] = {
						["raid@lfr"] = "By Group | 40",
						["solo"] = "None",
						["raid10"] = "By Group 25",
						["raid@pvp"] = "By Group | 40",
						["party"] = "Party",
						["raid@flex"] = "By Group | 40",
						["raid@none"] = "By Group | 40",
						["raid25"] = "Free Layout",
						["raid"] = "By Group",
						["raid20"] = "Free Layout",
						["raid15"] = "By Group 15",
					},
					["BackgroundR"] = 0.101960784313725,
					["ScaleSize"] = 0.95,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0,
					["Spacing"] = 2,
					["layoutScales"] = {
						["By Group 25 w/tanks"] = 0.96,
						["Party"] = 1.05,
						["5 sorted"] = 1.05,
					},
					["BackgroundG"] = 0.101960784313725,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["PosY"] = -524.245795078066,
					["FrameStrata"] = "LOW",
					["PosX"] = 0.31668908050824,
					["BackgroundA"] = 0,
					["anchor"] = "TOP",
					["BorderG"] = 0,
					["BackgroundB"] = 0.101960784313725,
					["Padding"] = 1,
					["BorderTexture"] = "None",
					["FreeLayout"] = {
						["SortTanks"] = true,
						["SortType"] = "group",
					},
				},
				["Taff Centre Party2"] = {
					["BorderB"] = 0,
					["layouts"] = {
						["raid@lfr"] = "By Group & Role",
						["solo"] = "By Role",
						["raid@other"] = "By Group & Role",
						["party"] = "By Role",
						["arena"] = "By Role",
						["raid@none"] = "By Group & Role",
						["raid"] = "By Group & Role",
						["raid@mythic"] = "By Group & Role",
						["raid@flex"] = "By Group & Role",
						["raid@pvp"] = "By Group & Role",
					},
					["BackgroundR"] = 0,
					["FrameDisplay"] = "Grouped",
					["BorderA"] = 0,
					["BorderR"] = 0,
					["Spacing"] = 0,
					["BackgroundG"] = 0,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["PosY"] = -599.465802276113,
					["BackgroundA"] = 0,
					["FrameLock"] = true,
					["BorderG"] = 0,
					["PosX"] = 532.97809450296,
					["horizontal"] = false,
					["BackgroundB"] = 0,
					["BorderTexture"] = "None",
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["Grid2Options"] = {
			["profiles"] = {
				["Taff Centre Party2"] = {
					["L"] = {
						["indicators"] = {
							["Icon-Top"] = "Raid Icon Marker",
							["Icons-Top-Left"] = "Defensives",
							["Debuffs-Bottom-Right"] = "Tank Debuffs",
						},
					},
				},
				["Taff Centre Party"] = {
					["L"] = {
						["indicators"] = {
							["Icon-Top"] = "Raid Icon Marker",
							["Icons-Top-Left"] = "Defensives",
							["Debuffs-Bottom-Right"] = "Tank Debuffs",
						},
					},
				},
				["HealerFrames"] = {
					["L"] = {
						["indicators"] = {
							["Icon-Top"] = "Raid Icon Marker",
							["Icons-Top-Left"] = "Defensives",
							["Debuffs-Bottom-Right"] = "Tank Debuffs",
						},
					},
				},
			},
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Taff Centre Party2"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["defaultEJ_difficulty"] = 16,
				},
				["Taff Centre Party"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["defaultEJ_difficulty"] = 16,
				},
				["Mend"] = {
					["lastSelectedModule"] = "Legion",
					["defaultEJ_difficulty"] = 16,
					["lastSelectedInstance"] = 1147,
				},
				["HealerFrames"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["defaultEJ_difficulty"] = 16,
				},
			},
		},
		["Grid2AoeHeals"] = {
			["profiles"] = {
				["Mend"] = {
					["showInCombat"] = false,
				},
			},
		},
	},
	["profileKeys"] = {
		["Niseko - Twisting Nether"] = "HealerFrames",
		["Nisefy - Stormscale"] = "HealerFrames",
		["Vordt - Twisting Nether"] = "HealerFrames",
		["Pixelfehler - Ysera"] = "Pixelfehler - Ysera",
		["Niseko - Stormscale"] = "HealerFrames",
	},
	["profiles"] = {
		["Taff Centre Party2"] = {
			["indicators"] = {
				["Rejuv-color"] = {
					["type"] = "bar-color",
				},
				["Mana"] = {
					["type"] = "bar",
					["texture"] = "ElvUI Blank",
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 7,
					["height"] = 2,
					["width"] = 75,
				},
				["Absorb/Shield"] = {
					["type"] = "bar",
					["level"] = 6,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["opacity"] = 0.5,
					["orientation"] = "HORIZONTAL",
					["texture"] = "ElvUI Blank",
				},
				["Renewing"] = {
					["width"] = 3,
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 0,
					},
					["duration"] = true,
					["orientation"] = "VERTICAL",
					["level"] = 8,
					["height"] = 42,
					["texture"] = "Gradient",
				},
				["Beacon-of-Light-color"] = {
					["type"] = "bar-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "ElvUI Blank",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["Icon-Top"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 10,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 16,
				},
				["text-up"] = {
					["font"] = "Expressway",
					["fontSize"] = 12,
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 8,
					["type"] = "text",
				},
				["Debuffs-Bottom-Right"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["borderSize"] = 1,
					["disableOmniCC"] = true,
					["iconSize"] = 18,
					["level"] = 9,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
					["fontSize"] = 15,
				},
				["Name-color"] = {
					["type"] = "text-color",
				},
				["Germ-color"] = {
					["type"] = "bar-color",
				},
				["Debuffs"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 3,
					["borderSize"] = 1,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 1,
					},
					["useStatusColor"] = true,
					["level"] = 9,
					["iconSize"] = 18,
					["font"] = "Expressway",
				},
				["Health-deficit"] = {
					["type"] = "multibar",
					["bar2"] = {
						["color"] = {
							["a"] = 0.800000011920929,
							["r"] = 0.96078431372549,
							["g"] = 1,
							["b"] = 0.964705882352941,
						},
						["noOverlap"] = true,
						["reverse"] = true,
					},
					["bar1"] = {
						["color"] = {
							["a"] = 0.777107656002045,
							["r"] = 0.713725490196079,
							["g"] = 0.737254901960784,
							["b"] = 1,
						},
					},
					["opacity"] = 1,
					["barCount"] = 2,
					["textureColor"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 5,
					["reverseFill"] = true,
					["texture"] = "Grid2 Flat",
				},
				["Absorbs-color"] = {
					["type"] = "bar-color",
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Absorb/Shield-color"] = {
					["type"] = "bar-color",
				},
				["Renewing-color"] = {
					["type"] = "bar-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 7,
					["fontSize"] = 8,
					["size"] = 20,
				},
				["Health-deficit-color"] = {
					["type"] = "multibar-color",
				},
				["Debuff-Time-color"] = {
					["type"] = "text-color",
				},
				["My-Buffs"] = {
					["type"] = "icons",
					["fontSize"] = 9,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderOpacity"] = 1,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["maxIconsPerRow"] = 4,
					["fontJustifyV"] = "MIDDLE",
					["maxIcons"] = 4,
					["font"] = "Roboto-Medium",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -4,
					},
					["fontJustifyH"] = "CENTER",
					["iconSize"] = 16,
					["level"] = 8,
					["borderSize"] = 1,
					["fontFlags"] = "",
				},
				["Beacon--color"] = {
					["type"] = "bar-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["Mana-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["Shields-color"] = {
					["type"] = "bar-color",
				},
				["Name"] = {
					["type"] = "text",
					["fontSize"] = 12,
					["font"] = "Expressway",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontFlags"] = "OUTLINE",
				},
				["health"] = {
					["type"] = "bar",
					["texture"] = "ElvUI Blank",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 6,
					["opacity"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["Icons-Top-Left"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["borderSize"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["fontSize"] = 9,
					["maxIconsPerRow"] = 2,
					["orientation"] = "HORIZONTAL",
					["level"] = 8,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 1,
					},
					["iconSize"] = 16,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["My-Buffs-Text-color"] = {
					["type"] = "text-color",
				},
			},
			["statuses"] = {
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["a"] = 0.670000016689301,
						["b"] = 1,
						["g"] = 0.784313725490196,
						["r"] = 0.71764705882353,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["a"] = 0.620000004768372,
						["b"] = 1,
						["g"] = 0.694117647058824,
						["r"] = 0.627450980392157,
					},
					["color1"] = {
						["a"] = 0.560000002384186,
						["b"] = 1,
						["g"] = 0.745098039215686,
						["r"] = 0.694117647058824,
					},
				},
				["buff-EssenceFont-mine"] = {
					["spellName"] = 191840,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.847058823529412,
					},
				},
				["debuffs-UldirTankDebuffs"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						267787, -- [1]
						265237, -- [2]
						265178, -- [3]
						274358, -- [4]
						274693, -- [5]
					},
				},
				["debuff-Magic"] = {
					["color1"] = {
						["g"] = 0.235294117647059,
						["r"] = 0,
					},
				},
				["range"] = {
					["default"] = 0.3,
				},
				["debuffs-UldirColouredFrames"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["type"] = "debuffs",
					["useWhiteList"] = true,
					["auras"] = {
						"Putrid Paroxysm", -- [1]
						"Plasma Discharge", -- [2]
						"Roiling Deceit", -- [3]
						"Omega Vector", -- [4]
						"Eye Beam", -- [5]
						"Heartbroken", -- [6]
					},
				},
				["debuff-Disease"] = {
					["color1"] = {
						["g"] = 0.32156862745098,
						["r"] = 1,
					},
				},
				["debuffs-DispellableDebuffs"] = {
					["type"] = "debuffs",
					["filterDispelDebuffs"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.580392156862745,
						["r"] = 0,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["useAlternateIcons"] = true,
					["color3"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["hideDamagers"] = true,
				},
				["raid-debuffs"] = {
					["color1"] = {
						["b"] = 0.933333333333333,
						["g"] = 1,
						["r"] = 0.988235294117647,
					},
				},
				["buff-BeaconofVirtue-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Beacon of Virtue",
				},
				["debuffs-Debuffs"] = {
					["type"] = "debuffs",
					["auras"] = {
						"Forbearance", -- [1]
						"Demonic Gateway", -- [2]
						"Sanitizing Strike", -- [3]
						"Shatter", -- [4]
						"Evolving Affliction", -- [5]
						"Rupturing Blood", -- [6]
						"Essence Shear", -- [7]
						"Heartstopper Venom", -- [8]
						"Azerite Energy", -- [9]
						"Azerite Residue", -- [10]
						"Challenger's Burden", -- [11]
						"Dark Bargain", -- [12]
						"Shadow Mend", -- [13]
						"Immunosuppression", -- [14]
						"Creator's Grace", -- [15]
						"Lunar Suffusion", -- [16]
						"Removed from the Circle", -- [17]
						"Lunar Suffision", -- [18]
						"Gaze of Aman'thul", -- [19]
						"AUGH", -- [20]
						"Temptation", -- [21]
						"Imperfect Physiology", -- [22]
						"Forbearance", -- [23]
						"Strength of the Sky", -- [24]
						"Lingering Wail", -- [25]
						"Quel'Delar's Compulsion", -- [26]
						"Bursting Boil", -- [27]
						"The Light Saves", -- [28]
						"Curse of the Dreadblades", -- [29]
						"Torment of Fel", -- [30]
						"Empowered Flame Rend", -- [31]
						"Unbreakable Will", -- [32]
						"Umbral Suffision", -- [33]
						"Aegisjalmur", -- [34]
						"the Armguard of Awe", -- [35]
						"Lingering Mischief", -- [36]
						"Sample Satisfaction", -- [37]
						"Demonic Gateway", -- [38]
						"Deserter", -- [39]
						"Orb of Frost", -- [40]
						"Dungeon Deserter", -- [41]
						"Archbishop Benedictus' Restitution", -- [42]
						"Weakened Heart", -- [43]
						"Cheated Death", -- [44]
						"Speed: Slow", -- [45]
						"Chill of the Throne", -- [46]
						"Surrendered Soul", -- [47]
						"Transporter Malfunction", -- [48]
						"Umbra Suffusion", -- [49]
						"Sense of Dread", -- [50]
						"Sands of Time", -- [51]
						"Torment of Flames", -- [52]
						"Light Infusion", -- [53]
						"Banished in Time", -- [54]
						"Lingering Infection", -- [55]
						"Speed: Normal", -- [56]
						"Putrid Blood", -- [57]
						"Astral Vulnerability", -- [58]
						"Sin'dorei Spite", -- [59]
						"Torment of Frost", -- [60]
						"Lord of Flames", -- [61]
						"Lured", -- [62]
						"Nightwell Energy", -- [63]
						"ablative shielding", -- [64]
						"Demon's Vigor", -- [65]
						"Moonfeather Fever", -- [66]
						"Fel Heart Bond Frayed", -- [67]
						"Fel Infusion", -- [68]
						"Dungeon Cooldown", -- [69]
						"Oozeling's Disgusting Aura", -- [70]
						"Fatigued", -- [71]
						"Cauterized", -- [72]
						"Warlord's Exhaustion", -- [73]
						"Slippery", -- [74]
						"Sated", -- [75]
						"Challenger's Burden", -- [76]
						"Temporal Displacement", -- [77]
						"Speed: Fast", -- [78]
						"Uncontained Fel", -- [79]
						"Gaze of Aman'Thul", -- [80]
						"Celerity Zone", -- [81]
						"Forbaerence", -- [82]
						"Masquerade", -- [83]
						"Annihilation", -- [84]
						"Strength of the Sea", -- [85]
						"Void-Touched", -- [86]
						"Number One Fan", -- [87]
						"Illusionary Night", -- [88]
						"Torment of Shadows", -- [89]
						"Evolving Affliction", -- [90]
						"Dark Purpose", -- [91]
						"Heartbroken", -- [92]
					},
					["filterLongDebuffs"] = true,
					["debuffTypeColorize"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["buffs-DefensiveCooldowns-not-mine"] = {
					["auras"] = {
						"Ancestral Protection Totem", -- [1]
						"Ancient Guardian", -- [2]
						"Anti-Magic Shell", -- [3]
						"Ardent Defender", -- [4]
						"Aspect of the Turtle", -- [5]
						"Astral Shift", -- [6]
						"Barkskin", -- [7]
						"Blessing of Sacrifice", -- [8]
						"Blessing of Spellwarding", -- [9]
						"Fade", -- [10]
						"Blur", -- [11]
						"Cloak of Shadows", -- [12]
						"Corpse Shield", -- [13]
						"Crimson Vial", -- [14]
						"Dampen Harm", -- [15]
						"Dancing Rune Weapon", -- [16]
						"Dark Pact", -- [17]
						"Darkness", -- [18]
						"Defensive Stance", -- [19]
						"Demon Spikes", -- [20]
						"Desperate Prayer", -- [21]
						"Die by the Sword", -- [22]
						"Diffuse Magic", -- [23]
						"Dispersion", -- [24]
						"Divine Protection", -- [25]
						"Divine Shield", -- [26]
						"Empower Wards", -- [27]
						"Enraged Regeneration", -- [28]
						"Eye for an Eye", -- [29]
						"Evasion", -- [30]
						"Fade", -- [31]
						"Feint", -- [32]
						"Frenzied Regeneration", -- [33]
						"Fortifying Brew", -- [34]
						"Guardian of Ancient Kings", -- [35]
						"Guardian Spirit", -- [36]
						"Greater Invisibility", -- [37]
						"Icebound Fortitude", -- [38]
						"Ice Block", -- [39]
						"Invisibility", -- [40]
						"Ironbark", -- [41]
						"Ironfur", -- [42]
						"Last Stand", -- [43]
						"Life Cocoon", -- [44]
						"Mass Spell Reflection", -- [45]
						"Metamorphosis", -- [46]
						"Netherwalk", -- [47]
						"Pain Suppression", -- [48]
						"Rage of the Sleeper", -- [49]
						"Riposte", -- [50]
						"Rune Tap", -- [51]
						"Shield Block", -- [52]
						"Shield of the Righteous", -- [53]
						"Shield of Vengeance", -- [54]
						"Shield Wall", -- [55]
						"Soul Barrier", -- [56]
						"Spell Reflection", -- [57]
						"Spirit Barrier", -- [58]
						"Survival Instincts", -- [59]
						"Stoneform", -- [60]
						"Touch of Karma", -- [61]
						"Unending Resolve", -- [62]
						"Vampiric Blood", -- [63]
						"Zen Meditation", -- [64]
						"Blessing of Freedom", -- [65]
					},
					["type"] = "buffs",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["threat"] = {
					["color2"] = {
						["b"] = 0.501960784313726,
						["r"] = 0.949019607843137,
					},
					["disableBlink"] = true,
					["color3"] = {
						["g"] = 0,
						["b"] = 0.0549019607843137,
					},
					["color1"] = {
						["r"] = 0,
					},
				},
				["shields"] = {
					["color2"] = {
						["a"] = 0.449999988079071,
						["b"] = 0.56078431372549,
						["g"] = 0.545098039215686,
						["r"] = 0.552941176470588,
					},
					["color3"] = {
						["a"] = 0.480000019073486,
						["b"] = 0.545098039215686,
						["g"] = 0.545098039215686,
						["r"] = 0.537254901960784,
					},
					["color1"] = {
						["a"] = 0.480000019073486,
						["b"] = 0.556862745098039,
						["g"] = 0.568627450980392,
						["r"] = 0.556862745098039,
					},
				},
				["mana"] = {
					["showOnlyHealers"] = true,
				},
				["debuff-Curse"] = {
					["color1"] = {
						["r"] = 0.458823529411765,
					},
				},
				["health-current"] = {
					["color2"] = {
						["b"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["r"] = 0.219607843137255,
					},
					["color1"] = {
						["b"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["r"] = 0.219607843137255,
					},
					["color3"] = {
						["b"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["r"] = 0.219607843137255,
					},
					["quickHealth"] = true,
				},
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["buff-Atonement-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Atonement",
				},
				["buffs-DruidBuffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Wild Growth", -- [1]
						"Rejuvenation", -- [2]
						"Rejuvenation(Germination)", -- [3]
						"Lifebloom", -- [4]
					},
				},
				["buffs-PaladinBuffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.780392156862745,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Beacon of Faith", -- [1]
						"Beacon of Light", -- [2]
						"Bestow Faith", -- [3]
					},
				},
				["debuff-Poison"] = {
					["color1"] = {
						["g"] = 1,
						["b"] = 0.0392156862745098,
					},
				},
				["death"] = {
					["color1"] = {
						["g"] = 0,
						["b"] = 0.0431372549019608,
					},
				},
				["ready-check"] = {
					["threshold"] = 5,
				},
				["buff-PrayerofMending-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 41635,
				},
				["buff-Riptide-mine"] = {
					["spellName"] = 61295,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buffs-MonkBuffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Soothing Mist", -- [1]
						"Renewing Mist", -- [2]
						"Enveloping Mist", -- [3]
					},
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["Beacon--color"] = {
				},
				["Mana-color"] = {
					["mana"] = 50,
				},
				["Health-deficit"] = {
					["heal-absorbs"] = 2,
					["heals-incoming"] = 3,
					["health-deficit"] = 1,
				},
				["Absorbs-color"] = {
				},
				["Mana"] = {
				},
				["border"] = {
					["debuffs-DispellableDebuffs"] = 64,
					["threat"] = 57,
				},
				["corner-top-right-color"] = {
				},
				["Renewing"] = {
					["buff-EssenceFont-mine"] = 50,
				},
				["Absorb/Shield"] = {
					["shields"] = 50,
				},
				["Renewing-color"] = {
					["buff-EssenceFont-mine"] = 50,
				},
				["text-down-color"] = {
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["resurrection"] = 156,
					["death"] = 157,
				},
				["Debuffs-Bottom-Right"] = {
					["debuffs-UldirTankDebuffs"] = 5,
				},
				["heals"] = {
				},
				["My-Buffs"] = {
					["buffs-PaladinBuffs-mine"] = 56,
					["buff-PrayerofMending-mine"] = 51,
					["buffs-MonkBuffs-mine"] = 55,
					["buff-Atonement-mine"] = 52,
					["buff-Riptide-mine"] = 50,
					["buff-BeaconofVirtue-mine"] = 53,
					["buffs-DruidBuffs-mine"] = 54,
				},
				["Debuffs"] = {
					["debuffs-Debuffs"] = 54,
				},
				["heals-color"] = {
				},
				["health-color"] = {
					["debuffs-UldirColouredFrames"] = 60,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 100,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["Name"] = {
					["name"] = 50,
				},
				["Icon-Top"] = {
					["raid-icon-player"] = 50,
				},
				["corner-top-left-color"] = {
				},
				["Icons-Top-Left"] = {
					["buffs-DefensiveCooldowns-not-mine"] = 74,
				},
				["text-up"] = {
					["offline"] = 93,
					["vehicle"] = 70,
					["feign-death"] = 96,
					["charmed"] = 65,
				},
				["text-up-color"] = {
					["vehicle"] = 70,
					["offline"] = 93,
					["feign-death"] = 96,
					["charmed"] = 65,
				},
				["Name-color"] = {
					["classcolor"] = 50,
				},
				["Absorb/Shield-color"] = {
					["shields"] = 50,
				},
			},
			["debug"] = false,
		},
		["Taff Centre Party"] = {
			["statusMap"] = {
				["Beacon--color"] = {
				},
				["Mana-color"] = {
					["mana"] = 50,
				},
				["Health-deficit"] = {
					["health-deficit"] = 1,
					["heal-absorbs"] = 2,
				},
				["Absorbs-color"] = {
				},
				["Mana"] = {
				},
				["border"] = {
					["threat"] = 57,
					["debuffs-DispellableDebuffs"] = 64,
				},
				["corner-top-right-color"] = {
				},
				["Absorb/Shield-color"] = {
					["shields"] = 50,
				},
				["Absorb/Shield"] = {
					["shields"] = 50,
				},
				["health-color"] = {
					["debuffs-UldirColouredFrames"] = 60,
					["death"] = 61,
				},
				["text-down-color"] = {
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["resurrection"] = 156,
					["death"] = 155,
				},
				["Debuffs-Bottom-Right"] = {
					["debuffs-UldirTankDebuffs"] = 5,
				},
				["HoT"] = {
					["buff-Riptide-mine"] = 50,
				},
				["My-Buffs"] = {
					["buffs-PaladinBuffs-mine"] = 56,
					["buff-PrayerofMending-mine"] = 51,
					["buff-Atonement-mine"] = 52,
					["buffs-MonkBuffs-mine"] = 55,
					["buff-BeaconofVirtue-mine"] = 53,
					["buffs-DruidBuffs-mine"] = 54,
				},
				["Debuffs"] = {
					["debuffs-Debuffs"] = 54,
				},
				["heals-color"] = {
				},
				["Icons-Top-Left"] = {
					["buffs-DefensiveCooldowns-not-mine"] = 74,
				},
				["alpha"] = {
					["range"] = 99,
					["offline"] = 97,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["corner-top-left-color"] = {
				},
				["Icon-Top"] = {
					["raid-icon-player"] = 50,
				},
				["Name"] = {
					["name"] = 50,
				},
				["heals"] = {
				},
				["text-up"] = {
					["offline"] = 93,
					["charmed"] = 65,
					["feign-death"] = 96,
					["vehicle"] = 70,
				},
				["text-up-color"] = {
					["vehicle"] = 70,
					["charmed"] = 65,
					["feign-death"] = 96,
					["offline"] = 93,
				},
				["Name-color"] = {
					["classcolor"] = 50,
					["death"] = 51,
				},
				["HoT-color"] = {
					["buff-Riptide-mine"] = 50,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["Rejuv-color"] = {
					["type"] = "bar-color",
				},
				["Mana"] = {
					["type"] = "bar",
					["texture"] = "ElvUI Blank",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["height"] = 2,
					["level"] = 7,
					["orientation"] = "HORIZONTAL",
					["width"] = 75,
				},
				["Absorb/Shield"] = {
					["type"] = "bar",
					["level"] = 6,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["opacity"] = 0.5,
					["orientation"] = "HORIZONTAL",
					["texture"] = "ElvUI Blank",
				},
				["Beacon-of-Light-color"] = {
					["type"] = "bar-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "ElvUI Blank",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["Icon-Top"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 10,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 16,
				},
				["text-up"] = {
					["font"] = "Expressway",
					["fontSize"] = 12,
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 8,
					["type"] = "text",
				},
				["Debuffs-Bottom-Right"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["borderSize"] = 1,
					["disableOmniCC"] = true,
					["iconSize"] = 18,
					["level"] = 9,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
					["fontSize"] = 15,
				},
				["Name-color"] = {
					["type"] = "text-color",
				},
				["Germ-color"] = {
					["type"] = "bar-color",
				},
				["Debuffs"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 4,
					["font"] = "Roboto-Medium",
					["iconSize"] = 18,
					["maxIconsPerRow"] = 4,
					["useStatusColor"] = true,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["borderSize"] = 1,
				},
				["test-color"] = {
					["type"] = "multibar-color",
				},
				["Health-deficit"] = {
					["type"] = "multibar",
					["reverseFill"] = true,
					["bar1"] = {
						["color"] = {
							["a"] = 0.777107656002045,
							["r"] = 0.713725490196079,
							["g"] = 0.737254901960784,
							["b"] = 1,
						},
					},
					["opacity"] = 1,
					["barCount"] = 1,
					["textureColor"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 5,
					["texture"] = "Grid2 Flat",
				},
				["Absorbs-color"] = {
					["type"] = "bar-color",
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Absorb/Shield-color"] = {
					["type"] = "bar-color",
				},
				["HoT"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 9,
					["orientation"] = "HORIZONTAL",
					["duration"] = true,
					["height"] = 3,
					["texture"] = "Grid2 Flat",
				},
				["Beacon--color"] = {
					["type"] = "bar-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 7,
					["fontSize"] = 8,
					["size"] = 20,
				},
				["Health-deficit-color"] = {
					["type"] = "multibar-color",
				},
				["Debuff-Time-color"] = {
					["type"] = "text-color",
				},
				["My-Buffs"] = {
					["type"] = "icons",
					["borderOpacity"] = 1,
					["reverseCooldown"] = true,
					["fontJustifyV"] = "MIDDLE",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 5,
					["borderSize"] = 1,
					["fontJustifyH"] = "CENTER",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["iconSize"] = 16,
					["level"] = 8,
					["font"] = "Expressway",
					["fontFlags"] = "",
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["Name"] = {
					["type"] = "text",
					["font"] = "Roboto-Medium",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 16,
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Shields-color"] = {
					["type"] = "bar-color",
				},
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["Icons-Top-Left"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["borderSize"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["fontSize"] = 9,
					["maxIconsPerRow"] = 2,
					["iconSize"] = 16,
					["level"] = 8,
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 1,
					},
				},
				["health"] = {
					["type"] = "bar",
					["texture"] = "ElvUI Blank",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 6,
					["opacity"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Mana-color"] = {
					["type"] = "bar-color",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["HoT-color"] = {
					["type"] = "bar-color",
				},
				["My-Buffs-Text-color"] = {
					["type"] = "text-color",
				},
			},
			["statuses"] = {
				["debuffs-Debuffs"] = {
					["type"] = "debuffs",
					["auras"] = {
						"Forbearance", -- [1]
						"Demonic Gateway", -- [2]
						"Sanitizing Strike", -- [3]
						"Shatter", -- [4]
						"Evolving Affliction", -- [5]
						"Rupturing Blood", -- [6]
						"Essence Shear", -- [7]
						"Heartstopper Venom", -- [8]
						"Azerite Energy", -- [9]
						"Azerite Residue", -- [10]
						"Challenger's Burden", -- [11]
						"Dark Bargain", -- [12]
						"Shadow Mend", -- [13]
						"Immunosuppression", -- [14]
					},
					["filterLongDebuffs"] = true,
					["debuffTypeColorize"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["buff-PrayerofMending-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 41635,
				},
				["health-deficit"] = {
					["color1"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["debuff-Magic"] = {
					["color1"] = {
						["g"] = 0.235294117647059,
						["r"] = 0,
					},
				},
				["range"] = {
					["default"] = 0.3,
				},
				["debuffs-UldirColouredFrames"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						"Putrid Paroxysm", -- [1]
						"Plasma Discharge", -- [2]
						"Roiling Deceit", -- [3]
						"Omega Vector", -- [4]
						"Eye Beam", -- [5]
					},
				},
				["debuff-Disease"] = {
					["color1"] = {
						["g"] = 0.32156862745098,
						["r"] = 1,
					},
				},
				["debuffs-DispellableDebuffs"] = {
					["type"] = "debuffs",
					["filterDispelDebuffs"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.580392156862745,
						["r"] = 0,
					},
				},
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["useAlternateIcons"] = true,
					["color3"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["hideDamagers"] = true,
				},
				["buff-Riptide-mine"] = {
					["spellName"] = 61295,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 0.770000010728836,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["raid-debuffs"] = {
					["color1"] = {
						["b"] = 0.933333333333333,
						["g"] = 1,
						["r"] = 0.988235294117647,
					},
				},
				["buffs-DefensiveCooldowns-not-mine"] = {
					["auras"] = {
						"Ancestral Protection Totem", -- [1]
						"Ancient Guardian", -- [2]
						"Anti-Magic Shell", -- [3]
						"Ardent Defender", -- [4]
						"Aspect of the Turtle", -- [5]
						"Astral Shift", -- [6]
						"Barkskin", -- [7]
						"Blessing of Sacrifice", -- [8]
						"Blessing of Spellwarding", -- [9]
						"Fade", -- [10]
						"Blur", -- [11]
						"Cloak of Shadows", -- [12]
						"Corpse Shield", -- [13]
						"Crimson Vial", -- [14]
						"Dampen Harm", -- [15]
						"Dancing Rune Weapon", -- [16]
						"Dark Pact", -- [17]
						"Darkness", -- [18]
						"Defensive Stance", -- [19]
						"Demon Spikes", -- [20]
						"Desperate Prayer", -- [21]
						"Die by the Sword", -- [22]
						"Diffuse Magic", -- [23]
						"Dispersion", -- [24]
						"Divine Protection", -- [25]
						"Divine Shield", -- [26]
						"Empower Wards", -- [27]
						"Enraged Regeneration", -- [28]
						"Eye for an Eye", -- [29]
						"Evasion", -- [30]
						"Fade", -- [31]
						"Feint", -- [32]
						"Frenzied Regeneration", -- [33]
						"Fortifying Brew", -- [34]
						"Guardian of Ancient Kings", -- [35]
						"Guardian Spirit", -- [36]
						"Greater Invisibility", -- [37]
						"Icebound Fortitude", -- [38]
						"Ice Block", -- [39]
						"Invisibility", -- [40]
						"Ironbark", -- [41]
						"Ironfur", -- [42]
						"Last Stand", -- [43]
						"Life Cocoon", -- [44]
						"Mass Spell Reflection", -- [45]
						"Metamorphosis", -- [46]
						"Netherwalk", -- [47]
						"Pain Suppression", -- [48]
						"Rage of the Sleeper", -- [49]
						"Riposte", -- [50]
						"Rune Tap", -- [51]
						"Shield Block", -- [52]
						"Shield of the Righteous", -- [53]
						"Shield of Vengeance", -- [54]
						"Shield Wall", -- [55]
						"Soul Barrier", -- [56]
						"Spell Reflection", -- [57]
						"Spirit Barrier", -- [58]
						"Survival Instincts", -- [59]
						"Stoneform", -- [60]
						"Touch of Karma", -- [61]
						"Unending Resolve", -- [62]
						"Vampiric Blood", -- [63]
						"Zen Meditation", -- [64]
						"Blessing of Freedom", -- [65]
					},
					["type"] = "buffs",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["threat"] = {
					["color2"] = {
						["b"] = 0.501960784313726,
						["r"] = 0.949019607843137,
					},
					["disableBlink"] = true,
					["color3"] = {
						["g"] = 0,
						["b"] = 0.0549019607843137,
					},
					["color1"] = {
						["r"] = 0,
					},
				},
				["shields"] = {
					["color2"] = {
						["a"] = 0.449999988079071,
						["b"] = 0.56078431372549,
						["g"] = 0.545098039215686,
						["r"] = 0.552941176470588,
					},
					["color3"] = {
						["a"] = 0.480000019073486,
						["b"] = 0.545098039215686,
						["g"] = 0.545098039215686,
						["r"] = 0.537254901960784,
					},
					["color1"] = {
						["a"] = 0.480000019073486,
						["b"] = 0.556862745098039,
						["g"] = 0.568627450980392,
						["r"] = 0.556862745098039,
					},
				},
				["buff-BeaconofVirtue-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Beacon of Virtue",
				},
				["debuffs-UldirTankDebuffs"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						267787, -- [1]
						265237, -- [2]
						265178, -- [3]
						274358, -- [4]
						274693, -- [5]
					},
				},
				["ready-check"] = {
					["threshold"] = 5,
				},
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["mana"] = {
					["showOnlyHealers"] = true,
				},
				["buff-Atonement-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Atonement",
				},
				["buffs-PaladinBuffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.780392156862745,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Beacon of Faith", -- [1]
						"Beacon of Light", -- [2]
						"Bestow Faith", -- [3]
					},
				},
				["debuff-Poison"] = {
					["color1"] = {
						["g"] = 1,
						["b"] = 0.0392156862745098,
					},
				},
				["health-current"] = {
					["color2"] = {
						["b"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["r"] = 0.701960784313726,
					},
					["color1"] = {
						["b"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["r"] = 0.701960784313726,
					},
					["color3"] = {
						["b"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["r"] = 0.701960784313726,
					},
					["quickHealth"] = true,
				},
				["debuff-Curse"] = {
					["color1"] = {
						["r"] = 0.458823529411765,
					},
				},
				["buffs-DruidBuffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Wild Growth", -- [1]
						"Rejuvenation", -- [2]
						"Rejuvenation(Germination)", -- [3]
						"Lifebloom", -- [4]
					},
				},
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["a"] = 0.670000016689301,
						["b"] = 1,
						["g"] = 0.784313725490196,
						["r"] = 0.71764705882353,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["a"] = 0.620000004768372,
						["b"] = 1,
						["g"] = 0.694117647058824,
						["r"] = 0.627450980392157,
					},
					["color1"] = {
						["a"] = 0.560000002384186,
						["b"] = 1,
						["g"] = 0.745098039215686,
						["r"] = 0.694117647058824,
					},
				},
				["buffs-MonkBuffs-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 1,
					["auras"] = {
						"Soothing Mist", -- [1]
						"Essence Font", -- [2]
						"Renewing Mist", -- [3]
						"Enveloping Mist", -- [4]
					},
				},
			},
		},
		["Nisefy - Stormscale"] = {
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-EnvelopingMist-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["side-top"] = {
					["buff-LifeCocoon"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 80,
					["health-low"] = 55,
					["debuff-Poison"] = 90,
					["target"] = 50,
					["debuff-Magic"] = 70,
					["debuff-Curse"] = 60,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["corner-top-right"] = {
					["buff-RenewingMist-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-top"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Gradient",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Gradient",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statuses"] = {
				["buff-RenewingMist-mine"] = {
					["type"] = "buff",
					["spellName"] = 119611,
					["useSpellId"] = true,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.5,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["buff-EnvelopingMist-mine"] = {
					["spellName"] = 124682,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 1,
						["b"] = 0.2,
					},
				},
				["buff-LifeCocoon"] = {
					["type"] = "buff",
					["spellName"] = 116849,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.4,
						["g"] = 0,
						["b"] = 0.8,
					},
				},
			},
		},
		["Niseko - Stormscale"] = {
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Riptide-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["corner-top-right"] = {
					["buff-EarthShield-mine"] = 99,
					["buff-EarthShield"] = 89,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["debuff-Curse"] = 90,
					["debuff-Magic"] = 80,
					["target"] = 50,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["side-top"] = {
					["buff-Earthliving"] = 89,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
			["versions"] = {
				["Grid2"] = 5,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-top"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Gradient",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Gradient",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statuses"] = {
				["buff-EarthShield"] = {
					["type"] = "buff",
					["spellName"] = 974,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.8,
						["g"] = 0.8,
						["b"] = 0.2,
					},
				},
				["buff-Riptide-mine"] = {
					["spellName"] = 61295,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.8,
						["g"] = 0.6,
						["b"] = 1,
					},
				},
				["buff-EarthShield-mine"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 0.9,
						["g"] = 0.9,
						["b"] = 0.4,
					},
					["type"] = "buff",
					["spellName"] = 974,
					["colorCount"] = 2,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.9,
						["g"] = 0.9,
						["b"] = 0.4,
					},
				},
				["buff-Earthliving"] = {
					["spellName"] = 51945,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.8,
						["g"] = 1,
						["b"] = 0.5,
					},
				},
			},
		},
		["HealerFrames"] = {
			["indicators"] = {
				["Beacon--color"] = {
					["type"] = "bar-color",
				},
				["Mana"] = {
					["type"] = "bar",
					["width"] = 75,
					["orientation"] = "HORIZONTAL",
					["height"] = 2,
					["level"] = 7,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["texture"] = "ElvUI Blank",
				},
				["Absorb/Shield"] = {
					["type"] = "bar",
					["opacity"] = 0.5,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 6,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Grid2 Flat",
				},
				["Renewing"] = {
					["height"] = 4,
					["type"] = "bar",
					["duration"] = true,
					["reverseFill"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 7,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Grid2 Flat",
				},
				["Beacon-of-Light-color"] = {
					["type"] = "bar-color",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["Icon-Top"] = {
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 10,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 16,
				},
				["name"] = {
					["type"] = "text",
					["fontSize"] = 12,
					["font"] = "Expressway",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 1,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontFlags"] = "OUTLINE",
				},
				["text-up"] = {
					["type"] = "text",
					["font"] = "Expressway",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 8,
					["fontSize"] = 12,
				},
				["Debuffs-Bottom-Right"] = {
					["fontSize"] = 15,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["type"] = "icons",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -1,
					},
					["iconSize"] = 18,
					["level"] = 9,
					["disableOmniCC"] = true,
					["borderSize"] = 1,
				},
				["Name-color"] = {
					["type"] = "text-color",
				},
				["Germ-color"] = {
					["type"] = "bar-color",
				},
				["Debuffs"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 3,
					["borderSize"] = 1,
					["font"] = "Expressway",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 1,
					},
					["level"] = 9,
					["iconSize"] = 18,
					["useStatusColor"] = true,
				},
				["Health-deficit"] = {
					["bar3"] = {
						["color"] = {
							["a"] = 0.75,
							["r"] = 0.219607843137255,
							["g"] = 0.219607843137255,
							["b"] = 0.219607843137255,
						},
						["reverse"] = true,
					},
					["type"] = "multibar",
					["bar2"] = {
						["color"] = {
							["a"] = 0.464893221855164,
							["b"] = 0.447058823529412,
							["g"] = 0.447058823529412,
							["r"] = 0.447058823529412,
						},
						["noOverlap"] = true,
						["reverse"] = true,
					},
					["bar1"] = {
						["color"] = {
							["a"] = 0.780000001192093,
							["b"] = 1,
							["g"] = 0.286274509803922,
							["r"] = 0,
						},
					},
					["opacity"] = 1,
					["barCount"] = 3,
					["textureColor"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 5,
					["reverseFill"] = true,
					["texture"] = "Grid2 Flat",
				},
				["Absorbs-color"] = {
					["type"] = "bar-color",
				},
				["border"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["Absorb/Shield-color"] = {
					["type"] = "bar-color",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["Renewing-color"] = {
					["type"] = "bar-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "ElvUI Blank",
				},
				["icon-center"] = {
					["type"] = "icon",
					["size"] = 20,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 7,
					["fontSize"] = 8,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["Health-deficit-color"] = {
					["type"] = "multibar-color",
				},
				["Debuff-Time-color"] = {
					["type"] = "text-color",
				},
				["My-Buffs"] = {
					["type"] = "icons",
					["fontSize"] = 9,
					["borderSize"] = 1,
					["borderOpacity"] = 1,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["level"] = 8,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 4,
					["font"] = "Roboto-Medium",
					["iconSize"] = 16,
					["fontJustifyH"] = "CENTER",
					["location"] = {
						["y"] = 2,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["maxIconsPerRow"] = 4,
					["fontJustifyV"] = "MIDDLE",
					["fontFlags"] = "",
				},
				["Mana-color"] = {
					["type"] = "bar-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["Name"] = {
					["fontSize"] = 12,
					["font"] = "Expressway",
					["type"] = "text",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 1,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontFlags"] = "OUTLINE",
				},
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
				},
				["Icons-Top-Left"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["iconSize"] = 16,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 2,
					["borderSize"] = 1,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 1,
					},
					["level"] = 8,
					["orientation"] = "HORIZONTAL",
					["maxIconsPerRow"] = 2,
					["fontSize"] = 9,
					["font"] = "Expressway",
				},
				["health"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 6,
					["opacity"] = 1,
					["texture"] = "DGround",
				},
				["Shields-color"] = {
					["type"] = "bar-color",
				},
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["Rejuv-color"] = {
					["type"] = "bar-color",
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["name-color"] = {
					["type"] = "text-color",
				},
				["My-Buffs-Text-color"] = {
					["type"] = "text-color",
				},
			},
			["statuses"] = {
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["a"] = 0.670000016689301,
						["b"] = 1,
						["g"] = 0.784313725490196,
						["r"] = 0.71764705882353,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["a"] = 0.620000004768372,
						["b"] = 1,
						["g"] = 0.694117647058824,
						["r"] = 0.627450980392157,
					},
					["color1"] = {
						["a"] = 0.777107566595078,
						["b"] = 1,
						["g"] = 0.305882352941177,
						["r"] = 0,
					},
				},
				["buff-EssenceFont-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.847058823529412,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 191840,
				},
				["debuff-Magic"] = {
					["color1"] = {
						["g"] = 0.235294117647059,
						["r"] = 0,
					},
				},
				["debuffs-UldirColouredFrames"] = {
					["auras"] = {
						"Putrid Paroxysm", -- [1]
						"Plasma Discharge", -- [2]
						"Roiling Deceit", -- [3]
						"Omega Vector", -- [4]
						"Eye Beam", -- [5]
						"Heartbroken", -- [6]
					},
					["type"] = "debuffs",
					["useWhiteList"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["debuffs-DispellableDebuffs"] = {
					["type"] = "debuffs",
					["filterDispelDebuffs"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.580392156862745,
						["b"] = 1,
					},
				},
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["useAlternateIcons"] = true,
					["color3"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["hideDamagers"] = true,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.858823529411765,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 61295,
				},
				["buff-BeaconofVirtue-mine"] = {
					["spellName"] = "Beacon of Virtue",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["threat"] = {
					["color2"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["color3"] = {
						["g"] = 0,
						["b"] = 0.0549019607843137,
					},
					["disableBlink"] = true,
					["color1"] = {
						["r"] = 0,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["debuff-Poison"] = {
					["color1"] = {
						["g"] = 1,
						["b"] = 0.0392156862745098,
					},
				},
				["death"] = {
					["color1"] = {
						["r"] = 0.392156862745098,
						["g"] = 0,
						["b"] = 0.0196078431372549,
					},
				},
				["ready-check"] = {
					["threshold"] = 5,
				},
				["buffs-MonkBuffs-mine"] = {
					["auras"] = {
						"Soothing Mist", -- [1]
						"Renewing Mist", -- [2]
						"Enveloping Mist", -- [3]
					},
					["type"] = "buffs",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["buff-PrayerofMending-mine"] = {
					["spellName"] = 41635,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuffs-UldirTankDebuffs"] = {
					["auras"] = {
						267787, -- [1]
						265237, -- [2]
						265178, -- [3]
						274358, -- [4]
						274693, -- [5]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["mana"] = {
					["showOnlyHealers"] = true,
				},
				["range"] = {
					["default"] = 0.3,
				},
				["buffs-DruidBuffs-mine"] = {
					["auras"] = {
						"Wild Growth", -- [1]
						"Rejuvenation", -- [2]
						"Rejuvenation(Germination)", -- [3]
						"Lifebloom", -- [4]
					},
					["type"] = "buffs",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["debuff-Disease"] = {
					["color1"] = {
						["g"] = 0.32156862745098,
						["r"] = 1,
					},
				},
				["buff-Atonement-mine"] = {
					["spellName"] = "Atonement",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.250980392156863,
						["b"] = 1,
					},
				},
				["health-current"] = {
					["color2"] = {
						["b"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["r"] = 0.219607843137255,
					},
					["color3"] = {
						["b"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["r"] = 0.219607843137255,
					},
					["color1"] = {
						["b"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["r"] = 0.219607843137255,
					},
					["quickHealth"] = true,
				},
				["buffs-DefensiveCooldowns-not-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["mine"] = 2,
					["auras"] = {
						"Ancestral Protection Totem", -- [1]
						"Ancient Guardian", -- [2]
						"Anti-Magic Shell", -- [3]
						"Ardent Defender", -- [4]
						"Aspect of the Turtle", -- [5]
						"Astral Shift", -- [6]
						"Barkskin", -- [7]
						"Blessing of Sacrifice", -- [8]
						"Blessing of Spellwarding", -- [9]
						"Fade", -- [10]
						"Blur", -- [11]
						"Cloak of Shadows", -- [12]
						"Corpse Shield", -- [13]
						"Crimson Vial", -- [14]
						"Dampen Harm", -- [15]
						"Dancing Rune Weapon", -- [16]
						"Dark Pact", -- [17]
						"Darkness", -- [18]
						"Defensive Stance", -- [19]
						"Demon Spikes", -- [20]
						"Desperate Prayer", -- [21]
						"Die by the Sword", -- [22]
						"Diffuse Magic", -- [23]
						"Dispersion", -- [24]
						"Divine Protection", -- [25]
						"Divine Shield", -- [26]
						"Empower Wards", -- [27]
						"Enraged Regeneration", -- [28]
						"Eye for an Eye", -- [29]
						"Evasion", -- [30]
						"Fade", -- [31]
						"Feint", -- [32]
						"Frenzied Regeneration", -- [33]
						"Fortifying Brew", -- [34]
						"Guardian of Ancient Kings", -- [35]
						"Guardian Spirit", -- [36]
						"Greater Invisibility", -- [37]
						"Icebound Fortitude", -- [38]
						"Ice Block", -- [39]
						"Invisibility", -- [40]
						"Ironbark", -- [41]
						"Ironfur", -- [42]
						"Last Stand", -- [43]
						"Life Cocoon", -- [44]
						"Mass Spell Reflection", -- [45]
						"Metamorphosis", -- [46]
						"Netherwalk", -- [47]
						"Pain Suppression", -- [48]
						"Rage of the Sleeper", -- [49]
						"Riposte", -- [50]
						"Rune Tap", -- [51]
						"Shield Block", -- [52]
						"Shield of the Righteous", -- [53]
						"Shield of Vengeance", -- [54]
						"Shield Wall", -- [55]
						"Soul Barrier", -- [56]
						"Spell Reflection", -- [57]
						"Spirit Barrier", -- [58]
						"Survival Instincts", -- [59]
						"Stoneform", -- [60]
						"Touch of Karma", -- [61]
						"Unending Resolve", -- [62]
						"Vampiric Blood", -- [63]
						"Zen Meditation", -- [64]
						"Blessing of Freedom", -- [65]
					},
				},
				["shields"] = {
					["color3"] = {
						["a"] = 0.25,
						["b"] = 0.56078431372549,
						["g"] = 0.188235294117647,
						["r"] = 0,
					},
					["color2"] = {
						["a"] = 0.25,
						["b"] = 0.56078431372549,
						["g"] = 0.188235294117647,
						["r"] = 0,
					},
					["color1"] = {
						["a"] = 0.201590836048126,
						["b"] = 0.556862745098039,
						["g"] = 0.568627450980392,
						["r"] = 0.556862745098039,
					},
				},
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["buffs-PaladinBuffs-mine"] = {
					["auras"] = {
						"Beacon of Faith", -- [1]
						"Beacon of Light", -- [2]
						"Bestow Faith", -- [3]
					},
					["type"] = "buffs",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.780392156862745,
						["r"] = 0,
					},
				},
				["debuffs-Debuffs"] = {
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["filterLongDebuffs"] = true,
					["debuffTypeColorize"] = true,
					["auras"] = {
						"Forbearance", -- [1]
						"Demonic Gateway", -- [2]
						"Sanitizing Strike", -- [3]
						"Shatter", -- [4]
						"Evolving Affliction", -- [5]
						"Rupturing Blood", -- [6]
						"Essence Shear", -- [7]
						"Heartstopper Venom", -- [8]
						"Azerite Energy", -- [9]
						"Azerite Residue", -- [10]
						"Challenger's Burden", -- [11]
						"Dark Bargain", -- [12]
						"Shadow Mend", -- [13]
						"Immunosuppression", -- [14]
						"Creator's Grace", -- [15]
						"Lunar Suffusion", -- [16]
						"Removed from the Circle", -- [17]
						"Lunar Suffision", -- [18]
						"Gaze of Aman'thul", -- [19]
						"AUGH", -- [20]
						"Temptation", -- [21]
						"Imperfect Physiology", -- [22]
						"Forbearance", -- [23]
						"Strength of the Sky", -- [24]
						"Lingering Wail", -- [25]
						"Quel'Delar's Compulsion", -- [26]
						"Bursting Boil", -- [27]
						"The Light Saves", -- [28]
						"Curse of the Dreadblades", -- [29]
						"Torment of Fel", -- [30]
						"Empowered Flame Rend", -- [31]
						"Unbreakable Will", -- [32]
						"Umbral Suffision", -- [33]
						"Aegisjalmur", -- [34]
						"the Armguard of Awe", -- [35]
						"Lingering Mischief", -- [36]
						"Sample Satisfaction", -- [37]
						"Demonic Gateway", -- [38]
						"Deserter", -- [39]
						"Orb of Frost", -- [40]
						"Dungeon Deserter", -- [41]
						"Archbishop Benedictus' Restitution", -- [42]
						"Weakened Heart", -- [43]
						"Cheated Death", -- [44]
						"Speed: Slow", -- [45]
						"Chill of the Throne", -- [46]
						"Surrendered Soul", -- [47]
						"Transporter Malfunction", -- [48]
						"Umbra Suffusion", -- [49]
						"Sense of Dread", -- [50]
						"Sands of Time", -- [51]
						"Torment of Flames", -- [52]
						"Light Infusion", -- [53]
						"Banished in Time", -- [54]
						"Lingering Infection", -- [55]
						"Speed: Normal", -- [56]
						"Putrid Blood", -- [57]
						"Astral Vulnerability", -- [58]
						"Sin'dorei Spite", -- [59]
						"Torment of Frost", -- [60]
						"Lord of Flames", -- [61]
						"Lured", -- [62]
						"Nightwell Energy", -- [63]
						"ablative shielding", -- [64]
						"Demon's Vigor", -- [65]
						"Moonfeather Fever", -- [66]
						"Fel Heart Bond Frayed", -- [67]
						"Fel Infusion", -- [68]
						"Dungeon Cooldown", -- [69]
						"Oozeling's Disgusting Aura", -- [70]
						"Fatigued", -- [71]
						"Cauterized", -- [72]
						"Warlord's Exhaustion", -- [73]
						"Slippery", -- [74]
						"Sated", -- [75]
						"Challenger's Burden", -- [76]
						"Temporal Displacement", -- [77]
						"Speed: Fast", -- [78]
						"Uncontained Fel", -- [79]
						"Gaze of Aman'Thul", -- [80]
						"Celerity Zone", -- [81]
						"Forbaerence", -- [82]
						"Masquerade", -- [83]
						"Annihilation", -- [84]
						"Strength of the Sea", -- [85]
						"Void-Touched", -- [86]
						"Number One Fan", -- [87]
						"Illusionary Night", -- [88]
						"Torment of Shadows", -- [89]
						"Evolving Affliction", -- [90]
						"Dark Purpose", -- [91]
						"Heartbroken", -- [92]
						"Unclean Contagion", -- [93]
					},
				},
				["debuff-Curse"] = {
					["color1"] = {
						["r"] = 0.458823529411765,
					},
				},
				["raid-debuffs"] = {
					["color1"] = {
						["b"] = 0.933333333333333,
						["g"] = 1,
						["r"] = 0.988235294117647,
					},
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["Beacon--color"] = {
				},
				["Mana-color"] = {
					["mana"] = 50,
				},
				["Health-deficit"] = {
					["heals-incoming"] = 3,
					["heal-absorbs"] = 2,
					["shields"] = 4,
					["health-deficit"] = 1,
				},
				["Absorbs-color"] = {
				},
				["Mana"] = {
				},
				["border"] = {
					["threat"] = 65,
					["debuffs-DispellableDebuffs"] = 64,
				},
				["text-down-color"] = {
				},
				["Absorb/Shield-color"] = {
				},
				["name-color"] = {
					["classcolor"] = 50,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["vehicle"] = 70,
					["feign-death"] = 96,
					["offline"] = 93,
				},
				["Absorb/Shield"] = {
				},
				["Renewing"] = {
					["buff-Atonement-mine"] = 52,
					["buff-Riptide-mine"] = 51,
					["buff-EssenceFont-mine"] = 50,
				},
				["Renewing-color"] = {
					["buff-Atonement-mine"] = 52,
					["buff-Riptide-mine"] = 51,
					["buff-EssenceFont-mine"] = 50,
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["resurrection"] = 156,
				},
				["Debuffs"] = {
					["debuffs-Debuffs"] = 54,
				},
				["heals"] = {
				},
				["My-Buffs"] = {
					["buffs-PaladinBuffs-mine"] = 56,
					["buff-PrayerofMending-mine"] = 51,
					["buffs-DruidBuffs-mine"] = 54,
					["buff-BeaconofVirtue-mine"] = 53,
					["buffs-MonkBuffs-mine"] = 55,
				},
				["name"] = {
					["name"] = 50,
				},
				["heals-color"] = {
				},
				["Icons-Top-Left"] = {
					["buffs-DefensiveCooldowns-not-mine"] = 74,
				},
				["alpha"] = {
					["range"] = 99,
					["offline"] = 97,
				},
				["corner-top-left-color"] = {
				},
				["Name"] = {
				},
				["Icon-Top"] = {
					["raid-icon-player"] = 50,
				},
				["health"] = {
					["health-current"] = 50,
					["death"] = 51,
				},
				["health-color"] = {
					["debuffs-DispellableDebuffs"] = 62,
					["death"] = 61,
					["debuffs-UldirColouredFrames"] = 60,
				},
				["text-up"] = {
					["charmed"] = 65,
					["offline"] = 93,
					["feign-death"] = 96,
					["vehicle"] = 70,
				},
				["Debuffs-Bottom-Right"] = {
					["debuffs-UldirTankDebuffs"] = 5,
				},
				["Name-color"] = {
				},
				["corner-top-right-color"] = {
				},
			},
			["debug"] = false,
		},
		["Niseko - Twisting Nether"] = {
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Renew-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["icon-right"] = {
					["buff-PrayerOfMending-mine"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["corner-top-right"] = {
					["buff-PowerWordShield"] = 99,
					["debuff-WeakenedSoul"] = 89,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 90,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["target"] = 50,
					["debuff-Magic"] = 80,
					["debuff-Curse"] = 60,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statuses"] = {
				["buff-SpiritOfRedemption"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["blinkThreshold"] = 3,
					["spellName"] = 27827,
				},
				["buff-PowerWordShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0,
					},
					["spellName"] = 17,
				},
				["debuff-WeakenedSoul"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.9,
						["g"] = 0.2,
						["r"] = 0,
					},
					["spellName"] = 6788,
				},
				["buff-Renew-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 139,
				},
				["buff-PrayerOfMending-mine"] = {
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["color2"] = {
						["a"] = 0.4,
						["b"] = 0.4,
						["g"] = 1,
						["r"] = 1,
					},
					["color3"] = {
						["a"] = 1,
						["b"] = 0.6,
						["g"] = 0.6,
						["r"] = 1,
					},
					["colorCount"] = 5,
					["color4"] = {
						["a"] = 1,
						["b"] = 0.8,
						["g"] = 0.8,
						["r"] = 1,
					},
					["color5"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["spellName"] = 33076,
				},
			},
		},
		["Vordt - Twisting Nether"] = {
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
			},
			["statusMap"] = {
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["border"] = {
					["target"] = 50,
					["health-low"] = 55,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
		},
		["Mend"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["Renew"] = {
					["level"] = 3,
					["type"] = "bar",
					["height"] = 4,
					["opacity"] = 0.65,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["duration"] = true,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Grid2 Flat",
				},
				["center-icon-timer-color"] = {
					["type"] = "text-color",
				},
				["center-right"] = {
					["disableOmniCC"] = true,
					["type"] = "icon",
					["useStatusColor"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 4,
					},
					["level"] = 9,
					["fontSize"] = 9,
					["size"] = 16,
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "PhantomHP",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.5,
					["texture"] = "Blizzard Raid Bar",
				},
				["testbar-color"] = {
					["type"] = "bar-color",
				},
				["Corner-TR-txt"] = {
					["font"] = "font",
					["type"] = "text",
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
					["duration"] = true,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["PhantomHP"] = {
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["level"] = 4,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["opacity"] = 1,
					["childBar"] = "heals",
					["texture"] = "Gradient",
				},
				["Shields-above"] = {
					["type"] = "bar",
					["parentBar"] = "Shields",
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 3,
					["height"] = 4,
					["texture"] = "Grid2 Flat",
				},
				["Absorb"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 12,
					["fontSize"] = 8,
				},
				["side-right"] = {
					["fontSize"] = 8,
					["disableCooldown"] = true,
					["reverseCooldown"] = true,
					["fontJustifyV"] = "MIDDLE",
					["font"] = "font",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["level"] = 9,
					["fontJustifyH"] = "CENTER",
					["size"] = 10,
				},
				["corner-top-right"] = {
					["fontSize"] = 8,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["size"] = 11,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 1,
					},
					["level"] = 8,
					["type"] = "square",
					["texture"] = "Grid2 Flat",
				},
				["PowerBar-color"] = {
					["type"] = "bar-color",
				},
				["Bottom-Left"] = {
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -2,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 10,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["Shields"] = {
					["childBar"] = "Shields-above",
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 5,
					["height"] = 4,
					["opacity"] = 1,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Grid2 Flat",
				},
				["Bottom"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["height"] = 9,
					["width"] = 5,
				},
				["side-bottom-2"] = {
					["type"] = "square",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = -15,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 6,
					},
					["level"] = 6,
					["borderSize"] = 1,
					["size"] = 7,
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["SinestraTest2-color"] = {
					["type"] = "text-color",
				},
				["Heal-Absorb-color"] = {
					["type"] = "bar-color",
				},
				["Class-color-color"] = {
					["type"] = "bar-color",
				},
				["incHots-color"] = {
					["type"] = "text-color",
				},
				["text-left-color"] = {
					["type"] = "text-color",
				},
				["center-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 0,
					},
					["level"] = 9,
					["fontSize"] = 8,
					["size"] = 7,
				},
				["text-up"] = {
					["type"] = "text",
					["duration"] = true,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 2,
					},
					["level"] = 7,
					["textlength"] = 5,
					["fontSize"] = 11,
				},
				["powerBorder-color"] = {
					["type"] = "bar-color",
				},
				["Renew-color"] = {
					["type"] = "bar-color",
				},
				["side-bottom"] = {
					["type"] = "square",
					["duration"] = true,
					["size"] = 7,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["font"] = "Friz Quadrata TT",
					["stack"] = false,
					["fontSize"] = 8,
					["location"] = {
						["y"] = -15,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 12,
					},
					["level"] = 9,
					["textlength"] = 12,
					["texture"] = "Grid2 Flat",
				},
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 8,
				},
				["EnvMist"] = {
					["font"] = "Accidental Presidency",
					["fontSize"] = 12,
					["level"] = 9,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 4,
					},
					["duration"] = true,
					["textlength"] = 12,
					["type"] = "text",
				},
				["test-color"] = {
					["type"] = "multibar-color",
				},
				["powerInv-color"] = {
					["type"] = "bar-color",
				},
				["Absorbs-color"] = {
					["type"] = "bar-color",
				},
				["icon-left"] = {
					["type"] = "icon",
					["fontSize"] = 8,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 2,
					},
					["disableCooldown"] = true,
					["level"] = 8,
					["animEnabled"] = true,
					["size"] = 10,
				},
				["CenterText"] = {
					["fontSize"] = 10,
					["font"] = "Homespun (xCT+)",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 3,
					},
					["level"] = 7,
					["textlength"] = 12,
					["type"] = "text",
				},
				["CenterText-color"] = {
					["type"] = "text-color",
				},
				["EnvMist-color"] = {
					["type"] = "text-color",
				},
				["Class-color"] = {
					["orientation"] = "HORIZONTAL",
					["type"] = "bar",
					["parentBar"] = "health",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 1,
					["texture"] = "Grid2 Flat",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["Heal-Absorb"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["orientation"] = "HORIZONTAL",
					["level"] = 9,
					["opacity"] = 0.4,
					["texture"] = "Minimalist",
				},
				["Raid-Debuff"] = {
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 16,
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-right"] = {
					["disableOmniCC"] = true,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 19,
					},
					["level"] = 8,
					["fontSize"] = 7,
					["size"] = 18,
				},
				["icon-center"] = {
					["type"] = "icon",
					["reverseCooldown"] = true,
					["font"] = "Accidental Presidency",
					["size"] = 18,
					["borderSize"] = 1,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 15,
					["fontFlags"] = "OUTLINE",
				},
				["border"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-left"] = {
					["fontSize"] = 8,
					["font"] = "font",
					["level"] = 7,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 0,
					},
					["stack"] = true,
					["textlength"] = 12,
					["type"] = "text",
				},
				["Absorb-color"] = {
					["type"] = "text-color",
				},
				["center-icon-timer"] = {
					["type"] = "text",
					["fontSize"] = 14,
					["font"] = "SourceSansProBold",
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["Corner-TR-txt-color"] = {
					["type"] = "text-color",
				},
				["PhantomHP-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
				},
				["Shields-above-color"] = {
					["type"] = "bar-color",
				},
				["test_debuff-color"] = {
					["type"] = "bar-color",
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["color1"] = {
						["a"] = 0.801204845309258,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["borderSize"] = 1,
					["location"] = {
						["y"] = 13,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = -1,
					},
					["level"] = 5,
					["height"] = 13,
					["width"] = 3,
				},
				["Shields-color"] = {
					["type"] = "bar-color",
				},
				["health"] = {
					["type"] = "bar",
					["texture"] = "Minimalist",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 0,
					},
					["level"] = 2,
					["opacity"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["Debuff-color"] = {
					["type"] = "bar-color",
				},
				["PowerBorder-color"] = {
					["type"] = "bar-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["side-right-2"] = {
					["type"] = "icon",
					["borderSize"] = 1,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -16,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
			},
			["statuses"] = {
				["debuffs-NecroticRot"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["type"] = "debuffs",
				},
				["buff-EternalFlame-not-mine"] = {
					["spellName"] = "Eternal Flame",
					["type"] = "buff",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.941176470588235,
						["b"] = 0.509803921568627,
					},
				},
				["color-Transparent"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "color",
				},
				["buff-SpiritualInnervation"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.415686274509804,
						["r"] = 0,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["b"] = 0.701960784313726,
						["g"] = 0.16078431372549,
						["r"] = 0,
					},
					["colorCount"] = 3,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.615686274509804,
						["r"] = 0,
					},
					["mine"] = false,
					["spellName"] = "Spiritual Innervation",
				},
				["color-Absorbs"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.435294117647059,
						["r"] = 0.12156862745098,
					},
					["type"] = "color",
				},
				["debuff-DebuffsGroup:HealingPrevented"] = {
					["useWhiteList"] = true,
					["spellName"] = "Debuffs Group: Healing Prevented ",
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["auras"] = {
						"Corruption: Absolute", -- [1]
						"Mortality", -- [2]
						"Withering Winds", -- [3]
						"Engulfing Darkness", -- [4]
						"Anti-Magic Prison", -- [5]
					},
				},
				["dungeon-role"] = {
					["hideDamagers"] = true,
					["useAlternateIcons"] = true,
				},
				["color-Black"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.0156862745098039,
						["g"] = 0.0196078431372549,
						["b"] = 0.0235294117647059,
					},
				},
				["debuff-IronPrison"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.545098039215686,
						["b"] = 0.36078431372549,
					},
					["type"] = "debuff",
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.156862745098039,
						["b"] = 0,
					},
					["spellName"] = "Iron Prison",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.984313725490196,
						["g"] = 1,
						["b"] = 0.968627450980392,
					},
					["colorThreshold"] = {
						10, -- [1]
						5, -- [2]
					},
					["colorCount"] = 3,
				},
				["threat"] = {
					["color2"] = {
						["r"] = 1,
						["b"] = 0,
					},
					["color3"] = {
						["g"] = 0.345098039215686,
						["b"] = 0,
					},
				},
				["color-Atonement"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.172549019607843,
						["g"] = 0.172549019607843,
						["b"] = 0.168627450980392,
					},
				},
				["debuff-Overwhelm"] = {
					["type"] = "debuff",
					["spellName"] = "Overwhelm",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-Priest>WeakenedSoul"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 6788,
				},
				["debuff-Overcharged"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Overcharged",
				},
				["debuff-Trash>GrievousMortalWounds"] = {
					["type"] = "debuff",
					["spellName"] = 175624,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-Iron>Impale"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["spellName"] = 134691,
				},
				["buff-PrayerofMending-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Prayer of Mending",
				},
				["buff-Defcds"] = {
					["type"] = "buffs",
					["spellName"] = "Def cds",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["mine"] = false,
					["auras"] = {
						"Guardian of Ancient Kings", -- [1]
						"Hand of Sacrifice", -- [2]
						"Ardent Defender", -- [3]
						"Divine Protection", -- [4]
						"Avenging Wrath", -- [5]
						"Ancient Guardian", -- [6]
						"Shield Wall", -- [7]
						"Last Stand", -- [8]
						"Survival Instincts", -- [9]
						"Rage of the Sleeper", -- [10]
						"Barkskin", -- [11]
						"Astral Shift", -- [12]
						"Vampiric Blood", -- [13]
						"Dancing Rune Weapon", -- [14]
						"Icebound Fortitude", -- [15]
						"Anti-Magic Shell", -- [16]
						"Pain Suppression", -- [17]
						"Guardian Spirit", -- [18]
						"Fortifying Brew", -- [19]
						"Zen Meditation", -- [20]
						"Ironbark", -- [21]
						"Vigilance", -- [22]
						"Metamorphosis", -- [23]
					},
				},
				["buff-Vampyr'sKiss-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Vampyr's Kiss",
				},
				["range"] = {
					["elapsed"] = 0.4,
					["default"] = 0.42,
					["range"] = "38",
				},
				["buff-EchoofLight-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 77489,
				},
				["classcolor"] = {
					["colors"] = {
						["DEATHKNIGHT"] = {
							["r"] = 0.952941176470588,
							["g"] = 0.137254901960784,
							["b"] = 0.266666666666667,
						},
						["WARRIOR"] = {
							["r"] = 0.796078431372549,
							["g"] = 0.537254901960784,
							["b"] = 0.376470588235294,
						},
						["ROGUE"] = {
							["g"] = 0.854901960784314,
							["b"] = 0.247058823529412,
						},
						["MAGE"] = {
							["r"] = 0.266666666666667,
							["g"] = 0.803921568627451,
							["b"] = 1,
						},
						["Demon"] = {
							["r"] = 0.780392156862745,
							["g"] = 0.423529411764706,
							["b"] = 0.882352941176471,
						},
						["WARLOCK"] = {
							["r"] = 0.576470588235294,
							["g"] = 0.509803921568627,
							["b"] = 0.788235294117647,
						},
						["DEMONHUNTER"] = {
							["r"] = 0.63921568627451,
							["g"] = 0.188235294117647,
							["b"] = 0.788235294117647,
						},
						["MONK"] = {
							["b"] = 0.588235294117647,
						},
						["PALADIN"] = {
							["r"] = 0.96078431372549,
							["g"] = 0.529411764705882,
							["b"] = 0.756862745098039,
						},
					},
				},
				["debuff-GazeoftheAbyss"] = {
					["type"] = "debuff",
					["spellName"] = 165595,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["health-current"] = {
					["color2"] = {
						["g"] = 0.513725490196078,
						["b"] = 0.505882352941176,
					},
					["quickHealth"] = true,
					["color3"] = {
						["r"] = 0.705882352941177,
						["g"] = 0.913725490196078,
						["b"] = 0.890196078431373,
					},
					["color1"] = {
						["r"] = 1,
						["g"] = 0.364705882352941,
						["b"] = 0.380392156862745,
					},
				},
				["debuff-NecroticRot"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.8,
						["b"] = 0,
					},
					["type"] = "debuff",
					["color3"] = {
						["a"] = 1,
						["r"] = 0.0470588235294118,
						["g"] = 1,
						["b"] = 0,
					},
					["spellName"] = "Necrotic Rot",
					["colorCount"] = 3,
					["colorThreshold"] = {
						6, -- [1]
						3, -- [2]
					},
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0,
					},
				},
				["friendcolor"] = {
					["color1"] = {
						["r"] = 0.592156862745098,
						["b"] = 0.682352941176471,
					},
				},
				["buff-SpiritShell-mine"] = {
					["spellName"] = "Spirit Shell",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.262745098039216,
						["b"] = 0.949019607843137,
					},
				},
				["debuff-StrongAncientBarrier"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.125490196078431,
						["g"] = 0.274509803921569,
						["r"] = 0.0980392156862745,
					},
					["spellName"] = "Strong Ancient Barrier",
				},
				["debuff-MeltArmor"] = {
					["type"] = "debuff",
					["spellName"] = "Melt Armor",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["absorb-above-maxHP"] = {
					["color1"] = {
						["a"] = 1,
						["g"] = 0.407843137254902,
						["r"] = 0.172549019607843,
					},
				},
				["debuff-Highmaul"] = {
					["useWhiteList"] = true,
					["auras"] = {
						"Impale", -- [1]
						"Berserker Rush", -- [2]
						"Gushing Wounds", -- [3]
						"The Tenderizer", -- [4]
						"Rot", -- [5]
						"Necrotic Breath", -- [6]
						"Mind Fungus", -- [7]
						"Rejuvenating Spores", -- [8]
						"Shield Bash", -- [9]
						"Expel Magic: Fire", -- [10]
						"Expel Magic: Shadow", -- [11]
						"Caustic Energy", -- [12]
						"Mark of Chaos", -- [13]
						"Mark of Chaos: Fortification", -- [14]
						"Crystalline Barrage", -- [15]
						"Branded", -- [16]
					},
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Highmaul",
				},
				["debuff-Curse"] = {
					["color1"] = {
						["g"] = 0.309803921568628,
						["r"] = 0.705882352941177,
					},
				},
				["debuff-IgniteSoul"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["type"] = "debuff",
					["blinkThreshold"] = 4,
					["spellName"] = "Ignite Soul",
				},
				["direction"] = {
					["StickyMouseover"] = true,
					["ShowOutOfRange"] = true,
				},
				["buff-DivineAegis-mine"] = {
					["spellName"] = 47753,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.92156862745098,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["debuff-AncientBarrier"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.125490196078431,
						["g"] = 0.274509803921569,
						["r"] = 0.0980392156862745,
					},
					["spellName"] = "Ancient Barrier",
				},
				["color-TransWhite"] = {
					["color1"] = {
						["a"] = 0.512046754360199,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "color",
				},
				["buff-EnvelopingMIst-mine"] = {
					["spellName"] = "Enveloping MIst",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-PowerWordShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.756862745098039,
						["g"] = 0.941176470588235,
						["r"] = 1,
					},
					["spellName"] = 17,
				},
				["debuff-WeakAncientBarrier"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.125490196078431,
						["g"] = 0.274509803921569,
						["r"] = 0.0980392156862745,
					},
					["spellName"] = "Weak Ancient Barrier",
				},
				["debuff-UnholyReckoning"] = {
					["type"] = "debuff",
					["spellName"] = "Unholy Reckoning",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-GushingWounds"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Gushing Wounds",
				},
				["buff-Renew-mine"] = {
					["spellName"] = 139,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.537254901960784,
						["g"] = 0.890196078431373,
						["r"] = 0.423529411764706,
					},
				},
				["debuff-DreamSimulacrum"] = {
					["type"] = "debuff",
					["spellName"] = "Dream Simulacrum",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["buff-SpiritOfRedemption"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["blinkThreshold"] = 3,
					["spellName"] = 27827,
				},
				["buff-Rejuvenation-not-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.611764705882353,
						["g"] = 0.125490196078431,
						["r"] = 0.803921568627451,
					},
					["type"] = "buff",
					["mine"] = 2,
					["spellName"] = 774,
				},
				["buff-Atonement-mine"] = {
					["spellName"] = "Atonement",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 0.650000005960465,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.937254901960784,
					},
				},
				["debuff-SuplRaid"] = {
					["useWhiteList"] = true,
					["auras"] = {
						"Rot", -- [1]
						"Volatile Rot", -- [2]
						"Malice", -- [3]
						"Courage", -- [4]
						"Weakened Resolve", -- [5]
						"Focused Lightning", -- [6]
						"Static Shock", -- [7]
						"Static Wound", -- [8]
						"Triple Puncture", -- [9]
						"Mortal Strike", -- [10]
						"Lingering Gaze", -- [11]
						"Drain Life", -- [12]
						"Pathogen Glands", -- [13]
						"Volatile Pathogen", -- [14]
						"Sha Sear", -- [15]
						"Serrated Spear", -- [16]
						"Necrotic Breath", -- [17]
						"Gaze of the Abyss", -- [18]
						"Petrify", -- [19]
						"Slagged", -- [20]
						"Marak's Bloodcalling", -- [21]
						"Sorka's Prey", -- [22]
						"Impaled", -- [23]
					},
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "SuplRaid",
				},
				["buff-Grace-mine"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 0.447058823529412,
						["g"] = 0.63921568627451,
						["b"] = 0.819607843137255,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["r"] = 0.419607843137255,
						["g"] = 0.72156862745098,
						["b"] = 1,
					},
					["spellName"] = 77613,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.92156862745098,
						["b"] = 0.705882352941177,
					},
					["mine"] = 1,
					["colorCount"] = 3,
				},
				["debuff-Chomp"] = {
					["type"] = "debuff",
					["spellName"] = "Chomp",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-GiftoftheTitans"] = {
					["type"] = "debuff",
					["spellName"] = "Gift of the Titans",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["heal-absorbs"] = {
					["maxShieldValue"] = 500000,
					["color1"] = {
						["b"] = 0.00784313725490196,
					},
				},
				["buff-CenarionWard-not-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.847058823529412,
						["g"] = 1,
						["r"] = 0.541176470588235,
					},
					["useSpellId"] = true,
					["mine"] = 2,
					["spellName"] = 102352,
				},
				["color-white"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["color-Health-color-light"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.380392156862745,
						["g"] = 0.364705882352941,
						["r"] = 1,
					},
					["type"] = "color",
				},
				["death"] = {
					["color1"] = {
						["a"] = 0.770000010728836,
						["r"] = 0.188235294117647,
						["g"] = 0.188235294117647,
						["b"] = 0.188235294117647,
					},
				},
				["debuff-CrystalShell:FullCapacity!"] = {
					["type"] = "debuff",
					["spellName"] = "Crystal Shell: Full Capacity!",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["aoe-CircleOfHealing"] = {
					["minPlayers"] = 4,
					["healthDeficit"] = 0,
				},
				["debuff-Rot"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Rot",
				},
				["power"] = {
					["color2"] = {
						["r"] = 0.552941176470588,
					},
					["color3"] = {
						["g"] = 0.258823529411765,
						["r"] = 0.513725490196078,
					},
					["color1"] = {
						["r"] = 0.0745098039215686,
						["g"] = 0.196078431372549,
						["b"] = 0.454901960784314,
					},
					["color4"] = {
						["g"] = 0.52156862745098,
						["r"] = 0.52156862745098,
					},
					["color5"] = {
						["g"] = 0.498039215686275,
						["b"] = 0.501960784313726,
					},
					["colorCount"] = 5,
				},
				["color-RapidShot"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.317647058823529,
						["b"] = 0.309803921568627,
					},
				},
				["debuff-Necrotic"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "debuff",
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["spellName"] = "Necrotic",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["colorCount"] = 3,
				},
				["target"] = {
					["color1"] = {
						["a"] = 0.283131659030914,
						["r"] = 0.490196078431373,
						["g"] = 0.847058823529412,
						["b"] = 1,
					},
				},
				["aoe-OutgoingHeals"] = {
					["spells"] = {
						"Prayer of Healing", -- [1]
					},
				},
				["buff-BeaconofLight-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 53563,
				},
				["debuffs-Antorus"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						"Fel Bombardment", -- [1]
						"Empowered Decimation", -- [2]
						"Decimation", -- [3]
						"Smouldering", -- [4]
						"Decay", -- [5]
						"Siphoned", -- [6]
						"Enflamed", -- [7]
						"Singed", -- [8]
						"Desolate Gaze", -- [9]
						"Consumed", -- [10]
						"Weight of Darkness", -- [11]
						"Consuming Sphere", -- [12]
						"Molten Touch", -- [13]
						"Exploit Weakness", -- [14]
						"Psychic Assault", -- [15]
						"Demonic Charge", -- [16]
						"Reality Tear", -- [17]
						"Everburning Flames", -- [18]
						"Cloying Shadows", -- [19]
						"Acidic Web", -- [20]
						"Hungering Gloom", -- [21]
						"Felsilk Wrap", -- [22]
						"Fel Wake", -- [23]
						"Forging Strike", -- [24]
						"Ruiner", -- [25]
						"Misery", -- [26]
						"Necrotic Embrace", -- [27]
						"Marked Prey", -- [28]
						"Shocked", -- [29]
						"Shock Lance", -- [30]
						"Empowered Shock Lance", -- [31]
						"Sever", -- [32]
						"Shrapnel Blast", -- [33]
						"Charged Blasts", -- [34]
						"Empowered Pulse Grenade", -- [35]
						"Sleep Canister", -- [36]
						"Slumber Gas", -- [37]
						"Stasis Trap", -- [38]
						"Conflagration", -- [39]
						"Empowered Shrapnel Blast", -- [40]
						"Fiery Strike", -- [41]
						"Flashfreeze", -- [42]
						"Chilled Blood", -- [43]
						"Fulminating Pulse", -- [44]
						"Whirling Saber", -- [45]
						"Spectral Army of Norgannon", -- [46]
						"Taeshalach's Reach", -- [47]
						"Foe Breaker", -- [48]
						"Wake of Flame", -- [49]
						"Scorching Blaze", -- [50]
						"Searing Tempest", -- [51]
						"Molten Remnants", -- [52]
						"Death Fog", -- [53]
						"Sweeping Scythe", -- [54]
						"Soulburst", -- [55]
						"Soulbomb", -- [56]
						"Soulblight", -- [57]
						"Deadly Scythe", -- [58]
						"Ember of Rage", -- [59]
						"Cosmic Beacon", -- [60]
						"Cosmic Ray", -- [61]
						"Burning Flash", -- [62]
						"Shadow Scar", -- [63]
						"Shock Grenade", -- [64]
						"Shocked", -- [65]
						"Leech Essence", -- [66]
						"Caustic Slime", -- [67]
						"Demolished", -- [68]
						"Echoes of Doom", -- [69]
						"Touch of the Cosmos", -- [70]
						"Cosmic Glare", -- [71]
						"Ravenous Blaze", -- [72]
						"Haywire Decimation", -- [73]
						"Rain of Fel", -- [74]
						"Pain", -- [75]
						"Lingering Flames", -- [76]
						"Everburning Light", -- [77]
						"Feedback - Arcane Singularity", -- [78]
						"Feedback - Burning Embers", -- [79]
						"Feedback - Foul Steps", -- [80]
						"Feedback - Targeted", -- [81]
						"Entropic Blast", -- [82]
						"Delusions", -- [83]
						"Corrupt", -- [84]
						"Chaos Pulse", -- [85]
					},
				},
				["color-HealthColor"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0.96000000089407,
						["r"] = 0.125490196078431,
						["g"] = 0.125490196078431,
						["b"] = 0.125490196078431,
					},
				},
				["debuff-FatalStrike"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Fatal Strike",
				},
				["buff-Purified"] = {
					["spellName"] = "Purified",
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuff-RaidHealingDebuffs"] = {
					["useWhiteList"] = true,
					["spellName"] = "Raid Healing Debuffs",
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["auras"] = {
						"Unstable Vita", -- [1]
						"Unstable Anima", -- [2]
						"Vita Sensitivity", -- [3]
					},
				},
				["buff-MyCDs-mine"] = {
					["type"] = "buffs",
					["spellName"] = "MyCDs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["mine"] = 1,
					["auras"] = {
						"Pain Suppression", -- [1]
						"Power Word: Barrier", -- [2]
					},
				},
				["health-deficit"] = {
					["threshold"] = 0,
				},
				["debuff-Magic"] = {
					["color1"] = {
						["r"] = 0.0705882352941177,
						["g"] = 0.274509803921569,
						["b"] = 0.686274509803922,
					},
				},
				["debuff-CrystalShell"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.23921568627451,
						["g"] = 0.0627450980392157,
						["r"] = 0.274509803921569,
					},
					["spellName"] = "Crystal Shell",
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
				},
				["debuff-ShadowCovenant"] = {
					["type"] = "debuff",
					["spellName"] = "Shadow Covenant",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-Infested"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.741176470588235,
						["g"] = 0.968627450980392,
						["r"] = 0.772549019607843,
					},
					["spellName"] = "Infested",
				},
				["aoe-PrayerOfHealing"] = {
					["healthDeficit"] = 0,
					["minPlayers"] = 4,
					["color1"] = {
						["r"] = 0.411764705882353,
						["g"] = 0.862745098039216,
						["b"] = 1,
					},
				},
				["shields"] = {
					["color2"] = {
						["r"] = 0.729411764705882,
						["g"] = 0.490196078431373,
						["b"] = 0.803921568627451,
					},
					["maxShieldAmount"] = 350000,
					["color3"] = {
						["r"] = 0.56078431372549,
						["g"] = 0.384313725490196,
						["b"] = 0.756862745098039,
					},
					["thresholdMedium"] = 200000,
					["filtered"] = {
						[116849] = true,
						[77535] = true,
						[47515] = true,
						[65148] = true,
						[76669] = true,
						[77513] = true,
						[86273] = true,
						[11426] = true,
						[1463] = true,
						[47753] = true,
					},
					["thresholdLow"] = 50000,
					["customShields"] = "137633,137648",
					["color1"] = {
						["r"] = 0.741176470588235,
						["g"] = 0.631372549019608,
						["b"] = 0.866666666666667,
					},
				},
				["buff-Renew-not-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.533333333333333,
						["g"] = 0.631372549019608,
						["r"] = 0.443137254901961,
					},
					["type"] = "buff",
					["mine"] = 2,
					["spellName"] = 139,
				},
				["debuff-RapidShot"] = {
					["type"] = "debuff",
					["spellName"] = "Rapid Shot",
					["color1"] = {
						["a"] = 0.594920456409454,
						["r"] = 1,
						["g"] = 0.411764705882353,
						["b"] = 0.466666666666667,
					},
				},
				["buff-Riptide-not-mine"] = {
					["spellName"] = 61295,
					["type"] = "buff",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuff-RendFlesh"] = {
					["type"] = "debuff",
					["spellName"] = "Rend Flesh",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["buff-EnvelopingMist-mine"] = {
					["spellName"] = "Enveloping Mist",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-MinorDefCds"] = {
					["spellName"] = "Minor Def Cds",
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["auras"] = {
						"Guard", -- [1]
						"Shield Block", -- [2]
						"Shield Barrier", -- [3]
						"Shield of the Righteous", -- [4]
						"Savage Defense", -- [5]
						"Frenzied Regeneration", -- [6]
						"Blood Shield", -- [7]
					},
				},
				["buff-RenewingMist"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.533333333333333,
						["g"] = 1,
						["r"] = 0.396078431372549,
					},
					["type"] = "buff",
					["mine"] = false,
					["spellName"] = 119611,
				},
				["debuff-CreepingNightmares"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Creeping Nightmares",
				},
				["color-HealthBack"] = {
					["color1"] = {
						["a"] = 0.730000019073486,
						["b"] = 0.0627450980392157,
						["g"] = 0.0588235294117647,
						["r"] = 0.156862745098039,
					},
					["type"] = "color",
				},
				["buff-EnvelopingMist-not-mine"] = {
					["spellName"] = 124682,
					["type"] = "buff",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.858823529411765,
						["b"] = 0.498039215686275,
					},
				},
				["debuff-MCDebuffs"] = {
					["useWhiteList"] = true,
					["spellName"] = "MC Debuffs ",
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["auras"] = {
						"Lucifron'd Curse", -- [1]
						"Gehennas' Curse", -- [2]
						"Fist of Ragnaros", -- [3]
						"Magma Shackles", -- [4]
						"Shazzrah's Curse", -- [5]
						"Ignite Mana", -- [6]
						"Living Bomb", -- [7]
						"Immolate", -- [8]
					},
				},
				["absorb-below-maxHP"] = {
					["color1"] = {
						["a"] = 1,
					},
				},
				["debuffs-Necrotic"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["type"] = "debuffs",
				},
			},
			["formatting"] = {
				["longDecimalFormat"] = "%.0f",
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["side-right-2"] = {
					["buff-MinorDefCds"] = 50,
				},
				["center-icon-timer-color"] = {
					["debuff-IronPrison"] = 50,
				},
				["center-right"] = {
				},
				["Shields-above"] = {
					["absorb-above-maxHP"] = 50,
				},
				["Debuff-color"] = {
				},
				["PowerBar-color"] = {
				},
				["Bottom-Left"] = {
					["dungeon-role"] = 50,
				},
				["health-color"] = {
					["debuff-Disease"] = 53,
					["debuff-Magic"] = 54,
					["color-HealthColor"] = 50,
					["buff-Atonement-mine"] = 55,
				},
				["Shields"] = {
					["absorb-below-maxHP"] = 50,
				},
				["corner-top-right"] = {
					["buff-PowerWordShield"] = 92,
				},
				["Bottom"] = {
					["buff-PrayerofMending-mine"] = 50,
				},
				["Heal-Absorb-color"] = {
					["color-Absorbs"] = 52,
					["boss-shields"] = 50,
					["shields"] = 51,
				},
				["Class-color-color"] = {
					["death"] = 56,
					["color-Health-color-light"] = 54,
					["debuff-RapidShot"] = 57,
					["health-current"] = 55,
					["classcolor"] = 52,
				},
				["corner-bottom-left"] = {
				},
				["PhantomHP"] = {
					["health-current"] = 50,
				},
				["text-left-color"] = {
					["debuff-Overcharged"] = 51,
					["debuff-GazeoftheAbyss"] = 52,
					["color-white"] = 50,
					["debuff-Infested"] = 53,
				},
				["text-up"] = {
					["name"] = 50,
					["boss-shields"] = 51,
				},
				["powerBorder-color"] = {
				},
				["Corner-TR-txt"] = {
					["buff-Renew-mine"] = 50,
					["debuff-Priest>WeakenedSoul"] = 51,
				},
				["side-bottom"] = {
				},
				["corner-top-left"] = {
					["buff-EnvelopingMIst-mine"] = 50,
				},
				["Renew-color"] = {
					["buff-Atonement-mine"] = 51,
					["buff-Renew-mine"] = 50,
					["color-white"] = 52,
				},
				["test_debuff-color"] = {
				},
				["Shields-color"] = {
					["color-Absorbs"] = 50,
				},
				["Absorbs-color"] = {
				},
				["icon-left"] = {
					["ready-check"] = 163,
					["raid-icon-player"] = 162,
					["debuff-Magic"] = 164,
					["debuff-Disease"] = 165,
				},
				["CenterText"] = {
					["afk"] = 53,
					["offline"] = 55,
				},
				["CenterText-color"] = {
					["color-TransWhite"] = 50,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["Class-color"] = {
					["health-deficit"] = 50,
				},
				["EnvMist"] = {
					["buff-CenarionWard-not-mine"] = 50,
				},
				["Heal-Absorb"] = {
					["boss-shields"] = 50,
					["heal-absorbs"] = 50,
				},
				["border"] = {
					["target"] = 52,
					["banzai-threat"] = 51,
				},
				["text-down-color"] = {
				},
				["powerInv-color"] = {
				},
				["icon-center"] = {
					["debuff-SuplRaid"] = 167,
					["resurrection"] = 171,
					["raid-debuffs"] = 177,
					["death"] = 155,
					["debuff-UnholyReckoning"] = 172,
					["debuff-IgniteSoul"] = 175,
					["debuff-RaidHealingDebuffs"] = 169,
					["debuff-DreamSimulacrum"] = 165,
				},
				["text-left"] = {
					["debuff-Rot"] = 50,
					["debuff-RendFlesh"] = 56,
					["debuff-Infested"] = 54,
					["debuff-MeltArmor"] = 53,
					["debuff-Overwhelm"] = 55,
					["debuff-NecroticRot"] = 58,
					["debuff-GushingWounds"] = 51,
					["debuff-GazeoftheAbyss"] = 52,
					["debuff-CreepingNightmares"] = 57,
				},
				["Corner-TR-txt-color"] = {
				},
				["icon-right"] = {
					["buff-Defcds"] = 50,
					["buff-MyCDs-mine"] = 51,
					["debuffs-Antorus"] = 52,
				},
				["center-icon-timer"] = {
					["debuff-IronPrison"] = 50,
				},
				["heals-color"] = {
					["color-HealthColor"] = 51,
				},
				["PhantomHP-color"] = {
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["EnvMist-color"] = {
					["buff-EnvelopingMist-not-mine"] = 50,
					["buff-CenarionWard-not-mine"] = 51,
				},
				["Renew"] = {
					["buff-Atonement-mine"] = 51,
					["buff-EnvelopingMist-mine"] = 52,
					["buff-Renew-mine"] = 50,
				},
				["Shields-above-color"] = {
					["color-Absorbs"] = 50,
				},
				["side-bottom-2"] = {
				},
				["center-left"] = {
				},
				["side-right"] = {
				},
				["text-up-color"] = {
					["classcolor"] = 50,
				},
				["PowerBorder-color"] = {
				},
				["heals"] = {
					["heals-incoming"] = 50,
				},
			},
			["debug"] = false,
		},
		["Pixelfehler - Ysera"] = {
			["statusMap"] = {
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["icon-right"] = {
					["raid-icon-target"] = 90,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["border"] = {
					["target"] = 50,
					["health-low"] = 55,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Gradient",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 5,
					["size"] = 5,
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["alpha"] = {
					["type"] = "alpha",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Gradient",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
			},
			["statuses"] = {
				["buff-IceBarrier-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["spellName"] = 11426,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-IceArmor-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["spellName"] = 7302,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.4,
						["b"] = 0.4,
					},
				},
			},
		},
	},
}


Grid2DB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
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
				["HealerFrames"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["defaultEJ_difficulty"] = 16,
				},
				["Mend"] = {
					["lastSelectedModule"] = "Legion",
					["defaultEJ_difficulty"] = 16,
					["lastSelectedInstance"] = 1147,
				},
				["Hobo UI"] = {
					["lastSelectedModule"] = "[Custom Debuffs]",
					["defaultEJ_difficulty"] = 16,
				},
			},
		},
		["Grid2Layout"] = {
			["global"] = {
				["customLayouts"] = {
					["Hobo Arena"] = {
						{
							["maxColumns"] = 1,
							["sortMethod"] = "INDEX",
							["unitsPerColumn"] = 3,
							["groupFilter"] = "1",
						}, -- [1]
						{
							["maxColumns"] = 1,
							["type"] = "pet",
							["unitsPerColumn"] = 3,
							["sortMethod"] = "INDEX",
						}, -- [2]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = true,
							["showParty"] = true,
						},
					},
					["by group & role 25"] = {
						{
							["maxColumns"] = 6,
							["sortMethod"] = "INDEX",
							["groupingOrder"] = "1,2,3,4,5,6,7,8",
							["groupBy"] = "GROUP",
							["groupFilter"] = "1,2,3,4,5",
							["unitsPerColumn"] = 5,
						}, -- [1]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["showParty"] = true,
							["toggleForVehicle"] = true,
						},
					},
					["Hobo Raid"] = {
						{
							["maxColumns"] = 4,
							["sortMethod"] = "NAME",
							["unitsPerColumn"] = 5,
							["groupingOrder"] = "TANK,DAMAGER,HEALER,NONE",
							["groupFilter"] = "1,2,3,4",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [1]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = false,
							["showParty"] = true,
						},
					},
					["Hobo Party"] = {
						{
							["maxColumns"] = 1,
							["sortMethod"] = "INDEX",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
							["unitsPerColumn"] = 5,
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
							["toggleForVehicle"] = false,
							["showParty"] = true,
						},
					},
					["Hobo Party Prot"] = {
						{
							["maxColumns"] = 1,
							["unitsPerColumn"] = 5,
							["sortMethod"] = "INDEX",
						}, -- [1]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = false,
							["showParty"] = true,
						},
					},
					["Hobo Flex Raid"] = {
						{
							["maxColumns"] = 7,
							["sortMethod"] = "NAME",
							["groupBy"] = "ASSIGNEDROLE",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "1,2,3,4,5,6,7",
							["groupingOrder"] = "TANK,DAMAGER,HEALER,NONE",
						}, -- [1]
						["meta"] = {
							["party"] = true,
							["arena"] = true,
							["solo"] = true,
							["raid"] = true,
						},
						["defaults"] = {
							["showSolo"] = true,
							["showRaid"] = true,
							["showPlayer"] = true,
							["toggleForVehicle"] = false,
							["showParty"] = true,
						},
					},
				},
			},
			["profiles"] = {
				["Taff Centre Party2"] = {
					["BorderB"] = 0,
					["layouts"] = {
						["raid@lfr"] = "By Group & Role",
						["solo"] = "By Role",
						["raid@other"] = "By Group & Role",
						["party"] = "By Role",
						["raid@pvp"] = "By Group & Role",
						["raid@none"] = "By Group & Role",
						["raid@mythic"] = "By Group & Role",
						["raid"] = "By Group & Role",
						["raid@flex"] = "By Group & Role",
						["arena"] = "By Role",
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
					["BorderTexture"] = "None",
					["BorderG"] = 0,
					["BackgroundB"] = 0,
					["horizontal"] = false,
					["PosX"] = 532.97809450296,
					["FrameLock"] = true,
				},
				["Taff Centre Party"] = {
					["BackgroundG"] = 0,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["BorderB"] = 0,
					["BackgroundR"] = 0,
					["layouts"] = {
						["raid@lfr"] = "By Role",
						["solo"] = "Solo",
						["raid@other"] = "By Role",
						["party"] = "By Role",
						["raid@pvp"] = "By Role",
						["raid@none"] = "By Group & Role",
						["raid@mythic"] = "By Role",
						["raid"] = "By Group & Role",
						["raid@flex"] = "By Role",
						["arena"] = "By Role",
					},
					["Spacing"] = 0,
					["BackgroundB"] = 0,
					["BorderA"] = 0,
					["BorderG"] = 0,
					["BackgroundA"] = 0,
					["BorderR"] = 0,
					["BorderTexture"] = "None",
					["anchor"] = "CENTER",
					["horizontal"] = false,
					["PosX"] = -194.133340746827,
					["PosY"] = -238.222146610417,
				},
				["Hobo UI"] = {
					["BackgroundTexture"] = "None",
					["BorderB"] = 0.501960784313726,
					["layoutBySize"] = {
						[20] = "Hobo Raid",
						[25] = "Hobo Flex Raid",
						[40] = "Hobo Flex Raid",
						[30] = "Hobo Flex Raid",
						[10] = "Hobo Raid",
					},
					["layouts"] = {
						["raid@lfr"] = "Hobo Flex Raid",
						["solo"] = "Hobo Party",
						["raid@other"] = "Hobo Flex Raid",
						["party"] = "Hobo Party",
						["arena"] = "Hobo Arena",
						["raid@none"] = "Hobo Flex Raid",
						["raid"] = "Hobo Flex Raid",
						["raid@mythic"] = "Hobo Raid",
						["raid@flex"] = "Hobo Flex Raid",
						["raid@pvp"] = "Hobo Flex Raid",
					},
					["BackgroundR"] = 0.101960784313725,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0.501960784313726,
					["Spacing"] = 0,
					["anchor"] = "BOTTOMRIGHT",
					["BackgroundG"] = 0.101960784313725,
					["groupAnchor"] = "BOTTOMRIGHT",
					["PosY"] = 431.400583568575,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["FrameStrata"] = "BACKGROUND",
					["PosX"] = -741.630494036697,
					["horizontal"] = false,
					["BackgroundA"] = 0,
					["BorderTexture"] = "Grid2 Flat",
					["BorderG"] = 0.501960784313726,
					["BackgroundB"] = 0.101960784313725,
					["Padding"] = -1,
					["layoutScales"] = {
						["Hobo Arena"] = 1.2,
						["yUI Arena"] = 1.35,
					},
					["extraThemes"] = {
						{
							["BackgroundTexture"] = "None",
							["BorderB"] = 0.501960784313726,
							["layoutBySize"] = {
								[20] = "Hobo Raid",
								[25] = "Hobo Flex Raid",
								[40] = "Hobo Flex Raid",
								[30] = "Hobo Flex Raid",
								[10] = "Hobo Raid",
							},
							["layouts"] = {
								["raid@lfr"] = "Hobo Flex Raid",
								["solo"] = "None",
								["raid@other"] = "Hobo Flex Raid",
								["party"] = "Hobo Party",
								["raid@pvp"] = "Hobo Flex Raid",
								["raid@none"] = "Hobo Flex Raid",
								["raid@mythic"] = "Hobo Raid",
								["arena"] = "Hobo Arena",
								["raid@flex"] = "Hobo Flex Raid",
								["raid"] = "Hobo Flex Raid",
							},
							["BackgroundR"] = 0.101960784313725,
							["ScaleSize"] = 1,
							["FrameLock"] = true,
							["BorderA"] = 0,
							["BorderR"] = 0.501960784313726,
							["Spacing"] = 0,
							["layoutScales"] = {
								["Hobo Arena"] = 1.2,
								["yUI Arena"] = 1.35,
							},
							["clamp"] = true,
							["groupAnchor"] = "BOTTOMRIGHT",
							["PosY"] = 431.400514498528,
							["FrameDisplay"] = "Grouped",
							["FrameStrata"] = "BACKGROUND",
							["BackgroundG"] = 0.101960784313725,
							["horizontal"] = false,
							["BackgroundA"] = 0,
							["BorderTexture"] = "Grid2 Flat",
							["BorderG"] = 0.501960784313726,
							["BackgroundB"] = 0.101960784313725,
							["Padding"] = -1,
							["anchor"] = "BOTTOMRIGHT",
							["PosX"] = -741.630678972317,
						}, -- [1]
						{
							["BackgroundTexture"] = "None",
							["BorderB"] = 0.501960784313726,
							["layoutBySize"] = {
								[20] = "Hobo Raid",
								[25] = "Hobo Flex Raid",
								[40] = "Hobo Flex Raid",
								[30] = "Hobo Flex Raid",
								[10] = "Hobo Raid",
							},
							["layouts"] = {
								["raid@lfr"] = "Hobo Flex Raid",
								["solo"] = "None",
								["raid@other"] = "Hobo Flex Raid",
								["party"] = "Hobo Party",
								["raid"] = "Hobo Flex Raid",
								["raid@none"] = "Hobo Flex Raid",
								["arena"] = "Hobo Arena",
								["raid@mythic"] = "Hobo Raid",
								["raid@flex"] = "Hobo Flex Raid",
								["raid@pvp"] = "Hobo Flex Raid",
							},
							["BackgroundR"] = 0.101960784313725,
							["ScaleSize"] = 1,
							["FrameLock"] = true,
							["BorderA"] = 0,
							["BorderR"] = 0.501960784313726,
							["PosX"] = -981.759950982727,
							["layoutScales"] = {
								["Hobo Arena"] = 1.2,
								["yUI Arena"] = 1.35,
							},
							["clamp"] = true,
							["groupAnchor"] = "BOTTOMRIGHT",
							["PosY"] = 240.640055737589,
							["Spacing"] = 0,
							["FrameStrata"] = "BACKGROUND",
							["anchor"] = "BOTTOMRIGHT",
							["Padding"] = -1,
							["BackgroundA"] = 0,
							["BackgroundB"] = 0.101960784313725,
							["BorderG"] = 0.501960784313726,
							["BorderTexture"] = "Grid2 Flat",
							["horizontal"] = false,
							["BackgroundG"] = 0.101960784313725,
							["FrameDisplay"] = "Grouped",
						}, -- [2]
						{
							["BackgroundTexture"] = "None",
							["BorderB"] = 0.501960784313726,
							["layoutBySize"] = {
								[20] = "Hobo Raid",
								[25] = "Hobo Flex Raid",
								[40] = "Hobo Flex Raid",
								[30] = "Hobo Flex Raid",
								[10] = "Hobo Raid",
							},
							["layouts"] = {
								["raid@lfr"] = "Hobo Flex Raid",
								["solo"] = "None",
								["raid@other"] = "Hobo Flex Raid",
								["party"] = "Hobo Party",
								["raid@pvp"] = "Hobo Flex Raid",
								["raid@none"] = "Hobo Flex Raid",
								["raid@mythic"] = "Hobo Raid",
								["raid"] = "Hobo Flex Raid",
								["raid@flex"] = "Hobo Flex Raid",
								["arena"] = "Hobo Arena",
							},
							["BackgroundR"] = 0.101960784313725,
							["ScaleSize"] = 1,
							["FrameLock"] = true,
							["BorderA"] = 0,
							["BorderR"] = 0.501960784313726,
							["Spacing"] = 0,
							["layoutScales"] = {
								["Hobo Arena"] = 1.2,
								["yUI Arena"] = 1.35,
							},
							["clamp"] = false,
							["groupAnchor"] = "BOTTOMRIGHT",
							["PosY"] = 240.640055737589,
							["FrameDisplay"] = "Grouped",
							["FrameStrata"] = "BACKGROUND",
							["BackgroundG"] = 0.101960784313725,
							["horizontal"] = false,
							["BackgroundA"] = 0,
							["BorderTexture"] = "Grid2 Flat",
							["BorderG"] = 0.501960784313726,
							["BackgroundB"] = 0.101960784313725,
							["Padding"] = -1,
							["anchor"] = "BOTTOMRIGHT",
							["PosX"] = -981.759950982727,
						}, -- [3]
						{
							["BackgroundTexture"] = "None",
							["BorderB"] = 0.501960784313726,
							["layoutBySize"] = {
								[20] = "Hobo Raid",
								[25] = "Hobo Flex Raid",
								[40] = "Hobo Flex Raid",
								[30] = "Hobo Flex Raid",
								[10] = "Hobo Raid",
							},
							["layouts"] = {
								["raid@lfr"] = "Hobo Flex Raid",
								["solo"] = "None",
								["raid@other"] = "Hobo Flex Raid",
								["party"] = "Hobo Party",
								["raid@pvp"] = "Hobo Flex Raid",
								["raid@none"] = "Hobo Flex Raid",
								["raid@mythic"] = "Hobo Raid",
								["arena"] = "Hobo Arena",
								["raid@flex"] = "Hobo Flex Raid",
								["raid"] = "Hobo Flex Raid",
							},
							["BackgroundR"] = 0.101960784313725,
							["ScaleSize"] = 1,
							["FrameLock"] = true,
							["BorderA"] = 0,
							["BorderR"] = 0.501960784313726,
							["Spacing"] = 0,
							["layoutScales"] = {
								["Hobo Arena"] = 1.2,
								["yUI Arena"] = 1.35,
							},
							["clamp"] = true,
							["groupAnchor"] = "BOTTOMRIGHT",
							["PosY"] = 431.400514498528,
							["FrameDisplay"] = "Always",
							["FrameStrata"] = "BACKGROUND",
							["BackgroundG"] = 0.101960784313725,
							["horizontal"] = false,
							["BackgroundA"] = 0,
							["BackgroundB"] = 0.101960784313725,
							["BorderG"] = 0.501960784313726,
							["BorderTexture"] = "Grid2 Flat",
							["Padding"] = -1,
							["anchor"] = "BOTTOMRIGHT",
							["PosX"] = -741.630678972317,
						}, -- [4]
					},
				},
				["Nyanporo - Blackmoore"] = {
					["PosY"] = -238.400045035793,
					["PosX"] = 29.2444316420206,
				},
				["Valdurawr - Stormscale"] = {
					["PosY"] = -207.110985917843,
					["PosX"] = 125.955602008271,
				},
				["Se - Stormscale"] = {
					["minimapIcon"] = {
						["minimapPos"] = 197.668965074587,
					},
					["PosY"] = -421.924442509799,
					["PosX"] = 148.71092339261,
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
						["raid20"] = "Free Layout",
						["raid@none"] = "By Group | 40",
						["raid25"] = "Free Layout",
						["raid"] = "By Group",
						["raid@flex"] = "By Group | 40",
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
					["FreeLayout"] = {
						["SortTanks"] = true,
						["SortType"] = "group",
					},
					["BackgroundA"] = 0,
					["BorderTexture"] = "None",
					["BorderG"] = 0,
					["BackgroundB"] = 0.101960784313725,
					["Padding"] = 1,
					["anchor"] = "TOP",
					["PosX"] = 0.31668908050824,
				},
				["HealerFrames"] = {
					["BorderB"] = 0,
					["layouts"] = {
						["raid@lfr"] = "By Group & Role",
						["solo"] = "By Class",
						[30] = "by group & role 25",
						["raid@other"] = "By Group & Role",
						["party"] = "By Role",
						["raid@pvp"] = "By Group & Role",
						["raid@none"] = "By Group & Role",
						["raid@mythic"] = "By Group & Role",
						["arena"] = "By Role",
						["raid@flex"] = "By Group & Role",
						["raid"] = "By Group & Role",
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
					["PosY"] = -579.5554664934207,
					["extraThemes"] = {
					},
					["BackgroundA"] = 0,
					["FrameLock"] = true,
					["BorderG"] = 0,
					["BorderTexture"] = "None",
					["horizontal"] = false,
					["BackgroundB"] = 0,
					["PosX"] = 504.8888110351581,
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
		["Grid2Options"] = {
			["profiles"] = {
				["HealerFrames"] = {
					["L"] = {
						["indicators"] = {
							["Icon-Top"] = "Raid Icon Marker",
							["Icons-Top-Left"] = "Defensives",
							["Debuffs-Bottom-Right"] = "Tank Debuffs",
						},
					},
				},
				["Hobo UI"] = {
					["L"] = {
						["indicators"] = {
							["debuffs"] = "Debuffs",
							["raid-marker"] = "Raid-Marker",
							["Lingering-Infection-Stacks"] = "stack counter",
							["Spirit-Realm"] = "overlay",
							["Tank-Mitigation"] = "Defensives",
							["Hot-BottomRightUpLeftLeft"] = "IconSquare-BottomRightUpLeftLeft",
							["healing2"] = "Misc-Buffs",
							["CENTER-DEBUFF"] = "Center-Debuff",
							["Rejuv2"] = "IconSquare-BottomRightUp",
							["manatxt"] = "mana text",
							["Wild-Growth"] = "IconSquare-BottomRightUpLeft",
							["text-down"] = "name",
							["top-right"] = "Beacons",
							["tank-stacks"] = "tank stacks",
							["Hot-TopRight"] = "IconSquare-TopRight",
							["Regrowth"] = "IconSquare-BottomRightLeft",
							["text-up"] = "misc text",
							["Hot-BottomRightLeftLeft"] = "IconSquare-BottomRightLeftLeft",
							["Rejuv"] = "IconSquare-BottomRight",
							["corner-bottom-left2"] = "dungeon role",
						},
					},
				},
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
			},
		},
		["Grid2Frame"] = {
			["profiles"] = {
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
					["frameHeights"] = {
						["Mythic Raids"] = 55,
						["5 Man"] = 55,
						["Flex Raids"] = 55,
						["Heroic Raids"] = 55,
						["Raids"] = 67,
					},
					["showTooltip"] = "OOC",
					["frameContentColor"] = {
						["r"] = 0.125490196078431,
						["g"] = 0.125490196078431,
						["b"] = 0.125490196078431,
					},
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 105,
					["frameBorderDistance"] = 0,
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
					["frameContentColor"] = {
						["r"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["b"] = 0.701960784313726,
					},
					["orientation"] = "HORIZONTAL",
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
				["Hobo UI"] = {
					["frameColor"] = {
						["a"] = 0.800000011920929,
					},
					["frameHeight"] = 46,
					["frameBorder"] = 1,
					["barTexture"] = "Flat",
					["extraThemes"] = {
						{
							["frameColor"] = {
								["a"] = 0.800000011920929,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["fontSize"] = 11,
							["frameBorder"] = 1,
							["iconSize"] = 14,
							["mouseoverTexture"] = "Blizzard Quest Title Highlight",
							["frameBorderDistance"] = 1,
							["frameHeight"] = 60,
							["frameBorderTexture"] = "Grid2 Flat",
							["barTexture"] = "Flat",
							["frameTexture"] = "Flat",
							["frameWidths"] = {
								["Hobo Arena"] = 80,
								["yUI Arena"] = 100,
								["yUI Party"] = 90,
								["yUI Raid"] = 85,
								["yUI 25+"] = 90,
								["Holy Party"] = 90,
								["Hobo Party"] = 90,
							},
							["orientation"] = "HORIZONTAL",
							["font"] = "Accidental Presidency",
							["menuDisabled"] = true,
							["frameContentColor"] = {
								["a"] = 0.700000017881393,
								["r"] = 0.141176470588235,
								["g"] = 0.141176470588235,
								["b"] = 0.141176470588235,
							},
							["mouseoverHighlight"] = false,
							["frameHeights"] = {
								["yUI Party"] = 58,
								["Holy Raid10"] = 80,
								["yUI 25+"] = 65,
								["Holy Raid40"] = 50,
								["yUI Arena"] = 80,
								["Holy Raid25"] = 73,
								["Holy Raid20"] = 75,
								["yUI Raid"] = 60,
								["Holy Party"] = 58,
								["Hobo Party"] = 58,
								["Hobo Arena"] = 60,
							},
							["frameWidth"] = 90,
							["mouseoverColor"] = {
								["a"] = 1,
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						}, -- [1]
						{
							["frameColor"] = {
								["a"] = 0.800000011920929,
								["b"] = 0,
								["g"] = 0,
								["r"] = 0,
							},
							["fontSize"] = 11,
							["frameBorder"] = 1,
							["iconSize"] = 14,
							["mouseoverTexture"] = "Blizzard Quest Title Highlight",
							["frameBorderDistance"] = 1,
							["frameHeight"] = 60,
							["frameBorderTexture"] = "Grid2 Flat",
							["barTexture"] = "Flat",
							["frameTexture"] = "Flat",
							["frameWidths"] = {
								["Hobo Arena"] = 80,
								["yUI Arena"] = 100,
								["yUI Party"] = 90,
								["yUI Raid"] = 85,
								["yUI 25+"] = 90,
								["Hobo Party"] = 90,
								["Holy Party"] = 90,
							},
							["orientation"] = "HORIZONTAL",
							["font"] = "Accidental Presidency",
							["menuDisabled"] = true,
							["frameHeights"] = {
								["Holy Party"] = 58,
								["Hobo Party"] = 58,
								["Holy Raid10"] = 80,
								["Holy Raid40"] = 50,
								["yUI Arena"] = 80,
								["yUI Party"] = 58,
								["Hobo Arena"] = 60,
								["yUI Raid"] = 60,
								["Holy Raid20"] = 75,
								["Holy Raid25"] = 73,
								["yUI 25+"] = 65,
							},
							["frameContentColor"] = {
								["a"] = 0.700000017881393,
								["b"] = 0.141176470588235,
								["g"] = 0.141176470588235,
								["r"] = 0.141176470588235,
							},
							["mouseoverHighlight"] = false,
							["frameWidth"] = 90,
							["mouseoverColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						}, -- [2]
						{
							["frameColor"] = {
								["a"] = 0.800000011920929,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["fontSize"] = 11,
							["frameBorder"] = 1,
							["iconSize"] = 14,
							["mouseoverTexture"] = "Blizzard Quest Title Highlight",
							["frameBorderDistance"] = 1,
							["frameHeight"] = 42,
							["frameBorderTexture"] = "Grid2 Flat",
							["barTexture"] = "Flat",
							["frameTexture"] = "Flat",
							["frameWidths"] = {
								["Hobo Arena"] = 80,
								["yUI Arena"] = 100,
								["yUI Party"] = 90,
								["yUI Raid"] = 85,
								["yUI 25+"] = 90,
								["Holy Party"] = 90,
								["Hobo Party"] = 90,
							},
							["frameHeights"] = {
								["yUI Party"] = 58,
								["Holy Raid10"] = 80,
								["yUI 25+"] = 65,
								["Hobo Arena"] = 60,
								["yUI Arena"] = 80,
								["Holy Raid25"] = 73,
								["Holy Raid20"] = 75,
								["yUI Raid"] = 60,
								["Holy Party"] = 58,
								["Hobo Party"] = 58,
								["Holy Raid40"] = 50,
							},
							["font"] = "Accidental Presidency",
							["menuDisabled"] = true,
							["mouseoverHighlight"] = false,
							["frameContentColor"] = {
								["a"] = 0.700000017881393,
								["r"] = 0.141176470588235,
								["g"] = 0.141176470588235,
								["b"] = 0.141176470588235,
							},
							["orientation"] = "HORIZONTAL",
							["frameWidth"] = 62,
							["mouseoverColor"] = {
								["a"] = 1,
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
						}, -- [3]
						{
							["frameColor"] = {
								["a"] = 0.800000011920929,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["fontSize"] = 11,
							["frameBorder"] = 1,
							["iconSize"] = 14,
							["mouseoverTexture"] = "Blizzard Quest Title Highlight",
							["frameBorderDistance"] = 1,
							["frameHeight"] = 46,
							["frameTexture"] = "Flat",
							["barTexture"] = "Flat",
							["mouseoverColor"] = {
								["a"] = 1,
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
							["frameWidths"] = {
								["Hobo Arena"] = 80,
								["yUI Arena"] = 100,
								["yUI Party"] = 90,
								["yUI Raid"] = 85,
								["yUI 25+"] = 90,
								["Holy Party"] = 90,
								["Hobo Party"] = 90,
							},
							["orientation"] = "HORIZONTAL",
							["font"] = "Accidental Presidency",
							["menuDisabled"] = true,
							["frameContentColor"] = {
								["a"] = 0.700000017881393,
								["r"] = 0.141176470588235,
								["g"] = 0.141176470588235,
								["b"] = 0.141176470588235,
							},
							["mouseoverHighlight"] = false,
							["frameHeights"] = {
								["yUI Party"] = 58,
								["Holy Raid10"] = 80,
								["yUI 25+"] = 65,
								["Holy Raid40"] = 50,
								["yUI Arena"] = 80,
								["Holy Raid20"] = 75,
								["yUI Raid"] = 60,
								["Holy Raid25"] = 73,
								["Holy Party"] = 58,
								["Hobo Party"] = 58,
								["Hobo Arena"] = 60,
							},
							["frameWidth"] = 75,
							["frameBorderTexture"] = "Grid2 Flat",
						}, -- [4]
					},
					["frameWidths"] = {
						["Hobo Arena"] = 80,
						["yUI Arena"] = 100,
						["yUI Party"] = 90,
						["yUI Raid"] = 85,
						["yUI 25+"] = 90,
						["Hobo Party"] = 90,
						["Holy Party"] = 90,
					},
					["font"] = "Accidental Presidency",
					["menuDisabled"] = true,
					["frameHeights"] = {
						["Holy Party"] = 58,
						["Hobo Party"] = 58,
						["Holy Raid10"] = 80,
						["Hobo Arena"] = 60,
						["yUI Arena"] = 80,
						["yUI Party"] = 58,
						["Holy Raid40"] = 50,
						["Holy Raid25"] = 73,
						["yUI Raid"] = 60,
						["Holy Raid20"] = 75,
						["yUI 25+"] = 65,
					},
					["frameContentColor"] = {
						["a"] = 0.700000017881393,
						["b"] = 0.141176470588235,
						["g"] = 0.141176470588235,
						["r"] = 0.141176470588235,
					},
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 75,
					["frameTexture"] = "Flat",
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
						[30] = 84,
						["By Group"] = 100,
						["Party wide"] = 84,
					},
					["frameBorderTexture"] = "Plain White",
					["font"] = "Expressway",
					["frameHeights"] = {
						["By Group | 40"] = 61,
						["Party"] = 67,
						["By Group & Role"] = 50,
						[25] = 58,
						[40] = 40,
						[30] = 58,
						["By Group"] = 61,
						["Party wide"] = 80,
					},
					["showTooltip"] = "OOC",
					["frameContentColor"] = {
						["g"] = 0.0549019607843137,
						["r"] = 0.0549019607843137,
					},
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 65,
					["frameBorderDistance"] = 0,
				},
				["HealerFrames"] = {
					["frameBorder"] = 1,
					["extraThemes"] = {
					},
					["showTooltip"] = "OOC",
					["frameBorderDistance"] = 0,
					["frameTexture"] = "Grid2 Flat",
					["frameWidths"] = {
						["Mythic Raids"] = 85,
						["by group & role 25"] = 84,
						["Raids"] = 100,
						["Heroic Raids"] = 85,
						["Flex Raids"] = 85,
						[30] = 100,
						["5 Man"] = 100,
					},
					["font"] = "Roboto-Medium",
					["orientation"] = "HORIZONTAL",
					["frameContentColor"] = {
						["r"] = 0.125490196078431,
						["g"] = 0.125490196078431,
						["b"] = 0.125490196078431,
					},
					["frameWidth"] = 125,
					["frameHeights"] = {
						["Mythic Raids"] = 55,
						["5 Man"] = 55,
						["Flex Raids"] = 55,
						["Heroic Raids"] = 55,
						["Raids"] = 67,
					},
				},
			},
		},
		["Grid2Utils"] = {
		},
	},
	["profileKeys"] = {
		["Afwfes - Stormscale"] = "Afwfes - Stormscale",
		["Nisefy - Stormscale"] = "HealerFrames",
		["Valdurawr - Stormscale"] = "Valdurawr - Stormscale",
		["Se - Stormscale"] = "HealerFrames",
		["Yvera - Moonglade"] = "Yvera - Moonglade",
		["Niseko - Stormscale"] = "HealerFrames",
		["Nisepie - Stormscale"] = "Nisepie - Stormscale",
		["Pixelfehler - Ysera"] = "Pixelfehler - Ysera",
		["Purrmeow - Twisting Nether"] = "Purrmeow - Twisting Nether",
		["Nyanporo - Blackmoore"] = "Nyanporo - Blackmoore",
		["Yoshicakes - Stormscale"] = "Yoshicakes - Stormscale",
		["Nisearw - Stormscale"] = "Nisearw - Stormscale",
		["Donnerbock - Ysera"] = "HealerFrames",
		["Vordt - Twisting Nether"] = "HealerFrames",
		["Awfrsdg - Stormscale"] = "Awfrsdg - Stormscale",
		["Niseko - Twisting Nether"] = "HealerFrames",
		["Seko - Stormscale"] = "HealerFrames",
	},
	["profiles"] = {
		["Taff Centre Party2"] = {
			["indicators"] = {
				["Rejuv-color"] = {
					["type"] = "bar-color",
				},
				["Mana"] = {
					["type"] = "bar",
					["width"] = 75,
					["height"] = 2,
					["orientation"] = "HORIZONTAL",
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
					["texture"] = "ElvUI Blank",
				},
				["Renewing"] = {
					["texture"] = "Gradient",
					["type"] = "bar",
					["height"] = 42,
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 0,
					},
					["duration"] = true,
					["orientation"] = "VERTICAL",
					["width"] = 3,
				},
				["Beacon-of-Light-color"] = {
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
					["type"] = "text",
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
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["fontSize"] = 15,
					["iconSize"] = 18,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
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
					["useStatusColor"] = true,
					["level"] = 9,
					["iconSize"] = 18,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 1,
					},
				},
				["Health-deficit"] = {
					["type"] = "multibar",
					["bar2"] = {
						["color"] = {
							["a"] = 0.800000011920929,
							["b"] = 0.964705882352941,
							["g"] = 1,
							["r"] = 0.96078431372549,
						},
						["noOverlap"] = true,
						["reverse"] = true,
					},
					["bar1"] = {
						["color"] = {
							["a"] = 0.777107656002045,
							["b"] = 1,
							["g"] = 0.737254901960784,
							["r"] = 0.713725490196079,
						},
					},
					["opacity"] = 1,
					["barCount"] = 2,
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
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["Renewing-color"] = {
					["type"] = "bar-color",
				},
				["health-color"] = {
					["type"] = "bar-color",
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
					["fontSize"] = 9,
					["type"] = "icons",
					["font"] = "Roboto-Medium",
					["borderOpacity"] = 1,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["level"] = 8,
					["fontJustifyV"] = "MIDDLE",
					["maxIcons"] = 4,
					["borderSize"] = 1,
					["iconSize"] = 16,
					["fontJustifyH"] = "CENTER",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -4,
					},
					["maxIconsPerRow"] = 4,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["fontFlags"] = "",
				},
				["Beacon--color"] = {
					["type"] = "bar-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
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
					["font"] = "Expressway",
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
					["borderSize"] = 1,
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
				["corner-top-left-color"] = {
					["type"] = "text-color",
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
					["texture"] = "ElvUI Blank",
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
				["Shields-color"] = {
					["type"] = "bar-color",
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["Mana-color"] = {
					["type"] = "bar-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
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
						["r"] = 0.71764705882353,
						["g"] = 0.784313725490196,
						["b"] = 1,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["a"] = 0.620000004768372,
						["r"] = 0.627450980392157,
						["g"] = 0.694117647058824,
						["b"] = 1,
					},
					["color1"] = {
						["a"] = 0.560000002384186,
						["r"] = 0.694117647058824,
						["g"] = 0.745098039215686,
						["b"] = 1,
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
						["r"] = 0,
						["g"] = 0.580392156862745,
						["b"] = 1,
					},
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
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["useAlternateIcons"] = true,
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["hideDamagers"] = true,
				},
				["raid-debuffs"] = {
					["color1"] = {
						["r"] = 0.988235294117647,
						["g"] = 1,
						["b"] = 0.933333333333333,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 61295,
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
				["threat"] = {
					["color2"] = {
						["r"] = 0.949019607843137,
						["b"] = 0.501960784313726,
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
						["r"] = 0.552941176470588,
						["g"] = 0.545098039215686,
						["b"] = 0.56078431372549,
					},
					["color3"] = {
						["a"] = 0.480000019073486,
						["r"] = 0.537254901960784,
						["g"] = 0.545098039215686,
						["b"] = 0.545098039215686,
					},
					["color1"] = {
						["a"] = 0.480000019073486,
						["r"] = 0.556862745098039,
						["g"] = 0.568627450980392,
						["b"] = 0.556862745098039,
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
				["ready-check"] = {
					["threshold"] = 5,
				},
				["health-current"] = {
					["color2"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["b"] = 0.219607843137255,
					},
					["quickHealth"] = true,
					["color3"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["b"] = 0.219607843137255,
					},
					["color1"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["b"] = 0.219607843137255,
					},
				},
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["buff-Atonement-mine"] = {
					["spellName"] = "Atonement",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
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
				["debuff-Curse"] = {
					["color1"] = {
						["r"] = 0.458823529411765,
					},
				},
				["mana"] = {
					["showOnlyHealers"] = true,
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
					},
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
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["debug"] = false,
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
				["text-down-color"] = {
				},
				["Renewing-color"] = {
					["buff-EssenceFont-mine"] = 50,
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["resurrection"] = 156,
					["death"] = 157,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["vehicle"] = 70,
					["feign-death"] = 96,
					["offline"] = 93,
				},
				["heals"] = {
				},
				["My-Buffs"] = {
					["buffs-PaladinBuffs-mine"] = 56,
					["buff-PrayerofMending-mine"] = 51,
					["buffs-DruidBuffs-mine"] = 54,
					["buff-Atonement-mine"] = 52,
					["buff-Riptide-mine"] = 50,
					["buff-BeaconofVirtue-mine"] = 53,
					["buffs-MonkBuffs-mine"] = 55,
				},
				["Debuffs"] = {
					["debuffs-Debuffs"] = 54,
				},
				["heals-color"] = {
				},
				["corner-top-left-color"] = {
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 100,
				},
				["Icons-Top-Left"] = {
					["buffs-DefensiveCooldowns-not-mine"] = 74,
				},
				["Name"] = {
					["name"] = 50,
				},
				["Icon-Top"] = {
					["raid-icon-player"] = 50,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["health-color"] = {
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
					["classcolor"] = 50,
				},
				["Renewing"] = {
					["buff-EssenceFont-mine"] = 50,
				},
			},
		},
		["Hobo UI"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["debuffs"] = {
					["disableOmniCC"] = true,
					["fontSize"] = 18,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["type"] = "icons",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 3,
					["font"] = "Accidental Presidency",
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["useStatusColor"] = true,
					["maxIconsPerRow"] = 3,
					["iconSize"] = 16,
					["borderSize"] = 1,
				},
				["death-color"] = {
					["type"] = "bar-color",
				},
				["text-down"] = {
					["font"] = "Accidental Presidency",
					["fontSize"] = 14,
					["type"] = "text",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = -1,
					},
					["level"] = 7,
					["textlength"] = 4,
					["fontFlags"] = "OUTLINE",
				},
				["center-right-color"] = {
					["type"] = "text-color",
				},
				["Spirit-Realm"] = {
					["type"] = "bar",
					["opacity"] = 0.4,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["duration"] = true,
					["level"] = 9,
					["texture"] = "Flat",
				},
				["Wild-Growth"] = {
					["fontSize"] = 8,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.749019607843137,
						["g"] = 0.894117647058824,
						["b"] = 0.462745098039216,
					},
					["borderSize"] = 4,
					["useStatusColor"] = true,
					["location"] = {
						["y"] = 8,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -8,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 8,
				},
				["Rejuv2-color"] = {
					["type"] = "text-color",
				},
				["misery-color"] = {
					["type"] = "text-color",
				},
				["Hot-BottomRightUpLeftLeft"] = {
					["borderSize"] = 4,
					["type"] = "icon",
					["useStatusColor"] = true,
					["reverseCooldown"] = true,
					["location"] = {
						["y"] = 8,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -16,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 8,
				},
				["Hot-BottomRightLeftLeft"] = {
					["fontSize"] = 8,
					["stackColor"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.815686274509804,
						["g"] = 0.658823529411765,
						["r"] = 0.580392156862745,
					},
					["borderSize"] = 4,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -16,
					},
					["useStatusColor"] = true,
					["level"] = 8,
					["type"] = "icon",
					["size"] = 8,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["Holy-Priest-color"] = {
					["type"] = "multibar-color",
				},
				["tooltip"] = {
					["displayUnitOOC"] = true,
					["type"] = "tooltip",
				},
				["corner-top-centerright-color"] = {
					["type"] = "text-color",
				},
				["top-right"] = {
					["disableOmniCC"] = true,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["maxIcons"] = 3,
					["borderSize"] = 1,
					["type"] = "icons",
					["location"] = {
						["y"] = 3,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 4,
					},
					["level"] = 8,
					["font"] = "Accidental Presidency",
					["iconSize"] = 14,
				},
				["tank-stacks"] = {
					["type"] = "text",
					["font"] = "Accidental Presidency",
					["fontSize"] = 20,
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["stack"] = true,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["shields-color"] = {
					["type"] = "bar-color",
				},
				["corner-top-centerleft-color"] = {
					["type"] = "text-color",
				},
				["corner-top-centerleft2-color"] = {
					["type"] = "text-color",
				},
				["Debuffs-CC-PVP"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 2,
					["borderSize"] = 1,
					["iconSize"] = 26,
					["maxIconsPerRow"] = 2,
					["useStatusColor"] = true,
					["level"] = 9,
					["font"] = "Accidental Presidency",
					["fontSize"] = 12,
				},
				["Rejuv"] = {
					["type"] = "icon",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["borderSize"] = 4,
					["font"] = "Accidental Presidency",
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["useStatusColor"] = true,
					["size"] = 8,
				},
				["healing2"] = {
					["disableOmniCC"] = true,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["borderSize"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["maxIcons"] = 6,
					["font"] = "Accidental Presidency",
					["type"] = "icons",
					["level"] = 8,
					["iconSize"] = 10,
					["maxIconsPerRow"] = 20,
					["location"] = {
						["y"] = 7,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 0,
					},
					["fontSize"] = 10,
				},
				["toptext-right-color"] = {
					["type"] = "text-color",
				},
				["text-up"] = {
					["font"] = "Accidental Presidency",
					["fontSize"] = 12,
					["type"] = "text",
					["location"] = {
						["y"] = -14,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = -1,
					},
					["level"] = 7,
					["textlength"] = 10,
					["fontFlags"] = "OUTLINE",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["Health-deficit"] = {
					["type"] = "multibar",
					["reverseFill"] = true,
					["bar1"] = {
						["color"] = {
							["a"] = 0.600000023841858,
							["b"] = 0.788235294117647,
							["g"] = 0.188235294117647,
							["r"] = 0.63921568627451,
						},
					},
					["opacity"] = 1,
					["barCount"] = 2,
					["textureColor"] = {
						["a"] = 0.800000011920929,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["bar2"] = {
						["color"] = {
							["a"] = 0.610000014305115,
							["b"] = 0.388235294117647,
							["g"] = 0.882352941176471,
							["r"] = 0.454901960784314,
						},
						["reverse"] = true,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 3,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Flat",
				},
				["Tank-Mitigation"] = {
					["type"] = "icons",
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.141176470588235,
						["g"] = 0.141176470588235,
						["b"] = 0.141176470588235,
					},
					["maxIcons"] = 3,
					["borderSize"] = 1,
					["disableOmniCC"] = true,
					["iconSize"] = 16,
					["level"] = 7,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["maxIconsPerRow"] = 3,
				},
				["Rejuv1bar-color"] = {
					["type"] = "bar-color",
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
				["health"] = {
					["type"] = "bar",
					["duration"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["invertColor"] = true,
					["opacity"] = 1,
					["orientation"] = "HORIZONTAL",
					["level"] = 2,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["texture"] = "Flat",
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["manatxt-color"] = {
					["type"] = "text-color",
				},
				["Spirit-Realm-color"] = {
					["type"] = "bar-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Flat",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.2,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["manabar-color"] = {
					["type"] = "bar-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["corner-bottom-left2"] = {
					["fontSize"] = 8,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["borderSize"] = 1,
					["type"] = "square",
					["width"] = 20,
					["height"] = 4,
					["level"] = 8,
					["location"] = {
						["y"] = -9,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["texture"] = "Flat",
				},
				["CENTER-DEBUFF"] = {
					["animScale"] = 1.5,
					["disableOmniCC"] = true,
					["animDuration"] = 0.7,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["animEnabled"] = true,
					["borderSize"] = 1,
					["type"] = "icon",
					["fontSize"] = 18,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 9,
					["font"] = "Accidental Presidency",
					["size"] = 30,
				},
				["Health-deficit-color"] = {
					["type"] = "multibar-color",
				},
				["manatxt"] = {
					["type"] = "text",
					["shadowDisabled"] = true,
					["font"] = "Accidental Presidency",
					["fontSize"] = 10,
					["percent"] = true,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["shields"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 4,
					["orientation"] = "HORIZONTAL",
					["texture"] = "Gnosis_Plain",
				},
				["corner-top-centerright2STACKS-color"] = {
					["type"] = "text-color",
				},
				["manabar"] = {
					["type"] = "bar",
					["height"] = 2,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["orientation"] = "HORIZONTAL",
					["level"] = 4,
					["opacity"] = 0.8,
					["texture"] = "Grid2 Flat",
				},
				["Rejuv2"] = {
					["fontSize"] = 8,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 1,
					},
					["borderSize"] = 4,
					["useStatusColor"] = true,
					["location"] = {
						["y"] = 8,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 8,
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
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["raid-marker"] = {
					["fontSize"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 7,
					["type"] = "icon",
					["size"] = 20,
				},
				["death"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["type"] = "bar",
					["level"] = 7,
					["texture"] = "Flat",
				},
				["Hot-TopRight"] = {
					["fontSize"] = 8,
					["reverseCooldown"] = true,
					["font"] = "Accidental Presidency",
					["type"] = "icon",
					["borderSize"] = 5,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["useStatusColor"] = true,
					["size"] = 10,
				},
				["Regrowth"] = {
					["fontSize"] = 8,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["font"] = "Accidental Presidency",
					["borderSize"] = 4,
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -8,
					},
					["level"] = 8,
					["useStatusColor"] = true,
					["size"] = 8,
				},
				["Lingering-Infection-Stacks"] = {
					["font"] = "Accidental Presidency",
					["type"] = "text",
					["fontSize"] = 16,
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 0,
					},
					["stack"] = true,
					["textlength"] = 2,
					["fontFlags"] = "OUTLINE",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["tank-stacks-color"] = {
					["type"] = "text-color",
				},
				["Lingering-Infection-Stacks-color"] = {
					["type"] = "text-color",
				},
			},
			["statuses"] = {
				["buff-RayofHope-mine"] = {
					["spellName"] = "Ray of Hope",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuffs-Debuffs-Purple"] = {
					["auras"] = {
						"Dark Revelation", -- [1]
						"Caress of Death", -- [2]
						"Deathwish", -- [3]
						"Void Lash", -- [4]
						"Hardened Arteries", -- [5]
						"Bursting Boil", -- [6]
						"Mind Wipe", -- [7]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 0.788235294117647,
						["g"] = 0.188235294117647,
						["r"] = 0.63921568627451,
					},
				},
				["debuffs-Debuffs-Red"] = {
					["auras"] = {
						"Bestial Throw Target", -- [1]
						"Bwonsamdi's Wrath", -- [2]
						"Scorching Detonation", -- [3]
						"Coin Shower", -- [4]
						"Gestate", -- [5]
						"Iron Gaze", -- [6]
						"Blood Feast", -- [7]
						"Coin Shower", -- [8]
						"Tempting Song", -- [9]
						"Creeping Blaze", -- [10]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["buffs-Defensives"] = {
					["type"] = "buffs",
					["auras"] = {
						"Spirit Mend", -- [1]
						"Ancient Guardian", -- [2]
						"Anti-Magic Shell", -- [3]
						"Ardent Defender", -- [4]
						"Aspect of the Turtle", -- [5]
						"Astral Shift", -- [6]
						"Barkskin", -- [7]
						"Berserker Rage", -- [8]
						"Blade Dance", -- [9]
						"Blessing of Freedom", -- [10]
						"Blessing of Protection", -- [11]
						"Blessing of Sacrifice", -- [12]
						"Blessing of Spellwarding", -- [13]
						"Blur", -- [14]
						"Bonestorm", -- [15]
						"Cloak of Shadows", -- [16]
						"Corpse Shield", -- [17]
						"Crimson Vial", -- [18]
						"Dampen Harm", -- [19]
						"Dancing Rune Weapon", -- [20]
						"Dark Pact", -- [21]
						"Darkness", -- [22]
						"Defensive Stance", -- [23]
						"Demon Spikes", -- [24]
						"Desperate Prayer", -- [25]
						"Die by the Sword", -- [26]
						"Diffuse Magic", -- [27]
						"Dispersion", -- [28]
						"Divine Protection", -- [29]
						"Divine Shield", -- [30]
						"Empower Wards", -- [31]
						"Enraged Regeneration", -- [32]
						"Evasion", -- [33]
						"Eye for an Eye", -- [34]
						"Fade", -- [35]
						"Feint", -- [36]
						"Fortifying Brew", -- [37]
						"Frenzied Regeneration", -- [38]
						"Greater Invisibility", -- [39]
						"Guardian Spirit", -- [40]
						"Guardian of Ancient Kings", -- [41]
						"Ice Block", -- [42]
						"Icebound Fortitude", -- [43]
						"Incarnation: Chosen of Elune", -- [44]
						"Invisibility", -- [45]
						"Ironbark", -- [46]
						"Ironfur", -- [47]
						"Last Stand", -- [48]
						"Last Stand", -- [49]
						"Life Cocoon", -- [50]
						"Mass Spell Reflection", -- [51]
						"Metamorphosis", -- [52]
						"Netherwalk", -- [53]
						"Pain Suppression", -- [54]
						"Rage of the Sleeper", -- [55]
						"Riposte", -- [56]
						"Rune Tap", -- [57]
						"Shield Block", -- [58]
						"Shield Wall", -- [59]
						"Shield of Vengeance", -- [60]
						"Shield of the Righteous", -- [61]
						"Soul Barrier", -- [62]
						"Spell Reflection", -- [63]
						"Spirit Barrier", -- [64]
						"Stoneform", -- [65]
						"Survival Instincts", -- [66]
						"Touch of Karma", -- [67]
						"Tiger's Lust", -- [68]
						"Unending Resolve", -- [69]
						"Vampiric Blood", -- [70]
						"Zen Meditation", -- [71]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["g"] = 1,
						["b"] = 0.501960784313726,
					},
					["hideDamagers"] = true,
					["color3"] = {
						["a"] = 1,
						["b"] = 0.0901960784313726,
						["g"] = 0.219607843137255,
						["r"] = 0.388235294117647,
					},
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
					},
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.501960784313726,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Riptide",
				},
				["debuff-FetidDevourer>MalodorousMiasma"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.501960784313726,
						["r"] = 0,
					},
					["spellName"] = "Malodorous Miasma",
				},
				["threat"] = {
					["color2"] = {
						["a"] = 0,
						["r"] = 1,
					},
					["disableBlink"] = true,
					["color3"] = {
						["g"] = 0,
						["b"] = 0,
					},
					["color1"] = {
						["a"] = 0,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0,
					},
				},
				["buff-WildGrowth-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.501960784313726,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Wild Growth",
				},
				["debuffs-PVPDebuffs"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						"Fear", -- [1]
						"Entangling Roots", -- [2]
						"Frost Nova", -- [3]
						"Polymorph", -- [4]
						"Psychic Scream", -- [5]
						"Hammer of Justice", -- [6]
						"Freezing Trap", -- [7]
						"Kidney Shot", -- [8]
						"Blind", -- [9]
						"Hex", -- [10]
						"Cyclone", -- [11]
						"Intimidating Shout", -- [12]
						"Asphyxiate", -- [13]
						"Bash", -- [14]
					},
				},
				["buff-SpringBlossoms-mine"] = {
					["spellName"] = "Spring Blossoms",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.501960784313726,
						["b"] = 0,
					},
				},
				["buff-Rejuvenation-mine"] = {
					["spellName"] = 774,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.63921568627451,
						["g"] = 0.188235294117647,
						["b"] = 0.788235294117647,
					},
				},
				["debuffs-Debuffs-Yellow"] = {
					["auras"] = {
						"Searing Embers", -- [1]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["aoe-Holy Priest"] = {
					["type"] = "aoe-heals",
					["activeTime"] = 1,
					["spellList"] = {
						596, -- [1]
						32546, -- [2]
						34861, -- [3]
						41455, -- [4]
					},
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.615686274509804,
						["g"] = 0.886274509803922,
						["b"] = 1,
					},
				},
				["buff-PrayerofMending-mine"] = {
					["spellName"] = "Prayer of Mending",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["range"] = {
					["elapsed"] = 0.1,
					["default"] = 0.3,
					["range"] = "38",
				},
				["buff-Rejuvenation(Germination)-mine"] = {
					["spellName"] = 155777,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["classcolor"] = {
					["colors"] = {
						["WARRIOR"] = {
							["b"] = 0.431372549019608,
							["g"] = 0.611764705882353,
							["r"] = 0.780392156862745,
						},
						["SHAMAN"] = {
							["b"] = 1,
							["g"] = 0.349019607843137,
							["r"] = 0.141176470588235,
						},
						["MAGE"] = {
							["b"] = 0.941176470588235,
							["g"] = 0.8,
							["r"] = 0.411764705882353,
						},
						["MONK"] = {
							["b"] = 0.588235294117647,
						},
						["PALADIN"] = {
							["b"] = 0.729411764705882,
							["g"] = 0.549019607843137,
							["r"] = 0.96078431372549,
						},
					},
				},
				["health-current"] = {
					["color2"] = {
						["b"] = 0.141176470588235,
						["g"] = 0.141176470588235,
						["r"] = 0.141176470588235,
					},
					["color1"] = {
						["b"] = 0.141176470588235,
						["g"] = 0.141176470588235,
						["r"] = 0.141176470588235,
					},
					["color3"] = {
						["b"] = 0.141176470588235,
						["g"] = 0.141176470588235,
						["r"] = 0.141176470588235,
					},
					["quickHealth"] = true,
				},
				["debuff-NecroticRot"] = {
					["spellName"] = 209858,
					["useSpellId"] = true,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.231372549019608,
					},
				},
				["debuffs-Debuffs-DarkGreen"] = {
					["auras"] = {
						"Viral Contagion", -- [1]
						"Grievous Axe", -- [2]
						"Death's Door", -- [3]
						"Putrid Paroxysm", -- [4]
						"Explosive Corruption", -- [5]
						"Plague Bomb", -- [6]
						"Quickened Pulse", -- [7]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 0,
						["g"] = 0.388235294117647,
						["r"] = 0,
					},
				},
				["buff-BeaconofFaith-mine"] = {
					["spellName"] = 156910,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 1,
						["g"] = 0,
						["r"] = 1,
					},
				},
				["color-MissingHealth"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["b"] = 0.701960784313726,
					},
				},
				["buff-PowerWord:Shield-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Power Word: Shield",
				},
				["debuff-Misery"] = {
					["type"] = "debuff",
					["spellName"] = "Misery",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 1,
					},
				},
				["debuff-Thief'sBane"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Thief's Bane",
				},
				["buff-EssenceFont-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Essence Font",
				},
				["debuff-LingeringInfection"] = {
					["type"] = "debuff",
					["spellName"] = "Lingering Infection",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["buff-EnvelopingMist-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Enveloping Mist",
				},
				["trail-of-light"] = {
					["type"] = "trail-of-light",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.207843137254902,
						["g"] = 0.945098039215686,
						["r"] = 1,
					},
				},
				["debuff-SpiritRealm"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 0.25,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0,
					},
					["spellName"] = "Spirit Realm",
				},
				["aoe-Resto Shaman"] = {
					["type"] = "aoe-heals",
					["activeTime"] = 1,
					["spellList"] = {
						1064, -- [1]
					},
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.615686274509804,
						["g"] = 0.886274509803922,
						["b"] = 1,
					},
				},
				["buff-Regrowth-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Regrowth",
				},
				["debuffs-TankStacks"] = {
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.603921568627451,
						["g"] = 0.807843137254902,
						["b"] = 0.874509803921569,
					},
					["useWhiteList"] = true,
					["debuffTypeColorize"] = true,
					["auras"] = {
						"Sacred Blade", -- [1]
					},
				},
				["buff-Renew-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.501960784313726,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Renew",
				},
				["buffs-Healing2-mine"] = {
					["auras"] = {
						"Delicious Cake!", -- [1]
						"Devotion Aura", -- [2]
						"Fragile Echo", -- [3]
						"Felshield", -- [4]
						"Leytorrent Potion", -- [5]
						"Nightwell Tranquility", -- [6]
						"Tyr's Deliverance", -- [7]
						"Potion of Replenishment", -- [8]
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
				["buff-BeaconOfLight-mine"] = {
					["spellName"] = 53563,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Innervate"] = {
					["spellName"] = 29166,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-RenewingMist-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.501960784313726,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Renewing Mist",
				},
				["debuffs-Debuffs-Bluegrey"] = {
					["auras"] = {
						"Deadeye", -- [1]
						"Shadow Barrage", -- [2]
						"Omega Vector", -- [3]
						"Shrunk", -- [4]
						"Chaotic Displacement", -- [5]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 0.690196078431373,
						["g"] = 0.454901960784314,
						["r"] = 0.368627450980392,
					},
				},
				["debuffs-CenterDebuffs"] = {
					["auras"] = {
						"Bestial Throw Target", -- [1]
						"Carrion Plague", -- [2]
						"Chaos Pulse", -- [3]
						"Consuming Hunger", -- [4]
						"Corruptor’s Pact", -- [5]
						"Cosmic Glare", -- [6]
						"Decimation", -- [7]
						"Echoing Anguish", -- [8]
						"Exploit Weakness", -- [9]
						"Feed on the Weak", -- [10]
						"Felsilk Wrap", -- [11]
						"Fulminating Pulse", -- [12]
						"Gestate", -- [13]
						"Grossly Incandescent!", -- [14]
						"Incorporeal Shot", -- [15]
						"Lunar Beacon", -- [16]
						"Lunar Fire", -- [17]
						"Mark of Frost", -- [18]
						"Moon Burn", -- [19]
						"Necrotic Embrace", -- [20]
						"Power Matrix", -- [21]
						"Rapid Shot", -- [22]
						"Ravenous Blaze", -- [23]
						"Reality Tear", -- [24]
						"Sentence of Sargeras", -- [25]
						"Soulblight", -- [26]
						"Soulbomb", -- [27]
						"Soulburst", -- [28]
						"Thrashing Terror", -- [29]
						"Thundering Shock", -- [30]
						"Time Release", -- [31]
						"Unbearable Torment", -- [32]
						"Unstable Soul", -- [33]
						"Mind Wipe", -- [34]
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
				["death"] = {
					["color1"] = {
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 0.2,
					},
				},
				["buff-Atonement-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.282352941176471,
						["g"] = 0.23921568627451,
						["r"] = 0.282352941176471,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Atonement",
				},
				["buff-EarthShield-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.635294117647059,
						["g"] = 0.792156862745098,
						["r"] = 0.992156862745098,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 974,
				},
				["mana"] = {
					["showOnlyHealers"] = true,
					["color1"] = {
						["b"] = 0.749019607843137,
						["g"] = 0.537254901960784,
						["r"] = 0.458823529411765,
					},
				},
				["color-Name"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-Annihilation"] = {
					["type"] = "debuff",
					["spellName"] = "Annihilation",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.63921568627451,
						["g"] = 0.188235294117647,
						["b"] = 0.788235294117647,
					},
				},
				["buff-CenarionWard-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Cenarion Ward",
				},
				["debuff-FetidDevourer>PutridParoxysm"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0,
					},
					["spellName"] = 262314,
				},
				["buff-Cultivation-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.149019607843137,
						["g"] = 0.223529411764706,
						["r"] = 0.101960784313725,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Cultivation",
				},
				["debuff-CorruptedBlood"] = {
					["type"] = "debuff",
					["spellName"] = "Corrupted Blood",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.501960784313726,
						["b"] = 0,
					},
				},
				["debuff-PutridBlood"] = {
					["type"] = "debuff",
					["spellName"] = "Putrid Blood",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["vehicle"] = {
					["color1"] = {
						["a"] = 0.600000023841858,
						["b"] = 0,
						["r"] = 0.501960784313726,
					},
				},
				["heal-absorbs"] = {
					["color2"] = {
						["b"] = 1,
						["g"] = 0.388235294117647,
						["r"] = 0.674509803921569,
					},
					["color3"] = {
						["b"] = 1,
						["g"] = 0.682352941176471,
						["r"] = 0.894117647058824,
					},
					["thresholdLow"] = 0,
					["thresholdMedium"] = 0,
					["color1"] = {
						["b"] = 1,
						["g"] = 0.172549019607843,
						["r"] = 0.427450980392157,
					},
				},
				["aoe-Holy Paladin"] = {
					["type"] = "aoe-heals",
					["activeTime"] = 1,
					["spellList"] = {
						85222, -- [1]
						114871, -- [2]
						114158, -- [3]
					},
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.615686274509804,
						["g"] = 0.886274509803922,
						["b"] = 1,
					},
				},
				["buff-BestowFaith-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Bestow Faith",
				},
				["buff-SoothingMist-mine"] = {
					["spellName"] = "Soothing Mist",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 0.300000011920929,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.501960784313726,
					},
				},
				["shields"] = {
					["color2"] = {
						["a"] = 0.400000035762787,
						["b"] = 0.874509803921569,
						["g"] = 0.807843137254902,
						["r"] = 0.603921568627451,
					},
					["color3"] = {
						["a"] = 0.400000035762787,
						["b"] = 0.874509803921569,
						["g"] = 0.807843137254902,
						["r"] = 0.603921568627451,
					},
					["color1"] = {
						["a"] = 0.400000035762787,
						["b"] = 0.874509803921569,
						["g"] = 0.807843137254902,
						["r"] = 0.603921568627451,
					},
				},
				["buff-Lifebloom-mine"] = {
					["spellName"] = "Lifebloom",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.447058823529412,
						["g"] = 1,
						["b"] = 0.71764705882353,
					},
				},
				["debuffs-Debuffs-Blue"] = {
					["auras"] = {
						"Absorbed in Darkness", -- [1]
						"Akunda's Wrath", -- [2]
						"Apetagonizer Core", -- [3]
						"Imminent Ruin", -- [4]
						"Malodorous Miasma", -- [5]
						"Plasma Discharge", -- [6]
						"Roiling Deceit", -- [7]
						"Torment", -- [8]
						"Storm's Wail", -- [9]
						"Avalanche", -- [10]
						"Hex of Lethargy", -- [11]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 1,
						["g"] = 0.501960784313726,
						["r"] = 0,
					},
				},
				["debuff-Shadow-Touched"] = {
					["type"] = "debuff",
					["spellName"] = 284556,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.63921568627451,
						["g"] = 0.188235294117647,
						["b"] = 0.788235294117647,
					},
				},
				["debuff-FrozenSolid"] = {
					["spellName"] = "Frozen Solid",
					["type"] = "debuff",
					["mine"] = false,
					["color1"] = {
						["a"] = 0.400000035762787,
						["r"] = 0,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["aoe-Monk"] = {
					["type"] = "aoe-heals",
					["activeTime"] = 1,
					["spellList"] = {
						130654, -- [1]
						132463, -- [2]
						115310, -- [3]
						116670, -- [4]
						115450, -- [5]
					},
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.36078431372549,
						["g"] = 1,
						["b"] = 0.450980392156863,
					},
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
				["health-low"] = {
					["threshold"] = 0.6,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["debuffs-Debuffs"] = {
					["auras"] = {
						"Ablative Shielding", -- [1]
						"Bwonsamdi's Bargain", -- [2]
						"Cry of the Fallen", -- [3]
						"Annihilation", -- [4]
						"Astral Vulnerability", -- [5]
						"Azerite Residue", -- [6]
						"Bestial Throw Target", -- [7]
						"Blazing Eruption", -- [8]
						"Brilliant Aura", -- [9]
						"Campfire", -- [10]
						"Carrion Plague", -- [11]
						"Challenger's Burden", -- [12]
						"Chaos Pulse", -- [13]
						"Chi-Ji's Song", -- [14]
						"Chilling Touch", -- [15]
						"Consuming Hunger", -- [16]
						"Corrupted Blood", -- [17]
						"Corruptor’s Pact", -- [18]
						"Dark Bargain", -- [19]
						"Dark Purpose", -- [20]
						"Decimation", -- [21]
						"Demonic Gateway", -- [22]
						"Earthen Roots", -- [23]
						"Echoing Anguish", -- [24]
						"Embrace of the Eclipse", -- [25]
						"Entropic Mine", -- [26]
						"Ephemeral Recovery", -- [27]
						"Essence Shatter", -- [28]
						"Exhaustion", -- [29]
						"Exploit Weakness", -- [30]
						"Feed on the Weak", -- [31]
						"Felflame Campfire", -- [32]
						"Felsilk Wrap", -- [33]
						"Fulminating Pulse", -- [34]
						"Fury of Golganneth", -- [35]
						"Gestate", -- [36]
						"Heartstopper Venom", -- [37]
						"Howling Winds", -- [38]
						"Ice Shard", -- [39]
						"Immunosuppression", -- [40]
						"Imperfect Physiology", -- [41]
						"Incorporeal Shot", -- [42]
						"Insanity", -- [43]
						"Lingering Infection", -- [44]
						"Lunar Beacon", -- [45]
						"Lunar Fire", -- [46]
						"Lunar Suffusion", -- [47]
						"Malodorous Miasma", -- [48]
						"Mark of Frost", -- [49]
						"Moon Burn", -- [50]
						"Necrotic Embrace", -- [51]
						"Power Matrix", -- [52]
						"Putrid Blood", -- [53]
						"Putrid Paroxysm", -- [54]
						"Quickened Pulse", -- [55]
						"Rapid Shot", -- [56]
						"Ravenous Blaze", -- [57]
						"Realm of Death", -- [58]
						"Reality Tear", -- [59]
						"Sacred Blade", -- [60]
						"Sargeras' Fear", -- [61]
						"Sargeras' Rage", -- [62]
						"Sated", -- [63]
						"Sense of Dread", -- [64]
						"Sentence of Sargeras", -- [65]
						"Shadow Covenant", -- [66]
						"Shadow-Touched", -- [67]
						"Shattered", -- [68]
						"Soothing Breeze", -- [69]
						"Soulblight", -- [70]
						"Soulbomb", -- [71]
						"Soulburst", -- [72]
						"Spirit Realm", -- [73]
						"Strength of the Sea", -- [74]
						"Strength of the Sky", -- [75]
						"Temporal Displacement", -- [76]
						"The Light Saves", -- [77]
						"Thrashing Terror", -- [78]
						"Thundering Shock", -- [79]
						"Time Release", -- [80]
						"Titanforged", -- [81]
						"Torment of Fel", -- [82]
						"Torment of Flames", -- [83]
						"Torment of Frost", -- [84]
						"Treacherous Covenant", -- [85]
						"Umbra Suffusion", -- [86]
						"Unbearable Torment", -- [87]
						"Unbound Energy", -- [88]
						"Unclean Contagion", -- [89]
						"Undulating Mass", -- [90]
						"Unstable Soul", -- [91]
						"Warmth", -- [92]
						"Weakened Soul", -- [93]
						"Wind Tunnel", -- [94]
						"Xalzaix's Gaze", -- [95]
						"Emerald of Earthen Roots", -- [96]
						"Earthen Roots", -- [97]
						"Topaz of Brilliant Sunlight", -- [98]
						"Incandescence", -- [99]
						"Amethyst of the Shadow King", -- [100]
						"Shadow-Touched", -- [101]
						"Opal of Unleashed Rage", -- [102]
						"Unleashed Rage", -- [103]
						"Diamond of the Unshakeable Protector", -- [104]
						"Tailwind Sapphire", -- [105]
						"Tailwinds", -- [106]
						"Ruby of Focused Animus", -- [107]
						"Mind Wipe", -- [108]
						"Successful Defense", -- [109]
						"V.I.G.O.R. Cooldown", -- [110]
					},
					["filterLongDebuffs"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["debuffs-Debuffs-Orange"] = {
					["auras"] = {
						"Enlarged Heart", -- [1]
						"Gigavolt Charge", -- [2]
						"Spit Gold", -- [3]
						"Liquid Gold", -- [4]
						"Plague Bomb", -- [5]
						"Orb of Power", -- [6]
						"Bestial Impact", -- [7]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 0.800000011920929,
						["b"] = 0,
						["g"] = 0.501960784313726,
						["r"] = 1,
					},
				},
				["debuff-LadyJainaProudmoore>ChillingTouch"] = {
					["spellName"] = 285212,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.501960784313726,
						["b"] = 1,
					},
					["enableStacks"] = 5,
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
				},
				["health-deficit"] = {
					["threshold"] = 0,
				},
				["lowmana"] = {
					["threshold"] = 0.2,
					["color1"] = {
						["r"] = 1,
					},
				},
			},
			["formatting"] = {
				["shortDurationStackFormat"] = "%.0f-%d",
				["longDurationStackFormat"] = "%.1f-%d",
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["debuffs"] = {
					["debuffs-Debuffs"] = 21,
				},
				["death-color"] = {
					["death"] = 50,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["center-right-color"] = {
				},
				["Spirit-Realm"] = {
					["debuff-SpiritRealm"] = 51,
					["debuff-FrozenSolid"] = 53,
					["debuff-Misery"] = 52,
				},
				["Wild-Growth"] = {
					["buff-EssenceFont-mine"] = 52,
					["buff-Regrowth-mine"] = 51,
				},
				["Rejuv2-color"] = {
				},
				["misery-color"] = {
				},
				["Hot-BottomRightUpLeftLeft"] = {
					["buff-Cultivation-mine"] = 51,
				},
				["Hot-BottomRightLeftLeft"] = {
					["buff-SpringBlossoms-mine"] = 51,
				},
				["heals"] = {
				},
				["corner-top-centerright-color"] = {
				},
				["top-right"] = {
					["buff-CenarionWard-mine"] = 53,
					["buff-RayofHope-mine"] = 56,
					["buff-Lifebloom-mine"] = 54,
					["buff-BeaconOfLight-mine"] = 50,
					["buff-BeaconofFaith-mine"] = 51,
					["buff-BeaconofVirtue-mine"] = 52,
					["buff-SoothingMist-mine"] = 57,
				},
				["shields-color"] = {
					["shields"] = 50,
				},
				["corner-top-centerleft-color"] = {
				},
				["corner-top-centerleft2-color"] = {
				},
				["Rejuv"] = {
					["buff-Rejuvenation-mine"] = 50,
					["buff-BestowFaith-mine"] = 55,
					["buff-RenewingMist-mine"] = 51,
					["buff-Riptide-mine"] = 52,
					["buff-Renew-mine"] = 53,
					["buff-Atonement-mine"] = 54,
				},
				["healing2"] = {
					["buff-Innervate"] = 40,
					["buffs-Healing2-mine"] = 19,
				},
				["toptext-right-color"] = {
				},
				["health-color"] = {
					["debuffs-Debuffs-DarkGreen"] = 58,
					["debuffs-Debuffs-Purple"] = 59,
					["debuffs-Debuffs-Blue"] = 57,
					["debuffs-Debuffs-Bluegrey"] = 56,
					["buff-SoothingMist-mine"] = 62,
					["debuffs-Debuffs-Red"] = 64,
					["buff-Atonement-mine"] = 63,
					["vehicle"] = 61,
					["debuffs-Debuffs-Yellow"] = 65,
					["debuffs-Debuffs-Orange"] = 60,
				},
				["Health-deficit"] = {
					["heal-absorbs"] = 2,
					["heals-incoming"] = 3,
					["health-deficit"] = 1,
				},
				["Regrowth"] = {
					["buff-EarthShield-mine"] = 53,
					["buff-EnvelopingMist-mine"] = 51,
					["buff-PrayerofMending-mine"] = 52,
					["buff-Rejuvenation(Germination)-mine"] = 54,
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["Rejuv1bar-color"] = {
				},
				["border"] = {
					["debuff-Disease"] = 94,
					["threat"] = 91,
					["debuff-Poison"] = 92,
					["debuff-Curse"] = 93,
					["debuff-Magic"] = 95,
				},
				["manatxt-color"] = {
					["classcolor"] = 51,
					["mana"] = 50,
				},
				["corner-top-right-color"] = {
				},
				["health"] = {
				},
				["Spirit-Realm-color"] = {
					["debuff-SpiritRealm"] = 50,
					["debuff-FrozenSolid"] = 52,
					["debuff-Misery"] = 51,
				},
				["Tank-Mitigation"] = {
					["buffs-Defensives"] = 50,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 93,
					["death"] = 95,
					["ready-check"] = 97,
					["offline"] = 98,
					["vehicle"] = 70,
					["resurrection"] = 96,
				},
				["text-down-color"] = {
					["classcolor"] = 51,
				},
				["corner-bottom-left2"] = {
				},
				["CENTER-DEBUFF"] = {
					["debuffs-CenterDebuffs"] = 53,
					["debuffs-PVPDebuffs"] = 54,
				},
				["manabar-color"] = {
					["classcolor"] = 51,
					["mana"] = 50,
				},
				["manatxt"] = {
				},
				["shields"] = {
					["shields"] = 50,
				},
				["corner-top-centerright2STACKS-color"] = {
				},
				["heals-color"] = {
				},
				["Health-deficit-color"] = {
				},
				["alpha"] = {
					["range"] = 50,
				},
				["manabar"] = {
					["mana"] = 50,
				},
				["Rejuv2"] = {
					["buff-WildGrowth-mine"] = 51,
				},
				["raid-marker"] = {
					["raid-icon-player"] = 50,
				},
				["Hot-TopRight"] = {
					["debuff-Shadow-Touched"] = 50,
				},
				["death"] = {
					["death"] = 50,
				},
				["Lingering-Infection-Stacks"] = {
					["debuff-Annihilation"] = 54,
					["debuff-LadyJainaProudmoore>ChillingTouch"] = 57,
					["debuff-PutridBlood"] = 53,
					["debuff-FetidDevourer>PutridParoxysm"] = 56,
					["debuff-CorruptedBlood"] = 51,
					["debuff-FetidDevourer>MalodorousMiasma"] = 55,
					["debuff-LingeringInfection"] = 50,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 93,
					["death"] = 95,
					["ready-check"] = 97,
					["offline"] = 98,
					["vehicle"] = 70,
					["resurrection"] = 96,
				},
				["Debuffs-CC-PVP"] = {
				},
				["Lingering-Infection-Stacks-color"] = {
					["debuff-Annihilation"] = 53,
					["debuff-LadyJainaProudmoore>ChillingTouch"] = 56,
					["debuff-PutridBlood"] = 52,
					["debuff-FetidDevourer>PutridParoxysm"] = 55,
					["debuff-CorruptedBlood"] = 51,
					["debuff-FetidDevourer>MalodorousMiasma"] = 54,
					["debuff-LingeringInfection"] = 50,
				},
			},
			["themes"] = {
				["enabled"] = {
					["MONK@1@party"] = 2,
					["PRIEST@2@party"] = 1,
					["PRIEST@1@party"] = 1,
					["PRIEST@3@party"] = 2,
					["PALADIN@2@party"] = 2,
					["SHAMAN@3@party"] = 1,
					["DRUID@1@party"] = 2,
					["PALADIN@3@party"] = 2,
					["DRUID@3@party"] = 2,
					["DEMONHUNTER@2@party"] = 2,
					["SHAMAN@1@raid"] = 3,
					["PRIEST@3@raid"] = 3,
					["PALADIN@1@party"] = 1,
					["SHAMAN@1@party"] = 2,
					["PRIEST@3@arena"] = 1,
					["MONK@3@party"] = 2,
					["MONK@2@party"] = 1,
					["PRIEST@2@arena"] = 1,
					["PRIEST@1@raid"] = 4,
					["default"] = 0,
					["PRIEST@1@arena"] = 1,
					["DEMONHUNTER@1@party"] = 2,
					["DRUID@4@party"] = 1,
					["PRIEST@2@raid"] = 1,
					["DRUID@2@party"] = 2,
				},
				["indicators"] = {
					{
					}, -- [1]
					{
					}, -- [2]
					{
					}, -- [3]
					{
					}, -- [4]
					[0] = {
					},
				},
				["names"] = {
					"Healer Party", -- [1]
					"DPS/Tank Party", -- [2]
					"DPS/Tank Raid", -- [3]
					"Healer Raid", -- [4]
				},
			},
		},
		["Nisefy - Stormscale"] = {
			["statuses"] = {
				["buff-RenewingMist-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.5,
					},
					["useSpellId"] = true,
					["mine"] = true,
					["spellName"] = 119611,
				},
				["buff-EnvelopingMist-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 1,
						["r"] = 0.2,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 124682,
				},
				["buff-LifeCocoon"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.8,
						["g"] = 0,
						["r"] = 0.4,
					},
					["spellName"] = 116849,
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
			},
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
				["corner-top-right"] = {
					["buff-RenewingMist-mine"] = 99,
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
					["debuff-Disease"] = 80,
					["health-low"] = 55,
					["debuff-Poison"] = 90,
					["target"] = 50,
					["debuff-Magic"] = 70,
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
		},
		["Valdurawr - Stormscale"] = {
			["statuses"] = {
				["buff-EarthShield-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["colorCount"] = 2,
					["mine"] = true,
					["spellName"] = 974,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.6,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 61295,
				},
				["buff-EarthShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.8,
						["r"] = 0.8,
					},
					["spellName"] = 974,
				},
				["buff-Earthliving"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 1,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 51945,
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
					["fontSize"] = 10,
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
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Riptide-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-top-right"] = {
					["buff-EarthShield-mine"] = 99,
					["buff-EarthShield"] = 89,
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
				["side-top"] = {
					["buff-Earthliving"] = 89,
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
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["debuff-Curse"] = 90,
					["debuff-Magic"] = 80,
					["target"] = 50,
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
		},
		["Se - Stormscale"] = {
			["indicators"] = {
				["corner-top-left"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontSize"] = 8,
				},
				["side-top"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontSize"] = 8,
				},
				["corner-bottom-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
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
					["fontSize"] = 10,
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
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
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
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
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
				["corner-top-right"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
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
				["corner-top-left-color"] = {
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
			},
			["statuses"] = {
				["debuff-Forbearance"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
					["spellName"] = 25771,
				},
				["buff-BeaconOfLight-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 53563,
				},
				["buff-HandOfSalvation-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.7,
						["g"] = 0.8,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 1038,
				},
				["buff-BeaconOfLight"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0.7,
					},
					["spellName"] = 53563,
				},
				["buff-HandOfProtection-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 1022,
				},
				["buff-HandOfSalvation"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["spellName"] = 1038,
				},
				["buff-DivineShield-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 642,
				},
				["buff-DivineProtection-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 498,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-BeaconOfLight-mine"] = 89,
					["buff-BeaconOfLight"] = 99,
				},
				["side-top"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["corner-bottom-right"] = {
					["debuff-Forbearance"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["border"] = {
					["debuff-Disease"] = 90,
					["health-low"] = 55,
					["debuff-Poison"] = 80,
					["target"] = 50,
					["debuff-Magic"] = 70,
					["debuff-Curse"] = 60,
				},
				["corner-top-right-color"] = {
					["buff-DivineShield-mine"] = 97,
					["buff-DivineProtection-mine"] = 95,
					["buff-HandOfProtection-mine"] = 93,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["corner-top-right"] = {
					["buff-DivineShield-mine"] = 97,
					["buff-DivineProtection-mine"] = 95,
					["buff-HandOfProtection-mine"] = 93,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
					["buff-HandOfSalvation-mine"] = 100,
					["buff-HandOfSalvation"] = 101,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["corner-top-left-color"] = {
					["buff-BeaconOfLight-mine"] = 89,
					["buff-BeaconOfLight"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
			},
			["themes"] = {
				["indicators"] = {
					[0] = {
					},
				},
			},
		},
		["Yvera - Moonglade"] = {
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
					["fontSize"] = 10,
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
		["Niseko - Stormscale"] = {
			["statuses"] = {
				["buff-EarthShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.8,
						["r"] = 0.8,
					},
					["spellName"] = 974,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.6,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 61295,
				},
				["buff-EarthShield-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["colorCount"] = 2,
					["mine"] = true,
					["spellName"] = 974,
				},
				["buff-Earthliving"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 1,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 51945,
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
				["alpha"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "alpha",
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
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Riptide-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-top-right"] = {
					["buff-EarthShield-mine"] = 99,
					["buff-EarthShield"] = 89,
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
				["side-top"] = {
					["buff-Earthliving"] = 89,
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
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["debuff-Curse"] = 90,
					["debuff-Magic"] = 80,
					["target"] = 50,
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
		},
		["Nisepie - Stormscale"] = {
		},
		["Pixelfehler - Ysera"] = {
			["statuses"] = {
				["buff-IceBarrier-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["mine"] = true,
					["spellName"] = 11426,
				},
				["buff-IceArmor-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.4,
						["r"] = 0.2,
					},
					["mine"] = true,
					["spellName"] = 7302,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
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
				["icon-right"] = {
					["raid-icon-target"] = 90,
				},
				["border"] = {
					["target"] = 50,
					["health-low"] = 55,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
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
		},
		["Purrmeow - Twisting Nether"] = {
			["statuses"] = {
				["buff-WildGrowth-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.9,
						["r"] = 0.2,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 48438,
				},
				["buff-Regrowth-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.5,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 8936,
				},
				["buff-Rejuvenation-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.6,
						["g"] = 0,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 774,
				},
				["buff-Lifebloom-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.6,
						["g"] = 0.9,
						["r"] = 0.6,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.7,
						["r"] = 0.2,
					},
					["colorCount"] = 3,
					["mine"] = true,
					["spellName"] = 33763,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontSize"] = 8,
				},
				["side-top"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontSize"] = 8,
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
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
					["fontSize"] = 10,
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
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
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
				["corner-top-right"] = {
					["type"] = "text",
					["font"] = "Friz Quadrata TT",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
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
				["corner-top-left-color"] = {
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
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
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
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Lifebloom-mine"] = 99,
				},
				["side-top"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["corner-bottom-right"] = {
					["buff-WildGrowth-mine"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["border"] = {
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 80,
					["target"] = 50,
					["debuff-Magic"] = 90,
					["debuff-Curse"] = 70,
				},
				["corner-top-right-color"] = {
					["buff-Rejuvenation-mine"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["side-top-color"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["corner-top-right"] = {
					["buff-Rejuvenation-mine"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
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
				["corner-top-left-color"] = {
					["buff-Lifebloom-mine"] = 99,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
			},
		},
		["Mend"] = {
			["hideBlizzardRaidFrames"] = true,
			["indicators"] = {
				["Renew"] = {
					["opacity"] = 0.65,
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["duration"] = true,
					["height"] = 4,
					["level"] = 3,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["texture"] = "Grid2 Flat",
				},
				["center-icon-timer-color"] = {
					["type"] = "text-color",
				},
				["center-right"] = {
					["disableOmniCC"] = true,
					["type"] = "icon",
					["fontSize"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 4,
					},
					["level"] = 9,
					["useStatusColor"] = true,
					["size"] = 16,
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
				["testbar-color"] = {
					["type"] = "bar-color",
				},
				["PowerBorder-color"] = {
					["type"] = "bar-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["Shields-above"] = {
					["type"] = "bar",
					["parentBar"] = "Shields",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["orientation"] = "HORIZONTAL",
					["level"] = 3,
					["height"] = 4,
					["texture"] = "Grid2 Flat",
				},
				["Debuff-color"] = {
					["type"] = "bar-color",
				},
				["Corner-TR-txt"] = {
					["type"] = "text",
					["font"] = "font",
					["fontSize"] = 8,
					["duration"] = true,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["Shields-color"] = {
					["type"] = "bar-color",
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
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Blizzard Raid Bar",
					["anchorTo"] = "PhantomHP",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.5,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["Shields"] = {
					["height"] = 4,
					["type"] = "bar",
					["childBar"] = "Shields-above",
					["opacity"] = 1,
					["orientation"] = "HORIZONTAL",
					["level"] = 5,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
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
				["health"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 0,
					},
					["level"] = 2,
					["opacity"] = 1,
					["texture"] = "Minimalist",
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
				["corner-bottom-left"] = {
					["type"] = "square",
					["width"] = 3,
					["location"] = {
						["y"] = 13,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = -1,
					},
					["height"] = 13,
					["level"] = 5,
					["borderSize"] = 1,
					["color1"] = {
						["a"] = 0.801204845309258,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["test-color"] = {
					["type"] = "multibar-color",
				},
				["text-left-color"] = {
					["type"] = "text-color",
				},
				["powerBorder-color"] = {
					["type"] = "bar-color",
				},
				["CenterText"] = {
					["fontSize"] = 10,
					["type"] = "text",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 3,
					},
					["level"] = 7,
					["textlength"] = 12,
					["font"] = "Homespun (xCT+)",
				},
				["side-bottom"] = {
					["type"] = "square",
					["duration"] = true,
					["texture"] = "Grid2 Flat",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["font"] = "Friz Quadrata TT",
					["borderSize"] = 1,
					["level"] = 9,
					["fontSize"] = 8,
					["location"] = {
						["y"] = -15,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 12,
					},
					["stack"] = false,
					["textlength"] = 12,
					["size"] = 7,
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
					["type"] = "text",
					["duration"] = true,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 4,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontSize"] = 12,
				},
				["test_debuff-color"] = {
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
				["Absorbs-color"] = {
					["type"] = "bar-color",
				},
				["icon-left"] = {
					["type"] = "icon",
					["fontSize"] = 8,
					["animEnabled"] = true,
					["location"] = {
						["y"] = -2,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 2,
					},
					["level"] = 8,
					["disableCooldown"] = true,
					["size"] = 10,
				},
				["Shields-above-color"] = {
					["type"] = "bar-color",
				},
				["CenterText-color"] = {
					["type"] = "text-color",
				},
				["PhantomHP-color"] = {
					["type"] = "bar-color",
				},
				["Class-color"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["type"] = "bar",
					["parentBar"] = "health",
					["anchorTo"] = "health",
					["orientation"] = "HORIZONTAL",
					["level"] = 1,
					["opacity"] = 1,
					["texture"] = "Grid2 Flat",
				},
				["Corner-TR-txt-color"] = {
					["type"] = "text-color",
				},
				["Heal-Absorb"] = {
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
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
				["center-icon-timer"] = {
					["fontSize"] = 14,
					["type"] = "text",
					["font"] = "SourceSansProBold",
					["duration"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 9,
					["textlength"] = 12,
					["fontFlags"] = "OUTLINE",
				},
				["icon-center"] = {
					["type"] = "icon",
					["reverseCooldown"] = true,
					["font"] = "Accidental Presidency",
					["fontFlags"] = "OUTLINE",
					["fontSize"] = 15,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["borderSize"] = 1,
					["size"] = 18,
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
				["text-left"] = {
					["fontSize"] = 8,
					["type"] = "text",
					["stack"] = true,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 12,
					["font"] = "font",
				},
				["Absorb-color"] = {
					["type"] = "text-color",
				},
				["icon-right"] = {
					["disableOmniCC"] = true,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
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
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["EnvMist-color"] = {
					["type"] = "text-color",
				},
				["powerInv-color"] = {
					["type"] = "bar-color",
				},
				["Renew-color"] = {
					["type"] = "bar-color",
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
					["fontSize"] = 11,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 2,
					},
					["level"] = 7,
					["textlength"] = 5,
					["duration"] = true,
				},
				["side-bottom-2"] = {
					["type"] = "square",
					["size"] = 7,
					["location"] = {
						["y"] = -15,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 6,
					},
					["level"] = 6,
					["borderSize"] = 1,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["corner-top-right"] = {
					["fontSize"] = 8,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["borderSize"] = 1,
					["texture"] = "Grid2 Flat",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 1,
					},
					["level"] = 8,
					["type"] = "square",
					["size"] = 11,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["PhantomHP"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["orientation"] = "HORIZONTAL",
					["childBar"] = "heals",
					["opacity"] = 1,
					["level"] = 4,
					["texture"] = "Gradient",
				},
				["side-right"] = {
					["fontSize"] = 8,
					["disableCooldown"] = true,
					["reverseCooldown"] = true,
					["fontJustifyV"] = "MIDDLE",
					["font"] = "font",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["fontJustifyH"] = "CENTER",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["level"] = 9,
					["type"] = "icon",
					["size"] = 10,
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
			},
			["statuses"] = {
				["debuffs-NecroticRot"] = {
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["buff-EternalFlame-not-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.509803921568627,
						["g"] = 0.941176470588235,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 2,
					["spellName"] = "Eternal Flame",
				},
				["color-Transparent"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["buff-SpiritualInnervation"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.415686274509804,
						["b"] = 1,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.16078431372549,
						["b"] = 0.701960784313726,
					},
					["spellName"] = "Spiritual Innervation",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.615686274509804,
						["b"] = 1,
					},
					["mine"] = false,
					["colorCount"] = 3,
				},
				["color-Absorbs"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.12156862745098,
						["g"] = 0.435294117647059,
						["b"] = 1,
					},
				},
				["debuff-DebuffsGroup:HealingPrevented"] = {
					["useWhiteList"] = true,
					["auras"] = {
						"Corruption: Absolute", -- [1]
						"Mortality", -- [2]
						"Withering Winds", -- [3]
						"Engulfing Darkness", -- [4]
						"Anti-Magic Prison", -- [5]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["type"] = "debuffs",
					["spellName"] = "Debuffs Group: Healing Prevented ",
				},
				["dungeon-role"] = {
					["hideDamagers"] = true,
					["useAlternateIcons"] = true,
				},
				["color-Black"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.0235294117647059,
						["g"] = 0.0196078431372549,
						["r"] = 0.0156862745098039,
					},
					["type"] = "color",
				},
				["debuff-IronPrison"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.36078431372549,
						["g"] = 0.545098039215686,
						["r"] = 1,
					},
					["type"] = "debuff",
					["color3"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.156862745098039,
						["r"] = 1,
					},
					["colorCount"] = 3,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.968627450980392,
						["g"] = 1,
						["r"] = 0.984313725490196,
					},
					["colorThreshold"] = {
						10, -- [1]
						5, -- [2]
					},
					["spellName"] = "Iron Prison",
				},
				["threat"] = {
					["color2"] = {
						["b"] = 0,
						["r"] = 1,
					},
					["color3"] = {
						["g"] = 0.345098039215686,
						["b"] = 0,
					},
				},
				["color-Atonement"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.168627450980392,
						["g"] = 0.172549019607843,
						["r"] = 0.172549019607843,
					},
					["type"] = "color",
				},
				["debuff-Overwhelm"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Overwhelm",
				},
				["debuff-Priest>WeakenedSoul"] = {
					["type"] = "debuff",
					["spellName"] = 6788,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-Overcharged"] = {
					["type"] = "debuff",
					["spellName"] = "Overcharged",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["debuff-Trash>GrievousMortalWounds"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 175624,
				},
				["debuff-Iron>Impale"] = {
					["type"] = "debuff",
					["spellName"] = 134691,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["buff-PrayerofMending-mine"] = {
					["spellName"] = "Prayer of Mending",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Defcds"] = {
					["type"] = "buffs",
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
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["mine"] = false,
					["spellName"] = "Def cds",
				},
				["buff-Vampyr'sKiss-mine"] = {
					["spellName"] = "Vampyr's Kiss",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["range"] = {
					["elapsed"] = 0.4,
					["default"] = 0.42,
					["range"] = "38",
				},
				["buff-EchoofLight-mine"] = {
					["spellName"] = 77489,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["classcolor"] = {
					["colors"] = {
						["DEATHKNIGHT"] = {
							["b"] = 0.266666666666667,
							["g"] = 0.137254901960784,
							["r"] = 0.952941176470588,
						},
						["WARRIOR"] = {
							["b"] = 0.376470588235294,
							["g"] = 0.537254901960784,
							["r"] = 0.796078431372549,
						},
						["ROGUE"] = {
							["g"] = 0.854901960784314,
							["b"] = 0.247058823529412,
						},
						["MAGE"] = {
							["b"] = 1,
							["g"] = 0.803921568627451,
							["r"] = 0.266666666666667,
						},
						["Demon"] = {
							["b"] = 0.882352941176471,
							["g"] = 0.423529411764706,
							["r"] = 0.780392156862745,
						},
						["WARLOCK"] = {
							["b"] = 0.788235294117647,
							["g"] = 0.509803921568627,
							["r"] = 0.576470588235294,
						},
						["DEMONHUNTER"] = {
							["b"] = 0.788235294117647,
							["g"] = 0.188235294117647,
							["r"] = 0.63921568627451,
						},
						["MONK"] = {
							["b"] = 0.588235294117647,
						},
						["PALADIN"] = {
							["b"] = 0.756862745098039,
							["g"] = 0.529411764705882,
							["r"] = 0.96078431372549,
						},
					},
				},
				["debuff-GazeoftheAbyss"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 165595,
				},
				["health-current"] = {
					["color2"] = {
						["g"] = 0.513725490196078,
						["b"] = 0.505882352941176,
					},
					["color1"] = {
						["b"] = 0.380392156862745,
						["g"] = 0.364705882352941,
						["r"] = 1,
					},
					["color3"] = {
						["b"] = 0.890196078431373,
						["g"] = 0.913725490196078,
						["r"] = 0.705882352941177,
					},
					["quickHealth"] = true,
				},
				["debuff-NecroticRot"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.8,
						["r"] = 1,
					},
					["type"] = "debuff",
					["color3"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.0470588235294118,
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.2,
						["r"] = 1,
					},
					["colorCount"] = 3,
					["colorThreshold"] = {
						6, -- [1]
						3, -- [2]
					},
					["spellName"] = "Necrotic Rot",
				},
				["friendcolor"] = {
					["color1"] = {
						["b"] = 0.682352941176471,
						["r"] = 0.592156862745098,
					},
				},
				["buff-SpiritShell-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.949019607843137,
						["g"] = 0.262745098039216,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Spirit Shell",
				},
				["debuff-StrongAncientBarrier"] = {
					["type"] = "debuff",
					["spellName"] = "Strong Ancient Barrier",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.0980392156862745,
						["g"] = 0.274509803921569,
						["b"] = 0.125490196078431,
					},
				},
				["debuff-MeltArmor"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Melt Armor",
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
					["spellName"] = "Highmaul",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["type"] = "debuffs",
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
				},
				["debuff-Curse"] = {
					["color1"] = {
						["g"] = 0.309803921568628,
						["r"] = 0.705882352941177,
					},
				},
				["debuff-IgniteSoul"] = {
					["spellName"] = "Ignite Soul",
					["type"] = "debuff",
					["blinkThreshold"] = 4,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["direction"] = {
					["StickyMouseover"] = true,
					["ShowOutOfRange"] = true,
				},
				["buff-DivineAegis-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.92156862745098,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 47753,
				},
				["debuff-AncientBarrier"] = {
					["type"] = "debuff",
					["spellName"] = "Ancient Barrier",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.0980392156862745,
						["g"] = 0.274509803921569,
						["b"] = 0.125490196078431,
					},
				},
				["color-TransWhite"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0.512046754360199,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuffs-Necrotic"] = {
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["buff-PowerWordShield"] = {
					["type"] = "buff",
					["spellName"] = 17,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.941176470588235,
						["b"] = 0.756862745098039,
					},
				},
				["debuff-WeakAncientBarrier"] = {
					["type"] = "debuff",
					["spellName"] = "Weak Ancient Barrier",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.0980392156862745,
						["g"] = 0.274509803921569,
						["b"] = 0.125490196078431,
					},
				},
				["debuff-UnholyReckoning"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Unholy Reckoning",
				},
				["debuff-GushingWounds"] = {
					["type"] = "debuff",
					["spellName"] = "Gushing Wounds",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["buff-Renew-mine"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0.423529411764706,
						["g"] = 0.890196078431373,
						["b"] = 0.537254901960784,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 139,
				},
				["debuff-DreamSimulacrum"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Dream Simulacrum",
				},
				["buff-SpiritOfRedemption"] = {
					["spellName"] = 27827,
					["type"] = "buff",
					["blinkThreshold"] = 3,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-Rejuvenation-not-mine"] = {
					["spellName"] = 774,
					["type"] = "buff",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.803921568627451,
						["g"] = 0.125490196078431,
						["b"] = 0.611764705882353,
					},
				},
				["debuff-MCDebuffs"] = {
					["useWhiteList"] = true,
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
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["type"] = "debuffs",
					["spellName"] = "MC Debuffs ",
				},
				["buff-EnvelopingMist-not-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.498039215686275,
						["g"] = 0.858823529411765,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 2,
					["spellName"] = 124682,
				},
				["buff-Grace-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.819607843137255,
						["g"] = 0.63921568627451,
						["r"] = 0.447058823529412,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.72156862745098,
						["r"] = 0.419607843137255,
					},
					["colorCount"] = 3,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.705882352941177,
						["g"] = 0.92156862745098,
						["r"] = 1,
					},
					["mine"] = 1,
					["spellName"] = 77613,
				},
				["color-HealthBack"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 0.730000019073486,
						["r"] = 0.156862745098039,
						["g"] = 0.0588235294117647,
						["b"] = 0.0627450980392157,
					},
				},
				["debuff-CreepingNightmares"] = {
					["type"] = "debuff",
					["spellName"] = "Creeping Nightmares",
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
					["spellName"] = 102352,
					["useSpellId"] = true,
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.541176470588235,
						["g"] = 1,
						["b"] = 0.847058823529412,
					},
				},
				["buff-MinorDefCds"] = {
					["auras"] = {
						"Guard", -- [1]
						"Shield Block", -- [2]
						"Shield Barrier", -- [3]
						"Shield of the Righteous", -- [4]
						"Savage Defense", -- [5]
						"Frenzied Regeneration", -- [6]
						"Blood Shield", -- [7]
					},
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["spellName"] = "Minor Def Cds",
				},
				["buff-EnvelopingMist-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Enveloping Mist",
				},
				["death"] = {
					["color1"] = {
						["a"] = 0.770000010728836,
						["b"] = 0.188235294117647,
						["g"] = 0.188235294117647,
						["r"] = 0.188235294117647,
					},
				},
				["debuff-CrystalShell:FullCapacity!"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Crystal Shell: Full Capacity!",
				},
				["power"] = {
					["color2"] = {
						["r"] = 0.552941176470588,
					},
					["color3"] = {
						["g"] = 0.258823529411765,
						["r"] = 0.513725490196078,
					},
					["colorCount"] = 5,
					["color4"] = {
						["g"] = 0.52156862745098,
						["r"] = 0.52156862745098,
					},
					["color5"] = {
						["g"] = 0.498039215686275,
						["b"] = 0.501960784313726,
					},
					["color1"] = {
						["b"] = 0.454901960784314,
						["g"] = 0.196078431372549,
						["r"] = 0.0745098039215686,
					},
				},
				["debuff-RapidShot"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 0.594920456409454,
						["b"] = 0.466666666666667,
						["g"] = 0.411764705882353,
						["r"] = 1,
					},
					["spellName"] = "Rapid Shot",
				},
				["buff-Renew-not-mine"] = {
					["spellName"] = 139,
					["type"] = "buff",
					["mine"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.443137254901961,
						["g"] = 0.631372549019608,
						["b"] = 0.533333333333333,
					},
				},
				["color-RapidShot"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.309803921568627,
						["g"] = 0.317647058823529,
						["r"] = 1,
					},
					["type"] = "color",
				},
				["debuff-Necrotic"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "debuff",
					["color3"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["colorCount"] = 3,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Necrotic",
				},
				["target"] = {
					["color1"] = {
						["a"] = 0.283131659030914,
						["b"] = 1,
						["g"] = 0.847058823529412,
						["r"] = 0.490196078431373,
					},
				},
				["debuff-Infested"] = {
					["type"] = "debuff",
					["spellName"] = "Infested",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.772549019607843,
						["g"] = 0.968627450980392,
						["b"] = 0.741176470588235,
					},
				},
				["buff-BeaconofLight-mine"] = {
					["spellName"] = 53563,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuffs-Antorus"] = {
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
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["color-HealthColor"] = {
					["color1"] = {
						["a"] = 0.96000000089407,
						["b"] = 0.125490196078431,
						["g"] = 0.125490196078431,
						["r"] = 0.125490196078431,
					},
					["type"] = "color",
				},
				["debuff-FatalStrike"] = {
					["type"] = "debuff",
					["spellName"] = "Fatal Strike",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
				},
				["debuff-RaidHealingDebuffs"] = {
					["useWhiteList"] = true,
					["auras"] = {
						"Unstable Vita", -- [1]
						"Unstable Anima", -- [2]
						"Vita Sensitivity", -- [3]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["type"] = "debuffs",
					["spellName"] = "Raid Healing Debuffs",
				},
				["buff-MyCDs-mine"] = {
					["type"] = "buffs",
					["auras"] = {
						"Pain Suppression", -- [1]
						"Power Word: Barrier", -- [2]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["mine"] = 1,
					["spellName"] = "MyCDs",
				},
				["debuff-Magic"] = {
					["color1"] = {
						["b"] = 0.686274509803922,
						["g"] = 0.274509803921569,
						["r"] = 0.0705882352941177,
					},
				},
				["health-deficit"] = {
					["threshold"] = 0,
				},
				["debuff-CrystalShell"] = {
					["type"] = "debuff",
					["spellName"] = "Crystal Shell",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.274509803921569,
						["g"] = 0.0627450980392157,
						["b"] = 0.23921568627451,
					},
				},
				["buff-Purified"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = false,
					["spellName"] = "Purified",
				},
				["debuff-ShadowCovenant"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Shadow Covenant",
				},
				["aoe-OutgoingHeals"] = {
					["spells"] = {
						"Prayer of Healing", -- [1]
					},
				},
				["aoe-PrayerOfHealing"] = {
					["color1"] = {
						["b"] = 1,
						["g"] = 0.862745098039216,
						["r"] = 0.411764705882353,
					},
					["minPlayers"] = 4,
					["healthDeficit"] = 0,
				},
				["shields"] = {
					["color2"] = {
						["b"] = 0.803921568627451,
						["g"] = 0.490196078431373,
						["r"] = 0.729411764705882,
					},
					["maxShieldAmount"] = 350000,
					["color3"] = {
						["b"] = 0.756862745098039,
						["g"] = 0.384313725490196,
						["r"] = 0.56078431372549,
					},
					["thresholdMedium"] = 200000,
					["filtered"] = {
						[116849] = true,
						[77535] = true,
						[47515] = true,
						[65148] = true,
						[47753] = true,
						[77513] = true,
						[86273] = true,
						[11426] = true,
						[1463] = true,
						[76669] = true,
					},
					["customShields"] = "137633,137648",
					["thresholdLow"] = 50000,
					["color1"] = {
						["b"] = 0.866666666666667,
						["g"] = 0.631372549019608,
						["r"] = 0.741176470588235,
					},
				},
				["aoe-CircleOfHealing"] = {
					["minPlayers"] = 4,
					["healthDeficit"] = 0,
				},
				["debuff-Rot"] = {
					["type"] = "debuff",
					["spellName"] = "Rot",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["buff-Riptide-not-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 2,
					["spellName"] = 61295,
				},
				["debuff-RendFlesh"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Rend Flesh",
				},
				["color-Health-color-light"] = {
					["type"] = "color",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.364705882352941,
						["b"] = 0.380392156862745,
					},
				},
				["color-white"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "color",
				},
				["buff-RenewingMist"] = {
					["spellName"] = 119611,
					["type"] = "buff",
					["mine"] = false,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.396078431372549,
						["g"] = 1,
						["b"] = 0.533333333333333,
					},
				},
				["debuff-GiftoftheTitans"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Gift of the Titans",
				},
				["debuff-Chomp"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Chomp",
				},
				["debuff-SuplRaid"] = {
					["useWhiteList"] = true,
					["spellName"] = "SuplRaid",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["type"] = "debuffs",
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
				},
				["buff-Atonement-mine"] = {
					["color1"] = {
						["a"] = 0.650000005960465,
						["b"] = 0.937254901960784,
						["g"] = 1,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Atonement",
				},
				["absorb-below-maxHP"] = {
					["color1"] = {
						["a"] = 1,
					},
				},
				["buff-EnvelopingMIst-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Enveloping MIst",
				},
			},
			["debug"] = false,
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
				["heals"] = {
					["heals-incoming"] = 50,
				},
				["Heal-Absorb-color"] = {
					["color-Absorbs"] = 52,
					["boss-shields"] = 50,
					["shields"] = 51,
				},
				["Class-color-color"] = {
					["death"] = 56,
					["color-Health-color-light"] = 54,
					["classcolor"] = 52,
					["health-current"] = 55,
					["debuff-RapidShot"] = 57,
				},
				["text-up-color"] = {
					["classcolor"] = 50,
				},
				["PowerBorder-color"] = {
				},
				["side-right"] = {
				},
				["corner-bottom-left"] = {
				},
				["powerBorder-color"] = {
				},
				["side-bottom"] = {
				},
				["center-left"] = {
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
				["side-bottom-2"] = {
				},
				["Absorbs-color"] = {
				},
				["icon-left"] = {
					["ready-check"] = 163,
					["raid-icon-player"] = 162,
					["debuff-Disease"] = 165,
					["debuff-Magic"] = 164,
				},
				["CenterText"] = {
					["offline"] = 55,
					["afk"] = 53,
				},
				["CenterText-color"] = {
					["color-TransWhite"] = 50,
				},
				["Shields-above-color"] = {
					["color-Absorbs"] = 50,
				},
				["Class-color"] = {
					["health-deficit"] = 50,
				},
				["Renew"] = {
					["buff-Atonement-mine"] = 51,
					["buff-EnvelopingMist-mine"] = 52,
					["buff-Renew-mine"] = 50,
				},
				["Heal-Absorb"] = {
					["heal-absorbs"] = 50,
					["boss-shields"] = 50,
				},
				["PhantomHP-color"] = {
				},
				["text-down-color"] = {
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["icon-center"] = {
					["debuff-UnholyReckoning"] = 172,
					["resurrection"] = 171,
					["debuff-IgniteSoul"] = 175,
					["death"] = 155,
					["debuff-SuplRaid"] = 167,
					["raid-debuffs"] = 177,
					["debuff-RaidHealingDebuffs"] = 169,
					["debuff-DreamSimulacrum"] = 165,
				},
				["EnvMist-color"] = {
					["buff-EnvelopingMist-not-mine"] = 50,
					["buff-CenarionWard-not-mine"] = 51,
				},
				["heals-color"] = {
					["color-HealthColor"] = 51,
				},
				["center-icon-timer"] = {
					["debuff-IronPrison"] = 50,
				},
				["icon-right"] = {
					["debuffs-Antorus"] = 52,
					["buff-MyCDs-mine"] = 51,
					["buff-Defcds"] = 50,
				},
				["Corner-TR-txt-color"] = {
				},
				["text-left"] = {
					["debuff-Rot"] = 50,
					["debuff-RendFlesh"] = 56,
					["debuff-Infested"] = 54,
					["debuff-MeltArmor"] = 53,
					["debuff-Overwhelm"] = 55,
					["debuff-CreepingNightmares"] = 57,
					["debuff-GushingWounds"] = 51,
					["debuff-GazeoftheAbyss"] = 52,
					["debuff-NecroticRot"] = 58,
				},
				["powerInv-color"] = {
				},
				["border"] = {
					["target"] = 52,
					["banzai-threat"] = 51,
				},
				["EnvMist"] = {
					["buff-CenarionWard-not-mine"] = 50,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["Shields-color"] = {
					["color-Absorbs"] = 50,
				},
				["Corner-TR-txt"] = {
					["buff-Renew-mine"] = 50,
					["debuff-Priest>WeakenedSoul"] = 51,
				},
				["text-up"] = {
					["name"] = 50,
					["boss-shields"] = 51,
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
				["Bottom"] = {
					["buff-PrayerofMending-mine"] = 50,
				},
			},
			["formatting"] = {
				["longDecimalFormat"] = "%.0f",
			},
		},
		["Taff Centre Party"] = {
			["statuses"] = {
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
				["health-deficit"] = {
					["color1"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
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
					["auras"] = {
						"Putrid Paroxysm", -- [1]
						"Plasma Discharge", -- [2]
						"Roiling Deceit", -- [3]
						"Omega Vector", -- [4]
						"Eye Beam", -- [5]
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
						["r"] = 0,
						["g"] = 0.580392156862745,
						["b"] = 1,
					},
				},
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["useAlternateIcons"] = true,
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["hideDamagers"] = true,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 0.770000010728836,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 61295,
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["raid-debuffs"] = {
					["color1"] = {
						["r"] = 0.988235294117647,
						["g"] = 1,
						["b"] = 0.933333333333333,
					},
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
				["threat"] = {
					["color2"] = {
						["r"] = 0.949019607843137,
						["b"] = 0.501960784313726,
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
						["r"] = 0.552941176470588,
						["g"] = 0.545098039215686,
						["b"] = 0.56078431372549,
					},
					["color3"] = {
						["a"] = 0.480000019073486,
						["r"] = 0.537254901960784,
						["g"] = 0.545098039215686,
						["b"] = 0.545098039215686,
					},
					["color1"] = {
						["a"] = 0.480000019073486,
						["r"] = 0.556862745098039,
						["g"] = 0.568627450980392,
						["b"] = 0.556862745098039,
					},
				},
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["a"] = 0.670000016689301,
						["r"] = 0.71764705882353,
						["g"] = 0.784313725490196,
						["b"] = 1,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["a"] = 0.620000004768372,
						["r"] = 0.627450980392157,
						["g"] = 0.694117647058824,
						["b"] = 1,
					},
					["color1"] = {
						["a"] = 0.560000002384186,
						["r"] = 0.694117647058824,
						["g"] = 0.745098039215686,
						["b"] = 1,
					},
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
				["debuff-Curse"] = {
					["color1"] = {
						["r"] = 0.458823529411765,
					},
				},
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["health-current"] = {
					["color2"] = {
						["r"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["b"] = 0.701960784313726,
					},
					["quickHealth"] = true,
					["color3"] = {
						["r"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["b"] = 0.701960784313726,
					},
					["color1"] = {
						["r"] = 0.701960784313726,
						["g"] = 0.701960784313726,
						["b"] = 0.701960784313726,
					},
				},
				["buff-Atonement-mine"] = {
					["spellName"] = "Atonement",
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
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
				["debuff-Poison"] = {
					["color1"] = {
						["g"] = 1,
						["b"] = 0.0392156862745098,
					},
				},
				["mana"] = {
					["showOnlyHealers"] = true,
				},
				["ready-check"] = {
					["threshold"] = 5,
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
				["buffs-MonkBuffs-mine"] = {
					["auras"] = {
						"Soothing Mist", -- [1]
						"Essence Font", -- [2]
						"Renewing Mist", -- [3]
						"Enveloping Mist", -- [4]
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
					["width"] = 75,
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 7,
					["height"] = 2,
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
					["texture"] = "ElvUI Blank",
				},
				["Beacon-of-Light-color"] = {
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
					["type"] = "text",
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
					["type"] = "icons",
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["fontSize"] = 15,
					["iconSize"] = 18,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -1,
					},
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
					["maxIcons"] = 4,
					["font"] = "Roboto-Medium",
					["borderSize"] = 1,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["iconSize"] = 18,
					["level"] = 9,
					["maxIconsPerRow"] = 4,
					["useStatusColor"] = true,
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
							["b"] = 1,
							["g"] = 0.737254901960784,
							["r"] = 0.713725490196079,
						},
					},
					["opacity"] = 1,
					["barCount"] = 1,
					["textureColor"] = {
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
					["level"] = 5,
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
				["HoT"] = {
					["type"] = "bar",
					["orientation"] = "HORIZONTAL",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["height"] = 3,
					["duration"] = true,
					["level"] = 9,
					["texture"] = "Grid2 Flat",
				},
				["HoT-color"] = {
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
					["borderOpacity"] = 1,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["fontJustifyV"] = "MIDDLE",
					["maxIcons"] = 5,
					["borderSize"] = 1,
					["font"] = "Expressway",
					["iconSize"] = 16,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["level"] = 8,
					["fontJustifyH"] = "CENTER",
					["fontFlags"] = "",
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["Mana-color"] = {
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
					["texture"] = "ElvUI Blank",
				},
				["Icons-Top-Left"] = {
					["type"] = "icons",
					["reverseCooldown"] = true,
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 1,
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["maxIcons"] = 2,
					["font"] = "Expressway",
					["orientation"] = "HORIZONTAL",
					["level"] = 8,
					["iconSize"] = 16,
					["maxIconsPerRow"] = 2,
					["fontSize"] = 9,
					["borderSize"] = 1,
				},
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["Shields-color"] = {
					["type"] = "bar-color",
				},
				["Name"] = {
					["type"] = "text",
					["fontSize"] = 16,
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["level"] = 7,
					["textlength"] = 6,
					["font"] = "Roboto-Medium",
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["Beacon--color"] = {
					["type"] = "bar-color",
				},
				["My-Buffs-Text-color"] = {
					["type"] = "text-color",
				},
			},
			["statusMap"] = {
				["Beacon--color"] = {
				},
				["Mana-color"] = {
					["mana"] = 50,
				},
				["Health-deficit"] = {
					["heal-absorbs"] = 2,
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
				["HoT-color"] = {
					["buff-Riptide-mine"] = 50,
				},
				["Absorb/Shield"] = {
					["shields"] = 50,
				},
				["HoT"] = {
					["buff-Riptide-mine"] = 50,
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
				["text-up-color"] = {
					["offline"] = 93,
					["vehicle"] = 70,
					["feign-death"] = 96,
					["charmed"] = 65,
				},
				["health-color"] = {
					["death"] = 61,
					["debuffs-UldirColouredFrames"] = 60,
				},
				["My-Buffs"] = {
					["buffs-PaladinBuffs-mine"] = 56,
					["buff-PrayerofMending-mine"] = 51,
					["buff-Atonement-mine"] = 52,
					["buffs-DruidBuffs-mine"] = 54,
					["buff-BeaconofVirtue-mine"] = 53,
					["buffs-MonkBuffs-mine"] = 55,
				},
				["Debuffs"] = {
					["debuffs-Debuffs"] = 54,
				},
				["heals-color"] = {
				},
				["heals"] = {
				},
				["alpha"] = {
					["range"] = 99,
					["offline"] = 97,
				},
				["Name"] = {
					["name"] = 50,
				},
				["corner-top-left-color"] = {
				},
				["Icon-Top"] = {
					["raid-icon-player"] = 50,
				},
				["health"] = {
					["health-current"] = 50,
				},
				["Icons-Top-Left"] = {
					["buffs-DefensiveCooldowns-not-mine"] = 74,
				},
				["text-up"] = {
					["vehicle"] = 70,
					["offline"] = 93,
					["feign-death"] = 96,
					["charmed"] = 65,
				},
				["Debuffs-Bottom-Right"] = {
					["debuffs-UldirTankDebuffs"] = 5,
				},
				["Name-color"] = {
					["classcolor"] = 50,
					["death"] = 51,
				},
				["Absorb/Shield-color"] = {
					["shields"] = 50,
				},
			},
		},
		["Nisearw - Stormscale"] = {
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
					["fontSize"] = 10,
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
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
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
		["Awfrsdg - Stormscale"] = {
			["statuses"] = {
				["buff-EarthShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.8,
						["r"] = 0.8,
					},
					["spellName"] = 974,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.6,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 61295,
				},
				["buff-EarthShield-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["colorCount"] = 2,
					["mine"] = true,
					["spellName"] = 974,
				},
				["buff-Earthliving"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 1,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 51945,
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
					["fontSize"] = 10,
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
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
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
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Riptide-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-top-right"] = {
					["buff-EarthShield-mine"] = 99,
					["buff-EarthShield"] = 89,
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
				["side-top"] = {
					["buff-Earthliving"] = 89,
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
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["debuff-Curse"] = 90,
					["debuff-Magic"] = 80,
					["target"] = 50,
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
		},
		["HealerFrames"] = {
			["indicators"] = {
				["Beacon--color"] = {
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
					["orientation"] = "HORIZONTAL",
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
					["texture"] = "Grid2 Flat",
				},
				["Renewing"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "bar",
					["height"] = 4,
					["reverseFill"] = true,
					["orientation"] = "HORIZONTAL",
					["level"] = 7,
					["duration"] = true,
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
					["font"] = "Roboto-Medium",
					["shadowDisabled"] = true,
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
					["fontSize"] = 12,
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 8,
					["font"] = "Expressway",
				},
				["Debuffs-Bottom-Right"] = {
					["fontSize"] = 15,
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
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -1,
					},
					["type"] = "icons",
				},
				["Name-color"] = {
					["type"] = "text-color",
				},
				["Germ-color"] = {
					["type"] = "bar-color",
				},
				["Debuffs"] = {
					["type"] = "icons",
					["fontJustifyH"] = "LEFT",
					["reverseCooldown"] = true,
					["fontJustifyV"] = "BOTTOM",
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
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 1,
					},
					["useStatusColor"] = true,
					["iconSize"] = 20,
					["level"] = 9,
					["fontSize"] = 14,
					["fontFlags"] = "OUTLINE",
				},
				["test-color"] = {
					["type"] = "text-color",
				},
				["Health-deficit"] = {
					["bar3"] = {
						["color"] = {
							["a"] = 0.75,
							["b"] = 0.219607843137255,
							["g"] = 0.219607843137255,
							["r"] = 0.219607843137255,
						},
						["reverse"] = true,
					},
					["type"] = "multibar",
					["bar2"] = {
						["color"] = {
							["a"] = 0.464893221855164,
							["r"] = 0.447058823529412,
							["g"] = 0.447058823529412,
							["b"] = 0.447058823529412,
						},
						["noOverlap"] = true,
						["reverse"] = true,
					},
					["bar1"] = {
						["color"] = {
							["a"] = 0.780000001192093,
							["r"] = 0,
							["g"] = 0.286274509803922,
							["b"] = 1,
						},
					},
					["opacity"] = 1,
					["barCount"] = 3,
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
				["testttt-color"] = {
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
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["Renewing-color"] = {
					["type"] = "bar-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right-color"] = {
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
					["fontSize"] = 9,
					["type"] = "icons",
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
						["y"] = 2,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 1,
					},
					["fontJustifyH"] = "CENTER",
					["iconSize"] = 16,
					["level"] = 8,
					["borderSize"] = 1,
					["fontFlags"] = "",
				},
				["Rejuv-color"] = {
					["type"] = "bar-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["Shields-color"] = {
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
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["health"] = {
					["type"] = "bar",
					["texture"] = "DGround",
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
				["Name"] = {
					["fontSize"] = 12,
					["font"] = "Roboto-Medium",
					["type"] = "text",
					["location"] = {
						["y"] = 1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 1,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontFlags"] = "NONE",
				},
				["Mana-color"] = {
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
			["statusMap"] = {
				["Beacon--color"] = {
				},
				["Mana-color"] = {
					["mana"] = 50,
				},
				["Health-deficit"] = {
					["shields"] = 4,
					["heal-absorbs"] = 2,
					["heals-incoming"] = 3,
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
				["Absorb/Shield-color"] = {
				},
				["corner-top-right-color"] = {
				},
				["Name-color"] = {
				},
				["Debuffs-Bottom-Right"] = {
					["debuffs-UldirTankDebuffs"] = 5,
				},
				["Absorb/Shield"] = {
				},
				["text-down-color"] = {
				},
				["Renewing"] = {
					["buff-Atonement-mine"] = 52,
					["buff-Riptide-mine"] = 51,
					["buff-EssenceFont-mine"] = 50,
					["buff-LuminousJellyweed-mine"] = 53,
				},
				["side-top-color"] = {
					["buff-FlashOfLight-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["resurrection"] = 156,
				},
				["heals"] = {
				},
				["health-color"] = {
					["death"] = 61,
					["aoe-test"] = 65,
					["buff-GlimmerofLight-mine"] = 66,
					["debuff-Priest>WeakenedSoul-mine"] = 63,
					["debuffs-UldirColouredFrames"] = 60,
				},
				["My-Buffs"] = {
					["buffs-PaladinBuffs-mine"] = 56,
					["buff-PrayerofMending-mine"] = 51,
					["buffs-MonkBuffs-mine"] = 55,
					["buff-BeaconofVirtue-mine"] = 53,
					["buffs-DruidBuffs-mine"] = 54,
				},
				["health"] = {
					["health-current"] = 50,
					["death"] = 51,
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
				["Name"] = {
				},
				["corner-top-left-color"] = {
				},
				["Icon-Top"] = {
					["raid-icon-player"] = 50,
				},
				["name"] = {
					["name"] = 50,
				},
				["Debuffs"] = {
					["debuff-FelSludge"] = 55,
					["debuffs-Debuffs"] = 54,
				},
				["text-up"] = {
					["vehicle"] = 70,
					["offline"] = 93,
					["feign-death"] = 96,
					["charmed"] = 65,
				},
				["text-up-color"] = {
					["offline"] = 93,
					["vehicle"] = 70,
					["feign-death"] = 96,
					["charmed"] = 65,
				},
				["name-color"] = {
					["classcolor"] = 50,
				},
				["Renewing-color"] = {
					["buff-Atonement-mine"] = 52,
					["buff-Riptide-mine"] = 51,
					["buff-EssenceFont-mine"] = 50,
					["buff-LuminousJellyweed-mine"] = 53,
				},
			},
			["statuses"] = {
				["debuffs-Debuffs"] = {
					["type"] = "debuffs",
					["auras"] = {
						"Darkest Depths", -- [1]
						"Undulating Tides", -- [2]
						"Forbearance", -- [3]
						"Demonic Gateway", -- [4]
						"Sanitizing Strike", -- [5]
						"Shatter", -- [6]
						"Evolving Affliction", -- [7]
						"Rupturing Blood", -- [8]
						"Essence Shear", -- [9]
						"Heartstopper Venom", -- [10]
						"Azerite Energy", -- [11]
						"Azerite Residue", -- [12]
						"Challenger's Burden", -- [13]
						"Dark Bargain", -- [14]
						"Shadow Mend", -- [15]
						"Immunosuppression", -- [16]
						"Creator's Grace", -- [17]
						"Lunar Suffusion", -- [18]
						"Removed from the Circle", -- [19]
						"Lunar Suffision", -- [20]
						"Gaze of Aman'thul", -- [21]
						"AUGH", -- [22]
						"Temptation", -- [23]
						"Imperfect Physiology", -- [24]
						"Forbearance", -- [25]
						"Strength of the Sky", -- [26]
						"Lingering Wail", -- [27]
						"Quel'Delar's Compulsion", -- [28]
						"Bursting Boil", -- [29]
						"The Light Saves", -- [30]
						"Curse of the Dreadblades", -- [31]
						"Torment of Fel", -- [32]
						"Empowered Flame Rend", -- [33]
						"Unbreakable Will", -- [34]
						"Umbral Suffision", -- [35]
						"Aegisjalmur", -- [36]
						"the Armguard of Awe", -- [37]
						"Lingering Mischief", -- [38]
						"Sample Satisfaction", -- [39]
						"Demonic Gateway", -- [40]
						"Deserter", -- [41]
						"Orb of Frost", -- [42]
						"Dungeon Deserter", -- [43]
						"Archbishop Benedictus' Restitution", -- [44]
						"Weakened Heart", -- [45]
						"Cheated Death", -- [46]
						"Speed: Slow", -- [47]
						"Chill of the Throne", -- [48]
						"Surrendered Soul", -- [49]
						"Transporter Malfunction", -- [50]
						"Umbra Suffusion", -- [51]
						"Sense of Dread", -- [52]
						"Sands of Time", -- [53]
						"Torment of Flames", -- [54]
						"Light Infusion", -- [55]
						"Banished in Time", -- [56]
						"Lingering Infection", -- [57]
						"Speed: Normal", -- [58]
						"Putrid Blood", -- [59]
						"Astral Vulnerability", -- [60]
						"Sin'dorei Spite", -- [61]
						"Torment of Frost", -- [62]
						"Lord of Flames", -- [63]
						"Lured", -- [64]
						"Nightwell Energy", -- [65]
						"ablative shielding", -- [66]
						"Demon's Vigor", -- [67]
						"Moonfeather Fever", -- [68]
						"Fel Heart Bond Frayed", -- [69]
						"Fel Infusion", -- [70]
						"Dungeon Cooldown", -- [71]
						"Oozeling's Disgusting Aura", -- [72]
						"Fatigued", -- [73]
						"Cauterized", -- [74]
						"Warlord's Exhaustion", -- [75]
						"Slippery", -- [76]
						"Sated", -- [77]
						"Challenger's Burden", -- [78]
						"Temporal Displacement", -- [79]
						"Speed: Fast", -- [80]
						"Uncontained Fel", -- [81]
						"Gaze of Aman'Thul", -- [82]
						"Celerity Zone", -- [83]
						"Forbaerence", -- [84]
						"Masquerade", -- [85]
						"Annihilation", -- [86]
						"Strength of the Sea", -- [87]
						"Void-Touched", -- [88]
						"Number One Fan", -- [89]
						"Illusionary Night", -- [90]
						"Torment of Shadows", -- [91]
						"Evolving Affliction", -- [92]
						"Dark Purpose", -- [93]
						"Unclean Contagion", -- [94]
						"Weakened Soul", -- [95]
						"Xalzaix's Gaze", -- [96]
						"Heartbroken", -- [97]
						"Diamond of the Unshakeable Protector", -- [98]
						"Opal of Unleashed Rage", -- [99]
						"Topaz of Brilliant Sunlight", -- [100]
						"Unleashed Rage", -- [101]
						"Tailwind Sapphire", -- [102]
						"Incandescence", -- [103]
						"Amethyst of the Shadow King", -- [104]
						"Ruby of Focused Animus", -- [105]
						"Emerald of Earthen Roots", -- [106]
						"Earthen Roots", -- [107]
						"Depleted Diamond", -- [108]
						"Thief's Bane", -- [109]
						"Grossly Incandescent!", -- [110]
						"Brilliant Aura", -- [111]
						"Soothing Breeze", -- [112]
						"Dark Knowledge", -- [113]
						"Tailwinds", -- [114]
						"Howling Winds", -- [115]
						"Aphotic Blast", -- [116]
						"Shear Mind", -- [117]
						"Dark Herald", -- [118]
						"Disturbingly Divine Presence", -- [119]
						"Disgusting Mucus", -- [120]
						"Phantom Pain", -- [121]
						"Recalibrating", -- [122]
						"Frost Mark", -- [123]
						"Toxic Brand", -- [124]
						"Frozen Blood", -- [125]
						"Venomous Blood", -- [126]
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
						"Putrid Paroxysm", -- [6]
						"Absorbed in Darkness", -- [7]
						"Gestate", -- [8]
						"Roiling Deceit", -- [9]
						"Imminent Ruin", -- [10]
						"Unleashed Shadow", -- [11]
						"Deathwish", -- [12]
						"Torment", -- [13]
						"Liquid Gold", -- [14]
						"Bwondsamdi's Wrath", -- [15]
						"Grievous Axe", -- [16]
						"Caress of Death", -- [17]
						"Gigavolt Charge", -- [18]
						"Storm's Wail", -- [19]
						"Broadside", -- [20]
						"Siegebreaker Blast", -- [21]
						"Crushing Doubt", -- [22]
						"Insatiable Torment", -- [23]
					},
				},
				["buff-Riptide-mine"] = {
					["spellName"] = 61295,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0.858823529411765,
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
				["threat"] = {
					["color2"] = {
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
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
				["aoe-test"] = {
					["type"] = "aoe-heals",
					["activeTime"] = 2,
					["spellList"] = {
					},
					["mine"] = true,
					["color1"] = {
						["a"] = 0.157729923725128,
						["r"] = 0,
						["g"] = 0.8,
						["b"] = 1,
					},
				},
				["debuff-Poison"] = {
					["color1"] = {
						["g"] = 1,
						["b"] = 0.0392156862745098,
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
				["range"] = {
					["default"] = 0.3,
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
				["debuff-Disease"] = {
					["color1"] = {
						["g"] = 0.32156862745098,
						["r"] = 1,
					},
				},
				["buff-Atonement-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.250980392156863,
						["r"] = 0,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Atonement",
				},
				["health-current"] = {
					["color2"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["b"] = 0.219607843137255,
					},
					["color3"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["b"] = 0.219607843137255,
					},
					["quickHealth"] = true,
					["color1"] = {
						["r"] = 0.219607843137255,
						["g"] = 0.219607843137255,
						["b"] = 0.219607843137255,
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
				["my-heals-incoming"] = {
					["color1"] = {
						["b"] = 0.501960784313726,
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
				["debuff-Curse"] = {
					["color1"] = {
						["r"] = 0.458823529411765,
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
				["debuff-Magic"] = {
					["debuffFilter"] = {
						["Tampering!"] = true,
					},
					["color1"] = {
						["g"] = 0.235294117647059,
						["r"] = 0,
					},
				},
				["debuff-FelSludge"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = "Fel Sludge",
				},
				["heals-incoming"] = {
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.501960784313726,
					},
				},
				["death"] = {
					["color1"] = {
						["b"] = 0.0196078431372549,
						["g"] = 0,
						["r"] = 0.392156862745098,
					},
				},
				["ready-check"] = {
					["threshold"] = 5,
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
				["mana"] = {
					["showOnlyHealers"] = true,
				},
				["debuff-Priest>WeakenedSoul-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["type"] = "debuff",
					["mine"] = 1,
					["spellName"] = 6788,
				},
				["heal-absorbs"] = {
					["thresholdMedium"] = 0,
					["color3"] = {
						["a"] = 0.670000016689301,
						["r"] = 0.71764705882353,
						["g"] = 0.784313725490196,
						["b"] = 1,
					},
					["thresholdLow"] = 0,
					["color2"] = {
						["a"] = 0.620000004768372,
						["r"] = 0.627450980392157,
						["g"] = 0.694117647058824,
						["b"] = 1,
					},
					["color1"] = {
						["a"] = 0.777107566595078,
						["r"] = 0,
						["g"] = 0.305882352941177,
						["b"] = 1,
					},
				},
				["buff-LuminousJellyweed-mine"] = {
					["spellName"] = 303698,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.1294117647058823,
						["b"] = 0,
					},
				},
				["shields"] = {
					["color3"] = {
						["a"] = 0.25,
						["r"] = 0,
						["g"] = 0.188235294117647,
						["b"] = 0.56078431372549,
					},
					["color2"] = {
						["a"] = 0.25,
						["r"] = 0,
						["g"] = 0.188235294117647,
						["b"] = 0.56078431372549,
					},
					["color1"] = {
						["a"] = 0.201590836048126,
						["r"] = 0.556862745098039,
						["g"] = 0.568627450980392,
						["b"] = 0.556862745098039,
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
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["useAlternateIcons"] = true,
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["hideDamagers"] = true,
				},
				["buff-GlimmerofLight-mine"] = {
					["spellName"] = 287280,
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 0.271798968315125,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["raid-debuffs"] = {
					["color1"] = {
						["r"] = 0.988235294117647,
						["g"] = 1,
						["b"] = 0.933333333333333,
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
			["debug"] = false,
			["themes"] = {
				["enabled"] = {
					["default"] = 0,
				},
				["indicators"] = {
					[0] = {
					},
				},
			},
		},
		["Yoshicakes - Stormscale"] = {
			["statuses"] = {
				["buff-EarthShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.8,
						["r"] = 0.8,
					},
					["spellName"] = 974,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.6,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 61295,
				},
				["buff-EarthShield-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["colorCount"] = 2,
					["mine"] = true,
					["spellName"] = 974,
				},
				["buff-Earthliving"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 1,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 51945,
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
					["fontSize"] = 10,
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
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Riptide-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-top-right"] = {
					["buff-EarthShield-mine"] = 99,
					["buff-EarthShield"] = 89,
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
				["side-top"] = {
					["buff-Earthliving"] = 89,
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
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["debuff-Curse"] = 90,
					["debuff-Magic"] = 80,
					["target"] = 50,
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
		},
		["Niseko - Twisting Nether"] = {
			["statuses"] = {
				["buff-SpiritOfRedemption"] = {
					["spellName"] = 27827,
					["type"] = "buff",
					["blinkThreshold"] = 3,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-PowerWordShield"] = {
					["type"] = "buff",
					["spellName"] = 17,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["debuff-WeakenedSoul"] = {
					["type"] = "debuff",
					["spellName"] = 6788,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.2,
						["b"] = 0.9,
					},
				},
				["buff-Renew-mine"] = {
					["spellName"] = 139,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-PrayerOfMending-mine"] = {
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["color2"] = {
						["a"] = 0.4,
						["r"] = 1,
						["g"] = 1,
						["b"] = 0.4,
					},
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.6,
						["b"] = 0.6,
					},
					["spellName"] = 33076,
					["color4"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.8,
						["b"] = 0.8,
					},
					["color5"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["colorCount"] = 5,
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
				["text-up-color"] = {
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
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Renew-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["icon-right"] = {
					["buff-PrayerOfMending-mine"] = 99,
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
					["debuff-Disease"] = 90,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["target"] = 50,
					["debuff-Magic"] = 80,
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
					["buff-PowerWordShield"] = 99,
					["debuff-WeakenedSoul"] = 89,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
		},
		["Donnerbock - Ysera"] = {
			["indicators"] = {
				["corner-top-left"] = {
					["type"] = "text",
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["font"] = "Friz Quadrata TT",
				},
				["side-top"] = {
					["type"] = "text",
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["font"] = "Friz Quadrata TT",
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
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
					["fontSize"] = 10,
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
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["side-top-color"] = {
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
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
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
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["type"] = "text",
					["fontSize"] = 8,
					["level"] = 9,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["duration"] = true,
					["textlength"] = 12,
					["font"] = "Friz Quadrata TT",
				},
			},
			["statuses"] = {
				["buff-WildGrowth-mine"] = {
					["spellName"] = 48438,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.9,
						["b"] = 0.2,
					},
				},
				["buff-Rejuvenation-mine"] = {
					["spellName"] = 774,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 0.6,
					},
				},
				["buff-Regrowth-mine"] = {
					["spellName"] = 8936,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.5,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["buff-Lifebloom-mine"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 0.6,
						["g"] = 0.9,
						["b"] = 0.6,
					},
					["type"] = "buff",
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["spellName"] = 33763,
					["colorCount"] = 3,
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.2,
						["g"] = 0.7,
						["b"] = 0.2,
					},
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Lifebloom-mine"] = 99,
				},
				["side-top"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["corner-bottom-right"] = {
					["buff-WildGrowth-mine"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["border"] = {
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 80,
					["target"] = 50,
					["debuff-Magic"] = 90,
					["debuff-Curse"] = 70,
				},
				["corner-top-right-color"] = {
					["buff-Rejuvenation-mine"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["side-top-color"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["corner-top-right"] = {
					["buff-Rejuvenation-mine"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
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
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
				},
				["corner-top-left-color"] = {
					["buff-Lifebloom-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
			},
			["themes"] = {
				["indicators"] = {
					[0] = {
					},
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
				["health-color"] = {
					["classcolor"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
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
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
		},
		["Nyanporo - Blackmoore"] = {
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
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
					["fontSize"] = 10,
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
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
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
				["health-color"] = {
					["classcolor"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
					["vehicle"] = 70,
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
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
		},
		["Afwfes - Stormscale"] = {
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
					["fontSize"] = 10,
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
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
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
		["Seko - Stormscale"] = {
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
					["fontSize"] = 10,
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
			},
		},
	},
}

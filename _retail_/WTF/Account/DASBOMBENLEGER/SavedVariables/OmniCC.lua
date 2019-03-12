
OmniCC4Config = {
	["version"] = "8.1.1",
	["groupSettings"] = {
		["grid2"] = {
			["styles"] = {
				["minutes"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1.5,
				},
				["seconds"] = {
					["scale"] = 1,
				},
				["hours"] = {
					["scale"] = 0.75,
				},
				["charging"] = {
					["scale"] = 0.899999976158142,
				},
				["controlled"] = {
					["scale"] = 1.45000004768372,
				},
			},
			["fontFace"] = "Interface\\Addons\\SharedMedia_MyMedia\\font\\Roboto-Medium.ttf",
			["yOff"] = 0,
			["mmSSDuration"] = 0,
			["anchor"] = "TOPRIGHT",
			["spiralOpacity"] = 1.00999997742474,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.4,
			["minEffectDuration"] = 30,
			["minDuration"] = 2,
			["fontSize"] = 14,
		},
		["base"] = {
			["styles"] = {
				["seconds"] = {
					["scale"] = 1,
				},
				["minutes"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1.5,
				},
				["hours"] = {
					["scale"] = 0.75,
				},
				["charging"] = {
					["scale"] = 0.75,
				},
				["controlled"] = {
					["scale"] = 1.5,
				},
			},
			["fontSize"] = 15,
			["yOff"] = 0,
			["minEffectDuration"] = 30,
			["minSize"] = 0.4,
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 2,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 0,
			["scaleText"] = true,
			["fontFace"] = "Interface\\Addons\\SharedMedia_MyMedia\\font\\Roboto-Medium.ttf",
		},
		["PlaterNameplates Blacklist"] = {
			["enabled"] = false,
			["styles"] = {
				["minutes"] = {
				},
				["soon"] = {
				},
				["seconds"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
			["tenthsDuration"] = 0,
			["minSize"] = 0.5,
			["minEffectDuration"] = 30,
			["minDuration"] = 2,
			["mmSSDuration"] = 0,
		},
	},
	["groups"] = {
		{
			["id"] = "PlaterNameplates Blacklist",
			["rules"] = {
			},
			["enabled"] = true,
		}, -- [1]
		{
			["id"] = "grid2",
			["rules"] = {
				"Grid2IconsDebuffs", -- [1]
			},
			["enabled"] = true,
		}, -- [2]
	},
}

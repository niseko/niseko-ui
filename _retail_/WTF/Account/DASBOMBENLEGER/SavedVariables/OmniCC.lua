
OmniCC4Config = {
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
					["scale"] = 0.8999999761581421,
				},
				["controlled"] = {
					["scale"] = 1.450000047683716,
				},
			},
			["fontSize"] = 14,
			["scaleText"] = true,
			["minEffectDuration"] = 30,
			["minSize"] = 0.4,
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 2,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "TOPRIGHT",
			["mmSSDuration"] = 0,
			["yOff"] = 0,
			["fontFace"] = "Interface\\Addons\\SharedMedia_MyMedia\\font\\Roboto-Medium.ttf",
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
					["a"] = 1,
					["b"] = 0.1,
					["scale"] = 1.5,
					["g"] = 0.1,
					["r"] = 1,
				},
				["hours"] = {
					["scale"] = 1,
				},
				["charging"] = {
					["scale"] = 0.75,
				},
				["controlled"] = {
					["scale"] = 1.5,
				},
			},
			["fontFace"] = "Interface\\Addons\\SharedMedia_MyMedia\\font\\Roboto-Medium.ttf",
			["minDuration"] = 2,
			["mmSSDuration"] = 0,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1.00999997742474,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.4,
			["minEffectDuration"] = 30,
			["yOff"] = 0,
			["fontSize"] = 15,
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
			["mmSSDuration"] = 0,
			["minDuration"] = 2,
		},
	},
	["groups"] = {
		{
			["id"] = "PlaterNameplates Blacklist",
			["rules"] = {
				"PlaterMainAuraIcon", -- [1]
				"PlaterSecondaryAuraIcon", -- [2]
				"ExtraIconRowIcon", -- [3]
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
	["version"] = "8.2.3",
}


PlaterDB = {
	["profileKeys"] = {
		["Seko - Stormscale"] = "Default",
		["Nisefy - Stormscale"] = "Default",
		["Nisetest - Stormscale"] = "Default",
		["Nisearw - Stormscale"] = "Default",
		["Valdurawr - Stormscale"] = "Default",
		["Vordt - Twisting Nether"] = "Default",
		["Yvera - Moonglade"] = "Default",
		["Niseko - Stormscale"] = "Niseko - Stormscale",
		["Nisepie - Stormscale"] = "Default",
		["Pixelfehler - Ysera"] = "Default",
		["Yoshicakes - Stormscale"] = "Default",
		["Donnerbock - Ysera"] = "Default",
		["Purrmeow - Twisting Nether"] = "Default",
		["Niseko - Twisting Nether"] = "Default",
		["Nyanporo - Blackmoore"] = "Default",
		["Nedoka - Antonidas"] = "Default",
	},
	["profiles"] = {
		["MyNewProfile"] = {
			["target_highlight"] = false,
			["aura_height"] = 20,
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1537884697,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 399,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1539013601,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1550151794,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 391,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538429739,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1550151761,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 570,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1550151769,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 377,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1550151754,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 107,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Icon"] = 135024,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1550156096,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 162,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["SpellIds"] = {
					},
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1539015649,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201849,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 190,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1539187387,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543250950,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Icon"] = 841383,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [15]
			},
			["aura_timer_text_color"] = {
				nil, -- [1]
				0.964705882352941, -- [2]
				0.925490196078432, -- [3]
			},
			["target_indicator"] = "NONE",
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 54,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1550151943,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 46,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1550151941,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\ICONS\\Spell_Shadow_ShadowWordPain",
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 61,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1550158582,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 242,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1550194185,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 227,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1550158582,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 52,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1550194185,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 86,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CurrentTarget = false\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n        if (unitFrame.namePlateUnitName) then end\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1548118096,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 241,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1550188580,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [15]
				{
					["Enabled"] = false,
					["Revision"] = 23,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --added this event just to run the constructor script\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --insert here the font you want to change then /reeload\n    --after the reload, check if the font has changed and disable this script\n    \n    local FONT = \"Accidental Presidency\"\n    \n    local profile = Plater.db.profile\n    local actorTables = profile.plate_config\n    \n    for plateType, plateTable in pairs (actorTables) do\n        \n        plateTable.actorname_text_font = FONT\n        plateTable.spellname_text_font = FONT\n        plateTable.spellpercent_text_font = FONT\n        plateTable.level_text_font = FONT\n        plateTable.percent_text_font = FONT\n        plateTable.big_actortitle_text_font = FONT\n        plateTable.big_actorname_text_font = FONT\n        plateTable.power_percent_text_font = FONT\n        \n    end\n    \n    profile.castbar_target_font = FONT\n    profile.aura_timer_text_font = FONT    \n    profile.aura_stack_font = FONT    \n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Edit the Constructor script setting the font you want in the FONT = \"\", then /reload.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --added this event just to run the constructor script\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --insert here the font you want to change then /reeload\n    --after the reload, check if the font has changed and disable this script\n    \n    local FONT = \"Accidental Presidency\"\n    \n    local profile = Plater.db.profile\n    local actorTables = profile.plate_config\n    \n    for plateType, plateTable in pairs (actorTables) do\n        \n        plateTable.actorname_text_font = FONT\n        plateTable.spellname_text_font = FONT\n        plateTable.spellpercent_text_font = FONT\n        plateTable.level_text_font = FONT\n        plateTable.percent_text_font = FONT\n        plateTable.big_actortitle_text_font = FONT\n        plateTable.big_actorname_text_font = FONT\n        plateTable.power_percent_text_font = FONT\n        \n    end\n    \n    profile.castbar_target_font = FONT\n    profile.aura_timer_text_font = FONT    \n    profile.aura_stack_font = FONT    \n    \nend\n\n\n",
					},
					["Time"] = 1550188578,
					["PlaterCore"] = 1,
					["Name"] = "Change All Fonts",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 134331,
					["LastHookEdited"] = "Constructor",
				}, -- [16]
				{
					["Enabled"] = true,
					["Revision"] = 47,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                auraIcon.TimerText:SetAlpha (envTable.Alpha.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                auraIcon.TimerText:SetAlpha (envTable.Alpha.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n                auraIcon.TimerText:SetAlpha (envTable.Alpha.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    envTable.Alpha = {\n        critical = 1,\n        warning = 0.8,\n        okay = 0.7,\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Change the color of the aura timer by it's time left",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auras = unitFrame.BuffFrame.PlaterBuffList\n    \n    for _, auraIcon in ipairs (auras) do\n        if (auraIcon:IsVisible()) then\n            if (auraIcon.RemainingTime < envTable.Timers.critical) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\n                auraIcon.TimerText:SetAlpha (envTable.Alpha.critical)\n                \n            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\n                auraIcon.TimerText:SetAlpha (envTable.Alpha.warning)\n                \n            else\n                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\n                auraIcon.TimerText:SetAlpha (envTable.Alpha.okay)\n            end \n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --colors for each time bracket\n    envTable.Colors = {\n        critical = \"red\",\n        warning = \"yellow\",\n        okay = \"white\",\n    }\n    \n    envTable.Alpha = {\n        critical = 1,\n        warning = 0.8,\n        okay = 0.7,\n    }\n    \n    --time amount to enter in warning or critical state\n    envTable.Timers = {\n        critical = 4.9,\n        warning = 8,\n    }\n    \nend\n\n\n",
					},
					["Name"] = "Paint Aura Timers",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Nameplate Updated",
					["Time"] = 1550193812,
					["Icon"] = "Interface\\Timer\\Challenges-Logo",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
				}, -- [17]
				{
					["Enabled"] = true,
					["Revision"] = 128,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = true\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    --show cast icon\n    envTable.ShowIcon = true\n    --anchor icon on what side\n    envTable.IconAnchor = \"left\" --accep 'left' 'right'\n    --fine tune the size of the icon\n    envTable.IconSizeOffset = 1\n    \n    --shield for non interruptible casts\n    envTable.ShowShield = true\n    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\n    envTable.ShieldDesaturated = true\n    envTable.ShieldColor = {1, 1, 1 ,1}\n    envTable.ShieldSize = {10, 12}\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local shield = castBar.BorderShield\n        \n        if (envTable.ShowIcon) then\n            icon:ClearAllPoints()\n            \n            if (envTable.IconAnchor == \"left\") then\n                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \n                \n            elseif (envTable.IconAnchor == \"right\") then\n                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\n                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\n                \n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n            \n        else\n            icon:Hide()\n            \n        end\n        \n        if (envTable.ShowShield and not castBar.canInterrupt) then\n            shield:Show()\n            shield:SetAlpha (1)\n            shield:SetTexCoord (0, 1, 0, 1)\n            shield:SetVertexColor (1, 1, 1, 1)\n            \n            shield:SetTexture (envTable.ShieldTexture)\n            shield:SetDesaturated (envTable.ShieldDesaturated)\n            \n            if (not envTable.ShieldDesaturated) then\n                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\n            end\n            \n            shield:SetSize (unpack (envTable.ShieldSize))\n            \n            shield:ClearAllPoints()\n            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\n            \n        else\n            shield:Hide()\n            \n        end\n        \n    end\nend",
					},
					["Name"] = "Cast Icon Anchor",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Icon"] = "Interface\\Buttons\\UI-Quickslot2",
					["Time"] = 1550194192,
				}, -- [18]
				{
					["Enabled"] = true,
					["Revision"] = 773,
					["HooksTemp"] = {
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBarSlices) then\n        for _, sliceSegment in ipairs (unitFrame.healthBarSlices) do\n            sliceSegment:Hide()\n        end\n        \n        unitFrame.healthBar.background:SetAlpha (1)\n        unitFrame.healthBar.barTexture:SetAlpha (1) \n    end\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --override the update frequency to run every tick\n    local tickFrame = unitFrame:GetParent().OnTickFrame\n    tickFrame.ThrottleUpdate = -1\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    --check if the max value has changed\n    local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n    if (maxHealth ~= envTable.MaxValue) then\n        envTable.UpdateAllSegments (unitFrame)\n        return\n    end\n    \n    --check if the nameplate is already animating and update the animation position\n    if (envTable.RunningAnimation) then\n        envTable.UpdateAnimation (unitFrame)\n        return\n    end\n    \n    if (envTable.CurrentValue ~= unitFrame.healthBar:GetValue()) then\n        envTable.StartAnimation (unitFrame, unitFrame.healthBar:GetValue())\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --refresh all the segment parts\n    envTable.UpdateAllSegments (unitFrame)\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --lines which starts with a double dash -- are comments and aren't part of the script\n    \n    --you also might want to:\n    --adjust the black nameplate border (General Settings > Border Color)\n    --adjust the background color to zero (General Settings > Health Bar Background Color and Alpha)\n    --disable the target shading at the Target tab\n    --adjust the target overlay at the Target tab to zero\n    \n    --settings:\n    \n    --which texture it should use\n    envTable.Texture = [[Interface\\AddOns\\Plater\\images\\segment_texture_3]]\n    \n    --shear amount (how much the animation texture leans)\n    envTable.Shearing = 0.20\n    \n    --amount of segments the healthbar will have\n    --modifying this value require a /reload\n    envTable.SegmentsAmount = 10\n    \n    --animation speed (movement left <> right)\n    envTable.AnimationSpeed = 0.75\n    \n    --depleted segment animation settings (when a block reaches zero health)\n    --modifying this value require a /reload\n    envTable.AnimationSettings = {\n        speed = 0.4,\n        rotation = 0, \n        x = 7,\n        y = 1,\n        scaleX = 1,\n        scaleY = 1.6\n    }\n    \n    --end of settings\n    \n    envTable.OnStartDepletedAnimation = function (self)\n        local texture = self:GetParent():GetCapsule()\n        local segmentBar = texture:GetParent():GetCapsule()\n        texture:Show()\n        texture.vertexcolor = {segmentBar:GetVertexColor()}\n        texture.texture = envTable.Texture\n    end\n    \n    envTable.OnEndDepletedAnimation = function (self)\n        self:GetParent():Hide()\n    end\n    \n    --declaring a default value for the max value\n    envTable.MaxValue = 0        \n    \n    --cooldown to update the nameplate color\n    envTable.LastColorUpdate = 0        \n    \n    --this function creates the segments part\n    function envTable.InitializeBars()\n        if (not unitFrame.healthBarSlices) then\n            unitFrame.healthBarSlices = {}\n            \n            for i = 1, envTable.SegmentsAmount do\n                local statusBar = Plater:CreateBar (unitFrame)\n                statusBar:EnableMouse (false)\n                tinsert (unitFrame.healthBarSlices, statusBar)\n                \n                statusBar.segmentTexture = statusBar:CreateTexture (nil, \"artwork\")\n                statusBar.segmentTexture:SetTexture (envTable.Texture)\n                statusBar.segmentTexture:SetPoint (\"center\")\n                \n                local textureAnimation = Plater:CreateImage (statusBar)\n                textureAnimation:SetAllPoints()\n                textureAnimation:Hide()\n                textureAnimation:SetTexture (envTable.Texture)\n                statusBar.textureAnimation = textureAnimation\n                \n                statusBar.depletedAnimation = Plater:CreateAnimationHub (textureAnimation, envTable.OnStartDepletedAnimation, envTable.OnEndDepletedAnimation)\n                \n                local speed = envTable.AnimationSettings.speed\n                local rotation = envTable.AnimationSettings.rotation\n                local x = envTable.AnimationSettings.x\n                local y = envTable.AnimationSettings.y\n                local scaleX =envTable.AnimationSettings.scaleX\n                local scaleY = envTable.AnimationSettings.scaleY\n                \n                Plater:CreateAnimation (statusBar.depletedAnimation, \"rotation\", 1, speed, rotation)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"translation\", 1, speed, x, y)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"alpha\", 1, speed, 1, 0)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"scale\", 1, speed, 1, 1, scaleX, scaleY)\n                \n                local textureBackground = Plater:CreateImage (statusBar)\n                textureBackground:SetAllPoints()\n                textureBackground:SetDrawLayer (\"background\")                \n                statusBar.textureBackground = textureBackground\n            end\n        end\n    end\n    \n    envTable.InitializeBars()\n    \n    function envTable.SetSegmentPercent (segmentSlice, currentValue)\n        \n        segmentSlice:SetValue (currentValue)\n        \n        local percent = DetailsFramework:GetRangePercent (segmentSlice.minValue, segmentSlice.maxValue, currentValue) \n        percent = DetailsFramework:Clamp (0, 1, percent)\n        \n        local texture = segmentSlice.segmentTexture\n        local width = segmentSlice:GetWidth()\n        local shear\n        if (percent > 0.98) then\n            shear = 0\n        else\n            shear = envTable.Shearing\n        end\n        \n        local shearingPercent = DetailsFramework:Clamp (0, 1, percent - shear)\n        \n        texture:SetVertexOffset (UPPER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (LOWER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (UPPER_RIGHT_VERTEX, -width * (1 - percent), 0);\n        texture:SetVertexOffset (LOWER_RIGHT_VERTEX, -width * (1 - shearingPercent), 0);\n        \n        texture:SetTexCoord (\n            0, 0, --topleft\n            0, 1, --bottomleft\n            percent, 0, --topright\n            shearingPercent, 1 --bottomright\n        )\n    end\n    \n    function envTable.UpdateAllSegments (unitFrame)\n        \n        local sliceWidth = unitFrame.healthBar:GetWidth() / envTable.SegmentsAmount\n        local sliceHeight = unitFrame.healthBar:GetHeight()\n        local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n        local healthPerSlice = maxHealth / envTable.SegmentsAmount\n        local currentValue = unitFrame.healthBar:GetValue()        \n        \n        envTable.MaxValue = maxHealth\n        \n        for i = 1, envTable.SegmentsAmount do\n            \n            local slice = unitFrame.healthBarSlices [i]\n            slice.texture = \"\"\n            slice.textureBackground.texture = envTable.Texture\n            slice.textureBackground.vertexcolor = {.1, .1, .1, .5}\n            slice:Show()\n            \n            slice.segmentTexture:SetSize (sliceWidth, sliceHeight)\n            slice.segmentTexture:SetTexture (envTable.Texture)\n            \n            slice:SetSize (sliceWidth, sliceHeight)\n            slice:SetPoint (\"left\", unitFrame.healthBar, \"left\", (i - 1) * sliceWidth, 0)            \n            slice:SetFrameLevel (unitFrame.healthBar:GetFrameLevel() - 1)\n            \n            slice.minValue = (healthPerSlice * (i - 1)) + 0.1\n            slice.maxValue = healthPerSlice * i\n            slice:SetMinMaxValues (slice.minValue, slice.maxValue)\n            \n            slice.animationCooldown = -1\n            \n            --set and save the current value\n            slice.currentValue = currentValue\n            \n            envTable.SetSegmentPercent (slice, currentValue)\n            \n            slice.IsAnimating = false\n        end    \n        \n        --reset the animation\n        envTable.RunningAnimation = false\n        --reset which segment is currently being animated\n        envTable.SegmentBeingAnimated = 0\n        \n        --what is the current value and how much value has each segment\n        envTable.CurrentValue = currentValue\n        envTable.ValuePerSegment = healthPerSlice\n        \n        --cooldown to update the nameplate color\n        envTable.LastColorUpdate = 0\n        \n        \n    end\n    \n    function envTable.StartAnimation (unitFrame, endValue)\n        envTable.RunningAnimation = true\n        \n        --in which segment the value is currently in\n        --        local currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        \n        local currentSegment\n        \n        for i = 1, envTable.SegmentsAmount do\n            local segment = unitFrame.healthBarSlices [i]\n            if (envTable.CurrentValue > segment.minValue and envTable.CurrentValue <= segment.maxValue) then\n                currentSegment = i\n                break\n            end \n        end\n        \n        if (not currentSegment) then\n            currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        end\n        \n        envTable.SegmentBeingAnimated = currentSegment\n        \n        --true with the animation goes down (decreasing) false if goes up (increasing)\n        envTable.AnimationDirection = envTable.CurrentValue > endValue\n        \n        --save the value where the animation ends\n        envTable.EndValue = endValue\n        \n        envTable.UpdateAnimation (unitFrame)\n        \n        unitFrame.healthBar.background:SetAlpha (0)\n        unitFrame.healthBar.barTexture:SetAlpha (0)\n    end\n    \n    function envTable.UpdateAnimation (unitFrame)\n        local deltaSeconds = GetWorldDeltaSeconds()\n        local currentSegment = unitFrame.healthBarSlices [envTable.SegmentBeingAnimated]\n        local currentValue = envTable.CurrentValue\n        local amountToMove = envTable.MaxValue * deltaSeconds * envTable.AnimationSpeed\n        \n        --check if the endValue has been updated\n        if (envTable.EndValue ~= unitFrame.healthBar:GetValue()) then\n            --the end value got changed\n            envTable.EndValue = unitFrame.healthBar:GetValue()\n        end\n        \n        if (envTable.AnimationDirection) then --moving right to left\n            amountToMove = -amountToMove\n        end\n        \n        local newValue = Clamp (currentValue + amountToMove, 0, envTable.MaxValue)\n        --currentSegment:SetValue (newValue)\n        envTable.SetSegmentPercent (currentSegment, newValue)\n        \n        envTable.CurrentValue = newValue\n        \n        --moving right to left        \n        if (envTable.AnimationDirection) then \n            \n            --check if needs to jump to the next segment\n            if (newValue < currentSegment.minValue) then\n                --segment is depleted, jump to the next segment\n                if (currentSegment.animationCooldown < GetTime()) then\n                    currentSegment.depletedAnimation:Play()\n                end\n                \n                currentSegment.animationCooldown = GetTime() + 5\n                envTable.SegmentBeingAnimated = max (envTable.SegmentBeingAnimated - 1, 1)\n            end\n            \n            --check if the animation is over\n            if (newValue <= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        else\n            \n            --the animation is growing (left to right)\n            --check if the animation is over\n            \n            --check if needs to jump to the next segment\n            if (newValue > currentSegment.maxValue) then\n                --segment got full, jump to the next segment\n                --currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = min (envTable.SegmentBeingAnimated + 1, envTable.SegmentsAmount)\n                \n            end\n            \n            if (newValue >= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        end\n    end\n    \n    function envTable.UpdateNameplateColor (unitFrame)\n        \n        envTable.LastColorUpdate = envTable.LastColorUpdate - GetWorldDeltaSeconds()\n        \n        if (envTable.LastColorUpdate < 0) then\n            envTable.LastColorUpdate = 0.3\n            \n            local r, g, b =unitFrame.healthBar:GetColor()\n            for i = 1, envTable.SegmentsAmount do\n                local slice = unitFrame.healthBarSlices [i]            \n                slice.statusbar:SetStatusBarColor (r ,g ,b, 0)\n                slice.segmentTexture:SetVertexColor (r, g, b, 1)\n            end\n            \n            unitFrame.healthBar.background:SetAlpha (0)\n            unitFrame.healthBar.barTexture:SetAlpha (0) \n        end\n        \n    end\n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --override the update frequency to run every tick\n    local tickFrame = unitFrame:GetParent().OnTickFrame\n    tickFrame.ThrottleUpdate = -1\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    --check if the max value has changed\n    local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n    if (maxHealth ~= envTable.MaxValue) then\n        envTable.UpdateAllSegments (unitFrame)\n        return\n    end\n    \n    --check if the nameplate is already animating and update the animation position\n    if (envTable.RunningAnimation) then\n        envTable.UpdateAnimation (unitFrame)\n        return\n    end\n    \n    if (envTable.CurrentValue ~= unitFrame.healthBar:GetValue()) then\n        envTable.StartAnimation (unitFrame, unitFrame.healthBar:GetValue())\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBarSlices) then\n        for _, sliceSegment in ipairs (unitFrame.healthBarSlices) do\n            sliceSegment:Hide()\n        end\n        \n        unitFrame.healthBar.background:SetAlpha (1)\n        unitFrame.healthBar.barTexture:SetAlpha (1) \n    end\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --refresh all the segment parts\n    envTable.UpdateAllSegments (unitFrame)\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --lines which starts with a double dash -- are comments and aren't part of the script\n    \n    --you also might want to:\n    --adjust the black nameplate border (General Settings > Border Color)\n    --adjust the background color to zero (General Settings > Health Bar Background Color and Alpha)\n    --disable the target shading at the Target tab\n    --adjust the target overlay at the Target tab to zero\n    \n    --settings:\n    \n    --which texture it should use\n    envTable.Texture = [[Interface\\AddOns\\Plater\\images\\segment_texture_3]]\n    \n    --shear amount (how much the animation texture leans)\n    envTable.Shearing = 0.20\n    \n    --amount of segments the healthbar will have\n    --modifying this value require a /reload\n    envTable.SegmentsAmount = 10\n    \n    --animation speed (movement left <> right)\n    envTable.AnimationSpeed = 0.75\n    \n    --depleted segment animation settings (when a block reaches zero health)\n    --modifying this value require a /reload\n    envTable.AnimationSettings = {\n        speed = 0.4,\n        rotation = 0, \n        x = 7,\n        y = 1,\n        scaleX = 1,\n        scaleY = 1.6\n    }\n    \n    --end of settings\n    \n    envTable.OnStartDepletedAnimation = function (self)\n        local texture = self:GetParent():GetCapsule()\n        local segmentBar = texture:GetParent():GetCapsule()\n        texture:Show()\n        texture.vertexcolor = {segmentBar:GetVertexColor()}\n        texture.texture = envTable.Texture\n    end\n    \n    envTable.OnEndDepletedAnimation = function (self)\n        self:GetParent():Hide()\n    end\n    \n    --declaring a default value for the max value\n    envTable.MaxValue = 0        \n    \n    --cooldown to update the nameplate color\n    envTable.LastColorUpdate = 0        \n    \n    --this function creates the segments part\n    function envTable.InitializeBars()\n        if (not unitFrame.healthBarSlices) then\n            unitFrame.healthBarSlices = {}\n            \n            for i = 1, envTable.SegmentsAmount do\n                local statusBar = Plater:CreateBar (unitFrame)\n                statusBar:EnableMouse (false)\n                tinsert (unitFrame.healthBarSlices, statusBar)\n                \n                statusBar.segmentTexture = statusBar:CreateTexture (nil, \"artwork\")\n                statusBar.segmentTexture:SetTexture (envTable.Texture)\n                statusBar.segmentTexture:SetPoint (\"center\")\n                \n                local textureAnimation = Plater:CreateImage (statusBar)\n                textureAnimation:SetAllPoints()\n                textureAnimation:Hide()\n                textureAnimation:SetTexture (envTable.Texture)\n                statusBar.textureAnimation = textureAnimation\n                \n                statusBar.depletedAnimation = Plater:CreateAnimationHub (textureAnimation, envTable.OnStartDepletedAnimation, envTable.OnEndDepletedAnimation)\n                \n                local speed = envTable.AnimationSettings.speed\n                local rotation = envTable.AnimationSettings.rotation\n                local x = envTable.AnimationSettings.x\n                local y = envTable.AnimationSettings.y\n                local scaleX =envTable.AnimationSettings.scaleX\n                local scaleY = envTable.AnimationSettings.scaleY\n                \n                Plater:CreateAnimation (statusBar.depletedAnimation, \"rotation\", 1, speed, rotation)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"translation\", 1, speed, x, y)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"alpha\", 1, speed, 1, 0)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"scale\", 1, speed, 1, 1, scaleX, scaleY)\n                \n                local textureBackground = Plater:CreateImage (statusBar)\n                textureBackground:SetAllPoints()\n                textureBackground:SetDrawLayer (\"background\")                \n                statusBar.textureBackground = textureBackground\n            end\n        end\n    end\n    \n    envTable.InitializeBars()\n    \n    function envTable.SetSegmentPercent (segmentSlice, currentValue)\n        \n        segmentSlice:SetValue (currentValue)\n        \n        local percent = DetailsFramework:GetRangePercent (segmentSlice.minValue, segmentSlice.maxValue, currentValue) \n        percent = DetailsFramework:Clamp (0, 1, percent)\n        \n        local texture = segmentSlice.segmentTexture\n        local width = segmentSlice:GetWidth()\n        local shear\n        if (percent > 0.98) then\n            shear = 0\n        else\n            shear = envTable.Shearing\n        end\n        \n        local shearingPercent = DetailsFramework:Clamp (0, 1, percent - shear)\n        \n        texture:SetVertexOffset (UPPER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (LOWER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (UPPER_RIGHT_VERTEX, -width * (1 - percent), 0);\n        texture:SetVertexOffset (LOWER_RIGHT_VERTEX, -width * (1 - shearingPercent), 0);\n        \n        texture:SetTexCoord (\n            0, 0, --topleft\n            0, 1, --bottomleft\n            percent, 0, --topright\n            shearingPercent, 1 --bottomright\n        )\n    end\n    \n    function envTable.UpdateAllSegments (unitFrame)\n        \n        local sliceWidth = unitFrame.healthBar:GetWidth() / envTable.SegmentsAmount\n        local sliceHeight = unitFrame.healthBar:GetHeight()\n        local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n        local healthPerSlice = maxHealth / envTable.SegmentsAmount\n        local currentValue = unitFrame.healthBar:GetValue()        \n        \n        envTable.MaxValue = maxHealth\n        \n        for i = 1, envTable.SegmentsAmount do\n            \n            local slice = unitFrame.healthBarSlices [i]\n            slice.texture = \"\"\n            slice.textureBackground.texture = envTable.Texture\n            slice.textureBackground.vertexcolor = {.1, .1, .1, .5}\n            slice:Show()\n            \n            slice.segmentTexture:SetSize (sliceWidth, sliceHeight)\n            slice.segmentTexture:SetTexture (envTable.Texture)\n            \n            slice:SetSize (sliceWidth, sliceHeight)\n            slice:SetPoint (\"left\", unitFrame.healthBar, \"left\", (i - 1) * sliceWidth, 0)            \n            slice:SetFrameLevel (unitFrame.healthBar:GetFrameLevel() - 1)\n            \n            slice.minValue = (healthPerSlice * (i - 1)) + 0.1\n            slice.maxValue = healthPerSlice * i\n            slice:SetMinMaxValues (slice.minValue, slice.maxValue)\n            \n            slice.animationCooldown = -1\n            \n            --set and save the current value\n            slice.currentValue = currentValue\n            \n            envTable.SetSegmentPercent (slice, currentValue)\n            \n            slice.IsAnimating = false\n        end    \n        \n        --reset the animation\n        envTable.RunningAnimation = false\n        --reset which segment is currently being animated\n        envTable.SegmentBeingAnimated = 0\n        \n        --what is the current value and how much value has each segment\n        envTable.CurrentValue = currentValue\n        envTable.ValuePerSegment = healthPerSlice\n        \n        --cooldown to update the nameplate color\n        envTable.LastColorUpdate = 0\n        \n        \n    end\n    \n    function envTable.StartAnimation (unitFrame, endValue)\n        envTable.RunningAnimation = true\n        \n        --in which segment the value is currently in\n        --        local currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        \n        local currentSegment\n        \n        for i = 1, envTable.SegmentsAmount do\n            local segment = unitFrame.healthBarSlices [i]\n            if (envTable.CurrentValue > segment.minValue and envTable.CurrentValue <= segment.maxValue) then\n                currentSegment = i\n                break\n            end \n        end\n        \n        if (not currentSegment) then\n            currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        end\n        \n        envTable.SegmentBeingAnimated = currentSegment\n        \n        --true with the animation goes down (decreasing) false if goes up (increasing)\n        envTable.AnimationDirection = envTable.CurrentValue > endValue\n        \n        --save the value where the animation ends\n        envTable.EndValue = endValue\n        \n        envTable.UpdateAnimation (unitFrame)\n        \n        unitFrame.healthBar.background:SetAlpha (0)\n        unitFrame.healthBar.barTexture:SetAlpha (0)\n    end\n    \n    function envTable.UpdateAnimation (unitFrame)\n        local deltaSeconds = GetWorldDeltaSeconds()\n        local currentSegment = unitFrame.healthBarSlices [envTable.SegmentBeingAnimated]\n        local currentValue = envTable.CurrentValue\n        local amountToMove = envTable.MaxValue * deltaSeconds * envTable.AnimationSpeed\n        \n        --check if the endValue has been updated\n        if (envTable.EndValue ~= unitFrame.healthBar:GetValue()) then\n            --the end value got changed\n            envTable.EndValue = unitFrame.healthBar:GetValue()\n        end\n        \n        if (envTable.AnimationDirection) then --moving right to left\n            amountToMove = -amountToMove\n        end\n        \n        local newValue = Clamp (currentValue + amountToMove, 0, envTable.MaxValue)\n        --currentSegment:SetValue (newValue)\n        envTable.SetSegmentPercent (currentSegment, newValue)\n        \n        envTable.CurrentValue = newValue\n        \n        --moving right to left        \n        if (envTable.AnimationDirection) then \n            \n            --check if needs to jump to the next segment\n            if (newValue < currentSegment.minValue) then\n                --segment is depleted, jump to the next segment\n                if (currentSegment.animationCooldown < GetTime()) then\n                    currentSegment.depletedAnimation:Play()\n                end\n                \n                currentSegment.animationCooldown = GetTime() + 5\n                envTable.SegmentBeingAnimated = max (envTable.SegmentBeingAnimated - 1, 1)\n            end\n            \n            --check if the animation is over\n            if (newValue <= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        else\n            \n            --the animation is growing (left to right)\n            --check if the animation is over\n            \n            --check if needs to jump to the next segment\n            if (newValue > currentSegment.maxValue) then\n                --segment got full, jump to the next segment\n                --currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = min (envTable.SegmentBeingAnimated + 1, envTable.SegmentsAmount)\n                \n            end\n            \n            if (newValue >= envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        end\n    end\n    \n    function envTable.UpdateNameplateColor (unitFrame)\n        \n        envTable.LastColorUpdate = envTable.LastColorUpdate - GetWorldDeltaSeconds()\n        \n        if (envTable.LastColorUpdate < 0) then\n            envTable.LastColorUpdate = 0.3\n            \n            local r, g, b =unitFrame.healthBar:GetColor()\n            for i = 1, envTable.SegmentsAmount do\n                local slice = unitFrame.healthBarSlices [i]            \n                slice.statusbar:SetStatusBarColor (r ,g ,b, 0)\n                slice.segmentTexture:SetVertexColor (r, g, b, 1)\n            end\n            \n            unitFrame.healthBar.background:SetAlpha (0)\n            unitFrame.healthBar.barTexture:SetAlpha (0) \n        end\n        \n    end\n    \nend",
					},
					["Time"] = 1550241687,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\FriendsFrame\\Battlenet-Overwatchicon",
					["Name"] = "Overwatch Nameplate",
				}, -- [19]
			},
			["last_news_time"] = 1550158598,
			["aura_height_personal"] = 19,
			["aura_width"] = 22,
			["target_shady_enabled"] = false,
			["health_statusbar_bgcolor"] = {
				0.474509803921569, -- [1]
				0.00784313725490196, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["aura_stack_color"] = {
				nil, -- [1]
				0.945098039215686, -- [2]
				0.937254901960784, -- [3]
			},
			["script_data_trash"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \nend\n\n\n",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["ScriptType"] = 1,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1550151867,
					["Temp_ConstructorCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 3,
					["Author"] = "Ditador-Azralon",
					["Desc"] = "",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["__TrashAt"] = 1550151870,
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "test",
				}, -- [1]
			},
			["aura_cooldown_show_swipe"] = false,
			["pet_width_scale"] = 0.999999940395355,
			["plate_config"] = {
				["player"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["percent_text_font"] = "Accidental Presidency",
					["spellpercent_text_font"] = "Accidental Presidency",
					["power_percent_text_size"] = 8,
					["mana_incombat"] = {
						nil, -- [1]
						6, -- [2]
					},
					["spellname_text_font"] = "Accidental Presidency",
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						nil, -- [1]
						6, -- [2]
					},
					["mana"] = {
						nil, -- [1]
						6, -- [2]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["spellname_text_anchor"] = {
						["side"] = 3,
					},
					["big_actorname_text_font"] = "Accidental Presidency",
					["cast_incombat"] = {
						nil, -- [1]
						6, -- [2]
					},
					["level_text_font"] = "Accidental Presidency",
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 4,
					},
				},
				["friendlyplayer"] = {
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
					},
					["percent_text_ooc"] = true,
					["big_actortitle_text_size"] = 10,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 2,
					},
					["actorname_text_color"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.867896929383278, -- [4]
					},
					["percent_text_alpha"] = 0.899999976158142,
					["big_actortitle_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["cast_incombat"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellname_text_outline"] = "OUTLINE",
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["spellname_text_anchor"] = {
						["side"] = 3,
					},
					["big_actortitle_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["percent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_font"] = "Accidental Presidency",
					["percent_text_color"] = {
						0.8, -- [1]
						0.835294117647059, -- [2]
						0.854901960784314, -- [3]
					},
					["spellname_text_font"] = "Accidental Presidency",
					["big_actorname_text_outline"] = "OUTLINE",
					["big_actorname_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana_incombat"] = {
						nil, -- [1]
						4, -- [2]
					},
					["big_actorname_text_font"] = "Accidental Presidency",
					["all_names"] = true,
					["spellpercent_text_size"] = 11,
					["level_text_alpha"] = 0.199999988079071,
					["actorname_text_outline"] = "NONE",
					["actorname_text_anchor"] = {
						["y"] = 1,
						["side"] = 1,
					},
					["big_actortitle_text_outline"] = "OUTLINE",
					["percent_text_size"] = 10,
					["actorname_text_spacing"] = 9,
					["percent_text_font"] = "Accidental Presidency",
					["buff_frame_y_offset"] = 0,
					["big_actorname_text_size"] = 10,
					["quest_enabled"] = true,
					["percent_text_outline"] = "NONE",
					["actorname_text_font"] = "Accidental Presidency",
					["health_incombat"] = {
						120, -- [1]
						16, -- [2]
					},
					["spellname_text_size"] = 11,
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["spellpercent_text_enabled"] = true,
					["percent_text_enabled"] = true,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["level_text_enabled"] = true,
				},
				["friendlynpc"] = {
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["percent_text_ooc"] = true,
					["big_actortitle_text_size"] = 10,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 2,
					},
					["actorname_text_color"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.867896929383278, -- [4]
					},
					["percent_text_alpha"] = 0.899999976158142,
					["cast_incombat"] = {
						nil, -- [1]
						8, -- [2]
					},
					["spellname_text_outline"] = "OUTLINE",
					["spellname_text_anchor"] = {
						["side"] = 3,
					},
					["percent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_font"] = "Accidental Presidency",
					["percent_text_color"] = {
						0.8, -- [1]
						0.835294117647059, -- [2]
						0.854901960784314, -- [3]
					},
					["actorname_text_font"] = "Accidental Presidency",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["power_percent_text_font"] = "Accidental Presidency",
					["all_names"] = true,
					["level_text_alpha"] = 0.199999988079071,
					["percent_text_size"] = 10,
					["actorname_text_spacing"] = 9,
					["percent_text_font"] = "Accidental Presidency",
					["percent_text_outline"] = "NONE",
					["spellname_text_font"] = "Accidental Presidency",
					["big_actorname_text_font"] = "Accidental Presidency",
					["actorname_text_anchor"] = {
						["y"] = 1,
						["side"] = 1,
					},
					["spellname_text_size"] = 11,
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["spellpercent_text_enabled"] = true,
					["big_actorname_text_size"] = 10,
					["spellpercent_text_size"] = 11,
					["percent_text_enabled"] = true,
					["level_text_enabled"] = true,
				},
				["enemyplayer"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Accidental Presidency",
					["level_text_size"] = 8,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["spellpercent_text_size"] = 11,
					["big_actortitle_text_size"] = 10,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 2,
					},
					["actorname_text_color"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.867896929383278, -- [4]
					},
					["percent_text_alpha"] = 0.899999976158142,
					["cast_incombat"] = {
						nil, -- [1]
						8, -- [2]
					},
					["spellname_text_outline"] = "OUTLINE",
					["spellname_text_anchor"] = {
						["side"] = 3,
					},
					["percent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_font"] = "Accidental Presidency",
					["percent_text_color"] = {
						0.8, -- [1]
						0.835294117647059, -- [2]
						0.854901960784314, -- [3]
					},
					["actorname_text_font"] = "Accidental Presidency",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 10,
					["power_percent_text_font"] = "Accidental Presidency",
					["all_names"] = true,
					["actorname_text_anchor"] = {
						["y"] = 1,
						["side"] = 1,
					},
					["percent_text_size"] = 10,
					["actorname_text_spacing"] = 9,
					["percent_text_font"] = "Accidental Presidency",
					["quest_enabled"] = true,
					["big_actorname_text_font"] = "Accidental Presidency",
					["spellname_text_size"] = 11,
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["percent_show_health"] = false,
					["percent_text_outline"] = "NONE",
					["level_text_alpha"] = 0.199999988079071,
					["spellname_text_font"] = "Accidental Presidency",
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
				},
				["enemynpc"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["spellpercent_text_font"] = "Accidental Presidency",
					["actorname_text_size"] = 10,
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						120, -- [1]
						8, -- [2]
					},
					["level_text_alpha"] = 0.199999988079071,
					["actorname_text_anchor"] = {
						["y"] = 1,
						["side"] = 1,
					},
					["percent_show_health"] = false,
					["spellpercent_text_anchor"] = {
						["side"] = 5,
						["x"] = 2,
					},
					["actorname_text_color"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.867896929383278, -- [4]
					},
					["percent_text_alpha"] = 0.899999976158142,
					["percent_text_font"] = "Accidental Presidency",
					["power_percent_text_font"] = "Accidental Presidency",
					["cast_incombat"] = {
						nil, -- [1]
						8, -- [2]
					},
					["percent_text_outline"] = "NONE",
					["percent_text_size"] = 10,
					["big_actorname_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
					["spellname_text_size"] = 11,
					["health"] = {
						120, -- [1]
						14, -- [2]
					},
					["spellname_text_anchor"] = {
						["side"] = 3,
					},
					["actorname_text_spacing"] = 9,
					["percent_text_anchor"] = {
						["side"] = 5,
						["x"] = 1,
					},
					["level_text_font"] = "Accidental Presidency",
					["percent_text_color"] = {
						0.8, -- [1]
						0.835294117647059, -- [2]
						0.854901960784314, -- [3]
					},
				},
			},
			["indicator_raidmark_anchor"] = {
				["y"] = 4,
			},
			["aura_y_offset"] = 10,
			["aura_stack_font"] = "Accidental Presidency",
			["hook_data_trash"] = {
				{
					["Enabled"] = true,
					["Revision"] = 2,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    \nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    \nend\n\n\n",
					},
					["__TrashAt"] = 1550158657,
					["Name"] = "New Script",
					["PlaterCore"] = 1,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1550158655,
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 736,
					["HooksTemp"] = {
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBarSlices) then\n        for _, sliceSegment in ipairs (unitFrame.healthBarSlices) do\n            sliceSegment:Hide()\n        end\n        \n        unitFrame.healthBar.background:SetAlpha (1)\n        unitFrame.healthBar.barTexture:SetAlpha (1) \n    end\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --override the update frequency to run every tick\n    local tickFrame = unitFrame:GetParent().OnTickFrame\n    tickFrame.ThrottleUpdate = -1\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    --check if the max value has changed\n    local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n    if (maxHealth ~= envTable.MaxValue) then\n        envTable.UpdateAllSegments (unitFrame)\n        return\n    end\n    \n    --check if the nameplate is already animating and update the animation position\n    if (envTable.RunningAnimation) then\n        envTable.UpdateAnimation (unitFrame)\n        return\n    end\n    \n    if (envTable.CurrentValue ~= unitFrame.healthBar:GetValue()) then\n        envTable.StartAnimation (unitFrame, unitFrame.healthBar:GetValue())\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --refresh all the segment parts\n    envTable.UpdateAllSegments (unitFrame)\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --lines which starts with a double dash -- are comments and aren't part of the script\n    \n    --you also might want to:\n    --adjust the black nameplate border (General Settings > Border Color)\n    --adjust the background color to zero (General Settings > Health Bar Background Color and Alpha)\n    --disable the target shading at the Target tab\n    --adjust the target overlay at the Target tab to zero\n    \n    --settings:\n    \n    --which texture it should use\n    envTable.Texture = [[Interface\\AddOns\\Plater\\images\\segment_texture_3]]\n    \n    --shear amount (how much the texture leans)\n    envTable.Shearing = 0.20\n    \n    --amount of segments the healthbar will have\n    --modifying this value require a /reload\n    envTable.SegmentsAmount = 10\n    \n    --animation speed (movement left <> right)\n    envTable.AnimationSpeed = 0.5\n    \n    --depleted segment animation settings (when a block reaches zero health)\n    --modifying this value require a /reload\n    envTable.AnimationSettings = {\n        speed = 0.4,\n        rotation = 90, \n        x = 15,\n        y = 3,\n    }\n    \n    --end of settings\n    \n    envTable.OnStartDepletedAnimation = function (self)\n        local texture = self:GetParent():GetCapsule()\n        local segmentBar = texture:GetParent():GetCapsule()\n        texture:Show()\n        texture.vertexcolor = {segmentBar:GetVertexColor()}\n        texture.texture = envTable.Texture\n    end\n    \n    envTable.OnEndDepletedAnimation = function (self)\n        self:GetParent():Hide()\n    end\n    \n    --declaring a default value for the max value\n    envTable.MaxValue = 0        \n    \n    --cooldown to update the nameplate color\n    envTable.LastColorUpdate = 0        \n    \n    --this function creates the segments part\n    function envTable.InitializeBars()\n        if (not unitFrame.healthBarSlices) then\n            unitFrame.healthBarSlices = {}\n            \n            for i = 1, envTable.SegmentsAmount do\n                local statusBar = Plater:CreateBar (unitFrame)\n                statusBar:EnableMouse (false)\n                tinsert (unitFrame.healthBarSlices, statusBar)\n                \n                statusBar.segmentTexture = statusBar:CreateTexture (nil, \"artwork\")\n                statusBar.segmentTexture:SetTexture (envTable.Texture)\n                statusBar.segmentTexture:SetPoint (\"center\")\n                \n                local textureAnimation = Plater:CreateImage (statusBar)\n                textureAnimation:SetAllPoints()\n                textureAnimation:Hide()\n                textureAnimation:SetTexture (envTable.Texture)\n                statusBar.textureAnimation = textureAnimation\n                \n                statusBar.depletedAnimation = Plater:CreateAnimationHub (textureAnimation, envTable.OnStartDepletedAnimation, envTable.OnEndDepletedAnimation)\n                \n                local speed = envTable.AnimationSettings.speed\n                local rotation = envTable.AnimationSettings.rotation\n                local x = envTable.AnimationSettings.x\n                local y = envTable.AnimationSettings.y\n                \n                Plater:CreateAnimation (statusBar.depletedAnimation, \"rotation\", 1, speed, rotation)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"translation\", 1, speed, x, y)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"alpha\", 1, speed, 1, 0)\n                \n                local textureBackground = Plater:CreateImage (statusBar)\n                textureBackground:SetAllPoints()\n                textureBackground:SetDrawLayer (\"background\")                \n                statusBar.textureBackground = textureBackground\n            end\n        end\n    end\n    \n    envTable.InitializeBars()\n    \n    function envTable.SetSegmentPercent (segmentSlice, currentValue)\n        \n        segmentSlice:SetValue (currentValue)\n        \n        local percent = DetailsFramework:GetRangePercent (segmentSlice.minValue, segmentSlice.maxValue, currentValue) \n        percent = DetailsFramework:Clamp (0, 1, percent)\n        \n        local texture = segmentSlice.segmentTexture\n        local width = segmentSlice:GetWidth()\n        local shear\n        if (percent > 0.98) then\n            shear = 0\n        else\n            shear = envTable.Shearing\n        end\n        \n        local shearingPercent = DetailsFramework:Clamp (0, 1, percent - shear)\n        \n        texture:SetVertexOffset (UPPER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (LOWER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (UPPER_RIGHT_VERTEX, -width * (1 - percent), 0);\n        texture:SetVertexOffset (LOWER_RIGHT_VERTEX, -width * (1 - shearingPercent), 0);\n        \n        texture:SetTexCoord (\n            0, 0, --topleft\n            0, 1, --bottomleft\n            percent, 0, --topright\n            shearingPercent, 1 --bottomright\n        )\n    end\n    \n    function envTable.UpdateAllSegments (unitFrame)\n        \n        local sliceWidth = unitFrame.healthBar:GetWidth() / envTable.SegmentsAmount\n        local sliceHeight = unitFrame.healthBar:GetHeight()\n        local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n        local healthPerSlice = maxHealth / envTable.SegmentsAmount\n        local currentValue = unitFrame.healthBar:GetValue()        \n        \n        envTable.MaxValue = maxHealth\n        \n        for i = 1, envTable.SegmentsAmount do\n            \n            local slice = unitFrame.healthBarSlices [i]\n            slice.texture = \"\"\n            slice.textureBackground.texture = envTable.Texture\n            slice.textureBackground.vertexcolor = {.1, .1, .1, .5}\n            slice:Show()\n            \n            slice.segmentTexture:SetSize (sliceWidth, sliceHeight)\n            slice.segmentTexture:SetTexture (envTable.Texture)\n            \n            slice:SetSize (sliceWidth, sliceHeight)\n            slice:SetPoint (\"left\", unitFrame.healthBar, \"left\", (i - 1) * sliceWidth, 0)            \n            slice:SetFrameLevel (unitFrame.healthBar:GetFrameLevel() - 1)\n            \n            slice.minValue = healthPerSlice * (i - 1)\n            slice.maxValue = healthPerSlice * i\n            slice:SetMinMaxValues (slice.minValue, slice.maxValue)\n            \n            --set and save the current value\n            slice.currentValue = currentValue\n            \n            envTable.SetSegmentPercent (slice, currentValue)\n            \n            slice.IsAnimating = false\n        end    \n        \n        --reset the animation\n        envTable.RunningAnimation = false\n        --reset which segment is currently being animated\n        envTable.SegmentBeingAnimated = 0\n        \n        --what is the current value and how much value has each segment\n        envTable.CurrentValue = currentValue\n        envTable.ValuePerSegment = healthPerSlice\n        \n        --cooldown to update the nameplate color\n        envTable.LastColorUpdate = 0\n        \n        \n    end\n    \n    function envTable.StartAnimation (unitFrame, endValue)\n        envTable.RunningAnimation = true\n        \n        --in which segment the value is currently in\n        local currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        envTable.SegmentBeingAnimated = currentSegment\n        \n        --true with the animation goes down (decreasing) false if goes up (increasing)\n        envTable.AnimationDirection = envTable.CurrentValue > endValue\n        \n        --save the value where the animation ends\n        envTable.EndValue = endValue\n        \n        envTable.UpdateAnimation (unitFrame)\n        \n        unitFrame.healthBar.background:SetAlpha (0)\n        unitFrame.healthBar.barTexture:SetAlpha (0)\n    end\n    \n    function envTable.UpdateAnimation (unitFrame)\n        local deltaSeconds = GetWorldDeltaSeconds()\n        local currentSegment = unitFrame.healthBarSlices [envTable.SegmentBeingAnimated]\n        local currentValue = envTable.CurrentValue\n        local amountToMove = envTable.MaxValue * deltaSeconds * envTable.AnimationSpeed\n        \n        --check if the endValue has been updated\n        if (envTable.EndValue ~= unitFrame.healthBar:GetValue()) then\n            --the end value got changed\n            envTable.EndValue = unitFrame.healthBar:GetValue()\n        end\n        \n        if (envTable.AnimationDirection) then --moving right to left\n            amountToMove = -amountToMove\n        end\n        \n        local newValue = Clamp (currentValue + amountToMove, 0, envTable.MaxValue)\n        --currentSegment:SetValue (newValue)\n        envTable.SetSegmentPercent (currentSegment, newValue)\n        \n        envTable.CurrentValue = newValue\n        \n        --moving right to left        \n        if (envTable.AnimationDirection) then \n            \n            --check if needs to jump to the next segment\n            if (DetailsFramework:IsNearlyEqual (newValue, currentSegment.minValue) or newValue < currentSegment.minValue) then\n                --segment is depleted, jump to the next segment\n                currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = max (envTable.SegmentBeingAnimated - 1, 1)\n            end\n            \n            --check if the animation is over\n            if (DetailsFramework:IsNearlyEqual (newValue, envTable.EndValue) or newValue < envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        else\n            \n            --the animation is growing (left to right)\n            --check if the animation is over\n            \n            --check if needs to jump to the next segment\n            if (DetailsFramework:IsNearlyEqual (newValue, currentSegment.maxValue) or newValue > currentSegment.maxValue) then\n                --segment got full, jump to the next segment\n                --currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = min (envTable.SegmentBeingAnimated + 1, envTable.SegmentsAmount)\n                \n            end\n            \n            if (DetailsFramework:IsNearlyEqual (newValue, currentSegment.maxValue) or newValue > envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        end\n    end\n    \n    function envTable.UpdateNameplateColor (unitFrame)\n        \n        envTable.LastColorUpdate = envTable.LastColorUpdate - GetWorldDeltaSeconds()\n        \n        if (envTable.LastColorUpdate < 0) then\n            envTable.LastColorUpdate = 0.3\n            \n            local r, g, b =unitFrame.healthBar:GetColor()\n            for i = 1, envTable.SegmentsAmount do\n                local slice = unitFrame.healthBarSlices [i]            \n                slice.statusbar:SetStatusBarColor (r ,g ,b, 0)\n                slice.segmentTexture:SetVertexColor (r, g, b, 1)\n            end\n            \n            unitFrame.healthBar.background:SetAlpha (0)\n            unitFrame.healthBar.barTexture:SetAlpha (0) \n        end\n        \n    end\n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --override the update frequency to run every tick\n    local tickFrame = unitFrame:GetParent().OnTickFrame\n    tickFrame.ThrottleUpdate = -1\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    --check if the max value has changed\n    local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n    if (maxHealth ~= envTable.MaxValue) then\n        envTable.UpdateAllSegments (unitFrame)\n        return\n    end\n    \n    --check if the nameplate is already animating and update the animation position\n    if (envTable.RunningAnimation) then\n        envTable.UpdateAnimation (unitFrame)\n        return\n    end\n    \n    if (envTable.CurrentValue ~= unitFrame.healthBar:GetValue()) then\n        envTable.StartAnimation (unitFrame, unitFrame.healthBar:GetValue())\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.healthBarSlices) then\n        for _, sliceSegment in ipairs (unitFrame.healthBarSlices) do\n            sliceSegment:Hide()\n        end\n        \n        unitFrame.healthBar.background:SetAlpha (1)\n        unitFrame.healthBar.barTexture:SetAlpha (1) \n    end\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --refresh all the segment parts\n    envTable.UpdateAllSegments (unitFrame)\n    \n    --update the nameplate color with delay\n    envTable.UpdateNameplateColor (unitFrame)\n    \n    \nend\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --lines which starts with a double dash -- are comments and aren't part of the script\n    \n    --you also might want to:\n    --adjust the black nameplate border (General Settings > Border Color)\n    --adjust the background color to zero (General Settings > Health Bar Background Color and Alpha)\n    --disable the target shading at the Target tab\n    --adjust the target overlay at the Target tab to zero\n    \n    --settings:\n    \n    --which texture it should use\n    envTable.Texture = [[Interface\\AddOns\\Plater\\images\\segment_texture_3]]\n    \n    --shear amount (how much the texture leans)\n    envTable.Shearing = 0.20\n    \n    --amount of segments the healthbar will have\n    --modifying this value require a /reload\n    envTable.SegmentsAmount = 10\n    \n    --animation speed (movement left <> right)\n    envTable.AnimationSpeed = 0.5\n    \n    --depleted segment animation settings (when a block reaches zero health)\n    --modifying this value require a /reload\n    envTable.AnimationSettings = {\n        speed = 0.4,\n        rotation = 90, \n        x = 15,\n        y = 3,\n    }\n    \n    --end of settings\n    \n    envTable.OnStartDepletedAnimation = function (self)\n        local texture = self:GetParent():GetCapsule()\n        local segmentBar = texture:GetParent():GetCapsule()\n        texture:Show()\n        texture.vertexcolor = {segmentBar:GetVertexColor()}\n        texture.texture = envTable.Texture\n    end\n    \n    envTable.OnEndDepletedAnimation = function (self)\n        self:GetParent():Hide()\n    end\n    \n    --declaring a default value for the max value\n    envTable.MaxValue = 0        \n    \n    --cooldown to update the nameplate color\n    envTable.LastColorUpdate = 0        \n    \n    --this function creates the segments part\n    function envTable.InitializeBars()\n        if (not unitFrame.healthBarSlices) then\n            unitFrame.healthBarSlices = {}\n            \n            for i = 1, envTable.SegmentsAmount do\n                local statusBar = Plater:CreateBar (unitFrame)\n                statusBar:EnableMouse (false)\n                tinsert (unitFrame.healthBarSlices, statusBar)\n                \n                statusBar.segmentTexture = statusBar:CreateTexture (nil, \"artwork\")\n                statusBar.segmentTexture:SetTexture (envTable.Texture)\n                statusBar.segmentTexture:SetPoint (\"center\")\n                \n                local textureAnimation = Plater:CreateImage (statusBar)\n                textureAnimation:SetAllPoints()\n                textureAnimation:Hide()\n                textureAnimation:SetTexture (envTable.Texture)\n                statusBar.textureAnimation = textureAnimation\n                \n                statusBar.depletedAnimation = Plater:CreateAnimationHub (textureAnimation, envTable.OnStartDepletedAnimation, envTable.OnEndDepletedAnimation)\n                \n                local speed = envTable.AnimationSettings.speed\n                local rotation = envTable.AnimationSettings.rotation\n                local x = envTable.AnimationSettings.x\n                local y = envTable.AnimationSettings.y\n                \n                Plater:CreateAnimation (statusBar.depletedAnimation, \"rotation\", 1, speed, rotation)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"translation\", 1, speed, x, y)\n                Plater:CreateAnimation (statusBar.depletedAnimation, \"alpha\", 1, speed, 1, 0)\n                \n                local textureBackground = Plater:CreateImage (statusBar)\n                textureBackground:SetAllPoints()\n                textureBackground:SetDrawLayer (\"background\")                \n                statusBar.textureBackground = textureBackground\n            end\n        end\n    end\n    \n    envTable.InitializeBars()\n    \n    function envTable.SetSegmentPercent (segmentSlice, currentValue)\n        \n        segmentSlice:SetValue (currentValue)\n        \n        local percent = DetailsFramework:GetRangePercent (segmentSlice.minValue, segmentSlice.maxValue, currentValue) \n        percent = DetailsFramework:Clamp (0, 1, percent)\n        \n        local texture = segmentSlice.segmentTexture\n        local width = segmentSlice:GetWidth()\n        local shear\n        if (percent > 0.98) then\n            shear = 0\n        else\n            shear = envTable.Shearing\n        end\n        \n        local shearingPercent = DetailsFramework:Clamp (0, 1, percent - shear)\n        \n        texture:SetVertexOffset (UPPER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (LOWER_LEFT_VERTEX, 0, 0);\n        texture:SetVertexOffset (UPPER_RIGHT_VERTEX, -width * (1 - percent), 0);\n        texture:SetVertexOffset (LOWER_RIGHT_VERTEX, -width * (1 - shearingPercent), 0);\n        \n        texture:SetTexCoord (\n            0, 0, --topleft\n            0, 1, --bottomleft\n            percent, 0, --topright\n            shearingPercent, 1 --bottomright\n        )\n    end\n    \n    function envTable.UpdateAllSegments (unitFrame)\n        \n        local sliceWidth = unitFrame.healthBar:GetWidth() / envTable.SegmentsAmount\n        local sliceHeight = unitFrame.healthBar:GetHeight()\n        local minHealth, maxHealth = unitFrame.healthBar:GetMinMaxValues()\n        local healthPerSlice = maxHealth / envTable.SegmentsAmount\n        local currentValue = unitFrame.healthBar:GetValue()        \n        \n        envTable.MaxValue = maxHealth\n        \n        for i = 1, envTable.SegmentsAmount do\n            \n            local slice = unitFrame.healthBarSlices [i]\n            slice.texture = \"\"\n            slice.textureBackground.texture = envTable.Texture\n            slice.textureBackground.vertexcolor = {.1, .1, .1, .5}\n            slice:Show()\n            \n            slice.segmentTexture:SetSize (sliceWidth, sliceHeight)\n            slice.segmentTexture:SetTexture (envTable.Texture)\n            \n            slice:SetSize (sliceWidth, sliceHeight)\n            slice:SetPoint (\"left\", unitFrame.healthBar, \"left\", (i - 1) * sliceWidth, 0)            \n            slice:SetFrameLevel (unitFrame.healthBar:GetFrameLevel() - 1)\n            \n            slice.minValue = healthPerSlice * (i - 1)\n            slice.maxValue = healthPerSlice * i\n            slice:SetMinMaxValues (slice.minValue, slice.maxValue)\n            \n            --set and save the current value\n            slice.currentValue = currentValue\n            \n            envTable.SetSegmentPercent (slice, currentValue)\n            \n            slice.IsAnimating = false\n        end    \n        \n        --reset the animation\n        envTable.RunningAnimation = false\n        --reset which segment is currently being animated\n        envTable.SegmentBeingAnimated = 0\n        \n        --what is the current value and how much value has each segment\n        envTable.CurrentValue = currentValue\n        envTable.ValuePerSegment = healthPerSlice\n        \n        --cooldown to update the nameplate color\n        envTable.LastColorUpdate = 0\n        \n        \n    end\n    \n    function envTable.StartAnimation (unitFrame, endValue)\n        envTable.RunningAnimation = true\n        \n        --in which segment the value is currently in\n        local currentSegment = max (min (ceil (envTable.CurrentValue / envTable.ValuePerSegment), envTable.SegmentsAmount), 1)\n        envTable.SegmentBeingAnimated = currentSegment\n        \n        --true with the animation goes down (decreasing) false if goes up (increasing)\n        envTable.AnimationDirection = envTable.CurrentValue > endValue\n        \n        --save the value where the animation ends\n        envTable.EndValue = endValue\n        \n        envTable.UpdateAnimation (unitFrame)\n        \n        unitFrame.healthBar.background:SetAlpha (0)\n        unitFrame.healthBar.barTexture:SetAlpha (0)\n    end\n    \n    function envTable.UpdateAnimation (unitFrame)\n        local deltaSeconds = GetWorldDeltaSeconds()\n        local currentSegment = unitFrame.healthBarSlices [envTable.SegmentBeingAnimated]\n        local currentValue = envTable.CurrentValue\n        local amountToMove = envTable.MaxValue * deltaSeconds * envTable.AnimationSpeed\n        \n        --check if the endValue has been updated\n        if (envTable.EndValue ~= unitFrame.healthBar:GetValue()) then\n            --the end value got changed\n            envTable.EndValue = unitFrame.healthBar:GetValue()\n        end\n        \n        if (envTable.AnimationDirection) then --moving right to left\n            amountToMove = -amountToMove\n        end\n        \n        local newValue = Clamp (currentValue + amountToMove, 0, envTable.MaxValue)\n        --currentSegment:SetValue (newValue)\n        envTable.SetSegmentPercent (currentSegment, newValue)\n        \n        envTable.CurrentValue = newValue\n        \n        --moving right to left        \n        if (envTable.AnimationDirection) then \n            \n            --check if needs to jump to the next segment\n            if (DetailsFramework:IsNearlyEqual (newValue, currentSegment.minValue) or newValue < currentSegment.minValue) then\n                --segment is depleted, jump to the next segment\n                currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = max (envTable.SegmentBeingAnimated - 1, 1)\n            end\n            \n            --check if the animation is over\n            if (DetailsFramework:IsNearlyEqual (newValue, envTable.EndValue) or newValue < envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        else\n            \n            --the animation is growing (left to right)\n            --check if the animation is over\n            \n            --check if needs to jump to the next segment\n            if (DetailsFramework:IsNearlyEqual (newValue, currentSegment.maxValue) or newValue > currentSegment.maxValue) then\n                --segment got full, jump to the next segment\n                --currentSegment.depletedAnimation:Play()\n                envTable.SegmentBeingAnimated = min (envTable.SegmentBeingAnimated + 1, envTable.SegmentsAmount)\n                \n            end\n            \n            if (DetailsFramework:IsNearlyEqual (newValue, currentSegment.maxValue) or newValue > envTable.EndValue) then\n                envTable.RunningAnimation = false\n                envTable.CurrentValue = unitFrame.healthBar:GetValue()\n                return\n            end\n            \n        end\n    end\n    \n    function envTable.UpdateNameplateColor (unitFrame)\n        \n        envTable.LastColorUpdate = envTable.LastColorUpdate - GetWorldDeltaSeconds()\n        \n        if (envTable.LastColorUpdate < 0) then\n            envTable.LastColorUpdate = 0.3\n            \n            local r, g, b =unitFrame.healthBar:GetColor()\n            for i = 1, envTable.SegmentsAmount do\n                local slice = unitFrame.healthBarSlices [i]            \n                slice.statusbar:SetStatusBarColor (r ,g ,b, 0)\n                slice.segmentTexture:SetVertexColor (r, g, b, 1)\n            end\n            \n            unitFrame.healthBar.background:SetAlpha (0)\n            unitFrame.healthBar.barTexture:SetAlpha (0) \n        end\n        \n    end\n    \nend",
					},
					["__TrashAt"] = 1550193263,
					["Time"] = 1550193115,
					["PlaterCore"] = 1,
					["Name"] = "Overwatch Nameplate",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\FriendsFrame\\Battlenet-Overwatchicon",
					["LastHookEdited"] = "Constructor",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 4,
					["HooksTemp"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    print (111)\nend\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    print (\"stop\")\nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "",
					["Hooks"] = {
					},
					["__TrashAt"] = 1550195053,
					["Name"] = "New Script",
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Time"] = 1550194677,
				}, -- [3]
			},
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Reorder Nameplate"] = 3,
				["Blockade Encounter"] = 1,
				["Aura Reorder"] = 1,
				["Attacking Specific Unit"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Target Color"] = 2,
				["Execute Range"] = 1,
				["Jaina Encounter"] = 6,
			},
			["target_highlight_color"] = {
				nil, -- [1]
				0.462745098039216, -- [2]
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Color Change"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_anchor"] = {
				["y"] = 0,
			},
			["first_run2"] = true,
			["aura_width_personal"] = 23,
			["minor_width_scale"] = 0.999999940395355,
			["cast_statusbar_bgtexture"] = "PlaterBackground",
			["health_statusbar_texture"] = "PlaterTexture",
			["resources"] = {
				["y_offset_target"] = 20,
				["y_offset_target_withauras"] = 32,
			},
			["cast_statusbar_texture"] = "PlaterTexture",
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["captured_spells"] = {
				[258674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Off-Duty Laborer",
					["npcID"] = 130436,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jalladå",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jalladå",
					["npcID"] = 0,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Balzofsteel",
					["npcID"] = 0,
				},
				[267367] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 130485,
				},
				[126389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ardanoth",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ptaah",
					["npcID"] = 0,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lokfar",
					["npcID"] = 0,
				},
				[116841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tromtøsen-TwistingNether",
					["npcID"] = 0,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Avemparta",
					["npcID"] = 0,
				},
				[83242] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Alavez",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lokfar",
					["npcID"] = 0,
				},
				[270866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Big Money Crab",
					["npcID"] = 137713,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anistrea-Blackhand",
					["npcID"] = 0,
				},
				[263628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mechanized Peacekeeper",
					["npcID"] = 130485,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kompano",
					["npcID"] = 0,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Orcor",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Uglyncute",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lokfar",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mensvärk",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demónika",
					["npcID"] = 0,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kizgorath",
					["npcID"] = 58965,
				},
				[89158] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Galiria",
					["npcID"] = 0,
				},
				[403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jalladå",
					["npcID"] = 0,
				},
				[60234] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Clmhunt",
					["npcID"] = 0,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Erkava",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Asotl",
					["npcID"] = 0,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sanctusboi",
					["npcID"] = 0,
				},
				[267433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mech Jockey",
					["npcID"] = 130488,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Janpetti-Kazzak",
					["npcID"] = 0,
				},
				[269085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kompano",
					["npcID"] = 0,
				},
				[259455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Köttarjenni",
					["npcID"] = 0,
				},
				[290264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Janpetti-Kazzak",
					["npcID"] = 0,
				},
				[267547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 129214,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lesviathan",
					["npcID"] = 0,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lesviathan",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stokkefar",
					["npcID"] = 0,
				},
				[289523] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lokfar",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stokkefar",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ardanoth",
					["npcID"] = 0,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sviftyx",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jalladå",
					["npcID"] = 0,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lesviathan",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jalladå",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Asotl",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mensvärk",
					["npcID"] = 0,
				},
				[188838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ptaah",
					["npcID"] = 0,
				},
				[278156] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kompano",
					["npcID"] = 0,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lesviathan",
					["npcID"] = 0,
				},
				[112870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wäz-Kazzak",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Razitx",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ardanoth",
					["npcID"] = 0,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lesviathan",
					["npcID"] = 0,
				},
				[289524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hedormu",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stokkefar",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Skeightrgurl",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 50051,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wërther",
					["npcID"] = 0,
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["health_selection_overlay_alpha"] = 0,
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0, -- [4]
			},
			["aura_cooldown_reverse"] = false,
			["indicator_extra_raidmark"] = false,
			["patch_version"] = 3,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.25",
				["nameplateShowSelf"] = "0",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "1",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.1545933485031",
				["nameplatePersonalShowInCombat"] = "0",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateResourceOnTarget"] = "1",
				["nameplateMotion"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "73.694671630859",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateOtherTopInset"] = ".1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_timer_text_font"] = "Accidental Presidency",
			["aura_alpha"] = 1,
			["castbar_target_font"] = "Accidental Presidency",
			["minor_height_scale"] = 0.999999940395355,
			["color_override_colors"] = {
				[4] = {
					1, -- [1]
					0.819607843137255, -- [2]
					0.266666666666667, -- [3]
				},
			},
			["pet_height_scale"] = 0.999999940395355,
			["aura_cooldown_edge_texture"] = "Interface\\AddOns\\Plater\\images\\cooldown_edge_1",
		},
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1535473591,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1528748982,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 183,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						260954, -- [3]
						257739, -- [4]
						257314, -- [5]
						266107, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1537397927,
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533663248,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1535417117,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048199,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048441,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 149,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1535815768,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Time"] = 1543250950,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = 2000853,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1542816185,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543253273,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 157,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1547991413,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [16]
			},
			["aura_cache_by_name"] = {
				["symbiote of g'huun"] = {
					277242, -- [1]
					277261, -- [2]
					277264, -- [3]
					277566, -- [4]
				},
			},
			["aura_timer"] = false,
			["plate_config"] = {
				["friendlyplayer"] = {
					["cast"] = {
						84.6937789916992, -- [1]
						9.3751916885376, -- [2]
					},
				},
				["enemynpc"] = {
					["actorname_text_font"] = "Roboto-Medium",
					["actorname_text_spacing"] = 8,
					["spellname_text_font"] = "Roboto-Medium",
					["percent_text_font"] = "Roboto-Medium",
					["actorname_text_size"] = 9,
					["health"] = {
						nil, -- [1]
						10.05748462677, -- [2]
					},
					["level_text_enabled"] = false,
				},
			},
			["health_selection_overlay"] = "PlaterFocus",
			["npc_cache"] = {
				[136483] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146367] = {
					"Char'golm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141938] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144807] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138464] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135245] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[141939] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138019] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[128649] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148443] = {
					"Defense-A-Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141495] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148893] = {
					"Tormented Soul", -- [1]
					"Siege of Boralus", -- [2]
				},
				[128651] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138247] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140447] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148894] = {
					"Lost Soul", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129640] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[128652] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141565] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132481] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[141566] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137614] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148611] = {
					"Yoru'cha", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129371] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147370] = {
					"Bladeguard Kaja", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141282] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138254] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129372] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148614] = {
					"Kul Tiran Cannoneer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138255] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146766] = {
					"Greater Serpent Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141284] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129373] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141285] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146322] = {
					"Siegebreaker Roka", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132491] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148716] = {
					"Risen Soul", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137625] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144160] = {
					"Chopper Redhook", -- [1]
					"Siege of Boralus", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137626] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146756] = {
					"Energized Storm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148665] = {
					"Rastari Royal Guard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148624] = {
					"Echo of Pa'ku", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137405] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129208] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148625] = {
					"Echo of Krag'wa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148243] = {
					"Fallen Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135258] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132530] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
			},
			["focus_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0.51755291223526, -- [4]
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
							[19994] = true,
							["Enabled"] = true,
						},
						["group"] = {
						},
						["class"] = {
							["MONK"] = true,
							["Enabled"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 627607,
					["Name"] = "Attacking Monk Statue [Plater]",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 86,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CurrentTarget = false\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n        if (unitFrame.namePlateUnitName) then end\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1548118096,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["Name"] = "Stormwall Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 136207,
					["LastHookEdited"] = "",
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "",
				}, -- [16]
			},
			["last_news_time"] = 1548538587,
			["aura_width"] = 20.2437515258789,
			["health_statusbar_bgcolor"] = {
				0.0431372549019608, -- [1]
				0.0431372549019608, -- [2]
				0.0431372549019608, -- [3]
				0.659999996423721, -- [4]
			},
			["aura_border_colors"] = {
				["steal_or_purge"] = {
					nil, -- [1]
					0.501960784313726, -- [2]
					0.980392156862745, -- [3]
				},
			},
			["target_highlight_color"] = {
				1, -- [1]
				1, -- [2]
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["range_check_alpha"] = 0.698643982410431,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Buff Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Color Change"] = 1,
				["Aura - Blink Time Left"] = 1,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit - Important"] = 5,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["hook_auto_imported"] = {
				["Aura Reorder"] = 1,
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Monk Statue"] = 2,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Attacking Specific Unit"] = 1,
				["Jaina Encounter"] = 6,
				["Blockade Encounter"] = 1,
				["Combo Points"] = 3,
				["Extra Border"] = 2,
				["Hide Neutral Units"] = 1,
				["Players Targetting Amount"] = 4,
				["Target Color"] = 2,
				["Execute Range"] = 1,
				["Reorder Nameplate"] = 3,
			},
			["aura_timer_text_font"] = "2002",
			["aura_height"] = 16.102123260498,
			["cast_statusbar_bgtexture"] = "DGround",
			["news_frame"] = {
				["PlaterNewsFrame"] = {
					["scale"] = 1,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1000000238419",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateGlobalScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "3",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "0",
				["nameplateMinScale"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.08",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateSelfAlpha"] = "1",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowSelf"] = "0",
				["NamePlateVerticalScale"] = "0.1",
			},
			["aura_stack_font"] = "Roboto-Medium",
			["patch_version"] = 3,
			["first_run2"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["stacking_nameplates_enabled"] = false,
			["captured_spells"] = {
				[265720] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134932,
				},
				[167898] = {
					["source"] = "Omeega",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106839] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202425] = {
					["source"] = "Fleurelle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115151] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198589] = {
					["encounterID"] = 2271,
					["source"] = "Ziinkos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2050] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254471] = {
					["source"] = "Mórolol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2060] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257413] = {
					["type"] = "BUFF",
					["source"] = "Grulsome-Doomhammer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162530] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272121] = {
					["type"] = "BUFF",
					["source"] = "Raevyn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tykamu",
					["npcID"] = 0,
				},
				[280817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vólde-Eredar",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Imclon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Galanz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254474] = {
					["source"] = "Lolaina",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[527] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228260] = {
					["encounterID"] = 2271,
					["source"] = "Mehlarc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274426] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285424] = {
					["source"] = "Blacklíly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Gándeé",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272126] = {
					["type"] = "BUFF",
					["source"] = "Ratogrer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1064] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[63619] = {
					["encounterID"] = 2271,
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[279033] = {
					["source"] = "Imclon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Pumaswede",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tats",
					["npcID"] = 0,
				},
				[1079] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58984] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["type"] = "BUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Pko",
					["npcID"] = 0,
				},
				[289524] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269576] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102560] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14914] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2271,
					["source"] = "Bóomtastic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162794] = {
					["encounterID"] = 2271,
					["source"] = "Craigshilo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[222256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Houseplace",
					["npcID"] = 0,
				},
				[59752] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["encounterID"] = 2271,
					["source"] = "Bóomtastic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113942] = {
					["source"] = "Lsty",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["source"] = "Hootters",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["type"] = "BUFF",
					["source"] = "Fawx",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rövludd",
					["npcID"] = 0,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bfaistrash",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Alaura-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123981] = {
					["type"] = "DEBUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287999] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51505] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274447] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[145152] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Armtkk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["type"] = "BUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212799] = {
					["source"] = "Hökäle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284424] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["encounterID"] = 2271,
					["source"] = "Akrusdw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285959] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278543] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["type"] = "BUFF",
					["source"] = "Rinnnash",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["encounterID"] = 2271,
					["source"] = "Bóomtastic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73920] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Persyzz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["encounterID"] = 2271,
					["source"] = "Bóomtastic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106785] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60234] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["encounterID"] = 2271,
					["source"] = "Craigshilo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273947] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30213] = {
					["encounterID"] = 2271,
					["source"] = "Rinnnash",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[225080] = {
					["type"] = "DEBUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[596] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116888] = {
					["type"] = "DEBUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["encounterID"] = 2271,
					["source"] = "Lyllotdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Slakko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Lazyemmf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123986] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Biezoknis",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27576] = {
					["encounterID"] = 2271,
					["source"] = "Screadyjones",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212552] = {
					["source"] = "Slakko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Anlon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285721] = {
					["source"] = "Joochu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135700] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288024] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69791,
				},
				[118297] = {
					["encounterID"] = 2271,
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[215111] = {
					["encounterID"] = 2271,
					["source"] = "Dreadstalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Møøse-Lightning'sBlade",
					["npcID"] = 0,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Спанчрог-ЧерныйШрам",
					["npcID"] = 0,
				},
				[107428] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2484] = {
					["source"] = "Grra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2271,
					["source"] = "Zulshifts",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204883] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205523] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206930] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[171253] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290333] = {
					["source"] = "Bfaistrash",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196189] = {
					["source"] = "Bonebeak Vulture",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126909,
				},
				[100780] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116189] = {
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288800] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Eful",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Eful",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["type"] = "DEBUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265273] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Rasmusklunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Brutals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278317] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288803] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273714] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285479] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274739] = {
					["source"] = "Thirdstrike",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283947] = {
					["type"] = "BUFF",
					["source"] = "Flame Jet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146132,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["encounterID"] = 2271,
					["source"] = "Lyllotdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210643] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Lolaina",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205146] = {
					["type"] = "BUFF",
					["source"] = "Kosewai",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251309] = {
					["source"] = "Demónika",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[69070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ayleein",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30151] = {
					["type"] = "BUFF",
					["source"] = "Rinnnash",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[289324] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["type"] = "DEBUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275773] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288305] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119582] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Zalazoustra",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102383] = {
					["encounterID"] = 2271,
					["source"] = "Zulshifts",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284470] = {
					["type"] = "DEBUFF",
					["source"] = "Arcane Amethyst",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147002,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["encounterID"] = 2271,
					["source"] = "Lyllotdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284472] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124506] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Anlon",
					["npcID"] = 0,
				},
				[282939] = {
					["type"] = "BUFF",
					["source"] = "Yalat's Bulwark",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145274,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Darshiva",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112870] = {
					["source"] = "Persyzz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190319] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2271,
					["source"] = "Craigshilo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[686] = {
					["encounterID"] = 2271,
					["source"] = "Reeceyburton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Sisnera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61295] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195181] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Riceqt-Balnazzar",
					["npcID"] = 0,
				},
				[96312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Møøse-Lightning'sBlade",
					["npcID"] = 0,
				},
				[195182] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43265] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[703] = {
					["encounterID"] = 2271,
					["source"] = "Sybør",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115175] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279885] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Skwaatj",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Stòrstark",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260402] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273238] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ñîçëñãmê",
					["npcID"] = 0,
				},
				[202347] = {
					["encounterID"] = 2271,
					["source"] = "Zulshifts",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[712] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dotfeatures",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284493] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288841] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210660] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Läiske",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286541] = {
					["encounterID"] = 2271,
					["source"] = "The Hand of In'zashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145273,
				},
				[213858] = {
					["type"] = "BUFF",
					["source"] = "Aleksiq",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291146] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288333] = {
					["type"] = "DEBUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272733] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Dagomatrix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287568] = {
					["source"] = "Pungf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Papastone",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196725] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cattna",
					["npcID"] = 1863,
				},
				[280409] = {
					["type"] = "BUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["source"] = "Dboss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252353] = {
					["source"] = "Tartara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287831] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115308] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73685] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188290] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8042] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261947] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280165] = {
					["type"] = "BUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34861] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286305] = {
					["source"] = "Varok Saurfang",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146011,
				},
				[53563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[115310] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264057] = {
					["encounterID"] = 2271,
					["source"] = "Reeceyburton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47585] = {
					["type"] = "BUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78866] = {
					["source"] = "Yourkiss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["encounterID"] = 2271,
					["source"] = "Craigshilo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Dröide",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291170] = {
					["type"] = "DEBUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2271,
					["source"] = "Lyllotdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fríngles",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Xtard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124007] = {
					["encounterID"] = 2271,
					["source"] = "Xuen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 63508,
				},
				[774] = {
					["source"] = "Dreamwallker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273526] = {
					["type"] = "DEBUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289383] = {
					["type"] = "DEBUFF",
					["source"] = "Yalat's Bulwark",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145274,
				},
				[259140] = {
					["source"] = "Lunashade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156073] = {
					["source"] = "Kegbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Methaz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Ðescrater",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5217] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Dïce",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Exzors",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Flyert",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104316] = {
					["encounterID"] = 2271,
					["source"] = "Kosewai",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279159] = {
					["source"] = "Zouldemon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283507] = {
					["encounterID"] = 2271,
					["source"] = "The Hand of In'zashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145273,
				},
				[124009] = {
					["type"] = "BUFF",
					["source"] = "Xuen",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 63508,
				},
				[284277] = {
					["source"] = "Kõala",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wërther",
					["npcID"] = 0,
				},
				[286835] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yashugodx",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Grimnight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Slakko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286581] = {
					["type"] = "DEBUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289906] = {
					["encounterID"] = 2271,
					["source"] = "Yalat's Bulwark",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145274,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278143] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104318] = {
					["encounterID"] = 2271,
					["source"] = "Wild Imp",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[278144] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[403] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278147] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286587] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fleewerqt",
					["npcID"] = 0,
				},
				[278917] = {
					["source"] = "Flyert",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Yllar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Troolari",
					["npcID"] = 0,
				},
				[16953] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215711] = {
					["type"] = "BUFF",
					["source"] = "Blóomzy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115191] = {
					["type"] = "BUFF",
					["source"] = "Axlvg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Aleksiq",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82326] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272783] = {
					["type"] = "BUFF",
					["source"] = "Bombashka",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["source"] = "Emeriz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201223] = {
					["type"] = "BUFF",
					["source"] = "Lazyemmf",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Läiske",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278155] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Jade Serpent Statue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[280713] = {
					["type"] = "BUFF",
					["source"] = "Simtrux",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276191] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[220510] = {
					["type"] = "BUFF",
					["source"] = "Contius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284611] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196099] = {
					["type"] = "BUFF",
					["source"] = "Felstone",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273298] = {
					["source"] = "Thirdstrike",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268439] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Trashtier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Thirdstrike",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["source"] = "Trashtier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49028] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Bygbobben",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257408] = {
					["type"] = "BUFF",
					["source"] = "Tyrranis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Flyert",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Quinnex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83242] = {
					["source"] = "Quinnex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[134477] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2271,
					["source"] = "Lyllotdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205448] = {
					["encounterID"] = 2271,
					["source"] = "Mehlarc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176898] = {
					["type"] = "BUFF",
					["source"] = "Røbe",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284556] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Hökäle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Zõõlz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32752] = {
					["type"] = "BUFF",
					["source"] = "Persyzz",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207495] = {
					["type"] = "BUFF",
					["source"] = "Ancestral Protection Totem",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 104818,
				},
				[51714] = {
					["source"] = "Amducîas-DieewigeWacht",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285719] = {
					["source"] = "Mircona",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284558] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["type"] = "BUFF",
					["source"] = "Blacksand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221885] = {
					["type"] = "BUFF",
					["source"] = "Seraphiliam-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luskm",
					["npcID"] = 0,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156779] = {
					["type"] = "BUFF",
					["source"] = "Misswixxum",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272940] = {
					["type"] = "BUFF",
					["source"] = "Sneakymaffer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116841] = {
					["source"] = "Shanksmonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63560] = {
					["source"] = "Lucifugus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257723] = {
					["source"] = "Zillan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Yacu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252352] = {
					["source"] = "Boomkinmor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267171] = {
					["encounterID"] = 2271,
					["source"] = "Kosewai",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Sileriaa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Lakítu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1706] = {
					["source"] = "Blacksand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Galanz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124273] = {
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Yourkiss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289423] = {
					["source"] = "Keelven",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["source"] = "Ragsharos-Gorgonnash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197908] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115450] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273312] = {
					["source"] = "Yaruma-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285514] = {
					["source"] = "Imclon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278249] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Yaruma-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[71909] = {
					["type"] = "DEBUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Kosewai",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Millencolin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272118] = {
					["source"] = "Tykamu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Blackzukato",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77472] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288989] = {
					["type"] = "DEBUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289349] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252385] = {
					["source"] = "Thrazer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102401] = {
					["source"] = "Vessethyy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["encounterID"] = 2271,
					["source"] = "Ziinkos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287062] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202770] = {
					["type"] = "BUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255071] = {
					["source"] = "Yacu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[38033] = {
					["type"] = "DEBUFF",
					["source"] = "Vilescale Sorceress",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123453,
				},
				[199736] = {
					["source"] = "Cøstanza",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225788] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Yourkiss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Yolowalker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Littlejem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256223] = {
					["source"] = "Caranthir",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256219] = {
					["source"] = "Koldun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284573] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263346] = {
					["encounterID"] = 2271,
					["source"] = "Mehlarc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Alibeth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284567] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Dreamwallker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Misswixxum",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206662] = {
					["source"] = "Glutamie",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124503] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Planton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Darthfel",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288156] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252350] = {
					["source"] = "Tartara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190984] = {
					["encounterID"] = 2271,
					["source"] = "Lyllotdruid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202164] = {
					["source"] = "Plindenervi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69369] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198839] = {
					["source"] = "Earthen Wall Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[55233] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288330] = {
					["type"] = "DEBUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Anlon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Sounasmage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274738] = {
					["source"] = "Thirdstrike",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101643] = {
					["source"] = "Brèwslee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155777] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dreamwallker",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[89751] = {
					["type"] = "BUFF",
					["source"] = "Neelzekeel",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[197916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Currently",
					["npcID"] = 0,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276194] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256611] = {
					["source"] = "Tartara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Methaz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[278156] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Pandarogue",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283610] = {
					["encounterID"] = 2271,
					["source"] = "The Hand of In'zashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145273,
				},
				[188838] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288675] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pko",
					["npcID"] = 0,
				},
				[106951] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286501] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31661] = {
					["source"] = "Hxxerre",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121571,
				},
				[283609] = {
					["encounterID"] = 2271,
					["source"] = "Yalat's Bulwark",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145274,
				},
				[290467] = {
					["source"] = "Skribzidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "ßulldozar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116670] = {
					["encounterID"] = 2271,
					["source"] = "Nisefy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290468] = {
					["source"] = "Bleeda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Koldun",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257284] = {
					["encounterID"] = 2271,
					["source"] = "Akrusdw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Kecaj",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115072] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126389] = {
					["source"] = "Omeega",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206931] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[56641] = {
					["encounterID"] = 2271,
					["source"] = "Akrusdw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[89753] = {
					["encounterID"] = 2271,
					["source"] = "Neelzekeel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[243955] = {
					["type"] = "BUFF",
					["source"] = "Ninjalich",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["encounterID"] = 2271,
					["source"] = "Ziinkos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202188] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Vanílla",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Bóomtastic",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Órah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57984] = {
					["encounterID"] = 2271,
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[79140] = {
					["encounterID"] = 2271,
					["source"] = "Screadyjones",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272685] = {
					["type"] = "DEBUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287916] = {
					["source"] = "Alisera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1822] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260069] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[287917] = {
					["source"] = "Wetcrit",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277943] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271550] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287340] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Brutals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260070] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[2061] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267971] = {
					["encounterID"] = 2271,
					["source"] = "Demonic Tyrant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276188] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Earthbind Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2630,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284883] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223306] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[198067] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283574] = {
					["encounterID"] = 2271,
					["source"] = "Volatile Charge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145871,
				},
				[285978] = {
					["source"] = "Caranthir",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283063] = {
					["encounterID"] = 2271,
					["source"] = "Yalat's Bulwark",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145274,
				},
				[201633] = {
					["source"] = "Earthen Wall Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268998] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79206] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19434] = {
					["encounterID"] = 2271,
					["source"] = "Akrusdw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216413] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[103740] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anlon",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Cgb",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[88625] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210657] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["type"] = "BUFF",
					["source"] = "Kosewai",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271559] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268314] = {
					["encounterID"] = 2271,
					["source"] = "Ziinkos",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Znny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274373] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yashugodx",
					["npcID"] = 0,
				},
				[33076] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225602] = {
					["source"] = "Kegbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258925] = {
					["type"] = "BUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Lazyemmf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["source"] = "Grra",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Lazyemmf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275398] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anlon",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Exzors",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Lyllotdruid",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2271,
					["source"] = "Zulshifts",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47788] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267537] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155347] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["source"] = "Suicideiskey",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289467] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Dawah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284519] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49376] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284527] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["encounterID"] = 2271,
					["source"] = "Akrusdw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277960] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Dreamwallker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287837] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287424] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193456] = {
					["source"] = "Ârla",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Brèwslee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205351] = {
					["encounterID"] = 2271,
					["source"] = "Mehlarc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261769] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["encounterID"] = 2271,
					["source"] = "Screadyjones",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Akrusdw",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284614] = {
					["type"] = "BUFF",
					["source"] = "The Hand of In'zashi",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145273,
				},
				[55078] = {
					["type"] = "DEBUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115181] = {
					["encounterID"] = 2271,
					["source"] = "Dyong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dazer",
					["npcID"] = 0,
				},
				[278145] = {
					["type"] = "DEBUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Suicideiskey",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290754] = {
					["type"] = "BUFF",
					["source"] = "Dropletter-Bloodscalp",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[98008] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Pentalicious",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Lakítu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Skwaatj",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["type"] = "BUFF",
					["source"] = "Craigshilo",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["encounterID"] = 2271,
					["source"] = "Zariis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105809] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185565] = {
					["encounterID"] = 2271,
					["source"] = "Sybør",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290372] = {
					["source"] = "Skribzidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27827] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Bucetarolant",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202028] = {
					["source"] = "Yacu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[250870] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207399] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183998] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1856] = {
					["encounterID"] = 2271,
					["source"] = "Screadyjones",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123904] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1943] = {
					["encounterID"] = 2271,
					["source"] = "Sybør",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287063] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85222] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267972] = {
					["type"] = "BUFF",
					["source"] = "Demonic Tyrant",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135002,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Zulshifts",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Kegbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265187] = {
					["encounterID"] = 2271,
					["source"] = "Reeceyburton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Suicideiskey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Hökäle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Ziinkos",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Currently",
					["npcID"] = 0,
				},
				[284881] = {
					["encounterID"] = 2271,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["encounterID"] = 2271,
					["source"] = "Craigshilo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Victorhugo-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276187] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77130] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196277] = {
					["encounterID"] = 2271,
					["source"] = "Reeceyburton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196608] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cobroz",
					["npcID"] = 0,
				},
				[120517] = {
					["encounterID"] = 2271,
					["source"] = "Maybedan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283606] = {
					["encounterID"] = 2271,
					["source"] = "The Hand of In'zashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145273,
				},
				[288839] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Saltstangen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276190] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279515] = {
					["source"] = "Zalazoustra",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255101] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Synerlin",
					["npcID"] = 0,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259449] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vagdelas",
					["npcID"] = 0,
				},
				[130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Znny",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Yunwa",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["encounterID"] = 2271,
					["source"] = "Demonic Tyrant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[33763] = {
					["source"] = "Dreamwallker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Curica",
					["npcID"] = 0,
				},
				[198837] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[257422] = {
					["source"] = "Sileriaa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[556] = {
					["source"] = "Slokkyr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264173] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288981] = {
					["type"] = "BUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Currently",
					["npcID"] = 0,
				},
				[498] = {
					["type"] = "BUFF",
					["source"] = "Gjira",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198838] = {
					["source"] = "Pungf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Mehlarc",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["encounterID"] = 2271,
					["source"] = "Krampaketet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Reeceyburton",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Alibeth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["encounterID"] = 2271,
					["source"] = "Yunwa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Zõõlz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1022] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snowmixy",
					["npcID"] = 0,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Maybedan",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105174] = {
					["encounterID"] = 2271,
					["source"] = "Reeceyburton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259452] = {
					["source"] = "Alaura-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Screadyjones",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290264] = {
					["source"] = "Shalamisios",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Overheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264178] = {
					["encounterID"] = 2271,
					["source"] = "Reeceyburton",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280149] = {
					["source"] = "Slakko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Lolaina",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157153] = {
					["encounterID"] = 2271,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Synerlin",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Cheatina",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["encounterID"] = 2271,
					["source"] = "Waake",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[4987] = {
					["encounterID"] = 2271,
					["source"] = "Gjira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255234] = {
					["type"] = "DEBUFF",
					["source"] = "Krampaketet",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259454] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tigerpal",
					["npcID"] = 0,
				},
				[279526] = {
					["type"] = "BUFF",
					["source"] = "Zariis",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["encounterID"] = 2271,
					["source"] = "Sybør",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Egregoros-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Currently",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yashugodx",
					["npcID"] = 0,
				},
				[259455] = {
					["type"] = "BUFF",
					["source"] = "Nisefy",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Mooncake",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Sybør",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bfaistrash",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuliana",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Anlon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190336] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Reect",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Waake",
					["encounterID"] = 2271,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Yllar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Smogger",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bigboylock",
					["npcID"] = 0,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tykamu",
					["npcID"] = 0,
				},
			},
			["target_highlight_alpha"] = 0.517990291118622,
		},
		["Niseko - Stormscale"] = {
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Color Change"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1537884697,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1551045273,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 400,
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the buff name in the trigger box.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Buff Alert [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1538066775,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538429739,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1538237586,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201768,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538256464,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1551045257,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 158,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [10]
				{
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1551045274,
					["Temp_ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Enabled"] = false,
					["Revision"] = 46,
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Name"] = "Aura - Border Color [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1551045277,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 132,
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Name"] = "UnitPower [Plater]",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201849,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 190,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1539187387,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543250950,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
				}, -- [15]
			},
			["first_run2"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["Name"] = "Color Automation [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 136207,
					["LastHookEdited"] = "",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 133689,
					["LastHookEdited"] = "",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["Name"] = "Stormwall Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["Name"] = "Hide Neutral Units [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 1990989,
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["Name"] = "Jaina Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["Name"] = "Execute Range [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 135358,
					["LastHookEdited"] = "",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Specific Unit [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
					["PlaterCore"] = 1,
					["Name"] = "No Target Alpha [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 132177,
					["LastHookEdited"] = "",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 574574,
					["LastHookEdited"] = "",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 86,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CurrentTarget = false\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n        if (unitFrame.namePlateUnitName) then end\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1548118096,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["LastHookEdited"] = "",
				}, -- [15]
			},
			["minor_width_scale"] = 0.899999976158142,
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["npc_cache"] = {
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146367] = {
					"Char'golm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144807] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[125828] = {
					"Fluke", -- [1]
					"Atal'Dazar", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148443] = {
					"Defense-A-Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148893] = {
					"Tormented Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148894] = {
					"Lost Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148611] = {
					"Yoru'cha", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148614] = {
					"Kul Tiran Cannoneer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146766] = {
					"Greater Serpent Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146322] = {
					"Siegebreaker Roka", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148665] = {
					"Rastari Royal Guard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146756] = {
					"Energized Storm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148716] = {
					"Risen Soul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149535] = {
					"Icebound Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148624] = {
					"Echo of Pa'ku", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148625] = {
					"Echo of Krag'wa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
			},
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["extra_icon_show_timer"] = false,
			["patch_version"] = 3,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1000000238419",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.79",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.1517190933228",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "0",
				["nameplateSelfAlpha"] = "1",
				["nameplateMinScale"] = "0.8",
				["nameplateMaxDistance"] = "70.165962219238",
				["nameplateOtherTopInset"] = "0.064741797745228",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "3",
				["nameplateGlobalScale"] = "1.1538709402084",
				["NamePlateVerticalScale"] = "0.1",
			},
			["captured_spells"] = {
				[47585] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[267874] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2142,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[18499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[73325] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[205351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[49821] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lívi",
					["npcID"] = 0,
				},
				[259454] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fleskeleggen",
					["npcID"] = 0,
				},
				[271711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[259455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dreamwallker",
					["npcID"] = 0,
				},
				[198838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[267626] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2142,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[23881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[34428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[15286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[63619] = {
					["npcID"] = 19668,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadowfiend",
					["encounterID"] = 2142,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[123725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[256456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tyrannicåls",
					["npcID"] = 0,
				},
				[80354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Uglyncute",
					["npcID"] = 0,
				},
				[269931] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow-Borne Warrior",
					["npcID"] = 134157,
				},
				[276191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blóomzy",
					["npcID"] = 0,
				},
				[60234] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[269932] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dboss",
					["npcID"] = 0,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[279515] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Schizzl-Ahn'Qiraj",
					["npcID"] = 0,
				},
				[190411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keralakra",
					["npcID"] = 0,
				},
				[116189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[198013] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[269936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Minion of Zul",
					["npcID"] = 133943,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[288844] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Risen Soul",
					["npcID"] = 148716,
				},
				[270576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[77130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[79206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[198589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[267639] = {
					["npcID"] = 134993,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mchimba the Embalmer",
					["encounterID"] = 2142,
				},
				[267256] = {
					["npcID"] = 135759,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Earthwall Totem",
					["encounterID"] = 2140,
				},
				[267257] = {
					["npcID"] = 135761,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thundering Totem",
					["encounterID"] = 2140,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gorrok-Sunstrider",
					["npcID"] = 0,
				},
				[118905] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Capacitor Totem",
					["npcID"] = 61245,
				},
				[210152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[266237] = {
					["npcID"] = 135470,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aka'ali the Conqueror",
					["encounterID"] = 2140,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chedipes",
					["npcID"] = 0,
				},
				[188499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[116670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tròller",
					["npcID"] = 0,
				},
				[528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[194249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[268796] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2143,
				},
				[288981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[288343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[118779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[1064] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[136508] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[211881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[288091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[115203] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[290264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nalanie",
					["npcID"] = 0,
				},
				[268419] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2143,
				},
				[278767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[271103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[268932] = {
					["npcID"] = 136160,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "King Dazar",
					["encounterID"] = 2143,
				},
				[288989] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[5308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[279153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[271105] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[270084] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Guard Captain Atu",
					["npcID"] = 137473,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loif",
					["npcID"] = 0,
				},
				[271107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[101184] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[278134] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[120954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[272388] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow of Zul",
					["npcID"] = 138489,
				},
				[119996] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["encounterID"] = 2139,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baervan",
					["npcID"] = 0,
				},
				[115078] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[198793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "King A'akul",
					["npcID"] = 137484,
				},
				[287722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[403] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[179057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[119582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[285424] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[34433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kuprofen",
					["npcID"] = 0,
				},
				[270865] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "King A'akul",
					["npcID"] = 137484,
				},
				[270482] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Berserker",
					["npcID"] = 135167,
				},
				[184362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[15487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[34769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rafpal",
					["npcID"] = 0,
				},
				[281854] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[270868] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sacredzun",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[288371] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[157153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[45181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Talìa-Kazzak",
					["npcID"] = 0,
				},
				[184364] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[288756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blóomzy",
					["npcID"] = 0,
				},
				[289523] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[240447] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[266231] = {
					["npcID"] = 135475,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kula the Butcher",
					["encounterID"] = 2140,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[271640] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow of Zul",
					["npcID"] = 138489,
				},
				[212653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loif",
					["npcID"] = 0,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Djkemp",
					["npcID"] = 0,
				},
				[267764] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Coffin",
					["npcID"] = 136256,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ozóné",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Flappyboi",
					["npcID"] = 0,
				},
				[32216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[205448] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[61295] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[188838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[270493] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Hex Priest",
					["npcID"] = 135204,
				},
				[6552] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[274387] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keralakra",
					["npcID"] = 0,
				},
				[195072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[34914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saryae-Doomhammer",
					["npcID"] = 0,
				},
				[275936] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[270495] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fapinator",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[147193] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hellastab",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lazyemmf",
					["npcID"] = 0,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sanea-ShatteredHalls",
					["npcID"] = 0,
				},
				[288330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[270497] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Witch Doctor",
					["npcID"] = 135239,
				},
				[73920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skribz",
					["npcID"] = 0,
				},
				[116705] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[280547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Turbohawx",
					["npcID"] = 0,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[198103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[124506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[265773] = {
					["npcID"] = 135322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "The Golden Serpent",
					["encounterID"] = 2139,
				},
				[270500] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skeletal Hunting Raptor",
					["npcID"] = 137487,
				},
				[258920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[8143] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["encounterID"] = 2143,
				},
				[269351] = {
					["npcID"] = 136976,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "T'zala",
					["encounterID"] = 2143,
				},
				[129597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[285959] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[267308] = {
					["npcID"] = 135472,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zanazal the Wise",
					["encounterID"] = 2140,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mîdoriya",
					["npcID"] = 0,
				},
				[268586] = {
					["type"] = "BUFF",
					["source"] = "King Dazar",
					["npcID"] = 136160,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2143,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[100780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[278296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Slaink",
					["npcID"] = 0,
				},
				[101186] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[79849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gija",
					["npcID"] = 47248,
				},
				[201427] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[85288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[279584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[270505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Queen Patlaa",
					["npcID"] = 137486,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naissance-Daggerspine",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[270889] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "King Rahu'ai",
					["npcID"] = 134331,
				},
				[270506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Beastmaster",
					["npcID"] = 135235,
				},
				[100] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wickedbàd",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[270507] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Beastmaster",
					["npcID"] = 135235,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[270293] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Purification Construct",
					["npcID"] = 134739,
				},
				[265781] = {
					["npcID"] = 135322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "The Golden Serpent",
					["encounterID"] = 2139,
				},
				[115181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[124273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[269231] = {
					["npcID"] = 136984,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Reban",
					["encounterID"] = 2143,
				},
				[288305] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fapinator",
					["npcID"] = 0,
				},
				[267060] = {
					["npcID"] = 135472,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zanazal the Wise",
					["encounterID"] = 2140,
				},
				[269232] = {
					["type"] = "BUFF",
					["source"] = "Reban",
					["npcID"] = 136984,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2143,
				},
				[21562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[2006] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Emília",
					["npcID"] = 0,
				},
				[212800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[198813] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[116844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[250870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[267326] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[270930] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Queen Patlaa",
					["npcID"] = 137486,
				},
				[421] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[267702] = {
					["npcID"] = 134993,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mchimba the Embalmer",
					["encounterID"] = 2142,
				},
				[586] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[265914] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[216251] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zalazoustra",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Devgareuli",
					["npcID"] = 0,
				},
				[270514] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Brute",
					["npcID"] = 135231,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tròller",
					["npcID"] = 0,
				},
				[273836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Landre",
					["npcID"] = 0,
				},
				[289422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cursedhollow",
					["npcID"] = 0,
				},
				[117952] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[289423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skrelle",
					["npcID"] = 0,
				},
				[268856] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[266940] = {
					["npcID"] = 135470,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aka'ali the Conqueror",
					["encounterID"] = 2140,
				},
				[184367] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keralakra",
					["npcID"] = 0,
				},
				[288333] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[64044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[192058] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[269369] = {
					["npcID"] = 136976,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "T'zala",
					["encounterID"] = 2143,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tyrannicåls",
					["npcID"] = 0,
				},
				[270931] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mîdoriya",
					["npcID"] = 0,
				},
				[85739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[270487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Berserker",
					["npcID"] = 135167,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[267327] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[1953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Alactra",
					["npcID"] = 0,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[228260] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tyrannicåls",
					["npcID"] = 0,
				},
				[265923] = {
					["npcID"] = 135322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "The Golden Serpent",
					["encounterID"] = 2139,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Holtzè",
					["npcID"] = 0,
				},
				[275893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[267329] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[271555] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Interment Construct",
					["npcID"] = 137969,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[121253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[267330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[79640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluidz-Outland",
					["npcID"] = 0,
				},
				[266939] = {
					["npcID"] = 135470,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aka'ali the Conqueror",
					["encounterID"] = 2140,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keralakra",
					["npcID"] = 0,
				},
				[267331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nixô",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Húddz",
					["npcID"] = 0,
				},
				[188024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[266191] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2140,
				},
				[271564] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[270003] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Animated Guardian",
					["npcID"] = 133935,
				},
				[162794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[270016] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Animated Guardian",
					["npcID"] = 133935,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fleskeleggen",
					["npcID"] = 0,
				},
				[97462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[269928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadow-Borne Champion",
					["npcID"] = 134158,
				},
				[266951] = {
					["npcID"] = 135470,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aka'ali the Conqueror",
					["encounterID"] = 2140,
				},
				[271563] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Embalming Fluid",
					["npcID"] = 137989,
				},
				[278326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[201764] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["encounterID"] = 2139,
				},
				[196718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Znny",
					["npcID"] = 0,
				},
				[79865] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Marud",
					["npcID"] = 47247,
				},
				[271562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Interment Construct",
					["npcID"] = 137969,
				},
				[270923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Queen Wasi",
					["npcID"] = 137478,
				},
				[212048] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[193456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sanea-ShatteredHalls",
					["npcID"] = 0,
				},
				[290085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Interment Construct",
					["npcID"] = 137969,
				},
				[97463] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[48045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[201633] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stoyankolev-Kazzak",
					["npcID"] = 0,
				},
				[201679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tyralone",
					["npcID"] = 0,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[202719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skribz",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[269935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Minion of Zul",
					["npcID"] = 133943,
				},
				[77472] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[288675] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[200166] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wickedbàd",
					["npcID"] = 0,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baervan",
					["npcID"] = 0,
				},
				[269120] = {
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[118000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[274369] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[270920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Queen Wasi",
					["npcID"] = 137478,
				},
				[271559] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[98008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["encounterID"] = 2140,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[276031] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[370] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[115072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[36213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["npcID"] = 95072,
				},
				[271433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rövludd",
					["npcID"] = 0,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Loif",
					["npcID"] = 0,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tyrannicåls",
					["npcID"] = 0,
				},
				[270284] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Purification Construct",
					["npcID"] = 134739,
				},
				[57755] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["encounterID"] = 2139,
				},
				[290469] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kecaj",
					["npcID"] = 0,
				},
				[263346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[1719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tyralone",
					["npcID"] = 0,
				},
				[12323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Schizzl-Ahn'Qiraj",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[287916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mîdoriya",
					["npcID"] = 0,
				},
				[270872] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodsworn Agent",
					["npcID"] = 137485,
				},
				[225080] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[162243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[271565] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Embalming Fluid",
					["npcID"] = 137989,
				},
				[124274] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[52174] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["encounterID"] = 2139,
				},
				[270927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "King Timalji",
					["npcID"] = 137474,
				},
				[270499] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Witch Doctor",
					["npcID"] = 135239,
				},
				[32375] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[270289] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[1490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jínwoo",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keralakra",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Emília",
					["npcID"] = 0,
				},
				[270485] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spectral Berserker",
					["npcID"] = 135167,
				},
				[270674] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cursedhollow",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Alexmandk-Wildhammer",
					["npcID"] = 0,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2139,
				},
				[270292] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mikehat",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[288388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Risen Soul",
					["npcID"] = 148716,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[269973] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadow-Borne Witch Doctor",
					["npcID"] = 134174,
				},
				[265910] = {
					["npcID"] = 135322,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "The Golden Serpent",
					["encounterID"] = 2139,
				},
				[273232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[266206] = {
					["npcID"] = 135475,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kula the Butcher",
					["encounterID"] = 2140,
				},
				[250871] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[197937] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[277960] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Keralakra",
					["npcID"] = 0,
				},
				[53365] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blóomzy",
					["npcID"] = 0,
				},
				[268936] = {
					["npcID"] = 136160,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "King Dazar",
					["encounterID"] = 2143,
				},
				[269976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadow-Borne Champion",
					["npcID"] = 134158,
				},
				[279151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[280772] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[162264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fluke",
					["npcID"] = 0,
				},
				[288693] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tormented Soul",
					["npcID"] = 148893,
				},
				[124503] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dyong",
					["npcID"] = 0,
				},
				[280773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[225788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[288694] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lost Soul",
					["npcID"] = 148894,
				},
				[61391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tyrannicåls",
					["npcID"] = 0,
				},
				[270502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skeletal Hunting Raptor",
					["npcID"] = 137487,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gorrok-Sunstrider",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dropdeadx",
					["npcID"] = 0,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Djkemp",
					["npcID"] = 0,
				},
				[69179] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Akrusqt",
					["encounterID"] = 2139,
				},
				[187464] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Gingerprick",
					["npcID"] = 0,
				},
				[268403] = {
					["npcID"] = 136160,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "King Dazar",
					["encounterID"] = 2143,
				},
				[198839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
				},
				[280776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akrusqt",
					["npcID"] = 0,
				},
				[267618] = {
					["npcID"] = 134993,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mchimba the Embalmer",
					["encounterID"] = 2142,
				},
				[260881] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zalazoustra",
					["npcID"] = 0,
				},
			},
			["health_selection_overlay_alpha"] = 0.0999999940395355,
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Attacking Specific Unit"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Target Color"] = 2,
				["Aura Reorder"] = 1,
				["Reorder Nameplate"] = 3,
			},
			["aura_alpha"] = 0.849999964237213,
			["pet_height_scale"] = 0.949999988079071,
			["aura_timer"] = false,
			["plate_config"] = {
				["friendlynpc"] = {
					["level_text_alpha"] = 0.299999982118607,
					["big_actortitle_text_size"] = 9,
				},
				["enemyplayer"] = {
					["level_text_alpha"] = 0.299999982118607,
					["actorname_text_spacing"] = 11,
				},
				["friendlyplayer"] = {
					["level_text_alpha"] = 0.299999982118607,
				},
				["enemynpc"] = {
					["level_text_alpha"] = 0.299999982118607,
				},
			},
			["pet_width_scale"] = 0.899999976158142,
			["minor_height_scale"] = 0.949999988079071,
		},
	},
}

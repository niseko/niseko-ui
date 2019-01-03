
PlaterDB = {
	["profileKeys"] = {
		["Nisetest - Stormscale"] = "Default",
		["Valdurawr - Stormscale"] = "Default",
		["Yvera - Moonglade"] = "Default",
		["Niseko - Stormscale"] = "Default",
		["Yoshicakes - Stormscale"] = "Default",
		["Pixelfehler - Ysera"] = "Default",
		["Vordt - Twisting Nether"] = "Default",
		["Donnerbock - Ysera"] = "Default",
		["Purrmeow - Twisting Nether"] = "Default",
		["Nisefy - Stormscale"] = "Default",
		["Niseko - Twisting Nether"] = "Default",
		["Nedoka - Antonidas"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["target_highlight"] = false,
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
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
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 183,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = 1029718,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
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
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [6]
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
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
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
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
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
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
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
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 149,
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
					["ScriptType"] = 3,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1535815768,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [11]
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
					["Icon"] = 841383,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = 2000853,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
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
					["Icon"] = 135024,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
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
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [15]
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
				["enemynpc"] = {
					["actorname_text_font"] = "Roboto-Medium",
					["actorname_text_size"] = 9,
					["actorname_text_spacing"] = 8,
					["percent_text_font"] = "Roboto-Medium",
					["spellname_text_font"] = "Roboto-Medium",
					["health"] = {
						nil, -- [1]
						10.05748462677, -- [2]
					},
					["level_text_enabled"] = false,
				},
			},
			["first_run2"] = true,
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
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Monk Statue [Plater]",
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
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
					},
					["Icon"] = 627607,
					["LastHookEdited"] = "",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 53,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "A simple reorder for the health bar and cast bar.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --set the height offset\n    local healthBarOffset = 0\n    local castBarOffset = 0\n    \n    unitFrame.healthBar:ClearAllPoints()\n    unitFrame.healthBar:SetPoint (\"bottomleft\", unitFrame, \"bottomleft\", 0, healthBarOffset)\n    unitFrame.healthBar:SetPoint (\"bottomright\", unitFrame, \"bottomright\", 0, healthBarOffset)\n    \n    unitFrame.castBar:ClearAllPoints()\n    unitFrame.castBar:SetPoint (\"topleft\", unitFrame, \"bottomleft\", 0, castBarOffset)\n    unitFrame.castBar:SetPoint (\"topright\", unitFrame, \"bottomright\", 0, castBarOffset)\n    \nend\n\n\n",
					},
					["Time"] = 1543188991,
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
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 129,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --the border has 3 layers: inner, middle and outter.\n    --you can defyne the alpha of each one of these layers below.\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetBorderColor (r, g, b)\n    local canExportBorder = true\n    \n    --border transparency\n    local innerBorderAlpha = 1.0  --value from 0 to 1\n    local middleBorderAlpha = 1.0\n    local outBorderAlpha = 0\n    \n    --border color\n    local borderColor = \"black\"\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        --creates an overlay frame above the health bar\n        local overlayFrame = CreateFrame (\"frame\", nil, unitFrame.healthBar)\n        overlayFrame:SetAllPoints()\n        overlayFrame:SetFrameLevel (unitFrame.healthBar:GetFrameLevel()+2)        \n        envTable.BorderFrame = overlayFrame\n        \n        DetailsFramework:CreateBorder (overlayFrame, innerBorderAlpha, middleBorderAlpha, outBorderAlpha)\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        overlayFrame:SetBorderColor (r, g, b)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = overlayFrame\n        end\n        \n        if (not isEnabled) then\n            overlayFrame:Hide()\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1543188568,
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
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 135,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateComboPoints()\n    \nend\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        envTable.ComboPointFrame = CreateFrame (\"frame\", nil, unitFrame)\n        envTable.ComboPointFrame:SetScale (sizes.scale)\n        \n        --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n        \n        --animations\n        local onPlayShowAnimation = function (animation)\n            --stop the hide animation if it's playing\n            if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().HideAnimation:Stop()\n            end\n            \n            animation:GetParent():Show()\n        end\n        \n        local onPlayHideAnimation = function (animation)\n            --stop the show animation if it's playing\n            if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().ShowAnimation:Stop()\n            end\n        end        \n        local onStopHideAnimation = function (animation)\n            animation:GetParent():Hide()       \n        end\n        \n        local createAnimations = function (comboPoint)\n            --on show\n            comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n            \n            --on hide\n            comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n        end\n        \n        --build combo point frame        \n        for i =1, 10 do \n            local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n            f:SetSize (sizes.width, sizes.height)\n            tinsert (envTable.ComboPoints, f)\n            \n            local backgroundTexture = f:CreateTexture (nil, \"background\")\n            backgroundTexture:SetTexture (textures.backgroundTexture)\n            backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n            backgroundTexture:SetSize (sizes.width, sizes.height)\n            backgroundTexture:SetPoint (\"center\")\n            \n            local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n            comboPointTexture:SetTexture (textures.comboPointTexture)\n            comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n            \n            comboPointTexture:SetSize (sizes.width, sizes.height)\n            comboPointTexture:SetPoint (\"center\")\n            comboPointTexture:Hide()            \n            \n            f.IsActive = false\n            \n            f.backgroundTexture = backgroundTexture\n            f.comboPointTexture = comboPointTexture\n            \n            createAnimations (f)\n        end\n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1543177139,
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
					["Name"] = "Combo Points [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 155,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)                \n            else\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = false;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    envTable.TargetAmount = envTable.TargetAmount or Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n    Plater.SetAnchor (envTable.TargetAmount, anchor);\n    \n    if (unitFrame.healthBar.TargetAmount) then\n        print (\"Nameplate Already have a Target Amount String!\")\n    end\n    \n    unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------       \n    \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1542808551,
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
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 67,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1542815875,
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
				}, -- [8]
			},
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
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Color Change"] = 1,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Aura - Debuff Alert"] = 3,
				["Unit Power"] = 1,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit - Important"] = 5,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["hook_auto_imported"] = {
				["Players Targetting Amount"] = 1,
				["Targetting Alpha"] = 3,
				["Monk Statue"] = 2,
				["Hide Neutral Units"] = 1,
				["Combo Points"] = 1,
				["Target Color"] = 1,
				["Extra Border"] = 1,
				["Reorder Nameplate"] = 1,
			},
			["aura_timer_text_font"] = "2002",
			["aura_height"] = 16.102123260498,
			["target_highlight_alpha"] = 0.545144736766815,
			["target_indicator"] = "Gray Bold",
			["cast_statusbar_bgtexture"] = "DGround",
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
			["aura_stack_font"] = "Roboto-Medium",
			["patch_version"] = 2,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["stacking_nameplates_enabled"] = false,
			["health_selection_overlay"] = "PlaterFocus",
			["captured_spells"] = {
				[164815] = {
					["source"] = "Indann-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195776] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259489] = {
					["source"] = "Ardiane-Aggramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280375] = {
					["source"] = "Harbingeryes-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80009] = {
					["source"] = "Honorbound Shadow Hunter",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145028,
				},
				[289587] = {
					["source"] = "Honorbound Cannoneer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144719,
				},
				[115192] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281400] = {
					["source"] = "Küo-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fróstfury-Draenor",
					["npcID"] = 0,
				},
				[268607] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270143] = {
					["type"] = "BUFF",
					["source"] = "Talon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129950,
				},
				[183752] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104318] = {
					["source"] = "Wild Imp",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 55659,
				},
				[255909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[281403] = {
					["source"] = "Fredriqua-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Medivqt-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17364] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Medivqt-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[403] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Doherysz-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Harbingeryes-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Shoumetsu-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268616] = {
					["source"] = "Harbingeryes-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[408] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Capacitor Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[281923] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233397] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194249] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[421] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221885] = {
					["source"] = "Robinrövhöl-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[158940] = {
					["source"] = "Coastal Trapfang",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140604,
				},
				[274254] = {
					["source"] = "Fogsail Pillager",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147544,
				},
				[270672] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137642,
				},
				[3409] = {
					["source"] = "Stratidos-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Juhri-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281420] = {
					["source"] = "Bilge Rat Brinescale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129600,
				},
				[279885] = {
					["source"] = "Vkosepovy-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1715] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270674] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Tabsdealer-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1725] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269652] = {
					["source"] = "Ettin Earthcrusher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136421,
				},
				[167898] = {
					["source"] = "Cloaaxe-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280400] = {
					["source"] = "Arminíus-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157153] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204490] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Dragonleet-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274774] = {
					["source"] = "Elderwand-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271194] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116095] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286547] = {
					["source"] = "Coldblack-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257458] = {
					["encounterID"] = 2096,
					["source"] = "Harlan Sweete",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126983,
				},
				[30831] = {
					["source"] = "SI:7 Assassin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144981,
				},
				[203981] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265056] = {
					["type"] = "DEBUFF",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133219,
				},
				[280409] = {
					["source"] = "Kamadhenox-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["type"] = "BUFF",
					["source"] = "Davann-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Doherysz-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287063] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257460] = {
					["encounterID"] = 2096,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251832] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[7384] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247227] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[288091] = {
					["type"] = "DEBUFF",
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282974] = {
					["source"] = "Stratidos-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213708] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cituz-Kazzak",
					["npcID"] = 0,
				},
				[114051] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Harbingeryes-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273766] = {
					["source"] = "7th Legion Stalwart",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147168,
				},
				[273767] = {
					["source"] = "Foundry Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147541,
				},
				[270697] = {
					["source"] = "Captain McCann",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139092,
				},
				[24275] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273768] = {
					["source"] = "7th Legion Vicar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145036,
				},
				[251836] = {
					["source"] = "Whichdoctor-Thunderhorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273769] = {
					["source"] = "7th Legion Healer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146680,
				},
				[185565] = {
					["source"] = "Myymälävaras-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53140] = {
					["source"] = "Shawni-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273770] = {
					["source"] = "7th Legion Vicar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145036,
				},
				[251837] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243138] = {
					["source"] = "Nospheratu-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123904] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274796] = {
					["source"] = "Togoth Cruelarm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144722,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Buffww",
					["encounterID"] = 2096,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[195802] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Forsaken Battleguard",
					["npcID"] = 131216,
				},
				[216528] = {
					["type"] = "BUFF",
					["source"] = "Zakazulu-Auchindoun",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Impu-Draenor",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Lowky-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125056] = {
					["source"] = "Wolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 81000,
				},
				[269169] = {
					["source"] = "Honorbound Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144958,
				},
				[52437] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278381] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208086] = {
					["source"] = "Tarshak-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252353] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[115078] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195805] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Forsaken Battleguard",
					["npcID"] = 131216,
				},
				[280433] = {
					["source"] = "Dreamwarrior-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187874] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Atatakakunak-Kazzak",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Judgemen-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265085] = {
					["type"] = "DEBUFF",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133219,
				},
				[198111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[115080] = {
					["encounterID"] = 2093,
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286581] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265088] = {
					["encounterID"] = 2094,
					["source"] = "Rummy Mancomb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133219,
				},
				[198368] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124036] = {
					["type"] = "BUFF",
					["source"] = "Bøømerswågxx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257476] = {
					["source"] = "Irontide Mastiff",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128551,
				},
				[257732] = {
					["source"] = "Blacktooth Knuckleduster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129547,
				},
				[202719] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196834] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Lophmonk-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204255] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257478] = {
					["source"] = "Irontide Mastiff",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128551,
				},
				[546] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272260] = {
					["source"] = "Foxmonk-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257223] = {
					["source"] = "Wildwood Mongrel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134080,
				},
				[556] = {
					["source"] = "Axeò",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[89751] = {
					["source"] = "Felguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[33697] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Boomcake-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257225] = {
					["source"] = "Wildwood Mongrel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134080,
				},
				[145152] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270219] = {
					["source"] = "Mistweaver Nian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146651,
				},
				[210657] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Trcop-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Tropf-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242642] = {
					["source"] = "Röxy-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171253] = {
					["source"] = "Lîmos-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257739] = {
					["source"] = "Blacktooth Scrapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129529,
				},
				[182512] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Dragonleet-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Tropf-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Felguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[204262] = {
					["source"] = "Tropf-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257741] = {
					["source"] = "Blacktooth Scrapper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129529,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[111759] = {
					["source"] = "Zoozex-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199658] = {
					["source"] = "Honorbound Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149515,
				},
				[77472] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273298] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Alcmene-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258254] = {
					["source"] = "Murphy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130467,
				},
				[273299] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272276] = {
					["source"] = "Kdnp-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255952] = {
					["encounterID"] = 2093,
					["source"] = "Skycap'n Kragg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126832,
				},
				[272790] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mowiiee-Draenor",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Synresto-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262094] = {
					["type"] = "BUFF",
					["source"] = "Davann-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33891] = {
					["source"] = "Astralys-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Øutstanding-Mug'thol",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[169468] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chillquiver-TwistingNether",
					["npcID"] = 0,
				},
				[264605] = {
					["type"] = "BUFF",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133219,
				},
				[288146] = {
					["source"] = "Jigeñ-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279447] = {
					["source"] = "Artillery Master Goodwin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147750,
				},
				[194545] = {
					["source"] = "7th Legion Flamecaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147236,
				},
				[176890] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256979] = {
					["encounterID"] = 2094,
					["source"] = "Captain Eudora",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126848,
				},
				[264608] = {
					["encounterID"] = 2094,
					["source"] = "Rummy Mancomb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133219,
				},
				[269214] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257747] = {
					["source"] = "Blacktooth Brute",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129548,
				},
				[217832] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268194] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187895] = {
					["source"] = "Honorbound Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149515,
				},
				[131347] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258773] = {
					["encounterID"] = 2093,
					["source"] = "Skycap'n Kragg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126832,
				},
				[222695] = {
					["source"] = "Casares-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270244] = {
					["source"] = "Cursed Brambleback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134753,
				},
				[53595] = {
					["source"] = "Harbingeryes-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155145] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259798] = {
					["source"] = "Flowing Honey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131663,
				},
				[79140] = {
					["source"] = "Myymälävaras-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[686] = {
					["source"] = "Locknessie-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[289184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[192249] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258777] = {
					["source"] = "Irontide Oarsman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127111,
				},
				[703] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Davann-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Shìzue-Nemesis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288675] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268717] = {
					["encounterID"] = 2093,
					["source"] = "Sharkbait",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126841,
				},
				[273323] = {
					["source"] = "Mullyo-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197625] = {
					["source"] = "Cantclone-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["source"] = "Nembo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[257756] = {
					["source"] = "Bilge Rat Buccaneer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129527,
				},
				[256477] = {
					["encounterID"] = 2095,
					["source"] = "Sawtooth Shark",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129359,
				},
				[263604] = {
					["source"] = "Haunted Servitor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137587,
				},
				[255966] = {
					["encounterID"] = 2093,
					["source"] = "Skycap'n Kragg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126832,
				},
				[269747] = {
					["source"] = "Ardiane-Aggramar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273842] = {
					["source"] = "Biggiesmaall-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264119] = {
					["source"] = "Locknessie-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19514] = {
					["source"] = "Captain Holgresh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145817,
				},
				[273843] = {
					["source"] = "Juhri-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273844] = {
					["source"] = "Honorbound Spiritcaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145008,
				},
				[269239] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273845] = {
					["source"] = "Honorbound Spiritcaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145008,
				},
				[274357] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187650] = {
					["source"] = "Kzeeh-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271287] = {
					["source"] = "Unbound Stormsurge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141123,
				},
				[273846] = {
					["source"] = "Honorbound Spiritcaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145008,
				},
				[139546] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273847] = {
					["source"] = "Healing Stream Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139362,
				},
				[275384] = {
					["source"] = "Spark Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140789,
				},
				[277943] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Synresto-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79913] = {
					["source"] = "Captain Holgresh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145817,
				},
				[256739] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256228] = {
					["source"] = "Wayward Goat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139796,
				},
				[111898] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Trcop-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Whichdoctor-Thunderhorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["source"] = "Medivqt-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[177931] = {
					["source"] = "Feedgodx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lockdeni-TwistingNether",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Impfaketaxi",
					["npcID"] = 0,
				},
				[262115] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Biggiesmaall-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158486] = {
					["source"] = "Shawni-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89766] = {
					["source"] = "Felguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[8690] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260069] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[21562] = {
					["source"] = "Nølikita-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277441] = {
					["source"] = "Hexthralled Crossbowman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138245,
				},
				[115098] = {
					["source"] = "Pilsnerperra-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Nasxsy-Blackmoore",
					["npcID"] = 0,
				},
				[260070] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[180749] = {
					["type"] = "BUFF",
					["source"] = "Madvenom-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[278467] = {
					["type"] = "DEBUFF",
					["source"] = "Rummy Mancomb",
					["encounterID"] = 2094,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133219,
				},
				[198149] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[197638] = {
					["source"] = "Captain Briggs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147072,
				},
				[225017] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[260072] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[252396] = {
					["source"] = "Sollace-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274377] = {
					["source"] = "Fogsail Pillager",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147544,
				},
				[257258] = {
					["source"] = "Heartwood Soldier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134078,
				},
				[181775] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[290754] = {
					["source"] = "Warhandr-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53600] = {
					["source"] = "Harbingeryes-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265168] = {
					["encounterID"] = 2094,
					["source"] = "Rummy Mancomb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133219,
				},
				[177938] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[271310] = {
					["source"] = "Greystone Cannoneer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146684,
				},
				[53] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[267217] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256237] = {
					["source"] = "Lyhne-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267218] = {
					["source"] = "Vkosepovy-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260843] = {
					["source"] = "Jahden Fla",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122704,
				},
				[274383] = {
					["source"] = "Vermin Trapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130404,
				},
				[232698] = {
					["source"] = "Nølikita-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[257774] = {
					["source"] = "Bilge Rat Padfoot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129550,
				},
				[51490] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261613] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257775] = {
					["source"] = "Bilge Rat Padfoot",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129550,
				},
				[176151] = {
					["source"] = "Paladinapina-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263642] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274389] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108194] = {
					["source"] = "Sanatox-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Tsuglis-Arathor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Educatore-Nemesis",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[256498] = {
					["source"] = "Cursed Falcon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132240,
				},
				[203277] = {
					["source"] = "Loitsumies-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["encounterID"] = 2093,
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Domoc-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Shìzue-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279515] = {
					["source"] = "Kippáx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265187] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280541] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sebbamonk-Ragnaros",
					["npcID"] = 0,
				},
				[286171] = {
					["source"] = "Shoumetsu-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280542] = {
					["source"] = "Adirith-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["source"] = "Harbingeryes-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Berancx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256759] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Koràk-Talnivarr",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Peachyy-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[268776] = {
					["source"] = "Amani Battle Bear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[257784] = {
					["source"] = "Bilge Rat Brinescale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129600,
				},
				[227847] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Peachyy-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202004] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257274] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203285] = {
					["source"] = "Résidual-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260857] = {
					["source"] = "Foundry Escort",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147543,
				},
				[277482] = {
					["source"] = "Greystone Halberdier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131019,
				},
				[264689] = {
					["source"] = "Thompovic-GrimBatol",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203286] = {
					["source"] = "Résidual-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264178] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31224] = {
					["source"] = "Kokalo-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[146739] = {
					["type"] = "DEBUFF",
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257278] = {
					["encounterID"] = 2096,
					["source"] = "Harlan Sweete",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126983,
				},
				[145205] = {
					["source"] = "Synresto-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183075] = {
					["source"] = "Alliance Mage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148914,
				},
				[201754] = {
					["source"] = "Nembo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[197916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mowiiee-Draenor",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Deathgrawl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274420] = {
					["source"] = "Locknessie-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277491] = {
					["source"] = "Greystone Halberdier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131019,
				},
				[185123] = {
					["source"] = "Fanamvp-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8042] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Maddøx-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Mullyo-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279029] = {
					["source"] = "Mullyo-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8122] = {
					["source"] = "Centropy-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207386] = {
					["source"] = "Warhandr-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Nicogg-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274426] = {
					["type"] = "BUFF",
					["source"] = "Isostar-Runetotem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80313] = {
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262145] = {
					["source"] = "Lieutenant Haas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145818,
				},
				[279033] = {
					["source"] = "Mullyo-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198688] = {
					["source"] = "Mladen-TheMaelstrom",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256005] = {
					["encounterID"] = 2093,
					["source"] = "Sharkbait",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126841,
				},
				[1064] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[199203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Ciklét-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271877] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262154] = {
					["source"] = "Honorbound Axe Thrower",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145017,
				},
				[289277] = {
					["source"] = "Coccolo-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257800] = {
					["source"] = "Otis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129441,
				},
				[184364] = {
					["type"] = "BUFF",
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273415] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292350] = {
					["source"] = "SI:7 Assassin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144981,
				},
				[201764] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261895] = {
					["source"] = "Honey Encased Farmhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133154,
				},
				[81340] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203812] = {
					["source"] = "Shedevil-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73920] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262161] = {
					["source"] = "Kimball-Balnazzar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184367] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[203814] = {
					["source"] = "Hollee-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["source"] = "Résidual-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Ciklét-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13730] = {
					["source"] = "Lieutenant Haas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145818,
				},
				[178740] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272402] = {
					["source"] = "Cutwater Knife Juggler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129599,
				},
				[85948] = {
					["source"] = "Nocure",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268311] = {
					["source"] = "Stratidos-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Feedgodx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Monkmastera-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77505] = {
					["source"] = "Niseko",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277524] = {
					["source"] = "Cloaked Saboteur",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145410,
				},
				[48108] = {
					["source"] = "Résidual-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96312] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["source"] = "Dopestèp",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271896] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203819] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Akinfazag",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[204843] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258321] = {
					["source"] = "Irontide Bonesaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129788,
				},
				[246807] = {
					["source"] = "Thanattoss-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Buniorx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5116] = {
					["source"] = "Kzeeh-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278040] = {
					["source"] = "Artillery Master Goodwin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147750,
				},
				[12323] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206636] = {
					["source"] = "Wounded Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145002,
				},
				[233759] = {
					["source"] = "Elderwand-Ravencrest",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197937] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Adirith-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Gunner-Nemesis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259092] = {
					["source"] = "Irontide Stormcaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126919,
				},
				[5308] = {
					["source"] = "Arminíus-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["npcID"] = 78116,
				},
				[108853] = {
					["source"] = "Résidual-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154953] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Lølwyna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270886] = {
					["source"] = "Brittle Shardling",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137715,
				},
				[158792] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257305] = {
					["type"] = "DEBUFF",
					["source"] = "Harlan Sweete",
					["encounterID"] = 2096,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126983,
				},
				[270378] = {
					["source"] = "Krazzlefrazz Officer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135549,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dpsbezsms",
					["npcID"] = 0,
				},
				[187708] = {
					["source"] = "Cringygrill-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192058] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204596] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Ævîl-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289315] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16739] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195386] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[204598] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Whichdoctor-Thunderhorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36213] = {
					["encounterID"] = 2093,
					["source"] = "Primal Earth Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61056,
				},
				[257821] = {
					["source"] = "Captain Eudora",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126848,
				},
				[272945] = {
					["source"] = "Vkosepovy-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1464] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[173895] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[272435] = {
					["source"] = "Darkhound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136408,
				},
				[195901] = {
					["source"] = "Niseko",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Ævîl-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Starsurges-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269879] = {
					["type"] = "BUFF",
					["source"] = "Bloodbough Funggarian",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135901,
				},
				[37685] = {
					["source"] = "SI:7 Assassin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144981,
				},
				[268856] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194879] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269881] = {
					["type"] = "BUFF",
					["source"] = "Bloodbough Funggarian",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135901,
				},
				[218164] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Neylah-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22273] = {
					["source"] = "Honorbound Arcanist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148919,
				},
				[77130] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[69070] = {
					["encounterID"] = 2093,
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257314] = {
					["type"] = "BUFF",
					["source"] = "Irontide Grenadier",
					["encounterID"] = 2096,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129758,
				},
				[267325] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212792] = {
					["source"] = "Tiengelieng-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258338] = {
					["encounterID"] = 2094,
					["source"] = "Captain Raoul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126847,
				},
				[257315] = {
					["encounterID"] = 2096,
					["source"] = "Irontide Grenadier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129758,
				},
				[267327] = {
					["source"] = "Stratidos-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280634] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257316] = {
					["encounterID"] = 2096,
					["source"] = "Harlan Sweete",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126983,
				},
				[277564] = {
					["source"] = "Irontide Bonesaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129788,
				},
				[280635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sebbamonk-Ragnaros",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Stratidos-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115385] = {
					["source"] = "Riverbottom Hunter",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133285,
				},
				[101184] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[257829] = {
					["source"] = "Lightning",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130099,
				},
				[272449] = {
					["source"] = "Alliance Mage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148914,
				},
				[101568] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277567] = {
					["source"] = "Spawn of G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141851,
				},
				[100] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Bibarilla-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Freehold Shipmate",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130522,
				},
				[256551] = {
					["encounterID"] = 2095,
					["source"] = "Sawtooth Shark",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129359,
				},
				[101185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[273988] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264265] = {
					["source"] = "WhiteShadow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[128180] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[256552] = {
					["encounterID"] = 2095,
					["source"] = "Sawtooth Shark",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129359,
				},
				[126389] = {
					["source"] = "Alvard-Ghostlands",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kisshadisan-Ragnaros",
					["npcID"] = 0,
				},
				[225080] = {
					["source"] = "Valdura",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44212] = {
					["source"] = "Shedevil-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271433] = {
					["source"] = "Ezuriel-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273992] = {
					["source"] = "Adirith-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272970] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Stormsong Hunter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140595,
				},
				[268877] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131944] = {
					["source"] = "Son of Xolotal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129124,
				},
				[274507] = {
					["source"] = "Bilge Rat Swabby",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129526,
				},
				[3355] = {
					["source"] = "Kzeeh-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Dotíey-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[128182] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Totem of Harmony",
					["npcID"] = 65387,
				},
				[62124] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207684] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["source"] = "Nølikita-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271440] = {
					["source"] = "Greystone Cannoneer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146684,
				},
				[193356] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["source"] = "Nicogg-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290376] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17253] = {
					["source"] = "Wolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136697,
				},
				[193357] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Khunee",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271443] = {
					["source"] = "Exposed Operative",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139079,
				},
				[262232] = {
					["source"] = "Maddøx-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203849] = {
					["source"] = "Jinijok-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Xbang-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275540] = {
					["source"] = "Dreamwarrior-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["encounterID"] = 2093,
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[271448] = {
					["source"] = "Company Enforcer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133327,
				},
				[127801] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Turnip Punching Bag",
					["npcID"] = 65310,
				},
				[194384] = {
					["source"] = "Xbang-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Dererea-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Isoakthings-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203852] = {
					["source"] = "Bestpalapowa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["type"] = "DEBUFF",
					["source"] = "Valdura",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212552] = {
					["source"] = "Sanatox-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215111] = {
					["source"] = "Dreadstalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[184662] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Dopestèp",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scorpibrave-Kazzak",
					["npcID"] = 0,
				},
				[78674] = {
					["source"] = "Indann-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5221] = {
					["source"] = "Isostar-Runetotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281178] = {
					["source"] = "Татарбоб-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Synresto-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288343] = {
					["source"] = "Adirith-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5277] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256821] = {
					["source"] = "Shedevil-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278110] = {
					["source"] = "Khunee",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275552] = {
					["source"] = "Togoth Cruelarm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144722,
				},
				[55090] = {
					["source"] = "Nocure",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poisonss-TwistingNether",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279648] = {
					["source"] = "Warhandr-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205648] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Harbingeryes-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263274] = {
					["encounterID"] = 2093,
					["source"] = "Skycap'n Kragg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126832,
				},
				[118337] = {
					["type"] = "BUFF",
					["source"] = "Primal Earth Elemental",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61056,
				},
				[268904] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106951] = {
					["type"] = "BUFF",
					["source"] = "Davann-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Astralys-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223306] = {
					["source"] = "Shìzue-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["encounterID"] = 2093,
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Feralbrew-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192090] = {
					["type"] = "DEBUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223819] = {
					["source"] = "Татарбоб-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185438] = {
					["source"] = "Mladen-TheMaelstrom",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Résidual-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256060] = {
					["type"] = "BUFF",
					["source"] = "Skycap'n Kragg",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126832,
				},
				[152175] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258875] = {
					["encounterID"] = 2094,
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130896,
				},
				[122] = {
					["source"] = "Tiengelieng-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278124] = {
					["source"] = "Racsiwall-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["source"] = "Racsiwall-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259388] = {
					["source"] = "Ardiane-Aggramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["source"] = "Teketaka-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279151] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49143] = {
					["source"] = "Deathgrawl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279152] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279664] = {
					["source"] = "Vanquished Tendril of G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143520,
				},
				[123586] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2093,
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32064] = {
					["source"] = "Honorbound Berserker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149515,
				},
				[273525] = {
					["type"] = "BUFF",
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264314] = {
					["source"] = "Deadeyés-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sebbamonk-Ragnaros",
					["npcID"] = 0,
				},
				[205146] = {
					["source"] = "Locknessie-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284275] = {
					["source"] = "Татарбоб-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263806] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["type"] = "BUFF",
					["source"] = "Kukuluku-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Dobrymisiek-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79961] = {
					["source"] = "Foundry Medic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147542,
				},
				[45242] = {
					["source"] = "Xbang-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280184] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274555] = {
					["source"] = "Soggy Shiprat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130024,
				},
				[130] = {
					["source"] = "Supmush-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Urgh-TwistingNether",
					["npcID"] = 0,
				},
				[281721] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mowiiee-Draenor",
					["npcID"] = 0,
				},
				[79962] = {
					["source"] = "Foundry Medic",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147542,
				},
				[133] = {
					["source"] = "Medivqt-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256581] = {
					["source"] = "Scheming Street Scamp",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129394,
				},
				[109132] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[74589] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278143] = {
					["source"] = "Hippythunt-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Thanattoss-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132483] = {
					["source"] = "Astralys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278144] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Blindtwice",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281216] = {
					["type"] = "BUFF",
					["source"] = "Thrúc-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["source"] = "Shìzue-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118345] = {
					["source"] = "Primal Earth Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61056,
				},
				[8936] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Valkyiree-Balnazzar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[229206] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79964] = {
					["source"] = "Foundry Medic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147542,
				},
				[277637] = {
					["source"] = "Motega Bloodshield",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145286,
				},
				[280709] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["source"] = "Adirith-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270987] = {
					["type"] = "BUFF",
					["source"] = "Disciple of Nalorakk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120949,
				},
				[192106] = {
					["source"] = "Liforan-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268429] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 113201,
				},
				[273547] = {
					["source"] = "Exposed Operative",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139079,
				},
				[61684] = {
					["source"] = "Nembo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32517,
				},
				[272013] = {
					["source"] = "Vicious Hellhound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136399,
				},
				[280713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fdp-Nemesis",
					["npcID"] = 0,
				},
				[278155] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278156] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256589] = {
					["type"] = "BUFF",
					["source"] = "Captain Raoul",
					["encounterID"] = 2094,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126847,
				},
				[276110] = {
					["source"] = "Lieutenant Haas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145818,
				},
				[270481] = {
					["source"] = "Demonic Tyrant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135002,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Troopx",
					["npcID"] = 0,
				},
				[258381] = {
					["encounterID"] = 2094,
					["source"] = "Captain Eudora",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126848,
				},
				[13750] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195692] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257870] = {
					["source"] = "Irontide Buccaneer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130011,
				},
				[182387] = {
					["source"] = "Niseko",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190831] = {
					["source"] = "Kabitoszeerr-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51514] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195949] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Dopestèp",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Wiokie-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268439] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2484] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272534] = {
					["encounterID"] = 2095,
					["source"] = "Booty Fanatic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136539,
				},
				[268953] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115151] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mowiiee-Draenor",
					["npcID"] = 0,
				},
				[268954] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[98008] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[71909] = {
					["source"] = "Valdura",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263840] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 81000,
				},
				[281240] = {
					["source"] = "Amanek-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131474] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Erbu",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Pestilenz-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105174] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279199] = {
					["source"] = "Goblin Zeppelineer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144724,
				},
				[235617] = {
					["source"] = "Honorbound Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149515,
				},
				[196980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[138130] = {
					["source"] = "Earth Spirit",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[8921] = {
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172] = {
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279715] = {
					["source"] = "Medivqt-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17962] = {
					["source"] = "Teketaka-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[22120] = {
					["source"] = "Captain Briggs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147072,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[272554] = {
					["encounterID"] = 2095,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176644] = {
					["type"] = "BUFF",
					["source"] = "Dyscordyo-Nemesis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176458] = {
					["type"] = "BUFF",
					["source"] = "Blacksmithing Follower - Horde",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88402,
				},
				[267486] = {
					["source"] = "Frokks-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Erbu",
					["npcID"] = 0,
				},
				[180748] = {
					["type"] = "BUFF",
					["source"] = "Damnatum-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shadowarrows-TwistingNether",
					["npcID"] = 0,
				},
				[201846] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269994] = {
					["source"] = "Irontide Brigand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135771,
				},
				[277185] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84963] = {
					["source"] = "Thanattoss-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280830] = {
					["type"] = "BUFF",
					["source"] = "Greyface",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279766] = {
					["type"] = "BUFF",
					["source"] = "Toska Eaglehorn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140778,
				},
				[79206] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272046] = {
					["encounterID"] = 2093,
					["source"] = "Sharkbait",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126841,
				},
				[201787] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1822] = {
					["source"] = "Isostar-Runetotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brjálæðingur-TwistingNether",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281000] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280773] = {
					["type"] = "DEBUFF",
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201350] = {
					["source"] = "Zachariasgr-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Grumlok-Frostwhisper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270871] = {
					["type"] = "BUFF",
					["source"] = "Stone Golem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137708,
				},
				[188031] = {
					["source"] = "Happycoil-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Ciklét-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152173] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256350] = {
					["source"] = "Stonejaw Youngling",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141716,
				},
				[208772] = {
					["source"] = "Xbang-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Kareja-Nemesis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195708] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[283309] = {
					["source"] = "Azerite Iron Star",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145678,
				},
				[209967] = {
					["type"] = "BUFF",
					["source"] = "Dire Basilisk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105419,
				},
				[2948] = {
					["source"] = "Résidual-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261893] = {
					["type"] = "BUFF",
					["source"] = "Krazzlefrazz Officer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135549,
				},
				[267374] = {
					["type"] = "BUFF",
					["source"] = "Morwin Gladeheart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135976,
				},
				[269906] = {
					["type"] = "BUFF",
					["source"] = "Bloodbough Funggarian",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135901,
				},
				[260734] = {
					["source"] = "Matthewtuck-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210660] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Levinnox-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231895] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205179] = {
					["type"] = "DEBUFF",
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123986] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256878] = {
					["source"] = "Hexwood Binder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133112,
				},
				[63106] = {
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17735] = {
					["source"] = "Thulmoth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[199804] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271543] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272055] = {
					["encounterID"] = 2093,
					["source"] = "Sharkbait",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126841,
				},
				[3716] = {
					["source"] = "Thulmoth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[270121] = {
					["source"] = "Cursed Brambleback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134753,
				},
				[271544] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256865] = {
					["source"] = "Crimson Evoker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134076,
				},
				[119381] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283315] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255852] = {
					["source"] = "Crimsonwood Prowler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137640,
				},
				[58875] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255858] = {
					["source"] = "Crimsonwood Prowler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137640,
				},
				[85222] = {
					["source"] = "Shìzue-Nemesis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81256] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204021] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255075] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[281007] = {
					["type"] = "BUFF",
					["source"] = "Haunted Servitor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137587,
				},
				[157331] = {
					["source"] = "Primal Storm Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 77942,
				},
				[273193] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257260] = {
					["type"] = "BUFF",
					["source"] = "Heartwood Soldier",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134078,
				},
				[256874] = {
					["source"] = "Crimson Evoker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134076,
				},
				[257254] = {
					["source"] = "Heartwood Soldier",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134078,
				},
				[195457] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hedda-Outland",
					["npcID"] = 0,
				},
				[255076] = {
					["source"] = "Райянгослинг-Ревущийфьорд",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Valdura",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61882] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93622] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268602] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277179] = {
					["source"] = "Elderwand-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271550] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33917] = {
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2093,
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279943] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6807] = {
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277181] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Arkanein-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117679] = {
					["source"] = "Astralys-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289283] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265412] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269564] = {
					["type"] = "BUFF",
					["source"] = "Pyriflegeton-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["source"] = "Nølikita-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256358] = {
					["encounterID"] = 2095,
					["source"] = "Trothak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126969,
				},
				[276840] = {
					["type"] = "BUFF",
					["source"] = "Furclaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259449] = {
					["type"] = "BUFF",
					["source"] = "Rienne-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263607] = {
					["source"] = "Avatar of Xolotal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129343,
				},
				[263540] = {
					["type"] = "BUFF",
					["source"] = "Avatar of Xolotal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129343,
				},
				[276154] = {
					["type"] = "BUFF",
					["source"] = "Gnorre-Frostmane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Tembo-BurningLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201223] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289467] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Originaldjx-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273453] = {
					["type"] = "BUFF",
					["source"] = "Avishamy-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274860] = {
					["source"] = "Irontide Enforcer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129602,
				},
				[30283] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280845] = {
					["type"] = "BUFF",
					["source"] = "Hallowton",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Silverback Thumpknuckle",
					["npcID"] = 130543,
				},
				[196741] = {
					["source"] = "Razhgrom-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Araitik",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207744] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277525] = {
					["source"] = "Honorbound Assassin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146749,
				},
				[273606] = {
					["source"] = "Captain McCann",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139092,
				},
				[254474] = {
					["source"] = "Татарбоб-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278326] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221562] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273607] = {
					["type"] = "BUFF",
					["source"] = "Captain McCann",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139092,
				},
				[258920] = {
					["source"] = "Dererea-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[169291] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[53209] = {
					["source"] = "Gunner-Nemesis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273218] = {
					["source"] = "Trapped Tortollan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139086,
				},
				[256106] = {
					["encounterID"] = 2093,
					["source"] = "Skycap'n Kragg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126832,
				},
				[273276] = {
					["source"] = "Zeth'jir Seashaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139124,
				},
				[277703] = {
					["source"] = "Arabah-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32645] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276166] = {
					["source"] = "Zeth'jir Enthraller",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130822,
				},
				[283333] = {
					["source"] = "Azerite Iron Star",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145678,
				},
				[269304] = {
					["source"] = "Venture Co. Oiler",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137065,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181346] = {
					["source"] = "Barbedclaw Grizzly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139793,
				},
				[256363] = {
					["encounterID"] = 2095,
					["source"] = "Trothak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126969,
				},
				[256619] = {
					["source"] = "Scheming Street Scamp",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129394,
				},
				[257297] = {
					["source"] = "Vinespeaker Ratha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135939,
				},
				[280776] = {
					["source"] = "Dobrymisiek-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278733] = {
					["source"] = "Ice Sickle",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141039,
				},
				[6673] = {
					["source"] = "Grumlok-Frostwhisper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257899] = {
					["source"] = "Irontide Ravager",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130012,
				},
				[115804] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258278] = {
					["source"] = "Nondead-Lightning'sBlade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Nocure",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257541] = {
					["source"] = "Medivqt-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[130736] = {
					["source"] = "Nocure",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[274598] = {
					["source"] = "Medivqt-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288455] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Dererea-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Ævîl-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Eshur-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["source"] = "Kdnp-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["source"] = "Thanattoss-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["source"] = "Myymälävaras-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262652] = {
					["source"] = "Mullyo-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278734] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141039,
				},
				[274373] = {
					["source"] = "Nocure",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81262] = {
					["source"] = "Efflorescence",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[258925] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262152] = {
					["source"] = "Honorbound Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147150,
				},
				[34026] = {
					["source"] = "Kzeeh-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262539] = {
					["source"] = "Motega Bloodshield",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145286,
				},
				[186257] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Deadeyés-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212704] = {
					["source"] = "Silfraa-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["source"] = "Adirith-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270017] = {
					["source"] = "Company Enforcer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133327,
				},
				[257135] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nomád-Arathor",
					["npcID"] = 0,
				},
				[290512] = {
					["source"] = "Razhgrom-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Kureyah-Aggramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hillstorm-Kazzak",
					["npcID"] = 0,
				},
				[278108] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257949] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Acidgirl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165144] = {
					["source"] = "Huojin Disciple",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148749,
				},
				[30151] = {
					["source"] = "Khil-garath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[51124] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257904] = {
					["source"] = "Ludwig Von Tortollan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129699,
				},
				[280787] = {
					["source"] = "Robinrövhöl-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280735] = {
					["source"] = "Biggiesmaall-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258672] = {
					["source"] = "Irontide Crackshot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126918,
				},
				[273977] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280788] = {
					["source"] = "Robinrövhöl-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280149] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280187] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286418] = {
					["source"] = "Boralus Siege Mortar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147759,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[166302] = {
					["type"] = "BUFF",
					["source"] = "Blingtron 5000",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77789,
				},
				[225921] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278231] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49028] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279767] = {
					["type"] = "BUFF",
					["source"] = "Tala Rockwind",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140782,
				},
				[267997] = {
					["source"] = "Vilefiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135816,
				},
				[264415] = {
					["source"] = "Daelora-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Earthbind Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2630,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Decadus-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Maddøx-Archimonde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157348] = {
					["source"] = "Primal Storm Elemental",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77942,
				},
				[267999] = {
					["source"] = "Vilefiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135816,
				},
				[30213] = {
					["source"] = "Felguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[22859] = {
					["source"] = "Togoth Cruelarm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144722,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Öutz",
					["npcID"] = 0,
				},
				[20572] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132480] = {
					["source"] = "Pipi-Kor'gall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257908] = {
					["source"] = "Irontide Officer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127106,
				},
				[1044] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271588] = {
					["source"] = "7th Legion Flamecaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147236,
				},
				[203407] = {
					["source"] = "Astralys-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276190] = {
					["source"] = "Nocure",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Shunjin-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257397] = {
					["source"] = "Irontide Bonesaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129788,
				},
				[138927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Swixie-Ragnaros",
					["npcID"] = 0,
				},
				[276191] = {
					["source"] = "Executiè-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["source"] = "Lowky-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256374] = {
					["source"] = "Adirith-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276192] = {
					["source"] = "Shunjin-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282845] = {
					["source"] = "Trap",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145295,
				},
				[256016] = {
					["encounterID"] = 2093,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Résidual-Outland",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["encounterID"] = 2093,
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279264] = {
					["source"] = "Honorbound Shadow Hunter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145028,
				},
				[213644] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276194] = {
					["source"] = "Nocure",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288988] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259277] = {
					["source"] = "Mokwai",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 81000,
				},
				[213858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dreadkind-Outland",
					["npcID"] = 0,
				},
				[268519] = {
					["type"] = "BUFF",
					["source"] = "Davann-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264173] = {
					["source"] = "Vkosepovy-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277731] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247677] = {
					["source"] = "Татарбоб-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Seroc-Ravencrest",
					["npcID"] = 0,
				},
				[273465] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Tropf-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gwardogord-TwistingNether",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Valkyiree-Balnazzar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[43415] = {
					["source"] = "Honorbound Shadow Hunter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145028,
				},
				[203233] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270569] = {
					["source"] = "Vkosepovy-Daggerspine",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Ciklét-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257657] = {
					["source"] = "Stone Golem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137708,
				},
				[24331] = {
					["source"] = "Harbor Saurid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126023,
				},
				[61295] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191587] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185245] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154796] = {
					["source"] = "Shunjin-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257402] = {
					["encounterID"] = 2096,
					["source"] = "Harlan Sweete",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126983,
				},
				[280404] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187878] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Dzamor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[267329] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["type"] = "BUFF",
					["source"] = "Kareja-Nemesis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16591] = {
					["source"] = "Sandlol-Frostmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257659] = {
					["source"] = "Stone Golem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137708,
				},
				[53390] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199412] = {
					["source"] = "Adirith-Dragonblight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79863] = {
					["source"] = "Cloaked Saboteur",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145410,
				},
				[276204] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Bronticious-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Fanamvp-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59752] = {
					["source"] = "Elderwand-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Wiokie-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Ciklét-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217744] = {
					["source"] = "Artillery Master Goodwin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147750,
				},
				[276061] = {
					["source"] = "Irontide Crusher",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130400,
				},
				[19574] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247218] = {
					["source"] = "Hardened Warrior",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144720,
				},
				[259455] = {
					["source"] = "Valkyiree-Balnazzar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288803] = {
					["source"] = "Résidual-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290374] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257831] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Monkmastera-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202137] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267331] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276209] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spökjagaren-Kazzak",
					["npcID"] = 0,
				},
				[190319] = {
					["source"] = "Medivqt-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167105] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278769] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Alexk-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198300] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spökjagaren-Kazzak",
					["npcID"] = 0,
				},
				[280817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[281329] = {
					["encounterID"] = 2094,
					["source"] = "Captain Jolly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126845,
				},
				[197277] = {
					["source"] = "Khunee",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256405] = {
					["type"] = "BUFF",
					["source"] = "Trothak",
					["encounterID"] = 2095,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126969,
				},
				[54149] = {
					["source"] = "Shìzue-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216251] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276213] = {
					["source"] = "Ookin Rum Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140209,
				},
				[203720] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279185] = {
					["source"] = "Blackpowder Expert",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144721,
				},
				[207685] = {
					["source"] = "Hudz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mowiiee-Draenor",
					["npcID"] = 0,
				},
				[192999] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[259456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mightypeon-Kazzak",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Residual-Outland",
					["npcID"] = 0,
				},
				[60103] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[585] = {
					["source"] = "Xbang-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118038] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198097] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272122] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nakedcake-Kazzak",
					["npcID"] = 0,
				},
				[122783] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Mintfilia-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34767] = {
					["source"] = "Burpal-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51271] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31566] = {
					["source"] = "Honorbound Shadow Hunter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145028,
				},
				[271105] = {
					["source"] = "Dreamwarrior-Dunemaul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277242] = {
					["source"] = "Irontide Enforcer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129602,
				},
				[103740] = {
					["encounterID"] = 2093,
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Gunner-Nemesis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45182] = {
					["source"] = "Mladen-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Hippythunt-Deathwing",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122470] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gwardogord-TwistingNether",
					["npcID"] = 0,
				},
				[257426] = {
					["source"] = "Irontide Enforcer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129602,
				},
				[271103] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Süikkari",
					["npcID"] = 0,
				},
				[102383] = {
					["source"] = "Wexx-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[111400] = {
					["source"] = "Locknessie-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129250] = {
					["source"] = "Xbang-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27243] = {
					["type"] = "DEBUFF",
					["source"] = "Maedry-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[204366] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Kranch-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Khunee",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49020] = {
					["source"] = "Deathgrawl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258181] = {
					["source"] = "Irontide Crusher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130400,
				},
				[1079] = {
					["source"] = "Indann-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Ævîl-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201633] = {
					["source"] = "Earthen Wall Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[17] = {
					["source"] = "Nølikita-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["source"] = "Seifour-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59052] = {
					["source"] = "Deathgrawl-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116841] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mightypeon-Kazzak",
					["npcID"] = 0,
				},
				[285496] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27576] = {
					["source"] = "Myymälävaras-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260249] = {
					["source"] = "Ardiane-Aggramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259462] = {
					["source"] = "Coral Snapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137763,
				},
				[245389] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288509] = {
					["type"] = "BUFF",
					["source"] = "Viktigpetter-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rapacious Fathomjaw",
					["npcID"] = 129305,
				},
				[213405] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[194153] = {
					["source"] = "Indann-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199844] = {
					["source"] = "Juhri-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sebbamonk-Ragnaros",
					["npcID"] = 0,
				},
				[62061] = {
					["source"] = "Aengrod-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Fanamvp-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198103] = {
					["encounterID"] = 2093,
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124007] = {
					["encounterID"] = 2093,
					["source"] = "Xuen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 63508,
				},
				[258333] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1680] = {
					["source"] = "Honorbound Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149515,
				},
				[45181] = {
					["source"] = "Coldblack-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114014] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Stratidos-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Daelora-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66906] = {
					["source"] = "Nangilíma-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257418] = {
					["source"] = "Mullyo-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34769] = {
					["type"] = "BUFF",
					["source"] = "Jamesson-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Lokisdk-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[278070] = {
					["source"] = "Ardiane-Aggramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147367] = {
					["source"] = "Админус-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276316] = {
					["source"] = "Rampaging Gatecrasher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144728,
				},
				[204197] = {
					["source"] = "Xbang-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275351] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259491] = {
					["source"] = "Ardiane-Aggramar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["source"] = "Kyyerio-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202138] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60229] = {
					["source"] = "Thanattoss-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Angellyca-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12294] = {
					["source"] = "Kustssen-Aggra(Português)",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "Nembo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[179057] = {
					["source"] = "Dererea-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265273] = {
					["source"] = "Vkosepovy-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["source"] = "Adirith-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257537] = {
					["source"] = "Juhri-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Niseko",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Buffww",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124009] = {
					["type"] = "BUFF",
					["source"] = "Xuen",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 63508,
				},
				[206930] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199261] = {
					["source"] = "Админус-ЧерныйШрам",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thieving Snapper",
					["npcID"] = 126331,
				},
				[46924] = {
					["source"] = "Biggiesmaall-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Calonex-Kazzak",
					["npcID"] = 0,
				},
				[157375] = {
					["source"] = "Primal Storm Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 77942,
				},
				[278288] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vator-Zenedar",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Mashy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289324] = {
					["source"] = "Pilsnerperra-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thieving Snapper",
					["npcID"] = 126331,
				},
				[115310] = {
					["source"] = "Mythrile",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283167] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277778] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[210643] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2818] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199340] = {
					["source"] = "Trap",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145295,
				},
				[193455] = {
					["source"] = "Kzeeh-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Tropf-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257436] = {
					["source"] = "Irontide Corsair",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126928,
				},
				[198222] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Razhgrom-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131894] = {
					["source"] = "Gunner-Nemesis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193456] = {
					["type"] = "BUFF",
					["source"] = "Coffeh-Arathor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["source"] = "Elderwand-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187827] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116706] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198819] = {
					["source"] = "Tarshak-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "SI:7 Assassin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144981,
				},
				[261764] = {
					["source"] = "Coldblack-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13877] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199854] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["source"] = "Lowky-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48265] = {
					["source"] = "Decadus-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269085] = {
					["source"] = "Valdura",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204157] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278297] = {
					["source"] = "Alcmene-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258352] = {
					["encounterID"] = 2094,
					["source"] = "Captain Eudora",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126848,
				},
				[188838] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290068] = {
					["type"] = "DEBUFF",
					["source"] = "Sawtooth Shark",
					["encounterID"] = 2095,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129359,
				},
				[281413] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256148] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153595] = {
					["source"] = "Juhri-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Indann-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Khatalia-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198065] = {
					["source"] = "Juhri-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Avaliice-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258323] = {
					["source"] = "Irontide Bonesaw",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129788,
				},
				[278812] = {
					["source"] = "Centropy-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Fanamvp-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Khantaria-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "Nembo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32517,
				},
				[257408] = {
					["source"] = "Thurnishaley-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["source"] = "Myymälävaras-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Elderwand-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280861] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Ciklét-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Adirith-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280862] = {
					["source"] = "Kustssen-Aggra(Português)",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132563] = {
					["source"] = "Pipi-Kor'gall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242685] = {
					["source"] = "Mistweaver Nian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146651,
				},
				[223143] = {
					["source"] = "Ævîl-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276189] = {
					["source"] = "Berancx-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Khunee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Hephaéstuß-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290377] = {
					["source"] = "Shunjin-TheMaelstrom",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[132564] = {
					["source"] = "Astralys-TwistingNether",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196277] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["source"] = "Centropy-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258199] = {
					["source"] = "Irontide Crusher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130400,
				},
				[181767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lootarr-Sunstrider",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Wiokie-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205351] = {
					["source"] = "Centropy-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278819] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198069] = {
					["source"] = "Xbang-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188290] = {
					["source"] = "Fyrstelars-Sylvanas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270120] = {
					["source"] = "Cursed Brambleback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134753,
				},
				[118699] = {
					["source"] = "Teketaka-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Egnam",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Fanamvp-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162759] = {
					["source"] = "Mistweaver Nian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146651,
				},
				[774] = {
					["source"] = "Synresto-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202164] = {
					["source"] = "Maddøx-Archimonde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247454] = {
					["source"] = "Hudz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279153] = {
					["type"] = "BUFF",
					["source"] = "Khunee",
					["encounterID"] = 2094,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198838] = {
					["source"] = "Valdura",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Miistermaen-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34189] = {
					["source"] = "Mischievous Ferret",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143361,
				},
				[6770] = {
					["source"] = "Seifour-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259140] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["source"] = "Bronticious-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[79877] = {
					["source"] = "Honorbound Berserker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149515,
				},
				[198839] = {
					["source"] = "Earthen Wall Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[257272] = {
					["source"] = "Sharkbait",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129743,
				},
				[213680] = {
					["type"] = "BUFF",
					["source"] = "Zeronys-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272172] = {
					["source"] = "Shivarra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136406,
				},
				[51533] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204213] = {
					["source"] = "Xbang-Sylvanas",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247456] = {
					["source"] = "Hudz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["source"] = "Medivqt-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272685] = {
					["source"] = "Nakiko-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280286] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["source"] = "Harbingeryes-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Fyrstelars-Sylvanas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Valdura",
					["encounterID"] = 2093,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79878] = {
					["source"] = "Honorbound Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149515,
				},
				[30146] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[115356] = {
					["source"] = "Hellmeat-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276187] = {
					["source"] = "Ardiane-Aggramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Shìzue-Nemesis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257437] = {
					["source"] = "Irontide Corsair",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126928,
				},
				[147732] = {
					["source"] = "Hellmeat-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Anumari-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Bølger-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197051] = {
					["source"] = "Myymälävaras-TwistingNether",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[234153] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268440] = {
					["source"] = "Irontide Crackshot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126918,
				},
				[194284] = {
					["source"] = "Zunjo of Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145287,
				},
				[289578] = {
					["source"] = "Honorbound Cannoneer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144719,
				},
				[202636] = {
					["source"] = "Doherysz-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Bronticious-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274738] = {
					["source"] = "Lilbibi-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263897] = {
					["source"] = "Bucktooth Beaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134359,
				},
				[259161] = {
					["source"] = "Yrius-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Indann-Kazzak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274739] = {
					["type"] = "BUFF",
					["source"] = "Zenzeylul-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Thanattoss-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210191] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[853] = {
					["source"] = "Khunee",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274740] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290468] = {
					["source"] = "Nîmrod-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Lilbibi-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124280] = {
					["source"] = "Buffww",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60234] = {
					["source"] = "Niseko",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Neylah-Pozzodell'Eternità",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Vkosepovy-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102351] = {
					["source"] = "Astralys-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Murble-Ravencrest",
					["npcID"] = 0,
				},
				[285489] = {
					["type"] = "BUFF",
					["source"] = "Kimball-Balnazzar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Kampvognen-TwistingNether",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhumor-Sylvanas",
					["npcID"] = 0,
				},
				[195775] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moonfeather Statue",
					["npcID"] = 99555,
				},
				[274400] = {
					["source"] = "Cutwater Duelist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129559,
				},
				[280549] = {
					["source"] = "Atif-Kazzak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Buffww",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8143] = {
					["source"] = "Niseko",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Deathgrawl-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Monkmastera-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80983] = {
					["source"] = "Captain Briggs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147072,
				},
			},
			["range_check_alpha"] = 0.698643982410431,
		},
	},
}

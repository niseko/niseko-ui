
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 4183,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Clique' tried to call the protected function 'CompactRaidGroup3Member4:Show()'.",
			["time"] = "2019/07/21 22:05:55",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:367: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:299: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:121: in function <Interface\\FrameXML\\CompactUnitFrame.lua:54>",
			["session"] = 4155,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[string \"--[[ Error in 'T25 ArcingCurrent Counter + ...\"]:2: attempt to index field 'cds' (a nil value)",
			["time"] = "2019/07/21 22:30:28",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Icon.lua:547: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.13.4.lua:4490: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4484>",
			["session"] = 4155,
			["counter"] = 169,
		}, -- [2]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:1912: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2019/07/21 23:14:44",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n Flash = <unnamed> {\n }\n showCastbar = true\n background = <unnamed> {\n }\n Icon = <unnamed> {\n }\n startChannelColor = <table> {\n }\n finishedCastColor = <table> {\n }\n iconWhenNoninterruptible = true\n Text = <unnamed> {\n }\n additionalFadeWidgets = <table> {\n }\n Spark = <unnamed> {\n }\n BorderShield = <unnamed> {\n }\n finishedColorSameAsStart = true\n startCastColor = <table> {\n }\n flashColorSameAsStart = true\n failedCastColor = <table> {\n }\n nonInterruptibleColor = <table> {\n }\n}\n(*temporary) = 18.800000\n",
			["stack"] = "[C]: in function `SetHeight'\nInterface\\FrameXML\\CompactUnitFrame.lua:1912: in function `DefaultCompactNamePlateFrameSetupInternal'\nInterface\\FrameXML\\CompactUnitFrame.lua:1875: in function `DefaultCompactNamePlateFrameSetup'\nInterface\\FrameXML\\CompactUnitFrame.lua:1890: in function `func'\nInterface\\FrameXML\\CompactUnitFrame.lua:219: in function <Interface\\FrameXML\\CompactUnitFrame.lua:218>\n[C]: in function `CompactUnitFrame_SetUpFrame'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:117: in function `ApplyFrameOptions'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:93: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 4156,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:681: Usage: UnitDistanceSquared(\"unit\")",
			["time"] = "2019/07/21 23:14:44",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `UnitDistanceSquared'\nInterface\\FrameXML\\CompactUnitFrame.lua:681: in function `CompactUnitFrame_UpdateDistance'\nInterface\\FrameXML\\CompactUnitFrame.lua:159: in function <Interface\\FrameXML\\CompactUnitFrame.lua:157>",
			["session"] = 4156,
			["counter"] = 11,
		}, -- [4]
		{
			["message"] = "Interface\\FrameXML\\CompactUnitFrame.lua:254: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2019/07/21 23:14:42",
			["locals"] = "(*temporary) = ForbiddenNamePlate7UnitFrame {\n 0 = <userdata>\n WidgetContainer = <unnamed> {\n }\n classificationIndicator = <unnamed> {\n }\n castBar = <unnamed> {\n }\n maxDispelDebuffs = 0\n inVehicle = false\n optionTable = <table> {\n }\n overAbsorbGlow = <unnamed> {\n }\n totalAbsorb = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n aggroHighlight = <unnamed> {\n }\n hideCastbar = true\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n newUnit = true\n selectionHighlight = <unnamed> {\n }\n myHealAbsorbLeftShadow = <unnamed> {\n }\n ClassificationFrame = <unnamed> {\n }\n unitExists = true\n disableMouse = true\n otherHealPrediction = <unnamed> {\n }\n BuffFrame = <unnamed> {\n }\n name = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n myHealAbsorb = <unnamed> {\n }\n maxBuffs = 0\n maxDebuffs = 0\n RaidTargetFrame = <unnamed> {\n }\n healthBar = <unnamed> {\n }\n LoseAggroAnim = <unnamed> {\n }\n}\n(*temporary) = \"OnEvent\"\n(*temporary) = nil\n",
			["stack"] = "[C]: in function `SetScript'\nInterface\\FrameXML\\CompactUnitFrame.lua:254: in function `CompactUnitFrame_UnregisterEvents'\nInterface\\FrameXML\\CompactUnitFrame.lua:178: in function `CompactUnitFrame_SetUnit'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:401: in function `OnRemoved'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:146: in function `OnNamePlateRemoved'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:54: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 4156,
			["counter"] = 3,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\BigWigs_Voice\\Core.lua:19: PlaySoundFile Error - Invalid fileDataID for sound.",
			["time"] = "2019/07/21 21:18:54",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `PlaySoundFile'\nInterface\\AddOns\\BigWigs_Voice\\Core.lua:19: in function `v'\nInterface\\AddOns\\BigWigs\\Loader.lua:938: in function `SendMessage'\nInterface\\AddOns\\BigWigs_Core\\BossPrototype.lua:2331: in function `PlaySound'\nInterface\\AddOns\\BigWigs_EternalPalace\\Orgozoa.lua:123: in function `?'\nInterface\\AddOns\\BigWigs_Core\\BossPrototype.lua:456: in function <Interface\\AddOns\\BigWigs_Core\\BossPrototype.lua:422>",
			["session"] = 4157,
			["counter"] = 701,
		}, -- [6]
		{
			["message"] = "[string \"--[[ Error in 'Targeted Spells' ]] return f...\"]:197: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: <unnamed>:SetPoint.",
			["time"] = "2019/07/23 20:18:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"--[[ Error in 'Targeted Spells' ]] return f...\"]:197: in function `addFontToNameplate'\n[string \"--[[ Error in 'Targeted Spells' ]] return f...\"]:138: in function <[string \"--[[ Error in 'Targeted Spells' ]] return f...\"]:1>\n[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:525: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:519>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:672: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:721: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:712>",
			["session"] = 4178,
			["counter"] = 395,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in '08 Massive Energy Spike' ]] ...\"]:34: attempt to perform arithmetic on field 'name' (a nil value)",
			["time"] = "2019/07/23 23:36:07",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:525: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:519>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:672: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:632: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:721: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:712>",
			["session"] = 4178,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Interface\\FrameXML\\GameTooltip.lua:154: Action[SetPoint] failed because[SetPoint would result in anchor family connection]: attempted from: GameTooltip:SetPoint.",
			["time"] = "2019/07/21 20:08:48",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n SetCurrencyByID = <function> defined =[C]:-1\n ItemTooltip = <unnamed> {\n }\n SetHyperlink = <function> defined =[C]:-1\n SetGuildBankItem = <function> defined =[C]:-1\n SetVoidItem = <function> defined =[C]:-1\n SetVoidDepositItem = <function> defined =[C]:-1\n SetVoidWithdrawalItem = <function> defined =[C]:-1\n comparing = false\n isModified = false\n TopOverlay = <unnamed> {\n }\n default = 1\n SetUnitDebuff = <function> defined =[C]:-1\n SetLootItem = <function> defined =[C]:-1\n SetQuestItem = <function> defined =[C]:-1\n FadeOut = <function> defined @Interface\\AddOns\\TipTac\\ttCore.lua:853\n PixelSnapDisabled = true\n SetInboxItem = <function> defined =[C]:-1\n SetBuybackItem = <function> defined =[C]:-1\n shoppingTooltips = <table> {\n }\n SetMerchantItem = <function> defined =[C]:-1\n SetQuestLogItem = <function> defined =[C]:-1\n SetBackpackToken = <function> defined =[C]:-1\n BottomOverlay = <unnamed> {\n }\n SetTradePlayerItem = <function> defined =[C]:-1\n Hide = <function> defined =[C]:-1\n SetSendMailItem = <function> defined =[C]:-1\n SetCurrencyToken = <function> defined =[C]:-1\n updateTooltip = 0.150000\n SetInventoryItem = <function> defined =[C]:-1\n SetUnitBuff = <function> defined =[C]:-1\n ttCount = <unnamed> {\n }\n SetLootRollItem = <function> defined =[C]:-1\n SetUnitAura = <function> defined =[C]:-1\n SetRecipeReagentItem = <function> defined =[C]:-1\n SetAuctionSellItem = <function> defined =[C]:-1\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n SetTradeTargetItem = <function> defined =[C]:-1\n ttIcon = <unnamed> {\n }\n SetRecipeResultItem = <function> defined =[C]:-1\n SetAuctionItem = <function> defined =[C]:-1\n}\n(*temporary) = \"BOTTOMRIGHT\"\n(*temporary) = \"UIParent\"\n(*temporary) = \"BOTTOMRIGHT\"\n(*temporary) = -97.000046\n(*temporary) = 130\n",
			["stack"] = "[C]: in function `SetPoint'\nInterface\\FrameXML\\GameTooltip.lua:154: in function <Interface\\FrameXML\\GameTooltip.lua:152>\n[C]: in function `GameTooltip_SetDefaultAnchor'\nInterface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:53: in function `Display'\nInterface\\AddOns\\Grid2\\modules\\IndicatorTooltip.lua:27: in function `func'\nInterface\\AddOns\\Grid2\\GridFrame.lua:94: in function <Interface\\AddOns\\Grid2\\GridFrame.lua:92>\n[C]: ?",
			["session"] = 4183,
			["counter"] = 7503,
		}, -- [9]
	},
}

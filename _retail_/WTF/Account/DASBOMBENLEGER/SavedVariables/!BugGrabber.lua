
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 2991,
	["errors"] = {
		{
			["message"] = "[string \"--[[ Error in 'Merciless Assault' ]] return...\"]:15: table index is nil",
			["time"] = "2018/12/31 00:20:58",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:517: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:511>\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:637: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:686: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:677>",
			["session"] = 2948,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:216: doesn't exist!",
			["time"] = "2018/12/30 02:42:37",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:216: in function `HandleButton'\n...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:81: in function <...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:16>\n[C]: ?\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1481: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1507: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1506>\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1446: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1688: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:153: in function <Interface\\AddOns\\ElvUI\\init.lua:152>",
			["session"] = 2952,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Plater' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2018/12/31 05:11:32",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetTargetClampingInsets'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:273: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:213>\n[C]: ?\n[C]: in function `SetupClassNameplateBars'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:96: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 2952,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Ace3' tried to call the protected function 'PetActionButton8:Show()'.",
			["time"] = "2019/01/02 20:07:05",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\PetActionBarFrame.lua:199: in function `PetActionBar_Update'\nInterface\\FrameXML\\SpellBookFrame.lua:520: in function <Interface\\FrameXML\\SpellBookFrame.lua:514>",
			["session"] = 2975,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\FrameXML\\SecureHandlers.lua:670: Header frame must be explicitly protected",
			["time"] = "2019/01/02 20:21:37",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:670: in function `SecureHandlerWrapScript'\n...isonMissionManager\\MissionUI_Shared_UpgradeItems.lua:76: in function `UpgradeItems_InitButtons'\n...AddOns\\GarrisonMissionManager\\MissionUI_Garrison.lua:82: in main chunk\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:639: in function `Garrison_LoadUI'\nInterface\\FrameXML\\GarrisonBaseUtils.lua:266: in function `ShowGarrisonLandingPage'\nInterface\\FrameXML\\Minimap.lua:625: in function `GarrisonLandingPage_Toggle'\nInterface\\FrameXML\\Minimap.lua:618: in function <Interface\\FrameXML\\Minimap.lua:617>\n[C]: ?",
			["session"] = 2975,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[string \"--[[ Error in 'Uldir - Zek'voz - Surging Da...\"]:13: attempt to perform arithmetic on field 'brain_lag' (a nil value)",
			["time"] = "2019/01/02 19:58:03",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:3388: in function `PerformActions'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:524: in function `Expand'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4526: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4477>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4574: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4568>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4659: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\BuffTrigger.lua:823: in function `ScanAuras'\nInterface\\AddOns\\WeakAuras\\BuffTrigger.lua:1357: in function <Interface\\AddOns\\WeakAuras\\BuffTrigger.lua:1353>",
			["session"] = 2977,
			["counter"] = 51,
		}, -- [6]
		{
			["message"] = "Usage: local spellID = C_SpecializationInfo.GetSpellsDisplay(specializationID)",
			["time"] = "2019/01/03 07:44:50",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `GetSpellsDisplay'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:1247: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:417: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:306: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:299>",
			["session"] = 2981,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[string \"--[[ Error in 'Deezo RSham Main':'condition...\"]:1: attempt to index field 'slideUp' (a nil value)",
			["time"] = "2019/01/03 18:50:56",
			["stack"] = "[C]: in function `xpcall'\n...ace\\AddOns\\WeakAuras\\RegionTypes\\RegionPrototype.lua:199: in function `RunCode'\n[string \"--[[ Error in 'Deezo RSham Main' ]] local n...\"]:103: in function `?'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4581: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4568>\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4676: in function `UpdatedTriggerState'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:642: in function `ScanEventsInternal'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:624: in function `ScanEvents'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:1766: in function `CheckSpellCooldows'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:1901: in function `CheckCooldownReady'\nInterface\\AddOns\\WeakAuras\\GenericTrigger.lua:1428: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:1423>",
			["session"] = 2985,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "[string \"--[[ Error in 'Cloud Burst Collected ' ]] r...\"]:6: attempt to index field 'state' (a nil value)",
			["time"] = "2018/12/30 00:51:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:171: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.11.lua:4208: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4202>",
			["session"] = 2987,
			["counter"] = 40,
		}, -- [9]
		{
			["message"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: attempt to call field 'GetMapInfo' (a nil value)",
			["time"] = "2018/12/29 19:27:36",
			["locals"] = "gsub = <function> defined =[C]:-1\nformat = <function> defined =[C]:-1\nstrsub = <function> defined =[C]:-1\nstrfind = <function> defined =[C]:-1\nstrmatch = <function> defined =[C]:-1\nstrrev = <function> defined =[C]:-1\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = 1456\n(*temporary) = \"attempt to call field 'GetMapInfo' (a nil value)\"\n",
			["stack"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: in main chunk",
			["session"] = 2991,
			["counter"] = 57,
		}, -- [10]
		{
			["message"] = "(null)",
			["session"] = 2991,
			["time"] = "2018/12/29 19:27:40",
			["counter"] = 174,
		}, -- [11]
	},
}

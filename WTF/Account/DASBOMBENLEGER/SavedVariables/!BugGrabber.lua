
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 2685,
	["errors"] = {
		{
			["message"] = "...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:273: C_Timer.After duration is too large",
			["time"] = "2018/12/09 21:35:25",
			["locals"] = "(*temporary) = 4294962.5\n(*temporary) = <function> defined @Interface\\AddOns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:273\n",
			["stack"] = "[C]: in function `After'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:273: in function `TalkingHeadFrame_SetupAnimations'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:233: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:227>\n[C]: in function `Show'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:155: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:121>\n[C]: in function `TalkingHeadFrame_PlayCurrent'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:25: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:23>",
			["session"] = 2661,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'RCLootCouncil' tried to call the protected function 'MainMenuBar:SetPoint()'.",
			["time"] = "2018/12/09 21:57:24",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetPoint'\nInterface\\FrameXML\\UIParent.lua:2946: in function `UIParentManageFramePositions'\nInterface\\FrameXML\\UIParent.lua:2329: in function <Interface\\FrameXML\\UIParent.lua:2316>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3118: in function <Interface\\FrameXML\\UIParent.lua:3116>\n[C]: in function `UIParent_ManageFramePositions'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:16: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:15>\n[C]: in function `Show'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:155: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:121>\n[C]: in function `TalkingHeadFrame_PlayCurrent'\n...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:25: in function <...ns\\Blizzard_TalkingHeadUI\\Blizzard_TalkingHeadUI.lua:23>",
			["session"] = 2661,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[string \"--[[ Error in 'Cloud Burst Collected ' ]] r...\"]:6: attempt to index field 'state' (a nil value)",
			["time"] = "2018/12/11 17:24:56",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:171: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.10.2.lua:4076: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4070>",
			["session"] = 2684,
			["counter"] = 40,
		}, -- [3]
		{
			["message"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: attempt to call field 'GetMapInfo' (a nil value)",
			["time"] = "2018/12/09 21:25:59",
			["locals"] = "gsub = <function> defined =[C]:-1\nformat = <function> defined =[C]:-1\nstrsub = <function> defined =[C]:-1\nstrfind = <function> defined =[C]:-1\nstrmatch = <function> defined =[C]:-1\nstrrev = <function> defined =[C]:-1\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = 1456\n(*temporary) = \"attempt to call field 'GetMapInfo' (a nil value)\"\n",
			["stack"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: in main chunk",
			["session"] = 2685,
			["counter"] = 23,
		}, -- [4]
		{
			["message"] = "(null)",
			["time"] = "2018/12/09 21:26:02",
			["session"] = 2685,
			["counter"] = 69,
		}, -- [5]
	},
}


BugGrabberDB = {
	["session"] = 3530,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\MoveAnything\\MoveAnything-17.0.3.lua:4132: attempt to call method 'GetPoint' (a nil value)",
			["time"] = "2019/03/11 20:33:57",
			["stack"] = "Interface\\AddOns\\MoveAnything\\MoveAnything-17.0.3.lua:4132: in function `_AddDependents'\nInterface\\AddOns\\MoveAnything\\MoveAnything-17.0.3.lua:4072: in function `UnanchorRelatives'\nInterface\\AddOns\\MoveAnything\\MoveAnything-17.0.3.lua:1767: in function `HookFrame'\nInterface\\AddOns\\MoveAnything\\API.lua:246: in function <Interface\\AddOns\\MoveAnything\\API.lua:219>\n(tail call): ?\n[C]: ?\nInterface\\AddOns\\MoveAnything\\MoveAnything-17.0.3.lua:1291: in function `SyncFrames'\nInterface\\AddOns\\MoveAnything\\MoveAnything-17.0.3.lua:5720: in function <Interface\\AddOns\\MoveAnything\\MoveAnything.lua:5412>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:500: in function `GuildBankFrame_LoadUI'\nInterface\\FrameXML\\UIParent.lua:1758: in function <Interface\\FrameXML\\UIParent.lua:1093>",
			["session"] = 3522,
			["counter"] = 4,
		}, -- [1]
		{
			["message"] = "Interface\\FrameXML\\GameTooltip.lua:411: Attempt to access forbidden object from code tainted by an AddOn",
			["time"] = "2019/03/11 22:01:14",
			["locals"] = "(*temporary) = NamePlateTooltip {\n 0 = <userdata>\n updateTooltip = 0.145000\n needsReset = true\n BottomOverlay = <unnamed> {\n }\n TopOverlay = <unnamed> {\n }\n}\n(*temporary) = 1\n(*temporary) = 1\n(*temporary) = 1\n(*temporary) = 0\n",
			["stack"] = "[C]: in function `SetBackdropBorderColor'\nInterface\\FrameXML\\GameTooltip.lua:411: in function `GameTooltip_SetBackdropStyle'\nInterface\\FrameXML\\GameTooltip.lua:437: in function `GameTooltip_OnHide'\n[string \"*:OnHide\"]:1: in function <[string \"*:OnHide\"]:1>\n[C]: in function `Hide'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:595: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:594>",
			["session"] = 3524,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'SunnArt' tried to call the protected function 'MainMenuBarArtFrameBackground:Show()'.",
			["time"] = "2019/03/11 21:21:37",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:411: in function `HideGryphons'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:341: in function `UpdateViewport'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:362: in function `CheckCinematic'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:38: in function <Interface\\AddOns\\SunnArt\\SunnArt_Core.lua:38>\n[C]: ?\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 3524,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "Interface\\FrameXML\\SocialQueue.lua:211: attempt to index local 'lhs' (a nil value)",
			["time"] = "2019/03/11 21:51:19",
			["stack"] = "Interface\\FrameXML\\SocialQueue.lua:211: in function <Interface\\FrameXML\\SocialQueue.lua:210>\n[C]: in function `sort'\nInterface\\FrameXML\\SocialQueue.lua:210: in function <Interface\\FrameXML\\SocialQueue.lua:209>\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:2149: in function `?'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 3526,
			["counter"] = 10,
		}, -- [4]
	},
}


BugGrabberDB = {
	["session"] = 3436,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'BlizzMove' tried to call the protected function 'CollectionsJournal:EnableMouseWheel()'.",
			["time"] = "2019/02/18 22:31:19",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `EnableMouseWheel'\nInterface\\AddOns\\BlizzMove\\Handle.lua:77: in function `SetMoveHandle'\nInterface\\AddOns\\BlizzMove\\BlizzMove-v1.8.lua:18: in function `?'\nInterface\\AddOns\\BlizzMove\\BlizzMove-v1.8.lua:59: in function <Interface\\AddOns\\BlizzMove\\BlizzMove.lua:55>\n[C]: ?\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:449: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:615: in function `CollectionsJournal_LoadUI'\nInterface\\FrameXML\\UIParent.lua:955: in function `SetCollectionsJournalShown'\nInterface\\FrameXML\\UIParent.lua:949: in function `ToggleCollectionsJournal'\n[string \"TOGGLECOLLECTIONSMOUNTJOURNAL\"]:1: in function <[string \"TOGGLECOLLECTIONSMOUNTJOURNAL\"]:1>",
			["session"] = 3419,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ElvUI' tried to call the protected function 'CompactRaidFrame1:Show()'.",
			["time"] = "2019/02/19 22:02:45",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\CompactUnitFrame.lua:356: in function `CompactUnitFrame_UpdateVisible'\nInterface\\FrameXML\\CompactUnitFrame.lua:289: in function `CompactUnitFrame_UpdateAll'\nInterface\\FrameXML\\CompactUnitFrame.lua:57: in function <Interface\\FrameXML\\CompactUnitFrame.lua:54>",
			["session"] = 3430,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'SunnArt' tried to call the protected function 'MainMenuBarArtFrameBackground:Show()'.",
			["time"] = "2019/02/19 19:56:51",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:411: in function `HideGryphons'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:341: in function `UpdateViewport'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:356: in function `ToggleUI'\nInterface\\AddOns\\SunnArt\\SunnArt_Core.lua:34: in function <Interface\\AddOns\\SunnArt\\SunnArt_Core.lua:34>\nInterface\\AddOns\\Ace3\\AceHook-3.0\\AceHook-3.0-8.lua:92: in function <Interface\\AddOns\\Ace3\\AceHook-3.0\\AceHook-3.0.lua:87>\n[C]: in function `Show'\nInterface\\FrameXML\\UIParent.lua:2590: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2664: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2352: in function <Interface\\FrameXML\\UIParent.lua:2344>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:3192: in function <Interface\\FrameXML\\UIParent.lua:3179>\n[C]: in function `HideUIPanel'\nInterface\\FrameXML\\CinematicFrame.lua:53: in function <Interface\\FrameXML\\CinematicFrame.lua:39>",
			["session"] = 3431,
			["counter"] = 7,
		}, -- [3]
		{
			["message"] = "Interface\\FrameXML\\SocialQueue.lua:211: attempt to index local 'lhs' (a nil value)",
			["time"] = "2019/02/20 19:42:28",
			["stack"] = "Interface\\FrameXML\\SocialQueue.lua:211: in function <Interface\\FrameXML\\SocialQueue.lua:210>\n[C]: in function `sort'\nInterface\\FrameXML\\SocialQueue.lua:210: in function <Interface\\FrameXML\\SocialQueue.lua:209>\nInterface\\AddOns\\ElvUI\\Modules\\chat\\chat-Chat.lua:2146: in function `?'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 3435,
			["counter"] = 3,
		}, -- [4]
	},
}

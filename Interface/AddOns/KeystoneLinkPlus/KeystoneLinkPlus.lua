local gsub = gsub
local format = format
local strsub = strsub
local strfind = strfind
local strmatch = strmatch
local strrev = string.reverse

local DungeonNames = {
	["1456"] = C_ChallengeMode.GetMapInfo(1456), -- Eye of Azshara
	["1458"] = C_ChallengeMode.GetMapInfo(1458), -- Neltharion's Lair
	["1466"] = C_ChallengeMode.GetMapInfo(1466), -- Darkheart Thicket
	["1477"] = C_ChallengeMode.GetMapInfo(1477), -- Halls of Valor
	["1492"] = C_ChallengeMode.GetMapInfo(1492), -- Maw of Souls
	["1493"] = C_ChallengeMode.GetMapInfo(1493), -- Vault of the Wardens
	["1501"] = C_ChallengeMode.GetMapInfo(1501), -- Black Rook Hold
	["1516"] = C_ChallengeMode.GetMapInfo(1516), -- The Arcway
	["1571"] = C_ChallengeMode.GetMapInfo(1571), -- Court of Stars
}

local ReformatKeys = function(self, event, msg, ...)
	local KeyLink, DungeonID, DungeonLevel, DepletedCheck, KeyName = strmatch(msg, "(\124cffa335ee\124Hitem:138019::::::::%d+:%d+:%d+:::(%d+):(%d+):(.-)\124h%[(.-)%]\124h\124r)")
	
	if (not KeyLink) then
		return
	end
	
	local LinkName
	
	if (strmatch(strrev(DepletedCheck), ":::(%d+)") ~= "1") then
		LinkName = format("%s %s (%s)", DungeonNames[DungeonID], DungeonLevel, CHALLENGE_MODE_KEYSTONE_DEPLETED)
	else
		LinkName = format("%s %s", DungeonNames[DungeonID], DungeonLevel)
	end
	
	LinkName = format(CHALLENGE_MODE_KEYSTONE_NAME, LinkName)
	
	msg = gsub(msg, KeyName, LinkName)
	
	return false, msg, ...
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD_LEADER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_LEADER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", ReformatKeys)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", ReformatKeys)
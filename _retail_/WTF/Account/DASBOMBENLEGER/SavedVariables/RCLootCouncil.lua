
RCLootCouncilDB = {
	["profileKeys"] = {
		["Nisefy - Stormscale"] = "Default",
		["Valdurawr - Stormscale"] = "Default",
		["Yvera - Moonglade"] = "Default",
		["Niseko - Stormscale"] = "Default",
		["Nisepie - Stormscale"] = "Default",
		["Yoshicakes - Stormscale"] = "Default",
		["Seko - Stormscale"] = "Default",
		["Purrmeow - Twisting Nether"] = "Default",
		["Niseko - Twisting Nether"] = "Default",
		["Nyanporo - Blackmoore"] = "Default",
		["Nisearw - Stormscale"] = "Default",
	},
	["global"] = {
		["oldVersion"] = "2.10.0",
		["log"] = {
			"00:12:32 - Event: (ENCOUNTER_START) (2086) (Rezan) (8) (5)", -- [1]
			"00:12:32 - UpdatePlayersData()", -- [2]
			"00:14:58 - Event: (ENCOUNTER_END) (2086) (Rezan) (8) (5) (1)", -- [3]
			"00:15:16 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Thirtyseven) (distri:) (GUILD)", -- [4]
			"00:15:45 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazdruid) (distri:) (GUILD)", -- [5]
			"00:16:05 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [6]
			"00:17:00 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [7]
			"00:19:50 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Jíra) (distri:) (GUILD)", -- [8]
			"00:20:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gjira) (distri:) (GUILD)", -- [9]
			"00:22:52 - Event: (ENCOUNTER_START) (2085) (Vol'kaal) (8) (5)", -- [10]
			"00:22:52 - UpdatePlayersData()", -- [11]
			"00:24:48 - Event: (ENCOUNTER_END) (2085) (Vol'kaal) (8) (5) (1)", -- [12]
			"00:30:25 - Event: (ENCOUNTER_START) (2084) (Priestess Alun'za) (8) (5)", -- [13]
			"00:30:25 - UpdatePlayersData()", -- [14]
			"00:32:31 - Event: (ENCOUNTER_END) (2084) (Priestess Alun'za) (8) (5) (1)", -- [15]
			"00:34:15 - Event: (ENCOUNTER_START) (2087) (Yazma) (8) (5)", -- [16]
			"00:34:15 - UpdatePlayersData()", -- [17]
			"00:34:45 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [18]
			"00:37:37 - Event: (ENCOUNTER_END) (2087) (Yazma) (8) (5) (1)", -- [19]
			"00:40:29 - Event: (ENCOUNTER_LOOT_RECEIVED) (2087) (158306) (|cffa335ee|Hitem:158306::::::::120:264::16:4:5010:42:1587:4784:::|h[Belt of Gleaming Determination]|h|r) (1) (Hudzz) (DRUID)", -- [20]
			"00:40:29 - Comm received:^1^Slooted^T^N1^S282737^t^^ (from:) (Hudzz) (distri:) (PARTY)", -- [21]
			"00:40:29 - false = (IsCouncil) (Niseko-Stormscale)", -- [22]
			"00:40:31 - Event: (LOOT_READY) (true)", -- [23]
			"00:40:31 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:330|h[Glowing Azerite]|h|r) (6) (GameObject-0-1465-1763-2422-282737-000064AACB) (330)", -- [24]
			"00:40:31 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:158347::::::::120:264::16:3:5010:1572:4786:::|h[Cincture of Glittering Gold]|h|r) (4) (GameObject-0-1465-1763-2422-282737-000064AACB) (1)", -- [25]
			"00:40:31 - Event: (ENCOUNTER_LOOT_RECEIVED) (2087) (160212) (|cffa335ee|Hitem:160212::::::::120:264::16:3:5010:1587:4784:::|h[Shadowshroud Vambraces]|h|r) (1) (Ozyorkbourne) (WARRIOR)", -- [26]
			"00:40:31 - Event: (LOOT_READY) (true)", -- [27]
			"00:40:31 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:330|h[Glowing Azerite]|h|r) (6) (GameObject-0-1465-1763-2422-282737-000064AACB) (330)", -- [28]
			"00:40:31 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:158347::::::::120:264::16:3:5010:1572:4786:::|h[Cincture of Glittering Gold]|h|r) (4) (GameObject-0-1465-1763-2422-282737-000064AACB) (1)", -- [29]
			"00:40:31 - Comm received:^1^Slooted^T^N1^S282737^t^^ (from:) (Ozyorkbourne) (distri:) (PARTY)", -- [30]
			"00:40:31 - false = (IsCouncil) (Niseko-Stormscale)", -- [31]
			"00:40:31 - Comm received:^1^Snot_tradeable^T^N1^S|cffa335ee|Hitem:158306::::::::120:102::16:4:5010:42:1587:4784:::|h[Belt~`of~`Gleaming~`Determination]|h|r^N2^S282737^t^^ (from:) (Hudzz) (distri:) (PARTY)", -- [32]
			"00:40:31 - OnLootSlotCleared() (2) (|cff0070dd|Hcurrency:1553:330|h[Glowing Azerite]|h|r) (6)", -- [33]
			"00:40:32 - Comm received:^1^Shistory^T^N1^SHudzz-Stormscale^N2^T^Sowner^SHudzz-Stormscale^SmapID^N1763^Sid^S1550101231-0^Sdate^S13/02/19^Sclass^SDRUID^SgroupSize^N5^Sresponse^SPersonal~`Loot~`-~`Non~`tradeable^SdifficultyID^N8^Sboss^SYazma^Stime^S23:40:31^SisAwardReason^b^Scolor^T^N1^N1^N2^N0.6^N3^N0^N4^N1^t^SresponseID^SPL^SlootWon^S|cffa335ee|Hitem:158306::::::::120:102::16:4:5010:42:1587:4784:::|h[Belt~`of~`Gleaming~`Determination]|h|r^Sinstance^SAtal'Dazar-Mythic~`Keystone^t^t^^ (from:) (Hudzz) (distri:) (PARTY)", -- [34]
			"00:40:32 - OnLootSlotCleared() (3) (|cffa335ee|Hitem:158347::::::::120:264::16:3:5010:1572:4786:::|h[Cincture of Glittering Gold]|h|r) (4)", -- [35]
			"00:40:32 - Event: (LOOT_CLOSED)", -- [36]
			"00:40:32 - Event: (ENCOUNTER_LOOT_RECEIVED) (2087) (158347) (|cffa335ee|Hitem:158347::::::::120:264::16:3:5010:1572:4786:::|h[Cincture of Glittering Gold]|h|r) (1) (Niseko) (SHAMAN)", -- [37]
			"00:40:32 - Comm received:^1^Slooted^T^N1^S282737^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [38]
			"00:40:32 - false = (IsCouncil) (Niseko-Stormscale)", -- [39]
			"00:40:32 - Event: (ENCOUNTER_LOOT_RECEIVED) (2087) (155869) (|cffa335ee|Hitem:155869::::::::120:264::16:3:5010:1572:4786:::|h[Shambling Berserker's Leggings]|h|r) (1) (Deffrogue) (ROGUE)", -- [40]
			"00:40:32 - Comm received:^1^Slooted^T^N1^S282737^t^^ (from:) (Deffrogue) (distri:) (PARTY)", -- [41]
			"00:40:32 - false = (IsCouncil) (Niseko-Stormscale)", -- [42]
			"00:40:33 - Comm received:^1^Snot_tradeable^T^N1^S|cffa335ee|Hitem:160212::::::::120:72::16:3:5010:1587:4784:::|h[Shadowshroud~`Vambraces]|h|r^N2^S282737^t^^ (from:) (Ozyorkbourne) (distri:) (PARTY)", -- [43]
			"00:40:33 - Comm received:^1^Shistory^T^N1^SOzyorkbourne-Stormscale^N2^T^Sowner^SOzyorkbourne-Stormscale^SmapID^N1763^Sid^S1550101233-1^Sdate^S13/02/19^Sclass^SWARRIOR^SgroupSize^N5^Sresponse^SPersonal~`Loot~`-~`Non~`tradeable^SdifficultyID^N8^Sboss^SYazma^Stime^S23:40:33^SisAwardReason^b^Scolor^T^N1^N1^N2^N0.6^N3^N0^N4^N1^t^SresponseID^SPL^SlootWon^S|cffa335ee|Hitem:160212::::::::120:72::16:3:5010:1587:4784:::|h[Shadowshroud~`Vambraces]|h|r^Sinstance^SAtal'Dazar-Mythic~`Keystone^t^t^^ (from:) (Hudzz) (distri:) (PARTY)", -- [44]
			"00:40:33 - UpdateAndSendRecentTradableItem: Didn't find item on try  (1)", -- [45]
			"00:40:34 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:158347::::::::120:264::16:3:5010:1572:4786:::|h[Cincture~`of~`Glittering~`Gold]|h|r^N2^S282737^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [46]
			"00:40:34 - UpdateAndSendRecentTradableItem: Didn't find item on try  (2)", -- [47]
			"00:40:34 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:155869::::::::120:259::16:3:5010:1572:4786:::|h[Shambling~`Berserker's~`Leggings]|h|r^N2^S282737^t^^ (from:) (Deffrogue) (distri:) (PARTY)", -- [48]
			"00:40:35 - Event: (ENCOUNTER_LOOT_RECEIVED) (2087) (160212) (|cffa335ee|Hitem:160212::::::::120:264::16:3:5010:1572:4786:::|h[Shadowshroud Vambraces]|h|r) (1) (Zuto) (WARRIOR)", -- [49]
			"00:40:35 - UpdateAndSendRecentTradableItem: Didn't find item on try  (3)", -- [50]
			"00:40:35 - Comm received:^1^Slooted^T^N1^S282737^t^^ (from:) (Zuto) (distri:) (PARTY)", -- [51]
			"00:40:35 - false = (IsCouncil) (Niseko-Stormscale)", -- [52]
			"00:40:36 - Error - UpdateAndSendRecentTradableItem (|cff0070dd|Hcurrency:1553:330|h[Glowing Azerite]|h|r) (not found in bags)", -- [53]
			"00:40:37 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:160212::::::::120:73::16:3:5010:1572:4786:::|h[Shadowshroud~`Vambraces]|h|r^N2^S282737^t^^ (from:) (Zuto) (distri:) (PARTY)", -- [54]
			"00:40:53 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [55]
			"00:40:53 - GetML()", -- [56]
			"00:40:54 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyburton) (distri:) (GUILD)", -- [57]
			"00:41:02 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [58]
			"02/14/19", -- [59]
			"00:42:59 - Logged In", -- [60]
			"00:42:59 - ML initialized!", -- [61]
			"00:42:59 - TradeUI enabled", -- [62]
			"00:43:05 - Niseko-Stormscale (2.10.0) (nil)", -- [63]
			"00:43:05 - ActivateSkin (bfa)", -- [64]
			"00:43:07 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [65]
			"00:43:07 - GetML()", -- [66]
			"00:43:07 - UpdatePlayersData()", -- [67]
			"00:43:08 - Event: (PARTY_LEADER_CHANGED)", -- [68]
			"00:43:08 - GetML()", -- [69]
			"00:43:08 - Resetting council as we have a new ML!", -- [70]
			"00:43:08 - MasterLooter =  (Niseko-Stormscale)", -- [71]
			"00:43:08 - GetCouncilInGroup (Niseko-Stormscale)", -- [72]
			"00:43:08 - ML:NewML (Niseko-Stormscale)", -- [73]
			"00:43:08 - UpdateMLdb", -- [74]
			"00:43:08 - OnMLDBReceived", -- [75]
			"00:43:08 - UpdateGroup (true)", -- [76]
			"00:43:08 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [77]
			"00:43:08 - GetCouncilInGroup (Niseko-Stormscale)", -- [78]
			"00:43:10 - GetPlayersGuildRank()", -- [79]
			"00:43:10 - Found Guild Rank: Raider", -- [80]
			"00:43:10 - Event: (GROUP_LEFT) (1) (Party-2073-00001CE0BC2A)", -- [81]
			"00:43:10 - GetML()", -- [82]
			"00:43:10 - Stop handling loot", -- [83]
			"00:43:10 - ML Disabled", -- [84]
			"00:43:10 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [85]
			"00:43:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [86]
			"00:43:19 - Timer MLdb_check passed", -- [87]
			"00:44:15 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [88]
			"00:44:15 - GetML()", -- [89]
			"00:45:33 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Waake) (distri:) (GUILD)", -- [90]
			"00:45:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reecemankey) (distri:) (GUILD)", -- [91]
			"00:48:22 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [92]
			"00:48:22 - GetML()", -- [93]
			"00:49:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerozy) (distri:) (GUILD)", -- [94]
			"00:52:58 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [95]
			"00:58:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudz) (distri:) (GUILD)", -- [96]
			"00:58:19 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Waake) (distri:) (GUILD)", -- [97]
			"00:58:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xireece) (distri:) (GUILD)", -- [98]
			"01:02:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudz) (distri:) (GUILD)", -- [99]
			"01:04:54 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [100]
			"01:09:39 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [101]
			"02/14/19", -- [102]
			"07:57:58 - Logged In", -- [103]
			"07:57:58 - ML initialized!", -- [104]
			"07:57:58 - TradeUI enabled", -- [105]
			"07:58:07 - Niseko-Stormscale (2.10.0) (nil)", -- [106]
			"07:58:07 - ActivateSkin (bfa)", -- [107]
			"07:58:09 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [108]
			"07:58:09 - GetML()", -- [109]
			"07:58:09 - UpdatePlayersData()", -- [110]
			"07:58:12 - GetPlayersGuildRank()", -- [111]
			"07:58:12 - Found Guild Rank: Raider", -- [112]
			"07:58:12 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [113]
			"02/14/19", -- [114]
			"16:44:43 - Logged In", -- [115]
			"16:44:43 - ML initialized!", -- [116]
			"16:44:43 - TradeUI enabled", -- [117]
			"16:44:52 - Niseko-Stormscale (2.10.0) (nil)", -- [118]
			"16:44:52 - ActivateSkin (bfa)", -- [119]
			"16:44:54 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [120]
			"16:44:54 - GetML()", -- [121]
			"16:44:54 - UpdatePlayersData()", -- [122]
			"16:44:57 - GetPlayersGuildRank()", -- [123]
			"16:44:57 - Found Guild Rank: Raider", -- [124]
			"16:44:57 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [125]
			"16:47:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [126]
			"16:53:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zuto) (distri:) (GUILD)", -- [127]
			"16:54:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [128]
			"16:55:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazmonk) (distri:) (GUILD)", -- [129]
			"17:08:19 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [130]
			"17:08:19 - GetML()", -- [131]
			"17:09:52 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [132]
			"17:09:52 - GetML()", -- [133]
			"17:11:40 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [134]
			"17:20:21 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [135]
			"17:25:42 - Event: (PARTY_LEADER_CHANGED)", -- [136]
			"17:25:42 - GetML()", -- [137]
			"17:25:42 - Resetting council as we have a new ML!", -- [138]
			"17:25:42 - MasterLooter =  (Niseko-Stormscale)", -- [139]
			"17:25:42 - GetCouncilInGroup (Niseko-Stormscale)", -- [140]
			"17:25:42 - ML:NewML (Niseko-Stormscale)", -- [141]
			"17:25:42 - UpdateMLdb", -- [142]
			"17:25:42 - OnMLDBReceived", -- [143]
			"17:25:42 - UpdateGroup (true)", -- [144]
			"17:25:42 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [145]
			"17:25:42 - GetCouncilInGroup (Niseko-Stormscale)", -- [146]
			"17:25:42 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [147]
			"17:25:42 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [148]
			"17:25:42 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [149]
			"17:25:42 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [150]
			"17:25:42 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [151]
			"17:25:42 - true = (IsCouncil) (Niseko-Stormscale)", -- [152]
			"17:25:42 - GetLootDBStatistics()", -- [153]
			"17:25:42 - GetGuildRankNum()", -- [154]
			"17:25:42 - RCVotingFrame (enabled)", -- [155]
			"17:25:42 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SHEALER^N4^SRaider^N6^N0^N7^N413.75^N8^N264^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [156]
			"17:25:42 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (413.75) (264)", -- [157]
			"17:25:52 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [158]
			"17:25:52 - true = (IsCouncil) (Niseko-Stormscale)", -- [159]
			"17:25:52 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [160]
			"17:25:57 - Timer MLdb_check passed", -- [161]
			"17:26:23 - VotingFrame:Update() without lootTable!!", -- [162]
			"17:26:32 - UpdateGroup (table: 00000207CE944E90)", -- [163]
			"17:26:32 - ML:AddCandidate (Valduraa-Draenor) (PRIEST) (DAMAGER) (nil) (nil) (nil) (nil) (nil)", -- [164]
			"17:26:32 - GetCouncilInGroup (Niseko-Stormscale)", -- [165]
			"17:26:32 - Comm received:^1^Sxrealm^T^N1^SValduraa-Draenor^N2^SplayerInfoRequest^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [166]
			"17:26:32 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [167]
			"17:26:32 - Comm received:^1^Scandidates^T^N1^T^SValduraa-Draenor^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [168]
			"17:26:32 - VotingFrame:Update() without lootTable!!", -- [169]
			"17:26:32 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^SplayerInfo^N3^SValduraa-Draenor^N4^SPRIEST^N5^SDAMAGER^N6^SPrivileged^N7^B^N8^N5^N9^N386.6875^N10^N258^t^^ (from:) (Valduraa-Draenor) (distri:) (PARTY)", -- [170]
			"17:26:32 - Comm received:^1^SplayerInfo^T^N1^SValduraa-Draenor^N2^SPRIEST^N3^SDAMAGER^N4^SPrivileged^N5^B^N6^N5^N7^N386.6875^N8^N258^t^^ (from:) (Valduraa-Draenor) (distri:) (WHISPER)", -- [171]
			"17:26:32 - ML:AddCandidate (Valduraa-Draenor) (PRIEST) (DAMAGER) (Privileged) (true) (5) (386.6875) (258)", -- [172]
			"17:26:37 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^Scouncil_request^t^^ (from:) (Valduraa-Draenor) (distri:) (PARTY)", -- [173]
			"17:26:37 - Comm received:^1^Scouncil_request^T^t^^ (from:) (Valduraa-Draenor) (distri:) (WHISPER)", -- [174]
			"17:26:37 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [175]
			"17:26:37 - true = (IsCouncil) (Niseko-Stormscale)", -- [176]
			"17:27:23 - UpdateGroup (table: 00000207CE944E90)", -- [177]
			"17:27:23 - ML:AddCandidate (Valduraa-Draenor) (PRIEST) (HEALER) (Privileged) (true) (5) (258) (nil)", -- [178]
			"17:27:23 - GetCouncilInGroup (Niseko-Stormscale)", -- [179]
			"17:27:23 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [180]
			"17:27:23 - Comm received:^1^Scandidates^T^N1^T^SValduraa-Draenor^T^Srole^SHEALER^Senchant_lvl^N5^Sclass^SPRIEST^Senchanter^B^Srank^SPrivileged^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [181]
			"17:43:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [182]
			"17:43:41 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [183]
			"17:44:37 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Soulcampbell) (distri:) (GUILD)", -- [184]
			"17:44:51 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [185]
			"17:45:35 - VotingFrame:Update() without lootTable!!", -- [186]
			"17:45:40 - VotingFrame:Update() without lootTable!!", -- [187]
			"17:46:41 - UpdateGroup (table: 00000207CE944E90)", -- [188]
			"17:47:11 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Valdurachi) (distri:) (GUILD)", -- [189]
			"17:48:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [190]
			"17:50:46 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Thirtyseven) (distri:) (GUILD)", -- [191]
			"17:51:25 - Event: (GROUP_LEFT) (1) (Party-2073-00001CE28BDA)", -- [192]
			"17:51:25 - GetML()", -- [193]
			"17:51:25 - Stop handling loot", -- [194]
			"17:51:25 - ML Disabled", -- [195]
			"17:51:25 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [196]
			"17:51:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Soulcampbell) (distri:) (GUILD)", -- [197]
			"17:54:21 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazdruid) (distri:) (GUILD)", -- [198]
			"17:55:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [199]
			"17:56:03 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [200]
			"02/14/19", -- [201]
			"19:40:39 - Logged In", -- [202]
			"19:40:39 - ML initialized!", -- [203]
			"19:40:39 - TradeUI enabled", -- [204]
			"19:40:45 - Niseko-Stormscale (2.10.0) (nil)", -- [205]
			"19:40:45 - ActivateSkin (bfa)", -- [206]
			"19:40:47 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [207]
			"19:40:47 - GetML()", -- [208]
			"19:40:47 - UpdatePlayersData()", -- [209]
			"19:40:50 - GetPlayersGuildRank()", -- [210]
			"19:40:50 - Found Guild Rank: Raider", -- [211]
			"19:40:50 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [212]
			"19:41:47 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [213]
			"19:42:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [214]
			"19:43:25 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [215]
			"19:43:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyorkbourne) (distri:) (GUILD)", -- [216]
			"19:44:15 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [217]
			"19:44:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllot) (distri:) (GUILD)", -- [218]
			"19:44:38 - Event: (PARTY_LEADER_CHANGED)", -- [219]
			"19:44:38 - GetML()", -- [220]
			"19:44:38 - Resetting council as we have a new ML!", -- [221]
			"19:44:38 - MasterLooter =  (Tigerozy-Stormscale)", -- [222]
			"19:44:48 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [223]
			"19:44:48 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [224]
			"19:44:48 - OnMLDBReceived", -- [225]
			"19:44:48 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [226]
			"19:44:53 - Timer MLdb_check passed", -- [227]
			"19:44:53 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SReeceburton-Stormscale^N3^SReeceburton-Stormscale^N4^STigerozy-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [228]
			"19:44:53 - false = (IsCouncil) (Niseko-Stormscale)", -- [229]
			"19:44:53 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SReeceburton-Stormscale^N3^SReeceburton-Stormscale^N4^STigerozy-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [230]
			"19:44:53 - false = (IsCouncil) (Niseko-Stormscale)", -- [231]
			"19:44:58 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [232]
			"19:44:58 - OnMLDBReceived", -- [233]
			"19:44:58 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [234]
			"19:45:23 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [235]
			"19:45:23 - OnMLDBReceived", -- [236]
			"19:45:23 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [237]
			"19:45:28 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SReeceburton-Stormscale^N3^SReeceburton-Stormscale^N4^STigerozy-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [238]
			"19:45:28 - false = (IsCouncil) (Niseko-Stormscale)", -- [239]
			"19:46:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [240]
			"19:46:34 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [241]
			"19:46:34 - OnMLDBReceived", -- [242]
			"19:46:34 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SReeceburton-Stormscale^N3^SReeceburton-Stormscale^N4^STigerozy-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [243]
			"19:46:34 - false = (IsCouncil) (Niseko-Stormscale)", -- [244]
			"19:47:33 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (475947) (1) (0)", -- [245]
			"19:47:34 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [246]
			"19:47:34 - GetML()", -- [247]
			"02/14/19", -- [248]
			"19:51:06 - Logged In", -- [249]
			"19:51:06 - ML initialized!", -- [250]
			"19:51:06 - TradeUI enabled", -- [251]
			"19:51:10 - Niseko-Stormscale (2.10.0) (nil)", -- [252]
			"19:51:10 - ActivateSkin (bfa)", -- [253]
			"19:51:12 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [254]
			"19:51:12 - GetML()", -- [255]
			"19:51:12 - UpdatePlayersData()", -- [256]
			"19:51:13 - Event: (PARTY_LEADER_CHANGED)", -- [257]
			"19:51:13 - GetML()", -- [258]
			"19:51:13 - Unknown ML", -- [259]
			"19:51:15 - GetPlayersGuildRank()", -- [260]
			"19:51:15 - Found Guild Rank: Raider", -- [261]
			"19:51:15 - GetML()", -- [262]
			"19:51:15 - Resetting council as we have a new ML!", -- [263]
			"19:51:15 - MasterLooter =  (Tigerozy-Stormscale)", -- [264]
			"19:51:15 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [265]
			"19:51:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [266]
			"19:51:30 - Timer MLdb_check passed", -- [267]
			"19:51:30 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [268]
			"19:51:30 - OnMLDBReceived", -- [269]
			"19:51:30 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [270]
			"19:51:30 - false = (IsCouncil) (Niseko-Stormscale)", -- [271]
			"19:51:41 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [272]
			"19:54:16 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Deffrogue) (distri:) (GUILD)", -- [273]
			"19:54:36 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [274]
			"19:54:36 - OnMLDBReceived", -- [275]
			"19:54:36 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [276]
			"19:54:41 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [277]
			"19:54:41 - false = (IsCouncil) (Niseko-Stormscale)", -- [278]
			"19:55:05 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [279]
			"19:55:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [280]
			"19:56:51 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [281]
			"19:57:06 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [282]
			"19:57:06 - OnMLDBReceived", -- [283]
			"19:57:06 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [284]
			"19:57:06 - false = (IsCouncil) (Niseko-Stormscale)", -- [285]
			"19:57:24 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [286]
			"19:57:26 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [287]
			"19:57:39 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [288]
			"19:57:39 - OnMLDBReceived", -- [289]
			"19:57:39 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [290]
			"19:57:39 - false = (IsCouncil) (Niseko-Stormscale)", -- [291]
			"20:01:29 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [292]
			"20:01:29 - UpdatePlayersData()", -- [293]
			"20:05:29 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [294]
			"20:05:47 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [295]
			"20:05:47 - OnMLDBReceived", -- [296]
			"20:05:47 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [297]
			"20:05:47 - false = (IsCouncil) (Niseko-Stormscale)", -- [298]
			"20:06:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [299]
			"20:07:20 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [300]
			"20:07:47 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [301]
			"20:08:12 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [302]
			"20:09:35 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [303]
			"20:09:35 - UpdatePlayersData()", -- [304]
			"20:14:49 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [305]
			"20:16:09 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [306]
			"20:16:09 - UpdatePlayersData()", -- [307]
			"20:20:35 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [308]
			"20:21:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [309]
			"20:21:49 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [310]
			"20:21:49 - OnMLDBReceived", -- [311]
			"20:21:49 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [312]
			"20:21:49 - false = (IsCouncil) (Niseko-Stormscale)", -- [313]
			"20:21:51 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [314]
			"20:21:51 - UpdatePlayersData()", -- [315]
			"20:23:43 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [316]
			"20:25:05 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [317]
			"20:25:05 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [318]
			"20:25:05 - OnMLDBReceived", -- [319]
			"20:25:05 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [320]
			"20:25:05 - false = (IsCouncil) (Niseko-Stormscale)", -- [321]
			"20:27:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [322]
			"20:27:31 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [323]
			"20:27:31 - OnMLDBReceived", -- [324]
			"20:27:31 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [325]
			"20:27:31 - false = (IsCouncil) (Niseko-Stormscale)", -- [326]
			"20:27:33 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [327]
			"20:27:47 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [328]
			"20:27:47 - OnMLDBReceived", -- [329]
			"20:27:47 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [330]
			"20:27:47 - false = (IsCouncil) (Niseko-Stormscale)", -- [331]
			"20:27:57 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [332]
			"20:27:57 - UpdatePlayersData()", -- [333]
			"20:28:46 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [334]
			"20:30:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [335]
			"20:30:56 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [336]
			"20:30:56 - OnMLDBReceived", -- [337]
			"20:30:56 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [338]
			"20:30:56 - false = (IsCouncil) (Niseko-Stormscale)", -- [339]
			"20:31:53 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [340]
			"20:31:53 - UpdatePlayersData()", -- [341]
			"20:36:39 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [342]
			"20:37:42 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [343]
			"20:37:42 - UpdatePlayersData()", -- [344]
			"20:42:52 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [345]
			"20:44:15 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [346]
			"20:44:15 - UpdatePlayersData()", -- [347]
			"20:49:06 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [348]
			"20:50:40 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [349]
			"20:50:40 - UpdatePlayersData()", -- [350]
			"20:53:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [351]
			"20:56:29 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [352]
			"20:56:29 - OnMLDBReceived", -- [353]
			"20:56:29 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [354]
			"20:56:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [355]
			"20:57:11 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [356]
			"20:57:11 - OnMLDBReceived", -- [357]
			"20:57:11 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SGingerslåyer-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [358]
			"20:57:16 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [359]
			"20:57:16 - false = (IsCouncil) (Niseko-Stormscale)", -- [360]
			"20:58:57 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [361]
			"20:58:57 - UpdatePlayersData()", -- [362]
			"21:05:44 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [363]
			"21:07:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [364]
			"21:07:53 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [365]
			"21:07:53 - OnMLDBReceived", -- [366]
			"21:07:53 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [367]
			"21:07:53 - false = (IsCouncil) (Niseko-Stormscale)", -- [368]
			"21:08:10 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [369]
			"21:08:10 - UpdatePlayersData()", -- [370]
			"21:08:14 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SGingerslåyer-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [371]
			"21:12:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [372]
			"21:13:34 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [373]
			"21:13:34 - UpdatePlayersData()", -- [374]
			"21:20:00 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [375]
			"21:22:11 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [376]
			"21:22:11 - UpdatePlayersData()", -- [377]
			"21:28:59 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [378]
			"21:30:32 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [379]
			"21:30:32 - UpdatePlayersData()", -- [380]
			"21:38:38 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [381]
			"21:43:00 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [382]
			"21:43:00 - UpdatePlayersData()", -- [383]
			"21:47:10 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [384]
			"21:47:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [385]
			"21:48:15 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [386]
			"21:48:15 - UpdatePlayersData()", -- [387]
			"21:52:57 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [388]
			"21:53:50 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [389]
			"21:53:50 - UpdatePlayersData()", -- [390]
			"21:56:03 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [391]
			"21:56:13 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [392]
			"21:57:12 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [393]
			"21:57:12 - UpdatePlayersData()", -- [394]
			"22:00:03 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [395]
			"22:01:37 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [396]
			"22:01:37 - UpdatePlayersData()", -- [397]
			"22:06:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seorek) (distri:) (GUILD)", -- [398]
			"22:06:39 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [399]
			"22:07:53 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [400]
			"22:07:53 - UpdatePlayersData()", -- [401]
			"22:11:10 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [402]
			"22:12:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [403]
			"22:12:24 - UpdatePlayersData()", -- [404]
			"22:15:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [405]
			"22:16:13 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [406]
			"22:16:58 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [407]
			"22:17:56 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [408]
			"22:17:56 - UpdatePlayersData()", -- [409]
			"22:21:17 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [410]
			"22:22:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [411]
			"22:22:54 - UpdatePlayersData()", -- [412]
			"22:25:17 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [413]
			"22:26:12 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [414]
			"22:26:12 - OnMLDBReceived", -- [415]
			"22:26:12 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SGingerslåyer-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [416]
			"22:26:17 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [417]
			"22:26:17 - false = (IsCouncil) (Niseko-Stormscale)", -- [418]
			"22:28:41 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [419]
			"22:28:41 - OnMLDBReceived", -- [420]
			"22:28:41 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [421]
			"22:29:05 - Comm received:^1^SStartHandleLoot^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [422]
			"22:31:55 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [423]
			"22:31:55 - UpdatePlayersData()", -- [424]
			"22:36:42 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [425]
			"22:37:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Deffrogue) (distri:) (GUILD)", -- [426]
			"22:38:12 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [427]
			"22:38:12 - UpdatePlayersData()", -- [428]
			"22:42:04 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [429]
			"22:42:05 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [430]
			"22:42:59 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [431]
			"22:42:59 - UpdatePlayersData()", -- [432]
			"22:50:54 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [433]
			"22:51:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [434]
			"22:52:02 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [435]
			"22:52:02 - OnMLDBReceived", -- [436]
			"22:52:02 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [437]
			"22:52:02 - false = (IsCouncil) (Niseko-Stormscale)", -- [438]
			"22:52:23 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [439]
			"22:52:34 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [440]
			"22:52:34 - UpdatePlayersData()", -- [441]
			"22:55:15 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [442]
			"22:56:48 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [443]
			"22:56:48 - UpdatePlayersData()", -- [444]
			"23:01:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Mystch) (distri:) (GUILD)", -- [445]
			"23:03:02 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [446]
			"23:04:31 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [447]
			"23:04:31 - UpdatePlayersData()", -- [448]
			"23:09:07 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [449]
			"23:11:01 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [450]
			"23:11:01 - UpdatePlayersData()", -- [451]
			"23:18:47 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [452]
			"23:20:35 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [453]
			"23:20:35 - UpdatePlayersData()", -- [454]
			"23:27:01 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [455]
			"23:28:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [456]
			"23:28:54 - UpdatePlayersData()", -- [457]
			"23:29:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [458]
			"23:36:57 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [459]
			"23:40:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [460]
			"23:40:24 - UpdatePlayersData()", -- [461]
			"23:45:57 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [462]
			"23:47:34 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [463]
			"23:47:34 - UpdatePlayersData()", -- [464]
			"23:56:00 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [465]
			"23:58:57 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [466]
			"23:58:57 - UpdatePlayersData()", -- [467]
			"00:04:51 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [468]
			"00:05:17 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [469]
			"00:05:17 - GetML()", -- [470]
			"00:05:55 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [471]
			"00:05:55 - OnMLDBReceived", -- [472]
			"00:05:55 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [473]
			"00:06:05 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [474]
			"00:06:05 - OnMLDBReceived", -- [475]
			"00:06:05 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [476]
			"00:06:37 - Event: (GROUP_LEFT) (1) (Party-2073-00001CE30DF2)", -- [477]
			"00:06:37 - GetML()", -- [478]
			"02/15/19", -- [479]
			"13:26:36 - Logged In", -- [480]
			"13:26:36 - ML initialized!", -- [481]
			"13:26:36 - TradeUI enabled", -- [482]
			"13:26:45 - Niseko-Stormscale (2.10.0) (nil)", -- [483]
			"13:26:45 - ActivateSkin (bfa)", -- [484]
			"13:26:47 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [485]
			"13:26:47 - GetML()", -- [486]
			"13:26:47 - UpdatePlayersData()", -- [487]
			"13:26:49 - GetPlayersGuildRank()", -- [488]
			"13:26:49 - Found Guild Rank: Raider", -- [489]
			"13:26:50 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [490]
			"02/15/19", -- [491]
			"14:25:21 - Logged In", -- [492]
			"14:25:21 - ML initialized!", -- [493]
			"14:25:21 - TradeUI enabled", -- [494]
			"14:25:29 - Niseko-Stormscale (2.10.0) (nil)", -- [495]
			"14:25:29 - ActivateSkin (bfa)", -- [496]
			"14:25:31 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [497]
			"14:25:31 - GetML()", -- [498]
			"14:25:31 - UpdatePlayersData()", -- [499]
			"14:25:34 - GetPlayersGuildRank()", -- [500]
			"14:25:34 - Found Guild Rank: Raider", -- [501]
			"14:25:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [502]
			"14:27:20 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyburton) (distri:) (GUILD)", -- [503]
			"14:27:26 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [504]
			"02/15/19", -- [505]
			"14:52:56 - Logged In", -- [506]
			"14:52:56 - ML initialized!", -- [507]
			"14:52:56 - TradeUI enabled", -- [508]
			"14:53:02 - Niseko-Stormscale (2.10.0) (nil)", -- [509]
			"14:53:02 - ActivateSkin (bfa)", -- [510]
			"14:53:04 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [511]
			"14:53:04 - GetML()", -- [512]
			"14:53:04 - UpdatePlayersData()", -- [513]
			"14:53:06 - GetPlayersGuildRank()", -- [514]
			"14:53:06 - Found Guild Rank: Raider", -- [515]
			"14:53:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [516]
			"14:54:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xireece) (distri:) (GUILD)", -- [517]
			"14:55:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xireece) (distri:) (GUILD)", -- [518]
			"15:01:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerozy) (distri:) (GUILD)", -- [519]
			"15:21:02 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [520]
			"02/16/19", -- [521]
			"11:05:24 - Logged In", -- [522]
			"11:05:24 - ML initialized!", -- [523]
			"11:05:24 - TradeUI enabled", -- [524]
			"11:05:32 - Niseko-Stormscale (2.10.0) (nil)", -- [525]
			"11:05:32 - ActivateSkin (bfa)", -- [526]
			"11:05:34 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [527]
			"11:05:34 - GetML()", -- [528]
			"11:05:34 - UpdatePlayersData()", -- [529]
			"11:05:36 - GetPlayersGuildRank()", -- [530]
			"11:05:36 - Found Guild Rank: Raider", -- [531]
			"11:05:37 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [532]
			"11:10:47 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Sybør) (distri:) (GUILD)", -- [533]
			"11:19:16 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [534]
			"11:19:16 - GetML()", -- [535]
			"11:22:14 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [536]
			"11:22:14 - GetML()", -- [537]
			"11:27:03 - Event: (PARTY_LEADER_CHANGED)", -- [538]
			"11:27:03 - GetML()", -- [539]
			"11:27:03 - Resetting council as we have a new ML!", -- [540]
			"11:27:03 - MasterLooter =  (Niseko-Stormscale)", -- [541]
			"11:27:03 - GetCouncilInGroup (Niseko-Stormscale)", -- [542]
			"11:27:03 - ML:NewML (Niseko-Stormscale)", -- [543]
			"11:27:03 - UpdateMLdb", -- [544]
			"11:27:03 - OnMLDBReceived", -- [545]
			"11:27:03 - UpdateGroup (true)", -- [546]
			"11:27:03 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [547]
			"11:27:03 - GetCouncilInGroup (Niseko-Stormscale)", -- [548]
			"11:27:03 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [549]
			"11:27:03 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [550]
			"11:27:04 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [551]
			"11:27:04 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [552]
			"11:27:04 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [553]
			"11:27:04 - true = (IsCouncil) (Niseko-Stormscale)", -- [554]
			"11:27:04 - GetLootDBStatistics()", -- [555]
			"11:27:04 - GetGuildRankNum()", -- [556]
			"11:27:04 - RCVotingFrame (enabled)", -- [557]
			"11:27:04 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SHEALER^N4^SRaider^N6^N0^N7^N414.6875^N8^N264^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [558]
			"11:27:04 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (414.6875) (264)", -- [559]
			"11:27:05 - VotingFrame:Update() without lootTable!!", -- [560]
			"11:27:07 - VotingFrame:Update() without lootTable!!", -- [561]
			"11:27:14 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [562]
			"11:27:14 - true = (IsCouncil) (Niseko-Stormscale)", -- [563]
			"11:27:14 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [564]
			"11:27:14 - UpdateGroup (table: 0000018563245EF0)", -- [565]
			"11:27:14 - ML:AddCandidate (Renstorp-Draenor) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [566]
			"11:27:14 - GetCouncilInGroup (Niseko-Stormscale)", -- [567]
			"11:27:14 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfoRequest^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [568]
			"11:27:14 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [569]
			"11:27:14 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [570]
			"11:27:14 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [571]
			"11:27:14 - Comm received:^1^SplayerInfo^T^N1^SRenstorp-Draenor^N2^SSHAMAN^N3^SHEALER^N4^STrial^N6^N0^N7^N409.125^N8^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (WHISPER)", -- [572]
			"11:27:14 - ML:AddCandidate (Renstorp-Draenor) (SHAMAN) (HEALER) (Trial) (nil) (0) (409.125) (264)", -- [573]
			"11:27:18 - Timer MLdb_check passed", -- [574]
			"11:28:10 - VotingFrame:Update() without lootTable!!", -- [575]
			"11:28:16 - VotingFrame:Update() without lootTable!!", -- [576]
			"11:28:21 - VotingFrame:Update() without lootTable!!", -- [577]
			"11:28:26 - VotingFrame:Update() without lootTable!!", -- [578]
			"11:28:32 - VotingFrame:Update() without lootTable!!", -- [579]
			"11:28:48 - VotingFrame:Update() without lootTable!!", -- [580]
			"11:30:01 - Event: (PARTY_LEADER_CHANGED)", -- [581]
			"11:30:01 - GetML()", -- [582]
			"11:30:01 - Stop handling loot", -- [583]
			"11:30:01 - ML Disabled", -- [584]
			"11:30:01 - Resetting council as we have a new ML!", -- [585]
			"11:30:01 - MasterLooter =  (Renstorp-Draenor)", -- [586]
			"11:30:01 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [587]
			"11:30:01 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [588]
			"11:30:01 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [589]
			"11:30:01 - OnMLDBReceived", -- [590]
			"11:30:01 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [591]
			"11:30:01 - OnMLDBReceived", -- [592]
			"11:30:01 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [593]
			"11:30:01 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [594]
			"11:30:01 - false = (IsCouncil) (Niseko-Stormscale)", -- [595]
			"11:30:01 - Hide VotingFrame", -- [596]
			"11:30:01 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SHEALER^N6^SRaider^N8^N0^N9^N414.6875^N10^N264^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [597]
			"11:30:11 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [598]
			"11:30:11 - false = (IsCouncil) (Niseko-Stormscale)", -- [599]
			"11:30:11 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [600]
			"11:30:16 - Timer MLdb_check passed", -- [601]
			"11:30:27 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [602]
			"11:30:27 - OnMLDBReceived", -- [603]
			"11:30:27 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [604]
			"11:32:31 - Event: (GROUP_LEFT) (1) (Party-2073-00001CE86078)", -- [605]
			"11:32:31 - GetML()", -- [606]
			"11:32:31 - Event: (PARTY_LEADER_CHANGED)", -- [607]
			"11:32:31 - GetML()", -- [608]
			"11:32:31 - Unknown ML", -- [609]
			"11:32:32 - GetML()", -- [610]
			"11:32:32 - Resetting council as we have a new ML!", -- [611]
			"11:32:32 - MasterLooter =  (Fotmdpsbtw-Kazzak)", -- [612]
			"11:32:41 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^SplayerInfoRequest^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [613]
			"11:32:41 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (WHISPER)", -- [614]
			"11:32:41 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfoRequest^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [615]
			"11:32:41 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [616]
			"11:32:41 - OnMLDBReceived", -- [617]
			"11:32:41 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^SspecID^N255^Senchant_lvl^N11^Sclass^SHUNTER^Senchanter^B^Srank^SSocial^t^SZirkò-Kazzak^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N159^Sclass^SDEMONHUNTER^Senchanter^B^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [618]
			"11:32:42 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SDAMAGER^N6^SRaider^N8^N0^N9^N408.75^N10^N264^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [619]
			"11:32:42 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [620]
			"11:32:47 - Timer MLdb_check passed", -- [621]
			"11:32:47 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^Scouncil_request^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [622]
			"11:32:47 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^Scouncil_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [623]
			"11:32:47 - Comm received:^1^Scouncil^T^N1^T^N1^SFotmdpsbtw-Kazzak^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [624]
			"11:32:47 - false = (IsCouncil) (Niseko-Stormscale)", -- [625]
			"11:32:47 - Comm received:^1^Scouncil^T^N1^T^N1^SFotmdpsbtw-Kazzak^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [626]
			"11:32:47 - false = (IsCouncil) (Niseko-Stormscale)", -- [627]
			"11:36:38 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [628]
			"11:36:38 - GetML()", -- [629]
			"11:38:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [630]
			"11:47:29 - Comm received:^1^Sxrealm^T^N1^SFlobmonk-DefiasBrotherhood^N2^SplayerInfoRequest^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [631]
			"11:47:29 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [632]
			"11:47:29 - OnMLDBReceived", -- [633]
			"11:47:29 - Comm received:^1^Scandidates^T^N1^T^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^SspecID^N255^Senchant_lvl^N11^Sclass^SHUNTER^Senchanter^B^Srank^SSocial^t^SZirkò-Kazzak^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N159^Sclass^SDEMONHUNTER^Senchanter^B^Srank^SRaider^t^SFlobmonk-DefiasBrotherhood^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [634]
			"11:47:30 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^SplayerInfo^N3^SFlobmonk-DefiasBrotherhood^N4^SMONK^N5^STANK^N6^SMember^N7^B^N8^N40^N9^N403.625^N10^N268^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [635]
			"11:47:35 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^Scouncil_request^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [636]
			"11:47:35 - Comm received:^1^Scouncil^T^N1^T^N1^SFotmdpsbtw-Kazzak^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [637]
			"11:47:35 - false = (IsCouncil) (Niseko-Stormscale)", -- [638]
			"11:49:14 - Event: (RAID_INSTANCE_WELCOME) (Shrine of the Storm (Mythic)) (331850) (0) (0)", -- [639]
			"11:49:15 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [640]
			"11:49:15 - GetML()", -- [641]
			"11:50:19 - Event: (PARTY_LEADER_CHANGED)", -- [642]
			"11:50:19 - GetML()", -- [643]
			"11:50:19 - Resetting council as we have a new ML!", -- [644]
			"11:50:19 - MasterLooter =  (Zirkò-Kazzak)", -- [645]
			"11:50:20 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [646]
			"11:50:20 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [647]
			"11:50:20 - OnMLDBReceived", -- [648]
			"11:50:20 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [649]
			"11:50:20 - OnMLDBReceived", -- [650]
			"11:50:20 - Comm received:^1^Scandidates^T^N1^T^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SZirkò-Kazzak^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SFlobmonk-DefiasBrotherhood^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [651]
			"11:50:20 - Comm received:^1^Scouncil^T^N1^T^N1^SZirkò-Kazzak^t^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [652]
			"11:50:20 - false = (IsCouncil) (Niseko-Stormscale)", -- [653]
			"11:50:20 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [654]
			"11:50:20 - Comm received:^1^Sxrealm^T^N1^SZirkò-Kazzak^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SDAMAGER^N6^SRaider^N8^N0^N9^N408.75^N10^N264^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [655]
			"11:50:20 - Comm received:^1^Sxrealm^T^N1^SZirkò-Kazzak^N2^SplayerInfo^N3^SFlobmonk-DefiasBrotherhood^N4^SMONK^N5^STANK^N6^SMember^N7^B^N8^N40^N9^N403.625^N10^N268^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [656]
			"11:50:20 - Comm received:^1^Sxrealm^T^N1^SZirkò-Kazzak^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [657]
			"11:50:30 - Comm received:^1^Scouncil^T^N1^T^N1^SZirkò-Kazzak^t^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [658]
			"11:50:30 - false = (IsCouncil) (Niseko-Stormscale)", -- [659]
			"11:50:30 - Comm received:^1^Scandidates^T^N1^T^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^SspecID^N255^Senchant_lvl^N11^Sclass^SHUNTER^Senchanter^B^Srank^SSocial^t^SZirkò-Kazzak^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N159^Sclass^SDEMONHUNTER^Senchanter^B^Srank^SRaider^t^SFlobmonk-DefiasBrotherhood^T^Srole^STANK^SspecID^N268^Senchant_lvl^N40^Sclass^SMONK^Senchanter^B^Srank^SMember^t^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [660]
			"11:50:34 - Timer MLdb_check passed", -- [661]
			"11:50:49 - Event: (PARTY_LEADER_CHANGED)", -- [662]
			"11:50:49 - GetML()", -- [663]
			"11:50:49 - Resetting council as we have a new ML!", -- [664]
			"11:50:49 - MasterLooter =  (Flobmonk-DefiasBrotherhood)", -- [665]
			"11:50:50 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [666]
			"11:50:50 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [667]
			"11:50:50 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [668]
			"11:50:50 - OnMLDBReceived", -- [669]
			"11:50:50 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [670]
			"11:50:50 - OnMLDBReceived", -- [671]
			"11:50:50 - Comm received:^1^Scandidates^T^N1^T^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SZirkò-Kazzak^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SFlobmonk-DefiasBrotherhood^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [672]
			"11:50:50 - Comm received:^1^Scouncil^T^N1^T^N1^SFlobmonk-DefiasBrotherhood^t^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [673]
			"11:50:50 - false = (IsCouncil) (Niseko-Stormscale)", -- [674]
			"11:50:50 - Comm received:^1^Sxrealm^T^N1^SFlobmonk-DefiasBrotherhood^N2^SplayerInfo^N3^SFotmdpsbtw-Kazzak^N4^SHUNTER^N5^SDAMAGER^N6^SSocial^N7^B^N8^N11^N9^N393.9375^N10^N255^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [675]
			"11:50:50 - Comm received:^1^Sxrealm^T^N1^SFlobmonk-DefiasBrotherhood^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [676]
			"11:50:50 - Comm received:^1^Sxrealm^T^N1^SFlobmonk-DefiasBrotherhood^N2^SplayerInfo^N3^SZirkò-Kazzak^N4^SDEMONHUNTER^N5^SDAMAGER^N6^SRaider^N7^B^N8^N159^N9^N400.5625^N10^N577^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [677]
			"11:50:50 - Comm received:^1^Sxrealm^T^N1^SFlobmonk-DefiasBrotherhood^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SDAMAGER^N6^SRaider^N8^N0^N9^N408.75^N10^N264^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [678]
			"11:50:59 - Comm received:^1^Scouncil^T^N1^T^N1^SFlobmonk-DefiasBrotherhood^t^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [679]
			"11:50:59 - false = (IsCouncil) (Niseko-Stormscale)", -- [680]
			"11:50:59 - Comm received:^1^Scandidates^T^N1^T^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^SspecID^N255^Senchant_lvl^N11^Sclass^SHUNTER^Senchanter^B^Srank^SSocial^t^SZirkò-Kazzak^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N159^Sclass^SDEMONHUNTER^Senchanter^B^Srank^SRaider^t^SFlobmonk-DefiasBrotherhood^T^Srole^STANK^SspecID^N268^Senchant_lvl^N40^Sclass^SMONK^Senchanter^B^Srank^SMember^t^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [681]
			"11:51:04 - Timer MLdb_check passed", -- [682]
			"11:57:06 - Event: (ENCOUNTER_START) (2130) (Aqu'sirr) (8) (5)", -- [683]
			"11:57:06 - UpdatePlayersData()", -- [684]
			"11:58:57 - Event: (ENCOUNTER_END) (2130) (Aqu'sirr) (8) (5) (1)", -- [685]
			"12:08:54 - Event: (ENCOUNTER_START) (2131) (Tidesage Council) (8) (5)", -- [686]
			"12:08:54 - UpdatePlayersData()", -- [687]
			"12:11:09 - Event: (ENCOUNTER_END) (2131) (Tidesage Council) (8) (5) (1)", -- [688]
			"12:11:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [689]
			"12:15:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Feisty) (distri:) (GUILD)", -- [690]
			"12:17:27 - Event: (ENCOUNTER_START) (2132) (Lord Stormsong) (8) (5)", -- [691]
			"12:17:27 - UpdatePlayersData()", -- [692]
			"12:19:21 - Event: (ENCOUNTER_END) (2132) (Lord Stormsong) (8) (5) (1)", -- [693]
			"12:19:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [694]
			"12:21:15 - Event: (ENCOUNTER_START) (2133) (Vol'zith the Whisperer) (8) (5)", -- [695]
			"12:21:15 - UpdatePlayersData()", -- [696]
			"12:24:24 - Event: (ENCOUNTER_END) (2133) (Vol'zith the Whisperer) (8) (5) (0)", -- [697]
			"12:26:00 - Event: (ENCOUNTER_START) (2133) (Vol'zith the Whisperer) (8) (5)", -- [698]
			"12:26:00 - UpdatePlayersData()", -- [699]
			"12:27:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Jíra) (distri:) (GUILD)", -- [700]
			"12:28:37 - Event: (ENCOUNTER_END) (2133) (Vol'zith the Whisperer) (8) (5) (1)", -- [701]
			"12:29:06 - Event: (LOOT_READY) (true)", -- [702]
			"12:29:06 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3770-1864-19478-290761-000067F3F9) (280)", -- [703]
			"12:29:06 - Event: (LOOT_READY) (true)", -- [704]
			"12:29:06 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3770-1864-19478-290761-000067F3F9) (280)", -- [705]
			"12:29:07 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [706]
			"12:29:07 - false = (IsCouncil) (Niseko-Stormscale)", -- [707]
			"12:29:07 - OnLootSlotCleared() (2) (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (6)", -- [708]
			"12:29:07 - Event: (LOOT_CLOSED)", -- [709]
			"12:29:07 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [710]
			"12:29:07 - false = (IsCouncil) (Niseko-Stormscale)", -- [711]
			"12:29:08 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (158318) (|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky Cerulean Signet]|h|r) (1) (Renstorp-Draenor) (SHAMAN)", -- [712]
			"12:29:08 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [713]
			"12:29:08 - false = (IsCouncil) (Niseko-Stormscale)", -- [714]
			"12:29:09 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Flobmonk-DefiasBrotherhood) (distri:) (PARTY)", -- [715]
			"12:29:09 - false = (IsCouncil) (Niseko-Stormscale)", -- [716]
			"12:29:09 - UpdateAndSendRecentTradableItem: Didn't find item on try  (1)", -- [717]
			"12:29:10 - UpdateAndSendRecentTradableItem: Didn't find item on try  (2)", -- [718]
			"12:29:10 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:158318::::::::120:264::16:3:5010:1572:4786:::|h[Murky~`Cerulean~`Signet]|h|r^N2^S290761^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [719]
			"12:29:11 - UpdateAndSendRecentTradableItem: Didn't find item on try  (3)", -- [720]
			"12:29:12 - Error - UpdateAndSendRecentTradableItem (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (not found in bags)", -- [721]
			"12:29:25 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (159308) (|cffa335ee|Hitem:159308::::::::120:262::16:4:5010:4802:1572:4786:::|h[Bracers of the Sacred Fleet]|h|r) (1) (Zirkò-Kazzak) (DEMONHUNTER)", -- [722]
			"12:29:26 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [723]
			"12:29:26 - false = (IsCouncil) (Niseko-Stormscale)", -- [724]
			"12:29:27 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:159308::::::::120:577::16:4:5010:4802:1572:4786:::|h[Bracers~`of~`the~`Sacred~`Fleet]|h|r^N2^S290761^t^^ (from:) (Zirkò-Kazzak) (distri:) (PARTY)", -- [725]
			"12:29:35 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [726]
			"12:29:35 - GetML()", -- [727]
			"12:29:39 - Event: (PARTY_LEADER_CHANGED)", -- [728]
			"12:29:39 - GetML()", -- [729]
			"12:29:39 - Resetting council as we have a new ML!", -- [730]
			"12:29:39 - MasterLooter =  (Fotmdpsbtw-Kazzak)", -- [731]
			"12:29:40 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [732]
			"12:29:40 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [733]
			"12:29:40 - OnMLDBReceived", -- [734]
			"12:29:40 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [735]
			"12:29:40 - OnMLDBReceived", -- [736]
			"12:29:40 - Comm received:^1^Scandidates^T^N1^T^SFotmdpsbtw-Kazzak^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [737]
			"12:29:40 - Comm received:^1^Scouncil^T^N1^T^N1^SFotmdpsbtw-Kazzak^t^t^^ (from:) (Fotmdpsbtw-Kazzak) (distri:) (PARTY)", -- [738]
			"12:29:40 - false = (IsCouncil) (Niseko-Stormscale)", -- [739]
			"12:29:40 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [740]
			"12:29:40 - Comm received:^1^Sxrealm^T^N1^SFotmdpsbtw-Kazzak^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SDAMAGER^N6^SRaider^N8^N0^N9^N408.75^N10^N262^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [741]
			"12:29:47 - Event: (PARTY_LEADER_CHANGED)", -- [742]
			"12:29:47 - GetML()", -- [743]
			"12:29:47 - Resetting council as we have a new ML!", -- [744]
			"12:29:47 - MasterLooter =  (Niseko-Stormscale)", -- [745]
			"12:29:47 - GetCouncilInGroup (Niseko-Stormscale)", -- [746]
			"12:29:47 - ML:NewML (Niseko-Stormscale)", -- [747]
			"12:29:47 - UpdateMLdb", -- [748]
			"12:29:47 - OnMLDBReceived", -- [749]
			"12:29:47 - UpdateGroup (true)", -- [750]
			"12:29:47 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (DAMAGER) (nil) (nil) (nil) (nil) (nil)", -- [751]
			"12:29:47 - ML:AddCandidate (Renstorp-Draenor) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [752]
			"12:29:47 - GetCouncilInGroup (Niseko-Stormscale)", -- [753]
			"12:29:47 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [754]
			"12:29:47 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [755]
			"12:29:47 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [756]
			"12:29:47 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [757]
			"12:29:47 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [758]
			"12:29:47 - true = (IsCouncil) (Niseko-Stormscale)", -- [759]
			"12:29:47 - GetLootDBStatistics()", -- [760]
			"12:29:47 - GetGuildRankNum()", -- [761]
			"12:29:47 - RCVotingFrame (enabled)", -- [762]
			"12:29:47 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SDAMAGER^N4^SRaider^N6^N0^N7^N408.75^N8^N262^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [763]
			"12:29:47 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (DAMAGER) (Raider) (nil) (0) (408.75) (262)", -- [764]
			"12:29:47 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [765]
			"12:29:47 - Comm received:^1^SplayerInfo^T^N1^SRenstorp-Draenor^N2^SSHAMAN^N3^SHEALER^N4^STrial^N6^N0^N7^N409.125^N8^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (WHISPER)", -- [766]
			"12:29:47 - ML:AddCandidate (Renstorp-Draenor) (SHAMAN) (HEALER) (Trial) (nil) (0) (409.125) (264)", -- [767]
			"12:29:54 - Timer MLdb_check passed", -- [768]
			"12:29:58 - VotingFrame:Update() without lootTable!!", -- [769]
			"12:29:58 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [770]
			"12:29:58 - true = (IsCouncil) (Niseko-Stormscale)", -- [771]
			"12:29:58 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^SspecID^N262^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [772]
			"12:30:02 - Timer MLdb_check passed", -- [773]
			"12:34:52 - UpdateGroup (table: 000001852AC3CCB0)", -- [774]
			"12:34:52 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (262) (nil)", -- [775]
			"12:34:52 - GetCouncilInGroup (Niseko-Stormscale)", -- [776]
			"12:34:52 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [777]
			"12:34:52 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [778]
			"12:44:10 - Event: (PARTY_LEADER_CHANGED)", -- [779]
			"12:44:10 - GetML()", -- [780]
			"12:44:10 - Stop handling loot", -- [781]
			"12:44:10 - ML Disabled", -- [782]
			"12:44:10 - Resetting council as we have a new ML!", -- [783]
			"12:44:10 - MasterLooter =  (Renstorp-Draenor)", -- [784]
			"12:44:10 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [785]
			"12:44:10 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [786]
			"12:44:10 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [787]
			"12:44:10 - OnMLDBReceived", -- [788]
			"12:44:10 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [789]
			"12:44:10 - OnMLDBReceived", -- [790]
			"12:44:10 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [791]
			"12:44:10 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [792]
			"12:44:10 - false = (IsCouncil) (Niseko-Stormscale)", -- [793]
			"12:44:10 - Hide VotingFrame", -- [794]
			"12:44:11 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SHEALER^N6^SRaider^N8^N0^N9^N414.6875^N10^N262^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [795]
			"12:44:21 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [796]
			"12:44:21 - false = (IsCouncil) (Niseko-Stormscale)", -- [797]
			"12:44:21 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N262^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [798]
			"12:44:25 - Timer MLdb_check passed", -- [799]
			"12:44:29 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [800]
			"12:44:29 - OnMLDBReceived", -- [801]
			"12:44:30 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [802]
			"12:44:43 - Event: (GROUP_LEFT) (1) (Party-1305-0000438B5D2B)", -- [803]
			"12:44:43 - GetML()", -- [804]
			"12:44:43 - Event: (PARTY_LEADER_CHANGED)", -- [805]
			"12:44:43 - GetML()", -- [806]
			"12:44:43 - Resetting council as we have a new ML!", -- [807]
			"12:44:43 - MasterLooter =  (Zubarh-TarrenMill)", -- [808]
			"12:44:58 - Timer MLdb_check passed", -- [809]
			"12:44:58 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^Scouncil_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [810]
			"12:44:58 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^Scouncil_request^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [811]
			"12:46:36 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [812]
			"12:53:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazdruid) (distri:) (GUILD)", -- [813]
			"12:54:09 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [814]
			"12:54:09 - GetML()", -- [815]
			"12:56:22 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [816]
			"12:59:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [817]
			"13:00:00 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [818]
			"13:05:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Jíra) (distri:) (GUILD)", -- [819]
			"13:05:28 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [820]
			"13:08:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [821]
			"02/16/19", -- [822]
			"13:09:48 - Logged In", -- [823]
			"13:09:48 - ML initialized!", -- [824]
			"13:09:48 - TradeUI enabled", -- [825]
			"13:09:54 - Niseko-Stormscale (2.10.0) (nil)", -- [826]
			"13:09:54 - ActivateSkin (bfa)", -- [827]
			"13:09:56 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [828]
			"13:09:56 - GetML()", -- [829]
			"13:09:56 - UpdatePlayersData()", -- [830]
			"13:09:56 - Event: (PARTY_LEADER_CHANGED)", -- [831]
			"13:09:56 - GetML()", -- [832]
			"13:09:56 - Unknown ML", -- [833]
			"13:09:57 - GetPlayersGuildRank()", -- [834]
			"13:09:57 - Found Guild Rank: Raider", -- [835]
			"13:09:58 - GetML()", -- [836]
			"13:09:58 - Unknown ML", -- [837]
			"13:09:58 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [838]
			"13:09:58 - GetML()", -- [839]
			"13:09:58 - Resetting council as we have a new ML!", -- [840]
			"13:09:58 - MasterLooter =  (Zubarh-TarrenMill)", -- [841]
			"13:10:13 - Timer MLdb_check passed", -- [842]
			"13:10:13 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^SMLdb_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [843]
			"13:10:13 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^Scouncil_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [844]
			"13:12:40 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [845]
			"13:23:15 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [846]
			"13:32:00 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Craigshilo) (distri:) (GUILD)", -- [847]
			"13:34:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [848]
			"13:34:56 - Event: (RAID_INSTANCE_WELCOME) (Shrine of the Storm (Mythic)) (325503) (0) (0)", -- [849]
			"13:34:57 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [850]
			"13:34:57 - GetML()", -- [851]
			"13:35:39 - Event: (PARTY_LEADER_CHANGED)", -- [852]
			"13:35:39 - GetML()", -- [853]
			"13:35:39 - Resetting council as we have a new ML!", -- [854]
			"13:35:39 - MasterLooter =  (тьеррон-Ревущийфьорд)", -- [855]
			"13:35:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Thirtyseven) (distri:) (GUILD)", -- [856]
			"13:35:54 - Timer MLdb_check passed", -- [857]
			"13:35:55 - Comm received:^1^Sxrealm^T^N1^Sтьеррон-Ревущийфьорд^N2^SMLdb_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [858]
			"13:35:55 - Comm received:^1^Sxrealm^T^N1^Sтьеррон-Ревущийфьорд^N2^Scouncil_request^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [859]
			"13:35:55 - Comm received:^1^Sxrealm^T^N1^Sтьеррон-Ревущийфьорд^N2^Scouncil_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [860]
			"13:37:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Shaggedurdad) (distri:) (GUILD)", -- [861]
			"13:40:11 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zeness) (distri:) (GUILD)", -- [862]
			"13:40:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xirips) (distri:) (GUILD)", -- [863]
			"13:41:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [864]
			"13:42:14 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [865]
			"13:42:16 - Event: (ENCOUNTER_START) (2130) (Aqu'sirr) (8) (5)", -- [866]
			"13:42:16 - UpdatePlayersData()", -- [867]
			"13:44:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Titanslayer) (distri:) (GUILD)", -- [868]
			"13:44:28 - Event: (ENCOUNTER_END) (2130) (Aqu'sirr) (8) (5) (1)", -- [869]
			"13:44:51 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [870]
			"13:45:11 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Satadin) (distri:) (GUILD)", -- [871]
			"13:51:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zariis) (distri:) (GUILD)", -- [872]
			"13:52:22 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllot) (distri:) (GUILD)", -- [873]
			"13:53:13 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerozy) (distri:) (GUILD)", -- [874]
			"13:54:47 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllotdruid) (distri:) (GUILD)", -- [875]
			"13:57:25 - Event: (ENCOUNTER_START) (2131) (Tidesage Council) (8) (5)", -- [876]
			"13:57:25 - UpdatePlayersData()", -- [877]
			"13:59:37 - Event: (ENCOUNTER_END) (2131) (Tidesage Council) (8) (5) (1)", -- [878]
			"14:01:32 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerozy) (distri:) (GUILD)", -- [879]
			"14:05:22 - Event: (ENCOUNTER_START) (2132) (Lord Stormsong) (8) (5)", -- [880]
			"14:05:22 - UpdatePlayersData()", -- [881]
			"14:07:29 - Event: (ENCOUNTER_END) (2132) (Lord Stormsong) (8) (5) (1)", -- [882]
			"14:09:32 - Event: (ENCOUNTER_START) (2133) (Vol'zith the Whisperer) (8) (5)", -- [883]
			"14:09:32 - UpdatePlayersData()", -- [884]
			"14:11:16 - Event: (ENCOUNTER_END) (2133) (Vol'zith the Whisperer) (8) (5) (1)", -- [885]
			"14:12:33 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (159364) (|cffa335ee|Hitem:159364::::::::120:262::16:3:5010:1572:4786:::|h[Bindings of the Calling Depths]|h|r) (1) (Renstorp-Draenor) (SHAMAN)", -- [886]
			"14:12:33 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [887]
			"14:12:33 - false = (IsCouncil) (Niseko-Stormscale)", -- [888]
			"14:12:35 - Event: (LOOT_READY) (true)", -- [889]
			"14:12:35 - Adding to self.lootSlotInfo (2) (|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky Cerulean Signet]|h|r) (4) (GameObject-0-3767-1864-26773-290761-0000680C3A) (1)", -- [890]
			"14:12:35 - Adding to self.lootSlotInfo (3) (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3767-1864-26773-290761-0000680C3A) (280)", -- [891]
			"14:12:35 - Event: (LOOT_READY) (true)", -- [892]
			"14:12:35 - Adding to self.lootSlotInfo (2) (|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky Cerulean Signet]|h|r) (4) (GameObject-0-3767-1864-26773-290761-0000680C3A) (1)", -- [893]
			"14:12:35 - Adding to self.lootSlotInfo (3) (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3767-1864-26773-290761-0000680C3A) (280)", -- [894]
			"14:12:35 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:159364::::::::120:264::16:3:5010:1572:4786:::|h[Bindings~`of~`the~`Calling~`Depths]|h|r^N2^S290761^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [895]
			"14:12:36 - OnLootSlotCleared() (2) (|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky Cerulean Signet]|h|r) (4)", -- [896]
			"14:12:36 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (158318) (|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky Cerulean Signet]|h|r) (1) (Niseko) (SHAMAN)", -- [897]
			"14:12:36 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (159620) (|cffa335ee|Hitem:159620::::::::120:262::16:3:5010:1572:4786:::|h[Conch of Dark Whispers]|h|r) (1) (Markelus-Kazzak) (MAGE)", -- [898]
			"14:12:37 - OnLootSlotCleared() (3) (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (6)", -- [899]
			"14:12:37 - Event: (LOOT_CLOSED)", -- [900]
			"14:12:37 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [901]
			"14:12:37 - false = (IsCouncil) (Niseko-Stormscale)", -- [902]
			"14:12:38 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky~`Cerulean~`Signet]|h|r^N2^S290761^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [903]
			"14:12:39 - UpdateAndSendRecentTradableItem: Didn't find item on try  (1)", -- [904]
			"14:12:40 - UpdateAndSendRecentTradableItem: Didn't find item on try  (2)", -- [905]
			"14:12:41 - UpdateAndSendRecentTradableItem: Didn't find item on try  (3)", -- [906]
			"14:12:42 - Error - UpdateAndSendRecentTradableItem (|cff0070dd|Hcurrency:1553:280|h[Glowing Azerite Crystal]|h|r) (not found in bags)", -- [907]
			"14:13:12 - Event: (PARTY_LEADER_CHANGED)", -- [908]
			"14:13:12 - GetML()", -- [909]
			"14:13:12 - Resetting council as we have a new ML!", -- [910]
			"14:13:12 - MasterLooter =  (Zubarh-TarrenMill)", -- [911]
			"14:13:27 - Timer MLdb_check passed", -- [912]
			"14:13:28 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^Scouncil_request^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [913]
			"14:13:28 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^SMLdb_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [914]
			"14:13:28 - Comm received:^1^Sxrealm^T^N1^SZubarh-TarrenMill^N2^Scouncil_request^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [915]
			"14:13:36 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [916]
			"14:13:36 - GetML()", -- [917]
			"14:13:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [918]
			"14:13:53 - Event: (GROUP_LEFT) (1) (Party-1084-00003D3247BE)", -- [919]
			"14:13:53 - GetML()", -- [920]
			"02/16/19", -- [921]
			"17:01:17 - Logged In", -- [922]
			"17:01:17 - ML initialized!", -- [923]
			"17:01:17 - TradeUI enabled", -- [924]
			"17:01:24 - Niseko-Stormscale (2.10.0) (nil)", -- [925]
			"17:01:24 - ActivateSkin (bfa)", -- [926]
			"17:01:26 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [927]
			"17:01:26 - GetML()", -- [928]
			"17:01:26 - UpdatePlayersData()", -- [929]
			"17:01:29 - GetPlayersGuildRank()", -- [930]
			"17:01:29 - Found Guild Rank: Raider", -- [931]
			"17:01:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [932]
			"17:02:01 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazlock) (distri:) (GUILD)", -- [933]
			"17:06:33 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Satadin) (distri:) (GUILD)", -- [934]
			"17:14:16 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [935]
			"17:18:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Craigshilo) (distri:) (GUILD)", -- [936]
			"17:18:57 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Thirtyseven) (distri:) (GUILD)", -- [937]
			"17:20:03 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [938]
			"17:20:53 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazlock) (distri:) (GUILD)", -- [939]
			"02/16/19", -- [940]
			"22:40:48 - Logged In", -- [941]
			"22:40:48 - ML initialized!", -- [942]
			"22:40:48 - TradeUI enabled", -- [943]
			"22:40:55 - Niseko-Stormscale (2.10.0) (nil)", -- [944]
			"22:40:55 - ActivateSkin (bfa)", -- [945]
			"22:40:57 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [946]
			"22:40:57 - GetML()", -- [947]
			"22:40:57 - UpdatePlayersData()", -- [948]
			"22:40:59 - GetPlayersGuildRank()", -- [949]
			"22:40:59 - Found Guild Rank: Raider", -- [950]
			"22:41:00 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [951]
			"02/17/19", -- [952]
			"12:23:34 - Logged In", -- [953]
			"12:23:34 - ML initialized!", -- [954]
			"12:23:34 - TradeUI enabled", -- [955]
			"12:23:42 - Niseko-Stormscale (2.10.0) (nil)", -- [956]
			"12:23:42 - ActivateSkin (bfa)", -- [957]
			"12:23:44 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [958]
			"12:23:44 - GetML()", -- [959]
			"12:23:44 - UpdatePlayersData()", -- [960]
			"12:23:46 - GetPlayersGuildRank()", -- [961]
			"12:23:46 - Found Guild Rank: Raider", -- [962]
			"12:23:46 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [963]
			"12:32:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [964]
			"12:38:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Heritageples) (distri:) (GUILD)", -- [965]
			"12:41:53 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazsham) (distri:) (GUILD)", -- [966]
			"12:45:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazmonk) (distri:) (GUILD)", -- [967]
			"12:48:47 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllotdh) (distri:) (GUILD)", -- [968]
			"12:49:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [969]
			"12:49:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazdruid) (distri:) (GUILD)", -- [970]
			"12:54:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [971]
			"12:57:50 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyburton) (distri:) (GUILD)", -- [972]
			"13:00:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyboy) (distri:) (GUILD)", -- [973]
			"02/17/19", -- [974]
			"14:37:32 - Logged In", -- [975]
			"14:37:32 - ML initialized!", -- [976]
			"14:37:32 - TradeUI enabled", -- [977]
			"14:37:38 - Niseko-Stormscale (2.10.0) (nil)", -- [978]
			"14:37:38 - ActivateSkin (bfa)", -- [979]
			"14:37:40 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [980]
			"14:37:40 - GetML()", -- [981]
			"14:37:40 - UpdatePlayersData()", -- [982]
			"14:37:42 - GetPlayersGuildRank()", -- [983]
			"14:37:42 - Found Guild Rank: Raider", -- [984]
			"14:37:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [985]
			"14:41:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seorek) (distri:) (GUILD)", -- [986]
			"14:44:02 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [987]
			"14:57:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [988]
			"02/17/19", -- [989]
			"16:56:24 - Logged In", -- [990]
			"16:56:24 - ML initialized!", -- [991]
			"16:56:24 - TradeUI enabled", -- [992]
			"16:56:30 - Niseko-Stormscale (2.10.0) (nil)", -- [993]
			"16:56:30 - ActivateSkin (bfa)", -- [994]
			"16:56:32 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [995]
			"16:56:32 - GetML()", -- [996]
			"16:56:32 - UpdatePlayersData()", -- [997]
			"16:56:34 - GetPlayersGuildRank()", -- [998]
			"16:56:34 - Found Guild Rank: Raider", -- [999]
			"16:56:35 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1000]
			"16:59:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1001]
			"17:01:16 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1002]
			"17:01:16 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1003]
			"17:01:16 - Non-ML: (Renstorp-Draenor) (sent Mldb!)", -- [1004]
			"17:01:16 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1005]
			"17:01:16 - Non-ML: (Renstorp-Draenor) (sent Mldb!)", -- [1006]
			"17:01:16 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1007]
			"17:01:16 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1008]
			"17:01:16 - Event: (PARTY_LEADER_CHANGED)", -- [1009]
			"17:01:16 - GetML()", -- [1010]
			"17:01:16 - Resetting council as we have a new ML!", -- [1011]
			"17:01:16 - MasterLooter =  (Renstorp-Draenor)", -- [1012]
			"17:01:16 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SNONE^N6^SRaider^N8^N0^N9^N414.6875^N10^N264^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1013]
			"17:01:26 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1014]
			"17:01:26 - false = (IsCouncil) (Niseko-Stormscale)", -- [1015]
			"17:01:26 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1016]
			"17:01:26 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^SplayerInfoRequest^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1017]
			"17:01:26 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Renstorp-Draenor) (distri:) (WHISPER)", -- [1018]
			"17:01:26 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1019]
			"17:01:26 - OnMLDBReceived", -- [1020]
			"17:01:26 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1021]
			"17:01:27 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SHEALER^N6^SRaider^N8^N0^N9^N414.6875^N10^N264^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1022]
			"17:01:31 - Timer MLdb_check passed", -- [1023]
			"17:02:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [1024]
			"17:13:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [1025]
			"17:15:04 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1026]
			"17:15:04 - OnMLDBReceived", -- [1027]
			"17:15:04 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1028]
			"17:15:14 - Comm received:^1^Sxrealm^T^N1^SToúkachan-TwistingNether^N2^SplayerInfoRequest^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1029]
			"17:15:14 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1030]
			"17:15:14 - OnMLDBReceived", -- [1031]
			"17:15:14 - Comm received:^1^Scandidates^T^N1^T^SToúkachan-TwistingNether^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1032]
			"17:15:14 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfo^N3^SToúkachan-TwistingNether^N4^SPRIEST^N5^SDAMAGER^N6^SSplit~`Alt^N7^B^N8^N19^N9^N392.3125^N10^N258^t^^ (from:) (Toúkachan-TwistingNether) (distri:) (PARTY)", -- [1033]
			"17:15:20 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^Scouncil_request^t^^ (from:) (Toúkachan-TwistingNether) (distri:) (PARTY)", -- [1034]
			"17:15:20 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1035]
			"17:15:20 - false = (IsCouncil) (Niseko-Stormscale)", -- [1036]
			"17:16:22 - Comm received:^1^Sxrealm^T^N1^SMørphëe-ConseildesOmbres^N2^SplayerInfoRequest^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1037]
			"17:16:22 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1038]
			"17:16:22 - OnMLDBReceived", -- [1039]
			"17:16:22 - Comm received:^1^Scandidates^T^N1^T^SMørphëe-ConseildesOmbres^T^Srole^STANK^Sclass^SDEATHKNIGHT^Srank^S^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N19^Sclass^SPRIEST^Senchanter^B^Srank^SSplit~`Alt^t^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1040]
			"17:16:22 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfo^N3^SMørphëe-ConseildesOmbres^N4^SDEATHKNIGHT^N5^STANK^N6^SReroll^N8^N0^N9^N402^N10^N250^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1041]
			"17:16:27 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^Scouncil_request^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1042]
			"17:16:28 - Comm received:^1^Scouncil^T^N1^T^N1^SRenstorp-Draenor^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1043]
			"17:16:28 - false = (IsCouncil) (Niseko-Stormscale)", -- [1044]
			"17:17:08 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1045]
			"17:17:08 - GetML()", -- [1046]
			"17:17:36 - Comm received:^1^Sxrealm^T^N1^SShankdoodle-Kazzak^N2^SplayerInfoRequest^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1047]
			"17:17:36 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1048]
			"17:17:36 - OnMLDBReceived", -- [1049]
			"17:17:36 - Comm received:^1^Scandidates^T^N1^T^SShankdoodle-Kazzak^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N19^Sclass^SPRIEST^Senchanter^B^Srank^SSplit~`Alt^t^SMørphëe-ConseildesOmbres^T^Srole^STANK^SspecID^N250^Senchant_lvl^N0^Sclass^SDEATHKNIGHT^Srank^SReroll^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1050]
			"17:17:46 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1051]
			"17:17:46 - OnMLDBReceived", -- [1052]
			"17:17:46 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N19^Sclass^SPRIEST^Senchanter^B^Srank^SSplit~`Alt^t^SMørphëe-ConseildesOmbres^T^Srole^STANK^SspecID^N250^Senchant_lvl^N0^Sclass^SDEATHKNIGHT^Srank^SReroll^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1053]
			"17:19:12 - Comm received:^1^Sxrealm^T^N1^SQuintella-Arthas^N2^SplayerInfoRequest^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1054]
			"17:19:12 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1055]
			"17:19:12 - OnMLDBReceived", -- [1056]
			"17:19:12 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N19^Sclass^SPRIEST^Senchanter^B^Srank^SSplit~`Alt^t^SQuintella-Arthas^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SMørphëe-ConseildesOmbres^T^Srole^STANK^SspecID^N250^Senchant_lvl^N0^Sclass^SDEATHKNIGHT^Srank^SReroll^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1057]
			"17:19:50 - Event: (RAID_INSTANCE_WELCOME) (Shrine of the Storm (Mythic)) (225614) (0) (0)", -- [1058]
			"17:19:50 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1059]
			"17:19:50 - GetML()", -- [1060]
			"17:20:17 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1061]
			"17:20:17 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1062]
			"17:20:17 - Non-ML: (Mørphëe-ConseildesOmbres) (sent Mldb!)", -- [1063]
			"17:20:17 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1064]
			"17:20:17 - Non-ML: (Mørphëe-ConseildesOmbres) (sent Mldb!)", -- [1065]
			"17:20:17 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SQuintella-Arthas^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNiseko-Stormscale^T^Srole^SDAMAGER^Sclass^SSHAMAN^Srank^S^t^SMørphëe-ConseildesOmbres^T^Srole^STANK^Sclass^SDEATHKNIGHT^Srank^S^t^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1066]
			"17:20:17 - Comm received:^1^Scouncil^T^N1^T^N1^SMørphëe-ConseildesOmbres^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1067]
			"17:20:17 - Event: (PARTY_LEADER_CHANGED)", -- [1068]
			"17:20:17 - GetML()", -- [1069]
			"17:20:17 - Resetting council as we have a new ML!", -- [1070]
			"17:20:17 - MasterLooter =  (Mørphëe-ConseildesOmbres)", -- [1071]
			"17:20:17 - Comm received:^1^Sxrealm^T^N1^SMørphëe-ConseildesOmbres^N2^SplayerInfo^N3^SNiseko-Stormscale^N4^SSHAMAN^N5^SDAMAGER^N6^SRaider^N8^N0^N9^N408.75^N10^N264^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1072]
			"17:20:17 - Comm received:^1^Sxrealm^T^N1^SMørphëe-ConseildesOmbres^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N409.125^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1073]
			"17:20:17 - Comm received:^1^Sxrealm^T^N1^SMørphëe-ConseildesOmbres^N2^SplayerInfo^N3^SToúkachan-TwistingNether^N4^SPRIEST^N5^SDAMAGER^N6^SSplit~`Alt^N7^B^N8^N19^N9^N392.3125^N10^N258^t^^ (from:) (Toúkachan-TwistingNether) (distri:) (PARTY)", -- [1074]
			"17:20:17 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1075]
			"17:20:27 - Comm received:^1^Scouncil^T^N1^T^N1^SMørphëe-ConseildesOmbres^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1076]
			"17:20:27 - false = (IsCouncil) (Niseko-Stormscale)", -- [1077]
			"17:20:27 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N19^Sclass^SPRIEST^Senchanter^B^Srank^SSplit~`Alt^t^SQuintella-Arthas^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNiseko-Stormscale^T^Srole^SDAMAGER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SMørphëe-ConseildesOmbres^T^Srole^STANK^SspecID^N250^Senchant_lvl^N0^Sclass^SDEATHKNIGHT^Srank^SReroll^t^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1078]
			"17:20:32 - Timer MLdb_check passed", -- [1079]
			"17:25:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zuto) (distri:) (GUILD)", -- [1080]
			"17:29:59 - Event: (ENCOUNTER_START) (2130) (Aqu'sirr) (8) (5)", -- [1081]
			"17:29:59 - UpdatePlayersData()", -- [1082]
			"17:32:30 - Event: (ENCOUNTER_END) (2130) (Aqu'sirr) (8) (5) (1)", -- [1083]
			"17:42:47 - Event: (ENCOUNTER_START) (2131) (Tidesage Council) (8) (5)", -- [1084]
			"17:42:47 - UpdatePlayersData()", -- [1085]
			"17:45:21 - Event: (ENCOUNTER_END) (2131) (Tidesage Council) (8) (5) (1)", -- [1086]
			"17:46:26 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zrs) (distri:) (GUILD)", -- [1087]
			"17:49:38 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [1088]
			"17:51:32 - Event: (ENCOUNTER_START) (2132) (Lord Stormsong) (8) (5)", -- [1089]
			"17:51:32 - UpdatePlayersData()", -- [1090]
			"17:53:53 - Event: (ENCOUNTER_END) (2132) (Lord Stormsong) (8) (5) (1)", -- [1091]
			"17:56:00 - Event: (ENCOUNTER_START) (2133) (Vol'zith the Whisperer) (8) (5)", -- [1092]
			"17:56:00 - UpdatePlayersData()", -- [1093]
			"17:58:32 - Event: (ENCOUNTER_END) (2133) (Vol'zith the Whisperer) (8) (5) (1)", -- [1094]
			"17:58:58 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1095]
			"17:58:58 - false = (IsCouncil) (Niseko-Stormscale)", -- [1096]
			"17:59:00 - Event: (LOOT_READY) (true)", -- [1097]
			"17:59:00 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3112-1864-7833-290761-00006992CB) (290)", -- [1098]
			"17:59:00 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4) (GameObject-0-3112-1864-7833-290761-00006992CB) (1)", -- [1099]
			"17:59:00 - Event: (LOOT_READY) (true)", -- [1100]
			"17:59:00 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3112-1864-7833-290761-00006992CB) (290)", -- [1101]
			"17:59:00 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4) (GameObject-0-3112-1864-7833-290761-00006992CB) (1)", -- [1102]
			"17:59:00 - Event: (LOOT_READY) (true)", -- [1103]
			"17:59:00 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3112-1864-7833-290761-00006992CB) (290)", -- [1104]
			"17:59:00 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4) (GameObject-0-3112-1864-7833-290761-00006992CB) (1)", -- [1105]
			"17:59:00 - Event: (LOOT_READY) (true)", -- [1106]
			"17:59:00 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3112-1864-7833-290761-00006992CB) (290)", -- [1107]
			"17:59:00 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4) (GameObject-0-3112-1864-7833-290761-00006992CB) (1)", -- [1108]
			"17:59:00 - Event: (LOOT_READY) (true)", -- [1109]
			"17:59:00 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3112-1864-7833-290761-00006992CB) (290)", -- [1110]
			"17:59:00 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4) (GameObject-0-3112-1864-7833-290761-00006992CB) (1)", -- [1111]
			"17:59:00 - Event: (LOOT_READY) (true)", -- [1112]
			"17:59:00 - Adding to self.lootSlotInfo (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6) (GameObject-0-3112-1864-7833-290761-00006992CB) (290)", -- [1113]
			"17:59:00 - Adding to self.lootSlotInfo (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4) (GameObject-0-3112-1864-7833-290761-00006992CB) (1)", -- [1114]
			"17:59:00 - Event: (LOOT_CLOSED)", -- [1115]
			"17:59:00 - OnLootSlotCleared() (2) (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (6)", -- [1116]
			"17:59:00 - Event: (LOOT_CLOSED)", -- [1117]
			"17:59:00 - OnLootSlotCleared() (3) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (4)", -- [1118]
			"17:59:00 - Event: (LOOT_CLOSED)", -- [1119]
			"17:59:01 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1120]
			"17:59:01 - false = (IsCouncil) (Niseko-Stormscale)", -- [1121]
			"17:59:01 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (159377) (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r) (1) (Niseko) (SHAMAN)", -- [1122]
			"17:59:02 - UpdateAndSendRecentTradableItem: Didn't find item on try  (1)", -- [1123]
			"17:59:03 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain~`of~`Consummate~`Power]|h|r^N2^S290761^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1124]
			"17:59:03 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (159619) (|cffa335ee|Hitem:159619::::::::120:262::16:3:5010:1572:4786:::|h[Briny Barnacle]|h|r) (1) (Mørphëe-ConseildesOmbres) (DEATHKNIGHT)", -- [1125]
			"17:59:03 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1126]
			"17:59:03 - false = (IsCouncil) (Niseko-Stormscale)", -- [1127]
			"17:59:03 - UpdateAndSendRecentTradableItem: Didn't find item on try  (2)", -- [1128]
			"17:59:04 - UpdateAndSendRecentTradableItem: Didn't find item on try  (3)", -- [1129]
			"17:59:05 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:159619::::::::120:250::16:3:5010:1572:4786:::|h[Bigorneau~`saumâtre]|h|r^N2^S290761^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1130]
			"17:59:05 - Error - UpdateAndSendRecentTradableItem (|cff0070dd|Hcurrency:1553:290|h[Glowing Azerite Crystal]|h|r) (not found in bags)", -- [1131]
			"17:59:08 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (159614) (|cffa335ee|Hitem:159614::::::::120:262::16:3:5010:1572:4786:::|h[Galecaller's Boon]|h|r) (1) (Quintella-Arthas) (DEMONHUNTER)", -- [1132]
			"17:59:11 - Event: (ENCOUNTER_LOOT_RECEIVED) (2133) (158318) (|cffa335ee|Hitem:158318::::::::120:262::16:3:5010:1572:4786:::|h[Murky Cerulean Signet]|h|r) (1) (Toúkachan-TwistingNether) (PRIEST)", -- [1133]
			"17:59:12 - Comm received:^1^Slooted^T^N1^S290761^t^^ (from:) (Toúkachan-TwistingNether) (distri:) (PARTY)", -- [1134]
			"17:59:12 - false = (IsCouncil) (Niseko-Stormscale)", -- [1135]
			"17:59:13 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:158318::::::::120:258::16:3:5010:1572:4786:::|h[Murky~`Cerulean~`Signet]|h|r^N2^S290761^t^^ (from:) (Toúkachan-TwistingNether) (distri:) (PARTY)", -- [1136]
			"17:59:34 - TradeUI: Traded item(s) to (Renstorp-Draenor)", -- [1137]
			"17:59:34 - Storage:RemoveItem (|cffa335ee|Hitem:159377::::::::120:262::16:3:5010:1572:4786:::|h[Chain of Consummate Power]|h|r)", -- [1138]
			"17:59:34 - Error - Couldn't remove item", -- [1139]
			"17:59:34 - TradeUI:Show() (nil)", -- [1140]
			"17:59:34 - TradeUI:Hide()", -- [1141]
			"17:59:54 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1142]
			"17:59:54 - GetML()", -- [1143]
			"18:00:13 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1144]
			"18:00:13 - OnMLDBReceived", -- [1145]
			"18:00:13 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SToúkachan-TwistingNether^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N19^Sclass^SPRIEST^Senchanter^B^Srank^SSplit~`Alt^t^SQuintella-Arthas^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SMørphëe-ConseildesOmbres^T^Srole^STANK^SspecID^N250^Senchant_lvl^N0^Sclass^SDEATHKNIGHT^Srank^SReroll^t^t^t^^ (from:) (Mørphëe-ConseildesOmbres) (distri:) (PARTY)", -- [1146]
			"18:00:21 - Event: (GROUP_LEFT) (1) (Party-1403-00001A75CA93)", -- [1147]
			"18:00:21 - GetML()", -- [1148]
			"18:04:13 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1149]
			"18:04:13 - GetML()", -- [1150]
			"18:05:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1151]
			"18:06:45 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [1152]
			"18:14:09 - Comm received:^1^SverTest^T^N1^S2.9.5^t^^ (from:) (Boomtastíc) (distri:) (GUILD)", -- [1153]
			"02/17/19", -- [1154]
			"19:42:36 - Logged In", -- [1155]
			"19:42:36 - ML initialized!", -- [1156]
			"19:42:36 - TradeUI enabled", -- [1157]
			"19:42:42 - Niseko-Stormscale (2.10.0) (nil)", -- [1158]
			"19:42:42 - ActivateSkin (bfa)", -- [1159]
			"19:42:44 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1160]
			"19:42:44 - GetML()", -- [1161]
			"19:42:44 - UpdatePlayersData()", -- [1162]
			"19:42:46 - GetPlayersGuildRank()", -- [1163]
			"19:42:46 - Found Guild Rank: Raider", -- [1164]
			"19:42:46 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1165]
			"19:43:10 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1166]
			"19:43:10 - GetML()", -- [1167]
			"19:43:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [1168]
			"19:44:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [1169]
			"19:48:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [1170]
			"19:51:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [1171]
			"19:53:08 - Event: (PARTY_LEADER_CHANGED)", -- [1172]
			"19:53:08 - GetML()", -- [1173]
			"19:53:08 - Resetting council as we have a new ML!", -- [1174]
			"19:53:08 - MasterLooter =  (Tigerozy-Stormscale)", -- [1175]
			"19:53:09 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1176]
			"19:53:09 - OnMLDBReceived", -- [1177]
			"19:53:09 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1178]
			"19:53:19 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [1179]
			"19:53:19 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1180]
			"19:53:19 - OnMLDBReceived", -- [1181]
			"19:53:19 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1182]
			"19:53:23 - Timer MLdb_check passed", -- [1183]
			"19:53:24 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SReeceburton-Stormscale^N3^SReeceburton-Stormscale^N4^STigerozy-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1184]
			"19:53:24 - false = (IsCouncil) (Niseko-Stormscale)", -- [1185]
			"19:53:24 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SReeceburton-Stormscale^N3^SReeceburton-Stormscale^N4^STigerozy-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1186]
			"19:53:24 - false = (IsCouncil) (Niseko-Stormscale)", -- [1187]
			"19:54:15 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [1188]
			"19:54:16 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1189]
			"19:54:16 - OnMLDBReceived", -- [1190]
			"19:54:16 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1191]
			"19:54:16 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1192]
			"19:54:16 - false = (IsCouncil) (Niseko-Stormscale)", -- [1193]
			"19:54:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [1194]
			"19:54:54 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1195]
			"19:54:54 - OnMLDBReceived", -- [1196]
			"19:54:54 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1197]
			"19:55:00 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1198]
			"19:55:00 - false = (IsCouncil) (Niseko-Stormscale)", -- [1199]
			"19:55:13 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (216286) (1) (0)", -- [1200]
			"19:55:14 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1201]
			"19:55:14 - GetML()", -- [1202]
			"19:55:19 - Comm received:^1^SStartHandleLoot^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1203]
			"19:55:45 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [1204]
			"19:55:58 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1205]
			"19:55:58 - OnMLDBReceived", -- [1206]
			"19:55:58 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1207]
			"19:55:58 - false = (IsCouncil) (Niseko-Stormscale)", -- [1208]
			"19:58:06 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1209]
			"19:58:06 - OnMLDBReceived", -- [1210]
			"19:58:06 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1211]
			"19:58:11 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1212]
			"19:58:11 - false = (IsCouncil) (Niseko-Stormscale)", -- [1213]
			"19:58:52 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Valdurachi) (distri:) (GUILD)", -- [1214]
			"20:00:04 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [1215]
			"20:00:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1216]
			"20:00:20 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1217]
			"20:00:20 - OnMLDBReceived", -- [1218]
			"20:00:20 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1219]
			"20:00:20 - false = (IsCouncil) (Niseko-Stormscale)", -- [1220]
			"20:00:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [1221]
			"20:03:29 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1222]
			"20:03:29 - UpdatePlayersData()", -- [1223]
			"20:05:14 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [1224]
			"20:05:27 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1225]
			"20:05:27 - OnMLDBReceived", -- [1226]
			"20:05:27 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1227]
			"20:05:27 - false = (IsCouncil) (Niseko-Stormscale)", -- [1228]
			"20:10:55 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1229]
			"20:11:36 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [1230]
			"20:11:49 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1231]
			"20:11:49 - OnMLDBReceived", -- [1232]
			"20:11:49 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1233]
			"20:11:49 - false = (IsCouncil) (Niseko-Stormscale)", -- [1234]
			"20:12:07 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1235]
			"20:12:07 - UpdatePlayersData()", -- [1236]
			"20:16:33 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1237]
			"20:17:27 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1238]
			"20:17:27 - UpdatePlayersData()", -- [1239]
			"20:21:38 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1240]
			"20:22:18 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1241]
			"20:22:18 - UpdatePlayersData()", -- [1242]
			"20:28:32 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Mystch) (distri:) (GUILD)", -- [1243]
			"20:28:45 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1244]
			"20:29:35 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1245]
			"20:29:35 - UpdatePlayersData()", -- [1246]
			"20:31:55 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1247]
			"20:32:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1248]
			"20:32:54 - UpdatePlayersData()", -- [1249]
			"20:36:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyorkbourne) (distri:) (GUILD)", -- [1250]
			"20:36:52 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1251]
			"20:37:43 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1252]
			"20:37:43 - UpdatePlayersData()", -- [1253]
			"20:41:58 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1254]
			"20:42:44 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1255]
			"20:42:44 - UpdatePlayersData()", -- [1256]
			"20:51:05 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1257]
			"20:51:10 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1258]
			"20:53:10 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1259]
			"20:53:10 - UpdatePlayersData()", -- [1260]
			"20:55:49 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1261]
			"20:57:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1262]
			"20:57:46 - UpdatePlayersData()", -- [1263]
			"21:04:44 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1264]
			"02/17/19", -- [1265]
			"21:05:29 - Logged In", -- [1266]
			"21:05:29 - ML initialized!", -- [1267]
			"21:05:29 - TradeUI enabled", -- [1268]
			"21:05:33 - Niseko-Stormscale (2.10.0) (nil)", -- [1269]
			"21:05:33 - ActivateSkin (bfa)", -- [1270]
			"21:05:35 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1271]
			"21:05:35 - GetML()", -- [1272]
			"21:05:35 - UpdatePlayersData()", -- [1273]
			"21:05:36 - GetPlayersGuildRank()", -- [1274]
			"21:05:36 - GetPlayersGuildRank()", -- [1275]
			"21:05:36 - Event: (PARTY_LEADER_CHANGED)", -- [1276]
			"21:05:36 - GetML()", -- [1277]
			"21:05:36 - Unknown ML", -- [1278]
			"21:05:37 - GetPlayersGuildRank()", -- [1279]
			"21:05:37 - Found Guild Rank: Raider", -- [1280]
			"21:05:38 - GetML()", -- [1281]
			"21:05:38 - Resetting council as we have a new ML!", -- [1282]
			"21:05:38 - MasterLooter =  (Tigerozy-Stormscale)", -- [1283]
			"21:05:38 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1284]
			"21:05:52 - Timer MLdb_check passed", -- [1285]
			"21:05:53 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1286]
			"21:05:53 - OnMLDBReceived", -- [1287]
			"21:05:53 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1288]
			"21:05:53 - false = (IsCouncil) (Niseko-Stormscale)", -- [1289]
			"21:09:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1290]
			"21:09:24 - UpdatePlayersData()", -- [1291]
			"21:15:27 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1292]
			"21:16:35 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1293]
			"21:16:35 - UpdatePlayersData()", -- [1294]
			"21:21:03 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1295]
			"21:21:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [1296]
			"21:21:54 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [1297]
			"21:22:00 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1298]
			"21:22:00 - UpdatePlayersData()", -- [1299]
			"21:28:47 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1300]
			"21:29:26 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulgara) (distri:) (GUILD)", -- [1301]
			"21:29:26 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1302]
			"21:29:26 - OnMLDBReceived", -- [1303]
			"21:29:26 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1304]
			"21:29:26 - false = (IsCouncil) (Niseko-Stormscale)", -- [1305]
			"21:29:58 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1306]
			"21:29:58 - UpdatePlayersData()", -- [1307]
			"21:34:27 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1308]
			"21:35:22 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1309]
			"21:35:22 - UpdatePlayersData()", -- [1310]
			"21:43:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1311]
			"21:45:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1312]
			"21:45:24 - UpdatePlayersData()", -- [1313]
			"21:51:40 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1314]
			"21:52:04 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1315]
			"21:52:41 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [1316]
			"21:52:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [1317]
			"21:52:43 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1318]
			"21:52:43 - OnMLDBReceived", -- [1319]
			"21:52:43 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1320]
			"21:52:43 - false = (IsCouncil) (Niseko-Stormscale)", -- [1321]
			"21:53:45 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1322]
			"21:53:45 - UpdatePlayersData()", -- [1323]
			"21:55:36 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [1324]
			"21:55:52 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1325]
			"21:55:52 - OnMLDBReceived", -- [1326]
			"21:55:52 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1327]
			"21:55:52 - false = (IsCouncil) (Niseko-Stormscale)", -- [1328]
			"21:59:58 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1329]
			"22:01:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [1330]
			"22:01:32 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1331]
			"22:01:32 - OnMLDBReceived", -- [1332]
			"22:01:32 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1333]
			"22:01:32 - false = (IsCouncil) (Niseko-Stormscale)", -- [1334]
			"22:01:43 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1335]
			"22:01:43 - UpdatePlayersData()", -- [1336]
			"22:06:07 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1337]
			"02/17/19", -- [1338]
			"22:06:23 - Logged In", -- [1339]
			"22:06:23 - ML initialized!", -- [1340]
			"22:06:23 - TradeUI enabled", -- [1341]
			"22:06:25 - Niseko-Stormscale (2.10.0) (nil)", -- [1342]
			"22:06:25 - ActivateSkin (bfa)", -- [1343]
			"22:06:28 - Event: (PLAYER_ENTERING_WORLD) (false) (true)", -- [1344]
			"22:06:28 - GetML()", -- [1345]
			"22:06:28 - Resetting council as we have a new ML!", -- [1346]
			"22:06:28 - MasterLooter =  (Tigerozy-Stormscale)", -- [1347]
			"22:06:28 - Player relog...", -- [1348]
			"22:06:28 - UpdatePlayersData()", -- [1349]
			"22:06:29 - GetPlayersGuildRank()", -- [1350]
			"22:06:29 - Found Guild Rank: Raider", -- [1351]
			"22:06:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1352]
			"22:06:30 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [1353]
			"22:06:30 - OnMLDBReceived", -- [1354]
			"22:06:30 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [1355]
			"22:06:30 - false = (IsCouncil) (Niseko-Stormscale)", -- [1356]
			"22:06:31 - Timer MLdb_check passed", -- [1357]
			"22:06:32 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [1358]
			"22:07:13 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1359]
			"22:07:13 - UpdatePlayersData()", -- [1360]
			"22:11:50 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1361]
			"22:12:50 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1362]
			"22:12:50 - UpdatePlayersData()", -- [1363]
			"22:21:11 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1364]
			"22:23:36 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1365]
			"22:23:36 - UpdatePlayersData()", -- [1366]
			"22:27:47 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1367]
			"22:28:57 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1368]
			"22:28:57 - UpdatePlayersData()", -- [1369]
			"22:37:03 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1370]
			"02/17/19", -- [1371]
			"22:38:19 - Logged In", -- [1372]
			"22:38:19 - ML initialized!", -- [1373]
			"22:38:19 - TradeUI enabled", -- [1374]
			"22:38:22 - Niseko-Stormscale (2.10.0) (nil)", -- [1375]
			"22:38:22 - ActivateSkin (bfa)", -- [1376]
			"22:38:24 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1377]
			"22:38:24 - GetML()", -- [1378]
			"22:38:24 - UpdatePlayersData()", -- [1379]
			"22:38:25 - Event: (PARTY_LEADER_CHANGED)", -- [1380]
			"22:38:25 - GetML()", -- [1381]
			"22:38:25 - Unknown ML", -- [1382]
			"22:38:27 - GetPlayersGuildRank()", -- [1383]
			"22:38:27 - Found Guild Rank: Raider", -- [1384]
			"22:38:27 - GetML()", -- [1385]
			"22:38:27 - Resetting council as we have a new ML!", -- [1386]
			"22:38:27 - MasterLooter =  (Tigerozy-Stormscale)", -- [1387]
			"22:38:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1388]
			"22:38:42 - Timer MLdb_check passed", -- [1389]
			"22:38:42 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1390]
			"22:38:42 - OnMLDBReceived", -- [1391]
			"22:38:42 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1392]
			"22:38:42 - false = (IsCouncil) (Niseko-Stormscale)", -- [1393]
			"22:41:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1394]
			"22:41:56 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1395]
			"22:43:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [1396]
			"22:43:34 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1397]
			"22:43:34 - OnMLDBReceived", -- [1398]
			"22:43:34 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1399]
			"22:43:34 - false = (IsCouncil) (Niseko-Stormscale)", -- [1400]
			"22:44:04 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1401]
			"22:44:28 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1402]
			"22:44:28 - UpdatePlayersData()", -- [1403]
			"22:52:32 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1404]
			"22:54:56 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1405]
			"22:54:56 - UpdatePlayersData()", -- [1406]
			"22:56:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1407]
			"22:57:21 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1408]
			"22:57:21 - UpdatePlayersData()", -- [1409]
			"22:58:56 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1410]
			"22:59:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1411]
			"22:59:54 - UpdatePlayersData()", -- [1412]
			"23:03:18 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1413]
			"23:04:39 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1414]
			"23:04:39 - UpdatePlayersData()", -- [1415]
			"23:09:26 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Valdurachi) (distri:) (GUILD)", -- [1416]
			"23:12:28 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1417]
			"23:13:40 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Valdurachi) (distri:) (GUILD)", -- [1418]
			"23:14:13 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1419]
			"23:14:13 - UpdatePlayersData()", -- [1420]
			"23:22:39 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Valdurachi) (distri:) (GUILD)", -- [1421]
			"23:22:55 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1422]
			"23:25:45 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1423]
			"23:25:45 - UpdatePlayersData()", -- [1424]
			"23:28:13 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1425]
			"23:29:10 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1426]
			"23:29:10 - UpdatePlayersData()", -- [1427]
			"23:37:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1428]
			"23:39:34 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1429]
			"23:39:34 - UpdatePlayersData()", -- [1430]
			"23:43:46 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1431]
			"23:44:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1432]
			"23:44:46 - UpdatePlayersData()", -- [1433]
			"23:50:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1434]
			"23:51:32 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1435]
			"23:51:32 - UpdatePlayersData()", -- [1436]
			"23:57:43 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1437]
			"23:58:51 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1438]
			"23:58:51 - UpdatePlayersData()", -- [1439]
			"00:03:43 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1440]
			"00:04:15 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1441]
			"00:04:15 - GetML()", -- [1442]
			"00:06:07 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1443]
			"00:06:07 - OnMLDBReceived", -- [1444]
			"00:06:07 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1445]
			"00:06:17 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1446]
			"00:06:17 - OnMLDBReceived", -- [1447]
			"00:06:17 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1448]
			"00:06:32 - Event: (GROUP_LEFT) (1) (Party-2073-00001CEE58BD)", -- [1449]
			"00:06:32 - GetML()", -- [1450]
			"00:10:03 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulgara) (distri:) (GUILD)", -- [1451]
			"00:10:33 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Húddz) (distri:) (GUILD)", -- [1452]
			"00:11:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulshifts) (distri:) (GUILD)", -- [1453]
			"00:13:54 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulshifts) (distri:) (GUILD)", -- [1454]
			"00:14:01 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Shaggedurdad) (distri:) (GUILD)", -- [1455]
			"00:14:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulshifts) (distri:) (GUILD)", -- [1456]
			"02/18/19", -- [1457]
			"00:24:29 - Logged In", -- [1458]
			"00:24:29 - ML initialized!", -- [1459]
			"00:24:29 - TradeUI enabled", -- [1460]
			"00:24:35 - Niseko-Stormscale (2.10.0) (nil)", -- [1461]
			"00:24:35 - ActivateSkin (bfa)", -- [1462]
			"00:24:37 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1463]
			"00:24:37 - GetML()", -- [1464]
			"00:24:37 - UpdatePlayersData()", -- [1465]
			"00:24:39 - GetPlayersGuildRank()", -- [1466]
			"00:24:39 - Found Guild Rank: Raider", -- [1467]
			"00:24:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1468]
			"00:25:11 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1469]
			"00:25:11 - GetML()", -- [1470]
			"00:25:19 - Event: (PARTY_LEADER_CHANGED)", -- [1471]
			"00:25:19 - GetML()", -- [1472]
			"00:25:19 - Resetting council as we have a new ML!", -- [1473]
			"00:25:19 - MasterLooter =  (Niseko-Stormscale)", -- [1474]
			"00:25:19 - GetCouncilInGroup (Niseko-Stormscale)", -- [1475]
			"00:25:19 - ML:NewML (Niseko-Stormscale)", -- [1476]
			"00:25:19 - UpdateMLdb", -- [1477]
			"00:25:19 - OnMLDBReceived", -- [1478]
			"00:25:19 - UpdateGroup (true)", -- [1479]
			"00:25:19 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [1480]
			"00:25:19 - GetCouncilInGroup (Niseko-Stormscale)", -- [1481]
			"00:25:19 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1482]
			"00:25:19 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1483]
			"00:25:19 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1484]
			"00:25:19 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1485]
			"00:25:19 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1486]
			"00:25:19 - true = (IsCouncil) (Niseko-Stormscale)", -- [1487]
			"00:25:19 - GetLootDBStatistics()", -- [1488]
			"00:25:19 - GetGuildRankNum()", -- [1489]
			"00:25:19 - RCVotingFrame (enabled)", -- [1490]
			"00:25:19 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (414.6875) (264)", -- [1491]
			"00:25:19 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SHEALER^N4^SRaider^N6^N0^N7^N414.6875^N8^N264^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [1492]
			"00:25:29 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1493]
			"00:25:29 - true = (IsCouncil) (Niseko-Stormscale)", -- [1494]
			"00:25:29 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1495]
			"00:25:34 - Timer MLdb_check passed", -- [1496]
			"00:25:35 - VotingFrame:Update() without lootTable!!", -- [1497]
			"00:25:43 - UpdateGroup (table: 0000026DAC4AEB50)", -- [1498]
			"00:25:43 - ML:AddCandidate (Spazpriest-Stormscale) (PRIEST) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [1499]
			"00:25:43 - GetCouncilInGroup (Niseko-Stormscale)", -- [1500]
			"00:25:43 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1501]
			"00:25:43 - Comm received:^1^Scandidates^T^N1^T^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1502]
			"00:25:44 - ML:AddCandidate (Spazpriest-Stormscale) (PRIEST) (HEALER) (Guild Master) (nil) (0) (412.125) (256)", -- [1503]
			"00:25:44 - Comm received:^1^SplayerInfo^T^N1^SSpazpriest-Stormscale^N2^SPRIEST^N3^SHEALER^N4^SGuild~`Master^N6^N0^N7^N412.125^N8^N256^t^^ (from:) (Spazpriest) (distri:) (WHISPER)", -- [1504]
			"00:25:48 - Comm received:^1^Scouncil_request^T^t^^ (from:) (Spazpriest) (distri:) (WHISPER)", -- [1505]
			"00:25:49 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1506]
			"00:25:49 - true = (IsCouncil) (Niseko-Stormscale)", -- [1507]
			"00:26:07 - Event: (PARTY_LEADER_CHANGED)", -- [1508]
			"00:26:07 - GetML()", -- [1509]
			"00:26:07 - Stop handling loot", -- [1510]
			"00:26:07 - ML Disabled", -- [1511]
			"00:26:07 - Resetting council as we have a new ML!", -- [1512]
			"00:26:07 - MasterLooter =  (Spazpriest-Stormscale)", -- [1513]
			"00:26:07 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Niseko) (distri:) (RAID)", -- [1514]
			"00:26:07 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1515]
			"00:26:07 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1516]
			"00:26:07 - OnMLDBReceived", -- [1517]
			"00:26:07 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1518]
			"00:26:07 - OnMLDBReceived", -- [1519]
			"00:26:07 - Comm received:^1^Scandidates^T^N1^T^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1520]
			"00:26:07 - Comm received:^1^Scouncil^T^N1^T^N1^SSpazpriest-Stormscale^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1521]
			"00:26:07 - false = (IsCouncil) (Niseko-Stormscale)", -- [1522]
			"00:26:07 - Hide VotingFrame", -- [1523]
			"00:26:13 - Event: (PARTY_LEADER_CHANGED)", -- [1524]
			"00:26:13 - GetML()", -- [1525]
			"00:26:15 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1526]
			"00:26:15 - GetML()", -- [1527]
			"00:26:16 - Comm received:^1^SStartHandleLoot^T^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1528]
			"00:26:17 - Comm received:^1^Scouncil^T^N1^T^N1^SSpazpriest-Stormscale^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1529]
			"00:26:17 - Comm received:^1^Scandidates^T^N1^T^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1530]
			"00:26:22 - Timer MLdb_check passed", -- [1531]
			"00:26:33 - Event: (GROUP_LEFT) (2) (Party-1461-00003D4257EC)", -- [1532]
			"00:26:33 - GetML()", -- [1533]
			"00:26:33 - Resetting council as we have a new ML!", -- [1534]
			"00:26:33 - MasterLooter =  (Spazpriest-Stormscale)", -- [1535]
			"00:26:37 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1536]
			"00:26:37 - GetML()", -- [1537]
			"00:26:48 - Timer MLdb_check passed", -- [1538]
			"00:26:48 - Comm received:^1^Scouncil^T^N1^T^N1^SSpazpriest-Stormscale^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1539]
			"00:26:48 - false = (IsCouncil) (Niseko-Stormscale)", -- [1540]
			"00:27:54 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1541]
			"00:27:54 - GetML()", -- [1542]
			"00:27:55 - Event: (PARTY_LEADER_CHANGED)", -- [1543]
			"00:27:55 - GetML()", -- [1544]
			"00:28:38 - Event: (GROUP_LEFT) (2) (Party-1461-00003D425968)", -- [1545]
			"00:28:38 - GetML()", -- [1546]
			"00:28:38 - Resetting council as we have a new ML!", -- [1547]
			"00:28:38 - MasterLooter =  (Spazpriest-Stormscale)", -- [1548]
			"00:28:43 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1549]
			"00:28:43 - GetML()", -- [1550]
			"00:28:53 - Timer MLdb_check passed", -- [1551]
			"00:28:54 - Comm received:^1^Scouncil^T^N1^T^N1^SSpazpriest-Stormscale^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [1552]
			"00:28:54 - false = (IsCouncil) (Niseko-Stormscale)", -- [1553]
			"00:29:04 - Event: (GROUP_LEFT) (1) (Party-2073-00001CEF5308)", -- [1554]
			"00:29:04 - GetML()", -- [1555]
			"02/18/19", -- [1556]
			"00:53:39 - Logged In", -- [1557]
			"00:53:39 - ML initialized!", -- [1558]
			"00:53:39 - TradeUI enabled", -- [1559]
			"00:53:45 - Niseko-Stormscale (2.10.0) (nil)", -- [1560]
			"00:53:45 - ActivateSkin (bfa)", -- [1561]
			"00:53:47 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1562]
			"00:53:47 - GetML()", -- [1563]
			"00:53:47 - UpdatePlayersData()", -- [1564]
			"00:53:49 - GetPlayersGuildRank()", -- [1565]
			"00:53:49 - Found Guild Rank: Raider", -- [1566]
			"00:53:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1567]
			"00:57:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xuro) (distri:) (GUILD)", -- [1568]
			"01:03:09 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1569]
			"01:03:09 - GetML()", -- [1570]
			"01:03:37 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1571]
			"01:03:37 - GetML()", -- [1572]
			"01:04:01 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1573]
			"01:04:01 - GetML()", -- [1574]
			"02/18/19", -- [1575]
			"01:29:05 - Logged In", -- [1576]
			"01:29:05 - ML initialized!", -- [1577]
			"01:29:05 - TradeUI enabled", -- [1578]
			"01:29:11 - Niseko-Stormscale (2.10.0) (nil)", -- [1579]
			"01:29:11 - ActivateSkin (bfa)", -- [1580]
			"01:29:13 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1581]
			"01:29:13 - GetML()", -- [1582]
			"01:29:13 - UpdatePlayersData()", -- [1583]
			"01:29:15 - GetPlayersGuildRank()", -- [1584]
			"01:29:15 - Found Guild Rank: Raider", -- [1585]
			"01:29:16 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1586]
			"02/18/19", -- [1587]
			"06:56:44 - Logged In", -- [1588]
			"06:56:44 - ML initialized!", -- [1589]
			"06:56:44 - TradeUI enabled", -- [1590]
			"06:56:53 - Niseko-Stormscale (2.10.0) (nil)", -- [1591]
			"06:56:53 - ActivateSkin (bfa)", -- [1592]
			"06:56:55 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1593]
			"06:56:55 - GetML()", -- [1594]
			"06:56:55 - UpdatePlayersData()", -- [1595]
			"06:56:57 - GetPlayersGuildRank()", -- [1596]
			"06:56:57 - Found Guild Rank: Raider", -- [1597]
			"06:56:57 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1598]
			"02/18/19", -- [1599]
			"18:03:40 - Logged In", -- [1600]
			"18:03:40 - ML initialized!", -- [1601]
			"18:03:40 - TradeUI enabled", -- [1602]
			"18:03:50 - Niseko-Stormscale (2.10.0) (nil)", -- [1603]
			"18:03:50 - ActivateSkin (bfa)", -- [1604]
			"18:03:52 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1605]
			"18:03:52 - GetML()", -- [1606]
			"18:03:52 - UpdatePlayersData()", -- [1607]
			"18:03:54 - GetPlayersGuildRank()", -- [1608]
			"18:03:54 - Found Guild Rank: Raider", -- [1609]
			"18:03:55 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1610]
			"18:06:03 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [1611]
			"18:06:25 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1612]
			"18:11:16 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllotwarr) (distri:) (GUILD)", -- [1613]
			"18:14:20 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllotdruid) (distri:) (GUILD)", -- [1614]
			"18:14:53 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reecemankey) (distri:) (GUILD)", -- [1615]
			"18:16:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpala) (distri:) (GUILD)", -- [1616]
			"18:16:55 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1617]
			"18:21:49 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [1618]
			"18:23:13 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyboy) (distri:) (GUILD)", -- [1619]
			"02/18/19", -- [1620]
			"19:37:21 - Logged In", -- [1621]
			"19:37:21 - ML initialized!", -- [1622]
			"19:37:21 - TradeUI enabled", -- [1623]
			"19:37:29 - Niseko-Stormscale (2.10.0) (nil)", -- [1624]
			"19:37:29 - ActivateSkin (bfa)", -- [1625]
			"19:37:31 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1626]
			"19:37:31 - GetML()", -- [1627]
			"19:37:31 - UpdatePlayersData()", -- [1628]
			"19:37:33 - GetPlayersGuildRank()", -- [1629]
			"19:37:33 - Found Guild Rank: Raider", -- [1630]
			"19:37:33 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1631]
			"19:39:24 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Boomtastíc) (distri:) (GUILD)", -- [1632]
			"19:39:27 - Event: (PARTY_LEADER_CHANGED)", -- [1633]
			"19:39:27 - GetML()", -- [1634]
			"19:39:27 - Resetting council as we have a new ML!", -- [1635]
			"19:39:27 - MasterLooter =  (Niseko-Stormscale)", -- [1636]
			"19:39:27 - GetCouncilInGroup (Niseko-Stormscale)", -- [1637]
			"19:39:27 - ML:NewML (Niseko-Stormscale)", -- [1638]
			"19:39:27 - UpdateMLdb", -- [1639]
			"19:39:27 - OnMLDBReceived", -- [1640]
			"19:39:27 - UpdateGroup (true)", -- [1641]
			"19:39:27 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [1642]
			"19:39:27 - GetCouncilInGroup (Niseko-Stormscale)", -- [1643]
			"19:39:27 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1644]
			"19:39:27 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1645]
			"19:39:27 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1646]
			"19:39:27 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1647]
			"19:39:27 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1648]
			"19:39:27 - true = (IsCouncil) (Niseko-Stormscale)", -- [1649]
			"19:39:27 - GetLootDBStatistics()", -- [1650]
			"19:39:27 - GetGuildRankNum()", -- [1651]
			"19:39:27 - RCVotingFrame (enabled)", -- [1652]
			"19:39:27 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (411.25) (264)", -- [1653]
			"19:39:27 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SHEALER^N4^SRaider^N6^N0^N7^N411.25^N8^N264^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [1654]
			"19:39:28 - VotingFrame:Update() without lootTable!!", -- [1655]
			"19:39:37 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1656]
			"19:39:37 - true = (IsCouncil) (Niseko-Stormscale)", -- [1657]
			"19:39:37 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1658]
			"19:39:37 - UpdateGroup (table: 0000025B496EBDD0)", -- [1659]
			"19:39:37 - ML:AddCandidate (Renstorp-Draenor) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [1660]
			"19:39:37 - GetCouncilInGroup (Niseko-Stormscale)", -- [1661]
			"19:39:37 - Comm received:^1^Sxrealm^T^N1^SRenstorp-Draenor^N2^SplayerInfoRequest^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1662]
			"19:39:37 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1663]
			"19:39:37 - Comm received:^1^Scandidates^T^N1^T^SRenstorp-Draenor^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [1664]
			"19:39:41 - ML:AddCandidate (Renstorp-Draenor) (SHAMAN) (HEALER) (Trial) (nil) (0) (407.25) (264)", -- [1665]
			"19:39:41 - Comm received:^1^Sxrealm^T^N1^SNiseko-Stormscale^N2^SplayerInfo^N3^SRenstorp-Draenor^N4^SSHAMAN^N5^SHEALER^N6^STrial^N8^N0^N9^N407.25^N10^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (PARTY)", -- [1666]
			"19:39:41 - Comm received:^1^SplayerInfo^T^N1^SRenstorp-Draenor^N2^SSHAMAN^N3^SHEALER^N4^STrial^N6^N0^N7^N407.25^N8^N264^t^^ (from:) (Renstorp-Draenor) (distri:) (WHISPER)", -- [1667]
			"19:39:42 - Timer MLdb_check passed", -- [1668]
			"19:39:47 - UpdateGroup (table: 0000025B496EBDD0)", -- [1669]
			"19:39:57 - UpdateGroup (table: 0000025B496EBDD0)", -- [1670]
			"19:41:05 - VotingFrame:Update() without lootTable!!", -- [1671]
			"19:41:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1672]
			"19:42:12 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [1673]
			"19:44:14 - Event: (GROUP_LEFT) (1) (Party-2073-00001CF171DA)", -- [1674]
			"19:44:14 - GetML()", -- [1675]
			"19:44:14 - Stop handling loot", -- [1676]
			"19:44:14 - ML Disabled", -- [1677]
			"19:44:14 - Comm received:^1^SStopHandleLoot^T^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [1678]
			"19:45:08 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [1679]
			"19:45:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulgara) (distri:) (GUILD)", -- [1680]
			"19:46:11 - Event: (PARTY_LEADER_CHANGED)", -- [1681]
			"19:46:11 - GetML()", -- [1682]
			"19:46:11 - Resetting council as we have a new ML!", -- [1683]
			"19:46:11 - MasterLooter =  (Tigerozy-Stormscale)", -- [1684]
			"19:46:12 - VotingFrame:Update() without lootTable!!", -- [1685]
			"19:46:13 - VotingFrame:Update() without lootTable!!", -- [1686]
			"19:46:14 - VotingFrame:Update() without lootTable!!", -- [1687]
			"19:46:15 - VotingFrame:Update() without lootTable!!", -- [1688]
			"19:46:18 - VotingFrame:Update() without lootTable!!", -- [1689]
			"19:46:21 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [1690]
			"19:46:21 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1691]
			"19:46:21 - OnMLDBReceived", -- [1692]
			"19:46:21 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1693]
			"19:46:23 - VotingFrame:Update() without lootTable!!", -- [1694]
			"19:46:25 - VotingFrame:Update() without lootTable!!", -- [1695]
			"19:46:26 - Timer MLdb_check passed", -- [1696]
			"19:46:27 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1697]
			"19:46:27 - false = (IsCouncil) (Niseko-Stormscale)", -- [1698]
			"19:46:27 - Hide VotingFrame", -- [1699]
			"19:46:28 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1700]
			"19:46:28 - false = (IsCouncil) (Niseko-Stormscale)", -- [1701]
			"19:46:34 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (130406) (1) (0)", -- [1702]
			"19:46:34 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1703]
			"19:46:34 - OnMLDBReceived", -- [1704]
			"19:46:34 - Comm received:^1^Scandidates^T^N1^T^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1705]
			"19:46:34 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1706]
			"19:46:34 - GetML()", -- [1707]
			"19:46:44 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1708]
			"19:46:44 - false = (IsCouncil) (Niseko-Stormscale)", -- [1709]
			"19:47:14 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [1710]
			"19:47:29 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1711]
			"19:47:29 - OnMLDBReceived", -- [1712]
			"19:47:29 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1713]
			"19:47:29 - false = (IsCouncil) (Niseko-Stormscale)", -- [1714]
			"19:48:28 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1715]
			"19:48:28 - OnMLDBReceived", -- [1716]
			"19:48:28 - Comm received:^1^Scandidates^T^N1^T^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1717]
			"19:48:33 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1718]
			"19:48:33 - false = (IsCouncil) (Niseko-Stormscale)", -- [1719]
			"19:54:02 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [1720]
			"19:55:05 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1721]
			"19:55:05 - OnMLDBReceived", -- [1722]
			"19:55:05 - Comm received:^1^Scandidates^T^N1^T^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1723]
			"19:55:10 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1724]
			"19:55:10 - false = (IsCouncil) (Niseko-Stormscale)", -- [1725]
			"19:58:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [1726]
			"19:59:00 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1727]
			"19:59:00 - OnMLDBReceived", -- [1728]
			"19:59:00 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1729]
			"19:59:06 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1730]
			"19:59:06 - false = (IsCouncil) (Niseko-Stormscale)", -- [1731]
			"19:59:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [1732]
			"20:01:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1733]
			"20:01:46 - UpdatePlayersData()", -- [1734]
			"20:03:17 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1735]
			"20:04:32 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1736]
			"20:04:32 - UpdatePlayersData()", -- [1737]
			"20:10:09 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1738]
			"20:11:15 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1739]
			"20:11:15 - UpdatePlayersData()", -- [1740]
			"20:12:25 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Feisty) (distri:) (GUILD)", -- [1741]
			"20:15:32 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1742]
			"20:16:17 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1743]
			"20:16:17 - UpdatePlayersData()", -- [1744]
			"20:17:54 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1745]
			"20:18:51 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1746]
			"20:18:51 - UpdatePlayersData()", -- [1747]
			"20:21:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyorkbourne) (distri:) (GUILD)", -- [1748]
			"20:21:32 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1749]
			"20:22:48 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1750]
			"20:22:48 - UpdatePlayersData()", -- [1751]
			"20:28:17 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1752]
			"20:29:35 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1753]
			"20:29:35 - UpdatePlayersData()", -- [1754]
			"20:31:16 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1755]
			"20:32:09 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1756]
			"20:32:09 - UpdatePlayersData()", -- [1757]
			"20:36:17 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1758]
			"20:37:13 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1759]
			"20:37:13 - UpdatePlayersData()", -- [1760]
			"20:41:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [1761]
			"20:41:47 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [1762]
			"20:41:49 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1763]
			"20:42:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [1764]
			"20:42:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [1765]
			"20:42:36 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1766]
			"20:42:36 - UpdatePlayersData()", -- [1767]
			"20:47:01 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1768]
			"20:48:47 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1769]
			"20:48:47 - UpdatePlayersData()", -- [1770]
			"20:50:26 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1771]
			"20:51:20 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1772]
			"20:51:20 - UpdatePlayersData()", -- [1773]
			"20:56:14 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1774]
			"20:57:32 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1775]
			"20:57:32 - UpdatePlayersData()", -- [1776]
			"21:01:58 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1777]
			"21:03:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1778]
			"21:03:36 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1779]
			"21:03:36 - UpdatePlayersData()", -- [1780]
			"21:03:38 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1781]
			"21:03:38 - OnMLDBReceived", -- [1782]
			"21:03:38 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1783]
			"21:03:38 - false = (IsCouncil) (Niseko-Stormscale)", -- [1784]
			"21:07:58 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [1785]
			"21:11:41 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1786]
			"21:13:23 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1787]
			"21:13:23 - UpdatePlayersData()", -- [1788]
			"21:21:37 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1789]
			"21:23:21 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1790]
			"21:23:21 - UpdatePlayersData()", -- [1791]
			"21:23:21 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [1792]
			"21:29:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [1793]
			"21:31:22 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1794]
			"21:32:19 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1795]
			"21:32:19 - UpdatePlayersData()", -- [1796]
			"21:40:46 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1797]
			"21:43:33 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1798]
			"21:43:33 - UpdatePlayersData()", -- [1799]
			"21:49:04 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1800]
			"21:50:20 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1801]
			"21:50:20 - UpdatePlayersData()", -- [1802]
			"21:53:39 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1803]
			"21:54:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1804]
			"21:54:46 - UpdatePlayersData()", -- [1805]
			"21:58:29 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1806]
			"21:59:03 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Boomtastíc) (distri:) (GUILD)", -- [1807]
			"21:59:19 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1808]
			"21:59:19 - OnMLDBReceived", -- [1809]
			"21:59:19 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1810]
			"21:59:19 - false = (IsCouncil) (Niseko-Stormscale)", -- [1811]
			"21:59:29 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1812]
			"21:59:29 - UpdatePlayersData()", -- [1813]
			"22:07:56 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1814]
			"22:10:09 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1815]
			"22:10:09 - UpdatePlayersData()", -- [1816]
			"22:18:38 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1817]
			"22:20:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [1818]
			"22:21:12 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1819]
			"22:21:12 - OnMLDBReceived", -- [1820]
			"22:21:12 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1821]
			"22:21:12 - false = (IsCouncil) (Niseko-Stormscale)", -- [1822]
			"22:22:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [1823]
			"22:22:56 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1824]
			"22:22:56 - OnMLDBReceived", -- [1825]
			"22:22:56 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1826]
			"22:22:56 - false = (IsCouncil) (Niseko-Stormscale)", -- [1827]
			"22:29:58 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1828]
			"22:30:13 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1829]
			"22:30:13 - OnMLDBReceived", -- [1830]
			"22:30:13 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1831]
			"22:30:13 - false = (IsCouncil) (Niseko-Stormscale)", -- [1832]
			"22:30:20 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1833]
			"22:30:20 - UpdatePlayersData()", -- [1834]
			"22:31:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyorkbourne) (distri:) (GUILD)", -- [1835]
			"22:32:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1836]
			"22:35:23 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1837]
			"22:36:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1838]
			"22:36:46 - UpdatePlayersData()", -- [1839]
			"22:41:57 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seorek) (distri:) (GUILD)", -- [1840]
			"22:43:08 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1841]
			"22:47:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [1842]
			"22:47:18 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1843]
			"22:47:18 - OnMLDBReceived", -- [1844]
			"22:47:18 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1845]
			"22:47:18 - false = (IsCouncil) (Niseko-Stormscale)", -- [1846]
			"22:47:48 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1847]
			"22:47:48 - UpdatePlayersData()", -- [1848]
			"22:50:47 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1849]
			"22:51:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [1850]
			"22:51:55 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1851]
			"22:51:55 - UpdatePlayersData()", -- [1852]
			"22:58:28 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1853]
			"22:59:37 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1854]
			"22:59:37 - UpdatePlayersData()", -- [1855]
			"23:02:41 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1856]
			"23:04:03 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1857]
			"23:04:03 - UpdatePlayersData()", -- [1858]
			"23:05:14 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1859]
			"23:07:11 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [1860]
			"23:07:24 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1861]
			"23:07:24 - OnMLDBReceived", -- [1862]
			"23:07:24 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1863]
			"23:07:24 - false = (IsCouncil) (Niseko-Stormscale)", -- [1864]
			"23:07:57 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1865]
			"23:07:57 - UpdatePlayersData()", -- [1866]
			"23:16:30 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1867]
			"23:18:23 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1868]
			"23:18:23 - UpdatePlayersData()", -- [1869]
			"23:25:08 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1870]
			"23:25:08 - GetML()", -- [1871]
			"23:25:26 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1872]
			"23:25:26 - GetML()", -- [1873]
			"23:25:46 - Event: (PARTY_LEADER_CHANGED)", -- [1874]
			"23:25:46 - GetML()", -- [1875]
			"23:25:49 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1876]
			"23:25:49 - GetML()", -- [1877]
			"23:25:56 - Event: (GROUP_LEFT) (2) (Party-1461-00003D49A082)", -- [1878]
			"23:25:56 - GetML()", -- [1879]
			"23:25:56 - Resetting council as we have a new ML!", -- [1880]
			"23:25:56 - MasterLooter =  (Tigerozy-Stormscale)", -- [1881]
			"23:26:01 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1882]
			"23:26:01 - GetML()", -- [1883]
			"23:26:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [1884]
			"23:26:11 - Timer MLdb_check passed", -- [1885]
			"23:26:11 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1886]
			"23:26:11 - false = (IsCouncil) (Niseko-Stormscale)", -- [1887]
			"23:26:23 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1888]
			"23:26:23 - OnMLDBReceived", -- [1889]
			"23:26:28 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (117211) (1) (0)", -- [1890]
			"23:26:28 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1891]
			"23:26:28 - GetML()", -- [1892]
			"23:26:32 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1893]
			"23:26:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1894]
			"23:26:46 - UpdatePlayersData()", -- [1895]
			"23:35:30 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1896]
			"23:38:08 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1897]
			"23:38:08 - UpdatePlayersData()", -- [1898]
			"23:39:22 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1899]
			"23:40:18 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1900]
			"23:40:18 - UpdatePlayersData()", -- [1901]
			"23:45:30 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1902]
			"23:47:04 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1903]
			"23:47:04 - UpdatePlayersData()", -- [1904]
			"23:51:11 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1905]
			"23:52:14 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1906]
			"23:52:14 - UpdatePlayersData()", -- [1907]
			"23:56:52 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1908]
			"23:57:44 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1909]
			"23:57:44 - UpdatePlayersData()", -- [1910]
			"00:06:09 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1911]
			"00:08:03 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [1912]
			"00:08:03 - UpdatePlayersData()", -- [1913]
			"00:10:44 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [1914]
			"00:11:04 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1915]
			"00:11:04 - GetML()", -- [1916]
			"00:12:14 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllotdh) (distri:) (GUILD)", -- [1917]
			"00:12:26 - Event: (PARTY_LEADER_CHANGED)", -- [1918]
			"00:12:26 - GetML()", -- [1919]
			"00:12:26 - Resetting council as we have a new ML!", -- [1920]
			"00:12:26 - MasterLooter =  (Gingerprick-Stormscale)", -- [1921]
			"00:12:26 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1922]
			"00:12:26 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1923]
			"00:12:26 - OnMLDBReceived", -- [1924]
			"00:12:26 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1925]
			"00:12:26 - OnMLDBReceived", -- [1926]
			"00:12:26 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1927]
			"00:12:27 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1928]
			"00:12:27 - false = (IsCouncil) (Niseko-Stormscale)", -- [1929]
			"00:12:28 - Comm received:^1^SStartHandleLoot^T^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1930]
			"00:12:37 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1931]
			"00:12:37 - false = (IsCouncil) (Niseko-Stormscale)", -- [1932]
			"00:12:37 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1933]
			"00:12:41 - Timer MLdb_check passed", -- [1934]
			"00:13:20 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1935]
			"00:13:20 - OnMLDBReceived", -- [1936]
			"00:13:20 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1937]
			"00:13:31 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1938]
			"00:13:31 - OnMLDBReceived", -- [1939]
			"00:13:31 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1940]
			"00:13:41 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1941]
			"00:13:41 - OnMLDBReceived", -- [1942]
			"00:13:41 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1943]
			"00:13:51 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1944]
			"00:13:51 - OnMLDBReceived", -- [1945]
			"00:13:51 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [1946]
			"00:14:44 - Event: (GROUP_LEFT) (1) (Party-2073-00001CF16636)", -- [1947]
			"00:14:44 - GetML()", -- [1948]
			"02/19/19", -- [1949]
			"19:30:37 - Logged In", -- [1950]
			"19:30:37 - ML initialized!", -- [1951]
			"19:30:37 - TradeUI enabled", -- [1952]
			"19:30:45 - Niseko-Stormscale (2.10.0) (nil)", -- [1953]
			"19:30:45 - ActivateSkin (bfa)", -- [1954]
			"19:30:47 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [1955]
			"19:30:47 - GetML()", -- [1956]
			"19:30:47 - UpdatePlayersData()", -- [1957]
			"19:30:50 - GetPlayersGuildRank()", -- [1958]
			"19:30:50 - Found Guild Rank: Raider", -- [1959]
			"19:30:50 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1960]
			"19:31:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [1961]
			"02/19/19", -- [1962]
			"19:31:29 - Logged In", -- [1963]
			"19:31:29 - ML initialized!", -- [1964]
			"19:31:29 - TradeUI enabled", -- [1965]
			"19:31:30 - Niseko-Stormscale (2.10.0) (nil)", -- [1966]
			"19:31:30 - ActivateSkin (bfa)", -- [1967]
			"19:31:32 - Event: (PLAYER_ENTERING_WORLD) (false) (true)", -- [1968]
			"19:31:32 - GetML()", -- [1969]
			"19:31:32 - UpdatePlayersData()", -- [1970]
			"19:31:33 - GetPlayersGuildRank()", -- [1971]
			"19:31:33 - Found Guild Rank: Raider", -- [1972]
			"19:31:34 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [1973]
			"19:32:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Jíra) (distri:) (GUILD)", -- [1974]
			"19:33:53 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1975]
			"19:33:53 - GetML()", -- [1976]
			"19:34:13 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Deffrogue) (distri:) (GUILD)", -- [1977]
			"19:38:15 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [1978]
			"19:38:51 - TradeUI: Traded item(s) to (Notdan-Stormscale)", -- [1979]
			"19:38:51 - TradeUI:Show() (nil)", -- [1980]
			"19:38:51 - TradeUI:Hide()", -- [1981]
			"19:38:58 - Event: (PARTY_LEADER_CHANGED)", -- [1982]
			"19:38:58 - GetML()", -- [1983]
			"19:38:58 - Resetting council as we have a new ML!", -- [1984]
			"19:38:58 - MasterLooter =  (Tigerozy-Stormscale)", -- [1985]
			"19:39:08 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (44451) (1) (0)", -- [1986]
			"19:39:08 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [1987]
			"19:39:08 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1988]
			"19:39:08 - OnMLDBReceived", -- [1989]
			"19:39:08 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1990]
			"19:39:09 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [1991]
			"19:39:09 - GetML()", -- [1992]
			"19:39:13 - Timer MLdb_check passed", -- [1993]
			"19:39:13 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1994]
			"19:39:13 - false = (IsCouncil) (Niseko-Stormscale)", -- [1995]
			"19:39:14 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1996]
			"19:39:14 - false = (IsCouncil) (Niseko-Stormscale)", -- [1997]
			"19:39:14 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [1998]
			"19:39:14 - false = (IsCouncil) (Niseko-Stormscale)", -- [1999]
			"19:39:18 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2000]
			"19:39:18 - OnMLDBReceived", -- [2001]
			"19:39:18 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2002]
			"02/19/19", -- [2003]
			"19:41:07 - Logged In", -- [2004]
			"19:41:07 - ML initialized!", -- [2005]
			"19:41:07 - TradeUI enabled", -- [2006]
			"19:41:10 - Niseko-Stormscale (2.10.0) (nil)", -- [2007]
			"19:41:10 - ActivateSkin (bfa)", -- [2008]
			"19:41:12 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2009]
			"19:41:12 - GetML()", -- [2010]
			"19:41:12 - UpdatePlayersData()", -- [2011]
			"19:41:14 - Event: (PARTY_LEADER_CHANGED)", -- [2012]
			"19:41:14 - GetML()", -- [2013]
			"19:41:14 - Unknown ML", -- [2014]
			"19:41:15 - GetPlayersGuildRank()", -- [2015]
			"19:41:15 - Found Guild Rank: Raider", -- [2016]
			"19:41:15 - GetML()", -- [2017]
			"19:41:15 - Resetting council as we have a new ML!", -- [2018]
			"19:41:15 - MasterLooter =  (Tigerozy-Stormscale)", -- [2019]
			"19:41:15 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2020]
			"19:41:30 - Timer MLdb_check passed", -- [2021]
			"19:41:30 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2022]
			"19:41:30 - OnMLDBReceived", -- [2023]
			"19:41:30 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2024]
			"19:41:30 - false = (IsCouncil) (Niseko-Stormscale)", -- [2025]
			"19:42:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyorkbourne) (distri:) (GUILD)", -- [2026]
			"19:42:35 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [2027]
			"19:42:49 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2028]
			"19:42:49 - OnMLDBReceived", -- [2029]
			"19:42:49 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2030]
			"19:42:54 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2031]
			"19:42:54 - false = (IsCouncil) (Niseko-Stormscale)", -- [2032]
			"19:44:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [2033]
			"19:44:31 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2034]
			"19:44:31 - OnMLDBReceived", -- [2035]
			"19:44:31 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2036]
			"19:44:36 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2037]
			"19:44:36 - false = (IsCouncil) (Niseko-Stormscale)", -- [2038]
			"19:46:54 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2039]
			"19:46:54 - OnMLDBReceived", -- [2040]
			"19:46:54 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2041]
			"19:47:04 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2042]
			"19:47:04 - OnMLDBReceived", -- [2043]
			"19:47:04 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2044]
			"19:47:05 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2045]
			"19:47:05 - false = (IsCouncil) (Niseko-Stormscale)", -- [2046]
			"19:47:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [2047]
			"19:47:32 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2048]
			"19:47:56 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2049]
			"19:47:56 - OnMLDBReceived", -- [2050]
			"19:47:56 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2051]
			"19:48:01 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2052]
			"19:48:01 - false = (IsCouncil) (Niseko-Stormscale)", -- [2053]
			"19:48:07 - Comm received:^1^SStartHandleLoot^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2054]
			"19:49:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2055]
			"19:53:48 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2056]
			"19:53:48 - UpdatePlayersData()", -- [2057]
			"19:59:09 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2058]
			"20:00:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2059]
			"20:00:57 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2060]
			"20:00:57 - OnMLDBReceived", -- [2061]
			"20:00:57 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2062]
			"20:00:57 - false = (IsCouncil) (Niseko-Stormscale)", -- [2063]
			"20:01:07 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2064]
			"20:01:07 - UpdatePlayersData()", -- [2065]
			"20:07:10 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2066]
			"02/19/19", -- [2067]
			"20:08:12 - Logged In", -- [2068]
			"20:08:12 - ML initialized!", -- [2069]
			"20:08:12 - TradeUI enabled", -- [2070]
			"20:08:14 - Niseko-Stormscale (2.10.0) (nil)", -- [2071]
			"20:08:14 - ActivateSkin (bfa)", -- [2072]
			"20:08:17 - Event: (PLAYER_ENTERING_WORLD) (false) (true)", -- [2073]
			"20:08:17 - GetML()", -- [2074]
			"20:08:17 - Resetting council as we have a new ML!", -- [2075]
			"20:08:17 - MasterLooter =  (Tigerozy-Stormscale)", -- [2076]
			"20:08:17 - Player relog...", -- [2077]
			"20:08:17 - UpdatePlayersData()", -- [2078]
			"20:08:18 - GetPlayersGuildRank()", -- [2079]
			"20:08:18 - Found Guild Rank: Raider", -- [2080]
			"20:08:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2081]
			"20:08:19 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [2082]
			"20:08:19 - OnMLDBReceived", -- [2083]
			"20:08:19 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [2084]
			"20:08:19 - false = (IsCouncil) (Niseko-Stormscale)", -- [2085]
			"20:08:20 - Timer MLdb_check passed", -- [2086]
			"20:08:21 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [2087]
			"02/19/19", -- [2088]
			"20:09:05 - Logged In", -- [2089]
			"20:09:05 - ML initialized!", -- [2090]
			"20:09:05 - TradeUI enabled", -- [2091]
			"20:09:09 - Niseko-Stormscale (2.10.0) (nil)", -- [2092]
			"20:09:09 - ActivateSkin (bfa)", -- [2093]
			"20:09:11 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2094]
			"20:09:11 - GetML()", -- [2095]
			"20:09:11 - UpdatePlayersData()", -- [2096]
			"20:09:12 - Event: (PARTY_LEADER_CHANGED)", -- [2097]
			"20:09:12 - GetML()", -- [2098]
			"20:09:12 - Unknown ML", -- [2099]
			"20:09:12 - GetPlayersGuildRank()", -- [2100]
			"20:09:12 - Found Guild Rank: Raider", -- [2101]
			"20:09:12 - GetML()", -- [2102]
			"20:09:12 - Resetting council as we have a new ML!", -- [2103]
			"20:09:12 - MasterLooter =  (Tigerozy-Stormscale)", -- [2104]
			"20:09:12 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2105]
			"20:09:27 - Timer MLdb_check passed", -- [2106]
			"20:09:27 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2107]
			"20:09:27 - OnMLDBReceived", -- [2108]
			"20:09:27 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2109]
			"20:09:27 - false = (IsCouncil) (Niseko-Stormscale)", -- [2110]
			"20:09:29 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2111]
			"20:09:29 - UpdatePlayersData()", -- [2112]
			"20:15:26 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2113]
			"20:16:16 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2114]
			"20:16:16 - UpdatePlayersData()", -- [2115]
			"20:21:27 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2116]
			"20:22:50 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2117]
			"20:22:50 - UpdatePlayersData()", -- [2118]
			"20:27:07 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2119]
			"20:27:53 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2120]
			"20:27:53 - UpdatePlayersData()", -- [2121]
			"20:30:43 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2122]
			"20:32:19 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2123]
			"20:32:19 - UpdatePlayersData()", -- [2124]
			"20:33:40 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2125]
			"20:37:40 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [2126]
			"20:40:49 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2127]
			"20:43:08 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2128]
			"20:43:08 - UpdatePlayersData()", -- [2129]
			"20:51:13 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2130]
			"20:54:47 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2131]
			"20:54:47 - UpdatePlayersData()", -- [2132]
			"21:01:00 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2133]
			"21:01:49 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2134]
			"21:01:49 - UpdatePlayersData()", -- [2135]
			"21:09:20 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2136]
			"21:10:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seorek) (distri:) (GUILD)", -- [2137]
			"21:10:26 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2138]
			"21:10:26 - UpdatePlayersData()", -- [2139]
			"21:17:24 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2140]
			"21:18:38 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2141]
			"21:19:07 - TradeUI: Traded item(s) to (Jíra-Stormscale)", -- [2142]
			"21:19:07 - Storage:RemoveItem (|cff1eff00|Hitem:164397::::::::120:264::11::::|h[Dragonrider's Grips]|h|r)", -- [2143]
			"21:19:07 - Error - Couldn't remove item", -- [2144]
			"21:19:07 - TradeUI:Show() (nil)", -- [2145]
			"21:19:07 - TradeUI:Hide()", -- [2146]
			"21:20:08 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2147]
			"21:20:08 - UpdatePlayersData()", -- [2148]
			"21:25:25 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyelfbourne) (distri:) (GUILD)", -- [2149]
			"21:25:46 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2150]
			"21:26:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Mystch) (distri:) (GUILD)", -- [2151]
			"21:28:02 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2152]
			"21:28:02 - UpdatePlayersData()", -- [2153]
			"21:31:53 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2154]
			"21:32:56 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2155]
			"21:32:56 - UpdatePlayersData()", -- [2156]
			"21:40:37 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2157]
			"21:40:57 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2158]
			"21:40:57 - GetML()", -- [2159]
			"21:41:11 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2160]
			"21:41:11 - GetML()", -- [2161]
			"21:41:16 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2162]
			"21:41:17 - Event: (PARTY_LEADER_CHANGED)", -- [2163]
			"21:41:17 - GetML()", -- [2164]
			"21:41:20 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2165]
			"21:41:20 - GetML()", -- [2166]
			"21:41:28 - Event: (GROUP_LEFT) (2) (Party-1461-00003D5049C8)", -- [2167]
			"21:41:28 - GetML()", -- [2168]
			"21:41:28 - Resetting council as we have a new ML!", -- [2169]
			"21:41:28 - MasterLooter =  (Tigerozy-Stormscale)", -- [2170]
			"21:41:34 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2171]
			"21:41:34 - GetML()", -- [2172]
			"21:41:43 - Timer MLdb_check passed", -- [2173]
			"21:41:44 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2174]
			"21:41:44 - false = (IsCouncil) (Niseko-Stormscale)", -- [2175]
			"21:42:01 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (37078) (1) (0)", -- [2176]
			"21:42:02 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2177]
			"21:42:02 - GetML()", -- [2178]
			"21:42:47 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2179]
			"21:42:47 - UpdatePlayersData()", -- [2180]
			"21:50:43 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2181]
			"21:52:01 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2182]
			"21:52:01 - UpdatePlayersData()", -- [2183]
			"22:00:27 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2184]
			"22:01:33 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2185]
			"22:01:33 - UpdatePlayersData()", -- [2186]
			"22:02:51 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [2187]
			"22:03:07 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2188]
			"22:03:07 - OnMLDBReceived", -- [2189]
			"22:03:07 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2190]
			"22:03:07 - false = (IsCouncil) (Niseko-Stormscale)", -- [2191]
			"22:08:00 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2192]
			"02/19/19", -- [2193]
			"22:11:35 - Logged In", -- [2194]
			"22:11:35 - ML initialized!", -- [2195]
			"22:11:35 - TradeUI enabled", -- [2196]
			"22:11:38 - Niseko-Stormscale (2.10.0) (nil)", -- [2197]
			"22:11:38 - ActivateSkin (bfa)", -- [2198]
			"22:11:40 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2199]
			"22:11:40 - GetML()", -- [2200]
			"22:11:40 - UpdatePlayersData()", -- [2201]
			"22:11:41 - Event: (PARTY_LEADER_CHANGED)", -- [2202]
			"22:11:41 - GetML()", -- [2203]
			"22:11:41 - Unknown ML", -- [2204]
			"22:11:43 - GetPlayersGuildRank()", -- [2205]
			"22:11:43 - Found Guild Rank: Raider", -- [2206]
			"22:11:43 - GetML()", -- [2207]
			"22:11:43 - Resetting council as we have a new ML!", -- [2208]
			"22:11:43 - MasterLooter =  (Tigerozy-Stormscale)", -- [2209]
			"22:11:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2210]
			"22:11:57 - Timer MLdb_check passed", -- [2211]
			"22:11:58 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2212]
			"22:11:58 - OnMLDBReceived", -- [2213]
			"22:11:58 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2214]
			"22:11:58 - false = (IsCouncil) (Niseko-Stormscale)", -- [2215]
			"22:13:55 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2216]
			"22:13:55 - UpdatePlayersData()", -- [2217]
			"22:22:45 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2218]
			"22:23:01 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2219]
			"22:23:01 - GetML()", -- [2220]
			"22:23:12 - Event: (PARTY_LEADER_CHANGED)", -- [2221]
			"22:23:12 - GetML()", -- [2222]
			"22:23:15 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2223]
			"22:23:15 - GetML()", -- [2224]
			"22:23:27 - Event: (GROUP_LEFT) (2) (Party-1461-00003D50ABE3)", -- [2225]
			"22:23:27 - GetML()", -- [2226]
			"22:23:27 - Resetting council as we have a new ML!", -- [2227]
			"22:23:27 - MasterLooter =  (Tigerozy-Stormscale)", -- [2228]
			"22:23:32 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2229]
			"22:23:32 - GetML()", -- [2230]
			"22:23:42 - Timer MLdb_check passed", -- [2231]
			"22:23:42 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2232]
			"22:23:42 - false = (IsCouncil) (Niseko-Stormscale)", -- [2233]
			"22:24:27 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (34532) (1) (0)", -- [2234]
			"22:24:28 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2235]
			"22:24:28 - GetML()", -- [2236]
			"22:24:37 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Boomtastíc) (distri:) (GUILD)", -- [2237]
			"22:25:20 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2238]
			"22:25:20 - UpdatePlayersData()", -- [2239]
			"22:27:09 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2240]
			"22:28:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [2241]
			"22:28:56 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2242]
			"22:28:56 - OnMLDBReceived", -- [2243]
			"22:28:56 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2244]
			"22:28:56 - false = (IsCouncil) (Niseko-Stormscale)", -- [2245]
			"22:29:26 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2246]
			"22:29:26 - UpdatePlayersData()", -- [2247]
			"22:30:22 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2248]
			"22:30:46 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [2249]
			"22:31:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [2250]
			"22:31:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2251]
			"22:31:54 - UpdatePlayersData()", -- [2252]
			"22:34:53 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2253]
			"22:36:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2254]
			"22:36:24 - UpdatePlayersData()", -- [2255]
			"22:39:14 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2256]
			"22:40:50 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2257]
			"22:40:50 - UpdatePlayersData()", -- [2258]
			"02/19/19", -- [2259]
			"22:47:06 - Logged In", -- [2260]
			"22:47:06 - ML initialized!", -- [2261]
			"22:47:06 - TradeUI enabled", -- [2262]
			"22:47:09 - Niseko-Stormscale (2.10.0) (nil)", -- [2263]
			"22:47:09 - ActivateSkin (bfa)", -- [2264]
			"22:47:11 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2265]
			"22:47:11 - GetML()", -- [2266]
			"22:47:11 - UpdatePlayersData()", -- [2267]
			"22:47:12 - GetPlayersGuildRank()", -- [2268]
			"22:47:12 - Event: (PARTY_LEADER_CHANGED)", -- [2269]
			"22:47:12 - GetML()", -- [2270]
			"22:47:12 - Unknown ML", -- [2271]
			"22:47:14 - GetPlayersGuildRank()", -- [2272]
			"22:47:14 - Found Guild Rank: Raider", -- [2273]
			"22:47:14 - GetML()", -- [2274]
			"22:47:14 - Resetting council as we have a new ML!", -- [2275]
			"22:47:14 - MasterLooter =  (Tigerozy-Stormscale)", -- [2276]
			"22:47:14 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2277]
			"22:47:29 - Timer MLdb_check passed", -- [2278]
			"22:47:29 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2279]
			"22:47:29 - OnMLDBReceived", -- [2280]
			"22:47:29 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2281]
			"22:47:29 - false = (IsCouncil) (Niseko-Stormscale)", -- [2282]
			"22:48:05 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2283]
			"22:48:05 - UpdatePlayersData()", -- [2284]
			"22:56:26 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2285]
			"22:57:39 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2286]
			"22:57:39 - UpdatePlayersData()", -- [2287]
			"22:59:10 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2288]
			"22:59:24 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2289]
			"22:59:24 - GetML()", -- [2290]
			"22:59:32 - Event: (PARTY_LEADER_CHANGED)", -- [2291]
			"22:59:32 - GetML()", -- [2292]
			"22:59:35 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2293]
			"22:59:35 - GetML()", -- [2294]
			"22:59:41 - Event: (GROUP_LEFT) (2) (Party-1461-00003D50FB23)", -- [2295]
			"22:59:41 - GetML()", -- [2296]
			"22:59:41 - Resetting council as we have a new ML!", -- [2297]
			"22:59:41 - MasterLooter =  (Tigerozy-Stormscale)", -- [2298]
			"22:59:47 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2299]
			"22:59:47 - GetML()", -- [2300]
			"22:59:56 - Timer MLdb_check passed", -- [2301]
			"22:59:57 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2302]
			"22:59:57 - false = (IsCouncil) (Niseko-Stormscale)", -- [2303]
			"23:00:02 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (32397) (1) (0)", -- [2304]
			"23:00:02 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2305]
			"23:00:02 - GetML()", -- [2306]
			"23:00:19 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2307]
			"23:00:19 - UpdatePlayersData()", -- [2308]
			"23:02:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2309]
			"23:03:55 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2310]
			"23:04:41 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2311]
			"23:04:41 - UpdatePlayersData()", -- [2312]
			"23:05:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2313]
			"23:06:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2314]
			"23:12:43 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2315]
			"23:14:46 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2316]
			"23:14:46 - UpdatePlayersData()", -- [2317]
			"23:22:50 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2318]
			"23:24:22 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2319]
			"23:24:22 - UpdatePlayersData()", -- [2320]
			"23:31:57 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2321]
			"23:32:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2322]
			"23:32:54 - UpdatePlayersData()", -- [2323]
			"02/19/19", -- [2324]
			"23:37:14 - Logged In", -- [2325]
			"23:37:14 - ML initialized!", -- [2326]
			"23:37:14 - TradeUI enabled", -- [2327]
			"23:37:17 - Niseko-Stormscale (2.10.0) (nil)", -- [2328]
			"23:37:17 - ActivateSkin (bfa)", -- [2329]
			"23:37:19 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2330]
			"23:37:19 - GetML()", -- [2331]
			"23:37:19 - UpdatePlayersData()", -- [2332]
			"23:37:20 - Event: (PARTY_LEADER_CHANGED)", -- [2333]
			"23:37:20 - GetML()", -- [2334]
			"23:37:20 - Unknown ML", -- [2335]
			"23:37:21 - GetPlayersGuildRank()", -- [2336]
			"23:37:21 - Found Guild Rank: Raider", -- [2337]
			"23:37:21 - GetML()", -- [2338]
			"23:37:21 - Resetting council as we have a new ML!", -- [2339]
			"23:37:21 - MasterLooter =  (Tigerozy-Stormscale)", -- [2340]
			"23:37:22 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2341]
			"23:37:24 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2342]
			"23:37:36 - Timer MLdb_check passed", -- [2343]
			"23:37:37 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2344]
			"23:37:37 - OnMLDBReceived", -- [2345]
			"23:37:37 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2346]
			"23:37:37 - false = (IsCouncil) (Niseko-Stormscale)", -- [2347]
			"23:38:17 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2348]
			"23:38:17 - UpdatePlayersData()", -- [2349]
			"23:46:00 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2350]
			"23:46:58 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2351]
			"23:46:58 - UpdatePlayersData()", -- [2352]
			"23:52:58 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerslåyer) (distri:) (GUILD)", -- [2353]
			"23:55:10 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2354]
			"23:55:45 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Boomtastíc) (distri:) (GUILD)", -- [2355]
			"23:56:08 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [2356]
			"23:56:22 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2357]
			"23:56:22 - OnMLDBReceived", -- [2358]
			"23:56:22 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2359]
			"23:56:22 - false = (IsCouncil) (Niseko-Stormscale)", -- [2360]
			"23:56:42 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2361]
			"23:56:48 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2362]
			"23:56:48 - UpdatePlayersData()", -- [2363]
			"23:59:29 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2364]
			"00:00:09 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2365]
			"00:00:09 - GetML()", -- [2366]
			"00:00:17 - Event: (PARTY_LEADER_CHANGED)", -- [2367]
			"00:00:17 - GetML()", -- [2368]
			"00:00:20 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2369]
			"00:00:20 - GetML()", -- [2370]
			"00:00:25 - Event: (GROUP_LEFT) (2) (Party-1461-00003D5166C5)", -- [2371]
			"00:00:25 - GetML()", -- [2372]
			"00:00:25 - Resetting council as we have a new ML!", -- [2373]
			"00:00:25 - MasterLooter =  (Tigerozy-Stormscale)", -- [2374]
			"00:00:31 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2375]
			"00:00:31 - GetML()", -- [2376]
			"00:00:36 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (28763) (1) (0)", -- [2377]
			"00:00:37 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2378]
			"00:00:37 - GetML()", -- [2379]
			"00:00:40 - Timer MLdb_check passed", -- [2380]
			"00:00:41 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2381]
			"00:00:41 - false = (IsCouncil) (Niseko-Stormscale)", -- [2382]
			"00:01:14 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2383]
			"00:01:14 - UpdatePlayersData()", -- [2384]
			"00:07:56 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2385]
			"00:09:32 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2386]
			"00:09:32 - UpdatePlayersData()", -- [2387]
			"00:14:07 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2388]
			"00:15:05 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2389]
			"00:15:05 - UpdatePlayersData()", -- [2390]
			"00:21:57 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2391]
			"00:23:41 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2392]
			"00:23:41 - UpdatePlayersData()", -- [2393]
			"00:26:34 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2394]
			"00:26:49 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2395]
			"00:26:49 - GetML()", -- [2396]
			"00:27:25 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2397]
			"00:27:25 - GetML()", -- [2398]
			"00:27:26 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2399]
			"00:27:26 - OnMLDBReceived", -- [2400]
			"00:27:26 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N270^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SNâte-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2401]
			"00:27:26 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^STigerozy-Stormscale^N4^SSpazpriest-Stormscale^N5^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2402]
			"00:27:26 - false = (IsCouncil) (Niseko-Stormscale)", -- [2403]
			"02/20/19", -- [2404]
			"15:23:31 - Logged In", -- [2405]
			"15:23:31 - ML initialized!", -- [2406]
			"15:23:31 - TradeUI enabled", -- [2407]
			"15:23:39 - Niseko-Stormscale (2.10.0) (nil)", -- [2408]
			"15:23:39 - ActivateSkin (bfa)", -- [2409]
			"15:23:41 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2410]
			"15:23:41 - GetML()", -- [2411]
			"15:23:41 - UpdatePlayersData()", -- [2412]
			"15:23:44 - GetPlayersGuildRank()", -- [2413]
			"15:23:44 - Found Guild Rank: Raider", -- [2414]
			"15:23:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2415]
			"15:24:26 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2416]
			"15:24:26 - GetML()", -- [2417]
			"15:24:46 - Event: (LOOT_READY) (true)", -- [2418]
			"15:24:47 - Event: (LOOT_READY) (true)", -- [2419]
			"15:24:47 - Event: (ENCOUNTER_LOOT_RECEIVED) (0) (158923) (|cffa335ee|Hitem:158923::::::::120:264:8257536:::245:14:10:8:4:117:::|h[Mythic Keystone]|h|r) (1) (Niseko) (SHAMAN)", -- [2420]
			"15:24:48 - Event: (ENCOUNTER_LOOT_RECEIVED) (0) (159382) (|cffa335ee|Hitem:159382::::::::120:264::35:3:5010:1582:4783:::|h[Blood Tick Crushers]|h|r) (1) (Niseko) (SHAMAN)", -- [2421]
			"02/20/19", -- [2422]
			"19:42:15 - Logged In", -- [2423]
			"19:42:15 - ML initialized!", -- [2424]
			"19:42:15 - TradeUI enabled", -- [2425]
			"19:42:24 - Niseko-Stormscale (2.10.0) (nil)", -- [2426]
			"19:42:24 - ActivateSkin (bfa)", -- [2427]
			"19:42:26 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2428]
			"19:42:26 - GetML()", -- [2429]
			"19:42:26 - UpdatePlayersData()", -- [2430]
			"19:42:28 - GetPlayersGuildRank()", -- [2431]
			"19:42:28 - Found Guild Rank: Raider", -- [2432]
			"19:42:29 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2433]
			"19:43:02 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [2434]
			"19:44:07 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [2435]
			"19:44:59 - Event: (PARTY_LEADER_CHANGED)", -- [2436]
			"19:44:59 - GetML()", -- [2437]
			"19:44:59 - Resetting council as we have a new ML!", -- [2438]
			"19:44:59 - MasterLooter =  (Tigerozy-Stormscale)", -- [2439]
			"19:45:10 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Tigerozy) (distri:) (WHISPER)", -- [2440]
			"19:45:10 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2441]
			"19:45:10 - OnMLDBReceived", -- [2442]
			"19:45:10 - Comm received:^1^Scandidates^T^N1^T^SNotdan-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2443]
			"19:45:14 - Timer MLdb_check passed", -- [2444]
			"19:45:15 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2445]
			"19:45:15 - false = (IsCouncil) (Niseko-Stormscale)", -- [2446]
			"19:45:15 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2447]
			"19:45:15 - false = (IsCouncil) (Niseko-Stormscale)", -- [2448]
			"19:45:15 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2449]
			"19:45:15 - false = (IsCouncil) (Niseko-Stormscale)", -- [2450]
			"19:45:20 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2451]
			"19:45:20 - OnMLDBReceived", -- [2452]
			"19:45:20 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2453]
			"19:45:30 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2454]
			"19:45:30 - OnMLDBReceived", -- [2455]
			"19:45:30 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2456]
			"19:45:41 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2457]
			"19:45:41 - false = (IsCouncil) (Niseko-Stormscale)", -- [2458]
			"19:46:40 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2459]
			"19:46:40 - OnMLDBReceived", -- [2460]
			"19:46:40 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2461]
			"19:46:45 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2462]
			"19:46:45 - false = (IsCouncil) (Niseko-Stormscale)", -- [2463]
			"19:46:46 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Calekk) (distri:) (GUILD)", -- [2464]
			"19:47:03 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2465]
			"19:47:03 - OnMLDBReceived", -- [2466]
			"19:47:03 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2467]
			"19:47:08 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2468]
			"19:47:08 - false = (IsCouncil) (Niseko-Stormscale)", -- [2469]
			"19:49:32 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [2470]
			"19:49:47 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2471]
			"19:49:47 - OnMLDBReceived", -- [2472]
			"19:49:47 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2473]
			"19:49:47 - false = (IsCouncil) (Niseko-Stormscale)", -- [2474]
			"19:50:01 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [2475]
			"02/20/19", -- [2476]
			"19:54:03 - Logged In", -- [2477]
			"19:54:03 - ML initialized!", -- [2478]
			"19:54:03 - TradeUI enabled", -- [2479]
			"19:54:09 - Niseko-Stormscale (2.10.0) (nil)", -- [2480]
			"19:54:09 - ActivateSkin (bfa)", -- [2481]
			"19:54:12 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2482]
			"19:54:12 - GetML()", -- [2483]
			"19:54:12 - UpdatePlayersData()", -- [2484]
			"19:54:12 - GetPlayersGuildRank()", -- [2485]
			"19:54:12 - Event: (PARTY_LEADER_CHANGED)", -- [2486]
			"19:54:12 - GetML()", -- [2487]
			"19:54:12 - Unknown ML", -- [2488]
			"19:54:14 - GetPlayersGuildRank()", -- [2489]
			"19:54:14 - Found Guild Rank: Raider", -- [2490]
			"19:54:14 - GetML()", -- [2491]
			"19:54:14 - Resetting council as we have a new ML!", -- [2492]
			"19:54:14 - MasterLooter =  (Tigerozy-Stormscale)", -- [2493]
			"19:54:14 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2494]
			"19:54:29 - Timer MLdb_check passed", -- [2495]
			"19:54:29 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2496]
			"19:54:29 - OnMLDBReceived", -- [2497]
			"19:54:29 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2498]
			"19:54:29 - false = (IsCouncil) (Niseko-Stormscale)", -- [2499]
			"19:55:25 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (561875) (0) (0)", -- [2500]
			"19:55:26 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2501]
			"19:55:26 - GetML()", -- [2502]
			"19:57:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2503]
			"19:58:20 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2504]
			"19:58:20 - OnMLDBReceived", -- [2505]
			"19:58:20 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SBoomtastíc-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^STrial^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2506]
			"19:58:25 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2507]
			"19:58:25 - false = (IsCouncil) (Niseko-Stormscale)", -- [2508]
			"19:59:32 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2509]
			"19:59:32 - OnMLDBReceived", -- [2510]
			"19:59:32 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2511]
			"20:00:13 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2512]
			"20:01:09 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2513]
			"20:01:09 - UpdatePlayersData()", -- [2514]
			"20:03:32 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [2515]
			"20:08:40 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xerethars) (distri:) (GUILD)", -- [2516]
			"20:09:09 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2517]
			"20:09:25 - Comm received:^1^SverTest^T^N1^S2.9.7^t^^ (from:) (Valdurachi) (distri:) (GUILD)", -- [2518]
			"20:10:37 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2519]
			"20:10:37 - UpdatePlayersData()", -- [2520]
			"20:13:34 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2521]
			"20:15:05 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2522]
			"20:15:05 - UpdatePlayersData()", -- [2523]
			"20:16:37 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2524]
			"20:17:22 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2525]
			"20:17:22 - UpdatePlayersData()", -- [2526]
			"20:20:39 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2527]
			"20:21:44 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2528]
			"20:21:44 - UpdatePlayersData()", -- [2529]
			"20:29:29 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2530]
			"20:30:30 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2531]
			"20:30:30 - UpdatePlayersData()", -- [2532]
			"20:38:49 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2533]
			"20:41:26 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [2534]
			"20:41:41 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2535]
			"20:41:41 - OnMLDBReceived", -- [2536]
			"20:41:41 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2537]
			"20:41:41 - false = (IsCouncil) (Niseko-Stormscale)", -- [2538]
			"20:41:54 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2539]
			"20:41:54 - UpdatePlayersData()", -- [2540]
			"20:49:45 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2541]
			"20:51:31 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2542]
			"20:51:31 - UpdatePlayersData()", -- [2543]
			"20:58:24 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2544]
			"20:59:37 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2545]
			"20:59:37 - UpdatePlayersData()", -- [2546]
			"21:07:52 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2547]
			"21:09:48 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2548]
			"21:09:48 - UpdatePlayersData()", -- [2549]
			"21:11:25 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2550]
			"21:12:14 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2551]
			"21:12:14 - UpdatePlayersData()", -- [2552]
			"21:18:08 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2553]
			"21:18:57 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2554]
			"21:18:57 - UpdatePlayersData()", -- [2555]
			"21:20:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Mystch) (distri:) (GUILD)", -- [2556]
			"21:24:02 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Deffrogue) (distri:) (GUILD)", -- [2557]
			"21:24:16 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2558]
			"21:24:16 - OnMLDBReceived", -- [2559]
			"21:24:16 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2560]
			"21:24:16 - false = (IsCouncil) (Niseko-Stormscale)", -- [2561]
			"21:24:17 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2562]
			"21:24:44 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Deffrogue) (distri:) (GUILD)", -- [2563]
			"21:25:40 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2564]
			"21:25:40 - UpdatePlayersData()", -- [2565]
			"21:28:38 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2566]
			"21:30:21 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2567]
			"21:30:21 - UpdatePlayersData()", -- [2568]
			"21:32:31 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2569]
			"21:33:26 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2570]
			"21:33:26 - UpdatePlayersData()", -- [2571]
			"21:39:52 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2572]
			"21:40:44 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2573]
			"21:40:44 - UpdatePlayersData()", -- [2574]
			"21:43:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Mystch) (distri:) (GUILD)", -- [2575]
			"21:49:16 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2576]
			"21:49:33 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2577]
			"21:49:33 - GetML()", -- [2578]
			"21:49:43 - Event: (PARTY_LEADER_CHANGED)", -- [2579]
			"21:49:43 - GetML()", -- [2580]
			"21:49:47 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2581]
			"21:49:47 - GetML()", -- [2582]
			"21:49:54 - Event: (GROUP_LEFT) (2) (Party-1461-00003D59662E)", -- [2583]
			"21:49:54 - GetML()", -- [2584]
			"21:49:54 - Resetting council as we have a new ML!", -- [2585]
			"21:49:54 - MasterLooter =  (Tigerozy-Stormscale)", -- [2586]
			"21:50:02 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2587]
			"21:50:02 - GetML()", -- [2588]
			"21:50:09 - Timer MLdb_check passed", -- [2589]
			"21:50:10 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2590]
			"21:50:10 - false = (IsCouncil) (Niseko-Stormscale)", -- [2591]
			"21:50:23 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (554976) (1) (0)", -- [2592]
			"21:50:24 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2593]
			"21:50:24 - GetML()", -- [2594]
			"21:50:50 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2595]
			"21:50:50 - UpdatePlayersData()", -- [2596]
			"21:55:33 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2597]
			"21:58:36 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2598]
			"21:58:36 - UpdatePlayersData()", -- [2599]
			"22:02:41 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2600]
			"22:03:29 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2601]
			"22:03:29 - UpdatePlayersData()", -- [2602]
			"22:07:41 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2603]
			"22:08:41 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2604]
			"22:08:41 - UpdatePlayersData()", -- [2605]
			"22:17:14 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2606]
			"22:19:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2607]
			"22:19:24 - UpdatePlayersData()", -- [2608]
			"22:25:14 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2609]
			"02/20/19", -- [2610]
			"22:25:55 - Logged In", -- [2611]
			"22:25:55 - ML initialized!", -- [2612]
			"22:25:55 - TradeUI enabled", -- [2613]
			"22:25:59 - Niseko-Stormscale (2.10.0) (nil)", -- [2614]
			"22:25:59 - ActivateSkin (bfa)", -- [2615]
			"22:26:02 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2616]
			"22:26:02 - GetML()", -- [2617]
			"22:26:02 - UpdatePlayersData()", -- [2618]
			"22:26:02 - GetPlayersGuildRank()", -- [2619]
			"22:26:02 - Found Guild Rank: Raider", -- [2620]
			"22:26:02 - Event: (PARTY_LEADER_CHANGED)", -- [2621]
			"22:26:02 - GetML()", -- [2622]
			"22:26:02 - Unknown ML", -- [2623]
			"22:26:04 - GetML()", -- [2624]
			"22:26:04 - Resetting council as we have a new ML!", -- [2625]
			"22:26:04 - MasterLooter =  (Tigerozy-Stormscale)", -- [2626]
			"22:26:05 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2627]
			"22:26:19 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2628]
			"22:26:19 - UpdatePlayersData()", -- [2629]
			"22:26:19 - Timer MLdb_check passed", -- [2630]
			"22:26:19 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2631]
			"22:26:19 - OnMLDBReceived", -- [2632]
			"22:26:19 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2633]
			"22:26:19 - false = (IsCouncil) (Niseko-Stormscale)", -- [2634]
			"22:30:24 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2635]
			"22:31:19 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2636]
			"22:31:19 - UpdatePlayersData()", -- [2637]
			"22:35:55 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2638]
			"22:37:25 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2639]
			"22:37:25 - UpdatePlayersData()", -- [2640]
			"22:40:33 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2641]
			"22:42:28 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2642]
			"22:42:48 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [2643]
			"22:43:02 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2644]
			"22:43:02 - OnMLDBReceived", -- [2645]
			"22:43:02 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2646]
			"22:43:02 - false = (IsCouncil) (Niseko-Stormscale)", -- [2647]
			"22:43:24 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2648]
			"22:43:24 - UpdatePlayersData()", -- [2649]
			"22:49:00 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seorek) (distri:) (GUILD)", -- [2650]
			"22:51:50 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2651]
			"22:53:29 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2652]
			"22:53:29 - UpdatePlayersData()", -- [2653]
			"22:59:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Seor) (distri:) (GUILD)", -- [2654]
			"23:01:26 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2655]
			"23:02:50 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2656]
			"23:02:50 - UpdatePlayersData()", -- [2657]
			"23:07:32 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (0)", -- [2658]
			"23:08:55 - Event: (ENCOUNTER_START) (2281) (Lady Jaina Proudmoore) (16) (20)", -- [2659]
			"23:08:55 - UpdatePlayersData()", -- [2660]
			"23:10:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Mystch) (distri:) (GUILD)", -- [2661]
			"23:17:25 - Event: (ENCOUNTER_END) (2281) (Lady Jaina Proudmoore) (16) (20) (1)", -- [2662]
			"23:17:36 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Deffrogue) (distri:) (RAID)", -- [2663]
			"23:17:36 - false = (IsCouncil) (Niseko-Stormscale)", -- [2664]
			"23:17:38 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Zulgara) (distri:) (RAID)", -- [2665]
			"23:17:38 - false = (IsCouncil) (Niseko-Stormscale)", -- [2666]
			"23:17:39 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2667]
			"23:17:39 - false = (IsCouncil) (Niseko-Stormscale)", -- [2668]
			"23:17:40 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Tigerpal) (distri:) (RAID)", -- [2669]
			"23:17:40 - false = (IsCouncil) (Niseko-Stormscale)", -- [2670]
			"23:17:41 - Event: (ENCOUNTER_LOOT_RECEIVED) (2281) (165824) (|cffa335ee|Hitem:165824::::::::120:264::6:4:4824:1537:4786:5421:::|h[Admiralty's Ceremonial Epaulets]|h|r) (1) (Hudzz) (DRUID)", -- [2671]
			"23:17:41 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Hudzz) (distri:) (RAID)", -- [2672]
			"23:17:41 - false = (IsCouncil) (Niseko-Stormscale)", -- [2673]
			"23:17:41 - Event: (LOOT_READY) (true)", -- [2674]
			"23:17:41 - Adding to self.lootSlotInfo (1) (nil) (1) (GameObject-0-3111-2070-19482-311563-00006DD1F4) (591013)", -- [2675]
			"23:17:41 - Event: (LOOT_READY) (true)", -- [2676]
			"23:17:41 - Adding to self.lootSlotInfo (1) (nil) (1) (GameObject-0-3111-2070-19482-311563-00006DD1F4) (591013)", -- [2677]
			"23:17:42 - OnLootSlotCleared() (1) (nil) (1)", -- [2678]
			"23:17:42 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Kosehai) (distri:) (RAID)", -- [2679]
			"23:17:42 - false = (IsCouncil) (Niseko-Stormscale)", -- [2680]
			"23:17:42 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Fluke) (distri:) (RAID)", -- [2681]
			"23:17:42 - false = (IsCouncil) (Niseko-Stormscale)", -- [2682]
			"23:17:42 - Event: (LOOT_CLOSED)", -- [2683]
			"23:17:43 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Niseko) (distri:) (RAID)", -- [2684]
			"23:17:43 - false = (IsCouncil) (Niseko-Stormscale)", -- [2685]
			"23:17:43 - Event: (LOOT_READY) (true)", -- [2686]
			"23:17:43 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:165824::::::::120:102::6:4:4824:1537:4786:5421:::|h[Admiralty's~`Ceremonial~`Epaulets]|h|r^N2^S311563^t^^ (from:) (Hudzz) (distri:) (RAID)", -- [2687]
			"23:17:43 - Event: (LOOT_READY) (true)", -- [2688]
			"23:17:43 - Event: (LOOT_CLOSED)", -- [2689]
			"23:17:44 - Event: (ENCOUNTER_LOOT_RECEIVED) (2281) (165824) (|cffa335ee|Hitem:165824::::::::120:264::6:4:4824:1537:4786:5421:::|h[Admiralty's Ceremonial Epaulets]|h|r) (1) (Tigerozy) (DRUID)", -- [2690]
			"23:17:44 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2691]
			"23:17:44 - false = (IsCouncil) (Niseko-Stormscale)", -- [2692]
			"23:17:46 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Bfaistrash) (distri:) (RAID)", -- [2693]
			"23:17:46 - false = (IsCouncil) (Niseko-Stormscale)", -- [2694]
			"23:17:46 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's~`Ceremonial~`Epaulets]|h|r^N2^S311563^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2695]
			"23:17:46 - Event: (ENCOUNTER_LOOT_RECEIVED) (2281) (165583) (|cffa335ee|Hitem:165583::::::::120:264::6:3:4800:1542:4783:::|h[Fogbreaker, Light of the Sea]|h|r) (1) (Calekk) (DRUID)", -- [2696]
			"23:17:46 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2697]
			"23:17:46 - false = (IsCouncil) (Niseko-Stormscale)", -- [2698]
			"23:17:48 - Comm received:^1^Snot_tradeable^T^N1^S|cffa335ee|Hitem:165583::::::::120:102::6:3:4800:1542:4783:::|h[Fogbreaker,~`Light~`of~`the~`Sea]|h|r^N2^S311563^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2699]
			"23:17:49 - Event: (ENCOUNTER_LOOT_RECEIVED) (2281) (166705) (|cffa335ee|Hitem:166705::::::::120:264::6::::|h[Glacial Tidestorm]|h|r) (1) (Notdan) (PRIEST)", -- [2700]
			"23:17:49 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Notdan) (distri:) (RAID)", -- [2701]
			"23:17:49 - false = (IsCouncil) (Niseko-Stormscale)", -- [2702]
			"23:17:49 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2703]
			"23:17:49 - false = (IsCouncil) (Niseko-Stormscale)", -- [2704]
			"23:17:50 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Jíra) (distri:) (RAID)", -- [2705]
			"23:17:50 - false = (IsCouncil) (Niseko-Stormscale)", -- [2706]
			"23:17:51 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:166705::::::::120:256::6::::|h[Glacial~`Tidestorm]|h|r^N2^S311563^t^^ (from:) (Notdan) (distri:) (RAID)", -- [2707]
			"23:17:53 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Lyllot) (distri:) (RAID)", -- [2708]
			"23:17:53 - false = (IsCouncil) (Niseko-Stormscale)", -- [2709]
			"23:17:55 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Zuto) (distri:) (RAID)", -- [2710]
			"23:17:55 - false = (IsCouncil) (Niseko-Stormscale)", -- [2711]
			"23:17:56 - Event: (ENCOUNTER_LOOT_RECEIVED) (2281) (165570) (|cffa335ee|Hitem:165570::::::::120:264::6:3:4800:1537:4786:::|h[Everchill Anchor]|h|r) (1) (Khunee) (PALADIN)", -- [2712]
			"23:17:56 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Khunee) (distri:) (RAID)", -- [2713]
			"23:17:56 - false = (IsCouncil) (Niseko-Stormscale)", -- [2714]
			"23:17:57 - Event: (ENCOUNTER_LOOT_RECEIVED) (2281) (165583) (|cffa335ee|Hitem:165583::::::::120:264::6:4:4800:42:1537:4786:::|h[Fogbreaker, Light of the Sea]|h|r) (1) (Spazpriest) (PRIEST)", -- [2715]
			"23:17:57 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [2716]
			"23:17:57 - false = (IsCouncil) (Niseko-Stormscale)", -- [2717]
			"23:17:57 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Ginsu) (distri:) (RAID)", -- [2718]
			"23:17:57 - false = (IsCouncil) (Niseko-Stormscale)", -- [2719]
			"23:17:58 - Comm received:^1^Stradable^T^N1^S|cffa335ee|Hitem:165570::::::::120:70::6:3:4800:1537:4786:::|h[Everchill~`Anchor]|h|r^N2^S311563^t^^ (from:) (Khunee) (distri:) (RAID)", -- [2720]
			"23:17:59 - Comm received:^1^Snot_tradeable^T^N1^S|cffa335ee|Hitem:165583::::::::120:256::6:4:4800:42:1537:4786:::|h[Fogbreaker,~`Light~`of~`the~`Sea]|h|r^N2^S311563^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [2721]
			"23:18:28 - Comm received:^1^Slooted^T^N1^S311563^t^^ (from:) (Nâte) (distri:) (RAID)", -- [2722]
			"23:18:28 - false = (IsCouncil) (Niseko-Stormscale)", -- [2723]
			"23:18:32 - Comm received:^1^SlootTable^T^N1^T^N1^T^SequipLoc^SINVTYPE_SHOULDER^Silvl^N415^Slink^S|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's~`Ceremonial~`Epaulets]|h|r^Sowner^SHudzz-Stormscale^SsubType^SLeather^Stexture^N2353081^SisSent^b^Sawarded^b^Sclasses^N4294967295^Sboe^b^Squality^N4^t^N2^T^SequipLoc^SINVTYPE_SHOULDER^Silvl^N415^Slink^S|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's~`Ceremonial~`Epaulets]|h|r^Sowner^STigerozy-Stormscale^SsubType^SLeather^Stexture^N2353081^SisSent^b^Sawarded^b^Sclasses^N4294967295^Sboe^b^Squality^N4^t^N3^T^SequipLoc^SINVTYPE_TRINKET^Silvl^N415^Slink^S|cffa335ee|Hitem:165570::::::::120:104::6:3:4800:1537:4786:::|h[Everchill~`Anchor]|h|r^Sowner^SKhunee-Stormscale^SsubType^SMiscellaneous^Stexture^N1686581^SisSent^b^Sawarded^b^Sclasses^N4294967295^Sboe^b^Squality^N4^t^N4^T^SequipLoc^S^Silvl^N120^Slink^S|cffa335ee|Hitem:166705::::::::120:104::6::::|h[Glacial~`Tidestorm]|h|r^Sowner^SNotdan-Stormscale^SsubType^SMount^Stexture^N135862^SisSent^b^Sawarded^b^Sclasses^N4294967295^Sboe^b^Squality^N4^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2724]
			"23:18:32 - Autopassed on:  (|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's Ceremonial Epaulets]|h|r)", -- [2725]
			"23:18:32 - Autopassed on:  (|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's Ceremonial Epaulets]|h|r)", -- [2726]
			"23:18:32 - Autopassed on:  (|cffa335ee|Hitem:165570::::::::120:104::6:3:4800:1537:4786:::|h[Everchill Anchor]|h|r)", -- [2727]
			"23:18:32 - GetPlayersGear (|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's Ceremonial Epaulets]|h|r) (INVTYPE_SHOULDER)", -- [2728]
			"23:18:32 - GetPlayersGear (|cffa335ee|Hitem:165824::::::::120:104::6:4:4824:1537:4786:5421:::|h[Admiralty's Ceremonial Epaulets]|h|r) (INVTYPE_SHOULDER)", -- [2729]
			"23:18:32 - GetPlayersGear (|cffa335ee|Hitem:165570::::::::120:104::6:3:4800:1537:4786:::|h[Everchill Anchor]|h|r) (INVTYPE_TRINKET)", -- [2730]
			"23:18:32 - GetPlayersGear (|cffa335ee|Hitem:166705::::::::120:104::6::::|h[Glacial Tidestorm]|h|r) ()", -- [2731]
			"23:18:32 - GetPlayersGear (|cffa335ee|Hitem:166705::::::::120:264::6::::|h[Glacial Tidestorm]|h|r) ()", -- [2732]
			"23:18:32 - LootFrame (GetFrame())", -- [2733]
			"23:18:32 - LootFrame:Start (4) (nil)", -- [2734]
			"23:18:32 - GetButtons ()", -- [2735]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^STigerpal-Stormscale^N2^N268^N3^N412.75^N4^T^Sresponse^T^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:165516::::::::120:268::6:4:4824:1537:4786:5421^N2^Sitem:165516::::::::120:268::6:4:4824:1537:4786:5421^N3^Sitem:155881::::::::120:268::16:3:5010:1572:4786^t^Sgear2^T^N3^Sitem:165573::::::::120:268::5:3:4799:1522:4786^t^t^t^^ (from:) (Tigerpal) (distri:) (RAID)", -- [2736]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SKhunee-Stormscale^N2^N70^N3^N411.8125^N4^T^Sresponse^T^N1^B^N2^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:159439::::::::120:70::35:4:5448:1587:4786:5421^N2^Sitem:159439::::::::120:70::35:4:5448:1587:4786:5421^N3^Sitem:165058::::::::120:70::56:4:5183:5141:1512:4786^t^Sgear2^T^N3^Sitem:165928::::::::120:70::13^t^t^t^^ (from:) (Khunee) (distri:) (RAID)", -- [2737]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SNotdan-Stormscale^N2^N256^N3^N414.1875^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N0^N4^N0^t^Sgear1^T^N1^Sitem:159238::::::::120:256::35:4:5448:1587:4786:5421^N2^Sitem:159238::::::::120:256::35:4:5448:1587:4786:5421^N3^Sitem:165928::::::::120:256::13^t^Sgear2^T^N3^Sitem:165581::::::::120:256::6:3:4800:1542:4783^t^t^t^^ (from:) (Notdan) (distri:) (RAID)", -- [2738]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SHudzz-Stormscale^N2^N102^N3^N412^N4^T^Sresponse^T^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:165516::::::::120:102::6:4:4824:1537:4786:5421^N2^Sitem:165516::::::::120:102::6:4:4824:1537:4786:5421^N3^Sitem:165581::::::::120:102::6:4:4800:41:1537:4786^t^Sgear2^T^N3^Sitem:159620::::::::120:102::16:3:5010:1572:4786^t^t^t^^ (from:) (Hudzz) (distri:) (RAID)", -- [2739]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SNiseko-Stormscale^N2^N264^N3^N412.1875^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N30^N4^N0^t^Sgear1^T^N1^Sitem:159360::::::::120:264::35:4:5448:1587:4786:5421^N2^Sitem:159360::::::::120:264::35:4:5448:1587:4786:5421^N3^Sitem:165928::::::::120:264::13^t^Sgear2^T^N3^Sitem:160656::154126::::::120:264::6:4:4800:1808:1507:4786^t^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [2740]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SCalekk-Stormscale^N2^N102^N3^N413.0625^N4^T^Sresponse^T^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N5^N4^N0^t^Sgear1^T^N1^Sitem:159307::::::::120:102::35:4:5448:1587:4786:5421^N2^Sitem:159307::::::::120:102::35:4:5448:1587:4786:5421^N3^Sitem:159615::::::::120:102::35:4:5010:41:1582:4783^t^Sgear2^T^N3^Sitem:165581::::::::120:102::6:3:4800:1537:4786^t^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2741]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SKosehai-Stormscale^N2^N258^N3^N410.1875^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N30^N4^N0^t^Sgear1^T^N1^Sitem:165922::::::::120:258::6:4:4824:1537:4786:5421^N2^Sitem:165922::::::::120:258::6:4:4824:1537:4786:5421^N3^Sitem:165581::::::::120:258::6:3:4800:1537:4786^t^Sgear2^T^N3^Sitem:159620::::::::120:258::35:3:5010:1557:4783^t^t^t^^ (from:) (Kosehai) (distri:) (RAID)", -- [2742]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SDeffrogue-Stormscale^N2^N259^N3^N412.3125^N4^T^Sresponse^T^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:159307::::::::120:259::35:4:5448:1587:4786:5421^N2^Sitem:159307::::::::120:259::35:4:5448:1587:4786:5421^N3^Sitem:159617::::::::120:259::16:3:5010:1572:4786^t^Sgear2^T^N3^Sitem:159612::::::::120:259::16:3:5010:1577:4783^t^t^t^^ (from:) (Deffrogue) (distri:) (RAID)", -- [2743]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SJíra-Stormscale^N2^N264^N3^N412.8125^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N0^N4^N0^t^Sgear1^T^N1^Sitem:159393::::::::120:264::35:4:5448:1587:4786:5421^N2^Sitem:159393::::::::120:264::35:4:5448:1587:4786:5421^N3^Sitem:165569::::::::120:264::6:4:4800:40:1537:4786^t^Sgear2^T^N3^Sitem:165928::::::::120:264::13^t^t^t^^ (from:) (Jíra) (distri:) (RAID)", -- [2744]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SReeceburton-Stormscale^N2^N63^N3^N414^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N10^N4^N0^t^Sgear1^T^N1^Sitem:165507::::::::120:63::6:4:4824:1537:4786:5421^N2^Sitem:165507::::::::120:63::6:4:4824:1537:4786:5421^N3^Sitem:165581::::::::120:63::6:3:4800:1537:4786^t^Sgear2^T^N3^Sitem:165055::::::::120:63::8:3:5141:5321:1517^t^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2745]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SGingerprick-Stormscale^N2^N258^N3^N411.8125^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N15^N2^N15^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:165922::::::::120:258::5:4:4823:1522:4786:5418^N2^Sitem:165922::::::::120:258::5:4:4823:1522:4786:5418^N3^Sitem:159620::::::::120:258::16:3:5010:1572:4786^t^Sgear2^T^N3^Sitem:165581::::::::120:258::5:4:4799:42:1537:4784^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2746]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SZulgara-Stormscale^N2^N254^N3^N409.625^N4^T^Sresponse^T^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:159393::::::::120:254::35:4:5448:1587:4786:5421^N2^Sitem:159393::::::::120:254::35:4:5448:1587:4786:5421^N3^Sitem:159617::154129::::::120:254::16:4:5010:4802:1572:4786^t^Sgear2^T^N3^Sitem:159623::154129::::::120:254::16:4:5010:4802:1572:4786^t^t^t^^ (from:) (Zulgara) (distri:) (RAID)", -- [2747]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SSpazpriest-Stormscale^N2^N256^N3^N411.9375^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:165922::::::::120:256::6:4:4824:1537:4786:5421^N2^Sitem:165922::::::::120:256::6:4:4824:1537:4786:5421^N3^Sitem:159620::::::::120:256::16:3:5010:1572:4786^t^Sgear2^T^N3^Sitem:165928::::::::120:256::13^t^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [2748]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SBfaistrash-Stormscale^N2^N269^N3^N410.0625^N4^T^Sresponse^T^t^Sdiff^T^N1^N0^N2^N0^N3^N20^N4^N0^t^Sgear1^T^N1^Sitem:164856::::::::120:269::56:5:5194:5142:1527:4786:5421^N2^Sitem:164856::::::::120:269::56:5:5194:5142:1527:4786:5421^N3^Sitem:161674::::::::120:269::56:4:5080:5128:1587:4783^t^Sgear2^T^N3^Sitem:155881::::::::120:269::16:3:5010:1572:4786^t^t^t^^ (from:) (Bfaistrash) (distri:) (RAID)", -- [2749]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SNâte-Stormscale^N2^N63^N3^N411.8125^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:165507::::::::120:63::6:4:4824:1537:4786:5421^N2^Sitem:165507::::::::120:63::6:4:4824:1537:4786:5421^N3^Sitem:159630::154129::::::120:63::16:4:5010:4802:1572:4786^t^Sgear2^T^N3^Sitem:159610::::::::120:63::16:3:5010:1572:4786^t^t^t^^ (from:) (Nâte) (distri:) (RAID)", -- [2750]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SFluke-Stormscale^N2^N577^N3^N415.0625^N4^T^Sresponse^T^t^Sdiff^T^N1^N0^N2^N0^N3^N10^N4^N0^t^Sgear1^T^N1^Sitem:165516::::::::120:577::6:4:4824:1537:4786:5421^N2^Sitem:165516::::::::120:577::6:4:4824:1537:4786:5421^N3^Sitem:165579::::::::120:577::6:4:4800:42:1537:4786^t^Sgear2^T^N3^Sitem:165055::154128::::::120:577::56:5:5188:4802:5141:1517:4786^t^t^t^^ (from:) (Fluke) (distri:) (RAID)", -- [2751]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SGinsu-Stormscale^N2^N266^N3^N413.4375^N4^T^Sresponse^T^N1^B^N2^B^N3^B^t^Sdiff^T^N1^N0^N2^N0^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:159238::::::::120:266::35:4:5448:1587:4786:5421^N2^Sitem:159238::::::::120:266::35:4:5448:1587:4786:5421^N3^Sitem:159630::::::::120:266::16:4:5010:41:1572:4786^t^Sgear2^T^N3^Sitem:159622::154129::::::120:266::16:4:5010:4802:1592:4784^t^t^t^^ (from:) (Ginsu) (distri:) (RAID)", -- [2752]
			"23:18:32 - Comm received:^1^SextraUtilData^T^N1^SGinsu-Stormscale^N2^T^Sforged^N4^Straits^N41^Spawn^T^t^Ssockets^N2^SspecID^N266^t^t^^ (from:) (Ginsu) (distri:) (RAID)", -- [2753]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SZuto-Stormscale^N2^N72^N3^N411.0625^N4^T^Sresponse^T^N1^B^N2^B^t^Sdiff^T^N1^N0^N2^N0^N3^N30^N4^N0^t^Sgear1^T^N1^Sitem:159423::::::::120:72::35:4:5448:1587:4786:5421^N2^Sitem:159423::::::::120:72::35:4:5448:1587:4786:5421^N3^Sitem:159625::::::::120:72::16:3:5010:1572:4786^t^Sgear2^T^N3^Sitem:160655::154127::::::120:72::6:4:4800:1808:1507:4786^t^t^t^^ (from:) (Zuto) (distri:) (RAID)", -- [2754]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^SLyllot-Stormscale^N2^N253^N3^N410.125^N4^T^Sresponse^T^t^Sdiff^T^N1^N15^N2^N15^N3^N15^N4^N0^t^Sgear1^T^N1^Sitem:165537::::::::120:253::5:4:4823:1522:4786:5418^N2^Sitem:165537::::::::120:253::5:4:4823:1522:4786:5418^N3^Sitem:159617::::::::120:253::35:3:5010:1582:4783^t^Sgear2^T^N3^Sitem:155881::::::::120:253::16:4:5010:41:1572:4786^t^t^t^^ (from:) (Lyllot) (distri:) (RAID)", -- [2755]
			"23:18:32 - Comm received:^1^Srolls^T^N1^N1^N2^T^SGinsu-Stormscale^N50^SHudzz-Stormscale^N7^SReeceburton-Stormscale^N57^SSpazpriest-Stormscale^N75^SBfaistrash-Stormscale^N89^SCalekk-Stormscale^N36^SNotdan-Stormscale^N15^SKhunee-Stormscale^N21^SJíra-Stormscale^N46^STigerpal-Stormscale^N35^SGingerprick-Stormscale^N34^SNiseko-Stormscale^N82^SKosehai-Stormscale^N25^SZulgara-Stormscale^N4^STigerozy-Stormscale^N8^SFluke-Stormscale^N14^SNâte-Stormscale^N59^SZuto-Stormscale^N81^SLyllot-Stormscale^N87^SDeffrogue-Stormscale^N72^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2756]
			"23:18:32 - Comm received:^1^Srolls^T^N1^N2^N2^T^SGinsu-Stormscale^N50^SHudzz-Stormscale^N7^SReeceburton-Stormscale^N57^SSpazpriest-Stormscale^N75^SBfaistrash-Stormscale^N89^SCalekk-Stormscale^N36^SNotdan-Stormscale^N15^SKhunee-Stormscale^N21^SJíra-Stormscale^N46^STigerpal-Stormscale^N35^SGingerprick-Stormscale^N34^SNiseko-Stormscale^N82^SKosehai-Stormscale^N25^SZulgara-Stormscale^N4^STigerozy-Stormscale^N8^SFluke-Stormscale^N14^SNâte-Stormscale^N59^SZuto-Stormscale^N81^SLyllot-Stormscale^N87^SDeffrogue-Stormscale^N72^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2757]
			"23:18:32 - Comm received:^1^Srolls^T^N1^N3^N2^T^SGinsu-Stormscale^N23^SHudzz-Stormscale^N8^SReeceburton-Stormscale^N26^SSpazpriest-Stormscale^N36^SBfaistrash-Stormscale^N35^SCalekk-Stormscale^N88^SNotdan-Stormscale^N55^SKhunee-Stormscale^N15^SJíra-Stormscale^N78^STigerpal-Stormscale^N25^SGingerprick-Stormscale^N12^SNiseko-Stormscale^N82^SKosehai-Stormscale^N67^SZulgara-Stormscale^N60^STigerozy-Stormscale^N11^SFluke-Stormscale^N5^SNâte-Stormscale^N48^SZuto-Stormscale^N28^SLyllot-Stormscale^N74^SDeffrogue-Stormscale^N89^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2758]
			"23:18:32 - Comm received:^1^Srolls^T^N1^N4^N2^T^SGinsu-Stormscale^N81^SHudzz-Stormscale^N33^SReeceburton-Stormscale^N62^SSpazpriest-Stormscale^N58^SBfaistrash-Stormscale^N82^SCalekk-Stormscale^N16^SNotdan-Stormscale^N56^SKhunee-Stormscale^N94^SJíra-Stormscale^N14^STigerpal-Stormscale^N25^SGingerprick-Stormscale^N97^SNiseko-Stormscale^N66^SKosehai-Stormscale^N55^SZulgara-Stormscale^N74^STigerozy-Stormscale^N54^SFluke-Stormscale^N67^SNâte-Stormscale^N60^SZuto-Stormscale^N27^SLyllot-Stormscale^N64^SDeffrogue-Stormscale^N75^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2759]
			"23:18:32 - Comm received:^1^SlootAck^T^N1^STigerozy-Stormscale^N2^N104^N3^N412.25^N4^T^Sresponse^T^t^Sdiff^T^N1^N0^N2^N0^N3^N30^N4^N0^t^Sgear1^T^N1^Sitem:159299::::::::120:104::35:4:5448:1587:4786:5421^N2^Sitem:159299::::::::120:104::35:4:5448:1587:4786:5421^N3^Sitem:165928::::::::120:104::13^t^Sgear2^T^N3^Sitem:160653::154128::::::120:104::6:4:4800:1808:1507:4786^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2760]
			"23:18:34 - Comm received:^1^Sresponse^T^N1^N4^N2^SReeceburton-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2761]
			"23:18:35 - Comm received:^1^Sresponse^T^N1^N1^N2^SLyllot-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Lyllot) (distri:) (RAID)", -- [2762]
			"23:18:35 - Comm received:^1^Sresponse^T^N1^N4^N2^SHudzz-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Hudzz) (distri:) (RAID)", -- [2763]
			"23:18:35 - Comm received:^1^Sresponse^T^N1^N2^N2^SLyllot-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Lyllot) (distri:) (RAID)", -- [2764]
			"23:18:35 - LootFrame:Response (1) (Response:) (Big)", -- [2765]
			"23:18:35 - SendResponse (group) (4) (1) (nil) (nil) (nil) (nil) (nil) (nil) (nil) (nil) (nil) (nil)", -- [2766]
			"23:18:35 - Trashing entry: (1) (|cffa335ee|Hitem:166705::::::::120:104::6::::|h[Glacial Tidestorm]|h|r)", -- [2767]
			"23:18:35 - Comm received:^1^Sresponse^T^N1^N4^N2^SNiseko-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [2768]
			"23:18:37 - Comm received:^1^Sresponse^T^N1^N4^N2^SBfaistrash-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Bfaistrash) (distri:) (RAID)", -- [2769]
			"23:18:37 - Comm received:^1^Sresponse^T^N1^N3^N2^SLyllot-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Lyllot) (distri:) (RAID)", -- [2770]
			"23:18:38 - Comm received:^1^Sresponse^T^N1^N4^N2^SKhunee-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Khunee) (distri:) (RAID)", -- [2771]
			"23:18:38 - Comm received:^1^Sresponse^T^N1^N4^N2^SSpazpriest-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Spazpriest) (distri:) (RAID)", -- [2772]
			"23:18:38 - Comm received:^1^Sresponse^T^N1^N4^N2^SLyllot-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Lyllot) (distri:) (RAID)", -- [2773]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N4^N2^SFluke-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Fluke) (distri:) (RAID)", -- [2774]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N4^N2^STigerpal-Stormscale^N3^T^Sresponse^N4^t^t^^ (from:) (Tigerpal) (distri:) (RAID)", -- [2775]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N1^N2^SZulgara-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Zulgara) (distri:) (RAID)", -- [2776]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N2^N2^SZulgara-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Zulgara) (distri:) (RAID)", -- [2777]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N3^N2^SZulgara-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Zulgara) (distri:) (RAID)", -- [2778]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N4^N2^SZulgara-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Zulgara) (distri:) (RAID)", -- [2779]
			"23:18:39 - Comm received:^1^Sresponse^T^N1^N1^N2^SHudzz-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Hudzz) (distri:) (RAID)", -- [2780]
			"23:18:40 - Comm received:^1^Sresponse^T^N1^N2^N2^SHudzz-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Hudzz) (distri:) (RAID)", -- [2781]
			"23:18:40 - Comm received:^1^Sresponse^T^N1^N1^N2^SBfaistrash-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Bfaistrash) (distri:) (RAID)", -- [2782]
			"23:18:40 - Comm received:^1^Sresponse^T^N1^N2^N2^SBfaistrash-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Bfaistrash) (distri:) (RAID)", -- [2783]
			"23:18:40 - Comm received:^1^Sresponse^T^N1^N3^N2^SBfaistrash-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Bfaistrash) (distri:) (RAID)", -- [2784]
			"23:18:41 - Comm received:^1^Sresponse^T^N1^N1^N2^SFluke-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Fluke) (distri:) (RAID)", -- [2785]
			"23:18:41 - Comm received:^1^Sresponse^T^N1^N2^N2^SFluke-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Fluke) (distri:) (RAID)", -- [2786]
			"23:18:42 - Comm received:^1^Sresponse^T^N1^N3^N2^SFluke-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Fluke) (distri:) (RAID)", -- [2787]
			"23:18:43 - Comm received:^1^Sresponse^T^N1^N4^N2^SKosehai-Stormscale^N3^T^Snote^b^Sresponse^SPASS^t^t^^ (from:) (Kosehai) (distri:) (RAID)", -- [2788]
			"23:18:44 - Comm received:^1^Sresponse^T^N1^N4^N2^SJíra-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Jíra) (distri:) (RAID)", -- [2789]
			"23:18:45 - Comm received:^1^Soffline_timer^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2790]
			"23:18:45 - Comm received:^1^Sresponse^T^N1^N4^N2^SDeffrogue-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Deffrogue) (distri:) (RAID)", -- [2791]
			"23:18:49 - Comm received:^1^Sresponse^T^N1^N4^N2^SCalekk-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2792]
			"23:18:52 - Comm received:^1^Sresponse^T^N1^N1^N2^SCalekk-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2793]
			"23:18:52 - Comm received:^1^Sresponse^T^N1^N2^N2^SCalekk-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2794]
			"23:18:53 - Comm received:^1^Sresponse^T^N1^N1^N2^SDeffrogue-Stormscale^N3^T^Snote^S1675~`res^Sresponse^N5^t^t^^ (from:) (Deffrogue) (distri:) (RAID)", -- [2795]
			"23:18:53 - Comm received:^1^Sresponse^T^N1^N2^N2^SDeffrogue-Stormscale^N3^T^Snote^S1675~`res^Sresponse^N5^t^t^^ (from:) (Deffrogue) (distri:) (RAID)", -- [2796]
			"23:18:53 - Comm received:^1^Sresponse^T^N1^N1^N2^STigerpal-Stormscale^N3^T^Sresponse^N5^t^t^^ (from:) (Tigerpal) (distri:) (RAID)", -- [2797]
			"23:18:53 - Comm received:^1^Sresponse^T^N1^N2^N2^STigerpal-Stormscale^N3^T^Sresponse^N5^t^t^^ (from:) (Tigerpal) (distri:) (RAID)", -- [2798]
			"23:18:55 - Comm received:^1^Sresponse^T^N1^N4^N2^SZuto-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Zuto) (distri:) (RAID)", -- [2799]
			"23:18:56 - Comm received:^1^Sresponse^T^N1^N4^N2^SGinsu-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Ginsu) (distri:) (RAID)", -- [2800]
			"23:18:58 - Comm received:^1^Sresponse^T^N1^N3^N2^SKhunee-Stormscale^N3^T^Sresponse^N2^t^t^^ (from:) (Khunee) (distri:) (RAID)", -- [2801]
			"23:18:58 - Comm received:^1^Sresponse^T^N1^N4^N2^SNotdan-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Notdan) (distri:) (RAID)", -- [2802]
			"23:18:59 - Comm received:^1^Sresponse^T^N1^N3^N2^SZuto-Stormscale^N3^T^Sresponse^N1^t^t^^ (from:) (Zuto) (distri:) (RAID)", -- [2803]
			"23:19:01 - Comm received:^1^Sresponse^T^N1^N4^N2^SNâte-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Nâte) (distri:) (RAID)", -- [2804]
			"23:19:03 - Comm received:^1^Sresponse^T^N1^N4^N2^SGingerprick-Stormscale^N3^T^Sresponse^SPASS^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2805]
			"23:19:32 - Comm received:^1^Sresponse^T^N1^N4^N2^STigerozy-Stormscale^N3^T^Sresponse^STIMEOUT^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2806]
			"23:19:32 - Comm received:^1^Sresponse^T^N1^N3^N2^STigerozy-Stormscale^N3^T^Sresponse^STIMEOUT^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2807]
			"23:19:32 - Comm received:^1^Sresponse^T^N1^N1^N2^STigerozy-Stormscale^N3^T^Sresponse^STIMEOUT^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2808]
			"23:19:32 - Comm received:^1^Sresponse^T^N1^N2^N2^STigerozy-Stormscale^N3^T^Sresponse^STIMEOUT^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2809]
			"23:19:49 - Comm received:^1^Sawarded^T^N1^N3^N2^SZuto-Stormscale^N3^SKhunee-Stormscale^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2810]
			"23:20:07 - Comm received:^1^Ssession_end^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2811]
			"23:21:09 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [2812]
			"23:21:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2813]
			"23:21:24 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2814]
			"23:21:24 - OnMLDBReceived", -- [2815]
			"23:21:24 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2816]
			"23:21:24 - false = (IsCouncil) (Niseko-Stormscale)", -- [2817]
			"23:21:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [2818]
			"23:21:37 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zuto) (distri:) (GUILD)", -- [2819]
			"23:21:53 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gingerprick) (distri:) (GUILD)", -- [2820]
			"23:21:57 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2821]
			"23:21:57 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerozy) (distri:) (GUILD)", -- [2822]
			"23:21:59 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2823]
			"23:21:59 - OnMLDBReceived", -- [2824]
			"23:21:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zulgara) (distri:) (GUILD)", -- [2825]
			"23:22:00 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2826]
			"23:22:00 - OnMLDBReceived", -- [2827]
			"23:22:04 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SNotdan-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SLyllot-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^STigerozy-Stormscale^T^Srole^STANK^Sclass^SDRUID^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2828]
			"23:22:04 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2829]
			"23:22:04 - false = (IsCouncil) (Niseko-Stormscale)", -- [2830]
			"23:22:04 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2831]
			"23:22:04 - false = (IsCouncil) (Niseko-Stormscale)", -- [2832]
			"23:22:04 - Comm received:^1^SStartHandleLoot^T^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2833]
			"23:22:04 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2834]
			"23:22:04 - false = (IsCouncil) (Niseko-Stormscale)", -- [2835]
			"23:22:07 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2836]
			"23:23:08 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Khunee) (distri:) (GUILD)", -- [2837]
			"23:23:23 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2838]
			"23:23:23 - OnMLDBReceived", -- [2839]
			"23:23:23 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2840]
			"23:23:23 - false = (IsCouncil) (Niseko-Stormscale)", -- [2841]
			"23:25:24 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllot) (distri:) (GUILD)", -- [2842]
			"23:25:39 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2843]
			"23:25:39 - OnMLDBReceived", -- [2844]
			"23:25:39 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2845]
			"23:25:39 - false = (IsCouncil) (Niseko-Stormscale)", -- [2846]
			"23:26:37 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [2847]
			"23:26:52 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2848]
			"23:26:52 - OnMLDBReceived", -- [2849]
			"23:26:52 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2850]
			"23:26:52 - false = (IsCouncil) (Niseko-Stormscale)", -- [2851]
			"23:27:12 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SNotdan-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^SLyllot-Stormscale^T^Srole^SDAMAGER^SspecID^N253^Senchant_lvl^N0^Sclass^SHUNTER^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2852]
			"23:28:10 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Nâte) (distri:) (GUILD)", -- [2853]
			"23:28:22 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2854]
			"23:28:22 - OnMLDBReceived", -- [2855]
			"23:28:22 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2856]
			"23:28:22 - false = (IsCouncil) (Niseko-Stormscale)", -- [2857]
			"23:29:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Tigerpal) (distri:) (GUILD)", -- [2858]
			"23:29:57 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2859]
			"23:29:57 - OnMLDBReceived", -- [2860]
			"23:29:57 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2861]
			"23:29:57 - false = (IsCouncil) (Niseko-Stormscale)", -- [2862]
			"23:31:19 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Notdan) (distri:) (GUILD)", -- [2863]
			"23:31:34 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2864]
			"23:31:34 - OnMLDBReceived", -- [2865]
			"23:31:34 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2866]
			"23:31:34 - false = (IsCouncil) (Niseko-Stormscale)", -- [2867]
			"23:33:05 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [2868]
			"23:33:22 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2869]
			"23:33:22 - OnMLDBReceived", -- [2870]
			"23:33:22 - Comm received:^1^Scouncil^T^N1^T^N1^STigerozy-Stormscale^N2^SSpazpriest-Stormscale^N3^SReeceburton-Stormscale^N4^SReeceburton-Stormscale^N5^STigerozy-Stormscale^N6^SSpazpriest-Stormscale^N7^SSpazpriest-Stormscale^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2871]
			"23:33:22 - false = (IsCouncil) (Niseko-Stormscale)", -- [2872]
			"23:35:32 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^N1^T^Scolor^T^N1^N0^N2^N1^N3^N0^N4^N1^t^Stext^SBig^Ssort^N1^t^N2^T^Scolor^T^N1^N0.2^N2^N0.78^N3^N1^N4^N1^t^Stext^SSmall^Ssort^N2^t^N3^T^Scolor^T^N1^N1^N2^N0.15^N3^N0.28^N4^N1^t^Stext^SOffspec^Ssort^N3^t^N4^T^Scolor^T^N1^N0.7^N2^N0.7^N3^N0.7^N4^N1^t^Stext^STransmog^Ssort^N4^t^N5^T^Scolor^T^N1^N0.86^N2^N0.6^N3^N0.93^N4^N1^t^Stext^SResiduum^Ssort^N5^t^t^t^Sbuttons^T^Sdefault^T^N1^T^Stext^SGargantuan^t^N2^T^Stext^SSmoll^t^N3^T^Stext^SOffspec^t^N4^T^Stext^STransmog^t^N5^T^Stext^SResiduum^t^SnumButtons^N5^t^t^SnumButtons^N5^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2873]
			"23:35:32 - OnMLDBReceived", -- [2874]
			"23:35:32 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^SspecID^N268^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^STigerozy-Stormscale^T^Srole^STANK^SspecID^N104^Senchant_lvl^N0^Sclass^SDRUID^Srank^SOfficer^t^SKosehai-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^STrial^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^t^t^^ (from:) (Tigerozy) (distri:) (RAID)", -- [2875]
			"23:35:58 - Event: (PARTY_LEADER_CHANGED)", -- [2876]
			"23:35:58 - GetML()", -- [2877]
			"23:35:58 - Resetting council as we have a new ML!", -- [2878]
			"23:35:58 - MasterLooter =  (Reeceburton-Stormscale)", -- [2879]
			"23:35:58 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2880]
			"23:35:58 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2881]
			"23:35:58 - OnMLDBReceived", -- [2882]
			"23:35:58 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2883]
			"23:35:58 - OnMLDBReceived", -- [2884]
			"23:35:58 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2885]
			"23:35:58 - Comm received:^1^Scouncil^T^N1^T^N1^SReeceburton-Stormscale^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2886]
			"23:35:58 - false = (IsCouncil) (Niseko-Stormscale)", -- [2887]
			"23:36:08 - Comm received:^1^Scouncil^T^N1^T^N1^SReeceburton-Stormscale^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2888]
			"23:36:08 - false = (IsCouncil) (Niseko-Stormscale)", -- [2889]
			"23:36:08 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SReeceburton-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SLORDANDSAVIOUR^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SCalekk-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2890]
			"23:36:13 - Timer MLdb_check passed", -- [2891]
			"23:36:18 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [2892]
			"23:36:33 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2893]
			"23:36:33 - OnMLDBReceived", -- [2894]
			"23:36:33 - Comm received:^1^Scouncil^T^N1^T^N1^SReeceburton-Stormscale^t^t^^ (from:) (Reeceburton) (distri:) (RAID)", -- [2895]
			"23:36:33 - false = (IsCouncil) (Niseko-Stormscale)", -- [2896]
			"23:38:17 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Jíra) (distri:) (GUILD)", -- [2897]
			"23:38:25 - Event: (PARTY_LEADER_CHANGED)", -- [2898]
			"23:38:25 - GetML()", -- [2899]
			"23:38:25 - Resetting council as we have a new ML!", -- [2900]
			"23:38:25 - MasterLooter =  (Calekk-Stormscale)", -- [2901]
			"23:38:25 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2902]
			"23:38:25 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2903]
			"23:38:25 - OnMLDBReceived", -- [2904]
			"23:38:25 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2905]
			"23:38:25 - OnMLDBReceived", -- [2906]
			"23:38:25 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SCalekk-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2907]
			"23:38:25 - Comm received:^1^Scouncil^T^N1^T^N1^SCalekk-Stormscale^t^t^^ (from:) (Calekk) (distri:) (RAID)", -- [2908]
			"23:38:25 - false = (IsCouncil) (Niseko-Stormscale)", -- [2909]
			"23:38:31 - Event: (PARTY_LEADER_CHANGED)", -- [2910]
			"23:38:31 - GetML()", -- [2911]
			"23:38:31 - Resetting council as we have a new ML!", -- [2912]
			"23:38:31 - MasterLooter =  (Gingerprick-Stormscale)", -- [2913]
			"23:38:31 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2914]
			"23:38:31 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2915]
			"23:38:31 - OnMLDBReceived", -- [2916]
			"23:38:31 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2917]
			"23:38:31 - OnMLDBReceived", -- [2918]
			"23:38:31 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^Sclass^SWARLOCK^Srank^S^t^SHudzz-Stormscale^T^Srole^SDAMAGER^Sclass^SDRUID^Srank^S^t^SJíra-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SSpazpriest-Stormscale^T^Srole^SHEALER^Sclass^SPRIEST^Srank^S^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SZuto-Stormscale^T^Srole^SDAMAGER^Sclass^SWARRIOR^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^SZulgara-Stormscale^T^Srole^SDAMAGER^Sclass^SHUNTER^Srank^S^t^SFluke-Stormscale^T^Srole^SDAMAGER^Sclass^SDEMONHUNTER^Srank^S^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^Sclass^SROGUE^Srank^S^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^Sclass^SMONK^Srank^S^t^SNâte-Stormscale^T^Srole^SDAMAGER^Sclass^SMAGE^Srank^S^t^SKhunee-Stormscale^T^Srole^SDAMAGER^Sclass^SPALADIN^Srank^S^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2919]
			"23:38:31 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2920]
			"23:38:31 - false = (IsCouncil) (Niseko-Stormscale)", -- [2921]
			"23:38:32 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2922]
			"23:38:32 - false = (IsCouncil) (Niseko-Stormscale)", -- [2923]
			"23:38:40 - Timer MLdb_check passed", -- [2924]
			"23:38:41 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2925]
			"23:38:41 - false = (IsCouncil) (Niseko-Stormscale)", -- [2926]
			"23:38:41 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SZuto-Stormscale^T^Srole^SDAMAGER^SspecID^N72^Senchant_lvl^N0^Sclass^SWARRIOR^Srank^SRaider^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2927]
			"23:38:46 - Timer MLdb_check passed", -- [2928]
			"23:40:35 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Kosehai) (distri:) (GUILD)", -- [2929]
			"23:40:50 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2930]
			"23:40:50 - OnMLDBReceived", -- [2931]
			"23:40:50 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2932]
			"23:40:50 - false = (IsCouncil) (Niseko-Stormscale)", -- [2933]
			"23:45:22 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ozyorkbourne) (distri:) (GUILD)", -- [2934]
			"23:46:24 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2935]
			"23:46:24 - OnMLDBReceived", -- [2936]
			"23:46:24 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2937]
			"23:52:32 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2938]
			"23:52:32 - OnMLDBReceived", -- [2939]
			"23:52:32 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SJíra-Stormscale^T^Srole^SDAMAGER^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^STrial^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2940]
			"23:54:34 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2941]
			"23:54:34 - OnMLDBReceived", -- [2942]
			"23:54:34 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SHudzz-Stormscale^T^Srole^SDAMAGER^SspecID^N102^Senchant_lvl^N0^Sclass^SDRUID^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2943]
			"23:55:39 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Deffrogue) (distri:) (GUILD)", -- [2944]
			"23:55:43 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Fluke) (distri:) (GUILD)", -- [2945]
			"23:55:54 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2946]
			"23:55:54 - OnMLDBReceived", -- [2947]
			"23:55:54 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SFluke-Stormscale^T^Srole^SDAMAGER^SspecID^N577^Senchant_lvl^N0^Sclass^SDEMONHUNTER^Srank^SRaider^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2948]
			"23:55:55 - Comm received:^1^Scouncil^T^N1^T^N1^SGingerprick-Stormscale^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2949]
			"23:55:55 - false = (IsCouncil) (Niseko-Stormscale)", -- [2950]
			"23:57:41 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2951]
			"23:57:41 - OnMLDBReceived", -- [2952]
			"23:57:41 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SBfaistrash-Stormscale^T^Srole^SDAMAGER^SspecID^N269^Senchant_lvl^N0^Sclass^SMONK^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2953]
			"00:08:09 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zariis) (distri:) (GUILD)", -- [2954]
			"00:10:40 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [2955]
			"00:13:25 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [2956]
			"00:13:45 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2957]
			"00:13:45 - OnMLDBReceived", -- [2958]
			"00:13:45 - Comm received:^1^Scandidates^T^N1^T^SGinsu-Stormscale^T^Srole^SDAMAGER^SspecID^N266^Senchant_lvl^N0^Sclass^SWARLOCK^Srank^SRaider^t^SSpazpriest-Stormscale^T^Srole^SHEALER^SspecID^N256^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SGuild~`Master^t^STigerpal-Stormscale^T^Srole^STANK^Sclass^SMONK^Srank^S^t^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^SZulgara-Stormscale^T^Srole^SDAMAGER^SspecID^N254^Senchant_lvl^N0^Sclass^SHUNTER^Srank^STrial^t^SDeffrogue-Stormscale^T^Srole^SDAMAGER^SspecID^N259^Senchant_lvl^N0^Sclass^SROGUE^Srank^SRaider^t^SNâte-Stormscale^T^Srole^SDAMAGER^SspecID^N63^Senchant_lvl^N0^Sclass^SMAGE^Srank^SRaider^t^SKhunee-Stormscale^T^Srole^SDAMAGER^SspecID^N70^Senchant_lvl^N0^Sclass^SPALADIN^Srank^SRaider^t^SKosehai-Stormscale^T^Srole^SDAMAGER^Sclass^SPRIEST^Srank^S^t^SGingerprick-Stormscale^T^Srole^SDAMAGER^SspecID^N258^Senchant_lvl^N0^Sclass^SPRIEST^Srank^SOfficer^t^t^t^^ (from:) (Gingerprick) (distri:) (RAID)", -- [2959]
			"00:19:35 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [2960]
			"00:21:36 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2961]
			"00:21:36 - GetML()", -- [2962]
			"00:22:06 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [2963]
			"00:22:06 - GetML()", -- [2964]
			"02/21/19", -- [2965]
			"18:48:10 - Logged In", -- [2966]
			"18:48:10 - ML initialized!", -- [2967]
			"18:48:10 - TradeUI enabled", -- [2968]
			"18:48:20 - Niseko-Stormscale (2.10.0) (nil)", -- [2969]
			"18:48:20 - ActivateSkin (bfa)", -- [2970]
			"18:48:22 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2971]
			"18:48:22 - GetML()", -- [2972]
			"18:48:22 - UpdatePlayersData()", -- [2973]
			"18:48:24 - GetPlayersGuildRank()", -- [2974]
			"18:48:24 - Found Guild Rank: Raider", -- [2975]
			"18:48:25 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2976]
			"18:50:45 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zuto) (distri:) (GUILD)", -- [2977]
			"02/21/19", -- [2978]
			"21:51:16 - Logged In", -- [2979]
			"21:51:16 - ML initialized!", -- [2980]
			"21:51:16 - TradeUI enabled", -- [2981]
			"21:51:22 - Niseko-Stormscale (2.10.0) (nil)", -- [2982]
			"21:51:22 - ActivateSkin (bfa)", -- [2983]
			"21:51:25 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [2984]
			"21:51:25 - GetML()", -- [2985]
			"21:51:25 - UpdatePlayersData()", -- [2986]
			"21:51:27 - GetPlayersGuildRank()", -- [2987]
			"21:51:27 - Found Guild Rank: Raider", -- [2988]
			"21:51:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazharorc) (distri:) (GUILD)", -- [2989]
			"21:51:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [2990]
			"21:51:30 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Xuro) (distri:) (GUILD)", -- [2991]
			"21:56:26 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zuto) (distri:) (GUILD)", -- [2992]
			"21:56:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Ginsu) (distri:) (GUILD)", -- [2993]
			"21:57:09 - Event: (PARTY_LEADER_CHANGED)", -- [2994]
			"21:57:09 - GetML()", -- [2995]
			"21:57:09 - Resetting council as we have a new ML!", -- [2996]
			"21:57:09 - MasterLooter =  (Niseko-Stormscale)", -- [2997]
			"21:57:09 - GetCouncilInGroup (Niseko-Stormscale)", -- [2998]
			"21:57:09 - ML:NewML (Niseko-Stormscale)", -- [2999]
			"21:57:09 - UpdateMLdb", -- [3000]
			"21:57:09 - OnMLDBReceived", -- [3001]
			"21:57:09 - UpdateGroup (true)", -- [3002]
			"21:57:09 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [3003]
			"21:57:09 - GetCouncilInGroup (Niseko-Stormscale)", -- [3004]
			"21:57:09 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [3005]
			"21:57:10 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [3006]
			"21:57:10 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [3007]
			"21:57:10 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [3008]
			"21:57:10 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (PARTY)", -- [3009]
			"21:57:10 - true = (IsCouncil) (Niseko-Stormscale)", -- [3010]
			"21:57:10 - GetLootDBStatistics()", -- [3011]
			"21:57:10 - GetGuildRankNum()", -- [3012]
			"21:57:10 - RCVotingFrame (enabled)", -- [3013]
			"21:57:10 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SHEALER^N4^SRaider^N6^N0^N7^N414.6875^N8^N264^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [3014]
			"21:57:10 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (414.6875) (264)", -- [3015]
			"21:57:19 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3016]
			"21:57:19 - true = (IsCouncil) (Niseko-Stormscale)", -- [3017]
			"21:57:19 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3018]
			"21:57:25 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (468154) (1) (0)", -- [3019]
			"21:57:26 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [3020]
			"21:57:26 - GetML()", -- [3021]
			"21:57:28 - UpdateGroup (table: 00000248331CA710)", -- [3022]
			"21:57:28 - Timer MLdb_check passed", -- [3023]
			"21:57:29 - VotingFrame:Update() without lootTable!!", -- [3024]
			"21:57:50 - Player declined usage", -- [3025]
			"21:58:37 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [3026]
			"21:58:37 - GetML()", -- [3027]
			"21:58:39 - VotingFrame:Update() without lootTable!!", -- [3028]
			"02/21/19", -- [3029]
			"21:59:20 - Logged In", -- [3030]
			"21:59:20 - ML initialized!", -- [3031]
			"21:59:20 - TradeUI enabled", -- [3032]
			"21:59:27 - Niseko-Stormscale (2.10.0) (nil)", -- [3033]
			"21:59:27 - ActivateSkin (bfa)", -- [3034]
			"21:59:29 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [3035]
			"21:59:29 - GetML()", -- [3036]
			"21:59:29 - UpdatePlayersData()", -- [3037]
			"21:59:29 - Event: (PARTY_LEADER_CHANGED)", -- [3038]
			"21:59:29 - GetML()", -- [3039]
			"21:59:29 - Resetting council as we have a new ML!", -- [3040]
			"21:59:29 - MasterLooter =  (Niseko-Stormscale)", -- [3041]
			"21:59:29 - GetCouncilInGroup (Niseko-Stormscale)", -- [3042]
			"21:59:29 - ML:NewML (Niseko-Stormscale)", -- [3043]
			"21:59:29 - UpdateMLdb", -- [3044]
			"21:59:29 - OnMLDBReceived", -- [3045]
			"21:59:29 - UpdateGroup (true)", -- [3046]
			"21:59:29 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (nil) (nil) (nil) (nil) (nil)", -- [3047]
			"21:59:29 - GetCouncilInGroup (Niseko-Stormscale)", -- [3048]
			"21:59:31 - GetPlayersGuildRank()", -- [3049]
			"21:59:31 - Found Guild Rank: Raider", -- [3050]
			"21:59:31 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [3051]
			"21:59:31 - Comm received:^1^SplayerInfoRequest^T^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3052]
			"21:59:32 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3053]
			"21:59:33 - ML:AddCandidate (Niseko-Stormscale) (SHAMAN) (HEALER) (Raider) (nil) (0) (414.6875) (264)", -- [3054]
			"21:59:33 - Comm received:^1^SplayerInfo^T^N1^SNiseko-Stormscale^N2^SSHAMAN^N3^SHEALER^N4^SRaider^N6^N0^N7^N414.6875^N8^N264^t^^ (from:) (Niseko) (distri:) (WHISPER)", -- [3055]
			"21:59:33 - Comm received:^1^SMLdb^T^N1^T^SallowNotes^B^Stimeout^N60^SselfVote^B^Sresponses^T^Sdefault^T^t^t^SmultiVote^B^Sbuttons^T^Sdefault^T^SnumButtons^N3^t^t^SnumButtons^N3^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3056]
			"21:59:33 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^Sclass^SSHAMAN^Srank^S^t^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3057]
			"21:59:33 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3058]
			"21:59:33 - true = (IsCouncil) (Niseko-Stormscale)", -- [3059]
			"21:59:33 - GetLootDBStatistics()", -- [3060]
			"21:59:33 - GetGuildRankNum()", -- [3061]
			"21:59:33 - RCVotingFrame (enabled)", -- [3062]
			"21:59:37 - Comm received:^1^Scouncil^T^N1^T^N1^SNiseko-Stormscale^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3063]
			"21:59:37 - true = (IsCouncil) (Niseko-Stormscale)", -- [3064]
			"21:59:37 - Comm received:^1^Scandidates^T^N1^T^SNiseko-Stormscale^T^Srole^SHEALER^SspecID^N264^Senchant_lvl^N0^Sclass^SSHAMAN^Srank^SRaider^t^t^t^^ (from:) (Niseko) (distri:) (RAID)", -- [3065]
			"21:59:41 - Player declined usage", -- [3066]
			"21:59:41 - Timer MLdb_check passed", -- [3067]
			"21:59:49 - Event: (RAID_INSTANCE_WELCOME) (Battle of Dazar'alor (Mythic)) (468010) (1) (0)", -- [3068]
			"21:59:49 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [3069]
			"21:59:49 - GetML()", -- [3070]
			"21:59:51 - VotingFrame:Update() without lootTable!!", -- [3071]
			"22:00:00 - Player declined usage", -- [3072]
			"22:00:23 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gjira) (distri:) (GUILD)", -- [3073]
			"22:00:35 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [3074]
			"22:00:35 - GetML()", -- [3075]
			"22:00:37 - VotingFrame:Update() without lootTable!!", -- [3076]
			"22:01:06 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Gjira) (distri:) (GUILD)", -- [3077]
			"02/22/19", -- [3078]
			"15:13:35 - Logged In", -- [3079]
			"15:13:35 - ML initialized!", -- [3080]
			"15:13:35 - TradeUI enabled", -- [3081]
			"15:13:46 - Niseko-Stormscale (2.10.0) (nil)", -- [3082]
			"15:13:46 - ActivateSkin (bfa)", -- [3083]
			"15:13:48 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [3084]
			"15:13:48 - GetML()", -- [3085]
			"15:13:48 - UpdatePlayersData()", -- [3086]
			"15:13:50 - GetPlayersGuildRank()", -- [3087]
			"15:13:50 - Found Guild Rank: Raider", -- [3088]
			"15:13:51 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [3089]
			"15:17:44 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [3090]
			"15:17:44 - GetML()", -- [3091]
			"15:19:27 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Hudzz) (distri:) (GUILD)", -- [3092]
			"02/22/19", -- [3093]
			"18:53:40 - Logged In", -- [3094]
			"18:53:40 - ML initialized!", -- [3095]
			"18:53:40 - TradeUI enabled", -- [3096]
			"18:53:45 - Niseko-Stormscale (2.10.0) (nil)", -- [3097]
			"18:53:45 - ActivateSkin (bfa)", -- [3098]
			"18:53:47 - Event: (PLAYER_ENTERING_WORLD) (true) (false)", -- [3099]
			"18:53:47 - GetML()", -- [3100]
			"18:53:47 - UpdatePlayersData()", -- [3101]
			"18:53:49 - GetPlayersGuildRank()", -- [3102]
			"18:53:49 - Found Guild Rank: Raider", -- [3103]
			"18:53:49 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Niseko) (distri:) (GUILD)", -- [3104]
			"18:55:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Lyllot) (distri:) (GUILD)", -- [3105]
			"18:56:26 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Craigshilo) (distri:) (GUILD)", -- [3106]
			"18:57:59 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceburton) (distri:) (GUILD)", -- [3107]
			"18:58:27 - Comm received:^1^SverTest^T^N1^S2.9.4^t^^ (from:) (Bfaistrash) (distri:) (GUILD)", -- [3108]
			"18:59:28 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Shaggedurdad) (distri:) (GUILD)", -- [3109]
			"19:02:56 - Event: (PLAYER_ENTERING_WORLD) (false) (false)", -- [3110]
			"19:02:56 - GetML()", -- [3111]
			"19:03:21 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyburton) (distri:) (GUILD)", -- [3112]
			"19:12:11 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Spazpriest) (distri:) (GUILD)", -- [3113]
			"19:12:42 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Reeceyboy) (distri:) (GUILD)", -- [3114]
			"19:15:33 - Comm received:^1^SverTest^T^N1^S2.10.0^t^^ (from:) (Zinkos) (distri:) (GUILD)", -- [3115]
		},
		["version"] = "2.10.0",
		["locale"] = "enUS",
		["verTestCandidates"] = {
			["Gingerslåyer-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550616968, -- [3]
			},
			["Dyong-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Zrs-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550423649, -- [3]
			},
			["Zariis-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550704775, -- [3]
			},
			["Xirips-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550320934, -- [3]
			},
			["Titanslayer-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550322824, -- [3]
			},
			["Pølsepaketet-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550101390, -- [3]
			},
			["Strahd-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1549920582, -- [3]
			},
			["Boomtastíc-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550689766, -- [3]
			},
			["Spazsham-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550403713, -- [3]
			},
			["Reeceyburton-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858601, -- [3]
			},
			["Nâte-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550703343, -- [3]
			},
			["Xeremage-Stormscale"] = {
				"2.9.7", -- [1]
				nil, -- [2]
				1550011297, -- [3]
			},
			["Deffrogue-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550704775, -- [3]
			},
			["Zulgara-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550704775, -- [3]
			},
			["Zulshifts-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550445879, -- [3]
			},
			["Reeceburton-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858368, -- [3]
			},
			["Húddz-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550445879, -- [3]
			},
			["Bfaistrash-Stormscale"] = {
				"2.9.4", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Hûddz-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550068756, -- [3]
			},
			["Calekk-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Lyllotdh-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Valdura-Stormscale"] = {
				"2.9.7", -- [1]
				nil, -- [2]
				1550088486, -- [3]
			},
			["Khunee-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Yunwa-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Niseko-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Craigshilo-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858307, -- [3]
			},
			["Soulcampbell-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550163363, -- [3]
			},
			["Ginsu-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Lyllotwarr-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550509876, -- [3]
			},
			["Spazharorc-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Feisty-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550521789, -- [3]
			},
			["Seor-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Xireece-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858186, -- [3]
			},
			["Spazdruid-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550449756, -- [3]
			},
			["Spazmonk-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550404127, -- [3]
			},
			["Spazlock-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550845167, -- [3]
			},
			["Lyllotdruid-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550510593, -- [3]
			},
			["Waake-Stormscale"] = {
				"2.9.7", -- [1]
				nil, -- [2]
				1550102694, -- [3]
			},
			["Ozyelfbourne-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550607967, -- [3]
			},
			["Ozyorkbourne-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550844831, -- [3]
			},
			["Cutenee-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550845167, -- [3]
			},
			["Spazpala-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550510593, -- [3]
			},
			["Hudzz-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550845167, -- [3]
			},
			["Lyllot-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858307, -- [3]
			},
			["Gingerprick-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550771445, -- [3]
			},
			["Thirtyseven-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858142, -- [3]
			},
			["Guppydk-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550007826, -- [3]
			},
			["Gjira-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Zeness-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550845167, -- [3]
			},
			["Xerethars-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550689766, -- [3]
			},
			["Hudz-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550163363, -- [3]
			},
			["Zuto-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Satadin-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550334053, -- [3]
			},
			["Spazpriest-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Kosewai-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Notdan-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Mystch-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Jinnsu-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550083476, -- [3]
			},
			["Spazmage-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550159650, -- [3]
			},
			["Seorek-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550699340, -- [3]
			},
			["Hûdz-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550449756, -- [3]
			},
			["Guppymage-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550509587, -- [3]
			},
			["Reecemankey-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550845167, -- [3]
			},
			["Jíra-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550704406, -- [3]
			},
			["Guppymonkas-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550008465, -- [3]
			},
			["Shaggedurdad-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858601, -- [3]
			},
			["Tigerpal-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Valdurachi-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550845167, -- [3]
			},
			["Zinkos-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Reeceyboy-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550859333, -- [3]
			},
			["Tigerozy-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550782866, -- [3]
			},
			["Sybør-Stormscale"] = {
				"2.9.4", -- [1]
				nil, -- [2]
				1550311847, -- [3]
			},
			["Fluke-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550704775, -- [3]
			},
			["Heritageples-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550403486, -- [3]
			},
			["Xuro-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550858186, -- [3]
			},
			["Kosehai-Stormscale"] = {
				"2.10.0", -- [1]
				nil, -- [2]
				1550702722, -- [3]
			},
			["Pepegaclass-Stormscale"] = {
				"2.9.4", -- [1]
				nil, -- [2]
				1550858030, -- [3]
			},
		},
	},
	["profiles"] = {
		["Default"] = {
			["UI"] = {
				["tradeui"] = {
					["bgColor"] = {
						0.55, -- [1]
						0.84, -- [2]
						1, -- [3]
					},
					["x"] = -293.999845183651,
					["borderColor"] = {
						0.62, -- [1]
						0.86, -- [2]
						0.87, -- [3]
						0.85, -- [4]
					},
					["scale"] = 1.10000002384186,
					["background"] = "Blizzard Garrison Background 3",
					["border"] = "Blizzard Dialog",
					["y"] = -10.0002540153109,
				},
				["lootframe"] = {
					["bgColor"] = {
						0.55, -- [1]
						0.84, -- [2]
						1, -- [3]
					},
					["x"] = -240.499853733883,
					["point"] = "RIGHT",
					["borderColor"] = {
						0.62, -- [1]
						0.86, -- [2]
						0.87, -- [3]
						0.85, -- [4]
					},
					["scale"] = 1.10000002384186,
					["background"] = "Blizzard Garrison Background 3",
					["border"] = "Blizzard Dialog",
					["y"] = -12.0001640318023,
				},
				["default"] = {
					["bgColor"] = {
						0.55, -- [1]
						0.84, -- [2]
						1, -- [3]
					},
					["borderColor"] = {
						0.62, -- [1]
						0.86, -- [2]
						0.87, -- [3]
						0.85, -- [4]
					},
					["background"] = "Blizzard Garrison Background 3",
					["border"] = "Blizzard Dialog",
				},
			},
		},
	},
}
RCLootCouncilLootDB = {
	["profileKeys"] = {
		["Nisefy - Stormscale"] = "Nisefy - Stormscale",
		["Valdurawr - Stormscale"] = "Valdurawr - Stormscale",
		["Yvera - Moonglade"] = "Yvera - Moonglade",
		["Niseko - Stormscale"] = "Niseko - Stormscale",
		["Nisepie - Stormscale"] = "Nisepie - Stormscale",
		["Yoshicakes - Stormscale"] = "Yoshicakes - Stormscale",
		["Seko - Stormscale"] = "Seko - Stormscale",
		["Purrmeow - Twisting Nether"] = "Purrmeow - Twisting Nether",
		["Niseko - Twisting Nether"] = "Niseko - Twisting Nether",
		["Nyanporo - Blackmoore"] = "Nyanporo - Blackmoore",
		["Nisearw - Stormscale"] = "Nisearw - Stormscale",
	},
	["factionrealm"] = {
		["Horde - Stormscale"] = {
			["Ginsu-Stormscale"] = {
				{
					["mapID"] = 1862,
					["instance"] = "Waycrest Manor-Mythic Keystone",
					["class"] = "WARLOCK",
					["date"] = "31/01/19",
					["owner"] = "Ginsu-Stormscale",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Gorak Tul",
					["time"] = "16:28:41",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159262::::::::120:266::16:3:5010:1577:4783:::|h[Belt of Undying Devotion]|h|r",
					["responseID"] = "PL",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["id"] = "1548944921-1",
				}, -- [1]
				{
					["mapID"] = 1763,
					["instance"] = "Atal'Dazar-Mythic Keystone",
					["class"] = "WARLOCK",
					["date"] = "31/01/19",
					["owner"] = "Ginsu-Stormscale",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Yazma",
					["time"] = "18:00:54",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:158322::::::::120:266::16:3:5010:1572:4786:::|h[Aureus Vessel]|h|r",
					["responseID"] = "PL",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["id"] = "1548950454-1",
				}, -- [2]
			},
			["Zulgara-Stormscale"] = {
				{
					["mapID"] = 1841,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The Underrot-Mythic Keystone",
					["date"] = "30/01/19",
					["owner"] = "Zulgara-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "07:55:33",
					["boss"] = "Unbound Abomination",
					["lootWon"] = "|cffa335ee|Hitem:159384::::::::120:253::16:3:5010:1597:4784:::|h[Corpuscular Greaves]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "HUNTER",
					["id"] = "1548834933-0",
				}, -- [1]
				{
					["mapID"] = 1754,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Freehold-Mythic Keystone",
					["date"] = "30/01/19",
					["owner"] = "Zulgara-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "08:27:29",
					["boss"] = "Lord Harlan Sweete",
					["lootWon"] = "|cffa335ee|Hitem:159353::::::::120:253::16:4:5010:4802:1572:4786:::|h[Chain-Linked Safety Cord]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "HUNTER",
					["id"] = "1548836849-3",
				}, -- [2]
				{
					["mapID"] = 1594,
					["instance"] = "The MOTHERLODE!!-Mythic Keystone",
					["date"] = "01/02/19",
					["id"] = "1549052712-0",
					["class"] = "HUNTER",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:159612::::::::120:253::16:3:5010:1582:4783:::|h[Azerokk's Resonating Heart]|h|r",
					["difficultyID"] = 8,
					["time"] = "22:25:12",
					["isAwardReason"] = false,
					["boss"] = "Mogul Razdunk",
					["responseID"] = "PL",
					["owner"] = "Zulgara-Stormscale",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [3]
			},
			["Xerethars-Stormscale"] = {
				{
					["mapID"] = 1864,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Shrine of the Storm-Mythic Keystone",
					["date"] = "31/01/19",
					["owner"] = "Xerethars-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "23:55:45",
					["boss"] = "Vol'zith the Whisperer",
					["lootWon"] = "|cffa335ee|Hitem:159426::::::::120:251::16:4:5010:40:1577:4783:::|h[Belt of the Unrelenting Gale]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "DEATHKNIGHT",
					["id"] = "1548978945-0",
				}, -- [1]
			},
			["Buffww-Stormscale"] = {
				{
					["mapID"] = 1754,
					["date"] = "30/01/19",
					["owner"] = "Buffww-Stormscale",
					["id"] = "1548841398-2",
					["class"] = "MONK",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Ring of Booty",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:155884::::::::120:269::16:3:5010:1572:4786:::|h[Parrotfeather Cloak]|h|r",
					["isAwardReason"] = false,
					["time"] = "11:43:18",
					["responseID"] = "PL",
					["instance"] = "Freehold-Mythic Keystone",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [1]
			},
			["Zuto-Stormscale"] = {
				{
					["mapID"] = 1862,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Waycrest Manor-Mythic Keystone",
					["date"] = "05/02/19",
					["owner"] = "Zuto-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "23:52:32",
					["boss"] = "Gorak Tul",
					["lootWon"] = "|cffa335ee|Hitem:159456::::::::120:73::16:3:5010:1582:4783:::|h[Petrified Wickerplate Greaves]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "WARRIOR",
					["id"] = "1549403552-0",
				}, -- [1]
			},
			["Zariis-Stormscale"] = {
				{
					["mapID"] = 2070,
					["id"] = "1548791089-1",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Battle of Dazar'alor-Heroic",
					["class"] = "DRUID",
					["groupSize"] = 25,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:165833::::::::120:103::5:4:4823:1522:4786:5416:::|h[Vestments of Indomitable Will]|h|r",
					["difficultyID"] = 15,
					["time"] = "19:44:49",
					["isAwardReason"] = false,
					["boss"] = "Conclave of the Chosen",
					["responseID"] = "PL",
					["owner"] = "Zariis-Stormscale",
					["date"] = "29/01/19",
				}, -- [1]
				{
					["mapID"] = 1754,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Zariis-Stormscale",
					["instance"] = "Freehold-Mythic Keystone",
					["class"] = "DRUID",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Lord Harlan Sweete",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:155881::::::::120:103::16:3:5010:1577:4783:::|h[Harlan's Loaded Dice]|h|r",
					["isAwardReason"] = false,
					["time"] = "00:30:40",
					["responseID"] = "PL",
					["id"] = "1549153840-3",
					["date"] = "03/02/19",
				}, -- [2]
				{
					["mapID"] = 1841,
					["instance"] = "The Underrot-Mythic Keystone",
					["date"] = "03/02/19",
					["id"] = "1549159628-4",
					["class"] = "DRUID",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:159624::::::::120:103::16:3:5010:1577:4783:::|h[Rotcrusted Voodoo Doll]|h|r",
					["difficultyID"] = 8,
					["time"] = "02:07:08",
					["isAwardReason"] = false,
					["boss"] = "Unbound Abomination",
					["responseID"] = "PL",
					["owner"] = "Zariis-Stormscale",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [3]
			},
			["Hudzz-Stormscale"] = {
				{
					["mapID"] = 1763,
					["date"] = "13/02/19",
					["id"] = "1550101231-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Hudzz-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "23:40:31",
					["boss"] = "Yazma",
					["lootWon"] = "|cffa335ee|Hitem:158306::::::::120:102::16:4:5010:42:1587:4784:::|h[Belt of Gleaming Determination]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "DRUID",
					["instance"] = "Atal'Dazar-Mythic Keystone",
				}, -- [1]
			},
			["Ozyorkbourne-Stormscale"] = {
				{
					["mapID"] = 1763,
					["date"] = "13/02/19",
					["id"] = "1550101233-1",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Ozyorkbourne-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "23:40:33",
					["boss"] = "Yazma",
					["lootWon"] = "|cffa335ee|Hitem:160212::::::::120:72::16:3:5010:1587:4784:::|h[Shadowshroud Vambraces]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "WARRIOR",
					["instance"] = "Atal'Dazar-Mythic Keystone",
				}, -- [1]
			},
			["Húddz-Stormscale"] = {
				{
					["mapID"] = 1754,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Freehold-Mythic Keystone",
					["date"] = "01/02/19",
					["owner"] = "Húddz-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "02:27:16",
					["boss"] = "Lord Harlan Sweete",
					["lootWon"] = "|cffa335ee|Hitem:158314::::::::120:259::16:5:5010:4802:42:1572:4786:::|h[Seal of Questionable Loyalties]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "ROGUE",
					["id"] = "1548980836-2",
				}, -- [1]
			},
			["Jíra-Stormscale"] = {
				{
					["mapID"] = 1877,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Jíra-Stormscale",
					["instance"] = "Temple of Sethraliss-Mythic Keystone",
					["class"] = "SHAMAN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Avatar of Sethraliss",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:159388::::::::120:264::16:4:5010:43:1577:4783:::|h[Sabatons of Coruscating Energy]|h|r",
					["isAwardReason"] = false,
					["time"] = "14:06:27",
					["responseID"] = "PL",
					["id"] = "1549461987-0",
					["date"] = "06/02/19",
				}, -- [1]
			},
			["Rampagejix-TwistingNether"] = {
				{
					["mapID"] = 1861,
					["date"] = "20/12/18",
					["instance"] = "Uldir-Mythic",
					["class"] = "WARRIOR",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 20,
					["time"] = "20:21:58",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:160636::::::::120:262::6:4:4824:1507:4786:5401:::|h[Chestguard of Virulent Mutagens]|h|r",
					["boss"] = "Vectis",
					["difficultyID"] = 16,
					["responseID"] = "PL",
					["id"] = "1545330118-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [1]
			},
			["Sélélava-Ysondre"] = {
				{
					["mapID"] = 1861,
					["date"] = "20/01/19",
					["instance"] = "Uldir-Heroic",
					["class"] = "SHAMAN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 28,
					["time"] = "15:38:40",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:160656::::::::120:253::5:3:4799:1492:4786:::|h[Twitching Tentacle of Xalzaix]|h|r",
					["boss"] = "Mythrax",
					["difficultyID"] = 15,
					["responseID"] = "PL",
					["id"] = "1547991520-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [1]
			},
			["Valdura-Stormscale"] = {
				{
					["mapID"] = 1594,
					["id"] = "1549384281-2",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The MOTHERLODE!!-Mythic Keystone",
					["class"] = "SHAMAN",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:159287::::::::120:264::16:3:5010:1572:4786:::|h[Cloak of Questionable Intent]|h|r",
					["difficultyID"] = 8,
					["time"] = "16:31:21",
					["isAwardReason"] = false,
					["boss"] = "Mogul Razdunk",
					["responseID"] = "PL",
					["owner"] = "Valdura-Stormscale",
					["date"] = "05/02/19",
				}, -- [1]
			},
			["Khunee-Stormscale"] = {
				{
					["mapID"] = 1841,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The Underrot-Mythic Keystone",
					["date"] = "30/01/19",
					["owner"] = "Khunee-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "07:55:34",
					["boss"] = "Unbound Abomination",
					["lootWon"] = "|cffa335ee|Hitem:159410::::::::120:70::16:3:5010:1582:4783:::|h[Zancha's Venerated Greatbelt]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "PALADIN",
					["id"] = "1548834934-1",
				}, -- [1]
				{
					["mapID"] = 1754,
					["date"] = "30/01/19",
					["owner"] = "Khunee-Stormscale",
					["id"] = "1548841388-0",
					["class"] = "PALADIN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Ring of Booty",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:155884::::::::120:66::16:3:5010:1592:4784:::|h[Parrotfeather Cloak]|h|r",
					["isAwardReason"] = false,
					["time"] = "11:43:08",
					["responseID"] = "PL",
					["instance"] = "Freehold-Mythic Keystone",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [2]
				{
					["mapID"] = 1841,
					["date"] = "30/01/19",
					["owner"] = "Khunee-Stormscale",
					["id"] = "1548846368-3",
					["class"] = "PALADIN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Unbound Abomination",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:159436::::::::120:66::16:3:5010:1572:4786:::|h[Fluorescent Flora Stompers]|h|r",
					["isAwardReason"] = false,
					["time"] = "13:06:08",
					["responseID"] = "PL",
					["instance"] = "The Underrot-Mythic Keystone",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [3]
				{
					["mapID"] = 1862,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Waycrest Manor-Mythic Keystone",
					["date"] = "05/02/19",
					["owner"] = "Khunee-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "23:52:44",
					["boss"] = "Gorak Tul",
					["lootWon"] = "|cffa335ee|Hitem:159457::::::::120:70::16:3:5010:1592:4784:::|h[Risen Lord's Oversized Gauntlets]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "PALADIN",
					["id"] = "1549403564-1",
				}, -- [4]
			},
			["Pinkup-TwistingNether"] = {
				{
					["mapID"] = 1861,
					["date"] = "20/12/18",
					["instance"] = "Uldir-Mythic",
					["class"] = "PRIEST",
					["id"] = "1545329060-1",
					["groupSize"] = 20,
					["lootWon"] = "|cffa335ee|Hitem:160647::::::::120:262::6:3:4800:1507:4786:::|h[Ring of the Infinite Void]|h|r",
					["isAwardReason"] = false,
					["time"] = "20:04:20",
					["difficultyID"] = 16,
					["boss"] = "Zek'voz",
					["responseID"] = "PL",
					["response"] = "Personal Loot - Non tradeable",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [1]
			},
			["Nimbro-TwistingNether"] = {
				{
					["mapID"] = 1861,
					["date"] = "20/12/18",
					["instance"] = "Uldir-Mythic",
					["class"] = "SHAMAN",
					["id"] = "1545329062-2",
					["groupSize"] = 20,
					["lootWon"] = "|cffa335ee|Hitem:160633::::::::120:262::6:3:4800:1507:4786:::|h[Titanspark Energy Girdle]|h|r",
					["isAwardReason"] = false,
					["time"] = "20:04:22",
					["difficultyID"] = 16,
					["boss"] = "Zek'voz",
					["responseID"] = "PL",
					["response"] = "Personal Loot - Non tradeable",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [1]
			},
			["Hudzsp-Stormscale"] = {
				{
					["mapID"] = 1841,
					["instance"] = "The Underrot-Mythic",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["class"] = "PRIEST",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["time"] = "13:37:17",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159269::::::::120:66::23:3:4779:1512:4786:::|h[Darklight Legwarmers]|h|r",
					["boss"] = "Cragmaw the Infested",
					["difficultyID"] = 23,
					["responseID"] = "PL",
					["id"] = "1546263437-0",
					["date"] = "31/12/18",
				}, -- [1]
			},
			["Hudz-Stormscale"] = {
				{
					["mapID"] = 1822,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Siege of Boralus-Mythic Keystone",
					["date"] = "01/02/19",
					["owner"] = "Hudz-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "01:53:49",
					["boss"] = "Viq'Goth",
					["lootWon"] = "|cffa335ee|Hitem:159309::::::::120:577::16:3:5010:1572:4786:::|h[Port Pillager's Belt]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "DEMONHUNTER",
					["id"] = "1548978829-0",
				}, -- [1]
				{
					["mapID"] = 1841,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The Underrot-Mythic Keystone",
					["date"] = "01/02/19",
					["owner"] = "Hudz-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "03:06:39",
					["boss"] = "Unbound Abomination",
					["lootWon"] = "|cffa335ee|Hitem:159324::::::::120:577::16:4:5010:4802:1572:4786:::|h[Blood Elder's Bindings]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "DEMONHUNTER",
					["id"] = "1548983199-4",
				}, -- [2]
			},
			["Gjira-Stormscale"] = {
				{
					["mapID"] = 1754,
					["date"] = "30/01/19",
					["owner"] = "Gjira-Stormscale",
					["id"] = "1548841394-1",
					["class"] = "PALADIN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Ring of Booty",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:158311::::::::120:65::16:3:5010:1572:4786:::|h[Concealed Fencing Plates]|h|r",
					["isAwardReason"] = false,
					["time"] = "11:43:14",
					["responseID"] = "PL",
					["instance"] = "Freehold-Mythic Keystone",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [1]
			},
			["Niseko-Stormscale"] = {
				{
					["mapID"] = 1861,
					["instance"] = "Uldir-Heroic",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["class"] = "SHAMAN",
					["id"] = "1547222158-0",
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:160626::::::::120:259::5:3:4799:1512:4784:::|h[Gloves of Involuntary Amputation]|h|r",
					["isAwardReason"] = false,
					["time"] = "19:55:58",
					["difficultyID"] = 15,
					["boss"] = "MOTHER",
					["responseID"] = "PL",
					["groupSize"] = 20,
					["date"] = "11/01/19",
				}, -- [1]
				{
					["mapID"] = 1771,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["date"] = "25/01/19",
					["class"] = "SHAMAN",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "21:05:33",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159615::::::::120:268::16:3:5005:1562:4783:::|h[Ignition Mage's Fuse]|h|r",
					["boss"] = "Overseer Korgus",
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["id"] = "1548443133-2",
					["instance"] = "Tol Dagor-Mythic Keystone",
				}, -- [2]
				{
					["mapID"] = 1763,
					["date"] = "30/01/19",
					["instance"] = "Atal'Dazar-Mythic Keystone",
					["class"] = "SHAMAN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["time"] = "00:18:42",
					["isAwardReason"] = false,
					["lootWon"] = "|cff0070dd|Hitem:159841::::::::120:64::16::::|h[Tome of Hex: Skeletal Hatchling]|h|r",
					["boss"] = "Yazma",
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["id"] = "1548800322-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [3]
				{
					["mapID"] = 1763,
					["instance"] = "Atal'Dazar-Mythic Keystone",
					["class"] = "SHAMAN",
					["date"] = "31/01/19",
					["owner"] = "Niseko-Stormscale",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Yazma",
					["time"] = "18:00:55",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:158317::::::::120:264::16:3:5010:1587:4784:::|h[Gauntlets of Eternal Service]|h|r",
					["responseID"] = "PL",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["id"] = "1548950455-2",
				}, -- [4]
				{
					["mapID"] = 1822,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Siege of Boralus-Mythic Keystone",
					["date"] = "01/02/19",
					["owner"] = "Niseko-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "01:53:50",
					["boss"] = "Viq'Goth",
					["lootWon"] = "|cffa335ee|Hitem:159386::::::::120:264::16:4:5010:4802:1572:4786:::|h[Anchor Chain Girdle]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "SHAMAN",
					["id"] = "1548978830-1",
				}, -- [5]
				{
					["mapID"] = 1841,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The Underrot-Mythic Keystone",
					["date"] = "01/02/19",
					["owner"] = "Niseko-Stormscale",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "03:06:37",
					["boss"] = "Unbound Abomination",
					["lootWon"] = "|cffa335ee|Hitem:159652::::::::120:264::16:4:5010:4802:1572:4786:::|h[Leaxa's Thought-Piercer]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "SHAMAN",
					["id"] = "1548983197-3",
				}, -- [6]
				{
					["mapID"] = 1771,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Niseko-Stormscale",
					["instance"] = "Tol Dagor-Mythic Keystone",
					["class"] = "SHAMAN",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Overseer Korgus",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:159666::::::::120:264::16:3:5010:1572:4786:::|h[Improvised Riot Shield]|h|r",
					["isAwardReason"] = false,
					["time"] = "23:57:23",
					["responseID"] = "PL",
					["id"] = "1549151843-2",
					["date"] = "02/02/19",
				}, -- [7]
			},
			["Daisyhunter-Kazzak"] = {
				{
					["mapID"] = 1754,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Freehold-Mythic Keystone",
					["date"] = "30/01/19",
					["owner"] = "Daisyhunter-Kazzak",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "08:27:26",
					["boss"] = "Lord Harlan Sweete",
					["lootWon"] = "|cffa335ee|Hitem:158305::::::::120:577::16:3:5010:1572:4786:::|h[Sea Dog's Cuffs]|h|r",
					["isAwardReason"] = false,
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["class"] = "DEMONHUNTER",
					["id"] = "1548836846-2",
				}, -- [1]
			},
			["Renstorp-Draenor"] = {
				{
					["mapID"] = 1594,
					["id"] = "1549382040-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The MOTHERLODE!!-Mythic",
					["class"] = "SHAMAN",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cff0070dd|Hitem:137642::::::::120:262::::::|h[Mark of Honor]|h|r",
					["difficultyID"] = 23,
					["time"] = "15:54:00",
					["isAwardReason"] = false,
					["boss"] = "Unknown",
					["responseID"] = "PL",
					["owner"] = "Renstorp-Draenor",
					["date"] = "05/02/19",
				}, -- [1]
				{
					["mapID"] = 1594,
					["id"] = "1549382044-1",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "The MOTHERLODE!!-Mythic",
					["class"] = "SHAMAN",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cff0070dd|Hitem:137642::::::::120:262::::::|h[Mark of Honor]|h|r",
					["difficultyID"] = 23,
					["time"] = "15:54:04",
					["isAwardReason"] = false,
					["boss"] = "Unknown",
					["responseID"] = "PL",
					["owner"] = "Renstorp-Draenor",
					["date"] = "05/02/19",
				}, -- [2]
			},
			["Kbrews-Stormscale"] = {
				{
					["mapID"] = 1822,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["date"] = "25/01/19",
					["class"] = "MONK",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "20:35:11",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159461::::::::120:268::16:3:5006:1572:4784:::|h[Band of the Ancient Dredger]|h|r",
					["boss"] = "Viq'Goth",
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["id"] = "1548441311-0",
					["instance"] = "Siege of Boralus-Mythic Keystone",
				}, -- [1]
			},
			["Mightykhal-TwistingNether"] = {
				{
					["mapID"] = 1864,
					["id"] = "1549738730-0",
					["class"] = "DEATHKNIGHT",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Mightykhal-TwistingNether",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Vol'zith the Whisperer",
					["time"] = "22:58:50",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159419::::::::120:250::16:3:5010:1577:4783:::|h[Ironhull's Reinforced Legplates]|h|r",
					["responseID"] = "PL",
					["date"] = "09/02/19",
					["instance"] = "Shrine of the Storm-Mythic Keystone",
				}, -- [1]
			},
			["Nâte-Stormscale"] = {
				{
					["mapID"] = 1594,
					["instance"] = "The MOTHERLODE!!-Mythic Keystone",
					["class"] = "MAGE",
					["date"] = "31/01/19",
					["owner"] = "Nâte-Stormscale",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Mogul Razdunk",
					["time"] = "17:32:52",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159226::::::::120:64::16:5:5010:4802:41:1572:4786:::|h[Excavator's Safety Belt]|h|r",
					["responseID"] = "PL",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["id"] = "1548948772-0",
				}, -- [1]
				{
					["mapID"] = 1763,
					["instance"] = "Atal'Dazar-Mythic Keystone",
					["class"] = "MAGE",
					["date"] = "31/01/19",
					["owner"] = "Nâte-Stormscale",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Yazma",
					["time"] = "18:01:00",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159610::::::::120:64::16:3:5010:1572:4786:::|h[Vessel of Skittering Shadows]|h|r",
					["responseID"] = "PL",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["id"] = "1548950460-3",
				}, -- [2]
			},
			["Tigerozy-Stormscale"] = {
				{
					["mapID"] = 1862,
					["instance"] = "Waycrest Manor-Mythic Keystone",
					["class"] = "DRUID",
					["date"] = "31/01/19",
					["owner"] = "Tigerozy-Stormscale",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["difficultyID"] = 8,
					["boss"] = "Gorak Tul",
					["time"] = "16:28:25",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159662::::::::120:104::16:3:5010:1572:4786:::|h[Blightreaper]|h|r",
					["responseID"] = "PL",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["id"] = "1548944905-0",
				}, -- [1]
				{
					["mapID"] = 1771,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Tigerozy-Stormscale",
					["instance"] = "Tol Dagor-Mythic Keystone",
					["class"] = "DRUID",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Overseer Korgus",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:159293::::::::120:104::16:3:5010:1587:4784:::|h[Turncoat's Cape]|h|r",
					["isAwardReason"] = false,
					["time"] = "23:57:21",
					["responseID"] = "PL",
					["id"] = "1549151841-0",
					["date"] = "02/02/19",
				}, -- [2]
			},
			["Babzixi-Kazzak"] = {
				{
					["mapID"] = 2070,
					["id"] = "1548789689-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Battle of Dazar'alor-Heroic",
					["class"] = "DEATHKNIGHT",
					["groupSize"] = 25,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:165548::::::::120:250::5:4:4823:1522:4786:5417:::|h[Helm of Tempered Jade]|h|r",
					["difficultyID"] = 15,
					["time"] = "19:21:29",
					["isAwardReason"] = false,
					["boss"] = "Jadefire Masters",
					["responseID"] = "PL",
					["owner"] = "Babzixi-Kazzak",
					["date"] = "29/01/19",
				}, -- [1]
				{
					["mapID"] = 2070,
					["id"] = "1548792820-0",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Battle of Dazar'alor-Heroic",
					["class"] = "DEATHKNIGHT",
					["groupSize"] = 25,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cff1eff00|Hitem:166276::::::::120:250::5::::|h[Schematic: Unstable Temporal Time Shifter]|h|r",
					["difficultyID"] = 15,
					["time"] = "20:13:40",
					["isAwardReason"] = false,
					["boss"] = "Mekkatorque",
					["responseID"] = "PL",
					["owner"] = "Babzixi-Kazzak",
					["date"] = "29/01/19",
				}, -- [2]
				{
					["mapID"] = 2070,
					["id"] = "1548798236-1",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["instance"] = "Battle of Dazar'alor-Heroic",
					["class"] = "DEATHKNIGHT",
					["groupSize"] = 25,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:165559::::::::120:250::5:3:4799:1522:4786:::|h[Hullplate Girdle]|h|r",
					["difficultyID"] = 15,
					["time"] = "21:43:56",
					["isAwardReason"] = false,
					["boss"] = "Lady Jaina Proudmoore",
					["responseID"] = "PL",
					["owner"] = "Babzixi-Kazzak",
					["date"] = "29/01/19",
				}, -- [3]
			},
			["Scread-Stormscale"] = {
				{
					["mapID"] = 1822,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["date"] = "25/01/19",
					["class"] = "PRIEST",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["time"] = "20:35:20",
					["isAwardReason"] = false,
					["lootWon"] = "|cffa335ee|Hitem:159250::::::::120:268::16:3:5006:1562:4783:::|h[Powder Monkey's Leggings]|h|r",
					["boss"] = "Viq'Goth",
					["difficultyID"] = 8,
					["responseID"] = "PL",
					["id"] = "1548441320-1",
					["instance"] = "Siege of Boralus-Mythic Keystone",
				}, -- [1]
				{
					["mapID"] = 1754,
					["date"] = "25/01/19",
					["instance"] = "Freehold-Mythic Keystone",
					["class"] = "PRIEST",
					["id"] = "1548457998-0",
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:155891::::::::120:253::16:3:5006:1562:4783:::|h[Greasy Bacon-Grabbers]|h|r",
					["isAwardReason"] = false,
					["time"] = "23:13:18",
					["difficultyID"] = 8,
					["boss"] = "Lord Harlan Sweete",
					["responseID"] = "PL",
					["groupSize"] = 5,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [2]
				{
					["mapID"] = 1771,
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["owner"] = "Scread-Stormscale",
					["instance"] = "Tol Dagor-Mythic Keystone",
					["class"] = "PRIEST",
					["response"] = "Personal Loot - Non tradeable",
					["groupSize"] = 5,
					["boss"] = "Overseer Korgus",
					["difficultyID"] = 8,
					["lootWon"] = "|cffa335ee|Hitem:159615::::::::120:258::16:3:5010:1572:4786:::|h[Ignition Mage's Fuse]|h|r",
					["isAwardReason"] = false,
					["time"] = "23:57:21",
					["responseID"] = "PL",
					["id"] = "1549151841-1",
					["date"] = "02/02/19",
				}, -- [3]
				{
					["mapID"] = 1841,
					["instance"] = "The Underrot-Mythic Keystone",
					["date"] = "03/02/19",
					["id"] = "1549159633-5",
					["class"] = "PRIEST",
					["groupSize"] = 5,
					["response"] = "Personal Loot - Non tradeable",
					["lootWon"] = "|cffa335ee|Hitem:159270::::::::120:258::16:3:5010:1577:4783:::|h[Blood Warder's Moccasins]|h|r",
					["difficultyID"] = 8,
					["time"] = "02:07:13",
					["isAwardReason"] = false,
					["boss"] = "Unbound Abomination",
					["responseID"] = "PL",
					["owner"] = "Scread-Stormscale",
					["color"] = {
						1, -- [1]
						0.6, -- [2]
						0, -- [3]
						1, -- [4]
					},
				}, -- [4]
			},
		},
	},
}

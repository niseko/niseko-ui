
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 3117,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Ace3' tried to call the protected function 'PetActionButton8:Show()'.",
			["time"] = "2019/01/17 15:01:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Show'\nInterface\\FrameXML\\PetActionBarFrame.lua:199: in function `PetActionBar_Update'\nInterface\\FrameXML\\SpellBookFrame.lua:520: in function <Interface\\FrameXML\\SpellBookFrame.lua:514>",
			["session"] = 3099,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:245: doesn't exist!",
			["time"] = "2019/01/18 14:26:17",
			["stack"] = "[C]: ?\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:245: in function `HandleButton'\n...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:95: in function <...terface\\AddOns\\ElvUI\\Modules\\skins\\blizzard\\misc.lua:30>\n[C]: ?\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1512: in function `Initialize'\nInterface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1539: in function <Interface\\AddOns\\ElvUI\\Modules\\skins\\skins.lua:1538>\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:129: in function <...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:129>\n[C]: ?\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1609: in function `InitializeModules'\nInterface\\AddOns\\ElvUI\\core\\core.lua:1820: in function `Initialize'\nInterface\\AddOns\\ElvUI\\init.lua:153: in function <Interface\\AddOns\\ElvUI\\init.lua:152>",
			["session"] = 3107,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "...tat\\libs/LibArtifactData-1.0-11/LibArtifactData-1.0.lua:213: attempt to call upvalue 'GetArtifactKnowledgeLevel' (a nil value)",
			["time"] = "2019/01/18 14:26:21",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"attempt to call upvalue 'GetArtifactKnowledgeLevel' (a nil value)\"\nGetArtifactKnowledgeLevel = nil\nGetArtifactKnowledgeMultiplier = nil\nartifacts = <table> {\n knowledgeMultiplier = 1\n knowledgeLevel = 0\n}\nDebug = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:9\nlib = <table> {\n GetActiveArtifactID = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:425\n GetArtifactKnowledge = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:476\n ForceUpdate = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:509\n callbacks = <table> {\n }\n GetAcquiredArtifactPower = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:480\n GetArtifactRelics = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:458\n RegisterCallback = <function> defined @Interface\\AddOns\\AdvancedTooltips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:90\n GetArtifactPower = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:467\n GetArtifactTraits = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:449\n UnregisterCallback = <function> defined @Interface\\AddOns\\AdvancedTooltips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n GetArtifactInfo = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:429\n GetNumObtainedArtifacts = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:438\n frame = <unnamed> {\n }\n GetAllArtifactsInfo = <function> defined @Interface\\AddOns\\RestoShamanStat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:434\n UnregisterAllCallbacks = <function> defined @Interface\\AddOns\\AdvancedTooltips\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n}\n",
			["stack"] = "...tat\\libs/LibArtifactData-1.0-11/LibArtifactData-1.0.lua:213: in function <...tat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:212>\n...tat\\libs/LibArtifactData-1.0-11/LibArtifactData-1.0.lua:224: in function <...tat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:223>\n...tat\\libs/LibArtifactData-1.0-11/LibArtifactData-1.0.lua:247: in function <...tat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:243>\n...tat\\libs/LibArtifactData-1.0-11/LibArtifactData-1.0.lua:322: in function `?'\n...tat\\libs/LibArtifactData-1.0-11/LibArtifactData-1.0.lua:68: in function <...tat\\libs/LibArtifactData-1.0/LibArtifactData-1.0.lua:68>",
			["session"] = 3107,
			["counter"] = 43,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\RestoShamanStat\\monitor.lua:173: attempt to get length of local 'targetName' (a number value)",
			["time"] = "2019/01/18 15:11:12",
			["locals"] = "spellName = nil\ntargetName = 222695\n(*temporary) = 4\n(*temporary) = \"player\"\n(*temporary) = nil\n(*temporary) = \"Cast-3-3890-1220-12-222695-0000C1DE7F\"\n(*temporary) = 222695\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to get length of local 'targetName' (a number value)\"\nrss = <table> {\n SUMMON_EARTH_SHIELD = 974\n ARTIFACT_DATA = <table> {\n }\n CreateArchive = <function> defined @Interface\\AddOns\\RestoShamanStat\\archive.lua:61\n SPIRIT_LINK = 98021\n AURA_GIFT_OF_THE_NAARU = 59547\n WINDOW_PAST = 6\n CONSUMABLES = <table> {\n }\n MINIMUM_FIGHT_DURATION = 10\n unknownSpells = <table> {\n }\n CorrelatePeriodicHeal = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:246\n HEALING_TIDE = 114942\n AnalyzeRecord = <function> defined @Interface\\AddOns\\RestoShamanStat\\archive.lua:248\n GHOST_WOLF = 2645\n CheckBoss = <function> defined @Interface\\AddOns\\RestoShamanStat\\encounter.lua:15\n CorrelateSummon = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:230\n CheckRestoShaman = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:462\n Finalize = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:152\n AURA_RIPTIDE = 61295\n MAX_LEVEL = 110\n PrintUseAll = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:171\n RecordToString = <function> defined @Interface\\AddOns\\RestoShamanStat\\archive.lua:365\n CheckTarget = <function> defined @Interface\\AddOns\\RestoShamanStat\\encounter.lua:7\n PrintDifficulty = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:162\n LoadArchive = <function> defined @Interface\\AddOns\\RestoShamanStat\\archive.lua:23\n SpellcastSucceeded = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:187\n RATING_TO_MASTERY = 116.667000\n FillMetaBuffer = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:10\n playerState = <table> {\n }\n RATING_TO_HASTE = 325\n casts = <table> {\n }\n Clone = <function> defined @Interface\\AddOns\\RestoShamanStat\\utility.lua:133\n SpellFilter = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:120\n CLOUDBURST = 157503\n AURA_RIPTIDE_T18 = 185875\n WELLSPRING = 197997\n CorrelateEvents = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:329\n SampleBusy = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:330\n WINDOW_BINS = 216\n ResetPlayerState = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:111\n UnregisterCombatEvents = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:50\n PruneCast = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:226\n SCEPTER = 128911\n SCHOOL_NATURE = 4\n ClearAll = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:120\n LEECH = 143924\n MigrateArchive = <function> defined @Interface\\AddOns\\RestoShamanStat\\archive.lua:458\n PLAYER_TOTEM_FLAGS = 8465\n SUMMON_ANCESTRAL_GUIDANCE = 108281\n CorrelateHeal = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:266\n CorrelateAuraRemoved = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:136\n TT_HASTEINC = <table> {\n }\n TT_BUSYFRACTION = <table> {\n }\n AssociateHealing = <function> defined @Interface\\AddOns\\RestoShamanStat\\metaparser.lua:367\n GIFT_OF_THE_QUEEN = 207778\n TIDAL_CHAINS = 207088\n ProcessCopyRecord = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:88\n SCHOOL_FIRE = 3\n TestMigration = <function> defined @Interface\\AddOns\\RestoShamanStat\\archive.lua:471\n CLEANSING_WATERS = 55562\n HEALING_TONIC = 156438\n SUMMON_SPIRIT_LINK = 98008\n EVENT_CODES = <table> {\n }\n ASCENDANCE = 114052\n PreFinalize = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:136\n PURIFY_SPIRIT = 77130\n CheckBuffs = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:510\n CreateCopyRecord = <function> defined @Interface\\AddOns\\RestoShamanStat\\monitor.lua:73\n TT_VERSATILITYINC = <table> {\n }\n RegisterCombatEvents = <function> defined @Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:67\n fight = <table> {\n",
			["stack"] = "Interface\\AddOns\\RestoShamanStat\\monitor.lua:173: in function `SpellcastSent'\nInterface\\AddOns\\RestoShamanStat\\RShamanStat-nil.121.lua:340: in function <Interface\\AddOns\\RestoShamanStat\\RShamanStat.lua:292>",
			["session"] = 3107,
			["counter"] = 7,
		}, -- [4]
		{
			["message"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: attempt to call field 'GetMapInfo' (a nil value)",
			["time"] = "2019/01/14 19:41:44",
			["locals"] = "gsub = <function> defined =[C]:-1\nformat = <function> defined =[C]:-1\nstrsub = <function> defined =[C]:-1\nstrfind = <function> defined =[C]:-1\nstrmatch = <function> defined =[C]:-1\nstrrev = <function> defined =[C]:-1\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = 1456\n(*temporary) = \"attempt to call field 'GetMapInfo' (a nil value)\"\n",
			["stack"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: in main chunk",
			["session"] = 3117,
			["counter"] = 38,
		}, -- [5]
		{
			["message"] = "(null)",
			["session"] = 3117,
			["time"] = "2019/01/14 19:41:48",
			["counter"] = 114,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Doom_CooldownPulse' tried to call the protected function 'UNKNOWN()'.",
			["time"] = "2019/01/19 20:24:17",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: ?\n[C]: in function `Quit'\nInterface\\FrameXML\\ChatFrame.lua:1832: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4757: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4418: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4454: in function <Interface\\FrameXML\\ChatFrame.lua:4450>\n[C]: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3117,
			["counter"] = 1,
		}, -- [7]
	},
}

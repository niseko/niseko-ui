
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 2629,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Hekili\\State.lua:2634: attempt to perform arithmetic on field 'buffPadding' (a nil value)",
			["time"] = "2018/11/26 14:44:28",
			["locals"] = "t = <table> {\n applied = 410272.427\n v1 = 0\n v2 = 0\n id = 114052\n duration = 7200\n timeMod = 1\n expires = 417472.427\n key = \"ascendance\"\n unit = \"player\"\n count = 1\n name = \"Ascendance\"\n}\nk = \"remains\"\naura = <table> {\n funcs = <table> {\n }\n key = \"ascendance\"\n max_stack = 1\n id = 114052\n duration = 30\n name = \"Ascendance\"\n desc = \"Transform into a Water Ascendant for 15 sec, causing all healing you deal to be duplicated and distributed evenly among nearby allies.\"\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = 0\n(*temporary) = 3599.414\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to perform arithmetic on field 'buffPadding' (a nil value)\"\nclass = <table> {\n stances = <table> {\n }\n talents = <table> {\n }\n abilityList = <table> {\n }\n stateExprs = <table> {\n }\n potion = \"prolonged_power\"\n range = 8\n auras = <table> {\n }\n pets = <table> {\n }\n itemPack = <table> {\n }\n settings = <table> {\n }\n interrupts = <table> {\n }\n gear = <table> {\n }\n trinkets = <table> {\n }\n itemMap = <table> {\n }\n toggles = <table> {\n }\n powers = <table> {\n }\n stateFuncs = <table> {\n }\n pvptalents = <table> {\n }\n hooks = <table> {\n }\n potionList = <table> {\n }\n resources = <table> {\n }\n file = \"SHAMAN\"\n potions = <table> {\n }\n itemList = <table> {\n }\n abilities = <table> {\n }\n num = 3\n packs = <table> {\n }\n itemSettings = <table> {\n }\n stateTables = <table> {\n }\n specs = <table> {\n }\n}\ndefault_buff_values = <table> {\n applied = 0\n v1 = 0\n v2 = 0\n caster = \"nobody\"\n duration = 15\n timeMod = 1\n expires = 0\n count = 0\n unit = \"player\"\n v3 = 0\n}\nauras = <table> {\n target = <table> {\n }\n player = <table> {\n }\n}\nstate = <table> {\n spend = <function> defined @Interface\\AddOns\\Hekili\\State.lua:1062\n tostring = <function> defined =[C]:-1\n putTrinketsOnCD = <function> defined @Interface\\AddOns\\Hekili\\State.lua:3651\n role = <table> {\n }\n IsKnown = <function> defined @Interface\\AddOns\\Hekili\\State.lua:4116\n target = <table> {\n }\n cast_start = 0\n stat = <table> {\n }\n safenum = <function> defined @Interface\\AddOns\\Hekili\\State.lua:435\n pairs = <function> defined =[C]:-1\n selectionTime = 60\n feral_spirit = <table> {\n }\n tonumber = <function> defined =[C]:-1\n items = <table> {\n }\n player = <table> {\n }\n prev = <table> {\n }\n removeStack = <function> defined @Interface\\AddOns\\Hekili\\State.lua:660\n prev_off_gcd = <table> {\n }\n active_dot = <table> {\n }\n applyDebuff = <function> defined @Interface\\AddOns\\Hekili\\State.lua:675\n mainhand_speed = 2.3570001125336\n IsUsableSpell = <function> defined =[C]:-1\n debuff = <table> {\n }\n channelSpell = <function> defined @Interface\\AddOns\\Hekili\\State.lua:806\n this_action = \"elemental_blast\"\n gain = <function> defined @Interface\\AddOns\\Hekili\\State.lua:1048\n maelstrom = <table> {\n }\n removeBuff = <function> defined @Interface\\AddOns\\Hekili\\State.lua:626\n TimeToReady = <function> defined @Interface\\AddOns\\Hekili\\State.lua:4334\n reduceCooldown = <function> defined @Interface\\AddOns\\Hekili\\State.lua:553\n iteration = 0\n setStance = <function> defined @Interface\\AddOns\\Hekili\\State.lua:726\n setCooldown = <function> defined @Interface\\AddOns\\Hekili\\State.lua:457\n args = <table> {\n }\n mana = <table> {\n }\n buff = <table> {\n }\n table_insert = <function> defined =[C]:-1\n raid_event = <table> {\n }\n boss = false\n ClashOffset = <function> defined @Interface\\AddOns\\Hekili\\State.lua:4472\n table = <table> {\n }\n spell_targets = <table> {\n }\n auto_advance = true\n pet = <table> {\n }\n ipairs = <function> defined =[C]:-1\n consumable = <table> {\n }\n pvptalent = <table> {\n }\n UnitDebuff = <function> defined =[C]:-1\n combat = 0\n dismissPet = <function> defined @Interface\\AddOns\\Hekili\\State.lua:771\n false_start = 0\n addStack = <function> defined @Interface\\AddOns\\Hekili\\State.lua:641\n HasRequiredResources = <function> defined @Interface\\AddOns\\Hekili\\State.lua:4321\n UnitCanAttack = <function> defined =[C]:-1\n predictions = <table> {\n }\n stopChanneling = <function> defined @Interface\\AddOns\\Hekili\\State.lua:818\n type = <function> defined =[C]:-1\n script = <table> {\n }\n int",
			["stack"] = "Interface\\AddOns\\Hekili\\State.lua:2634: in function <Interface\\AddOns\\Hekili\\State.lua:2588>\nInterface\\AddOns\\Hekili\\State.lua:3906: in function `reset'\nInterface\\AddOns\\Hekili\\Scripts.lua:1116: in function `LoadScripts'\nInterface\\AddOns\\Hekili\\Scripts.lua:1195: in function `LoadScripts'\nInterface\\AddOns\\Hekili\\Classes.lua:3479: in function `SpecializationChanged'\nInterface\\AddOns\\Hekili\\Events.lua:221: in function `handler'\nInterface\\AddOns\\Hekili\\Events.lua:51: in function <Interface\\AddOns\\Hekili\\Events.lua:45>",
			["session"] = 2604,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "[string \"--[[ Error in 'Cloud Burst Collected ' ]] r...\"]:6: attempt to index field 'state' (a nil value)",
			["time"] = "2018/12/03 19:14:09",
			["stack"] = "[C]: in function `xpcall'\nInterface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua:171: in function `UpdateCustomText'\nInterface\\AddOns\\WeakAuras\\WeakAuras-2.9.1.lua:4022: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:4016>",
			["session"] = 2624,
			["counter"] = 5,
		}, -- [2]
		{
			["message"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: attempt to call field 'GetMapInfo' (a nil value)",
			["time"] = "2018/11/26 17:14:24",
			["locals"] = "gsub = <function> defined =[C]:-1\nformat = <function> defined =[C]:-1\nstrsub = <function> defined =[C]:-1\nstrfind = <function> defined =[C]:-1\nstrmatch = <function> defined =[C]:-1\nstrrev = <function> defined =[C]:-1\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = 1456\n(*temporary) = \"attempt to call field 'GetMapInfo' (a nil value)\"\n",
			["stack"] = "...terface\\AddOns\\KeystoneLinkPlus\\KeystoneLinkPlus-1.4.lua:9: in main chunk",
			["session"] = 2629,
			["counter"] = 25,
		}, -- [3]
		{
			["message"] = "(null)",
			["time"] = "2018/11/26 17:14:28",
			["session"] = 2629,
			["counter"] = 75,
		}, -- [4]
	},
}
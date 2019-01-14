function GottaGoFast.InitOptions()
  GottaGoFast.LSM = LibStub:GetLibrary("LibSharedMedia-3.0");
  GottaGoFast.LSM:Register("font", "Myriad Condensed Web", "Interface\\Addons\\GottaGoFast\\MyriadCondensedWeb.ttf")
  local defaults = {
    profile = {
      GoldTimer = true,
      TimerType = "TrueTimerMS",
      FrameAnchor = "RIGHT",
      FrameX = 0,
      FrameY = 0,
      TimerAlign = "CENTER",
      TimerX = 0,
      TimerY = 0,
      TimerFont = "Myriad Condensed Web",
      TimerFontSize = 29,
      TimerColor = "ffffffff",
      TimerFontFlag = "OUTLINE",
      ObjectiveAlign = "LEFT",
      ObjectiveX = 0,
      ObjectiveY = -40,
      ObjectiveFont = "Myriad Condensed Web",
      ObjectiveFontSize = 21,
      ObjectiveCollapsed = false,
      ObjectiveColor = "ffffffff",
      ObjectiveCompleteColor = "ff0ff000",
      ObjectiveFontFlag = "OUTLINE",
      IncreaseColor = "ffffffff",
      AffixesColor = "ffffffff",
      LevelColor = "ffffffff",
      DeathColor = "ffffffff",
      LevelInTimer = true,
      LevelInObjectives = false,
      AffixesInObjectives = true,
      IncreaseInObjectives = true,
      DeathInObjectives = false,
      MobPoints = false,
      IndividualMobValue = true,
      UseMdt = true,
      ObjectiveCompleteInObjectives = true,
      TimerTooltip = true,
      History = {},
      DebugMode = false,
      Version = 0,
      AutoDialog = false,
      SpyHelper = false,
      BestReport = true,
    },
  }
  local options = {
    name = "GottaGoFast",
    handler = GottaGoFast,
    type = "group",
    args = {
      cms = {
        name = "Core Features",
        type = "group",
        args = {
          TimerType = {
            order = 1,
            type = "select",
            name = "Timer Type",
            desc = "TrueTimer is timed off the start of the dungeon using system time.\nI recommend you use this option.\nBlizzard's timer is known to bug up to 20 seconds.\nI will report details soon.",
            values = {["TrueTimerMS"] = "TrueTimer (Miliseconds)", ["TrueTimerNoMS"] = "TrueTimer (No Miliseconds)", ["Blizzard"] = "Blizzard's Timer"},
            get = GottaGoFast.GetTimerType,
            set = GottaGoFast.SetTimerType,
          },
          GoldTimer = {
            order = 2,
            type = "toggle",
            name = "Gold Timer",
            desc = "Toggles Gold Timer",
            get = GottaGoFast.GetGoldTimer,
            set = GottaGoFast.SetGoldTimer,
          },
          LevelInObjectives = {
            order = 3,
            type = "toggle",
            name = "CM Level Display (Objectives)",
            desc = "Show the current CM Level in the objectives list",
            get = GottaGoFast.GetLevelInObjectives,
            set = GottaGoFast.SetLevelInObjectives,
          },
          AffixesInObjectives = {
            order = 4,
            type = "toggle",
            name = "Affix Display (Objectives)",
            desc = "Show the current Affixes in the objectives list",
            get = GottaGoFast.GetAffixesInObjectives,
            set = GottaGoFast.SetAffixesInObjectives,
          },
          LevelInTimer = {
            order = 5,
            type = "toggle",
            name = "CM Level Display (Timer)",
            desc = "Show the current CM Level at the start of the timer",
            get = GottaGoFast.GetLevelInTimer,
            set = GottaGoFast.SetLevelInTimer,
          },
          IncreaseInObjectives = {
            order = 6,
            type = "toggle",
            name = "Keystone Increase Display (Objectives)",
            desc = "Bonus Keystone Time Splits",
            get = GottaGoFast.GetIncreaseInObjectives,
            set = GottaGoFast.SetIncreaseInObjectives,
          },
          ObjectiveCompleteInObjectives = {
            order = 7,
            type = "toggle",
            name = "CM Objective Complete Display (Objectives)",
            desc = "Show the time objectives we're completed at",
            get = GottaGoFast.GetObjectiveCompleteInObjectives,
            set = GottaGoFast.SetObjectiveCompleteInObjectives,
          },
          DeathInObjectives = {
            order = 8,
            type = "toggle",
            name = "Death Contribution Display (Objectives)",
            desc = "Show the amount of deaths, and time loss they created in objectives",
            get = GottaGoFast.GetDeathInObjectives,
            set = GottaGoFast.SetDeathInObjectives,
          },
          MobPoints = {
            order = 9,
            type = "toggle",
            name = "Mob Points",
            desc = "Show Exact Number Of Points Used To Calculate Enemy Forces Percentage, Appears Per Mob In Tooltip With IndividualMobValue",
            get = GottaGoFast.GetMobPoints,
            set = GottaGoFast.SetMobPoints,
          },
          IndividualMobValue = {
            order = 10,
            type = "toggle",
            name = "Individual Mob Value",
            desc = "Show In Tooltip Individual Mobs Value Towards Enemy Forces",
            get = GottaGoFast.GetIndividualMobValue,
            set = GottaGoFast.SetIndividualMobValue,
          },
          UseMdt = {
            order = 11,
            type = "toggle",
            name = "MDT Mob Count",
            desc = "When possible use Method Dungeon Tools for mob count, generally this addon has the most up to date values",
            get = GottaGoFast.GetUseMdt,
            set = GottaGoFast.SetUseMdt,
          },
          TimerTooltip = {
            order = 12,
            type = "toggle",
            name = "Timer Tooltip",
            desc = "Display Detailed Information About Current M+ By Hovering Over The Timer. This Also Prevents Full Clickthrough Frames (Clickthrough Requires Reload)",
            get = GottaGoFast.GetTimerTooltip,
            set = GottaGoFast.SetTimerTooltip,
          },
          BestReport = {
            order = 13,
            type = "toggle",
            name = "Report Best Run",
            desc = "Reports Your Best Run At This Dungeon / Level Affixes At The Start Of The Run, And When You Beat This Run, New Record At The End",
            get = GottaGoFast.GetBestReport,
            set = GottaGoFast.SetBestReport,
          },
          Changelog = {
            order = 14,
            name = "Changelog",
            desc = "GottaGoFast Changelog",
            type = "execute",
            func = GottaGoFast.Changelog,
          },
          History = {
            order = 15,
            name = "History",
            desc = "GottaGoFast History - Display Of Your Runs",
            type = "execute",
            func = GottaGoFast.History,
          },
        },
      },
      displayFrame = {
        name = "Display: Frame",
        type = "group",
        args = {
          unlocked = {
            order = 1,
            type = "toggle",
            name = "Unlocked",
            desc = "Toggles Unlock State Of Timer Frame",
            get = GottaGoFast.GetUnlocked,
            set = GottaGoFast.SetUnlocked,
          },
          ObjectiveCollapsed = {
            order = 2,
            type = "toggle",
            name = "Objective Tracker Collapse",
            desc = "Collapse Objective Tracker When Leaving CM / Timewalker",
            get = GottaGoFast.GetObjectiveCollapsed,
            set = GottaGoFast.SetObjectiveCollapsed,
          },
          TimerX = {
            order = 3,
            type = "range",
            name = "Timer X Offset",
            desc = "Default: 0",
            min = -100,
            max = 100,
            step = 1,
            get = GottaGoFast.GetTimerX,
            set = GottaGoFast.SetTimerX,
          },
          TimerY = {
            order = 4,
            type = "range",
            name = "Timer Y Offset",
            desc = "Default: 0",
            min = -100,
            max = 100,
            step = 1,
            get = GottaGoFast.GetTimerY,
            set = GottaGoFast.SetTimerY,
          },
          ObjectiveX = {
            order = 5,
            type = "range",
            name = "Objective X Offset",
            desc = "Default: 0",
            min = -100,
            max = 100,
            step = 1,
            get = GottaGoFast.GetObjectiveX,
            set = GottaGoFast.SetObjectiveX,
          },
          ObjectiveY = {
            order = 6,
            type = "range",
            name = "Objective Y Offset",
            desc = "Default: -40",
            min = -100,
            max = 100,
            step = 1,
            get = GottaGoFast.GetObjectiveY,
            set = GottaGoFast.SetObjectiveY,
          },
          DemoMode = {
            order = 19,
            type = "execute",
            name = "Demo Mode",
            desc = "Shows GottaGoFast Outside CM For Demo / Setup Purposes",
            func = GottaGoFast.ToggleDemoMode,
          },
        },
      },
      displayFont = {
        name = "Display: Font",
        type = "group",
        args = {
          TimerFontSize = {
            order = 7,
            type = "range",
            name = "Timer Font Size",
            desc = "Default: 29",
            min = 8,
            max = 32,
            step = 1,
            get = GottaGoFast.GetTimerFontSize,
            set = GottaGoFast.SetTimerFontSize,
          },
          ObjectiveFontSize = {
            order = 8,
            type = "range",
            name = "Objective Font Size",
            desc = "Default: 21",
            min = 8,
            max = 32,
            step = 1,
            get = GottaGoFast.GetObjectiveFontSize,
            set = GottaGoFast.SetObjectiveFontSize,
          },
          TimerFontFlag = {
            order = 9,
            type = "select",
            name = "Timer Font Flag",
            desc = "Default: OUTLINE",
            values = {["OUTLINE"] = "OUTLINE", ["THICKOUTLINE"] = "THICKOUTLINE", ["MONOCHROME"] = "MONOCHROME", ["NONE"] = "NONE"},
            get = GottaGoFast.GetTimerFontFlag,
            set = GottaGoFast.SetTimerFontFlag,
          },
          ObjectiveFontFlag = {
            order = 10,
            type = "select",
            name = "Objective Font Flag",
            desc = "Default: OUTLINE",
            values = {["OUTLINE"] = "OUTLINE", ["THICKOUTLINE"] = "THICKOUTLINE", ["MONOCHROME"] = "MONOCHROME", ["NONE"] = "NONE"},
            get = GottaGoFast.GetObjectiveFontFlag,
            set = GottaGoFast.SetObjectiveFontFlag,
          },
          TimerAlign = {
            order = 11,
            type = "select",
            name = "Timer Align",
            desc = "Default: CENTER",
            values = {["LEFT"] = "LEFT", ["CENTER"] = "CENTER", ["RIGHT"] = "RIGHT"},
            get = GottaGoFast.GetTimerAlign,
            set = GottaGoFast.SetTimerAlign,
          },
          ObjectiveAlign = {
            order = 12,
            type = "select",
            name = "Objective Align",
            desc = "Default: LEFT",
            values = {["LEFT"] = "LEFT", ["CENTER"] = "CENTER", ["RIGHT"] = "RIGHT"},
            get = GottaGoFast.GetObjectiveAlign,
            set = GottaGoFast.SetObjectiveAlign,
          },
          TimerFont = {
            order = 13,
            type = "select",
            dialogControl = "LSM30_Font",
            name = "Timer Font",
            desc = "Default: Arial, Monospaced Fonts like MyriadCondensedWeb are recommended",
            values = GottaGoFast.LSM:HashTable("font"),
            get = GottaGoFast.GetTimerFont,
            set = GottaGoFast.SetTimerFont,
          },
          ObjectiveFont = {
            order = 14,
            type = "select",
            dialogControl = "LSM30_Font",
            name = "Objective Font",
            desc = "Default: Arial, Monospaced Fonts like MyriadCondensedWeb are recommended",
            values = GottaGoFast.LSM:HashTable("font"),
            get = GottaGoFast.GetObjectiveFont,
            set = GottaGoFast.SetObjectiveFont,
          },
          ObjectiveColor = {
            order = 15,
            type = "color",
            name = "Objective Color",
            desc = "Default: White",
            get = GottaGoFast.GetObjectiveColor,
            set = GottaGoFast.SetObjectiveColor,
            hasAlpha = false,
          },
          ObjectiveCompleteColor = {
            order = 16,
            type = "color",
            name = "Objective Complete Color",
            desc = "Default: Green",
            get = GottaGoFast.GetObjectiveCompleteColor,
            set = GottaGoFast.SetObjectiveCompleteColor,
            hasAlpha = false,
          },
          TimerColor = {
            order = 17,
            type = "color",
            name = "Timer Color",
            desc = "Default: White",
            get = GottaGoFast.GetTimerColor,
            set = GottaGoFast.SetTimerColor,
            hasAlpha = false,
          },
          IncreaseColor = {
            order = 18,
            type = "color",
            name = "Keystone Increase Color",
            desc = "Default: White",
            get = GottaGoFast.GetIncreaseColor,
            set = GottaGoFast.SetIncreaseColor,
            hasAlpha = false,
          },
          AffixesColor = {
            order = 19,
            type = "color",
            name = "Affix Information Color",
            desc = "Default: White",
            get = GottaGoFast.GetAffixesColor,
            set = GottaGoFast.SetAffixesColor,
            hasAlpha = false,
          },
          LevelColor = {
            order = 20,
            type = "color",
            name = "Level Information Color",
            desc = "Default: White",
            get = GottaGoFast.GetLevelColor,
            set = GottaGoFast.SetLevelColor,
          },
          DeathColor = {
            order = 21,
            type = "color",
            name = "Death Information Color",
            desc = "Default: White",
            get = GottaGoFast.GetDeathColor,
            set = GottaGoFast.SetDeathColor,
          },
        },
      },
      dungeons = {
        name = "Dungeon Features",
        type = "group",
        args = {
          AutoDialog = {
            order = 1,
            type = "toggle",
            name = "Auto Dialog",
            desc = "Automatically Accepts Dialog Boxes In M+, Warning This Applies To All CoS Items",
            get = GottaGoFast.GetAutoDialog,
            set = GottaGoFast.SetAutoDialog,
          },
          SpyHelper = {
            order = 2,
            type = "toggle",
            name = "CoS Spy Helper",
            desc = "Prints Text About Spy Automatically During Mini-Game",
            get = GottaGoFast.GetSpyHelper,
            set = GottaGoFast.SetSpyHelper,
          },
        },
      },
    },
  };
  GottaGoFast.db = LibStub("AceDB-3.0"):New("GottaGoFastDB", defaults, true);
  LibStub("AceConfig-3.0"):RegisterOptionsTable("GottaGoFast", options);
  GottaGoFast.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("GottaGoFast", "GottaGoFast");
end



local Plater = Plater
local DF = DetailsFramework
local LibSharedMedia = LibStub:GetLibrary ("LibSharedMedia-3.0")
local _

--templates
local options_text_template = DF:GetTemplate ("font", "OPTIONS_FONT_TEMPLATE")
local options_dropdown_template = DF:GetTemplate ("dropdown", "OPTIONS_DROPDOWN_TEMPLATE")
local options_switch_template = DF:GetTemplate ("switch", "OPTIONS_CHECKBOX_TEMPLATE")
local options_slider_template = DF:GetTemplate ("slider", "OPTIONS_SLIDER_TEMPLATE")
local options_button_template = DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE")

--configs
local startX, startY, heightSize = 10, -130, 710
local optionsWidth, optionsHeight = 1100, 650
local mainHeightSize = 800

 --cvars
local CVAR_ENABLED = "1"
local CVAR_DISABLED = "0"
local CVAR_RESOURCEONTARGET = "nameplateResourceOnTarget"
local CVAR_CULLINGDISTANCE = "nameplateMaxDistance"
local CVAR_AGGROFLASH = "ShowNamePlateLoseAggroFlash"
local CVAR_MOVEMENT_SPEED = "nameplateMotionSpeed"
local CVAR_MIN_ALPHA = "nameplateMinAlpha"
local CVAR_MIN_ALPHA_DIST = "nameplateMinAlphaDistance"
local CVAR_SHOWALL = "nameplateShowAll"
local CVAR_ENEMY_ALL = "nameplateShowEnemies"
local CVAR_ENEMY_MINIONS = "nameplateShowEnemyMinions"
local CVAR_ENEMY_MINUS = "nameplateShowEnemyMinus"
local CVAR_PLATEMOTION = "nameplateMotion"
local CVAR_FRIENDLY_ALL = "nameplateShowFriends"
local CVAR_FRIENDLY_GUARDIAN = "nameplateShowFriendlyGuardians"
local CVAR_FRIENDLY_PETS = "nameplateShowFriendlyPets"
local CVAR_FRIENDLY_TOTEMS = "nameplateShowFriendlyTotems"
local CVAR_FRIENDLY_MINIONS = "nameplateShowFriendlyMinions"
local CVAR_CLASSCOLOR = "ShowClassColorInNameplate"
local CVAR_SCALE_HORIZONTAL = "NamePlateHorizontalScale"
local CVAR_SCALE_VERTICAL = "NamePlateVerticalScale"

--members
local MEMBER_UNITID = "namePlateUnitToken"
local MEMBER_GUID = "namePlateUnitGUID"
local MEMBER_NPCID = "namePlateNpcId"
local MEMBER_QUEST = "namePlateIsQuestObjective"
local MEMBER_REACTION = "namePlateUnitReaction"
local MEMBER_ALPHA = "namePlateAlpha"
local MEMBER_RANGE = "namePlateInRange"
local MEMBER_NOCOMBAT = "namePlateNoCombat"
local MEMBER_NAME = "namePlateUnitName"
local MEMBER_NAMELOWER = "namePlateUnitNameLower"
local MEMBER_TARGET = "namePlateIsTarget"
local MEMBER_CLASSIFICATION = "namePlateClassification"

--actor types
local ACTORTYPE_FRIENDLY_PLAYER = "friendlyplayer"
local ACTORTYPE_FRIENDLY_NPC = "friendlynpc"
local ACTORTYPE_ENEMY_PLAYER = "enemyplayer"
local ACTORTYPE_ENEMY_NPC = "enemynpc"
local ACTORTYPE_PLAYER = "player"

--reaction
local UNITREACTION_HOSTILE = 3
local UNITREACTION_NEUTRAL = 4
local UNITREACTION_FRIENDLY = 5

local lower = string.lower

--db upvalues
local DB_CAPTURED_SPELLS
local DB_AURA_ALPHA
local DB_AURA_ENABLED
local DB_AURA_SEPARATE_BUFFS

local on_refresh_db = function()
	local profile = Plater.db.profile
	DB_CAPTURED_SPELLS = profile.captured_spells
	DB_AURA_ALPHA = profile.aura_alpha
	DB_AURA_ENABLED = profile.aura_enabled
	DB_AURA_SEPARATE_BUFFS = Plater.db.profile.buffs_on_aura2
end

Plater.RegisterRefreshDBCallback (on_refresh_db)

--check if a encounter has just ended and open the aura ease tab
function Plater.CheckOptionsTab()
	if (Plater.LatestEncounter) then
		if (Plater.LatestEncounter + 60 > time()) then
			PlaterOptionsPanelContainer:SelectIndex (Plater, 12)
		end
	end
end

-- ~options �ptions
function Plater.OpenOptionsPanel()
	
	if (PlaterOptionsPanelFrame) then
		PlaterOptionsPanelFrame:Show()
		Plater.CheckOptionsTab()
		return true
	end
	
	Plater.db.profile.OptionsPanelDB = Plater.db.profile.OptionsPanelDB or {}
	
	--controi o menu principal
	local f = DF:CreateSimplePanel (UIParent, optionsWidth, optionsHeight, "Plater Options", "PlaterOptionsPanelFrame", {UseScaleBar = true}, Plater.db.profile.OptionsPanelDB)
	f:SetFrameStrata ("MEDIUM")
	DF:ApplyStandardBackdrop (f)

	local profile = Plater.db.profile
	
	local CVarDesc = "\n\n|cFFFF7700[*]|r |cFFa0a0a0CVar, not saved within Plater profile and is a Per-Character setting.|r"
	local CVarIcon = "|cFFFF7700*|r"
	
	local frame_options = {
		y_offset = 0,
		button_width = 102,
		button_height = 20,
		button_x = 210,
		button_y = -7,
		button_text_size = 10,
		right_click_y = 5,
		rightbutton_always_close = true,
		close_text_alpha = 0.4,
	}
	
	-- mainFrame � um frame vazio para sustentrar todos os demais frames, este frame sempre ser� mostrado
	local mainFrame = DF:CreateTabContainer (f, "Plater Options", "PlaterOptionsPanelContainer", 
	{
		{name = "FrontPage", title = "General Settings"},
		{name = "ThreatConfig", title = "Threat / Aggro"},
		{name = "TargetConfig", title = "Target"},
		{name = "PersonalBar", title = "Personal Bar"},
		{name = "EnemyNpc", title = "Enemy Npc"},
		{name = "EnemyPlayer", title = "Enemy Player"},
		{name = "FriendlyNpc", title = "Friendly Npc"},
		{name = "FriendlyPlayer", title = "Friendly Player"},
		
		{name = "DebuffConfig", title = "Buff Settings"},
		{name = "DebuffBlacklist", title = "Buff Tracking"},
		{name = "DebuffSpecialContainer", title = "Buff Special"},
		{name = "DebuffLastEvent", title = "Buff Ease"},
		{name = "Scripting", title = "Scripting"},
		{name = "AutoRunCode", title = "Hooking"},
		{name = "AnimationPanel", title = "Animations"},
		{name = "AdvancedConfig", title = "Advanced"},
		
		{name = "Automation", title = "Auto"},
		{name = "ProfileManagement", title = "Profiles"},
	}, 
	frame_options)
	
	--> when any setting is changed, call this function
	local globalCallback = function()
		Plater.IncreaseRefreshID()
		Plater.RefreshDBUpvalues()
		Plater.UpdateAllPlates()
	end

	--1st row
	local frontPageFrame = mainFrame.AllFrames [1]
	local threatFrame = mainFrame.AllFrames [2]
	local targetFrame = mainFrame.AllFrames [3]
	local personalPlayerFrame = mainFrame.AllFrames [4]
	local enemyNPCsFrame = mainFrame.AllFrames [5]
	local enemyPCsFrame = mainFrame.AllFrames [6]
	local friendlyNPCsFrame = mainFrame.AllFrames [7]
	local friendlyPCsFrame = mainFrame.AllFrames [8]

	--2nd row
	local auraOptionsFrame = mainFrame.AllFrames [9]
	local auraFilterFrame = mainFrame.AllFrames [10]
	local auraSpecialFrame = mainFrame.AllFrames [11]
	local auraLastEventFrame = mainFrame.AllFrames [12]
	local scriptingFrame = mainFrame.AllFrames [13]
	local runCodeFrame = mainFrame.AllFrames [14]
	local animationFrame = mainFrame.AllFrames [15]
	local advancedFrame = mainFrame.AllFrames [16]
	
	--3rd row
	local autoFrame = mainFrame.AllFrames [17]
	local profilesFrame = mainFrame.AllFrames [18]

	local generalOptionsAnchor = CreateFrame ("frame", "$parentOptionsAnchor", frontPageFrame)
	generalOptionsAnchor:SetSize (1, 1)
	generalOptionsAnchor:SetPoint ("topleft", frontPageFrame, "topleft", 10, -230)
	
	local statusBar = CreateFrame ("frame", nil, f)
	statusBar:SetPoint ("bottomleft", f, "bottomleft")
	statusBar:SetPoint ("bottomright", f, "bottomright")
	statusBar:SetHeight (20)
	DF:ApplyStandardBackdrop (statusBar)
	statusBar:SetAlpha (0.8)
	
	DF:BuildStatusbarAuthorInfo (statusBar)
	
	f.AllMenuFrames = {}
	for _, frame in ipairs (mainFrame.AllFrames) do
		tinsert (f.AllMenuFrames, frame)
	end
	tinsert (f.AllMenuFrames, generalOptionsAnchor)
	
	--> on profile change
	function f.RefreshOptionsFrame()
		for _, frame in ipairs (f.AllMenuFrames) do
			if (frame.RefreshOptions) then
				frame:RefreshOptions()
			end
		end
		Plater.UpdateMaxCastbarTextLength()
	end
	
------------------------------------------------------------------------------------------------------------
--> profile frame
	
	do
	
		--logic
			function profilesFrame.ExportCurrentProfile()
				profilesFrame.IsExporting = true
				profilesFrame.IsImporting = nil
				
				if (not profilesFrame.ImportingProfileAlert) then
					profilesFrame.ImportingProfileAlert = CreateFrame ("frame", "PlaterExportingProfileAlert", UIParent)
					profilesFrame.ImportingProfileAlert:SetSize (340, 75)
					profilesFrame.ImportingProfileAlert:SetPoint ("center")
					profilesFrame.ImportingProfileAlert:SetFrameStrata ("TOOLTIP")
					DF:ApplyStandardBackdrop (profilesFrame.ImportingProfileAlert)
					profilesFrame.ImportingProfileAlert:SetBackdropBorderColor (1, 0.8, 0.1)
					
					profilesFrame.ImportingProfileAlert.IsLoadingLabel1 = DF:CreateLabel (profilesFrame.ImportingProfileAlert, "Plater is exporting the current profile")
					profilesFrame.ImportingProfileAlert.IsLoadingLabel2 = DF:CreateLabel (profilesFrame.ImportingProfileAlert, "This may take only a few seconds")
					profilesFrame.ImportingProfileAlert.IsLoadingImage1 = DF:CreateImage (profilesFrame.ImportingProfileAlert, [[Interface\DialogFrame\UI-Dialog-Icon-AlertOther]], 32, 32)
					profilesFrame.ImportingProfileAlert.IsLoadingLabel1.align = "center"
					profilesFrame.ImportingProfileAlert.IsLoadingLabel2.align = "center"
					
					profilesFrame.ImportingProfileAlert.IsLoadingLabel1:SetPoint ("center", 16, 10)
					profilesFrame.ImportingProfileAlert.IsLoadingLabel2:SetPoint ("center", 16, -5)
					profilesFrame.ImportingProfileAlert.IsLoadingImage1:SetPoint ("left", 10, 0)
				end
				
				profilesFrame.NewProfileLabel:Hide()
				profilesFrame.NewProfileTextEntry:Hide()
				
				profilesFrame.ImportStringField:Show()
				profilesFrame.ImportingProfileAlert:Show()
				
				C_Timer.After (.1, function()
					--do not export cache data, these data can be rebuild at run time
					local captured_spells = Plater.db.profile.captured_spells
					local aura_cache_by_name = Plater.db.profile.aura_cache_by_name
					Plater.db.profile.captured_spells = {}
					Plater.db.profile.aura_cache_by_name = {}
					
					--export to string
					profilesFrame.ImportStringField:SetText (Plater.ExportProfileToString() or "failed to export")
					
					--set back again the cache data
					Plater.db.profile.captured_spells = captured_spells
					Plater.db.profile.aura_cache_by_name = aura_cache_by_name
				end)
				
				C_Timer.After (.3, function()
					profilesFrame.ImportStringField:SetFocus (true)
					profilesFrame.ImportStringField.editbox:HighlightText()
					profilesFrame.ImportingProfileAlert:Hide()
				end)
			end
			
			function profilesFrame.ImportProfile()
				profilesFrame.IsExporting = nil
				profilesFrame.IsImporting = true
				profilesFrame.ImportStringField:Show()
				C_Timer.After (.2, function()
					profilesFrame.ImportStringField:SetText ("")
					profilesFrame.ImportStringField:SetFocus (true)
				end)
				
				profilesFrame.NewProfileLabel:Show()
				profilesFrame.NewProfileTextEntry:Show()
			end
			
			function profilesFrame.HideStringField()
				profilesFrame.IsExporting = nil
				profilesFrame.IsImporting = nil
				
				profilesFrame.ImportStringField:Hide()
				profilesFrame.ImportStringField:SetText ("")
				profilesFrame.NewProfileLabel:Hide()
				profilesFrame.NewProfileTextEntry:Hide()
			end
			
			function profilesFrame.ConfirmImportScript()
				if (profilesFrame.IsExporting) then
					profilesFrame.HideStringField()
					return
				end

				local text = profilesFrame.ImportStringField:GetText()
				local profile = Plater.DecompressData (text, "print")

				profilesFrame.HideStringField()
				
				if (profile) then
					local profileName = profilesFrame.NewProfileTextEntry:GetText()
					if (profileName == "") then
						Plater:Msg ("Invalid profile name")
						return
					end
					
					--if true then  --debug: dump the uncompressed table
					--	Details:DumpTable (profile)
					--	return
					--end
					
					Plater.db:SetProfile (profileName)
					DF.table.copy (Plater.db.profile, profile)
					
					C_Timer.After (.2, function()
						Plater:RefreshConfig()
					end)
				end
			end
			
			function profilesFrame.OpenProfileManagement()
				Plater:OpenInterfaceProfile()
				f:Hide()
				C_Timer.After (.5, function()
					mainFrame:SetIndex (1)
					mainFrame:SelectIndex (_, 1)
				end)
			end
			
			profilesFrame:SetScript ("OnShow", function()
				profilesFrame.HideStringField()
			end)
		
		--frames
			--export profile button
			local exportProfileButton = DF:CreateButton (profilesFrame, profilesFrame.ExportCurrentProfile, 160, 20, "Export Profile", -1, nil, nil, "ExportButton", nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			exportProfileButton:SetPoint ("topleft", profilesFrame, "topleft", 10, startY)
			
			--import profile button
			local importProfileButton = DF:CreateButton (profilesFrame, profilesFrame.ImportProfile, 160, 20, "Import Profile", -1, nil, nil, "ImportButton", nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			importProfileButton:SetPoint ("topleft", exportProfileButton, "bottomleft", 0, -2)
			
			--import profile button
			local openManagementProfileButton = DF:CreateButton (profilesFrame, profilesFrame.OpenProfileManagement, 160, 20, "Open Profile Settings", -1, nil, nil, "ProfileSettingsButton", nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			openManagementProfileButton:SetPoint ("topleft", importProfileButton, "bottomleft", 0, -10)
			
			--text editor
			local luaeditor_backdrop_color = {.2, .2, .2, .5}
			local luaeditor_border_color = {0, 0, 0, 1}
			local edit_script_size = {620, 431}
			local buttons_size = {120, 20}
			
			local importStringField = DF:NewSpecialLuaEditorEntry (profilesFrame, edit_script_size[1], edit_script_size[2], "ImportEditor", "$parentImportEditor", true)
			importStringField:SetBackdrop ({edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1, bgFile = [[Interface\Tooltips\UI-Tooltip-Background]], tileSize = 64, tile = true})
			importStringField:SetBackdropBorderColor (unpack (luaeditor_border_color))
			importStringField:SetBackdropColor (unpack (luaeditor_backdrop_color))
			importStringField:Hide()
			profilesFrame.ImportStringField = importStringField
			DF:ReskinSlider (importStringField.scroll)
			
			--import button
			local okayButton = DF:CreateButton (importStringField, profilesFrame.ConfirmImportScript, buttons_size[1], buttons_size[2], "Okay", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			okayButton:SetIcon ([[Interface\BUTTONS\UI-Panel-BiggerButton-Up]], 20, 20, "overlay", {0.1, .9, 0.1, .9})
			
			--cancel button
			local cancelButton = DF:CreateButton (importStringField, profilesFrame.HideStringField, buttons_size[1], buttons_size[2], "Cancel", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			cancelButton:SetIcon ([[Interface\BUTTONS\UI-Panel-MinimizeButton-Up]], 20, 20, "overlay", {0.1, .9, 0.1, .9})
			
			importStringField:SetPoint ("topleft", profilesFrame, "topleft", 220, startY)
			okayButton:SetPoint ("topright", importStringField, "bottomright", 0, -10)
			cancelButton:SetPoint ("right", okayButton, "left", -20, 0)
			
			--new profile name
			local newProfileNameLabel = DF:CreateLabel (profilesFrame, "New Profile Name:", DF:GetTemplate ("font", "OPTIONS_FONT_TEMPLATE"))
			local newProfileNameTextEntry = DF:CreateTextEntry (profilesFrame, function()end, 160, 20, "ProfileNameTextEntry", _, _, options_dropdown_template)
			newProfileNameTextEntry:SetText ("MyNewProfile")
			newProfileNameTextEntry.tooltip = "A new profile is created with the imported string.\n\nInserting the name of a profile that already exists will overwrite it."
			newProfileNameLabel:SetPoint ("topleft", importStringField, "bottomleft", 0, -16)
			newProfileNameTextEntry:SetPoint ("left", newProfileNameLabel, "right", 2, 0)
			
			profilesFrame.NewProfileLabel = newProfileNameLabel
			profilesFrame.NewProfileTextEntry = newProfileNameTextEntry
			profilesFrame.NewProfileLabel:Hide()
			profilesFrame.NewProfileTextEntry:Hide()
	end
-------------------------
-- fun��es gerais dos dropdowns
	local textures = LibSharedMedia:HashTable ("statusbar")

	--anchor table
	local anchor_names = {"Top Left", "Left", "Bottom Left", "Bottom", "Bottom Right", "Right", "Top Right", "Top", "Center", "Inner Left", "Inner Right", "Inner Top", "Inner Bottom"}
	local build_anchor_side_table = function (actorType, member)
		local t = {}
		for i = 1, 13 do
			tinsert (t, {
				label = anchor_names[i], 
				value = i, 
				onclick = function (_, _, value)
					if (actorType) then
						Plater.db.profile.plate_config [actorType][member].side = value
						Plater.RefreshDBUpvalues()
						
						Plater.UpdateAllPlates()
						Plater.UpdateAllNames()
					else
						Plater.db.profile [member].side = value
						Plater.RefreshDBUpvalues()
						Plater.UpdateAllPlates()
						Plater.UpdateAllNames()
					end
				end
			})
		end
		return t
	end	
	--
	local health_bar_texture_selected = function (self, capsule, value)
		Plater.db.profile.health_statusbar_texture = value
		Plater.RefreshDBUpvalues()
		Plater.UpdateAllPlates()
	end
	local health_bar_texture_options = {}
	for name, texturePath in pairs (textures) do 
		health_bar_texture_options [#health_bar_texture_options + 1] = {value = name, label = name, statusbar = texturePath, onclick = health_bar_texture_selected}
	end
	table.sort (health_bar_texture_options, function (t1, t2) return t1.label < t2.label end)
	--
	local health_bar_bgtexture_selected = function (self, capsule, value)
		Plater.db.profile.health_statusbar_bgtexture = value
		Plater.RefreshDBUpvalues()
		Plater.UpdateAllPlates()
	end
	local health_bar_bgtexture_options = {}
	for name, texturePath in pairs (textures) do 
		health_bar_bgtexture_options [#health_bar_bgtexture_options + 1] = {value = name, label = name, statusbar = texturePath, onclick = health_bar_bgtexture_selected}
	end
	table.sort (health_bar_bgtexture_options, function (t1, t2) return t1.label < t2.label end)
	--
	local cast_bar_texture_selected = function (self, capsule, value)
		Plater.db.profile.cast_statusbar_texture = value
		Plater.RefreshDBUpvalues()
		Plater.UpdateAllPlates()
	end
	local cast_bar_texture_options = {}
	for name, texturePath in pairs (textures) do
		cast_bar_texture_options [#cast_bar_texture_options + 1] = {value = name, label = name, statusbar = texturePath, onclick = cast_bar_texture_selected}
	end
	table.sort (cast_bar_texture_options, function (t1, t2) return t1.label < t2.label end)
	--
	local cast_bar_bgtexture_selected = function (self, capsule, value)
		Plater.db.profile.cast_statusbar_bgtexture = value
		Plater.RefreshDBUpvalues()
		Plater.UpdateAllPlates()
	end
	local cast_bar_bgtexture_options = {}
	for name, texturePath in pairs (textures) do
		cast_bar_bgtexture_options [#cast_bar_bgtexture_options + 1] = {value = name, label = name, statusbar = texturePath, onclick = cast_bar_bgtexture_selected}
	end
	table.sort (cast_bar_bgtexture_options, function (t1, t2) return t1.label < t2.label end)
	--
	local health_selection_overlay_selected = function (self, capsule, value)
		Plater.db.profile.health_selection_overlay = value
		Plater.UpdateAllPlates()
	end
	local health_selection_overlay_options = {}
	for name, texturePath in pairs (textures) do
		health_selection_overlay_options [#health_selection_overlay_options + 1] = {value = name, label = name, statusbar = texturePath, onclick = health_selection_overlay_selected}
	end
	table.sort (health_selection_overlay_options, function (t1, t2) return t1.label < t2.label end)
	--
	

-------------------------------------------------------------------------------
--op��es do painel de interface da blizzard


function Plater.ChangeNameplateAnchor (_, _, value)
	if (value == 0) then
		SetCVar ("nameplateOtherAtBase", "0") --head
	elseif (value == 1) then
		SetCVar ("nameplateOtherAtBase", "1") --both
	elseif (value == 2) then
		SetCVar ("nameplateOtherAtBase", "2") --feet
	end
end
local nameplate_anchor_options = {
	{label = "Head", value = 0, onclick = Plater.ChangeNameplateAnchor, desc = "All nameplates are placed above the character."},
	{label = "Head/Feet", value = 1, onclick = Plater.ChangeNameplateAnchor, desc = "Friendly and neutral has the nameplate on their head, enemies below the feet."},
	{label = "Feet", value = 2, onclick = Plater.ChangeNameplateAnchor, desc = "All nameplates are placed below the character."},
}

local interface_options = {

		--{type = "label", get = function() return "Interface Options:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},

		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowSelf") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowSelf", math.abs (tonumber (GetCVar ("nameplateShowSelf"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowSelf") == CVAR_ENABLED)
				end
			end,
			name = "Personal Health and Mana Bars" .. CVarIcon,
			desc = "Shows a mini health and mana bars under your character." .. CVarDesc,
			nocombat = true,
		},
		{
			type = "toggle",
			get = function() return GetCVar (CVAR_RESOURCEONTARGET) == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_RESOURCEONTARGET, math.abs (tonumber (GetCVar (CVAR_RESOURCEONTARGET))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar (CVAR_RESOURCEONTARGET) == CVAR_ENABLED)
				end
			end,
			name = "Show Resources on Target" .. CVarIcon,
			desc = "Shows your resource such as combo points above your current target.\n\n'Personal Health and Mana Bars' has to be enabled" .. CVarDesc,
			nocombat = true,
		},
		{
			type = "toggle",
			get = function() return GetCVar (CVAR_SHOWALL) == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_SHOWALL, math.abs (tonumber (GetCVar (CVAR_SHOWALL))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar (CVAR_SHOWALL) == CVAR_ENABLED)
				end
			end,
			name = "Always Show Nameplates" .. CVarIcon,
			desc = "Show nameplates for all units near you. If disabled on show relevant units when you are in combat." .. CVarDesc,
			nocombat = true,
		},
		
		{type = "breakline"},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.stacking_nameplates_enabled end, --GetCVar (CVAR_PLATEMOTION) == CVAR_ENABLED
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_PLATEMOTION, value and "1" or "0")
					Plater.db.profile.stacking_nameplates_enabled = value
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar (CVAR_PLATEMOTION) == CVAR_ENABLED)
				end
			end,
			name = "Stacking Nameplates" .. CVarIcon,
			desc = "If enabled, nameplates won't overlap each other." .. CVarDesc .. "\n\n|cFFFFFF00Important|r: to set the amount of space between each nameplate see '|cFFFFFFFFNameplate Vertical Padding|r' under Advanced tab.",
			nocombat = true,
		},
		{
			type = "range",
			get = function() return tonumber (GetCVar (CVAR_CULLINGDISTANCE)) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_CULLINGDISTANCE, value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "View Distance" .. CVarIcon,
			desc = "How far you can see nameplates (in yards).\n\n|cFFFFFFFFDefault: 40|r" .. CVarDesc,
			nocombat = true,
		},
		{
			type = "toggle",
			get = function() return GetCVar (CVAR_ENEMY_MINIONS) == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_ENEMY_MINIONS, math.abs (tonumber (GetCVar (CVAR_ENEMY_MINIONS))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar (CVAR_ENEMY_MINIONS) == CVAR_ENABLED)
				end
			end,
			name = "Enemy Units (" .. (GetBindingKey ("NAMEPLATES") or "") .. "): Minions" .. CVarIcon,
			desc = "Show nameplate for enemy pets, totems and guardians." .. CVarDesc,
			nocombat = true,
		},
		
		{type = "breakline"},
		
		{
			type = "toggle",
			get = function() return GetCVar (CVAR_ENEMY_MINUS) == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_ENEMY_MINUS, math.abs (tonumber (GetCVar (CVAR_ENEMY_MINUS))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar (CVAR_ENEMY_MINUS) == CVAR_ENABLED)
				end
			end,
			name = "Enemy Units (V): Minor" .. CVarIcon,
			desc = "Show nameplate for minor enemies." .. CVarDesc,
			nocombat = true,
		},
		{
			type = "toggle",
			get = function() return GetCVar (CVAR_FRIENDLY_GUARDIAN) == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_FRIENDLY_GUARDIAN, math.abs (tonumber (GetCVar (CVAR_FRIENDLY_GUARDIAN))-1))
					SetCVar (CVAR_FRIENDLY_PETS, 	GetCVar (CVAR_FRIENDLY_GUARDIAN))
					SetCVar (CVAR_FRIENDLY_TOTEMS, GetCVar (CVAR_FRIENDLY_GUARDIAN))
					SetCVar (CVAR_FRIENDLY_MINIONS, GetCVar (CVAR_FRIENDLY_GUARDIAN))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar (CVAR_FRIENDLY_GUARDIAN) == CVAR_ENABLED)
				end
			end,
			name = "Friendly Units (" .. (GetBindingKey ("FRIENDNAMEPLATES") or "") .. "): Minions" .. CVarIcon,
			desc = "Show nameplate for friendly pets, totems and guardians.\n\nAlso check the Enabled box below Friendly Npc Config." .. CVarDesc,
			nocombat = true,
		},
}

local interface_title = Plater:CreateLabel (frontPageFrame, "Interface Options (from the client):", Plater:GetTemplate ("font", "ORANGE_FONT_TEMPLATE"))
interface_title:SetPoint (startX, startY)

local in_combat_background = Plater:CreateImage (frontPageFrame)
in_combat_background:SetColorTexture (.6, 0, 0, .1)
in_combat_background:SetPoint ("topleft", interface_title, "bottomleft", 0, 2)
in_combat_background:SetPoint ("bottomright", frontPageFrame, "bottomright", -10, 430)
in_combat_background:Hide()

local in_combat_label = Plater:CreateLabel (frontPageFrame, "you are in combat", 24, "silver")
in_combat_label:SetPoint ("right", in_combat_background, "right", -10, 0)
in_combat_label:Hide()

frontPageFrame:RegisterEvent ("PLAYER_REGEN_DISABLED")
frontPageFrame:RegisterEvent ("PLAYER_REGEN_ENABLED")
frontPageFrame:SetScript ("OnEvent", function (self, event)
	if (event == "PLAYER_REGEN_DISABLED") then
		in_combat_background:Show()
		in_combat_label:Show()
	elseif (event == "PLAYER_REGEN_ENABLED") then
		in_combat_background:Hide()
		in_combat_label:Hide()
	end
end)

DF:BuildMenu (frontPageFrame, interface_options, startX, startY-20, 300 + 60, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

function frontPageFrame.OpenNewsWindow()
	if (not PlaterNewsFrame) then
		local options = {
			width = 550,
			height = 700,
			line_amount = 13,
			line_height = 50,
		}
		
		local newsFrame = DF:CreateNewsFrame (UIParent, "PlaterNewsFrame", options, Plater.GetChangelogTable(), Plater.db.profile.news_frame)
		newsFrame:SetFrameStrata ("FULLSCREEN")
		
		local lastNews = Plater.db.profile.last_news_time
		
		newsFrame.NewsScroll.OnUpdateLineHook = function (line, lineIndex, data)
		--/run Plater.db.profile.last_news_time = 1
			local thisEntryTime = data [1]
			if (thisEntryTime > lastNews) then
				line.backdrop_color = {.4, .4, .4, .6}
				line.backdrop_color_highlight = {.5, .5, .5, .8}
				line:SetBackdropColor (.4, .4, .4, .6)
			end
		end
	end
	
	PlaterNewsFrame:Show()
	PlaterNewsFrame.NewsScroll:Refresh()
	Plater.db.profile.last_news_time = time()
	
	local numNews = DF:GetNumNews (Plater.GetChangelogTable(), Plater.db.profile.last_news_time)
	frontPageFrame.NewsButton:SetText ("Open Change Log")

end

local openNewsButton = DF:CreateButton (frontPageFrame, frontPageFrame.OpenNewsWindow, 160, 20, "Open Change Log", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
openNewsButton:SetPoint ("topright", frontPageFrame, "topright", -49, -120)
frontPageFrame.NewsButton = openNewsButton

local numNews = DF:GetNumNews (Plater.GetChangelogTable(), Plater.db.profile.last_news_time)
if (numNews > 0) then
	frontPageFrame.NewsButton:SetText ("Open Change Log (|cFFFFFF00" .. numNews .."|r)")
end

-------------------------------------------------------------------------------
-- painel para configurar debuffs e buffs

local grow_direction_names = {"Left", "Center", "Right"}
local build_grow_direction_options = function (memberName)
	local t = {}
	for i = 1, #grow_direction_names do
		tinsert (t, {
			label = grow_direction_names [i], 
			value = i, 
			onclick = function (_, _, value)
				Plater.db.profile [memberName] = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end
		})
	end
	return t
end

local on_select_stack_text_font = function (_, _, value)
	Plater.db.profile.aura_stack_font = value
	Plater.UpdateAllPlates()
end

local on_select_auratimer_text_font  = function (_, _, value)
	Plater.db.profile.aura_timer_text_font = value
	Plater.UpdateAllPlates()
end

local debuff_options = {

	--{type = "label", get = function() return "|TInterface\\GossipFrame\\AvailableLegendaryQuestIcon:0|tTest Auras:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	{type = "label", get = function() return "Test Auras:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	{
		type = "toggle",
		get = function() return Plater.DisableAuraTest and true or false end,
		set = function (self, fixedparam, value) 
			Plater.DisableAuraTest = value
			if (value) then
				auraOptionsFrame.DisableAuraTest()
			else
				auraOptionsFrame.EnableAuraTest()
			end
		end,
		name = "|TInterface\\GossipFrame\\AvailableQuestIcon:0|tDisable Testing Auras",
		desc = "Enable this to hide test auras shown when configuring.",
	},
	
	{type = "blank"},
	
	{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},	
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_enabled end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_enabled = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
			
			if (not value) then
				for _, plateFrame in ipairs (Plater.GetAllShownPlates()) do
					--for _, frame in ipairs (plateFrame.UnitFrame.BuffFrame.buffList) do
					for _, frame in ipairs (plateFrame.UnitFrame.BuffFrame.PlaterBuffList) do
						frame:Hide()
					end
				end
			end
		end,
		name = "Use Plater Auras",
		desc = "Plater will add buffs and debuffs above nameplates.",
	},
	
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_use_default end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_use_default = value
			Plater:Msg ("use Blizzard aura filtering requires a /reload.")
		end,
		name = "Use Blizzard Auras",
		desc = "The default user interface will be allowed to add auras above the nameplate.\n\n|cFFFFFF00Important|r: Plater will also add auras, you may want disable the option above (|cFFFFAA00Use Plater Auras|r) in order to prevent duplicated debuffs.\n\n|cFFFFFF00Important|r: require |cFFFFAA00/reload|r after changing this setting.",
	},
	
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_show_tooltip end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_show_tooltip = value
			Plater.UpdateAllPlates()
		end,
		name = "Show Tooltip",
		desc = "Show tooltip when hovering over the aura icon.",
	},
	
	{
		type = "range",
		get = function() return Plater.db.profile.aura_alpha end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_alpha = value
			Plater.RefreshDBUpvalues()
		end,
		min = 0,
		max = 1,
		step = 0.01,
		usedecimals = true,
		thumbscale = 1.8,
		name = "Alpha",
		desc = "Alpha",
	},
	
	{type = "blank"},
	{type = "label", get = function() return "Aura Size:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
	{
		type = "range",
		get = function() return Plater.db.profile.aura_width end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_width = value
			Plater.RefreshAuras()
			Plater.UpdateAllPlates()
		end,
		min = 8,
		max = 40,
		step = 1,
		name = "Width",
		desc = "Debuff's icon width.",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura_height end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_height = value
			Plater.RefreshAuras()
			Plater.UpdateAllPlates()
		end,
		min = 8,
		max = 40,
		step = 1,
		name = "Height",
		desc = "Debuff's icon height.",
	},
	
	{type = "blank"},
	{type = "label", get = function() return "Aura Frame 1:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
	--> grow direction
	{
		type = "select",
		get = function() return Plater.db.profile.aura_grow_direction end,
		values = function() return build_grow_direction_options ("aura_grow_direction") end,
		name = "Grow Direction",
		desc = "To which side aura icons should grow.\n\n|cFFFFFF00Important|r: debuffs are added first, buffs after.",
	},
	
	
	{
		type = "range",
		get = function() return Plater.db.profile.aura_x_offset end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_x_offset = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		min = -100,
		max = 100,
		step = 1,
		name = "X Offset",
		desc = "X Offset",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura_y_offset end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_y_offset = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		min = -100,
		max = 100,
		step = 1,
		name = "Y Offset",
		desc = "Y Offset",
	},
	
	{type = "blank"},
	{type = "label", get = function() return "Aura Frame 2:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
	{
		type = "toggle",
		get = function() return Plater.db.profile.buffs_on_aura2 end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.buffs_on_aura2 = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		name = "Enabled",
		desc = "When enabled auras are separated: Buffs are placed on this second frame, Debuffs on the first.\n\n|cFFFFFF00Important|r: require /reload when disabling this feature.",
	},
	--> grow direction
	{
		type = "select",
		get = function() return Plater.db.profile.aura2_grow_direction end,
		values = function() return build_grow_direction_options ("aura2_grow_direction") end,
		name = "Grow Direction",
		desc = "To which side aura icons should grow.",
	},
	--> offset
	{
		type = "range",
		get = function() return Plater.db.profile.aura2_x_offset end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura2_x_offset = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		min = -100,
		max = 100,
		step = 1,
		name = "X Offset",
		desc = "X Offset",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura2_y_offset end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura2_y_offset = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		min = -100,
		max = 100,
		step = 1,
		name = "Y Offset",
		desc = "Y Offset",
	},
	
	{type = "breakline"},
	
	{type = "label", get = function() return "Aura Timer:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_timer end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_timer = value
			Plater.RefreshAuras()
			Plater.UpdateAllPlates()
		end,
		name = "Enabled",
		desc = "Time left on buff or debuff.",
	},

	{
		type = "toggle",
		get = function() return Plater.db.profile.disable_omnicc_on_auras end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.disable_omnicc_on_auras = value
			Plater.RefreshOmniCCGroup()
		end,
		name = "Hide OmniCC Timer",
		desc = "OmniCC timers won't show in the aura.\n\n|cFFFFFF00Important|r: require /reload when toggling this feature.",
	},
	
	{
		type = "select",
		get = function() return Plater.db.profile.aura_timer_text_font end,
		values = function() return DF:BuildDropDownFontList (on_select_auratimer_text_font) end,
		name = "Font",
		desc = "Font of the text.",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura_timer_text_size end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_timer_text_size = value
			Plater.RefreshAuras()
			Plater.UpdateAllPlates()
		end,
		min = 7,
		max = 40,
		step = 1,
		name = "Size",
		desc = "Size",
	},
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_timer_text_shadow end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_timer_text_shadow = value
			Plater.UpdateAllPlates()
		end,
		name = "Shadow",
		desc = "Shadow",
	},
	{
		type = "color",
		get = function()
			local color = Plater.db.profile.aura_timer_text_color
			return {color[1], color[2], color[3], color[4]}
		end,
		set = function (self, r, g, b, a) 
			local color = Plater.db.profile.aura_timer_text_color
			color[1], color[2], color[3], color[4] = r, g, b, a
			Plater.UpdateAllPlates()
		end,
		name = "Color",
		desc = "Color",
	},
	{
		type = "select",
		get = function() return Plater.db.profile.aura_timer_text_anchor.side end,
		values = function() return build_anchor_side_table (nil, "aura_timer_text_anchor") end,
		name = "Anchor",
		desc = "Which side of the buff icon the timer should attach to.",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura_timer_text_anchor.x end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_timer_text_anchor.x = value
			Plater.UpdateAllPlates()
		end,
		min = -20,
		max = 20,
		step = 1,
		name = "X Offset",
		desc = "Slightly move the text horizontally.",
	},
	--y offset
	{
		type = "range",
		get = function() return Plater.db.profile.aura_timer_text_anchor.y end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_timer_text_anchor.y = value
			Plater.UpdateAllPlates()
		end,
		min = -20,
		max = 20,
		step = 1,
		name = "Y Offset",
		desc = "Slightly move the text vertically.",
	},
	
	{type = "blank"},

	{type = "label", get = function() return "Stack Counter:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},

	{
		type = "select",
		get = function() return Plater.db.profile.aura_stack_font end,
		values = function() return DF:BuildDropDownFontList (on_select_stack_text_font) end,
		name = "Font",
		desc = "Font of the text.",
	},

	{
		type = "range",
		get = function() return Plater.db.profile.aura_stack_size end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_stack_size = value
			Plater.UpdateAllPlates()
		end,
		min = 6,
		max = 24,
		step = 1,
		name = "Size",
		desc = "Size",
	},
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_stack_shadow end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_stack_shadow = value
			Plater.UpdateAllPlates()
		end,
		name = "Shadow",
		desc = "Shadow",
	},
	{
		type = "color",
		get = function()
			local color = Plater.db.profile.aura_stack_color
			return {color[1], color[2], color[3], color[4]}
		end,
		set = function (self, r, g, b, a) 
			local color = Plater.db.profile.aura_stack_color
			color[1], color[2], color[3], color[4] = r, g, b, a
			Plater.UpdateAllPlates()
		end,
		name = "Color",
		desc = "Color",
	},
	{
		type = "select",
		get = function() return Plater.db.profile.aura_stack_anchor.side end,
		values = function() return build_anchor_side_table (nil, "aura_stack_anchor") end,
		name = "Anchor",
		desc = "Which side of the buff icon the stack counter should attach to.",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura_stack_anchor.x end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_stack_anchor.x = value
			Plater.UpdateAllPlates()
		end,
		min = -20,
		max = 20,
		step = 1,
		name = "X Offset",
		desc = "Slightly move the text horizontally.",
	},
	--y offset
	{
		type = "range",
		get = function() return Plater.db.profile.aura_stack_anchor.y end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_stack_anchor.y = value
			Plater.UpdateAllPlates()
		end,
		min = -20,
		max = 20,
		step = 1,
		name = "Y Offset",
		desc = "Slightly move the text vertically.",
	},
	
	{type = "blank"},
	
	{type = "label", get = function() return "Aura Size on Personal Bar:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
	{
		type = "range",
		get = function() return Plater.db.profile.aura_width_personal end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_width_personal = value
			Plater.RefreshAuras()
			Plater.UpdateAllPlates()
		end,
		min = 8,
		max = 40,
		step = 1,
		name = "Width",
		desc = "Debuff's icon width.",
	},
	{
		type = "range",
		get = function() return Plater.db.profile.aura_height_personal end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_height_personal = value
			Plater.RefreshAuras()
			Plater.UpdateAllPlates()
		end,
		min = 8,
		max = 40,
		step = 1,
		name = "Height",
		desc = "Debuff's icon height.",
	},
	
	{type = "breakline"},

	{type = "label", get = function() return "Automatic Aura Tracking:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},

	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_show_aura_by_the_player end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_show_aura_by_the_player = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		name = "Show Auras Casted by You",
		desc = "Show Auras Casted by You.",
	},
	
	{type = "blank"},
	
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_show_important end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_show_important = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		name = "Show Important Auras",
		desc = "Show buffs and debuffs which the game tag as important.",
	},
	{
		type = "color",
		get = function()
			local color = Plater.db.profile.aura_border_colors.is_show_all
			return {color[1], color[2], color[3], color[4]}
		end,
		set = function (self, r, g, b, a) 
			local color = Plater.db.profile.aura_border_colors.is_show_all
			color[1], color[2], color[3], color[4] = r, g, b, a
			Plater.UpdateAllPlates()
		end,
		name = "Important Auras Border Color",
		desc = "Important Auras Border Color",
	},
	
	{type = "blank"},
	
	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_show_dispellable end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_show_dispellable = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		name = "Show Dispellable Buffs",
		desc = "Show auras which can be dispelled or stealed.",
	},
	{
		type = "color",
		get = function()
			local color = Plater.db.profile.aura_border_colors.steal_or_purge
			return {color[1], color[2], color[3], color[4]}
		end,
		set = function (self, r, g, b, a) 
			local color = Plater.db.profile.aura_border_colors.steal_or_purge
			color[1], color[2], color[3], color[4] = r, g, b, a
			Plater.UpdateAllPlates()
		end,
		name = "Dispellable Buffs Border Color",
		desc = "Dispellable Buffs Border Color",
	},
	
	{type = "blank"},

	{
		type = "toggle",
		get = function() return Plater.db.profile.aura_show_buff_by_the_unit end,
		set = function (self, fixedparam, value) 
			Plater.db.profile.aura_show_buff_by_the_unit = value
			Plater.RefreshDBUpvalues()
			Plater.UpdateAllPlates()
		end,
		name = "Show Buffs Casted by the Unit",
		desc = "Show Buffs Casted by the Unit it self",
	},
	--border color is buff
	{
		type = "color",
		get = function()
			local color = Plater.db.profile.aura_border_colors.is_buff
			return {color[1], color[2], color[3], color[4]}
		end,
		set = function (self, r, g, b, a) 
			local color = Plater.db.profile.aura_border_colors.is_buff
			color[1], color[2], color[3], color[4] = r, g, b, a
			Plater.UpdateAllPlates()
		end,
		name = "Buffs Border Color",
		desc = "Buffs Border Color",
	},	

}

DF:BuildMenu (auraOptionsFrame, debuff_options, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

auraOptionsFrame.AuraTesting = {
	DEBUFF = {
		{
			SpellName = "Shadow Word: Pain",
			SpellTexture = 136207,
			Count = 1,
			Duration = 7,
			SpellID = 589,
		},
		{
			SpellName = "Vampiric Touch",
			SpellTexture = 135978,
			Count = 1,
			Duration = 5,
			SpellID = 34914,
		},
		{
			SpellName = "Mind Flay",
			SpellTexture = 136208,
			Count = 3,
			Duration = 5,
			SpellID = 15407,
		},
	},
	
	BUFF = {
		{
			SpellName = "Twist of Fate",
			SpellTexture = 237566,
			Count = 1,
			Duration = 9,
			SpellID = 123254,
		},
		{
			SpellName = "Empty Mind",
			SpellTexture = 136206,
			Count = 4,
			Duration = 7,
			SpellID = 247226,
		},
	}
}

Plater.CreateAuraTesting()

----------------------------------------------------------------------------------------------------------------------------------------------------------------
--> aura tracking

-- ~aura ~buff ~debuff
	
	local aura_options = {
		height = 330, 
		row_height = 16,
		width = 200,
		button_text_template = "PLATER_BUTTON", --text template
	}
	
	local method_change_callback = function()
		Plater.RefreshDBUpvalues()
	end
	
	local debuff_panel_texts = {
		BUFFS_AVAILABLE = "Click to add buffs to blacklist",
		BUFFS_IGNORED = "Buffs on the blacklist (filtered out)",
		DEBUFFS_AVAILABLE = "Click to add debuffs to blacklist",
		DEBUFFS_IGNORED = "Debuffs on the blacklist (filtered out)",
		BUFFS_TRACKED = "Aditional buffs to track",
		DEBUFFS_TRACKED = "Aditional debuffs to track",
		MANUAL_DESC = "Auras are being tracked manually, the addon only check for auras you entered below.\nShow debuffs only casted by you, buffs from any source.\nYou may use the 'Buff Special' tab to add debuffs from any source.",
	}
	
	auraFilterFrame:SetSize (f:GetWidth(), f:GetHeight() + startY)
	
	local auraConfigPanel = DF:CreateAuraConfigPanel (auraFilterFrame, "$parentAuraConfig", Plater.db.profile, method_change_callback, aura_options, debuff_panel_texts)
	auraConfigPanel:SetPoint ("topleft", auraFilterFrame, "topleft", 10, startY)
	auraConfigPanel:SetSize (f:GetWidth() - 20, f:GetHeight() + startY)
	auraConfigPanel:Show()
	auraFilterFrame.auraConfigPanel = auraConfigPanel
	
	function auraFilterFrame.RefreshOptions()
		auraConfigPanel:OnProfileChanged (Plater.db.profile)
	end


--------------------------------------------------------------------------------------------------------------------------------------------------------------
--> last event auras

	--local auraLastEventFrame = mainFrame.AllFrames [8]
	do
		--options
		local scroll_width = 1050
		local scroll_height = 442
		local scroll_lines = 21
		local scroll_line_height = 20
		local backdrop_color = {.2, .2, .2, 0.2}
		local backdrop_color_on_enter = {.8, .8, .8, 0.4}
		local y = startY
		local headerY = y - 20
		local scrollY = headerY - 20
	
		--header
		local headerTable = {
			{text = "Icon", width = 32},
			{text = "Spell ID", width = 74},
			{text = "Spell Name", width = 162},
			{text = "Source", width = 130},
			{text = "Spell Type", width = 70},
			{text = "Add to Tracklist", width = 100},
			{text = "Add to Blacklist", width = 100},
			{text = "Add to Special Auras", width = 120},
			{text = "Add to Script Trigger", width = 120},
			{text = "Create WeakAura", width = 120, icon = _G.WeakAuras and [[Interface\AddOns\WeakAuras\Media\Textures\icon]] or ""},
		}
		local headerOptions = {
			padding = 2,
		}
		
		auraLastEventFrame.Header = DF:CreateHeader (auraLastEventFrame, headerTable, headerOptions)
		auraLastEventFrame.Header:SetPoint ("topleft", auraLastEventFrame, "topleft", 10, headerY)
	
		--line scripts
		local line_onenter = function (self)
			self:SetBackdropColor (unpack (backdrop_color_on_enter))
			if (self.SpellID) then
				GameTooltip:SetOwner (self, "ANCHOR_TOPLEFT")
				GameTooltip:SetSpellByID (self.SpellID)
				GameTooltip:AddLine (" ")
				GameTooltip:Show()
			end
		end
		
		local line_onleave = function (self)
			self:SetBackdropColor (unpack (backdrop_color))
			GameTooltip:Hide()
		end
		
		local widget_onenter = function (self)
			local line = self:GetParent()
			line:GetScript ("OnEnter")(line)
		end
		local widget_onleave = function (self)
			local line = self:GetParent()
			line:GetScript ("OnLeave")(line)
		end
		
		local line_add_tracklist = function (self)
			self = self:GetCapsule()

			if (self.AuraType == "BUFF") then
				if (Plater.db.profile.aura_tracker.track_method == 0x1) then
					Plater.db.profile.aura_tracker.buff_tracked [self.SpellID] = true
					Plater:Msg ("Aura added to buff tracking.")
					
				elseif (Plater.db.profile.aura_tracker.track_method == 0x2) then
					local added = DF.table.addunique (Plater.db.profile.aura_tracker.buff, self.SpellID)
					if (added) then
						Plater:Msg ("Aura added to manual buff tracking.")
					else
						Plater:Msg ("Aura not added: already on track.")
					end
					
				end
			
			elseif (self.AuraType == "DEBUFF") then
				if (Plater.db.profile.aura_tracker.track_method == 0x1) then
					Plater.db.profile.aura_tracker.debuff_tracked [self.SpellID] = true
					Plater:Msg ("Aura added to debuff tracking.")
					
				elseif (Plater.db.profile.aura_tracker.track_method == 0x2) then
					local added = DF.table.addunique (Plater.db.profile.aura_tracker.debuff, self.SpellID)
					if (added) then
						Plater:Msg ("Aura added to manual debuff tracking.")
					else
						Plater:Msg ("Aura not added: already on track.")
					end
					
				end
			end
		end
		
		local line_add_ignorelist = function (self)
			self = self:GetCapsule()
			
			if (self.AuraType == "BUFF") then
				if (Plater.db.profile.aura_tracker.track_method == 0x1) then
					Plater.db.profile.aura_tracker.buff_banned [self.SpellID] = true
					Plater:Msg ("Aura added to buff blacklist.")
				end
			
			elseif (self.AuraType == "DEBUFF") then
				if (Plater.db.profile.aura_tracker.track_method == 0x1) then
					Plater.db.profile.aura_tracker.debuff_banned [self.SpellID] = true
					Plater:Msg ("Aura added to debuff blacklist.")
				end
			end
		end
		
		local line_add_special = function (self)
			self = self:GetCapsule()
			
			local added = DF.table.addunique (Plater.db.profile.extra_icon_auras, self.SpellID)
			if (added) then
				Plater:Msg ("Aura added to the special aura container.")
			else
				Plater:Msg ("Aura not added: already on the special container.")
			end
		end
		
		local line_onclick_trigger_dropdown = function (self, fixedValue, scriptID)
			local scriptObject = Plater.GetScriptObject (scriptID)
			local spellName = GetSpellInfo (self.SpellID)
			
			if (scriptObject and spellName) then
				if (scriptObject.ScriptType == 1 or scriptObject.ScriptType == 2) then
					--add the trigger
					local added = DF.table.addunique (scriptObject.SpellIds, self.SpellID)
					if (added) then
						--reload all scripts
						Plater.WipeAndRecompileAllScripts ("script")
						Plater:Msg ("Trigger added to script.")
					else
						Plater:Msg ("Script already have this trigger.")
					end
					
					--refresh and select no option
					self:Refresh()
					self:Select (0, true)
				end
			end
		end
		
		local line_refresh_trigger_dropdown = function (self)
			if (not self.SpellID) then
				return {}
			end
			
			local t = {}
			local spellName = GetSpellInfo (self.SpellID)

			local scripts = Plater.GetAllScripts ("script")
			for i = 1, #scripts do
				local scriptObject = scripts [i]
				if (scriptObject.ScriptType == 1 or scriptObject.ScriptType == 2) then
					tinsert (t, {0, 0, scriptObject.Name, scriptObject.Enabled and 1 or 0, label = scriptObject.Name, value = i, color = scriptObject.Enabled and "white" or "red", onclick = line_onclick_trigger_dropdown, desc = scriptObject.Desc})
				end
			end
			
			table.sort (t, Plater.SortScripts)
			
			return t
		end
		
		local line_create_aura = function (self)
			self = self:GetCapsule()
			
			if (Details) then
				local spellName, _, spellIcon = GetSpellInfo (self.SpellID)
				local encounterID = self.EncounterID
				
				Details:OpenAuraPanel (self.SpellID, spellName, spellIcon, encounterID, self.AuraType == "BUFF" and 5 or self.AuraType == "DEBUFF" and 1 or self.IsCast and 7 or 2, 1)
				PlaterOptionsPanelFrame:Hide()
			else
				Plater:Msg ("Details! Damage Meter not found, install it from the Twitch App!")
			end
		end
	
		local oneditfocusgained_spellid = function (self, capsule)
			self:HighlightText (0)
		end
	
		--line
		local scroll_createline = function (self, index)
		
			local line = CreateFrame ("button", "$parentLine" .. index, self)
			line:SetPoint ("topleft", self, "topleft", 1, -((index-1)*(scroll_line_height+1)) - 1)
			line:SetSize (scroll_width - 2, scroll_line_height)
			line:SetScript ("OnEnter", line_onenter)
			line:SetScript ("OnLeave", line_onleave)
			
			line:SetBackdrop ({bgFile = [[Interface\Tooltips\UI-Tooltip-Background]], tileSize = 64, tile = true})
			line:SetBackdropColor (unpack (backdrop_color))
			
			DF:Mixin (line, DF.HeaderFunctions)
			
			local icon = line:CreateTexture ("$parentSpellIcon", "overlay")
			icon:SetSize (scroll_line_height - 2, scroll_line_height - 2)
			
			local spell_id = DF:CreateTextEntry (line, function()end, headerTable[2].width, 20, nil, nil, nil, DF:GetTemplate ("dropdown", "OPTIONS_DROPDOWN_TEMPLATE"))
			spell_id:SetHook ("OnEditFocusGained", oneditfocusgained_spellid)
	
			local spell_name = DF:CreateLabel (line, "", DF:GetTemplate ("font", "PLATER_SCRIPTS_NAME"))
			local source_name = DF:CreateLabel (line, "", DF:GetTemplate ("font", "PLATER_SCRIPTS_NAME"))
			local spell_type = DF:CreateLabel (line, "", DF:GetTemplate ("font", "PLATER_SCRIPTS_NAME"))

			local add_tracklist = DF:CreateButton (line, line_add_tracklist, headerTable[6].width, 20, "Add", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			local add_ignorelist = DF:CreateButton (line, line_add_ignorelist, headerTable[7].width, 20, "Add", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			local add_special = DF:CreateButton (line, line_add_special, headerTable[8].width, 20, "Add", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			
			local add_script_trigger = DF:CreateDropDown (line, line_refresh_trigger_dropdown, 1, headerTable[9].width, 20, nil, nil, DF:GetTemplate ("dropdown", "OPTIONS_DROPDOWN_TEMPLATE"))
			
			local create_aura = DF:CreateButton (line, line_create_aura, headerTable[10].width, 20, "Create", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			
			spell_id:SetHook ("OnEnter", widget_onenter)
			spell_id:SetHook ("OnLeave", widget_onleave)
			
			add_tracklist:SetHook ("OnEnter", widget_onenter)
			add_tracklist:SetHook ("OnLeave", widget_onleave)
			
			add_ignorelist:SetHook ("OnEnter", widget_onenter)
			add_ignorelist:SetHook ("OnLeave", widget_onleave)
			
			add_special:SetHook ("OnEnter", widget_onenter)
			add_special:SetHook ("OnLeave", widget_onleave)
			
			add_script_trigger:SetHook ("OnEnter", widget_onenter)
			add_script_trigger:SetHook ("OnLeave", widget_onleave)
			
			create_aura:SetHook ("OnEnter", widget_onenter)
			create_aura:SetHook ("OnLeave", widget_onleave)
			
			line:AddFrameToHeaderAlignment (icon)
			line:AddFrameToHeaderAlignment (spell_id)
			line:AddFrameToHeaderAlignment (spell_name)
			line:AddFrameToHeaderAlignment (source_name)
			line:AddFrameToHeaderAlignment (spell_type)
			line:AddFrameToHeaderAlignment (add_tracklist)
			line:AddFrameToHeaderAlignment (add_ignorelist)
			line:AddFrameToHeaderAlignment (add_special)
			line:AddFrameToHeaderAlignment (add_script_trigger)
			line:AddFrameToHeaderAlignment (create_aura)
			
			line:AlignWithHeader (auraLastEventFrame.Header, "left")
			
			line.Icon = icon
			line.SpellIDEntry = spell_id
			line.SpellName = spell_name
			line.SourceName = source_name
			line.SpellType = spell_type
			line.AddTrackList = add_tracklist
			line.AddIgnoreList = add_ignorelist
			line.AddSpecial = add_special
			line.AddTrigger = add_script_trigger
			line.CreateAura = create_aura
			
			return line
		end
		
		--refresh scroll
		local IsSearchingFor
		local scroll_refresh = function (self, data, offset, total_lines)
		
			local dataInOrder = {}
			
			if (IsSearchingFor and IsSearchingFor ~= "") then
				if (self.SearchCachedTable and IsSearchingFor == self.SearchCachedTable.SearchTerm) then
					dataInOrder = self.SearchCachedTable
				else
					for i = 1, #data do
						local spellID = data[i] [1]
						local spellName, _, spellIcon = GetSpellInfo (spellID)
						
						if (spellName:lower():find (IsSearchingFor)) then
							dataInOrder [#dataInOrder+1] = {i, data[i], spellName}
						end
					end

					self.SearchCachedTable = dataInOrder
					self.SearchCachedTable.SearchTerm = IsSearchingFor
				end
			else
				if (not self.CachedTable) then
					for i = 1, #data do
						local spellID = data[i] [1]
						local spellName, _, spellIcon = GetSpellInfo (spellID)
						dataInOrder [#dataInOrder+1] = {i, data[i], spellName}
					end
					self.CachedTable = dataInOrder
				end
				
				dataInOrder = self.CachedTable
			end

			table.sort (dataInOrder, DF.SortOrder3R)
			data = dataInOrder
		
			for i = 1, total_lines do
				local index = i + offset
				local spellTable = data [index] and data [index] [2]
				
				if (spellTable) then
					local line = self:GetLine (i)
					local spellID = spellTable [1]
					local spellData = spellTable [2]
					
					local spellName, _, spellIcon = GetSpellInfo (spellID)
					
					line.value = spellTable
					
					if (spellName) then
						line.Icon:SetTexture (spellIcon)
						line.Icon:SetTexCoord (.1, .9, .1, .9)
						
						line.SpellName:SetTextTruncated (spellName, headerTable [3].width)
						line.SourceName:SetTextTruncated (spellData.source, headerTable [4].width)
						
						if (spellData.type == "BUFF") then
							line.SpellType.color = "PLATER_BUFF"
							
						elseif (spellData.type == "DEBUFF") then
							line.SpellType.color = "PLATER_DEBUFF"
							
						elseif (spellData.event == "SPELL_CAST_START") then
							line.SpellType.color = "PLATER_CAST"
							
						end
						
						line.SpellID = spellID
						
						line.SpellIDEntry:SetText (spellID)

						--{event = token, source = sourceName, type = auraType, npcID = Plater:GetNpcIdFromGuid (sourceGUID or "")}

						line.SpellType:SetText (spellData.event == "SPELL_CAST_START" and "Spell Cast" or spellData.event == "SPELL_AURA_APPLIED" and spellData.type)
						
						line.AddTrackList.SpellID = spellID
						line.AddTrackList.AuraType = spellData.type
						line.AddTrackList.EncounterID = spellData.encounterID
						
						line.AddIgnoreList.SpellID = spellID
						line.AddIgnoreList.AuraType = spellData.type
						line.AddIgnoreList.EncounterID = spellData.encounterID
						
						line.AddSpecial.SpellID = spellID
						line.AddSpecial.AuraType = spellData.type
						line.AddSpecial.EncounterID = spellData.encounterID
						
						line.CreateAura.SpellID = spellID
						line.CreateAura.AuraType = spellData.type
						line.CreateAura.IsCast = spellData.event == "SPELL_CAST_START"
						line.CreateAura.EncounterID = spellData.encounterID
						
						line.AddTrigger.SpellID = spellID
						line.AddTrigger:Refresh()
						
						--manual tracking doesn't have a black list
						if (Plater.db.profile.aura_tracker.track_method == 0x1) then
							line.AddIgnoreList:Enable()
							
						elseif (Plater.db.profile.aura_tracker.track_method == 0x2) then
							line.AddIgnoreList:Disable()
							
						end
						
					else
						line:Hide()
					end
				end
			end
		end
		
		--create scroll
		local spells_scroll = DF:CreateScrollBox (auraLastEventFrame, "$parentSpellScroll", scroll_refresh, {}, scroll_width, scroll_height, scroll_lines, scroll_line_height)
		DF:ReskinSlider (spells_scroll)
		spells_scroll:SetPoint ("topleft", auraLastEventFrame, "topleft", 10, scrollY)
		
		spells_scroll:SetScript ("OnShow", function (self)
			if (self.LastRefresh and self.LastRefresh+0.5 > GetTime()) then
				return
			end
			self.LastRefresh = GetTime()
		
			local newData = {}
			
			for spellID, spellTable in pairs (DB_CAPTURED_SPELLS) do
				tinsert (newData, {spellID, spellTable})
			end
			
			self.CachedTable = nil
			self.SearchCachedTable = nil
			
			self:SetData (newData)
			self:Refresh()
		end)
		
		--create lines
		for i = 1, scroll_lines do 
			spells_scroll:CreateLine (scroll_createline)
		end

		--create button to open spell list on Details!
		local openDetailsSpellList = function()
			if (Details) then
				Details.OpenForge()
				PlaterOptionsPanelFrame:Hide()
				--select all spells in the details! all spells panel
				if (DetailsForgePanel and DetailsForgePanel.SelectModule) then
					-- module 2 is the All Spells
					DetailsForgePanel.SelectModule (_, _, 2)
				end
			else
				Plater:Msg ("Details! Damage Meter is required and isn't installed, get it on Twitch App!")
			end
		end
		
		local open_spell_list_button = DF:CreateButton (auraLastEventFrame, openDetailsSpellList, 160, 20, "Open Full Spell List", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
		open_spell_list_button:SetPoint ("bottomright", spells_scroll, "topright", 0, 24)

		--create the clean list button
			local wipe_spell_list = function()
				wipe (DB_CAPTURED_SPELLS)
				spells_scroll:Hide()
				C_Timer.After (0.016, function() spells_scroll:Show(); spells_scroll:Refresh() end)
			end
			local clear_list_button = DF:CreateButton (auraLastEventFrame, wipe_spell_list, 160, 20, "Clear List", -1, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"), DF:GetTemplate ("font", "PLATER_BUTTON"))
			clear_list_button:SetPoint ("right", open_spell_list_button, "left", -6, 0)
		
		--create search box
			function auraLastEventFrame.OnSearchBoxTextChanged()
				local text = auraLastEventFrame.AuraSearchTextEntry:GetText()
				if (text and string.len (text) > 0) then
					IsSearchingFor = text:lower()
				else
					IsSearchingFor = nil
				end
				spells_scroll:Refresh()
			end

			local aura_search_textentry = DF:CreateTextEntry (auraLastEventFrame, function()end, 160, 20, "AuraSearchTextEntry", _, _, options_dropdown_template)
			aura_search_textentry:SetPoint ("right", clear_list_button, "left", -6, 0)
			aura_search_textentry:SetHook ("OnChar",		auraLastEventFrame.OnSearchBoxTextChanged)
			aura_search_textentry:SetHook ("OnTextChanged", 	auraLastEventFrame.OnSearchBoxTextChanged)
			aura_search_label = DF:CreateLabel (auraLastEventFrame, "Search:", DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE"))
			aura_search_label:SetPoint ("right", aura_search_textentry, "left", -2, 0)
		
		--create the title
		auraLastEventFrame.TitleDescText = Plater:CreateLabel (auraLastEventFrame, "Quick way to manage auras from a recent raid boss or dungeon run", 10, "silver")
		auraLastEventFrame.TitleDescText:SetPoint ("bottomleft", spells_scroll, "topleft", 0, 26)
		auraLastEventFrame.TitleText = Plater:CreateLabel (auraLastEventFrame, "Aura Ease", 14, "orange")
		auraLastEventFrame.TitleText:SetPoint ("bottomleft", auraLastEventFrame.TitleDescText, "topleft", 0, 2)
		
	end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> special auras
--> special aura container
	do 
		--> scroll with auras added to the special aura container
		local specialAuraFrame = CreateFrame ("frame", nil, auraSpecialFrame)
		specialAuraFrame:SetHeight (480)
		specialAuraFrame:SetPoint ("topleft", auraSpecialFrame, "topleft", startX, startY)
		specialAuraFrame:SetPoint ("topright", auraSpecialFrame, "topright", -10, startY)
		--DF:ApplyStandardBackdrop (specialAuraFrame, false, 0.6)
		
		local scroll_width = 280
		local scroll_height = 440
		local scroll_lines = 15
		local scroll_line_height = 20
		local backdrop_color = {.8, .8, .8, 0.2}
		local backdrop_color_on_enter = {.8, .8, .8, 0.4}
		local y = startY
		
		local showSpellWithSameName = function (self, spellID) 
			local spellName = GetSpellInfo (spellID)
			if (spellName) then
				local spellsWithSameName = Plater.db.profile.aura_cache_by_name [lower (spellName)]
				if (not spellsWithSameName) then
					DF.AddSpellWithSameName (spellID, Plater.db.profile.aura_cache_by_name)
					spellsWithSameName = Plater.db.profile.aura_cache_by_name [lower (spellName)]
				end
				
				if (spellsWithSameName) then
					GameCooltip2:Preset (2)
					GameCooltip2:SetOwner (self, "left", "right", 2, 0)
					GameCooltip2:SetOption ("TextSize", 10)
					
					for i, spellID in ipairs (spellsWithSameName) do
						local spellName, _, spellIcon = GetSpellInfo (spellID)
						if (spellName) then
							GameCooltip2:AddLine (spellName .. " (" .. spellID .. ")")
							GameCooltip2:AddIcon (spellIcon, 1, 1, 14, 14, .1, .9, .1, .9)
						end
					end
					
					GameCooltip2:Show()
				end
			end
		end
		
		local line_onenter = function (self)
			self:SetBackdropColor (unpack (backdrop_color_on_enter))
			local spellid = select (7, GetSpellInfo (self.value))
			if (spellid) then
				GameTooltip:SetOwner (self, "ANCHOR_TOPLEFT");
				GameTooltip:SetSpellByID (spellid)
				GameTooltip:AddLine (" ")
				GameTooltip:Show()
				
				showSpellWithSameName (self, spellid)
			end
		end
		
		local line_onleave = function (self)
			self:SetBackdropColor (unpack (backdrop_color))
			GameTooltip:Hide()
			GameCooltip2:Hide()
		end
		
		local onclick_remove_button = function (self)
			local spell = self:GetParent().value
			local data = self:GetParent():GetParent():GetData()
			
			for i = 1, #data do
				if (data[i] == spell) then
					tremove (data, i)
					break
				end
			end
			
			self:GetParent():GetParent():Refresh()
			Plater.RefreshDBUpvalues()
		end
		
		local on_toggle_mine = function (self, spellID, state)
			Plater.db.profile.extra_icon_auras_mine [spellID] = state
			Plater.RefreshDBLists()
		end
		
		local scroll_createline = function (self, index)
			local line = CreateFrame ("button", "$parentLine" .. index, self)
			line:SetPoint ("topleft", self, "topleft", 1, -((index-1)*(scroll_line_height+1)) - 1)
			line:SetSize (scroll_width - 2, scroll_line_height)
			line:SetScript ("OnEnter", line_onenter)
			line:SetScript ("OnLeave", line_onleave)
			
			line:SetBackdrop ({bgFile = [[Interface\Tooltips\UI-Tooltip-Background]], tileSize = 64, tile = true})
			line:SetBackdropColor (unpack (backdrop_color))
			
			local icon = line:CreateTexture ("$parentIcon", "overlay")
			icon:SetSize (scroll_line_height - 2, scroll_line_height - 2)
			
			local name = line:CreateFontString ("$parentName", "overlay", "GameFontNormal")

			local remove_button = CreateFrame ("button", "$parentRemoveButton", line, "UIPanelCloseButton")
			remove_button:SetSize (21, 21)
			remove_button:SetScript ("OnClick", onclick_remove_button)
			remove_button:SetPoint ("right", line, "right", -6, 0)
			remove_button:SetNormalTexture([[Interface\GLUES\LOGIN\Glues-CheckBox-Check]])
			remove_button:SetPushedTexture([[Interface\GLUES\LOGIN\Glues-CheckBox-Check]])
			remove_button:GetNormalTexture():SetDesaturated (true)
			remove_button:GetPushedTexture():SetDesaturated (true)
			remove_button:GetPushedTexture():ClearAllPoints()
			remove_button:GetPushedTexture():SetPoint ("center")
			remove_button:GetPushedTexture():SetSize (18, 18)
			
			local onlyMineCheckbox = DF:CreateSwitch (line, on_toggle_mine, true, _, _, _, _, "mineCheckbox", "$parentMineToggle" .. index, _, _, _, nil, DF:GetTemplate ("switch", "OPTIONS_CHECKBOX_BRIGHT_TEMPLATE"))
			onlyMineCheckbox:SetAsCheckBox()
			onlyMineCheckbox:SetPoint ("right", remove_button, "left", -22, 0)
			
			icon:SetPoint ("left", line, "left", 2, 0)
			name:SetPoint ("left", icon, "right", 2, 0)
			
			line.icon = icon
			line.name = name
			line.removebutton = remove_button
			line.mineCheckbox = onlyMineCheckbox
			
			return line
		end

		local scroll_refresh = function (self, data, offset, total_lines)
			for i = 1, total_lines do
				local index = i + offset
				local aura = data [index]
				if (aura) then
					local line = self:GetLine (i)
					local name, _, icon = GetSpellInfo (aura)
					line.value = aura
					
					if (name) then
						line.name:SetText (name)
						line.icon:SetTexture (icon)
						line.icon:SetTexCoord (.1, .9, .1, .9)
						line.mineCheckbox:SetFixedParameter (aura)
						line.mineCheckbox:SetValue (Plater.db.profile.extra_icon_auras_mine [aura] or false)
					else
						line.name:SetText ("unknown aura")
						line.icon:SetTexture ("")
						line.icon:SetTexture ([[Interface\InventoryItems\WoWUnknownItem01]])
					end
				end
			end
		end
		
		local special_auras_added = DF:CreateScrollBox (specialAuraFrame, "$parentSpecialAurasAdded", scroll_refresh, Plater.db.profile.extra_icon_auras, scroll_width, scroll_height, scroll_lines, scroll_line_height)
		DF:ReskinSlider (special_auras_added)
		special_auras_added.__background:SetAlpha (.4)
		special_auras_added:SetPoint ("topleft", specialAuraFrame, "topleft", 0, -40)
		
		local title = DF:CreateLabel (specialAuraFrame, "Special Auras:", DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE"))
		DF:SetFontSize (title, 12)
		title:SetPoint ("bottomleft", special_auras_added, "topleft", 0, 2)
		
		local removeLabel = DF:CreateLabel (specialAuraFrame, "remove", DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE"))
		--DF:SetFontSize (title, 12)
		removeLabel:SetPoint ("bottomright", special_auras_added, "topright", 0, 2)
		
		local onlyMineLabel = DF:CreateLabel (specialAuraFrame, "only mine", DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE"))
		--DF:SetFontSize (title, 12)
		onlyMineLabel:SetPoint ("bottomright", special_auras_added, "topright", -40, 2)
		
		for i = 1, scroll_lines do 
			special_auras_added:CreateLine (scroll_createline)
		end
		
		--> text entry to input the aura name
		local new_buff_string = DF:CreateLabel (specialAuraFrame, "Add Special Aura", DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE"))
		DF:SetFontSize (new_buff_string, 12)
		
		local new_buff_entry = DF:CreateTextEntry (specialAuraFrame, function()end, 200, 20, "NewSpecialAuraTextBox", _, _, options_dropdown_template)
		new_buff_entry.tooltip = "Enter the aura name using lower case letters.\n\nYou can add several spells at once using |cFFFFFF00;|r to separate each spell name."
		new_buff_entry:SetJustifyH ("left")
		
		new_buff_entry.SpellHashTable = {}
		new_buff_entry.SpellIndexTable = {}
		
		function new_buff_entry.LoadGameSpells()
			if (not next (new_buff_entry.SpellHashTable)) then
				--load all spells in the game
				DF:LoadAllSpells (new_buff_entry.SpellHashTable, new_buff_entry.SpellIndexTable)
				return true
			end
		end
		
		new_buff_entry:SetHook ("OnEditFocusGained", function (self, capsule)
			new_buff_entry.LoadGameSpells()
			new_buff_entry.SpellAutoCompleteList = new_buff_entry.SpellIndexTable
			new_buff_entry:SetAsAutoComplete ("SpellAutoCompleteList", nil, true)
		end)
		
		new_buff_entry.GetSpellIDFromString = function (text)
			--check if the user entered a spell ID
			local isSpellID = tonumber (text)
			if (isSpellID and isSpellID > 1 and isSpellID < 10000000) then
				local isValidSpellID = GetSpellInfo (isSpellID)
				if (isValidSpellID) then
					return isSpellID
				else
					return
				end
			end
			
			--get the spell ID from the spell name
			text = lower (text)
			local spellID = new_buff_entry.SpellHashTable [text]
			if (not spellID) then
				return
			end
			
			return spellID
		end		
		
		--> add aura button
		local add_buff_button = DF:CreateButton (specialAuraFrame, function()
		
			local text = new_buff_entry.text
			new_buff_entry:SetText ("")
			new_buff_entry:ClearFocus()
			
			if (text ~= "") then
				--> check for more than one spellname
				if (text:find (";")) then
					for _, spellName in ipairs ({strsplit (";", text)}) do
						spellName = DF:trim (spellName)
						local spellID = new_buff_entry.GetSpellIDFromString (spellName)

						if (spellID) then
							tinsert (Plater.db.profile.extra_icon_auras, spellID)
						else
							print ("spellId not found for spell:", spellName)
						end
					end
				else
					--get the spellId
					local spellID = new_buff_entry.GetSpellIDFromString (text)
					if (not spellID) then
						print ("spellID for spell ", text, "not found")
						return
					end
				
					tinsert (Plater.db.profile.extra_icon_auras, spellID)
				end
				
				special_auras_added:Refresh()
				Plater.RefreshDBUpvalues()
			end
			
		end, 100, 20, "Add Aura", nil, nil, nil, nil, nil, nil, DF:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE"))		

		new_buff_entry:SetPoint ("topleft",  special_auras_added, "topright", 40, 0)
		new_buff_string:SetPoint ("bottomleft", new_buff_entry, "topleft", 0, 2)
		add_buff_button:SetPoint ("topleft", new_buff_entry, "bottomleft", 0, -2)
		add_buff_button.tooltip = "Add the aura to be tracked."
		
		--
		local especial_aura_settings = {
			{type = "label", get = function() return "Anchor Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--anchor
			{
				type = "select",
				get = function() return Plater.db.profile.extra_icon_anchor.side end,
				values = function() return build_anchor_side_table (false, "extra_icon_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--x offset
			{
				type = "range",
				get = function() return Plater.db.profile.extra_icon_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--y offset
			{
				type = "range",
				get = function() return Plater.db.profile.extra_icon_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},
			--show timer
			{
				type = "toggle",
				get = function() return Plater.db.profile.extra_icon_show_timer end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_show_timer = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Timer",
				desc = "Show Timer",
			},
			--show caster name
			{
				type = "toggle",
				get = function() return Plater.db.profile.extra_icon_caster_name end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_caster_name = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Caster Name",
				desc = "Show Caster Name (if player)",
			},
			
			--width
			{
				type = "range",
				get = function() return Plater.db.profile.extra_icon_width end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_width = value
					Plater.UpdateAllPlates()
				end,
				min = 8,
				max = 128,
				step = 1,
				name = "Width",
				desc = "Width",
			},
			--height
			{
				type = "range",
				get = function() return Plater.db.profile.extra_icon_height end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_height = value
					Plater.UpdateAllPlates()
				end,
				min = 8,
				max = 128,
				step = 1,
				name = "Height",
				desc = "Height",
			},
			--wide icons
			{
				type = "toggle",
				get = function() return Plater.db.profile.extra_icon_wide_icon end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_wide_icon = value
					Plater.UpdateAllPlates()
				end,
				name = "Wide Icons",
				desc = "Wide Icons",
			},
			--border color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.extra_icon_border_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.extra_icon_border_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Default Border Color",
				desc = "Default Border Color",
			},
			
			{type = "breakline"},
			
			{type = "label", get = function() return "Auto Add These Types of Auras:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			
			--show crowd control auras
			{
				type = "toggle",
				get = function() return Plater.db.profile.debuff_show_cc end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.debuff_show_cc = value
					Plater.RefreshDBUpvalues()
					Plater.UpdateAllPlates()
				end,
				name = "Crowd Control",
				desc = "When the unit has a crowd control spell (such as Polymorph).",
			},
			--cc border color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.debuff_show_cc_border
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.debuff_show_cc_border
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Crowd Control Border Color",
				desc = "Crowd Control Border Color",
			},
			
			{type = "blank"},
			
			--show purge icons
			{
				type = "toggle",
				get = function() return Plater.db.profile.extra_icon_show_purge end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.extra_icon_show_purge = value
					Plater.RefreshDBUpvalues()
					Plater.UpdateAllPlates()
				end,
				name = "Dispellable",
				desc = "When the unit has an aura which can be dispellable or purge by you",
			},
			--purge border color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.extra_icon_show_purge_border
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.extra_icon_show_purge_border
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Dispellable Border Color",
				desc = "Dispellable Border Color",
			},
		
		}
		
		auraSpecialFrame.ExampleImageDesc = DF:CreateLabel (auraSpecialFrame, "Special auras look like this:", 14)
		auraSpecialFrame.ExampleImageDesc:SetPoint (330, -220)
		auraSpecialFrame.ExampleImage = DF:CreateImage (auraSpecialFrame, [[Interface\AddOns\Plater\images\extra_icon_example]], 256*0.8, 128*0.8)
		auraSpecialFrame.ExampleImage:SetPoint (330, -234)
		auraSpecialFrame.ExampleImage:SetAlpha (.834)
		
		local fff = CreateFrame ("frame", "$parentExtraIconsSettings", auraSpecialFrame)
		fff:SetAllPoints()
		DF:BuildMenu (fff, especial_aura_settings, 570, startY - 27, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

		--when the profile has changed
		function auraSpecialFrame:RefreshOptions()
			--update the script data for the scroll and refresh
			special_auras_added:SetData (Plater.db.profile.extra_icon_auras)
			special_auras_added:Refresh()
		end
		
		specialAuraFrame:SetScript ("OnShow", function()
			special_auras_added:Refresh()
			
			--not working properly, auras stay "flying" in the screen
			
			--[=[
			fff:SetScript ("OnUpdate", function()
				
				for _, plateFrame in ipairs (Plater.GetAllShownPlates()) do
					plateFrame.UnitFrame.ExtraIconFrame:ClearIcons()
					plateFrame.UnitFrame.ExtraIconFrame:SetIcon (248441, false, GetTime() - 2, 8)
					plateFrame.UnitFrame.ExtraIconFrame:SetIcon (273769, false, GetTime() - 3, 12)
					plateFrame.UnitFrame.ExtraIconFrame:SetIcon (206589, false, GetTime() - 6, 16)
					plateFrame.UnitFrame.ExtraIconFrame:SetIcon (279565, false, GetTime() - 180, 360)

					local spellName, _, spellIcon = GetSpellInfo (248441)
					local auraIconFrame = Plater.GetAuraIcon (plateFrame.UnitFrame.BuffFrame, 1)
					Plater.AddAura (auraIconFrame, 1, spellName, spellIcon, 1, "BUFF", 8, GetTime()+5, "player", false, false, 248441, false, false, false, false)
					auraIconFrame.InUse = true
					
					local spellName, _, spellIcon = GetSpellInfo (273769)
					local auraIconFrame = Plater.GetAuraIcon (plateFrame.UnitFrame.BuffFrame, 1)
					Plater.AddAura (auraIconFrame, 2, spellName, spellIcon, 1, "BUFF", 12, GetTime()+2, "player", false, false, 273769, false, false, false, false)
					auraIconFrame.InUse = true
				end
			end)
			--]=]
		end)
		
		specialAuraFrame:SetScript ("OnHide", function()
			--[=[
			fff:SetScript ("OnUpdate", nil)
			
			
			for _, plateFrame in ipairs (Plater.GetAllShownPlates()) do
				plateFrame.UnitFrame.ExtraIconFrame:ClearIcons()
				hide_non_used_auraFrames (plateFrame.UnitFrame.BuffFrame, 1)
			end
			--]=]
			
		end)
		
		--create the title
		auraSpecialFrame.TitleDescText = Plater:CreateLabel (auraSpecialFrame, "Track auras adding them to a special buff frame separated from the main buff line. Use it to emphasize important auras from raid bosses or mythic dungeons.", 10, "silver")
		auraSpecialFrame.TitleDescText:SetPoint ("bottomleft", special_auras_added, "topleft", 0, 26)
		auraSpecialFrame.TitleText = Plater:CreateLabel (auraSpecialFrame, "Aura Special", 14, "orange")
		auraSpecialFrame.TitleText:SetPoint ("bottomleft", auraSpecialFrame.TitleDescText, "topleft", 0, 2)
		
	end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- personal player ~player
do
		local on_select_player_percent_text_font = function (_, _, value)
			Plater.db.profile.plate_config.player.percent_text_font = value
			Plater.UpdateAllPlates()
		end
		
		local on_select_player_power_percent_text_font = function (_, _, value)
			Plater.db.profile.plate_config.player.power_percent_text_font = value
			Plater.UpdateAllPlates()
		end
		
		local _, _, _, iconWindWalker = GetSpecializationInfoByID (269)
		local _, _, _, iconArcane = GetSpecializationInfoByID (62)
		local _, _, _, iconRune = GetSpecializationInfoByID (250)
		local _, _, _, iconHolyPower = GetSpecializationInfoByID (66)
		local _, _, _, iconRogueCB = GetSpecializationInfoByID (261)
		local _, _, _, iconDruidCB = GetSpecializationInfoByID (103)
		local _, _, _, iconSoulShard = GetSpecializationInfoByID (267)
		
		local locClass = UnitClass ("player")
		
		local options_personal = {

			{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.click_through end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.click_through = value
					Plater.UpdateSelfPlate()
				end,
				name = "Click Through",
				desc = "Player nameplate won't receive mouse clicks.",
			},
			{
				type = "toggle",
				get = function() return GetCVarBool ("nameplatePersonalShowAlways") end,
				set = function (self, fixedparam, value) 
					if (value) then
						SetCVar ("nameplatePersonalShowAlways", CVAR_ENABLED)
					else
						SetCVar ("nameplatePersonalShowAlways", CVAR_DISABLED)
					end
				end,
				nocombat = true,
				name = "Always Show" .. CVarIcon,
				desc = "If enabled, the personal health bar is always shown.\n\n|cFFFFFF00Important|r: 'Personal Health and Mana Bars' (in the Main Menu tab) must be enabled." .. CVarDesc,
			},
			{
				type = "toggle",
				get = function() return GetCVarBool ("nameplatePersonalShowWithTarget") end,
				set = function (self, fixedparam, value) 
					if (value) then
						SetCVar ("nameplatePersonalShowWithTarget", CVAR_ENABLED)
					else
						SetCVar ("nameplatePersonalShowWithTarget", CVAR_DISABLED)
					end
				end,
				nocombat = true,
				name = "Show When you Have a Target" .. CVarIcon,
				desc = "If enabled, show the personal bar when you have a target.\n\n|cFFFFFF00Important|r: 'Personal Health and Mana Bars' (in the Main Menu tab) must be enabled." .. CVarDesc,
			},
			{
				type = "toggle",
				get = function() return GetCVarBool ("nameplatePersonalShowInCombat") end,
				set = function (self, fixedparam, value) 
					if (value) then
						SetCVar ("nameplatePersonalShowInCombat", CVAR_ENABLED)
					else
						SetCVar ("nameplatePersonalShowInCombat", CVAR_DISABLED)
					end
				end,
				nocombat = true,
				name = "Show In Combat" .. CVarIcon,
				desc = "If enabled, show the personal bar when you are in combat.\n\n|cFFFFFF00Important|r: 'Personal Health and Mana Bars' (in the Main Menu tab) must be enabled." .. CVarDesc,
			},
			{
				type = "range",
				get = function() return tonumber (GetCVar ("nameplateSelfAlpha")) end,
				set = function (self, fixedparam, value) 
					if (not InCombatLockdown()) then
						SetCVar ("nameplateSelfAlpha", value)
					else
						Plater:Msg ("you are in combat.")
					end
				end,
				min = 0.1,
				max = 1,
				step = 0.1,
				thumbscale = 1.7,
				usedecimals = true,
				name = "Alpha" .. CVarIcon,
				desc = "Alpha" .. CVarDesc,
				nocombat = true,
			},
			{
				type = "range",
				get = function() return tonumber (GetCVar ("nameplateSelfScale")) end,
				set = function (self, fixedparam, value) 
					if (not InCombatLockdown()) then
						SetCVar ("nameplateSelfScale", value)
					else
						Plater:Msg ("you are in combat.")
					end
				end,
				min = 0.5,
				max = 2.5,
				step = 0.1,
				thumbscale = 1.7,
				usedecimals = true,
				name = "Scale" .. CVarIcon,
				desc = "Scale" .. CVarDesc,
				nocombat = true,
			},

			{type = "blank"},
			
			{
				type = "toggle",
				get = function() return Plater.db.profile.aura_show_buffs_personal end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.aura_show_buffs_personal = value
					Plater.RefreshDBUpvalues()
					Plater.RefreshAuras()
					Plater.UpdateAllPlates()
				end,
				name = "Show Buffs on Personal Bar",
				desc = "Show buffs on you on the Personal Bar.",
			},
			
			{
				type = "toggle",
				get = function() return Plater.db.profile.aura_show_debuffs_personal end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.aura_show_debuffs_personal = value
					Plater.RefreshDBUpvalues()
					Plater.RefreshAuras()
					Plater.UpdateAllPlates()
				end,
				name = "Show Debuffs on Personal Bar",
				desc = "Show debuffs on you on the Personal Bar.",
			},			
			
			{type = "blank"},
		
			--life size
			{type = "label", get = function() return "Health Bar Size:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.health[1] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.health[1] = value
					Plater.db.profile.plate_config.player.health_incombat[1] = value
					Plater.UpdateAllPlates (nil, true)
					Plater.UpdateSelfPlate()
				end,
				min = 50,
				max = 300,
				step = 1,
				name = "Width",
				desc = "Width of the health bar.",
			},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.health[2] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.health[2] = value
					Plater.db.profile.plate_config.player.health_incombat[2] = value
					Plater.UpdateAllPlates (nil, true)
					Plater.UpdateSelfPlate()
				end,
				min = 1,
				max = 100,
				step = 1,
				name = "Height",
				desc = "Height of the health bar.",
			},
			
			--mana size
			{type = "blank"},
			{type = "label", get = function() return "Power Bar Size:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.mana[1] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.mana[1] = value
					Plater.db.profile.plate_config.player.mana_incombat[1] = value
					Plater.UpdateAllPlates()
					Plater.UpdateSelfPlate()
				end,
				min = 50,
				max = 300,
				step = 1,
				name = "Width",
				desc = "Width of the power bar.",
			},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.mana[2] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.mana[2] = value
					Plater.db.profile.plate_config.player.mana_incombat[2] = value
					Plater.UpdateAllPlates()
					Plater.UpdateSelfPlate()
				end,
				min = 1,
				max = 100,
				step = 1,
				name = "Height",
				desc = "Height of the power bar.",
			},
			{type = "blank"},
			
--	SetCVar ("nameplateSelfBottomInset", 20 / 100)
--	SetCVar ("nameplateSelfTopInset", abs (20 - 99) / 100)
			{type = "label", get = function() return "Personal Bar Constrain:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			
			{
				type = "range",
				get = function() return tonumber (GetCVar ("nameplateSelfTopInset")*100) end,
				set = function (self, fixedparam, value) 
					--Plater.db.profile.plate_config.player.y_position_offset = value

					if (InCombatLockdown()) then
						Plater:Msg ("you are in combat.")
						self:SetValue (tonumber (GetCVar ("nameplateSelfTopInset")*100))
						return
					end

					--SetCVar ("nameplateSelfBottomInset", value / 100)
					SetCVar ("nameplateSelfTopInset", abs (value - 99) / 100)
					
					if (not Plater.PersonalAdjustLocationTop) then
						Plater.PersonalAdjustLocationTop = CreateFrame ("frame", "PlaterPersonalBarLocation", UIParent)
						local frame = Plater.PersonalAdjustLocationTop
						frame:SetWidth (GetScreenWidth())
						frame:SetHeight (20)
						frame.Texture = frame:CreateTexture (nil, "background")
						frame.Texture:SetTexture ([[Interface\AddOns\Plater\images\bar4_vidro]], true)
						frame.Texture:SetAllPoints()
						frame.Shadow = frame:CreateTexture (nil, "border")
						frame.Shadow:SetTexture ([[Interface\ACHIEVEMENTFRAME\UI-Achievement-RecentHeader]], true)
						frame.Shadow:SetPoint ("center")
						frame.Shadow:SetSize (256, 18)
						frame.Shadow:SetTexCoord (0, 1, 0, 22/32)
						frame.Shadow:SetVertexColor (0, 0, 0, 1)
						frame.Text = frame:CreateFontString (nil, "artwork", "GameFontNormal")
						frame.Text:SetText ("Plater: Top Constraint")
						frame.Text:SetPoint ("center")
						
						frame.HideAnimation = DF:CreateAnimationHub (frame, nil, function() frame:Hide() end)
						DF:CreateAnimation (frame.HideAnimation, "Alpha", 1, 1, 1, 0)
						
						frame.CancelFunction = function()
							frame.HideAnimation:Play()
						end
					end
					
					if (Plater.PersonalAdjustLocationTop.HideAnimation:IsPlaying()) then
						Plater.PersonalAdjustLocationTop.HideAnimation:Stop()
						Plater.PersonalAdjustLocationTop:SetAlpha (1)
					end
					Plater.PersonalAdjustLocationTop:Show()
					
					local percentValue = GetScreenHeight()/100
					Plater.PersonalAdjustLocationTop:SetPoint ("bottom", UIParent, "bottom", 0, percentValue * value)
					
					if (Plater.PersonalAdjustLocationTop.Timer) then
						Plater.PersonalAdjustLocationTop.Timer:Cancel()
					end
					Plater.PersonalAdjustLocationTop.Timer = C_Timer.NewTimer (10, Plater.PersonalAdjustLocationTop.CancelFunction)
					
					Plater.UpdateAllPlates()
					Plater.UpdateSelfPlate()
				end,
				min = 2,
				max = 51,
				step = 1,
				nocombat = true,
				name = "Top Constrain" .. CVarIcon,
				desc = "Adjust the top constrain position where the personal bar cannot pass.\n\n|cFFFFFFFFDefault: 50|r" .. CVarDesc,
			},
			
			{
				type = "range",
				get = function() return tonumber (GetCVar ("nameplateSelfBottomInset")*100) end,
				set = function (self, fixedparam, value) 
					--Plater.db.profile.plate_config.player.y_position_offset = value

					if (InCombatLockdown()) then
						Plater:Msg ("you are in combat.")
						self:SetValue (tonumber (GetCVar ("nameplateSelfBottomInset")*100))
						return
					end

					SetCVar ("nameplateSelfBottomInset", value / 100)
					--SetCVar ("nameplateSelfTopInset", value / 100)
					
					if (not Plater.PersonalAdjustLocationBottom) then
						Plater.PersonalAdjustLocationBottom = CreateFrame ("frame", "PlaterPersonalBarLocation", UIParent)
						local frame = Plater.PersonalAdjustLocationBottom
						frame:SetWidth (GetScreenWidth())
						frame:SetHeight (20)
						frame.Texture = frame:CreateTexture (nil, "background")
						frame.Texture:SetTexture ([[Interface\AddOns\Plater\images\bar4_vidro]], true)
						frame.Texture:SetAllPoints()
						frame.Shadow = frame:CreateTexture (nil, "border")
						frame.Shadow:SetTexture ([[Interface\ACHIEVEMENTFRAME\UI-Achievement-RecentHeader]], true)
						frame.Shadow:SetPoint ("center")
						frame.Shadow:SetSize (256, 18)
						frame.Shadow:SetTexCoord (0, 1, 0, 22/32)
						frame.Shadow:SetVertexColor (0, 0, 0, 1)
						frame.Text = frame:CreateFontString (nil, "artwork", "GameFontNormal")
						frame.Text:SetText ("Plater: Bottom Constraint")
						frame.Text:SetPoint ("center")
						
						frame.HideAnimation = DF:CreateAnimationHub (frame, nil, function() frame:Hide() end)
						DF:CreateAnimation (frame.HideAnimation, "Alpha", 1, 1, 1, 0)
						
						frame.CancelFunction = function()
							frame.HideAnimation:Play()
						end
					end
					
					if (Plater.PersonalAdjustLocationBottom.HideAnimation:IsPlaying()) then
						Plater.PersonalAdjustLocationBottom.HideAnimation:Stop()
						Plater.PersonalAdjustLocationBottom:SetAlpha (1)
					end
					Plater.PersonalAdjustLocationBottom:Show()
					
					local percentValue = GetScreenHeight()/100
					Plater.PersonalAdjustLocationBottom:SetPoint ("bottom", UIParent, "bottom", 0, percentValue * value)
					
					if (Plater.PersonalAdjustLocationBottom.Timer) then
						Plater.PersonalAdjustLocationBottom.Timer:Cancel()
					end
					Plater.PersonalAdjustLocationBottom.Timer = C_Timer.NewTimer (10, Plater.PersonalAdjustLocationBottom.CancelFunction)
					
					Plater.UpdateAllPlates()
					Plater.UpdateSelfPlate()
				end,
				min = 2,
				max = 51,
				step = 1,
				nocombat = true,
				name = "Bottom Constrain" .. CVarIcon,
				desc = "Adjust the bottom constrain position where the personal bar cannot pass.\n\n|cFFFFFFFFDefault: 20|r" .. CVarDesc,
			},

			{type = "blank"},
			{
				type = "range",
				get = function() return tonumber (GetCVar ("nameplateSelfBottomInset")*100) end,
				set = function (self, fixedparam, value) 
					--Plater.db.profile.plate_config.player.y_position_offset = value

					if (InCombatLockdown()) then
						Plater:Msg ("you are in combat.")
						self:SetValue (tonumber (GetCVar ("nameplateSelfBottomInset")*100))
						return
					end

					value = floor (value)
					
					SetCVar ("nameplateSelfBottomInset", value / 100)
					SetCVar ("nameplateSelfTopInset", abs (value - 99) / 100)
					
					if (not Plater.PersonalAdjustLocation) then
						Plater.PersonalAdjustLocation = CreateFrame ("frame", "PlaterPersonalBarLocation", UIParent)
						local frame = Plater.PersonalAdjustLocation
						frame:SetWidth (GetScreenWidth())
						frame:SetHeight (20)
						frame.Texture = frame:CreateTexture (nil, "background")
						frame.Texture:SetTexture ([[Interface\AddOns\Plater\images\bar4_vidro]], true)
						frame.Texture:SetAllPoints()
						frame.Shadow = frame:CreateTexture (nil, "border")
						frame.Shadow:SetTexture ([[Interface\ACHIEVEMENTFRAME\UI-Achievement-RecentHeader]], true)
						frame.Shadow:SetPoint ("center")
						frame.Shadow:SetSize (256, 18)
						frame.Shadow:SetTexCoord (0, 1, 0, 22/32)
						frame.Shadow:SetVertexColor (0, 0, 0, 1)
						frame.Text = frame:CreateFontString (nil, "artwork", "GameFontNormal")
						frame.Text:SetText ("Plater: Personal Bar Position")
						frame.Text:SetPoint ("center")
						
						frame.HideAnimation = DF:CreateAnimationHub (frame, nil, function() frame:Hide() end)
						DF:CreateAnimation (frame.HideAnimation, "Alpha", 1, 1, 1, 0)
						
						frame.CancelFunction = function()
							frame.HideAnimation:Play()
						end
					end
					
					if (Plater.PersonalAdjustLocation.HideAnimation:IsPlaying()) then
						Plater.PersonalAdjustLocation.HideAnimation:Stop()
						Plater.PersonalAdjustLocation:SetAlpha (1)
					end
					Plater.PersonalAdjustLocation:Show()
					
					local percentValue = GetScreenHeight()/100
					Plater.PersonalAdjustLocation:SetPoint ("bottom", UIParent, "bottom", 0, percentValue * value)
					
					if (Plater.PersonalAdjustLocation.Timer) then
						Plater.PersonalAdjustLocation.Timer:Cancel()
					end
					Plater.PersonalAdjustLocation.Timer = C_Timer.NewTimer (7, Plater.PersonalAdjustLocation.CancelFunction)
					
					Plater.UpdateAllPlates()
					Plater.UpdateSelfPlate()
				end,
				min = 2,
				max = 98,
				step = 1,
				nocombat = true,
				name = "Fixed Position" .. CVarIcon,
				desc = "Set a fixed position, the personal bar won't move." .. CVarDesc,
			},
--]=]

			{type = "breakline"},
			
			--percent text
			{type = "label", get = function() return "Health Information:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--enabled
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.percent_text_enabled end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_enabled = value
					Plater.UpdateAllPlates()
				end,
				name = "Enabled",
				desc = "Show the percent text.",
			},
			
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.player.healthbar_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.player.healthbar_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "Color",
			},
			
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.healthbar_color_by_hp end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.healthbar_color_by_hp = value
					Plater.UpdateAllPlates()
				end,
				name = "Color by Health",
				desc = "Use the regular color when full health and change it to red as the health goes lower",
			},
			
			--out of combat
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.percent_text_ooc end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_ooc = value
					
					Plater.UpdateAllPlates()
				end,
				name = "Out of Combat",
				desc = "Show the percent even when isn't in combat.",
			},
			--percent amount
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.percent_show_percent end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_show_percent = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Percent Amount",
				desc = "Show Percent Amount",
			},		
			--health amount
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.percent_show_health end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_show_health = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Health Amount",
				desc = "Show Health Amount",
			},
			
			--health decimals
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.percent_text_show_decimals end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_show_decimals = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Decimals",
				desc = "Show Decimals",
			},			
			
			--percent text size
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.percent_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--percent text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.player.percent_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_player_percent_text_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--percent text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.percent_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			--pecent text color"
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.player.percent_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.player.percent_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			--percent text alpha
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.percent_text_alpha end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_alpha = value
					Plater.UpdateAllPlates()
				end,
				min = 0,
				max = 1,
				step = 0.1,
				name = "Alpha",
				desc = "Set the transparency of the text.",
				usedecimals = true,
			},
			--percent anchor
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.player.percent_text_anchor.side end,
				values = function() return build_anchor_side_table ("player", "percent_text_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--percent anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.percent_text_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--percent anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.percent_text_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.percent_text_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},
			
			--class resources
			{type = "blank"},
			{type = "label", get = function() return "Resources:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},

			{
				type = "range",
				get = function() return Plater.db.profile.resources.scale end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.resources.scale = value
					Plater.UpdateAllPlates()
					Plater.UpdateManaAndResourcesBar()
				end,
				min = 0.65,
				max = 3,
				step = 0.01,
				usedecimals = true,
				nocombat = true,
				name = "Resource Scale",
				desc = "Resource Scale",
			},
			
			{
				type = "range",
				get = function() return Plater.db.profile.resources.y_offset end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.resources.y_offset = value
					Plater.UpdateAllPlates()
					Plater.UpdateManaAndResourcesBar()
				end,
				min = -40,
				max = 40,
				step = 1,
				nocombat = true,
				name = "Y OffSet on Personal Bar",
				desc = "Y Offset when resource bar are anchored to your personal bar",
			},
			
			{
				type = "range",
				get = function() return Plater.db.profile.resources.y_offset_target end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.resources.y_offset_target = value
					Plater.UpdateAllPlates()
					Plater.UpdateManaAndResourcesBar()
				end,
				min = -40,
				max = 40,
				step = 1,
				nocombat = true,
				name = "Y OffSet on Target",
				desc = "Y Offset when the resource are anchored on your current target",
			},			
			
			{type = "breakline"},
			{type = "label", get = function() return "Power Percent Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--enabled
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_enabled end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.power_percent_text_enabled = value
					Plater.UpdateAllPlates()
				end,
				name = "Enabled",
				desc = "Show the percent text.",
			},
			--percent text size
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.power_percent_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--percent text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_player_power_percent_text_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--percent text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.power_percent_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			--pecent text color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.player.power_percent_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.player.power_percent_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			--percent text alpha
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_alpha end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.power_percent_text_alpha = value
					Plater.UpdateAllPlates()
				end,
				min = 0,
				max = 1,
				step = 0.1,
				name = "Alpha",
				desc = "Set the transparency of the text.",
				usedecimals = true,
			},
			--percent anchor
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_anchor.side end,
				values = function() return build_anchor_side_table ("player", "power_percent_text_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--percent anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.power_percent_text_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--percent anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.player.power_percent_text_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.player.power_percent_text_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},		

	}

	DF:BuildMenu (personalPlayerFrame, options_personal, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------
--target options

local on_select_target_indicator = function (_, _, indicator)
	Plater.db.profile.target_indicator = indicator
	Plater.OnPlayerTargetChanged()
end
local indicator_table = {}
for name, indicatoirTable in pairs (Plater.TargetIndicators) do
	tinsert (indicator_table, {label = name, value = name, onclick = on_select_target_indicator, icon = indicatoirTable.path, texcoord = indicatoirTable.coords[1]})
end
local build_target_indicator_table = function()
	return indicator_table
end

local focus_indicator_texture_selected = function (self, capsule, value)
	Plater.db.profile.focus_texture = value
	Plater.OnPlayerTargetChanged()
end
local focus_indicator_texture_options = {}
for name, texturePath in pairs (textures) do 
	focus_indicator_texture_options [#focus_indicator_texture_options + 1] = {value = name, label = name, statusbar = texturePath, onclick = focus_indicator_texture_selected}
end
table.sort (focus_indicator_texture_options, function (t1, t2) return t1.label < t2.label end)

--targetFrame
local targetOptions = {
		{type = "label", get = function() return "Target:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		--target texture
		{
			type = "select",
			get = function() return Plater.db.profile.health_selection_overlay end,
			values = function() return health_selection_overlay_options end,
			name = "Target Overlay Texture",
			desc = "Used above the health bar when it is the current target.",
		},
		
		{
			type = "toggle",
			get = function() return GetCVarBool ("nameplateTargetRadialPosition") end,
			set = function (self, fixedparam, value) 
				if (value) then
					SetCVar ("nameplateTargetRadialPosition", CVAR_ENABLED)
				else
					SetCVar ("nameplateTargetRadialPosition", CVAR_DISABLED)
				end
			end,
			nocombat = true,
			name = "Target Always on the Screen",
			desc = "When enabled, the nameplate of your target is always shown even when the enemy isn't in the screen.",
		},
		
		{
			type = "range",
			get = function() return tonumber (GetCVar ("nameplateTargetBehindMaxDistance")) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateTargetBehindMaxDistance", value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 5,
			max = 50,
			step = 1,
			thumbscale = 1.7,
			name = "Target Behind You Distance" .. CVarIcon,
			desc = "Max distance to allow show the nameplate of your target when the unit is behind you and not shown in the screen.\n\n|cFFFFFFFFDefault: 15|r" .. CVarDesc,
			nocombat = true,
		},
		
		{
			type = "range",
			get = function() return tonumber (GetCVar ("nameplateSelectedScale")) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateSelectedScale", value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 0.75,
			max = 1.75,
			step = 0.1,
			thumbscale = 1.7,
			usedecimals = true,
			name = "Target Scale",
			desc = "The nameplate size for the current target is multiplied by this value.\n\n|cFFFFFFFFDefault: 1|r\n\n|cFFFFFFFFRecommended: 1.15|r",
			nocombat = true,
		},		

		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.hover_highlight end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.hover_highlight = value
				Plater.RefreshDBUpvalues()
				Plater.FullRefreshAllPlates()
			end,
			name = "Hover Over Highlight",
			desc = "Highlight effect when the mouse is over the nameplate.\n\n|cFFFFFF00Important|r: for enemies only (players and npcs).",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.hover_highlight_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.hover_highlight_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Hover Over Highlight Alpha",
			desc = "Hover Over Highlight Alpha",
			usedecimals = true,
		},
		
		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.target_highlight end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.target_highlight = value
				Plater.UpdateAllPlates()
			end,
			name = "Target Highlight",
			desc = "Highlight effect on the nameplate of your current target.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.target_highlight_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.target_highlight_alpha = value
				Plater.OnPlayerTargetChanged()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Target Highlight Alpha",
			desc = "Target Highlight Alpha.",
			usedecimals = true,
		},
		
		{
			type = "select",
			get = function() return Plater.db.profile.target_indicator end,
			values = function() return build_target_indicator_table() end,
			name = "Target Indicator",
			desc = "Target Indicator",
		},
		
		{type = "blank"},
		
		--target alpha
		{
			type = "toggle",
			get = function() return Plater.db.profile.target_shady_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.target_shady_enabled = value
				Plater.RefreshDBUpvalues()
				Plater.OnPlayerTargetChanged()
				--update
			end,
			name = "Target Shading",
			desc = "Apply a layer of shadow above the nameplate when the unit is in range but isn't your current target.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.target_shady_combat_only end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.target_shady_combat_only = value
				Plater.RefreshDBUpvalues()
				Plater.OnPlayerTargetChanged()
				--update
			end,
			name = "Target Shading Only in Combat",
			desc = "Apply target shading only when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.target_shady_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.target_shady_alpha = value
				Plater.RefreshDBUpvalues()
				Plater.OnPlayerTargetChanged()
				--update
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Target Shading Amount",
			desc = "Amount of shade to apply.",
			usedecimals = true,
		},		
		
		
		{type = "breakline"},
		
		{type = "label", get = function() return "Focus:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.focus_indicator_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.focus_indicator_enabled = value
				Plater.OnPlayerTargetChanged()
			end,
			name = "Show Focus Overlay",
			desc = "Focus Indicator",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.focus_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.focus_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.OnPlayerTargetChanged()
			end,
			name = "Color",
			desc = "Focus Color",
		},
		{
			type = "select",
			get = function() return Plater.db.profile.focus_texture end,
			values = function() return focus_indicator_texture_options end,
			name = "Texture",
			desc = "Focus Texture",
		},
}

DF:BuildMenu (targetFrame, targetOptions, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

--------------------------------------------------------------------------------------------------------------------------------------------------------------

--coloca as op��es gerais no main menu logo abaixo dos 4 bot�es
--OP��ES NO PAINEL PRINCIPAL

function Plater.ChangeNpcRelavance (_, _, value)
	if (value == 3) then
		Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].only_names = true
		Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].all_names = false
		
	elseif (value == 4) then
		Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].only_names = false
		Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].all_names = true
	end
	
	Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].relevance_state = value
	
	Plater.UpdateAllPlates()
end
local relevance_options = {
	{label = "All Professions", value = 3, onclick = Plater.ChangeNpcRelavance},
	{label = "All Npcs", value = 4, onclick = Plater.ChangeNpcRelavance},
}

--
	local on_select_castbar_target_font = function (_, _, value)
		Plater.db.profile.castbar_target_font = value
		Plater.UpdateAllPlates()
	end
	
	--menu 1 ~general ~geral
	local options_table1 = {
	
		{type = "label", get = function() return "Health Bar Appearance:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "select",
			get = function() return Plater.db.profile.health_statusbar_texture end,
			values = function() return health_bar_texture_options end,
			name = "Health Bar Texture",
			desc = "Texture used on the health bar",
		},
		{
			type = "select",
			get = function() return Plater.db.profile.health_statusbar_bgtexture end,
			values = function() return health_bar_bgtexture_options end,
			name = "Health Bar Background Texture",
			desc = "Texture used on the health bar background",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.health_statusbar_bgcolor
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.health_statusbar_bgcolor
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Health Bar Background Color and Alpha",
			desc = "Color used to paint the health bar background.",
		},
		
		{type = "blank"},
		
		--alpha and range check
		{type = "label", get = function() return "Alpha Control:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},

		{
			type = "toggle",
			get = function() return Plater.db.profile.range_check_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.range_check_enabled = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			name = "Use Range Check",
			desc = "Units that are out of range has their nameplates more transparent (adjust the amount in the slider below).\n\n|cFFFFFF00Important|r: check which spell you want to use to check the range.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.range_check_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.range_check_alpha = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Out of Range Alpha",
			desc = "Amount of alpha to apply when the unit is out of range.\n\n|cFFFFFF001.0|r: full opaque.\n|cFFFFFF00Zero|r: full transparent.",
			usedecimals = true,
		},
	}
	
	local spells = {}
	local offset
	for i = 2, GetNumSpellTabs() do
		local name, texture, offset, numEntries, isGuild, offspecID = GetSpellTabInfo (i)
		local tabEnd = offset + numEntries
		offset = offset + 1
		for j = offset, tabEnd - 1 do
			local spellType, spellID = GetSpellBookItemInfo (j, "player")
			if (spellType == "SPELL") then
				tinsert (spells, spellID)
			end
		end
	end
	
	local playerSpecs = Plater.SpecList [select (2, UnitClass ("player"))]
	local i = 1
	for specID, _ in pairs (playerSpecs) do
		local spec_id, spec_name, spec_description, spec_icon, spec_background, spec_role, spec_class = GetSpecializationInfoByID (specID)
		tinsert (options_table1, {
			type = "select",
			get = function() return PlaterDBChr.spellRangeCheck [specID] end,
			values = function() 
				local onSelectFunc = function (_, _, spellName)
					PlaterDBChr.spellRangeCheck [specID] = spellName
					Plater.GetSpellForRangeCheck()
				end
				local t = {}
				for _, spellID in ipairs (spells) do
					local spellName, _, spellIcon = GetSpellInfo (spellID)
					tinsert (t, {label = spellName, icon = spellIcon, onclick = onSelectFunc, value = spellName})
				end
				return t
			end,
			name = "|T" .. spec_icon .. ":16:16|t Range Check",
			desc = "Spell to range check on this specializartion.",
		})
		i = i + 1
	end	

	local options_table1_continue = {
	
		{type = "blank"},
		--no combat alpha
		{
			type = "toggle",
			get = function() return Plater.db.profile.not_affecting_combat_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.not_affecting_combat_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Use No Combat Alpha",
			desc = "Changes the nameplate alpha when you are in combat and the unit isn't.\n\n|cFFFFFF00Important|r: If the unit isn't in combat, it overrides the alpha from the range check.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.not_affecting_combat_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.not_affecting_combat_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "No Combat Alpha",
			desc = "Amount of transparency to apply for 'No Combat' feature.",
			usedecimals = true,
		},
	
		--cast bar options
		{type = "breakline"},
		{type = "label", get = function() return "Cast Bar Appearance:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "select",
			get = function() return Plater.db.profile.cast_statusbar_texture end,
			values = function() return cast_bar_texture_options end,
			name = "Cast Bar Texture",
			desc = "Texture used on the cast bar",
		},
		{
			type = "select",
			get = function() return Plater.db.profile.cast_statusbar_bgtexture end,
			values = function() return cast_bar_bgtexture_options end,
			name = "Cast Bar Background Texture",
			desc = "Texture used on the cast bar background.",
		},
		
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.cast_statusbar_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.cast_statusbar_color
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "Cast Bar Color",
			desc = "Cast Bar Color",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.cast_statusbar_color_nointerrupt
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.cast_statusbar_color_nointerrupt
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "Cast Bar Color No Interrupt",
			desc = "Cast Bar Color No Interrupt",
		},
		
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.cast_statusbar_bgcolor
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.cast_statusbar_bgcolor
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Cast Bar Background Color",
			desc = "Color used to paint the cast bar background.",
		},
		
		{type = "blank"},
		--toggle cast bar target
		{type = "label", get = function() return "Cast Bar Target Name:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return Plater.db.profile.castbar_target_show end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.castbar_target_show = value
				Plater.UpdateUseCastBar()
			end,
			name = "Show Target Name",
			desc = "Show who is the target of the current cast (if the target exists)",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.castbar_target_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.castbar_target_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size",
		},
		--text font
		{
			type = "select",
			get = function() return Plater.db.profile.castbar_target_font end,
			values = function() return DF:BuildDropDownFontList (on_select_castbar_target_font) end,
			name = "Font",
			desc = "Font",
		},
		--cast text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.castbar_target_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.castbar_target_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "Color",
		},
		--cast text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.castbar_target_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.castbar_target_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "Shadow",
		},		
		{
			type = "select",
			get = function() return Plater.db.profile.castbar_target_anchor.side end,
			values = function() return build_anchor_side_table (nil, "castbar_target_anchor") end,
			name = "Anchor",
			desc = "Which side of the cast bar this widget is attach to.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.castbar_target_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.castbar_target_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -100,
			max = 100,
			step = 1,
			name = "X Offset",
			desc = "X Offset",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.castbar_target_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.castbar_target_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -100,
			max = 100,
			step = 1,
			name = "Y Offset",
			desc = "Y Offset",
		},

		{type = "breakline"},
		{type = "label", get = function() return "Indicators:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_faction end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_faction = value
				Plater.UpdateAllPlates()
			end,
			name = "Enemy Faction Icon",
			desc = "Show horde or alliance icon.",
		},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.health_cutoff end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.health_cutoff = value
				Plater.UpdateAllPlates()
			end,
			name = "Execute Range",
			desc = "Show an indicator when the unit is in execute range.\n\nPlater auto detects execute range for:\n\n|cFFFFFF00Hunter|r: Beast Master spec with Killer Instinct talent.\n\n|cFFFFFF00Warrior|r: Arms and Fury specs.\n\n|cFFFFFF00Priest|r: Shadow spec with Shadow Word: Death talent.\n\n|cFFFFFF00Mage|r: Fire spec with Searing Touch talent.",
		},

		
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_elite end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_elite = value
				Plater.UpdateAllPlates()
			end,
			name = "Elite Icon",
			desc = "Show when the actor is elite.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_rare end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_rare = value
				Plater.UpdateAllPlates()
			end,
			name = "Rare Icon",
			desc = "Show when the actor is rare.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_quest end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_quest = value
				Plater.UpdateAllPlates()
			end,
			name = "Quest Icon",
			desc = "Show when the actor is a boss for a quest.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_enemyclass end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_enemyclass = value
				Plater.UpdateAllPlates()
			end,
			name = "Enemy Class",
			desc = "Enemy player class icon.",
		},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_spec end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_spec = value
				Plater.UpdateAllPlates()
			end,
			name = "Enemy Spec",
			desc = "Enemy player spec icon.\n\n|cFFFFFF00Important|r: must have Details! Damage Meter installed.",
		},
		--

		--indicator icon anchor
		{
			type = "select",
			get = function() return Plater.db.profile.indicator_anchor.side end,
			values = function() return build_anchor_side_table (nil, "indicator_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--indicator icon anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.indicator_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move horizontally.",
		},
		--indicator icon anchor y offset
		{
			type = "range",
			get = function() return Plater.db.profile.indicator_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move vertically.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Raid Mark:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "range",
			get = function() return Plater.db.profile.indicator_raidmark_scale end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_raidmark_scale = value
				Plater.UpdateAllPlates()
			end,
			min = 0.2,
			max = 2,
			step = 0.1,
			usedecimals = true,
			name = "Scale",
			desc = "Scale",
		},
		
		--indicator icon anchor
		{
			type = "select",
			get = function() return Plater.db.profile.indicator_raidmark_anchor.side end,
			values = function() return build_anchor_side_table (nil, "indicator_raidmark_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--indicator icon anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.indicator_raidmark_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_raidmark_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move horizontally.",
		},
		--indicator icon anchor y offset
		{
			type = "range",
			get = function() return Plater.db.profile.indicator_raidmark_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_raidmark_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move vertically.",
		},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.indicator_extra_raidmark end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.indicator_extra_raidmark = value
				Plater.UpdateAllPlates()
				Plater.UpdateRaidMarker()
			end,
			name = "Extra Raid Mark",
			desc = "Places an extra raid mark icon inside the health bar.",
		},
		
		{type = "breakline"},
	}

	for _, t in ipairs (options_table1_continue) do
		tinsert (options_table1, t)
	end
	
	DF:BuildMenu (generalOptionsAnchor, options_table1, 0, 0, mainHeightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)
	
------------------------------------------------	
--order functions

	local on_select_friendlyplayer_order = function (_, _, value)
		Plater.db.profile.plate_config.friendlyplayer.order = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendlynpc_order = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.order = value
		Plater.UpdateAllPlates()
	end	
	local on_select_enemyplayer_order = function (_, _, value)
		Plater.db.profile.plate_config.enemyplayer.order = value
		Plater.UpdateAllPlates()
	end
	local on_select_enemynpc_order = function (_, _, value)
		Plater.db.profile.plate_config.enemynpc.order = value
		Plater.UpdateAllPlates()
	end
	
	--anchor table
	local order_names = {"Debuffs, Health Bar, Cast Bar", "Health Bar, Debuffs, Cast Bar", "Cast Bar, Health Bar, Debuffs"}
	local build_order_options = function (actorType)
		local t = {}
		for i = 1, 3 do
			tinsert (t, {
				label = order_names[i], 
				value = i, 
				onclick = function (_, _, value)
					Plater.db.profile.plate_config [actorType].plate_order = value
					Plater.UpdateAllPlates()
				end
			})
		end
		return t
	end
	
------------------------------------------------	
--FriendlyPC painel de op��es ~friendly ~friendlynpc
	
	local on_select_friendly_playername_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlyplayer.actorname_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendly_playercastname_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlyplayer.spellname_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendlyplayer_level_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlyplayer.level_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendlyplayer_percent_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlyplayer.percent_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendlyplayer_spellpercent_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_font = value
		Plater.UpdateAllPlates()
	end

	local options_table3 = {
	
	
		{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return Plater.db.profile.use_playerclass_color end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.use_playerclass_color = value
				Plater.UpdateUseClassColors()
				Plater.UpdateAllPlates()
			end,
			name = "Use Class Colors",
			desc = "Player name plates uses the player class color",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_PLAYER].only_damaged end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_PLAYER].only_damaged = value
				Plater.UpdateAllPlates()
			end,
			name = "Only Damaged Players",
			desc = "Hide the health bar when a friendly character has full health.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_PLAYER].only_thename end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_PLAYER].only_thename = value
				Plater.UpdateAllPlates()
			end,
			name = "Only Show Player Name",
			desc = "Hide the health bar, only show the character name.\n\n|cFFFFFF00Important|r: overrides 'Only Damaged Players'.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.show_guild_name end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.show_guild_name = value
				Plater.UpdateAllPlates (true)
			end,
			name = "Show Guild Name",
			desc = "Show Guild Name",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.click_through end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.click_through = value
				Plater.UpdatePlateClickSpace (nil, true)
			end,
			name = "Click Through",
			desc = "Friendly player nameplates won't receive mouse clicks.\n\n|cFFFFFF00Important|r: also affects friendly npcs and can affect some neutral npcs too.",
		},		

		{type = "blank"},
		{type = "label", get = function() return "Plate Order:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--plate order
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.plate_order end,
			values = function() return build_order_options ("friendlyplayer") end,
			name = "Order",
			desc = "How the health, cast and buff bars are ordered.\n\nFrom bottom (near the character head) to top.",
		},
		
		{type = "blank"},
		{type = "label", get = function() return "Buff Frame:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--y offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.buff_frame_y_offset end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.buff_frame_y_offset = value
				Plater.UpdateAllPlates()
			end,
			min = -64,
			max = 64,
			step = 1,
			name = "Y Offset",
			desc = "Adjusts the position on the Y axis.",
		},
		
		{type = "breakline"},
	
		--health bar size out of combat
		{type = "label", get = function() return "Health Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.health[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.health[1] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the health bar when out of combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.health[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.health[2] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the health bar when out of combat.",
		},
		
		--health bar size in combat
		{type = "label", get = function() return "Health Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.health_incombat[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.health_incombat[1] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the health bar when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.health_incombat[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.health_incombat[2] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the health bar when in combat.",
		},
		
		{type = "blank"},
		
		--cast bar size out of combat
		{type = "label", get = function() return "Cast Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.cast[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.cast[1] = value
				Plater.UpdateAllPlates()
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the cast bar when out of combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.cast[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.cast[2] = value
				Plater.UpdateAllPlates()
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the cast bar when out of combat.",
		},
		--cast bar size out of combat
		{type = "label", get = function() return "Cast Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.cast_incombat[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.cast_incombat[1] = value
				Plater.UpdateAllPlates()
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the cast bar when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.cast_incombat[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.cast_incombat[2] = value
				Plater.UpdateAllPlates()
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the cast bar when in combat.",
		},
		
		{type = "blank"},
		--player name size
		{type = "label", get = function() return "Player Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.actorname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.actorname_text_size = value
				Plater.db.profile.plate_config.friendlyplayer.actorname_text_spacing = value-1
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--player name font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.actorname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendly_playername_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--player name color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlyplayer.actorname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlyplayer.actorname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--player name shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.actorname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.actorname_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		
		--npc name anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.actorname_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlyplayer", "actorname_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--npc name anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.actorname_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.actorname_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--npc name anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.actorname_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.actorname_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},	
		
		--cast text size
		{type = "breakline"},
		
		--cast text size
		{type = "label", get = function() return "Spell Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellname_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--cast text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendly_playercastname_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--cast text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlyplayer.spellname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlyplayer.spellname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--cast text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellname_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		
		{type = "blank"},
		{type = "label", get = function() return "Spell Cast Time Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Show the cast time progress.",
		},
		--cast time text
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--cast time text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlyplayer_spellpercent_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--cast time text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--cast time text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		
		--cast time anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlyplayer", "spellpercent_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--cast time anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--cast time anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.spellpercent_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},		

		{type = "breakline"},
		
		--percent text
		{type = "label", get = function() return "Health Information:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--enabled
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Show the percent text.",
		},
		--out of combat
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_ooc end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_ooc = value
				
				Plater.UpdateAllPlates()
			end,
			name = "Out of Combat",
			desc = "Show the percent even when isn't in combat.",
		},
		--percent amount
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_show_percent end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_show_percent = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Percent Amount",
			desc = "Show Percent Amount",
		},		
		--health amount
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_show_health end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_show_health = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Health Amount",
			desc = "Show Health Amount",
		},
		--health decimals
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_show_decimals end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_show_decimals = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Decimals",
			desc = "Show Decimals",
		},
		
		--percent text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--percent text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlyplayer_percent_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--percent text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--pecent text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlyplayer.percent_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlyplayer.percent_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--percent text alpha
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Alpha",
			desc = "Set the transparency of the text.",
			usedecimals = true,
		},
		--percent anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlyplayer", "percent_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--percent anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--percent anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},
		

		--level text settings
		{type = "blank"},
		{type = "label", get = function() return "Level Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--level enabled
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.level_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Check this box to show the level of the actor.",
		},
		--level text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.level_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--level text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlyplayer_level_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--level text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.level_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--level text alpha
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.level_text_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Alpha",
			desc = "Set the transparency of the text.",
			usedecimals = true,
		},
		--level anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlyplayer", "level_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--level anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.level_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--level anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.level_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.level_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},
		
		

	}
	DF:BuildMenu (friendlyPCsFrame, options_table3, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

--------------------------------
--Enemy Player painel de op��es ~enemy

	local on_select_enemy_playername_font = function (_, _, value)
		Plater.db.profile.plate_config.enemyplayer.actorname_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_enemy_playercastname_font = function (_, _, value)
		Plater.db.profile.plate_config.enemyplayer.spellname_text_font = value
		Plater.UpdateAllPlates()
	end
	
	local on_select_enemyplayer_level_text_font = function (_, _, value)
		Plater.db.profile.plate_config.enemyplayer.level_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_enemyplayer_percent_text_font = function (_, _, value)
		Plater.db.profile.plate_config.enemyplayer.percent_text_font = value
		Plater.UpdateAllPlates()
	end
	
	local on_select_enemyplayer_spellpercent_text_font = function (_, _, value)
		Plater.db.profile.plate_config.enemyplayer.spellpercent_text_font = value
		Plater.UpdateAllPlates()
	end	
	
	local options_table4 = {
	
		
		{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.use_playerclass_color end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.use_playerclass_color = value
				Plater.UpdateAllPlates (true)
			end,
			name = "Use Class Colors",
			desc = "Player name plates uses the player class color",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.enemyplayer.fixed_class_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.enemyplayer.fixed_class_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Fixed Color",
			desc = "Use this color when not using class colors.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.show_guild_name end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.show_guild_name = value
				Plater.UpdateAllPlates (true)
			end,
			name = "Show Guild Name",
			desc = "Show Guild Name",
		},
		
		{type = "blank"},
		
		--plate order		
		{type = "label", get = function() return "Plate Order:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.plate_order end,
			values = function() return build_order_options ("enemyplayer") end,
			name = "Order",
			desc = "How the health, cast and buff bars are ordered.\n\nFrom bottom (near the character head) to top.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Debuff Frame:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--y offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.buff_frame_y_offset end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.buff_frame_y_offset = value
				Plater.UpdateAllPlates()
			end,
			min = -64,
			max = 64,
			step = 1,
			name = "Y Offset",
			desc = "Adjusts the position on the Y axis.",
		},		
		
		{type = "blank"},
		
		{type = "label", get = function() return "Cast Frame:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--y offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.castbar_offset end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.castbar_offset = value
				Plater.UpdateAllPlates()
			end,
			min = -128,
			max = 128,
			step = 1,
			name = "Y Offset",
			desc = "Adjusts the position on the Y axis when using the order Cast Bar > Health Bar > Debuffs.",
		},			
		
		{type = "breakline"},
	
		--health bar size out of combat
		{type = "label", get = function() return "Health Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.health[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.health[1] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the health bar when out of combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.health[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.health[2] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the health bar when out of combat.",
		},
		
		--health bar size in combat
		{type = "label", get = function() return "Health Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.health_incombat[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.health_incombat[1] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the health bar when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.health_incombat[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.health_incombat[2] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the health bar when in combat.",
		},
		
		{type = "blank"},
		
		--cast bar size out of combat
		{type = "label", get = function() return "Cast Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.cast[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.cast[1] = value
				Plater.UpdateAllPlates()
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the cast bar when out of combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.cast[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.cast[2] = value
				Plater.UpdateAllPlates()
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the cast bar when out of combat.",
		},
		--cast bar size out of combat
		{type = "label", get = function() return "Cast Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.cast_incombat[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.cast_incombat[1] = value
				Plater.UpdateAllPlates()
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the cast bar when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.cast_incombat[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.cast_incombat[2] = value
				Plater.UpdateAllPlates()
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the cast bar when in combat.",
		},

		{type = "blank"},
		
		--player name size
		{type = "label", get = function() return "Player Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.actorname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.actorname_text_size = value
				Plater.db.profile.plate_config.enemyplayer.actorname_text_spacing = value-1
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--player name font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.actorname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_enemy_playername_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--player name color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.enemyplayer.actorname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.enemyplayer.actorname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--player name shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.actorname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.actorname_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--npc name anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.actorname_text_anchor.side end,
			values = function() return build_anchor_side_table ("enemyplayer", "actorname_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--npc name anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.actorname_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.actorname_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--npc name anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.actorname_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.actorname_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},	
		
		{type = "breakline"},
		
		--cast text size
		{type = "label", get = function() return "Spell Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellname_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--cast text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_enemy_playercastname_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--cast text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.enemyplayer.spellname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.enemyplayer.spellname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--cast text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellname_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		
		--level text settings
		{type = "blank"},

		{type = "label", get = function() return "Spell Cast Time Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellpercent_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Show the cast time progress.",
		},
		--cast time text
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellpercent_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--cast time text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_enemyplayer_spellpercent_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--cast time text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellpercent_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--cast time text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.enemyplayer.spellpercent_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.enemyplayer.spellpercent_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		
		--cast time anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_anchor.side end,
			values = function() return build_anchor_side_table ("enemyplayer", "spellpercent_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--cast time anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellpercent_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--cast time anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.spellpercent_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.spellpercent_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},

		{type = "breakline"},
		
		--percent text
		{type = "label", get = function() return "Health Information:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--enabled
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Show the percent text.",
		},
		--out of combat
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_ooc end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_ooc = value
				
				Plater.UpdateAllPlates()
			end,
			name = "Out of Combat",
			desc = "Show the percent even when isn't in combat.",
		},
		--percent amount
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_show_percent end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_show_percent = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Percent Amount",
			desc = "Show Percent Amount",
		},
		--health amount
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_show_health end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_show_health = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Health Amount",
			desc = "Show Health Amount",
		},
		
		--health decimals
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_show_decimals end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_show_decimals = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Decimals",
			desc = "Show Decimals",
		},
		
		--percent text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--percent text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_enemyplayer_percent_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--percent text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--pecent text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.enemyplayer.percent_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.enemyplayer.percent_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--percent text alpha
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Alpha",
			desc = "Set the transparency of the text.",
			usedecimals = true,
		},
		--percent anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_anchor.side end,
			values = function() return build_anchor_side_table ("enemyplayer", "percent_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--percent anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--percent anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.percent_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.percent_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Level Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--level enabled
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.level_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Check this box to show the level of the actor.",
		},
		--level text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.level_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--level text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_enemyplayer_level_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--level text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.level_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--level text alpha
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.level_text_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Alpha",
			desc = "Set the transparency of the text.",
			usedecimals = true,
		},
		--level anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_anchor.side end,
			values = function() return build_anchor_side_table ("enemyplayer", "level_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--level anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.level_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--level anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.enemyplayer.level_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.enemyplayer.level_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},		

	}
	DF:BuildMenu (enemyPCsFrame, options_table4, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

-----------------------------------------------	
--Friendly NPC painel de op��es ~friendly

	local on_select_friendly_npcname_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.actorname_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendly_npccastname_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.spellname_text_font = value
		Plater.UpdateAllPlates()
	end
	
	local on_select_friendlynpc_level_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.level_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendlynpc_percent_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.percent_text_font = value
		Plater.UpdateAllPlates()
	end	
	local on_select_friendlynpc_titletext_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.big_actortitle_text_font = value
		Plater.UpdateAllPlates()
	end
	local on_select_friendlynpc_bignametext_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.big_actorname_text_font = value
		Plater.db.profile.plate_config.friendlynpc.big_actortitle_text_font = value
		Plater.UpdateAllPlates()
	end
	
	local on_select_friendlynpc_spellpercent_text_font = function (_, _, value)
		Plater.db.profile.plate_config.friendlynpc.spellpercent_text_font = value
		Plater.UpdateAllPlates()
	end	
	
	--menu 2
	local friendly_npc_options_table = {
	
		{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return GetCVarBool ("nameplateShowFriendlyNPCs") end,
			set = function (self, fixedparam, value) 
				if (value) then
					SetCVar ("nameplateShowFriendlyNPCs", CVAR_ENABLED)
					Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].enabled = true
				else
					SetCVar ("nameplateShowFriendlyNPCs", CVAR_DISABLED)
					Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].enabled = false
				end
			end,
			nocombat = true,
			name = "Enabled" .. CVarIcon,
			desc = "Show nameplate for friendly npcs.\n\n|cFFFFFF00Important|r: This option is dependent on the client`s nameplate state (on/off).\n\n|cFFFFFF00Important|r: when disabled but enabled on the client through (" .. (GetBindingKey ("FRIENDNAMEPLATES") or "") .. ") the healthbar isn't visible but the nameplate is still clickable." .. CVarDesc,
		},

		{
			type = "select",
			get = function() return Plater.db.profile.plate_config [ACTORTYPE_FRIENDLY_NPC].relevance_state end,
			values = function() return relevance_options end,
			name = "Show",
			desc = "Modify the way friendly npcs are shown.\n\n|cFFFFFF00Important|r: This option is dependent on the client`s nameplate state (on/off).",
		},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.quest_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.quest_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Use Quest Color",
			desc = "Use a different color when a unit is objective of a quest.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.quest_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.quest_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Quest Color",
			desc = "Nameplate has this color when a friendly npc unit is a quest objective.",
		},		
		
		{type = "blank"},
		
		--plate order
		{type = "label", get = function() return "Plate Order:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.plate_order end,
			values = function() return build_order_options ("friendlynpc") end,
			name = "Order",
			desc = "How the health, cast and buff bars are ordered.\n\nFrom bottom (near the character head) to top.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Buff Frame:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--y offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.buff_frame_y_offset end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.buff_frame_y_offset = value
				Plater.UpdateAllPlates()
			end,
			min = -64,
			max = 64,
			step = 1,
			name = "Y Offset",
			desc = "Adjusts the position on the Y axis.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Npc Name Text When no Health Bar Shown:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--profession text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.big_actorname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.big_actorname_text_size = value
				Plater.db.profile.plate_config.friendlynpc.big_actortitle_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--profession text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.big_actorname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlynpc_bignametext_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--profession text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.big_actorname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.big_actorname_text_shadow = value
				Plater.db.profile.plate_config.friendlynpc.big_actortitle_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--profession text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.big_actorname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.big_actorname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--profession text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.big_actortitle_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.big_actortitle_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Profession Text Color",
			desc = "The color of the profession text below the npc name.",
		},			

		{type = "breakline"},

		--health bar size out of combat
		{type = "label", get = function() return "Health Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.health[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.health[1] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the health bar when out of combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.health[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.health[2] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the health bar when out of combat.",
		},
		
		--health bar size in combat
		{type = "label", get = function() return "Health Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.health_incombat[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.health_incombat[1] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the health bar when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.health_incombat[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.health_incombat[2] = value
				Plater.UpdateAllPlates (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the health bar when in combat.",
		},
		
		{type = "blank"},
		
		--cast bar size out of combat
		{type = "label", get = function() return "Cast Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.cast[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.cast[1] = value
				Plater.UpdateAllPlates()
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the cast bar when out of combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.cast[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.cast[2] = value
				Plater.UpdateAllPlates()
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the cast bar when out of combat.",
		},
		--cast bar size out of combat
		{type = "label", get = function() return "Cast Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.cast_incombat[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.cast_incombat[1] = value
				Plater.UpdateAllPlates()
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			desc = "Width of the cast bar when in combat.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.cast_incombat[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.cast_incombat[2] = value
				Plater.UpdateAllPlates()
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			desc = "Height of the cast bar when in combat.",
		},
		
		--player name size
		{type = "blank"},
		
		{type = "label", get = function() return "Npc Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.actorname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.actorname_text_size = value
				Plater.db.profile.plate_config.friendlynpc.actorname_text_spacing = value-1
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--player name font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.actorname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendly_npcname_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--player name color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.actorname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.actorname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--player name shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.actorname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.actorname_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		
		--npc name anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.actorname_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlynpc", "actorname_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--npc name anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.actorname_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.actorname_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--npc name anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.actorname_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.actorname_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},	
		
		{type = "breakline"},
		
		--cast text size
		{type = "label", get = function() return "Spell Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellname_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellname_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--cast text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellname_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_enemy_npccastname_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--cast text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.spellname_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.spellname_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--cast text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellname_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellname_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		
		{type = "blank"},

		{type = "label", get = function() return "Spell Cast Time Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellpercent_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Show the cast time progress.",
		},
		--cast time text
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellpercent_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--cast time text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlynpc_spellpercent_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--cast time text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellpercent_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--cast time text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.spellpercent_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.spellpercent_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--cast time anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlynpc", "spellpercent_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--cast time anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellpercent_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--cast time anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.spellpercent_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.spellpercent_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},

		{type = "breakline"},
		
		--percent text
		{type = "label", get = function() return "Health Information:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--enabled
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Show the percent text.",
		},
		--out of combat
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlyplayer.percent_text_ooc end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlyplayer.percent_text_ooc = value
				
				Plater.UpdateAllPlates()
			end,
			name = "Out of Combat",
			desc = "Show the percent even when isn't in combat.",
		},
		--percent amount
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_show_percent end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_show_percent = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Percent Amount",
			desc = "Show Percent Amount",
		},
		--health amount
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_show_health end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_show_health = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Health Amount",
			desc = "Show Health Amount",
		},		
		
		--health decimals
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_show_decimals end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_show_decimals = value
				Plater.UpdateAllPlates()
			end,
			name = "Show Decimals",
			desc = "Show Decimals",
		},
		
		--percent text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--percent text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlynpc_percent_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--percent text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--pecent text color
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.plate_config.friendlynpc.percent_text_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.plate_config.friendlynpc.percent_text_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllPlates()
			end,
			name = "Color",
			desc = "The color of the text.",
		},
		--percent text alpha
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Alpha",
			desc = "Set the transparency of the text.",
			usedecimals = true,
		},
		--percent anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlynpc", "percent_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--percent anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--percent anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.percent_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.percent_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},
	
		{type = "blank"},
		
		--level text settings
		{type = "label", get = function() return "Level Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		--level enabled
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.level_text_enabled = value
				Plater.UpdateAllPlates()
			end,
			name = "Enabled",
			desc = "Check this box to show the level of the actor.",
		},
		--level text size
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_size end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.level_text_size = value
				Plater.UpdateAllPlates()
			end,
			min = 6,
			max = 99,
			step = 1,
			name = "Size",
			desc = "Size of the text.",
		},
		--level text font
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_font end,
			values = function() return DF:BuildDropDownFontList (on_select_friendlynpc_level_text_font) end,
			name = "Font",
			desc = "Font of the text.",
		},
		--level text shadow
		{
			type = "toggle",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_shadow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.level_text_shadow = value
				Plater.UpdateAllPlates()
			end,
			name = "Shadow",
			desc = "If the text has a black outline.",
		},
		--level text alpha
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_alpha end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.level_text_alpha = value
				Plater.UpdateAllPlates()
			end,
			min = 0,
			max = 1,
			step = 0.1,
			name = "Alpha",
			desc = "Set the transparency of the text.",
			usedecimals = true,
		},
		--level anchor
		{
			type = "select",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_anchor.side end,
			values = function() return build_anchor_side_table ("friendlynpc", "level_text_anchor") end,
			name = "Anchor",
			desc = "Which side of the nameplate this widget is attach to.",
		},
		--level anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_anchor.x end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.level_text_anchor.x = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "X Offset",
			desc = "Slightly move the text horizontally.",
		},
		--level anchor x offset
		{
			type = "range",
			get = function() return Plater.db.profile.plate_config.friendlynpc.level_text_anchor.y end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.plate_config.friendlynpc.level_text_anchor.y = value
				Plater.UpdateAllPlates()
			end,
			min = -20,
			max = 20,
			step = 1,
			name = "Y Offset",
			desc = "Slightly move the text vertically.",
		},
		
	}
	
	DF:BuildMenu (friendlyNPCsFrame, friendly_npc_options_table, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)

-----------------------------------------------	
--Enemy NPC painel de op��es ~enemy

	do

		local on_select_enemy_npcname_font = function (_, _, value)
			Plater.db.profile.plate_config.enemynpc.actorname_text_font = value
			Plater.UpdateAllPlates()
		end
		local on_select_enemy_npccastname_font = function (_, _, value)
			Plater.db.profile.plate_config.enemynpc.spellname_text_font = value
			Plater.UpdateAllPlates()
		end
		local on_select_enemy_level_text_font = function (_, _, value)
			Plater.db.profile.plate_config.enemynpc.level_text_font = value
			Plater.UpdateAllPlates()
		end
		local on_select_enemy_percent_text_font = function (_, _, value)
			Plater.db.profile.plate_config.enemynpc.percent_text_font = value
			Plater.UpdateAllPlates()
		end

		local on_select_enemy_spellpercent_text_font = function (_, _, value)
			Plater.db.profile.plate_config.enemynpc.spellpercent_text_font = value
			Plater.UpdateAllPlates()
		end

		local on_select_enemynpc_bignametext_text_font = function (_, _, value)
			Plater.db.profile.plate_config.enemynpc.big_actorname_text_font = value
			Plater.db.profile.plate_config.enemynpc.big_actortitle_text_font = value
			Plater.UpdateAllPlates()
		end

		--menu 2 --enemy npc
		local options_table2 = {
		
			{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--enabled
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.quest_enabled end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.quest_enabled = value
					Plater.UpdateAllPlates()
				end,
				name = "Use Quest Color",
				desc = "Enemy npc units which are objective of a quest have a different color.",
			},
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.quest_color_enemy
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.quest_color_enemy
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Quest Color (hostile npc)",
				desc = "Nameplate has this color when a hostile mob is a quest objective.",
			},
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.quest_color_neutral
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.quest_color_neutral
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Quest Color (neutral npc)",
				desc = "Nameplate has this color when a neutral mob is a quest objective.",
			},
			
			--plate order
			{type = "blank"},
			{type = "label", get = function() return "Plate Order:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.plate_order end,
				values = function() return build_order_options ("enemynpc") end,
				name = "Order",
				desc = "How the health, cast and buff bars are ordered.\n\nFrom bottom (near the character head) to top.",
			},
			
			{type = "blank"},
			{type = "label", get = function() return "Debuff Frame:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--y offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.buff_frame_y_offset end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.buff_frame_y_offset = value
					Plater.UpdateAllPlates()
				end,
				min = -64,
				max = 64,
				step = 1,
				name = "Y Offset",
				desc = "Adjusts the position on the Y axis.",
			},

			{type = "blank"},
			
			{type = "label", get = function() return "Cast Frame:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--y offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.castbar_offset end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.castbar_offset = value
					Plater.UpdateAllPlates()
				end,
				min = -128,
				max = 128,
				step = 1,
				name = "Y Offset",
				desc = "Adjusts the position on the Y axis when using the order Cast Bar > Health Bar > Debuffs.",
			},				
			
			{type = "blank"},
			
			{type = "label", get = function() return "Npc Name Text When no Health Bar Shown:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--profession text size
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.big_actorname_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.big_actorname_text_size = value
					Plater.db.profile.plate_config.enemynpc.big_actortitle_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--profession text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.big_actorname_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_enemynpc_bignametext_text_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--profession text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.big_actorname_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.big_actorname_text_shadow = value
					Plater.db.profile.plate_config.enemynpc.big_actortitle_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			
			--[=[
			--profession text color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.big_actorname_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.big_actorname_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			--profession text color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.big_actortitle_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.big_actortitle_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Profession Text Color",
				desc = "The color of the profession text below the npc name.",
			},
			--]=]
			
			{type = "breakline"},
		
			--health bar size out of combat
			{type = "label", get = function() return "Health Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.health[1] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.health[1] = value
					Plater.UpdateAllPlates (nil, true)
				end,
				min = 50,
				max = 300,
				step = 1,
				name = "Width",
				desc = "Width of the health bar when out of combat.",
			},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.health[2] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.health[2] = value
					Plater.UpdateAllPlates (nil, true)
				end,
				min = 1,
				max = 100,
				step = 1,
				name = "Height",
				desc = "Height of the health bar when out of combat.",
			},
			
			--health bar size in combat
			{type = "label", get = function() return "Health Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.health_incombat[1] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.health_incombat[1] = value
					Plater.UpdateAllPlates (nil, true)
				end,
				min = 50,
				max = 300,
				step = 1,
				name = "Width",
				desc = "Width of the health bar when in combat.",
			},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.health_incombat[2] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.health_incombat[2] = value
					Plater.UpdateAllPlates (nil, true)
				end,
				min = 1,
				max = 100,
				step = 1,
				name = "Height",
				desc = "Height of the health bar when in combat.",
			},
			{type = "blank"},
			--cast bar size out of combat
			{type = "label", get = function() return "Cast Bar Size out of Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.cast[1] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.cast[1] = value
					Plater.UpdateAllPlates()
				end,
				min = 50,
				max = 300,
				step = 1,
				name = "Width",
				desc = "Width of the cast bar when out of combat.",
			},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.cast[2] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.cast[2] = value
					Plater.UpdateAllPlates()
				end,
				min = 1,
				max = 100,
				step = 1,
				name = "Height",
				desc = "Height of the cast bar when out of combat.",
			},
			--cast bar size out of combat
			{type = "label", get = function() return "Cast Bar Size in Combat:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.cast_incombat[1] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.cast_incombat[1] = value
					Plater.UpdateAllPlates()
					Plater.UpdateMaxCastbarTextLength()
				end,
				min = 50,
				max = 300,
				step = 1,
				name = "Width",
				desc = "Width of the cast bar when in combat.",
			},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.cast_incombat[2] end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.cast_incombat[2] = value
					Plater.UpdateAllPlates()
				end,
				min = 1,
				max = 100,
				step = 1,
				name = "Height",
				desc = "Height of the cast bar when in combat.",
			},
			{type = "blank"},
			--player name size
			{type = "label", get = function() return "Npc Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.actorname_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.actorname_text_size = value
					Plater.db.profile.plate_config.enemynpc.actorname_text_spacing = value-1
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--player name font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.actorname_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_enemy_npcname_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--player name color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.actorname_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.actorname_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			--player name shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.actorname_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.actorname_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			
			--npc name anchor
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.actorname_text_anchor.side end,
				values = function() return build_anchor_side_table ("enemynpc", "actorname_text_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--npc name anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.actorname_text_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.actorname_text_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--npc name anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.actorname_text_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.actorname_text_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},	
			
			{type = "breakline"},
			
			--cast text size
			{type = "label", get = function() return "Spell Name Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellname_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellname_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--cast text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellname_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_enemy_npccastname_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--cast text color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.spellname_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.spellname_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			--cast text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellname_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellname_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			
			{type = "blank"},
			
			{type = "label", get = function() return "Spell Cast Time Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_enabled end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellpercent_text_enabled = value
					Plater.UpdateAllPlates()
				end,
				name = "Enabled",
				desc = "Show the cast time progress.",
			},
			--cast time text
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellpercent_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--cast time text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_enemy_spellpercent_text_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--cast time text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellpercent_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			--cast time text color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.spellpercent_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.spellpercent_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			
			--cast time anchor
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_anchor.side end,
				values = function() return build_anchor_side_table ("enemynpc", "spellpercent_text_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--cast time anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellpercent_text_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--cast time anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.spellpercent_text_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.spellpercent_text_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},			
			
			{type = "breakline"},
			
			--percent text
			{type = "label", get = function() return "Health Information:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--enabled
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_enabled end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_enabled = value
					Plater.UpdateAllPlates()
				end,
				name = "Enabled",
				desc = "Show the percent text.",
			},
			--out of combat
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_ooc end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_ooc = value
					
					Plater.UpdateAllPlates()
				end,
				name = "Out of Combat",
				desc = "Show the percent even when isn't in combat.",
			},
			--percent amount
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_show_percent end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_show_percent = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Percent Amount",
				desc = "Show Percent Amount",
			},
			--health amount
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_show_health end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_show_health = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Health Amount",
				desc = "Show Health Amount",
			},
			
			--health decimals
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_show_decimals end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_show_decimals = value
					Plater.UpdateAllPlates()
				end,
				name = "Show Decimals",
				desc = "Show Decimals",
			},
			
			--percent text size
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--percent text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_enemy_percent_text_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--percent text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			--pecent text color
			{
				type = "color",
				get = function()
					local color = Plater.db.profile.plate_config.enemynpc.percent_text_color
					return {color[1], color[2], color[3], color[4]}
				end,
				set = function (self, r, g, b, a) 
					local color = Plater.db.profile.plate_config.enemynpc.percent_text_color
					color[1], color[2], color[3], color[4] = r, g, b, a
					Plater.UpdateAllPlates()
				end,
				name = "Color",
				desc = "The color of the text.",
			},
			--percent text alpha
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_alpha end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_alpha = value
					Plater.UpdateAllPlates()
				end,
				min = 0,
				max = 1,
				step = 0.1,
				name = "Alpha",
				desc = "Set the transparency of the text.",
				usedecimals = true,
			},
			--percent anchor
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_anchor.side end,
				values = function() return build_anchor_side_table ("enemynpc", "percent_text_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--percent anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--percent anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.percent_text_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.percent_text_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},

			--level text settings
			{type = "blank"},
			{type = "label", get = function() return "Level Text:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
			--level enabled
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_enabled end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.level_text_enabled = value
					Plater.UpdateAllPlates()
				end,
				name = "Enabled",
				desc = "Check this box to show the level of the actor.",
			},
			--level text size
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_size end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.level_text_size = value
					Plater.UpdateAllPlates()
				end,
				min = 6,
				max = 99,
				step = 1,
				name = "Size",
				desc = "Size of the text.",
			},
			--level text font
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_font end,
				values = function() return DF:BuildDropDownFontList (on_select_enemy_level_text_font) end,
				name = "Font",
				desc = "Font of the text.",
			},
			--level text shadow
			{
				type = "toggle",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_shadow end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.level_text_shadow = value
					Plater.UpdateAllPlates()
				end,
				name = "Shadow",
				desc = "If the text has a black outline.",
			},
			--level text alpha
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_alpha end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.level_text_alpha = value
					Plater.UpdateAllPlates()
				end,
				min = 0,
				max = 1,
				step = 0.1,
				name = "Alpha",
				desc = "Set the transparency of the text.",
				usedecimals = true,
			},
			--level anchor
			{
				type = "select",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_anchor.side end,
				values = function() return build_anchor_side_table ("enemynpc", "level_text_anchor") end,
				name = "Anchor",
				desc = "Which side of the nameplate this widget is attach to.",
			},
			--level anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_anchor.x end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.level_text_anchor.x = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "X Offset",
				desc = "Slightly move the text horizontally.",
			},
			--level anchor x offset
			{
				type = "range",
				get = function() return Plater.db.profile.plate_config.enemynpc.level_text_anchor.y end,
				set = function (self, fixedparam, value) 
					Plater.db.profile.plate_config.enemynpc.level_text_anchor.y = value
					Plater.UpdateAllPlates()
				end,
				min = -20,
				max = 20,
				step = 1,
				name = "Y Offset",
				desc = "Slightly move the text vertically.",
			},

		}
		DF:BuildMenu (enemyNPCsFrame, options_table2, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)
	end
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> ~keybind ~bindings

	--[=[
	local keybind_changed_callback = function()
		local data = Plater.db.profile.keybinds [DF:GetCurrentSpec()]
		if (data) then
			local bind_string, bind_type_func, bind_macro_func = DF:BuildKeybindFunctions (data, "PL")
			if (bind_string) then
				for _, plateFrame in ipairs (Plater.GetAllShownPlates()) do
					DF:SetKeybindsOnProtectedFrame (plateFrame, bind_string, bind_type_func, bind_macro_func)
				end
			end
		end
	end
	
	local editKeybindFrame = DF:CreateKeybindBox (keybindsFrame, "PlaterKeybindSettings", Plater.db.profile.keybinds, keybind_changed_callback, 800, 600, 12, 20)
	editKeybindFrame:SetPoint ("topleft", keybindsFrame, 0, -110)
	editKeybindFrame:Hide()
	
	function keybindsFrame.RefreshOptions()
		editKeybindFrame:SetData (Plater.db.profile.keybinds)
	end
	--]=]
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> ~scripts ~scripting ~code �nimations ~animations
	Plater.CreateScriptingPanel()
	Plater.CreateHookingPanel()
	Plater.CreateSpellAnimationPanel()
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> ~auto ~�uto

	--autoFrame
		
	local auto_options = {
		{type = "label", get = function() return "Auto Toggle Friendly Nameplates:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_friendly_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_friendly_enabled = value
				
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
				Plater.RefreshAutoToggle()
			end,
			name = "Enabled",
			desc = "When enabled, Plater will enable or disable friendly plates based on the settings below.",
		},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_friendly ["party"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_friendly ["party"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Dungeons",
			desc = "Show friendly nameplates when inside dungeons.",
		},	
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_friendly ["raid"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_friendly ["raid"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Raid",
			desc = "Show friendly nameplates when inside raids.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_friendly ["arena"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_friendly ["arena"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Arena",
			desc = "Show friendly nameplates when inside arena.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_friendly ["cities"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_friendly ["cities"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Major Cities",
			desc = "Show friendly nameplates when inside a major city.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_friendly ["world"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_friendly ["world"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Open World",
			desc = "Show friendly nameplates when at any place not listed on the other options.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Auto Toggle Stacking Nameplates:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_stacking_enabled end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_stacking_enabled = value
				
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
				Plater.RefreshAutoToggle()
			end,
			name = "Enabled",
			desc = "When enabled, Plater will enable or disable stacking nameplates based on the settings below.\n\n|cFFFFFF00Important|r: only toggle on if 'Stacking Nameplates' is enabled in the General Settings tab.",
		},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_stacking ["party"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_stacking ["party"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Dungeons",
			desc = "Set stacking on when inside dungeons.",
		},	
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_stacking ["raid"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_stacking ["raid"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Raid",
			desc = "Set stacking on when inside raids.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_stacking ["arena"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_stacking ["arena"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Arena",
			desc = "Set stacking on when inside arena.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_stacking ["cities"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_stacking ["cities"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Major Cities",
			desc = "Set stacking on when inside a major city.",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.auto_toggle_stacking ["world"] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.auto_toggle_stacking ["world"] = value
				Plater.RefreshAutoToggle()
			end,
			name = "In Open World",
			desc = "Set stacking on when at any place not listed on the other options.",
		},
		
	}
	
	DF:BuildMenu (autoFrame, auto_options, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)	
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> ~threat �ggro ~aggro
	

	local thread_options = {
		{type = "label", get = function() return "Plate Color by Aggro:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.tank.colors.aggro
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.tank.colors.aggro
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[tank] Aggro on You",
			desc = "When you are tanking with solid aggro.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.tank.colors.anothertank
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.tank.colors.anothertank
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[tank] Aggro on Another Tank",
			desc = "The enemy is being tanked by another tank in the raid.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.tank.colors.pulling
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.tank.colors.pulling
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[tank] Aggro on You Warning",
			desc = "When you are tanking but others are close to pull the aggro from you.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.tank.colors.noaggro
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.tank.colors.noaggro
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[tank] No Aggro",
			desc = "The enemy is attacking a player that isn't a tank!.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.tank.colors.nocombat
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.tank.colors.nocombat
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[tank] Not in Combat",
			desc = "When you are in combat and the enemy isn't in combat with you or with a member of your group.",
		},
			
		{type = "blank"},
--		{type = "label", get = function() return "Plate Color As a Dps:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.dps.colors.aggro
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.dps.colors.aggro
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[dps] Aggro",
			desc = "The name plate is painted with this color when you are a Dps (or healer) and have aggro.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.dps.colors.noaggro
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.dps.colors.noaggro
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[dps] No Aggro",
			desc = "When you are a dps (or healer) and the mob isn't attacking you.",
		},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.dps.colors.pulling
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.dps.colors.pulling
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "[dps] High Threat",
			desc = "When you are neat to pull the aggro.",
		},
		
		{type = "blank"},
		
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.tap_denied_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.tap_denied_color
				color[1], color[2], color[3], color[4] = r, g, b, a
			end,
			name = "Unit Tapped",
			desc = "When someone else has claimed the unit (when you don't receive experience or loot for killing it).",
		},
		
		{type = "blank"},
		{type = "label", get = function() return "Aggro Modifies:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
		{
			type = "toggle",
			get = function() return Plater.db.profile.aggro_modifies.health_bar_color end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.aggro_modifies.health_bar_color = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
				if (not value) then
					for _, plateFrame in ipairs (Plater.GetAllShownPlates()) do
						CompactUnitFrame_UpdateHealthColor (plateFrame.UnitFrame)
					end
				end
			end,
			name = "Health Bar Color",
			desc = "Health Bar Color",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.aggro_modifies.border_color end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.aggro_modifies.border_color = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			name = "Border Color",
			desc = "Border Color",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.aggro_modifies.actor_name_color end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.aggro_modifies.actor_name_color = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			name = "Name Color",
			desc = "Name Color",
		},
			
	}
	
	DF:BuildMenu (threatFrame, thread_options, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)
	
	
	
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> ~advanced �dvanced
	

	local advanced_options = {
	
		{type = "label", get = function() return "General Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "range",
			get = function() return Plater.db.profile.update_throttle end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.update_throttle = value
				Plater.RefreshDBUpvalues()
			end,
			min = 0.050,
			max = 0.500,
			step = 0.050,
			name = "Update Interval",
			usedecimals = true,
			desc = "Time interval in seconds between each update on the nameplate.\n\n|cFFFFFFFFDefault: 0.25|r (4 updates every second).",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Client Settings (CVars):" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return tonumber (GetCVar ("nameplateOtherTopInset")) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					if (value == 0) then
						SetCVar ("nameplateOtherTopInset", -1)
						SetCVar ("nameplateLargeTopInset", -1)
						
					else
						SetCVar ("nameplateOtherTopInset", value)
						SetCVar ("nameplateLargeTopInset", value)
					end
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 0.000,
			max = 0.1,
			step = 0.005,
			thumbscale = 1.7,
			usedecimals = true,
			name = "Lock to Screen (Top Side)" .. CVarIcon,
			desc = "Min space between the nameplate and the top of the screen. Increase this if some part of the nameplate are going out of the screen.\n\n|cFFFFFFFFDefault: 0.065|r\n\n|cFFFFFF00Important|r: setting to 0 disables this feature." .. CVarDesc,
			nocombat = true,
		},
		
		{
			type = "range",
			get = function() return tonumber (GetCVar ("nameplateOverlapV")) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateOverlapV", value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 0.2,
			max = 1.6,
			step = 0.05,
			thumbscale = 1.7,
			usedecimals = true,
			name = "Nameplate Vertical Distance" .. CVarIcon,
			desc = "Min distance between each nameplate (when stacking is enabled).\n\n|cFFFFFFFFDefault: 1.10|r" .. CVarDesc .. "\n\n|cFFFFFF00Important|r: if you find issues with this setting, use:\n|cFFFFFFFF/run SetCVar ('nameplateOverlapV', '1.6')|r",
			nocombat = true,
		},
		
		{
			type = "range",
			get = function() return tonumber (GetCVar (CVAR_MOVEMENT_SPEED)) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar (CVAR_MOVEMENT_SPEED, value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 0.02,
			max = 0.2,
			step = 0.005,
			thumbscale = 1.7,
			usedecimals = true,
			name = "Movement Speed" .. CVarIcon,
			desc = "How fast the nameplate moves (when stacking is enabled).\n\n|cFFFFFFFFDefault: 0.025|r\n\n|cFFFFFFFFRecommended: 0.05|r" .. CVarDesc,
			nocombat = true,
		},
		{
			type = "range",
			get = function() return tonumber (GetCVar ("nameplateGlobalScale")) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateGlobalScale", value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 0.75,
			max = 2,
			step = 0.1,
			thumbscale = 1.7,
			usedecimals = true,
			name = "Global Scale" .. CVarIcon,
			desc = "Scale all nameplates.\n\n|cFFFFFFFFDefault: 1|r" .. CVarDesc,
			nocombat = true,
		},
		
		{
			type = "range",
			get = function() return tonumber (GetCVar ("nameplateMinScale")) end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateMinScale", value)
				else
					Plater:Msg ("you are in combat.")
				end
			end,
			min = 0.3,
			max = 2,
			step = 0.1,
			thumbscale = 1.7,
			usedecimals = true,
			name = "Distance Scale" .. CVarIcon,
			desc = "Scale applied when the nameplate is far away from the camera.\n\n|cFFFFFF00Important|r: is the distance from the camera and |cFFFF4444not|r the distance from your character.\n\n|cFFFFFFFFDefault: 0.8|r" .. CVarDesc,
			nocombat = true,
		},

		{
			type = "select",
			get = function() return tonumber (GetCVar ("nameplateOtherAtBase")) end,
			values = function() return nameplate_anchor_options end,
			name = "Anchor Point" .. CVarIcon,
			desc = "Where the nameplate is anchored to.\n\n|cFFFFFFFFDefault: Head|r" .. CVarDesc,
			nocombat = true,
		},
		
		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowEnemyGuardians") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowEnemyGuardians", math.abs (tonumber (GetCVar ("nameplateShowEnemyGuardians"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowEnemyGuardians") == CVAR_ENABLED)
				end
			end,
			name = "Show Enemy Guardians" .. CVarIcon,
			desc = "Show nameplates for enemies pets considered as guardian" .. CVarDesc,
			nocombat = true,
		},
		
		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowEnemyMinions") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowEnemyMinions", math.abs (tonumber (GetCVar ("nameplateShowEnemyMinions"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowEnemyMinions") == CVAR_ENABLED)
				end
			end,
			name = "Show Enemy Minions" .. CVarIcon,
			desc = "Show nameplates for enemies considered as minions" .. CVarDesc,
			nocombat = true,
		},
		
		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowEnemyMinus") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowEnemyMinus", math.abs (tonumber (GetCVar ("nameplateShowEnemyMinus"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowEnemyMinus") == CVAR_ENABLED)
				end
			end,
			name = "Show Enemy Minor Units" .. CVarIcon,
			desc = "Show nameplates of small units (usually they are units with max level but low health)" .. CVarDesc,
			nocombat = true,
		},

		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowEnemyPets") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowEnemyPets", math.abs (tonumber (GetCVar ("nameplateShowEnemyPets"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowEnemyPets") == CVAR_ENABLED)
				end
			end,
			name = "Show Enemy Pets" .. CVarIcon,
			desc = "Show nameplates for enemy pets" .. CVarDesc,
			nocombat = true,
		},

		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowEnemyTotems") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowEnemyTotems", math.abs (tonumber (GetCVar ("nameplateShowEnemyTotems"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowEnemyTotems") == CVAR_ENABLED)
				end
			end,
			name = "Show Enemy Totems" .. CVarIcon,
			desc = "Show enemy totems" .. CVarDesc,
			nocombat = true,
		},

		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowFriendlyNPCs") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowFriendlyNPCs", math.abs (tonumber (GetCVar ("nameplateShowFriendlyNPCs"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowFriendlyNPCs") == CVAR_ENABLED)
				end
			end,
			name = "Show Friendly Npcs" .. CVarIcon,
			desc = "Show nameplates for friendly npcs" .. CVarDesc,
			nocombat = true,
		},
		
		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowFriendlyGuardians") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowFriendlyGuardians", math.abs (tonumber (GetCVar ("nameplateShowFriendlyGuardians"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowFriendlyGuardians") == CVAR_ENABLED)
				end
			end,
			name = "Show Friendly Guadians" .. CVarIcon,
			desc = "Show nameplates for friendly pets considered as guardian" .. CVarDesc,
			nocombat = true,
		},

		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowFriendlyMinions") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowFriendlyMinions", math.abs (tonumber (GetCVar ("nameplateShowFriendlyMinions"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowFriendlyMinions") == CVAR_ENABLED)
				end
			end,
			name = "Show Friendly Minions" .. CVarIcon,
			desc = "Show nameplates for friendly units considered minions" .. CVarDesc,
			nocombat = true,
		},

		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowFriendlyPets") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowFriendlyPets", math.abs (tonumber (GetCVar ("nameplateShowFriendlyPets"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowFriendlyPets") == CVAR_ENABLED)
				end
			end,
			name = "Show Friendly Pets" .. CVarIcon,
			desc = "Show nameplates for friendly pets" .. CVarDesc,
			nocombat = true,
		},

		{
			type = "toggle",
			get = function() return GetCVar ("nameplateShowFriendlyTotems") == CVAR_ENABLED end,
			set = function (self, fixedparam, value) 
				if (not InCombatLockdown()) then
					SetCVar ("nameplateShowFriendlyTotems", math.abs (tonumber (GetCVar ("nameplateShowFriendlyTotems"))-1))
				else
					Plater:Msg ("you are in combat.")
					self:SetValue (GetCVar ("nameplateShowFriendlyTotems") == CVAR_ENABLED)
				end
			end,
			name = "Show Friendly Totems" .. CVarIcon,
			desc = "Show enemy totems" .. CVarDesc,
			nocombat = true,
		},

		{type = "breakline"},
	
		{type = "label", get = function() return "Enemy Box Selection Space:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.click_space[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.click_space[1] = value
				Plater.UpdatePlateClickSpace (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			nocombat = true,
			desc = "How large are area which accepts mouse clicks to select the target",
		},
		
		{
			type = "range",
			get = function() return Plater.db.profile.click_space[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.click_space[2] = value
				Plater.UpdatePlateClickSpace (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			nocombat = true,
			desc = "The height of the are area which accepts mouse clicks to select the target",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Friendly Box Selection Space:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "range",
			get = function() return Plater.db.profile.click_space_friendly[1] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.click_space_friendly[1] = value
				Plater.UpdatePlateClickSpace (nil, true)
			end,
			min = 50,
			max = 300,
			step = 1,
			name = "Width",
			nocombat = true,
			desc = "How large are area which accepts mouse clicks to select the target",
		},
		
		{
			type = "range",
			get = function() return Plater.db.profile.click_space_friendly[2] end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.click_space_friendly[2] = value
				Plater.UpdatePlateClickSpace (nil, true)
			end,
			min = 1,
			max = 100,
			step = 1,
			name = "Height",
			nocombat = true,
			desc = "The height of the are area which accepts mouse clicks to select the target",
		},		
		
		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.click_space_always_show end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.click_space_always_show = value
				Plater.UpdateAllPlates()
			end,
			nocombat = true,
			name = "Always Show Background",
			desc = "Enable a background showing the area of the clicable area.",
		},
		
		{type = "blank"},
		
		{type = "label", get = function() return "Color Overriding:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.color_override end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.color_override = value
				Plater.RefreshColorOverride()
			end,
			name = "Override Default Colors",
			desc = "Override Default Colors.\n\n|cFFFFFF00Important|r: this override colors when out of combat, in combat Plater uses the colors from the Aggro/Threat tab.",
		},
		
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.color_override_colors [UNITREACTION_HOSTILE]
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.color_override_colors [UNITREACTION_HOSTILE]
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllNameplateColors()
			end,
			name = "Hostile",
			desc = "Hostile",
		},
		
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.color_override_colors [UNITREACTION_NEUTRAL]
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.color_override_colors [UNITREACTION_NEUTRAL]
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllNameplateColors()
			end,
			name = "Neutral",
			desc = "Neutral",
		},
		
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.color_override_colors [UNITREACTION_FRIENDLY]
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.color_override_colors [UNITREACTION_FRIENDLY]
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.UpdateAllNameplateColors()
			end,
			name = "Friendly",
			desc = "Friendly",
		},
	
		{type = "blank"},
		{type = "label", get = function() return "Special Units:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
	
		{
			type = "range",
			get = function() return Plater.db.profile.pet_width_scale end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.pet_width_scale = value
				Plater.UpdateAllPlates()
			end,
			min = 0.2,
			max = 2,
			step = 0.1,
			name = "Pet Width Scale",
			desc = "Slightly adjust the size of nameplates when showing a pet",
			usedecimals = true,
		},
		{
			type = "range",
			get = function() return Plater.db.profile.pet_height_scale end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.pet_height_scale = value
				Plater.UpdateAllPlates()
			end,
			min = 0.2,
			max = 2,
			step = 0.1,
			name = "Pet Height Scale",
			desc = "Slightly adjust the size of nameplates when showing a pet",
			usedecimals = true,
		},
		{
			type = "range",
			get = function() return Plater.db.profile.minor_width_scale end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.minor_width_scale = value
				Plater.UpdateAllPlates()
			end,
			min = 0.2,
			max = 2,
			step = 0.1,
			name = "Minor Unit Width Scale",
			desc = "Slightly adjust the size of nameplates when showing a minor unit (these units has a smaller nameplate by default).",
			usedecimals = true,
		},
		{
			type = "range",
			get = function() return Plater.db.profile.minor_height_scale end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.minor_height_scale = value
				Plater.UpdateAllPlates()
			end,
			min = 0.2,
			max = 2,
			step = 0.1,
			name = "Minor Unit Height Scale",
			desc = "Slightly adjust the size of nameplates when showing a minor unit (these units has a smaller nameplate by default).",
			usedecimals = true,
		},
		
		{type = "breakline"},
		{type = "label", get = function() return "Misc:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		--[=
		{
			type = "toggle",
			get = function() return Plater.db.profile.hide_enemy_castbars end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.hide_enemy_castbars = value
				Plater.UpdateUseCastBar()
			end,
			name = "Hide Enemy Cast Bar",
			desc = "Hide Enemy Cast Bar",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.hide_friendly_castbars end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.hide_friendly_castbars = value
				Plater.UpdateUseCastBar()
			end,
			name = "Hide Friendly Cast Bar",
			desc = "Hide Friendly Cast Bar",
		},
		--]=]
		
		--[=
		--{type = "label", get = function() return "Border Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		{
			type = "color",
			get = function()
				local color = Plater.db.profile.border_color
				return {color[1], color[2], color[3], color[4]}
			end,
			set = function (self, r, g, b, a) 
				local color = Plater.db.profile.border_color
				color[1], color[2], color[3], color[4] = r, g, b, a
				Plater.RefreshDBUpvalues()
				Plater.UpdatePlateBorders()
			end,
			name = "Border Color",
			desc = "Color of the plate border.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.border_thickness end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.border_thickness = value
				Plater.RefreshDBUpvalues()
				Plater.UpdatePlateBorderThickness()
			end,
			min = 1,
			max = 3,
			step = 1,
			name = "Border Thickness",
			desc = "How thick the border should be.",
		},
		
		{
			type = "range",
			get = function() return Plater.db.profile.healthbar_framelevel end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.healthbar_framelevel = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			min = -5,
			max = 75,
			step = 1,
			name = "HealthBar Frame Level",
			desc = "Add this to the default frame level of the healthbar",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.castbar_framelevel end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.castbar_framelevel = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			min = -5,
			max = 75,
			step = 1,
			name = "CastBar Frame Level",
			desc = "Add this to the default frame level of the castbar",
		},
		{
			type = "toggle",
			get = function() return Plater.db.profile.health_cutoff_extra_glow end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.health_cutoff_extra_glow = value
				Plater.UpdateAllPlates()
			end,
			name = "Add Extra Glow to Execute Range",
			desc = "Add Extra Glow to Execute Range",
		},
		
		{type = "blank"},
		{type = "label", get = function() return "Animation Settings:" end, text_template = DF:GetTemplate ("font", "ORANGE_FONT_TEMPLATE")},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.use_color_lerp end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.use_color_lerp = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			name = "Use Smooth Color Transition",
			desc = "Color changes does a smooth transition between the old and the new color.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.color_lerp_speed end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.color_lerp_speed = value
				Plater.RefreshDBUpvalues()
				Plater.DebugColorAnimation()
			end,
			min = 1,
			max = 50,
			step = 1,
			name = "Smooth Color Transition Speed",
			desc = "How fast it transition between colors.",
		},
		
		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.height_animation end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.height_animation = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			name = "Use Smooth Height Transition",
			desc = "Do a smooth animation when the nameplate's height changes.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.height_animation_speed end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.height_animation_speed = value
				Plater.RefreshDBUpvalues()
			end,
			min = 1,
			max = 50,
			step = 1,
			name = "Smooth Height Transition Speed",
			desc = "How fast is the transition animation.",
		},
		
		{type = "blank"},
		
		{
			type = "toggle",
			get = function() return Plater.db.profile.use_health_animation end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.use_health_animation = value
				Plater.RefreshDBUpvalues()
				Plater.UpdateAllPlates()
			end,
			name = "Use Smooth Health Transition",
			desc = "Do a smooth animation when the nameplate's health value changes.",
		},
		{
			type = "range",
			get = function() return Plater.db.profile.health_animation_time_dilatation end,
			set = function (self, fixedparam, value) 
				Plater.db.profile.health_animation_time_dilatation = value
				Plater.RefreshDBUpvalues()
				Plater.DebugHealthAnimation()
			end,
			min = 0.35,
			max = 5,
			step = 0.1,
			usedecimals = true,
			thumbscale = 1.7,
			name = "Smooth Health Transition Speed",
			desc = "How fast is the transition animation.",
		},		
		
		--]=]		
	}
	
	DF:BuildMenu (advancedFrame, advanced_options, startX, startY, heightSize, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template, globalCallback)
		
	--
	Plater.CheckOptionsTab()
end


--endd functiond

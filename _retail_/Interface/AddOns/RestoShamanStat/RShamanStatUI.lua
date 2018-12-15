-- RShamanStat UI Code
--
-- handles all UI specific events
--


local revision = tonumber(string.sub("$Revision: 115 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

rss.GameTooltip_SetOwner = GameTooltip.SetOwner;

local encounterFilter = "";
local selectedIndex = 0;
local selectedButton = nil;
local selectedRecord = nil;
local selectedRecordInfo = nil;

local SetEncounterFilter = function (filter)
    encounterFilter = filter

    if selectedButton then
        selectedIndex = 0;
        selectedButton.selectedTex:Hide();
        selectedButton = nil;
    end

    RShamanStatUI_UpdateRecordList()
end

local SetRecord = function(record)
    RShamanStatFrameRecordInfo.headline:SetText(record.encounterName);
    RShamanStatFrameRecordInfo.subheadline:SetText(string.format("%.2fk Healing Done", record.effectiveTotal/1000.0));

    local difficulty = GetDifficultyInfo(record.difficulty);
    local duration = string.format("%02.f minutes %02.f seconds", record.totalTime/60, record.totalTime % 60);
    if not difficulty then
        difficulty = "Unknown Difficulty"
    end

    RShamanStatFrameRecordInfo.extra:SetText(difficulty .. "\n" .. duration);

    selectedRecord = record;
    local r = record;
    local a = rss.AnalyzeRecord(r)
    selectedRecordInfo = {
        { label = "General", header = true, },
        { label = "Healing per Second",                 value=string.format("%.2fk", a.hps / 1000.0) },
		
		{ label = "Spellpower",                         value=(type(r.stats.healingBonus) == 'table' and r.stats.healingBonus.min ~= r.stats.healingBonus.max and 
																										string.format("%d - %d", r.stats.healingBonus.min, r.stats.healingBonus.max) or 
																										string.format("%d", rss.GetAverageOrValue(r.stats.healingBonus)) )},
		
		{ label = "Haste",                              value=(type(r.stats.spellHaste) == 'table' and r.stats.spellHaste.min ~= r.stats.spellHaste.max and 
																										string.format("%.2f - %.2f%%", 100*r.stats.spellHaste.min, 100*r.stats.spellHaste.max) or
							                              												string.format("%.2f%%", 100*rss.GetAverageOrValue(r.stats.spellHaste)) )},

		{ label = "Mastery Percentage",                 value=(type(r.stats.masteryBonus) == 'table' and r.stats.masteryBonus.min ~= r.stats.masteryBonus.max and 
																										string.format("%.2f - %.2f%%", 100*r.stats.masteryBonus.min, 100*r.stats.masteryBonus.max) or
							                              												string.format("%.2f%%", 100*rss.GetAverageOrValue(r.stats.masteryBonus)) )},
		
		{ label = "Critical Strike Chance",             value=(type(r.stats.criticalChance[rss.SCHOOL_NATURE]) == 'table' and r.stats.criticalChance[rss.SCHOOL_NATURE].min ~= r.stats.criticalChance[rss.SCHOOL_NATURE].max and
																										string.format("%.2f - %.2f%%", 100*r.stats.criticalChance[rss.SCHOOL_NATURE].min, 100*r.stats.criticalChance[rss.SCHOOL_NATURE].max) or
							                              												string.format("%.2f%%", 100*rss.GetAverageOrValue(r.stats.criticalChance[rss.SCHOOL_NATURE])) )},
		
		{ label = "Versatility",						value=(type(r.stats.versatilityBonus) == 'table' and r.stats.versatilityBonus.min ~= r.stats.versatilityBonus.max and
																										string.format("%.2f - %.2f%%", 100*r.stats.versatilityBonus.min, 100*r.stats.versatilityBonus.max) or
																										string.format("%.2f%%", 100*rss.GetAverageOrValue(r.stats.versatilityBonus)) )},
																										
        { label = "Intellect", header = true, },
        --{ label = "Required Spellpower for 1% Gain",    value=string.format("%d", a.spellpowerInc) , tooltip = { text = rss.TT_SPELLPOWERINC } },
        { label = "|cFFFF0000Required Intellect for 1% Gain|r",     value=string.format("|cFFFF0000%d|r", a.intellectInc)  , tooltip = { text = rss.TT_INTELLECTINC } },

		{ label = "Haste", header  = true} ,
	{ label = "Total Throughput Gain",                 value=string.format("%.2f%%", a.hasteTotalThroughputGain), tooltip = { text = rss.TT_HASTEFRACT } },
	--{ label = "Busy Fraction",                         value=string.format("%.2f%%", 100*a.busyFraction), tooltip = { text = rss.TT_BUSYFRACTION } },
	{ label = "Weighted Busy Fraction",                value=string.format("%.2f%%", 100*a.weightedBusyFraction), tooltip = {text = rss.TT_WEIGHTEDBUSYFRACTION } },
        { label = "|cFFFF0000Required Rating for 1% Gain|r",  	   value=string.format("|cFFFF0000%d|r", a.hasteInc),  tooltip = { text = rss.TT_HASTEINC } },

        { label = "Mastery", header = true },
        { label = "Total Throughput Gain",              value=string.format("%.2f%%", a.masteryTotalThroughputGain) , tooltip = { text = rss.TT_MASTERYFRACT } },
        { label = "Average Health of Targets",          value=string.format("%.2f%%", a.averageHealth*100) , tooltip = { text = rss.TT_MASTERYHEALTH } },
        { label = "|cFFFF0000Required Rating for 1% Gain|r",        value=string.format("|cFFFF0000%d|r", a.masteryInc) , tooltip = { text = rss.TT_MASTERYINC } },

        { label = "Critical Strike", header = true },
        { label = "Total Throughput Gain",              value=string.format("%.2f%%", a.critTotalThroughputGain) , tooltip = { text = rss.TT_CRITICALFRACT } },
        { label = "|cFFFF0000Required Rating for 1% Gain|r",        value=string.format("|cFFFF0000%d|r", a.critInc) , tooltip = { text = rss.TT_CRITICALINC } },
		
        { label = "Versatility", header = true },
        { label = "Total Throughput Gain",              value=string.format("%.2f%%", a.versTotalThroughputGain) , tooltip = { text = rss.TT_VERSATILITYFRACT } },
        { label = "|cFFFF0000Required Rating for 1% Gain|r",        value=string.format("|cFFFF0000%d|r", a.versInc) , tooltip = { text = rss.TT_VERSATILITYINC } },
		
		
--[[
        { label = "Mana Regeneration", header = true, },
        -- Not consistent with display of other stats
		--{ label = "600 Spirit (w/o MTT)",               value=string.format("%.2f mp5", a.spirit_mp5)  },
        --{ label = "600 Crit",                           value=string.format("%.2f mp5", a.crit_mp5)  },
		{ label = "Spirit for 1% Gain",           		value=string.format("%d", a.spiritRegenInc) , tooltip = { text = rss.TT_SPIRITREGEN } },
		{ label = "Crit Rating for 1% Gain",      		value=string.format("%d", a.critRegenInc) , tooltip = { text = rss.TT_CRITREGEN } },
        { label = "Expected GoWS Mana Gain",            value=string.format("%d", a.waterShieldGlyphManaGain) , tooltip = { text = rss.TT_GOWSREGEN } },
--]]
    }
    RShamanStatUI_UpdateContentData();
end

function RShamanStatUI_OnTextChanged(self)
    local text = self:GetText();

    if ( text == SEARCH ) then
        SetEncounterFilter("");
        return;
    end

    SetEncounterFilter(text);
end

function RShamanStatUI_Load()
    RShamanStatFrame.TitleText:SetText("Resto Shaman Stat Analysis");
	SetPortraitToTexture(RShamanStatFrame.portrait,(select(3,GetSpellInfo(rss.HEALING_WAVE))))
	
    -- Record List Scroll Frame
    RShamanStatFrameScrollFrame.update = RShamanStatUI_UpdateRecordList;
    HybridScrollFrame_CreateButtons(RShamanStatFrameScrollFrame, "RShamanStatFrameRecordButtonTemplate", 0, -1, "TOPLEFT", "TOPLEFT", 0, -1, "TOP", "BOTTOM");
    rss.UpdateUI = function()
        RShamanStatUI_UpdateRecordList();
        RShamanStatUI_UpdateContentData();
    end

    -- Record Info Scroll Frame
    RShamanStatFrameRecordInfoContentScrollFrame.update = RShamanStatUI_UpdateContentData;
    HybridScrollFrame_CreateButtons(RShamanStatFrameRecordInfoContentScrollFrame, "RShamanStatRecordInfoButtonTemplate", 1, -2, "TOPLEFT", "TOPLEFT", 0, -3);

end

function RShamanStatUI_OnClickSummary()
    local archive = RShamanStatUI_GetFilteredArchive();
    local filter = function(r)
        return (RShamanStatArchive.filter.difficulty == 0 or RShamanStatArchive.filter.difficulty == r.difficulty);
    end
    local record =  rss.CreateAggregateRecord("Summary for '" .. encounterFilter .."'", archive, filter)
    SetRecord(record);
end

function RShamanStatUI_OnClickRecord(self, button)
    if self == selectedButton then
        return;
    end

    if selectedButton then
        selectedButton.selectedTex:Hide();
    end

    selectedIndex = self.recordIndex;
    selectedButton = self;
    selectedButton.selectedTex:Show();

    PlaySound("INTERFACESOUND_CHARWINDOWTAB");

    local archive = RShamanStatUI_GetFilteredArchive();
    local record = archive[selectedIndex];
    SetRecord(record)
end

function RShamanStatUI_GetFilteredArchive()
    local archive = {};
	archive.isGoblin = RShamanStatArchive.isGoblin;
	archive.ancestralSwiftness = RShamanStatArchive.ancestralSwiftness;
	archive.hasteBreakpoints = RShamanStatArchive.hasteBreakpoints;
    local numRecords = 0;
    for i,rec in ipairs(RShamanStatArchive) do
        if encounterFilter == "" or strfind(string.lower(rec.encounterName), string.lower(encounterFilter), 0, true) then
            archive[numRecords+1] = rec;
            numRecords = numRecords + 1;
        end
    end
    return archive
end

function RShamanStatUI_UpdateRecordList()
    local archive = RShamanStatUI_GetFilteredArchive();
    local numRecords = #archive;

    local scrollFrame = RShamanStatFrame.scrollFrame;
    local buttons = scrollFrame.buttons;
    local numButtons = #buttons;

    if selectedButton then
        selectedButton.selectedTex:Hide();
    end

    for i = 1, numButtons do
        local button = buttons[i];
        local offset = HybridScrollFrame_GetOffset(scrollFrame);
        local index = i + offset;
        if index <= numRecords then
            button:Show();
            button.encounter:SetText(index .. ". " .. archive[index].encounterName);
            button.date:SetText(date("%c", archive[index].startTime));
            button.recordIndex = index;
            if selectedIndex == index then
                selectedButton = button;
                selectedButton.selectedTex:Show();
            end
        else
            button:Hide();
        end
    end

    HybridScrollFrame_Update(scrollFrame, 41*(numRecords)+5, 330);
end

function RShamanStatUI_UpdateContentData()
    if not selectedRecordInfo then
        RShamanStatUI_OnClickSummary();
    end
    local recordInfo = selectedRecordInfo;

    local numElements = #selectedRecordInfo;

    local scrollFrame = RShamanStatFrameRecordInfo.contentScrollFrame;
    local buttons = scrollFrame.buttons;
    local numButtons = #buttons;
	
	local showStripe = { };
	local stripeCount = 0;
	for j = 1, numElements do
		if recordInfo[j].header then
			stripeCount = 0;
		else
			stripeCount = stripeCount + 1;
		end
		if stripeCount % 2 == 0 then
			showStripe[j] = true;
		else
			showStripe[j] = false;
		end
	end

    for i = 1, numButtons do
        local button = buttons[i];
        local offset = HybridScrollFrame_GetOffset(scrollFrame);
        local index = i + offset;
        local info = recordInfo[index]
        button.check:Hide();
        if index <= numElements then
            if info.header then
                button.categoryLeft:Show();
                button.categoryRight:Show();
                button.categoryMiddle:Show();
                button.expandIcon:Hide();
                button.icon:Hide();
                button.highlight:SetTexture("Interface\\TokenFrame\\UI-TokenFrame-CategoryButton");
                button.highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 3, -2);
                button.highlight:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -3, 2);
                button.label:SetFontObject("GameFontNormal");
                -- button.label:SetPoint("LEFT", 22, 0);
                button.label:SetPoint("LEFT", 11, 0);
                button.label:SetText(info.label);
                button.value:SetText("");
				button.tooltip = info.tooltip;
            else
                button.categoryLeft:Hide();
                button.categoryRight:Hide();
                button.categoryMiddle:Hide();
                button.expandIcon:Hide();
                button.icon:Hide();
                button.highlight:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight");
                button.highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0);
                button.highlight:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0);

                if info.disabled then
                    button.label:SetFontObject("GameFontDisable");
                    button.value:SetFontObject("GameFontDisable");
                else
                    button.label:SetFontObject("GameFontHighlight");
                    button.value:SetFontObject("GameFontHighlight");
                end
                button.label:SetPoint("LEFT", 11, 0);
                button.label:SetText(info.label);
                button.value:SetText(info.value);
                button.value:SetPoint("RIGHT", -11, 0);
				button.tooltip = info.tooltip;
            end
            button:Show();
            if ( showStripe[index] ) then
                button.stripe:Show();
            else
                button.stripe:Hide();
            end
        else
            button:Hide();
        end
    end

    HybridScrollFrame_Update(scrollFrame, 20*(numElements), 340);
end

function RShamanStatUI_RecordInfoButtonOnEnter(self)
	if self.tooltip then
		GameTooltip:ClearAllPoints();
		_G["RShamanStat"].GameTooltip_SetOwner(GameTooltip, self, "ANCHOR_NONE");
		GameTooltip:SetPoint("TOPLEFT",_G["RShamanStatFrameRecordInfoContentScrollFrame"],"TOPRIGHT");
		GameTooltip:SetText(self.tooltip.text[1],1,1,0,1,false);
		GameTooltip:AddLine(self.tooltip.text[2],0.1,1,0.1,false);
		if IsShiftKeyDown() then
			for i = 3, #self.tooltip.text do
				GameTooltip:AddLine(self.tooltip.text[i],1,1,1, true);
				GameTooltip:AddLine(" ",1,1,1,true);
			end
			if self.tooltip.moreText then
				for _, line in ipairs(self.tooltip.moreText) do
					--GameTooltip:AddDoubleLine(line.left, line.right, unpack(line.color), unpack(line.color)); doesn't work, unsure why
					GameTooltip:AddDoubleLine(line.left, line.right, line.color[1],line.color[2],line.color[3], line.color[1],line.color[2],line.color[3]);
				end
			end
		else
			for i = 3, math.min(3, #self.tooltip.text) do
				GameTooltip:AddLine(self.tooltip.text[i],1,1,1, true);
				GameTooltip:AddLine(" ",1,1,1,true);
			end		
			if #self.tooltip.text > 3 or self.tooltip.moreText then
				GameTooltip:AddLine("(Press SHIFT for more information)",0.5,0.5,0.5,false);
			end
		end
		GameTooltip:Show();
	end
end
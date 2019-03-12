-------------------------------------------------------------------------------
-- Premade Groups Filter
-------------------------------------------------------------------------------
-- Copyright (C) 2015 Elotheon-Arthas-EU
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along
-- with this program; if not, write to the Free Software Foundation, Inc.,
-- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-------------------------------------------------------------------------------

local PGF = select(2, ...)
local L = PGF.L
local C = PGF.C

PGF.lastSearchEntryReset = time()
PGF.previousSearchExpression = ""
PGF.currentSearchExpression = ""
PGF.previousSearchLeaders = {}
PGF.currentSearchLeaders = {}

function PGF.GetExpressionFromMinMaxModel(model, key)
    local exp = ""
    if model[key].act then
        if PGF.NotEmpty(model[key].min) then exp = exp .. " and " .. key .. ">=" .. model[key].min end
        if PGF.NotEmpty(model[key].max) then exp = exp .. " and " .. key .. "<=" .. model[key].max end
    end
    return exp
end

function PGF.GetExpressionFromIlvlModel(model)
    local exp = PGF.GetExpressionFromMinMaxModel(model, "ilvl")
    if model.noilvl.act and PGF.NotEmpty(exp) then
        exp = exp:gsub("^ and ", "")
        exp = " and (" .. exp .. " or ilvl==0)"
    end
    return exp
end

function PGF.GetExpressionFromDifficultyModel(model)
    if model.difficulty.act then
        return " and " .. C.DIFFICULTY_STRING[model.difficulty.val]
    end
    return ""
end

function PGF.GetExpressionFromAdvancedExpression(model)
    if model.expression and model.expression ~= "" then
        return " and ( " .. model.expression .. " ) "
    end
    return ""
end

function PGF.GetModel()
    local tab = PVEFrame.activeTabIndex
    local category = LFGListFrame.SearchPanel.categoryID or LFGListFrame.CategorySelection.selectedCategory
    local filters = LFGListFrame.SearchPanel.filters or LFGListFrame.CategorySelection.selectedFilters or 0
    if not tab then return nil end
    if not category then return nil end
    if filters < 0 then filters = "n" .. filters end
    local modelKey = "t" .. tab .. "c" .. category .. "f" .. filters
    if PremadeGroupsFilterState[modelKey] == nil then
        local defaultState = {}
        -- if we have an old v1.10 state, take it instead of the default one
        local oldGlobalState = PremadeGroupsFilterState["v110"]
        if oldGlobalState ~= nil then
            defaultState = PGF.Table_Copy_Rec(oldGlobalState)
        end
        PGF.Table_UpdateWithDefaults(defaultState, C.MODEL_DEFAULT)
        PremadeGroupsFilterState[modelKey] = defaultState
    end
    return PremadeGroupsFilterState[modelKey]
end

function PGF.GetExpressionFromModel()
    local model = PGF.GetModel()
    if not model then return "true" end
    local exp = "true" -- start with neutral element
    exp = exp .. PGF.GetExpressionFromDifficultyModel(model)
    exp = exp .. PGF.GetExpressionFromIlvlModel(model)
    exp = exp .. PGF.GetExpressionFromMinMaxModel(model, "members")
    exp = exp .. PGF.GetExpressionFromMinMaxModel(model, "tanks")
    exp = exp .. PGF.GetExpressionFromMinMaxModel(model, "heals")
    exp = exp .. PGF.GetExpressionFromMinMaxModel(model, "dps")
    exp = exp .. PGF.GetExpressionFromMinMaxModel(model, "defeated")
    exp = exp .. PGF.GetExpressionFromAdvancedExpression(model)
    exp = exp:gsub("^true and ", "")
    return exp
end

function PGF.ResetSearchEntries()
    -- make sure to wait at least some time between two resets
    if time() - PGF.lastSearchEntryReset > C.SEARCH_ENTRY_RESET_WAIT then
        PGF.previousSearchLeaders = PGF.Table_Copy_Shallow(PGF.currentSearchLeaders)
        PGF.currentSearchLeaders = {}
        PGF.previousSearchExpression = PGF.currentSearchExpression
        PGF.lastSearchEntryReset = time()
    end
end

local roleRemainingKeyLookup = {
    ["TANK"] = "TANK_REMAINING",
    ["HEALER"] = "HEALER_REMAINING",
    ["DAMAGER"] = "DAMAGER_REMAINING",
};

local function HasRemainingSlotsForLocalPlayerRole(lfgSearchResultID)
    local roles = C_LFGList.GetSearchResultMemberCounts(lfgSearchResultID);
    local playerRole = GetSpecializationRole(GetSpecialization());
    return roles[roleRemainingKeyLookup[playerRole]] > 0;
end

function PGF.SortByFriendsAndAge(searchResultID1, searchResultID2)
    local searchResultInfo1 = C_LFGList.GetSearchResultInfo(searchResultID1);
    local searchResultInfo2 = C_LFGList.GetSearchResultInfo(searchResultID2);

    local hasRemainingRole1 = HasRemainingSlotsForLocalPlayerRole(searchResultID1);
    local hasRemainingRole2 = HasRemainingSlotsForLocalPlayerRole(searchResultID2);

    if hasRemainingRole1 ~= hasRemainingRole2 then return hasRemainingRole1 end

    if searchResultInfo1.numBNetFriends ~= searchResultInfo2.numBNetFriends then
        return searchResultInfo1.numBNetFriends > searchResultInfo2.numBNetFriends
    end
    if searchResultInfo1.numCharFriends ~= searchResultInfo2.numCharFriends then
        return searchResultInfo1.numCharFriends > searchResultInfo2.numCharFriends
    end
    if searchResultInfo1.numGuildMates ~= searchResultInfo2.numGuildMates then
        return searchResultInfo1.numGuildMates > searchResultInfo2.numGuildMates
    end

    return searchResultInfo1.age < searchResultInfo2.age
end

function PGF.PutRaiderIOMetrics(env, leaderName)
    env.hasrio       = false
    env.norio        = true
    env.rio          = 0
    env.riodps       = 0
    env.rioheal      = 0
    env.riotank      = 0
    env.riomain      = 0
    env.riokey5plus  = 0
    env.riokey10plus = 0
    env.riokey15plus = 0
    env.riokeymax    = 0
    if leaderName and RaiderIO and RaiderIO.HasPlayerProfile(leaderName) then
        local result = RaiderIO.GetPlayerProfile(RaiderIO.ProfileOutput.MYTHICPLUS, leaderName)
        if result and result.profile then
            env.hasrio       = true
            env.norio        = false
            env.rio          = result.profile.mplusCurrent.score
            env.rioprev      = result.profile.mplusPrevious.score
            env.riomain      = result.profile.mplusMainCurrent.score
            env.riomainprev  = result.profile.mplusMainPrevious.score
            env.riokey5plus  = result.profile.keystoneFivePlus
            env.riokey10plus = result.profile.keystoneTenPlus
            env.riokey15plus = result.profile.keystoneFifteenPlus
            env.riokey20plus = result.profile.keystoneTwentyPlus
            env.riokeymax    = result.profile.maxDungeonLevel
        end
    end
end

function PGF.DoFilterSearchResults(results)
    --print(debugstack())
    --print("filtering, size is "..#results)

    PGF.ResetSearchEntries()
    local exp = PGF.GetExpressionFromModel()
    PGF.currentSearchExpression = exp
    local model = PGF.GetModel()
    if not model or not model.enabled then return false end
    if not results or #results == 0 then return false end
    if exp == "true" then return false end -- skip trivial expression

    -- loop backwards through the results list so we can remove elements from the table
    for idx = #results, 1, -1 do
        local resultID = results[idx]
        local searchResultInfo = C_LFGList.GetSearchResultInfo(resultID)
        -- /dump C_LFGList.GetSearchResultInfo(select(2, C_LFGList.GetSearchResults())[1])
        -- name and comment are now protected strings like "|Ks1969|k0000000000000000|k" which can only be printed
        local defeatedBossNames = C_LFGList.GetSearchResultEncounterInfo(resultID)
        local memberCounts = C_LFGList.GetSearchResultMemberCounts(resultID)
        local numGroupDefeated, numPlayerDefeated, maxBosses,
              matching, groupAhead, groupBehind = PGF.GetLockoutInfo(searchResultInfo.activityID, resultID)
        local avName, avShortName, avCategoryID, avGroupID, avILevel, avFilters,
              avMinLevel, avMaxPlayers, avDisplayType, avOrderIndex,
              avUseHonorLevel, avShowQuickJoin = C_LFGList.GetActivityInfo(searchResultInfo.activityID)
        local difficulty = PGF.GetDifficulty(searchResultInfo.activityID, avName, avShortName)

        local env = {}
        env.activity = searchResultInfo.activityID
        env.activityname = avName:lower()
        env.leader = searchResultInfo.leaderName and searchResultInfo.leaderName:lower() or ""
        env.age = math.floor(searchResultInfo.age / 60) -- age in minutes
        env.voice = searchResultInfo.voiceChat and searchResultInfo.voiceChat ~= ""
        env.voicechat = searchResultInfo.voiceChat
        env.ilvl = searchResultInfo.requiredItemLevel or 0
        env.hlvl = searchResultInfo.requiredHonorLevel or 0
        env.friends = searchResultInfo.numBNetFriends + searchResultInfo.numCharFriends + searchResultInfo.numGuildMates
        env.members = searchResultInfo.numMembers
        env.tanks = memberCounts.TANK
        env.heals = memberCounts.HEALER
        env.healers = memberCounts.HEALER
        env.ranged = 0        -- incremented below
        env.ranged_strict = 0 -- incremented below
        env.melees = 0        -- incremented below
        env.melees_strict = 0 -- incremented below
        env.dps = memberCounts.DAMAGER + memberCounts.NOROLE
        env.defeated = numGroupDefeated
        env.normal     = difficulty == C.NORMAL
        env.heroic     = difficulty == C.HEROIC
        env.mythic     = difficulty == C.MYTHIC
        env.mythicplus = difficulty == C.MYTHICPLUS
        env.myrealm = searchResultInfo.leaderName and searchResultInfo.leaderName ~= "" and not searchResultInfo.leaderName:find('-')
        env.partialid = numPlayerDefeated > 0
        env.fullid = numPlayerDefeated > 0 and numPlayerDefeated == maxBosses
        env.noid = not env.partialid and not env.fullid
        env.matchingid = groupAhead == 0 and groupBehind == 0
        env.bossesmatching = matching
        env.bossesahead = groupAhead
        env.bossesbehind = groupBehind
        env.maxplayers = avMaxPlayers
        env.suggestedilvl = avILevel
        env.minlvl = avMinLevel
        env.categoryid = avCategoryID
        env.groupid = avGroupID
        env.autoinv = searchResultInfo.autoAccept
        env.questid = searchResultInfo.questID

        for i = 1, searchResultInfo.numMembers do
            local role, class = C_LFGList.GetSearchResultMemberInfo(resultID, i)
            local classPlural = class:lower() .. "s" -- plural form of the class in english
            env[classPlural] = (env[classPlural] or 0) + 1
            if role then
                local classRolePlural = C.ROLE_PREFIX[role] .. "_" .. class:lower() .. "s"
                local roleClassPlural = class:lower() .. "_" .. C.ROLE_SUFFIX[role]
                env[classRolePlural] = (env[classRolePlural] or 0) + 1
                env[roleClassPlural] = (env[roleClassPlural] or 0) + 1
                if role == "DAMAGER" then
                    if C.DPS_CLASS_TYPE[class].range and C.DPS_CLASS_TYPE[class].melee then
                        env.ranged = env.ranged + 1
                        env.melees = env.melees + 1
                    elseif C.DPS_CLASS_TYPE[class].range then
                        env.ranged = env.ranged + 1
                        env.ranged_strict = env.ranged_strict + 1
                    elseif C.DPS_CLASS_TYPE[class].melee then
                        env.melees = env.melees + 1
                        env.melees_strict = env.melees_strict + 1
                    end
                end
            end
        end

        local aID = searchResultInfo.activityID
        env.arena2v2 = aID == 6 or aID == 491
        env.arena3v3 = aID == 7 or aID == 490

        -- raids       normal        heroic        mythic
        env.hm   = aID ==  37 or aID ==  38 or aID == 399  -- Highmaul
        env.brf  = aID ==  39 or aID ==  40 or aID == 400  -- Blackrock Foundry
        env.hfc  = aID == 409 or aID == 410 or aID == 412  -- Hellfire Citadel
        env.en   = aID == 413 or aID == 414 or aID == 468  -- The Emerald Nightmare
        env.nh   = aID == 415 or aID == 416 or aID == 481  -- The Nighthold
        env.tov  = aID == 456 or aID == 457 or aID == 480  -- Trial of Valor
        env.tos  = aID == 479 or aID == 478 or aID == 492  -- Tomb of Sargeras
        env.atbt = aID == 482 or aID == 483 or aID == 493  -- Antorus, the Burning Throne
        env.uldir= aID == 494 or aID == 495 or aID == 496  -- Uldir
        env.bod  = aID == 663 or aID == 664 or aID == 665  -- Battle of Dazar'alor
        env.daz  = env.bod
        env.cs   = aID == 666 or aID == 667 or aID == 668  -- Crucible of Storms
        env.cru  = env.cs

        -- dungeons    normal        heroic        mythic       mythic+
        env.eoa  = aID == 425 or aID == 435 or aID == 445 or aID == 459  -- Eye of Azshara
        env.dht  = aID == 426 or aID == 436 or aID == 446 or aID == 460  -- Darkheart Thicket
        env.hov  = aID == 427 or aID == 437 or aID == 447 or aID == 461  -- Halls of Valor
        env.nl   = aID == 428 or aID == 438 or aID == 448 or aID == 462  -- Neltharion's Lair
        env.vh   = aID == 429 or aID == 439 or aID == 449                     -- Violet Hold
        env.brh  = aID == 430 or aID == 440 or aID == 450 or aID == 463  -- Black Rook Hold
        env.votw = aID == 431 or aID == 441 or aID == 451 or aID == 464  -- Vault of the Wardens
        env.mos  = aID == 432 or aID == 442 or aID == 452 or aID == 465  -- Maw of Souls
        env.cos  = aID == 433 or aID == 443 or aID == 453 or aID == 466  -- Court of Stars
        env.aw   = aID == 434 or aID == 444 or aID == 454 or aID == 467  -- The Arcway
        env.kara =                             aID == 455                -- Karazhan
                              or aID == 470               or aID == 471  -- Lower Karazahn
                              or aID == 472               or aID == 473  -- Upper Karazhan
        env.lkara =              aID == 470               or aID == 471  -- Lower Karazahn
        env.ukara =              aID == 472               or aID == 473  -- Upper Karazhan
        env.coen =               aID == 474 or aID == 475 or aID == 476  -- Cathedral of Eternal Night
        env.sott =               aID == 484 or aID == 485 or aID == 486  -- Seat of the Triumvirate

        env.ad   = aID == 501 or aID == 500 or aID == 499 or aID == 502  -- Atal'Dazar
                or aID == 543
        env.tosl = aID == 503 or aID == 505 or aID == 645 or aID == 504  -- Temple of Sethraliss
                or aID == 542
        env.tur  = aID == 506 or aID == 508 or aID == 644 or aID == 507  -- The Underrot
                or aID == 541
        env.tml  = aID == 509 or aID == 511 or aID == 646 or aID == 510  -- The MOTHERLODE
                or aID == 540
        env.kr   = aID == 512 or aID == 515 or aID == 513 or aID == 514  -- Kings' Rest
                                            or aID == 660 or aID == 661
        env.fh   = aID == 516 or aID == 519 or aID == 517 or aID == 518  -- Freehold
                or aID == 539
        env.sots = aID == 520 or aID == 523 or aID == 521 or aID == 522  -- Shrine of the Storm
                or aID == 538
        env.td   = aID == 524 or aID == 527 or aID == 525 or aID == 526  -- Tol Dagor
                or aID == 537
        env.wm   = aID == 528 or aID == 531 or aID == 529 or aID == 530  -- Waycrest Manor
                or aID == 536
        env.sob  = aID == 532 or aID == 535 or aID == 533 or aID == 534  -- Siege of Boralus
                                            or aID == 658 or aID == 659
        -- raider.io aliases
        env.ml = env.tml
        env.undr = env.tur
        env.siege = env.sob
        --env.tos = env.tosl -- collision with Tomb of Sargeras
        PGF.PutRaiderIOMetrics(env, searchResultInfo.leaderName)

        setmetatable(env, { __index = function(table, key) return 0 end }) -- set non-initialized values to 0
        if PGF.DoesPassThroughFilter(env, exp) then
            -- leaderName is usually still nil at this point if the group is new, but we can live with that
            if searchResultInfo.leaderName then PGF.currentSearchLeaders[searchResultInfo.leaderName] = true end
        else
            table.remove(results, idx)
        end
    end
    -- sort by age
    table.sort(results, PGF.SortByFriendsAndAge)
    LFGListFrame.SearchPanel.totalResults = #results
    return true
end

function PGF.OnLFGListSearchEntryUpdate(self)
    local searchResultInfo = C_LFGList.GetSearchResultInfo(self.resultID)
    -- try once again to update the leaderName (this information is not immediately available)
    if searchResultInfo.leaderName then PGF.currentSearchLeaders[searchResultInfo.leaderName] = true end
    --self.ActivityName:SetText("[" .. activity .. "/" .. resultID .. "] " .. self.ActivityName:GetText()) -- DEBUG
    if not searchResultInfo.isDelisted then
        -- color name if new
        if PGF.currentSearchExpression ~= "true"                        -- not trivial search
        and PGF.currentSearchExpression == PGF.previousSearchExpression -- and the same search
        and (searchResultInfo.leaderName and not PGF.previousSearchLeaders[searchResultInfo.leaderName]) then -- and leader is new
            local color = C.COLOR_ENTRY_NEW
            self.Name:SetTextColor(color.R, color.G, color.B)
        end
        -- color activity if lockout
        local numGroupDefeated, numPlayerDefeated, maxBosses,
              matching, groupAhead, groupBehind = PGF.GetLockoutInfo(searchResultInfo.activityID, self.resultID)
        local color
        if numPlayerDefeated > 0 and numPlayerDefeated == maxBosses then
            color = C.COLOR_LOCKOUT_FULL
        elseif numPlayerDefeated > 0 and groupAhead == 0 and groupBehind == 0 then
            color = C.COLOR_LOCKOUT_MATCH
        end
        if color then
            self.ActivityName:SetTextColor(color.R, color.G, color.B)
        end
    end
end

function PGF.OnLFGListSearchEntryOnEnter(self)
    local resultID = self.resultID
    local searchResultInfo = C_LFGList.GetSearchResultInfo(resultID)
    local _, _, _, _, _, _, _, _, displayType = C_LFGList.GetActivityInfo(searchResultInfo.activityID)

    -- do not show members where Blizzard already does that
    if displayType == LE_LFG_LIST_DISPLAY_TYPE_CLASS_ENUMERATE then return end
    if searchResultInfo.isDelisted or not GameTooltip:IsShown() then return end
    GameTooltip:AddLine(" ")
    GameTooltip:AddLine(CLASS_ROLES)

    local roles = {}
    local classInfo = {}
    for i = 1, searchResultInfo.numMembers do
        local role, class, classLocalized = C_LFGList.GetSearchResultMemberInfo(resultID, i)
        classInfo[class] = {
            name = classLocalized,
            color = RAID_CLASS_COLORS[class] or NORMAL_FONT_COLOR
        }
        if not roles[role] then roles[role] = {} end
        if not roles[role][class] then roles[role][class] = 0 end
        roles[role][class] = roles[role][class] + 1
    end

    for role, classes in pairs(roles) do
        GameTooltip:AddLine(_G[role]..": ")
        for class, count in pairs(classes) do
            local text = "   "
            if count > 1 then text = text .. count .. " " else text = text .. "   " end
            text = text .. "|c" .. classInfo[class].color.colorStr ..  classInfo[class].name .. "|r "
            GameTooltip:AddLine(text)
        end
    end
    GameTooltip:Show()
end

hooksecurefunc("LFGListSearchEntry_Update", PGF.OnLFGListSearchEntryUpdate)
hooksecurefunc("LFGListSearchEntry_OnEnter", PGF.OnLFGListSearchEntryOnEnter)
hooksecurefunc("LFGListUtil_SortSearchResults", PGF.DoFilterSearchResults)

local ADDON_NAME, addon = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "frFR")
if not L then return end

L[ [=[|cffeda55fClick|r to toggle combat logging
|cffeda55fRight-Click|r to open the options menu]=] ] = [=[|cffeda55fCliquer|r pour activer/désactiver le log de combat
|cffeda55fClic droit|r pour ouvrir le menu des options]=]
L["Enable chat logging when combat logging is enabled."] = "Activer le log de chat dès que le log de combat est activé."
L["Log chat"] = "Activer le log de chat"
L["Profiles"] = "Profils"
L["Prompt on new zone"] = "Rappeler dans une nouvelle zone"
L["Prompt to enable logging when entering a new raid instance."] = "Rappeler en entrant dans une nouvelle zone?"
L["Show minimap icon"] = "Montrer l'icône sur la mini-carte"
L["Toggle showing or hiding the minimap icon."] = "Activer/désactiver l'affichage de l'icône sur la mini-carte."
L["You have entered |cffd9d919%s|r. Enable logging for this zone?"] = "Vous êtes entré dans |cffd9d919%s|r. Voulez-vous activer les logs pour cette zone/instance?"


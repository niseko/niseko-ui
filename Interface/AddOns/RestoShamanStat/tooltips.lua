local revision = tonumber(string.sub("$Revision: 115 $", 12, -3))
local rss = _G.RShamanStat
if rss.revision < revision then rss.revision = revision end

-- All tooltips must define at least two strings (the first of which is the title)

-- Haste tooltips

rss.TT_HASTEINC = {
"Haste Rating",
"Haste Rating required per 1% throughput increase",
"Haste Rating required for a 1% change in throughput (vs. current stats).",
"The expected throughput change is based on the ability to cast more spells in a given amount of time and additional HoT/totem ticks.",
"Buffs to Haste from all sources are accounted for in the calculation.",
"Smaller values are better, and correspond to a more significant change in throughput (per stat point invested).",
};

rss.TT_BUSYFRACTION = {
"Busy Fraction",
"Fraction of time spent casting or on GCD",
"Fraction of time that you were casting a spell or on Global Cooldown (GCD) after casting an instant spell.",
"Haste is more valuable to your direct heals when you are busy a large fraction of the time.",
"(Haste also increases the healing from your over-time effects, regardless of how busy you are)",
};

rss.TT_WEIGHTEDBUSYFRACTION = {
"Weighted Busy Fraction",
"Fraction of time spent casting or on GCD while healing",
"Fraction of time that you were casting a spell or on Global Cooldown (GCD) after casting an instant spell, weighted by effective healing done around the same time.",
"Haste is more valuable to your direct heals when you are busy a large fraction of the time.",
"(Haste also increases the healing from your over-time effects, regardless of how busy you are)",
};

rss.TT_HASTEFRACT = {
"Haste Throughput % (estimated)",
"Percentage of effective healing attributable to Haste",
"The fraction of your effective healing due to Haste, determined by comparing the actual effect of each heal to the result if your Haste were 0%.",
"Haste directly increases heal over time effects by a corresponding percentage. Haste also increases direct heals with an effectiveness that depends on how busy you are at the time of the cast.",
"The value indicates how important Haste is to your overall healing throughput.",
"Higher values do _not_ necessarily mean Haste Rating is the most effective stat.",
};

-- Mastery tooltips

rss.TT_MASTERYINC = {
"Mastery Rating",
"Mastery Rating per 1% throughput change",
"Mastery Rating required for a 1% change in throughput (vs. current stats).",
"Buffs to Mastery from all sources are accounted for in the calculation.",
"Smaller values are better, and correspond to a more significant change in throughput (per stat point invested).",
};

rss.TT_MASTERYFRACT = {
"Mastery Throughput %",
"Percentage of effective healing attributable to Mastery",
"The fraction of your effective healing due to Mastery, determined by comparing the actual effect of each heal to the result if your Mastery were 0%.",
"The value indicates how important Mastery is to your overall healing throughput.",
"Higher values do _not_ necessarily mean Mastery is the most effective stat.",
};

rss.TT_MASTERYHEALTH = {
"Mastery Target Health %",
"Weighted average target health level.",
"The average health fraction of targets you healed, weighted by the effective healing done.",
"Smaller values indicate that your heals will benefit more from your Mastery bonus.",
};

-- Critical Rating tooltips

rss.TT_CRITICALINC = {
"Critical Rating",
"Critical Rating per 1% throughput change",
"Critical Rating required for a 1% change in throughput (vs. current stats).",
"Buffs to Critical Chance from all sources are accounted for in the calculation.",
"Smaller values are better, and correspond to a more significant change in throughput (per stat point invested).",
};

rss.TT_CRITICALFRACT = {
"Critical Throughput %",
"Percentage of effective healing attributable to Critical Chance",
"The fraction of your effective healing due to Critical Chance, determined by comparing the actual effect of each heal to the result if your Critical Chance were 0%.",
"The value indicates how important Critical Chance is to your overall healing throughput.",
"Higher values do _not_ necessarily mean Critical Rating is the most effective stat.",
};

-- Versatility tooltips

rss.TT_VERSATILITYINC = {
"Versatility Rating",
"Versatility Rating per 1% throughput change",
"Versatility Rating required for a 1% change in throughput (vs. current stats).",
"Buffs to Versatility from all sources are accounted for in the calculation.",
"The defensive benefit (damage reduction) from Versatility is NOT included.",
"Smaller values are better, and correspond to a more significant change in throughput (per stat point invested).",
};

rss.TT_VERSATILITYFRACT = {
"Versatility Throughput %",
"Percentage of effective healing attributable to Versatility",
"The fraction of your effective healing due to Versatility, determined by comparing the actual effect of each heal to the result if your Versatility were 0%.",
"The value indicates how important Versatility is to your overall healing throughput.",
"Higher values do _not_ necessarily mean Versatility is the most effective stat.",
};

-- Spellpower tooltip

rss.TT_SPELLPOWERINC = {
"Spellpower",
"Spellpower per 1% throughput change",
"Spellpower required for a 1% change in throughput (vs. current stats).",
"The 10% spellpower raid buff is included.",
"Smaller values correspond to a more significant change in throughput (per stat point invested).",
};

-- Intellect tooltip

rss.TT_INTELLECTINC = {
"Intellect",
"Intellect per 1% throughput change",
"Intellect required for a 1% change in throughput (vs. current stats).",
"Buffs to Intellect from all sources (including the automatic 5% buff) are accounted for in the calculation.",
"Smaller values are better, and correspond to a more significant change in throughput (per stat point invested).",
"(Note that starting with Legion, one point of Intellect and one point of Spellpower are equal).",
};

-- Regen

rss.TT_SPIRITREGEN = {
"Spirit Regen",
"Spirit per 1% passive regen change",
"Spirit required for a 1% change in passive mana regeneration (vs. current stats).",
"The effects of Mana Tide Totem and other regen buffs are not (yet) included.",
"Smaller values correspond to a more significant change in regeneration (per stat point invested).",
};

rss.TT_CRITREGEN = {
"Resurgence Regen",
"Critical Rating per 1% passive regen change",
"Critical Rating required to increase Resurgence effects by 1% of your passive mana regeneration.",
"The effects of Mana Tide Totem and other regen buffs are not (yet) included.",
"Smaller values correspond to a more significant change in Resurgence regeneration (per stat point invested).",
};

rss.TT_GOWSREGEN = {
"Glyph of Water Shield",
"Change in expected mana regeneration from Glyph of Water Shield",
"Difference between mana gained from enhanced Water Shield procs and mana lost due to lower passive regeneration, with the Glyph of Water Shield equipped.",
"This value does not depend on whether or not you actually have the glyph equipped.",
"Positive values correspond to a net increase in mana regeneration from Glyph of Water Shield.",
};

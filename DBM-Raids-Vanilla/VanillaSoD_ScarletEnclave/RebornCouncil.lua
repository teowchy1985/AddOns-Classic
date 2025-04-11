if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("RebornCouncil", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("20250410222349")

mod:SetZone(2856)
mod:SetEncounterID(3188)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
)

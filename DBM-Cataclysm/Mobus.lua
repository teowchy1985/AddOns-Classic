local mod	= DBM:NewMod("Mobus", "DBM-Cataclysm")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20240130013945")
mod:SetCreatureID(50009)
mod:SetModelID(37338)
mod:EnableWBEngageSync()--Enable syncing engage in outdoors

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 93492 93494 93491",
	"SPELL_AURA_APPLIED 93490"
)

local warnAlgae				= mod:NewTargetNoFilterAnnounce(93491, 2)

local specWarnRam			= mod:NewSpecialWarningDodge(93492, "Tank", nil, nil, 1, 2)
local specWarnWake			= mod:NewSpecialWarningRun(93494, "Melee", nil, nil, 4, 2)
local specWarnAlgae			= mod:NewSpecialWarningGTFO(93490, nil, nil, nil, 1, 8)

local timerAlgaeCD			= mod:NewNextTimer(12, 93491, nil, nil, nil, 3)
local timerRamCD			= mod:NewNextTimer(16, 93492, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--16-17 seconds after wake seems more accurate then wild upwards of 20 second variations of starting timer after previous ram
local timerWakeCD			= mod:NewCDTimer(47, 93494, nil, nil, nil, 3)--47-60 second variations. also typcally 30-33sec after a ram AFTER first one.

function mod:AlgaeTarget()
	local targetname = self:GetBossTarget(50009)
	if not targetname then return end
	warnAlgae:Show(targetname)
end

function mod:OnCombatStart(delay)
	timerAlgaeCD:Start(10-delay)
	timerRamCD:Start(10-delay)--Not a large pool of logs to compare to.
	timerWakeCD:Start(30-delay)
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 93492 then
		specWarnRam:Show()
		specWarnRam:Play("shockwave")
	elseif args.spellId == 93494 then
		specWarnWake:Show()
		specWarnWake:Play("specialsoon")
		timerWakeCD:Start()
		timerRamCD:Start()
	elseif args.spellId == 93491 then
		timerAlgaeCD:Start()
		self:ScheduleMethod(0.2, "AlgaeTarget")
	end
end

function mod:SPELL_AURA_APPLIED(args)--Assumed spell event, might need to use spell damage, or spell periodic damage instead.
	if args.spellId == 93490 and args:IsPlayer() then
		specWarnAlgae:Show(args.spellName)
		specWarnAlgae:Play("watchfeet")
	end
end

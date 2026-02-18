Include("\\script\\maps\\newworldscript_default.lua")
IncludeLib("TIMER")

function CheckMap(nMapId)
	if GetExpPercent()<-50 then
		SetFightState(0)
		Msg2Player("Kinh nghiÖm ®ang bÞ ©m 50% kh«ng thÓ lªn b¶n ®å nµy")
		NewWorld(53, 1624, 3168)
	end
	SetProtectTime(18*10)
	AddSkillState(963, 1, 0, 18*10) 
	SetFightState(1) -- ChiÕn ®Êu
	DisabledUseTownP(0) -- Cho sö dông thæ ®Þa phï
	ForbidEnmity(1) -- Kh«ng cho cõu s¸t
	SetPKFlag(0) -- §­a vÒ tr¹ng th¸i luyÖn c«ng
	ForbidChangePK(1) -- Kh«ng cho ®æi tr¹ng th¸i PK
	SetPunish(0) -- Kh«ng mÊt tiÒn v¹n + exp khi chÕt
	--TM_SetTimer(18*60, 125, 1, 0) -- Check thêi h¹n tu luyÖn cßn l¹i trªn map
end

function OnNewWorld(szParam)
	local nMapId = SubWorldIdx2ID(SubWorld)
	CallPlayerFunction(PlayerIndex, CheckMap,nMapId)
	OnNewWorldDefault(szParam)
end


function OnLeaveWorld(szParam)
	SetProtectTime(18*10)
	AddSkillState(963, 1, 0, 18*10) 
	DisabledUseTownP(0) -- Cho sö dông thæ ®Þa phï
	ForbidEnmity(0) -- Cho cõu s¸t
	SetPKFlag(0) -- §­a vÒ tr¹ng th¸i luyÖn c«ng
	ForbidChangePK(0) -- Cho ®æi tr¹ng th¸i PK
	SetPunish(1) -- MÊt tiÒn v¹n + exp khi chÕt
	OnLeaveWorldDefault(szParam)
end
Include("\\script\\global\\mel\\feature\\areatrain\\head.lua")

print("[AREATRAINVIP] Join.lua loaded")
--SetTask(TASK_TIME_TRAIN_LIMIT, 70)


function pFeatureArea:CheckAllPlayerOnTeam()
    local OldPlayer = PlayerIndex
    if (IsCaptain() ~= 1) then
		Say("Xin lçi! CÇn ph¶i lµ §éi tr­ëng",0)
		return 0
	end
    local str = ""
    for i = 1, GetTeamSize() do 
		PlayerIndex = GetTeamMember(i)
        local datenow = tonumber(date("%m%d"))
        if (GetTask(TASK_DATE_TRAIN_LIMIT) ~= datenow) then
            SetTask(TASK_TIME_TRAIN_LIMIT, TRAIN_TIME_LIMIT)
            SetTask(TASK_DATE_TRAIN_LIMIT, datenow)
        end
        local time_limit = tonumber(GetTask(TASK_TIME_TRAIN_LIMIT))
        local namePlayer = GetName()
        if (time_limit <= 0) then
            str = str.."Thµnh viªn <color=yellow>"..namePlayer.."<color> cßn  <color=yellow>"..time_limit.." gi©y <color>\n" 
        end
    end
    PlayerIndex = OldPlayer
    if str ~= "" then
        local tbSay = {str}
        tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
        CreateTaskSay(tbSay)
        return 0
    end
    return 1
end
function pFeatureArea:checkRoomAlready()
    cleanExpiredReservations()  -- Clean up expired reservations
    local nCountMapBusy = getn(TB_MapBusy)
    local nCountMap = getn(TB_MapTrainVip)
    local nCountMapReserved = getn(TB_MapReserved)
    print("[AREATRAINVIP] checkRoomAlready: nCountMap="..nCountMap..", nCountMapBusy="..nCountMapBusy..", nCountMapReserved="..nCountMapReserved)   
    local mapid = isMapReserved(PlayerIndex)
    local tbSay = {}
    if mapid ~= 0 then
        tinsert(tbSay, "B¹n ®ang gi÷ phßng sè "..mapid..", vui lßng vµo phßng nhanh")
        tinsert(tbSay, "Vµo phßng/#pFeatureArea:Massage("..mapid..")")
        tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
        CreateTaskSay(tbSay)
        return 0
    end
    -- Calculate actual available rooms (not busy and not reserved)
    local nFreeMap = nCountMap - nCountMapBusy  - nCountMapReserved
    if nFreeMap <= 0 then
        tinsert(tbSay, "HiÖn t¹i kh«ng cßn phßng trèng nµo, hay quay l¹i sau!")
        tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
        CreateTaskSay(tbSay)
        return 0
    end

    mapid = addMapReservation(PlayerIndex)
    local str = "N¬i ®©y cung cÊp dÞch vô xóc b×nh x¨ng con, ®­îc lùa chän nh÷ng nh©n viªn ­u tó nhÊt\n"
    str = str.."HiÖn t¹i cßn <color=yellow>"..nFreeMap.."<color> phßng trèng, b¹n cã muèn vµo kh«ng?\n"
    str = str.."T«i ®ang gi÷ phßng <color=yellow>"..mapid.." <color> cho b¹n <color=yellow>15s<color>, nÕu b¹n kh«ng chän th× phßng sÏ ®­îc gi¶i phãng\n"
    tinsert(tbSay, str)
    tinsert(tbSay, "Vµo phßng/#pFeatureArea:Massage("..mapid..")")
    tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
    CreateTaskSay(tbSay)
    return 1


end
function pFeatureArea:moveAllTeamToRoom(mapid, posx, posy)
    local OldPlayer = PlayerIndex
    for i = 1, GetTeamSize() do 
        PlayerIndex = GetTeamMember(i)
        local oldPlayerSubWorld, oldPlayerPosX, oldPlayerPosY = GetWorldPos()
        addPlayerTime(PlayerIndex, oldPlayerSubWorld, oldPlayerPosX, oldPlayerPosY)
        NewWorld(mapid, posx, posy)
        SetCurCamp(1)
        SetFightState(1)
        SetRevPos(GetPlayerRev())
        SetLogoutRV(1)   
        local playerName = GetName()
        local remain = tonumber(GetTask(TASK_TIME_TRAIN_LIMIT))
        Msg2Player("Chµo mõng ®Õn khu luyÖn c«ng VIP! Thêi gian luyÖn tËp: <color=yellow>"..floor(remain / 60).." phót "..mod(remain, 60).." gi©y<color>")
    end
    PlayerIndex = OldPlayer
end
function pFeatureArea:Massage(mapid)

    local nCountMap = getn(TB_MapTrainVip)    
    for i = 1, nCountMap do
        if mapid == TB_MapTrainVip[i].MapID then
            self:moveAllTeamToRoom(mapid, TB_MapTrainVip[i].PosX, TB_MapTrainVip[i].PosY)
            Msg2Player("B¹n ®· vào phßng sè <color=yellow>"..mapid.."<color> thµnh c«ng!")
            addPlayerInMapBusy(mapid)
            removeMapReservation(PlayerIndex)
            return 1
        end
    end
    return 0
end
function pFeatureArea:gotoRoom()
    
    if self:CheckAllPlayerOnTeam() == 0 then
        return 0
    end
    if self:checkRoomAlready() == 0 then
        return 0
    end

end
IncludeLib("NPCINFO");
IncludeLib("SETTING");
IncludeLib("FILESYS");
IncludeLib("TIMER");
IncludeLib("PARTNER");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\mel\\feature\\taobaitrain.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
pFeatureArea= {}
TIMERTASK = 118
FRAME2TIME = 18
ANNOUNCE_TIME = 20
CHECK_TIMER_1 = ANNOUNCE_TIME * FRAME2TIME
TRAIN_TIME_LIMIT = 2 * 60  -- seconds (for testing, change to 600 for 10 minutes)
WARN_TIME_1 = 300  -- Warning at 5 minutes remaining
WARN_TIME_2 = 60   -- Warning at 1 minute remaining
TASK_TIME_TRAIN_LIMIT = 5954
TASK_DATE_TRAIN_LIMIT = 5955

ROOM_MASSAGE_STATE = 0
ROOM_RESERVE_TIME = 15  -- Th?i gian gi? phÚng (gi‚y)

TB_MapTrainVip ={
    {MapID = 1011, PosX = 1581, PosY = 3197, NpcId = 13, NpcLv = 95, NpcCount= 40},
    {MapID = 1012, PosX = 1581, PosY = 3197, NpcId = 13, NpcLv = 95, NpcCount= 40},
}

TB_MapBusy = {
    -- Structure: {MapID = number, plindex = number, startTime = number}
}
TB_MapReserved = {
    -- Structure: {MapID = number, plindex = number, reserveTime = number}
}
TB_PlayerTime = {
    -- Structure: {plindex = number, startTime = number, oldworldid = number, oldposx = number, oldposy = number}
}
print("[AREATRAINVIP] Head.lua loaded")
function pFeatureArea:openMassageRoom()
    local filePath = "settings/global/mel/areatrainvip/"
    for i = 1, getn(TB_MapTrainVip) do
        local fileName = "mapid_"..TB_MapTrainVip[i].MapID..".txt"
        local NpcId = TB_MapTrainVip[i].NpcId
        local NpcLv = TB_MapTrainVip[i].NpcLv
        local NpcCount = TB_MapTrainVip[i].NpcCount
        tao_bai_train_ex(NpcId, NpcLv, NpcCount, fileName, filePath)
    end
    ROOM_MASSAGE_STATE = 1
end
AddTimer(10 * FRAME2TIME, "pFeatureArea:openMassageRoom", 0)
function isMapBusy(mapid)
    for i = 1, getn(TB_MapBusy) do
        if TB_MapBusy[i].MapID == mapid then
            return 1
        end
    end
    return 0
end
function addPlayerInMapBusy(mapid)
    tinsert(TB_MapBusy, {
        plindex = PlayerIndex,
        MapID = mapid,
        startTime = GetCurServerTime()
    })
end
-- Check if map is reserved
function isMapReserved(plindex)
    for i = 1, getn(TB_MapReserved) do
        if TB_MapReserved[i].plindex == plindex then
            return TB_MapReserved[i].MapID
        end
    end
    return 0
end
function isMapReservedByMapID(mapid)
    for i = 1, getn(TB_MapReserved) do
        if TB_MapReserved[i].MapID == mapid then
            return 1
        end
    end
    return 0
end
-- Add map reservation
function addMapReservation(plindex)
    local currentTime = GetCurServerTime()
    for i =1, getn(TB_MapTrainVip) do
        local mapid = TB_MapTrainVip[i].MapID
        if isMapBusy(mapid) == 0 and isMapReservedByMapID(mapid) == 0 then
            tinsert(TB_MapReserved, {
                MapID = mapid,
                plindex = plindex,
                reserveTime = currentTime
            })
            Msg2Player("Gi˜ phﬂng sË <color=yellow>"..mapid.."<color> trong <color=yellow>"..ROOM_RESERVE_TIME.." gi©y <color>")
            return mapid
        end
    end
    
    return 0
end

-- Remove map reservation
function removeMapReservation(plindex)
    for i = 1, getn(TB_MapReserved) do
        if TB_MapReserved[i].plindex == plindex then
            local mapid = TB_MapReserved[i].MapID
            tremove(TB_MapReserved, i)
            return
        end
    end
end

-- Clean expired reservations
function cleanExpiredReservations()
    local currentTime = GetCurServerTime()
    for i = 1, getn(TB_MapReserved) do
        local elapsed = currentTime - TB_MapReserved[i].reserveTime
        if elapsed > ROOM_RESERVE_TIME then
            print("[AREATRAINVIP] Clean expired reservation for map "..TB_MapReserved[i].MapID)
            tremove(TB_MapReserved, i)
        end
    end
end
-- Add player to time tracking list
function addPlayerTime(plindex, oldworldid, oldposx, oldposy)
    -- Get current time (timestamp - seconds since epoch)
    local currentTime = GetCurServerTime()
    local dateStr = date("%Y-%m-%d %H:%M:%S")
    
    --print("[AREATRAINVIP] Current Time: "..currentTime.." ("..dateStr..")")
    
    -- Get the time limit from task (already set in CheckAllPlayerOnTeam)
    local oldPlayerIndex = PlayerIndex
    PlayerIndex = plindex
    local timeLimit = tonumber(GetTask(TASK_TIME_TRAIN_LIMIT))
    PlayerIndex = oldPlayerIndex
    
    for i = 1, getn(TB_PlayerTime) do
        if TB_PlayerTime[i].plindex == plindex then
            -- Player already exists, update time
            TB_PlayerTime[i].startTime = currentTime
            TB_PlayerTime[i].timeLimit = timeLimit  -- Store initial time limit
            TB_PlayerTime[i].oldworldid = oldworldid
            TB_PlayerTime[i].oldposx = oldposx
            TB_PlayerTime[i].oldposy = oldposy
            --print("[AREATRAINVIP] Update time for player "..plindex.." at "..dateStr.." with limit: "..timeLimit.."s")
            return
        end
    end
    
    -- New player, add to list
    tinsert(TB_PlayerTime, {
        plindex = plindex,
        startTime = currentTime,
        timeLimit = timeLimit,  -- Store initial time limit
        oldworldid = oldworldid,
        oldposx = oldposx,
        oldposy = oldposy
    })
    --print("[AREATRAINVIP] Add new player "..plindex.." start time: "..currentTime.." ("..dateStr..") with limit: "..timeLimit.."s")
end

-- Remove player from time tracking list
function removePlayerTime(plindex)
    for i = 1, getn(TB_PlayerTime) do
        if TB_PlayerTime[i].plindex == plindex then
            tremove(TB_PlayerTime, i)
            --print("[AREATRAINVIP] Remove player "..plindex.." from time tracking")
            return
        end
    end
end
function removePlayerOnMapBusy(plindex)
    for i = 1, getn(TB_MapBusy) do
        if TB_MapBusy[i].plindex == plindex then
            tremove(TB_MapBusy, i)
            return
        end
    end
end
function checkPlayerOffline(plindex)
    if SearchPlayer(plindex) <= 0 then
        return 0
    end
    return 1
end
-- Get player's remaining time (in seconds)
function getPlayerRemainTime(plindex)
    local oldPlayerIndex = PlayerIndex
    PlayerIndex = plindex
    
    for i = 1, getn(TB_PlayerTime) do
        if TB_PlayerTime[i].plindex == plindex then
            -- Get current time as timestamp (seconds since epoch)
            local currentTime = GetCurServerTime()
            
            -- Calculate elapsed time (seconds) since player entered
            local elapsed = currentTime - TB_PlayerTime[i].startTime
            
            -- Get the initial time limit (stored when player entered)
            local timeLimit = TB_PlayerTime[i].timeLimit
            
            -- Calculate remaining time: initial limit - elapsed time
            local remain = timeLimit - elapsed
            
            -- Update task with current remaining time (so GetTask returns correct value)
            SetTask(TASK_TIME_TRAIN_LIMIT, remain)
            
            --print("[AREATRAINVIP] Player "..plindex.." - Limit: "..timeLimit.."s, Elapsed: "..elapsed.."s, Remain: "..remain.."s")
            
            PlayerIndex = oldPlayerIndex
            return remain > 0 and remain or 0
        end
    end
    
    PlayerIndex = oldPlayerIndex
    return 0
end

-- Get remaining time formatted as minutes:seconds
function getPlayerRemainTimeFormatted(plindex)
    local remainSeconds = getPlayerRemainTime(plindex)
    local minutes = floor(remainSeconds / 60)
    local seconds = mod(remainSeconds, 60)
    return minutes, seconds
end
function warnPlayer(plindex, minutes, seconds)
    local oldPlayerIndex = PlayerIndex
    PlayerIndex = plindex
    
    if seconds and seconds > 0 then
        Msg2Player("ThÍi gian luy÷n tÀp cﬂn lπi: <color=yellow>"..minutes.." phÛt "..seconds.." gi©y<color>")
    else
        Msg2Player("ThÍi gian luy÷n tÀp cﬂn lπi: <color=yellow>"..minutes.." phÛt<color>")
    end
    
    PlayerIndex = oldPlayerIndex
end

-- Kick player from room
function kickPlayerFromRoom(plindex)
    local oldPlayerIndex = PlayerIndex
    PlayerIndex = plindex
    SetTask(TASK_TIME_TRAIN_LIMIT, 0)
    Msg2Player("ß∑ h’t thÍi gian luy÷n tÀp! Bπn sœ Æ≠Óc dﬁch chuy”n ra ngoµi.")
    --WriteLog("[AREATRAINVIP] Player "..plindex.." kicked - time limit reached")
    
    -- Teleport player back to original location
    for i = 1, getn(TB_PlayerTime) do
        if TB_PlayerTime[i].plindex == plindex then
            local oldworldid = TB_PlayerTime[i].oldworldid
            local oldposx = TB_PlayerTime[i].oldposx
            local oldposy = TB_PlayerTime[i].oldposy
            NewWorld(oldworldid, oldposx, oldposy)
            SetLogoutRV(0)
            break
        end
    end
    -- Remove from tracking lists
    removePlayerTime(plindex)
    removePlayerOnMapBusy(plindex)
    PlayerIndex = oldPlayerIndex
end
function checkMapIdByPlayderIndex(playerIdex)
    local oldPlayerIndex = PlayerIndex
    PlayerIndex = playerIdex
    local mapid, _, _ = GetWorldPos()
    PlayerIndex = oldPlayerIndex
    return mapid    
end
-- Check and handle time for all players
function checkAllPlayerTime()
    local oldPlayerIndex = PlayerIndex
    local currentTime = GetCurServerTime()
    local dateStr = date("%H:%M:%S")

    for i = 1, getn(TB_PlayerTime) do  -- Loop backwards for safe deletion
        local player = TB_PlayerTime[i]
        PlayerIndex = player.plindex     
        local mapid = checkMapIdByPlayderIndex(player.plindex)
        local isInTrainMap = 0
        local isOffline = 0
        for j = 1, getn(TB_MapTrainVip) do
            if TB_MapTrainVip[j].MapID == mapid then
                isInTrainMap = 1
                break
            end
        end
        -- Check if player is offline 
        if checkPlayerOffline(player.plindex) == 0 then

            isOffline = 1
            --print("[AREATRAINVIP] Player "..player.plindex.." is offline at "..dateStr)
        end
        local remain = getPlayerRemainTime(player.plindex)
        -- Convert to minutes:seconds for display
        local remainMinutes = floor(remain / 60)
        local remainSeconds = mod(remain, 60)
        if isInTrainMap == 0 or isOffline == 0 then
            -- Player left training map or is offline, remove from tracking
            removePlayerOnMapBusy(player.plindex)
            removePlayerTime(player.plindex)
            --print("[AREATRAINVIP] Player "..player.plindex.." removed from tracking (left map or offline) at "..dateStr)
        elseif remain <= 0 then
            -- Time is up, kick player
            kickPlayerFromRoom(player.plindex)
        elseif remain <= WARN_TIME_1 and remain > WARN_TIME_2 and not player.warned300 then
            -- Warning at 5 minutes remaining
            local warnMin = floor(remain / 60)
            local warnSec = mod(remain, 60)
            warnPlayer(player.plindex, warnMin, warnSec)
            TB_PlayerTime[i].warned300 = 1
        elseif remain <= WARN_TIME_2 then
            -- Warning at 1 minute remaining
            local warnMin = floor(remain / 60)
            local warnSec = mod(remain, 60)
            warnPlayer(player.plindex, warnMin, warnSec)
        end
    end
end

IncludeLib("ITEM")
IncludeLib("NPCINFO")
IncludeLib("RELAYLADDER")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("SETTING")
IncludeLib("TIMER") 
IncludeLib("BATTLE")
IncludeLib("TITLE")
Include("\\script\\task\\task_addplayerexp.lua")


pLibs = {}

-- Chuyen doi so thanh dinh dang co dau cham phan cach
-- VD: 10000 -> "10.000", 1000000 -> "1.000.000", 1234567890 -> "1.234.567.890"
function pLibs:FormatNumber(nExp)
    if not nExp or nExp == 0 then
        return "<color=white>0<color>"
    end
    
    local strNum = tostring(nExp)
    local result = ""
    local len = strlen(strNum)
    
    for i = 1, len do
        result = result .. strsub(strNum, i, i)
        local remaining = len - i
        if remaining > 0 and mod(remaining, 3) == 0 then
            result = result .. "."
        end
    end
    
    result = "<color=white>"..result.."<color>"
    return result
end
-- Them kinh nghiem cho nguoi choi, tu dong len cap va cong don exp du vao cap tiep theo
-- Tham so: myExpValue - So exp can them
function pLibs:AddPlayerExp(myExpValue)
	-- Kiem tra dieu kien
	if not myExpValue or myExpValue <= 0 then 
		return 
	end
	
	if not GetLevel() then 
		return 
	end
	
	local nTransCont = ST_GetTransLifeCount()
	local nTotalExpAdded = myExpValue
	
	-- Vong lap toi da 180 cap (tranh vo han hoac len cap qua gioi han)
	for i = 1, 180 do
		if myExpValue <= 0 then
			break
		end
		
		local nCurrentExp = GetExp()
		local nNextLevel = GetLevel() + 1
		local nExpForNextLevel = tl_getUpLevelExp(nNextLevel, nTransCont)
		local nExpNeeded = nExpForNextLevel - nCurrentExp
		
		-- Neu khong the len cap nua (da dat cap toi da hoac loi), thoat
		if nExpNeeded <= 0 or nExpForNextLevel <= 0 then
			break
		end
		
		-- Them exp vao
		if myExpValue >= nExpNeeded then
			-- Du exp de len cap, them het exp can thiet
			AddOwnExp(nExpNeeded)
			myExpValue = myExpValue - nExpNeeded
			-- Exp con lai se tu dong cong vao cap tiep theo o vong lap sau
		else
			-- Khong du exp de len cap, them het so con lai
			AddOwnExp(myExpValue)
			myExpValue = 0
			break
		end
	end
	
	-- Thong bao tong exp nhan duoc
	if nTotalExpAdded > 0 then
		Msg2Player("<color=yellow>B¹n nhËn ®­îc " .. self:FormatNumber(nTotalExpAdded) .. " Exp céng dån<color>")
	end
end
-- Dat gia tri cho task va dong bo len client
-- Tham so: nTaskID - ID cua task
--          nTaskValue - Gia tri can dat
function pLibs:SetTask(nTaskID, nTaskValue)
	if not nTaskID or not nTaskValue then
		return
	end
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID)
end


function pLibs:GetMapNameById(mapId)
    --local filePath = "settings/"
    local fileName = "maplist.ini"
    local filePath = "settings/maplist.ini"
    local file = openfile(filePath, "r")
    if not file then
        print("Error: Could not open " .. filePath)
        return "Unknown"
    end

    local targetKey =mapId.."_name"
    local line = read(file, "*l")
    --for i =1, 6000 do
    while line do
        if strfind(line, targetKey) then
            closefile(file)
            --print("Map name found: " .. line)
            break
        end
        line = read(file, "*l")
    end

    local tbtemp = {}
    tbtemp = split(line, "=")
    --print("Map name "..tbtemp[2])
    return tbtemp[2] or "Unknown Map"

end
Include("\\script\\lib\\string.lua")
Include("\\script\\vng_lib\\files_lib.lua")


TB_ListToaDo = {
    {nNpcId = 12, nNpcLv = 15, fileName = "toado1x.txt",nCount=20},
    {nNpcId = 12, nNpcLv = 25, fileName = "toado2x.txt",nCount=20},
    {nNpcId = 17, nNpcLv = 35, fileName = "toado3x.txt",nCount=20},
    {nNpcId = 24, nNpcLv = 45, fileName = "toado4x.txt",nCount=20},
    {nNpcId = 157, nNpcLv = 55, fileName = "toado5x.txt",nCount=20},
    {nNpcId = 24, nNpcLv = 65, fileName = "toado6x.txt",nCount=20},
    {nNpcId = 588, nNpcLv = 75, fileName = "toado7x1.txt",nCount=20},
    --{nNpcId = 25, nNpcLv = 75, fileName = "toado7x2.txt",nCount=20},
    {nNpcId = 591, nNpcLv = 85, fileName = "toado8x1.txt",nCount=20},
    --{nNpcId = 149, nNpcLv = 85, fileName = "toado8x2.txt",nCount=20},
    --{nNpcId = 149, nNpcLv = 85, fileName = "toado8x3.txt",nCount=20},
    {nNpcId = 594, nNpcLv = 95, fileName = "npc_train/9x_truongbacsonbac.txt",nCount=32},
    {nNpcId = 598, nNpcLv = 95, fileName = "npc_train/9x_truongbachsonnam.txt",nCount=32},
    {nNpcId = 155, nNpcLv = 95, fileName = "npc_train/9x_khoalangdong.txt",nCount=32},    
    {nNpcId = 559, nNpcLv = 95, fileName = "npc_train/9x_samac1.txt",nCount=32},    
    {nNpcId = 559, nNpcLv = 95, fileName = "npc_train/9x_samac2.txt",nCount=32},    
    {nNpcId = 534, nNpcLv = 95, fileName = "npc_train/9x_samac3.txt",nCount=32},    
    {nNpcId = 703, nNpcLv = 95, fileName = "npc_train/9x_maccaoquat.txt",nCount=32},
    {nNpcId = 142, nNpcLv = 95, fileName = "npc_train/9x_duocvuong4.txt",nCount=32},
    {nNpcId = 144, nNpcLv = 95, fileName = "npc_train/9x_tuyetbaodong.txt",nCount=32},
    {nNpcId = 146, nNpcLv = 95, fileName = "npc_train/9x_tiencucdong.txt",nCount=32},    
    {nNpcId = 559, nNpcLv = 95, fileName = "npc_train/9x_samac1_datau.txt",nCount=16},
    {nNpcId = 559, nNpcLv = 95, fileName = "npc_train/9x_samac2_datau.txt",nCount=16},
    {nNpcId = 534, nNpcLv = 95, fileName = "npc_train/9x_samac3_datau.txt",nCount=16},
    {nNpcId = 142, nNpcLv = 95, fileName = "npc_train/9x_duocvuong4_datau.txt",nCount=16},
    {nNpcId = 155, nNpcLv = 95, fileName = "npc_train/9x_khoalangdong_datau.txt",nCount=16},
    {nNpcId = 146, nNpcLv = 95, fileName = "npc_train/9x_tiencucdong_datau.txt",nCount=16},
    {nNpcId = 13, nNpcLv = 95, fileName = "npc_train/9x_canviendong_datau.txt",nCount=16},
}

function isFile(filePath,fileName)
    local fullPath = filePath .. fileName
    local fileHandle = openfile(fullPath, "r")
    if fileHandle then
        closefile(fileHandle)
        return 1
    else
        return 0
    end
    
end
function createFile(filePath,fileName)
   
    local fullPath = filePath .. fileName
    local fileHandle = openfile(fullPath, "a")
    local tbHeader = {"nIdMap", "pX", "pY", "pX1", "pY1", "sNameMap"}
    tbVngLib_File:Table2File(filePath, fileName, "a", tbHeader)    
    closefile(fileHandle)

end
function ghi_bai_quai_ex(filePath,fileName)
    -- Get the current world position of the player.
    local pW, pX, pY = GetWorldPos()
    -- Calculate additional coordinate values.
    local pX1 = floor((tonumber(pX)*32)/256)
    local pY1 = floor((tonumber(pY)*32)/512)
    local szMapName = GetMapNameById(pW)
    if isFile(filePath,fileName) == 0 then
        Msg2Player("<color=red>Khong tim thay file "..fileName.." de luu toa do")
        createFile(filePath,fileName)
    end
    -- Store the coordinates and map name in a table.
    local tbData = {pW, pX, pY, pX1, pY1, szMapName}
    
    -- Append the data table to the file.
    tbVngLib_File:Table2File(filePath, fileName, "a", tbData)    
    -- Notify the player of success.
    Msg2Player("<color=red>Ghi toa do thanh cong "..szMapName .." ("..pX1..","..pY1..")")
end

function tao_bai_train_ex(nNpcId, nNpcLv, nCount, fileName,filePath)
    if fileName == nil then
        print("not file name to create training area "..nNpcLv)
        return
    end
    if filePath == nil then
        filePath = "settings/global/mel/"
    end

    -- Define a pattern to read 5 numeric values and one string from each line.
    local tbPattern = {"*n", "*n", "*n", "*n", "*n", "*l"}
    -- Read the coordinate data from the file using the specified pattern.
    local tbData = tbVngLib_File:TableFromFile(filePath, fileName, tbPattern)
  
    -- Check if any data was loaded.
    if not tbData or getn(tbData) == 0 then
        print("No coordinate data found to create training area "..fileName)
        return
    end
	local nSeriesMonster
	local idmap
	local pX
	local pY
    local nameMonster = "Vozer "..nNpcLv
    -- Iterate through each set of coordinates.
    for i = 1, getn(tbData) do
        local row = tbData[i]
        -- Assign coordinate values from the current row.
        idmap = row[1]
        pX = row[2]
        pY = row[3]

        if idmap and pX and pY then
            -- Spawn 30 NPCs for each coordinate set.
            for j = 1, nCount do
                local isBoss = 0
                -- Make the  NPC a boss.
                if (mod(j, 8) == 0) then 
                    isBoss = 2
                end
				nSeriesMonster = random(0, 4)
                -- Add the NPC to the game world with a random offset from the base coordinates.
                AddNpcEx(nNpcId, nNpcLv, nSeriesMonster, SubWorldID2Idx(idmap), (pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, nameMonster, isBoss)
            end
        end
    end
end

function tao_bai_train()
    for i =1, getn(TB_ListToaDo) do
        local tbInfo = TB_ListToaDo[i]
        tao_bai_train_ex(tbInfo.nNpcId, tbInfo.nNpcLv, tbInfo.nCount, tbInfo.fileName)
    end
end
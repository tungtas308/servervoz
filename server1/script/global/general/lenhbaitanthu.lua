IncludeLib("NPCINFO");
IncludeLib("SETTING");
Include("\\script\\petsys\\dataload.lua"); 
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\general\\hotrotanthu\\vongsangtanthu.lua")
Include("\\script\\global\\general\\hotrotanthu\\giaiketnhanvat.lua")
Include("\\script\\global\\general\\hotrotanthu\\nhanskillhotro.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
Include("\\script\\global\\general\\thunghiem\\doiten.lua")
Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")
Include("\\script\\global\\general\\thunghiem\\trangsuc.lua")
Include("\\script\\global\\general\\thunghiem\\nguhanhan.lua")
Include("\\script\\global\\general\\thunghiem\\phiphong.lua")
Include("\\script\\global\\general\\thunghiem\\point.lua")
Include("\\script\\global\\general\\thunghiem\\taytuynhanh.lua")
Include("\\script\\global\\general\\thunghiem\\thucuoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxop.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\general\\thunghiem\\trangbitim.lua")
Include("\\script\\global\\general\\thunghiem\\vatphamhotro.lua")
Include("\\script\\global\\general\\thunghiem\\dieukientaobanghoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\testserver.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\mel\\doitienvan.lua")
Include("\\script\\global\\mel\\thanbidochi.lua")
Include("\\script\\global\\general\\morongruong.lua")
Include("\\script\\global\\mel\\autoexec_mel.lua")

-----------------------------------------------------------------------tbFaction------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
		tbRank={72},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
		tbRank={69},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
		tbRank={76},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711},
		tbRank={80},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712},
		tbRank={64},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
		tbRank={67},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
		tbRank={78},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
		tbRank={81},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
		tbRank={73},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717},
		tbRank={75},
	},
	[11] =
	{
		szShowName = "Hoa s¬n",
		szFaction = "huashan",
		nShortFaction = "hs",
		tbSkill = {4062, 4063},
		tbRank={76},
	},
	[12] =
	{
		szShowName = "Tiªu dao",
		szFaction = "xiaoyao",
		nShortFaction = "xy",
		tbSkill = {5106, 5107},
		tbRank={77},
	},
	[13] =
	{
		szShowName = "Vò hån",
		szFaction = "wuhun",
		nShortFaction = "wh",
		tbSkill = {5106, 5107},
		tbRank={78},
	},
}
local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6, 11},
[4] = {7, 8, 13},
[5] = {9, 10, 12},
}
------------------------------------------------------------------------------------------------

THONGTINSERVER_DIALOG = "Sè anh em n»m th¼ng: <color=green>%s<color>\n"
TITLE_DIALOG = "Tªn nh©n vËt: <color=green>%s<color> "
TITLE_DIALOG  = TITLE_DIALOG.."TTK: <color=green>%s<color>/<color=red>100<color>, VLMT: <color=green>%s<color>/<color=red>100<color>\n"
DOCHI_DIALOG = "§å chÝ: <color=green>%s<color>\n"
DIEMTK_DIALOG = "§iÓm tÝch lòy Tèng Kim: <color=green>%s<color>\n"
BOSS_SATTHU_DIALOG = "Boss s¸t thñ: <color=green>%s<color>/<color=red>%s<color>\n"
THONGTINNHANVAT_DIALOG = "May m¾n: <color=green>%s<color>"
tbFactionMap_LBTG = {
	["Hoa Son"] = "huashan", ["Huashan"] = "huashan", ["huashan"] = "huashan",
	["Tieu Dao"] = "xiaoyao", ["Xiaoyao"] = "xiaoyao", ["xiaoyao"] = "xiaoyao",
	["Vo Hon"] = "wuhun", ["Wuhun"] = "wuhun", ["wuhun"] = "wuhun",
	[10] = "huashan", [12] = "wuhun", [11] = "xiaoyao",
}
-- Map ten phai co dau (neu GetFaction tra ve co dau)
tbFactionMap_LBTG["Hoa Son"] = "huashan"
tbFactionMap_LBTG["Tieu Dao"] = "xiaoyao"
tbFactionMap_LBTG["Vo Hon"] = "wuhun"
function GetFactionKey_LBTG()
	local f = GetFaction()
	local n = GetLastFactionNumber()
	-- Log de them mapping: xem GetFaction() tra ve gi, them vao tbFactionMap_LBTG neu can
	if WriteLog then
		WriteLog(format("[LBTG_GetFaction] Name=%s GetFaction()=%s (type=%s) GetLastFactionNumber()=%s",
			tostring(GetName()), tostring(f), type(f), tostring(n)))
	end
	if f ~= nil and f ~= "" then
		local key = tbFactionMap_LBTG[f] or f
		if tbAllSkill2_LBTG[key] ~= nil then return key end
	end
	if n and tbFactionMap_LBTG[n] then return tbFactionMap_LBTG[n] end
	return nil
end
tbAllSkill2_LBTG = {
	shaolin = {[0]={10,14},[1]={4,6,8},[2]={15},[3]={16},[4]={20},[5]={11,19,271},[6]={21,273}},
	tianwang = {[0]={29,30,34},[1]={23,24,26},[2]={33},[3]={31,35,37},[4]={40},[5]={42},[6]={32,36,41,324}},
	tangmen = {[0]={45},[1]={43,347},[2]={303},[3]={47,50,54,343},[4]={345},[5]={349},[6]={48,58,249,341}},
	wudu = {[0]={63,65},[1]={60,62,67},[2]={66,70},[3]={64,68,69,384},[4]={73,356},[5]={72},[6]={71,74,75}},
	emei = {[0]={80,85},[1]={77,79},[2]={93},[3]={82,89,385},[4]={86},[5]={92},[6]={88,91,252,282}},
	cuiyan = {[0]={99,102},[1]={95,97},[2]={269},[3]={105,113},[4]={100},[5]={109},[6]={108,111,114}},
	gaibang = {[0]={119,122},[1]={115,116},[2]={129},[3]={124,274},[4]={277},[5]={125,128},[6]={130,360}},
	tianren = {[0]={135,145},[1]={131,132,136},[2]={137},[3]={138,140,141},[4]={364},[5]={143},[6]={142,148,150}},
	wudang = {[0]={153,155},[1]={151,152},[2]={159},[3]={158,164},[4]={160},[5]={157},[6]={165,166,267}},
	kunlun = {[0]={169,179},[1]={167,168,171,392},[2]={174},[3]={172,173,178,393},[4]={175,181},[5]={90,176},[6]={182,275,630}},
	huashan = {[0]={1347,1372},[1]={1349,1374},[2]={1350,1375},[3]={1351,1376},[4]={1354,1378},[5]={1355,1379},[6]={1358,1360,1380}},
	xiaoyao = {[0]={1914,1915,1916,1917,1936,1937},[1]={1918},[2]={1920},[3]={1921,1922,1923},[4]={1924,1925,1926},[5]={1927,1928},[6]={1929}},
	wuhun = {[0]={1733,1734,1964,1975},[1]={1976},[2]={1977},[3]={1963,1979},[4]={1980},[5]={1971,1972},[6]={1968,1969,1973}},
}
tbAllSkill_LBTG = {
	shaolin = {[1]={10,14},[2]={4,6,8},[3]={15},[4]={16},[5]={20},[6]={11,19,271},[7]={21,273},[9]={318,319,321}},
	tianwang = {[1]={29,30,34},[2]={23,24,26},[3]={33},[4]={31,35,37},[5]={40},[6]={42},[7]={32,36,41,324},[9]={322,323,325}},
	tangmen = {[1]={45},[2]={43,347},[3]={303},[4]={47,50,54,343},[5]={345},[6]={349},[7]={48,58,249,341},[9]={302,339,342,351}},
	wudu = {[1]={63,65},[2]={60,62,67},[3]={66,70},[4]={64,68,69,384},[5]={73,356},[6]={72},[7]={71,74,75},[9]={353,355,390}},
	emei = {[1]={80,85},[2]={77,79},[3]={93},[4]={82,89,385},[5]={86},[6]={92},[7]={88,91,252,282},[9]={328,332,380}},
	cuiyan = {[1]={99,102},[2]={95,97},[3]={269},[4]={105,113},[5]={100},[6]={109},[7]={108,111,114},[9]={336,337}},
	gaibang = {[1]={119,122},[2]={115,116},[3]={129},[4]={124,274},[5]={277},[6]={125,128},[7]={130,360},[9]={357,359}},
	tianren = {[1]={135,145},[2]={131,132,136},[3]={137},[4]={138,140,141},[5]={364},[6]={143},[7]={142,148,150},[9]={361,362,391}},
	wudang = {[1]={153,155},[2]={151,152},[3]={159},[4]={158,164},[5]={160},[6]={157},[7]={165,166,267},[9]={365,368}},
	kunlun = {[1]={169,179},[2]={167,168,171,392},[3]={174},[4]={172,173,178,393},[5]={175,181},[6]={90,176},[7]={182,275,630},[9]={372,375,394}},
	huashan = {[1]={1347,1372},[2]={1349,1374},[3]={1350,1375},[4]={1351,1376},[5]={1354,1378},[6]={1355,1379},[7]={1358,1360,1380},[9]={1364,1382}},
	xiaoyao = {[1]={1914,1915,1916,1917,1936,1937},[2]={1918},[3]={1920},[4]={1921,1922,1923},[5]={1924,1925,1926},[6]={1927,1928},[7]={1929},[9]={1924,1925,1926}},
	wuhun = {[1]={1733,1734,1964,1975},[2]={1976},[3]={1977},[4]={1963,1979},[5]={1980},[6]={1971,1972},[7]={1968,1969,1973},[9]={1967}},
}

function main(nItemIndex)
	--dofile("script/global/general/lenhbaitanthu.lua")
	local strFaction = GetFaction()
	local nW,nX,nY = GetWorldPos();
	local year = tonumber(date( "%y"))
	local mm = tonumber(date( "%m"))
	local day = tonumber(date( "%d"))
	local hour = tonumber(GetLocalDate("%H"))
	local mmin = tonumber(GetLocalDate("%M"))
	local nDate = tonumber(GetLocalDate("%y%m%d"));	
	local nDochi = nt_getTask(1027)
	local myDateBossST = nt_getTask(1192);
	local nTTK = nt_getTask(81);
	local nVLMT = nt_getTask(80);
	if myDateBossST ~= nDate then
		nt_setTask(1193, 0);
		nt_setTask(1192, nDate);
	end
	local nBossST = nt_getTask(1193)

	local nDiemTK = nt_getTask(747)
	local szThongTin = format(THONGTINSERVER_DIALOG, GetPlayerCount());
	szThongTin = szThongTin..format(TITLE_DIALOG, GetName(), nTTK, GioiHanTTK, nVLMT, GioiHanVLMT);
	szThongTin = szThongTin..format(DOCHI_DIALOG, nDochi);
	szThongTin = szThongTin..format(BOSS_SATTHU_DIALOG, nBossST,SoLuongBossSatThuTrongNgay);
	szThongTin = szThongTin..format(DIEMTK_DIALOG, nDiemTK);
	szThongTin = szThongTin..format(THONGTINNHANVAT_DIALOG, GetLucky(0));
	local tbSay = {szThongTin};
	if HoTroTestGame == 1 then
	--tinsert(tbSay, "Test Server/testserver");
	--tinsert(tbSay, "Xãa toµn bé item trong hµnh trang/xoatoanboitem");
	--tinsert(tbSay, "Hæ trî lµm nhiÖm vô hoµng kim nhanh/helpgoldquest");
	end
	
	
	if VongSangHoTroTanThu ==1 and GetSkillState(314) < 0 and GetLevel() < GioiHanCapNhanHoTroVongSang then
	--tinsert(tbSay, "Vßng s¸ng hç trî t©n thñ/VongSangTanThu");
	end
	if NhanHoTroKyNang1xDen6x ==1 and GetTask(5744) == 0 then
	--tinsert(tbSay, "NhËn hæ trî skill 1x-6x/HoTroSkill2");
	end
	if ChinhServerPkNhanFullDoVaCap == 1 then
	--tinsert(tbSay, "Xãa toµn bé item trong hµnh trang/xoatoanboitem");
	--tinsert(tbSay, "NhËn hæ trî/nhanhotropk");
	end
	--tinsert(tbSay, "Thay ®æi danh hiÖu/change_title");
	--tinsert(tbSay, "Më réng r­¬ng/MoRongRuong");
	--tinsert(tbSay, "NhËn Tr¹ng Th¸i Phi ChiÕn §Êu/phichiendau");
	--tinsert(tbSay, "Gi¶i kÑt nh©n vËt/KetAcc");
	--tinsert(tbSay,"Söa lçi ThÇn Hµnh Phï/fixthanhanhphu")
	--tinsert(tbSay, "Fix/ChangeKNBToCoin_FixBug");			
	--tinsert(tbSay,"Hñy vËt phÈm/DisposeItem")
	--tinsert(tbSay,"T¹o b·i qu¸i/meltaobai")
	--tinsert(tbSay,"Xãa b·i qu¸i/melxoabai")
	--tinsert(tbSay,"T×m ID NPC/LietKeNPCXungQuanh")
	--tinsert(tbSay,"Ghi b·i qu¸i/ghi_bai_quai")
	--tinsert(tbSay,"Lªn b·i Vip/dibaivip")
	--tinsert(tbSay,"NhËn kÜ n¨ng 120/LBTG_OnGrantSkill120")
	--tinsert(tbSay,"NhËn kÜ n¨ng 150/LBTG_OnGrantSkill150")
	
	--tinsert(tbSay,"NhËn kÜ n¨ng 150/LBTG_OnGrantSkill150")
	
    --tinsert(tbSay,"On off B¹n ®ång hµnh/LBTG_OnCompanionSummonUnsummon")
    --tinsert(tbSay,"Chän B¹n ®ång hµnh/LBTG_OnGiftPartnerChooseTypeMenu")
    --tinsert(tbSay,"Chän B¹n ®ång hµnh Partner/LBTG_OnPartnerSelectMenu")
    --tinsert(tbSay,"Reset ®iÓm tiÒm n¨ng/LBTG_OnResetTienNang")
    --tinsert(tbSay,"Reset ®iÓm kÜ n¨ng/LBTG_OnResetKiNang")
	--tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
			
	--CreateTaskSay(tbSay)
	local szTitle = "Chän chøc n¨ng"
	local tbOption = {
		{"Shop TiÒn V¹n", shoptienvan},
		{"§æi tiÒn tÖ", doitien_main},
		{"NhËn hæ trî skill 1x-6x", HoTroSkill2},
		{"T¹o b·i qu¸i", meltaobai},
		{"Xãa b·i qu¸i", melxoabai},
		{"Lªn b·i Vip", dibaivip},
		{"NhËn kÜ n¨ng 120", LBTG_OnGrantSkill120},
		{"NhËn kÜ n¨ng 150", LBTG_OnGrantSkill150},
		{"Chon loai ban dong hanh de tang", LBTG_OnGiftPartnerChooseTypeMenu},
		{"Tang 1 ban dong hanh thu", LBTG_OnGiftPartnerTest},
		{"Chon ban dong hanh", LBTG_OnPartnerSelectMenu},
		{"Onofff ban dong hanh", LBTG_OnPartnerSummonUnsummon},
		{"Reset diem tiem nang", LBTG_OnResetTienNang},
		{"Reset diem ki nang", LBTG_OnResetKiNang},
		{"Hñy", no}
	};
	CreateNewSayEx(szTitle, tbOption)
	return 1;
end
---------------------------------------------

function LBTG_OnGrantSkill120()
	local szFaction = GetFactionKey_LBTG()
	if szFaction == nil then Talk(1, "", "H·y vµo ph¸i tr­íc ") return end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", szFaction, 12)
	Talk(1, "", "§· nhËn kÜ n¨ng  120.")
end
function LBTG_OnGrantSkill150()
	local szFaction = GetFactionKey_LBTG()
	if szFaction == nil then Talk(1, "", "H·y vµo ph¸i tr­íc ") return end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", szFaction, 15)
	Talk(1, "", "§· nhËn kÜ n¨ng 150.")
end
function LBTG_OnGiftPetMenu()
	if PetSys == nil or PetSys.tbFeature == nil then
		Talk(1, "", "He thong pet chua load. Kiem tra settings\\petsys\\feature.txt.")
		return
	end
	if PET_IsCreate() == 1 then
		Talk(1, "", "Ban da co ban dong hanh roi. Khong the tao them (xoa pet truoc neu muon doi).")
		return
	end
	local tbOpt = {}
	local nLevel
	for nLevel = 1, 10 do
		if PetSys.tbFeature[nLevel] then
			for i = 1, getn(PetSys.tbFeature[nLevel]) do
				local tb = PetSys.tbFeature[nLevel][i]
				local szName = tb[1]
				local nNpcId = tb[2]
				tinsert(tbOpt, {szName, LBTG_OnGiftPetSelect, {szName, nNpcId}})
			end
		end
	end
	tinsert(tbOpt, {"Huy", no})
	CreateNewSayEx("Chon pet de nhan (ban dong hanh cap 1):", tbOpt)
end
function LBTG_OnGiftPetSelect(szName, nNpcId)
	if PET_IsCreate() == 1 then
		Talk(1, "", "Da co pet roi.")
		return
	end
	local nRet = 1
	if PetSys and PetSys.tbPetSkill and getn(PetSys.tbPetSkill) >= 1 then
		nRet = random(1, getn(PetSys.tbPetSkill))
		SetTask(3061, nRet)
	end
	PET_Create(nNpcId, szName)
	PetSys:Summon()
	Talk(1, "", "Da nhan pet: " .. szName .. ".")
end
-- Trieu hoi hoac thu hoi ban dong hanh (pet).
function LBTG_OnCompanionSummonUnsummon()
	if PET_IsCreate() ~= 1 then
		Talk(1, "", "Chua co ban dong hanh. Dung option \"Tang pet\" truoc.")
		return
	end
	if PET_IsSummon() == 1 then
		PET_UnSummon()
		Talk(1, "", "Da thu hoi ban dong hanh.")
	else
		PetSys:Summon()
		if PET_IsSummon() == 1 then
			Talk(1, "", "Da trieu hoi ban dong hanh.")
		end
	end
end

-- Danh sach 20 loai ban dong hanh: 5 he (Kim,Moc,Thuy,Hoa,Tho) x 4 tinh cach (Dong Manh,Ve Chu,Luu Mang,Noa NhÆ°á»£c).
-- Moi phan tu: { nSettingIdx, nSeries, nCharactor, ten hien thi }
LBTG_TB_PARTNER_TYPES = {
	{ 5, 0, 1, "Há»? Kim - Dong Manh" },   { 5, 0, 2, "He Kim - Ve Chu" },   { 5, 0, 3, "He Kim - Luu Mang" },   { 5, 0, 4, "He Kim - Noa NhÆ°á»£c" },
	{ 4, 1, 1, "He Má»?c - Dong Manh" },   { 4, 1, 2, "He Moc - Ve Chu" },   { 4, 1, 3, "He Moc - Luu Mang" },   { 4, 1, 4, "He Moc - Noa NhÆ°á»£c" },
	{ 2, 2, 1, "He Thuy - Dong Manh" },  { 2, 2, 2, "He Thuy - Ve Chu" },  { 2, 2, 3, "He Thuy - Luu Mang" },  { 2, 2, 4, "He Thuy - Noa NhÆ°á»£c" },
	{ 3, 3, 1, "He Hoa - Dong Manh" },   { 3, 3, 2, "He Hoa - Ve Chu" },   { 3, 3, 3, "He Hoa - Luu Mang" },   { 3, 3, 4, "He Hoa - Noa NhÆ°á»£c" },
	{ 1, 4, 1, "He Tho - Dong Manh" },   { 1, 4, 2, "He Tho - Ve Chu" },   { 1, 4, 3, "He Tho - Luu Mang" },   { 1, 4, 4, "He Tho - Noa NhÆ°á»£c" },
}

-- Menu chon loai ban dong hanh de tang (GM): 20 loai, tang xong tu dong chon va trieu hoi.
function LBTG_OnGiftPartnerChooseTypeMenu()
	local nCount = PARTNER_Count()
	if nCount == nil then nCount = 0 end
	if nCount >= 5 then
		Talk(1, "", "Da du 5 ban dong hanh. Khong the tang them.")
		return
	end
	local tbOpt = {}
	local k
	for k = 1, getn(LBTG_TB_PARTNER_TYPES) do
		local tb = LBTG_TB_PARTNER_TYPES[k]
		tinsert(tbOpt, { tb[4], LBTG_OnGiftPartnerType, {k} })
	end
	tinsert(tbOpt, {"Huy", main})
	CreateNewSayEx("Chon loai ban dong hanh de tang (GM) - co 20 loai:", tbOpt)
end

function LBTG_OnGiftPartnerType(nChoice)
	if type(nChoice) == "table" then nChoice = nChoice[1] end
	if nChoice == nil or nChoice < 1 or nChoice > getn(LBTG_TB_PARTNER_TYPES) then return end
	local nCount = PARTNER_Count()
	if nCount == nil then nCount = 0 end
	if nCount >= 5 then
		Talk(1, "", "Da du 5 ban dong hanh.")
		return
	end
	local tb = LBTG_TB_PARTNER_TYPES[nChoice]
	-- PARTNER_AddFightPartner(nSettingIdx, nSeries, nCharactor, 6 chi so)
	local idx = PARTNER_AddFightPartner(tb[1], tb[2], tb[3], 5, 5, 5, 5, 5, 5)
	if idx == nil or idx == -1 then
		Talk(1, "", "Tang ban dong hanh that bai (he thong Partner co the chua bat).")
		return
	end
	PARTNER_SetCurPartner(idx)
	PARTNER_CallOutCurPartner(1)
	local szName = PARTNER_GetName(idx) or tb[4]
	Talk(1, "", "Da tang va trieu hoi: " .. szName .. " (" .. tb[4] .. ").")
end

-- Tang 1 ban dong hanh thu (GM): tang nhanh 1 partner he Tho - Dong Manh (khong qua menu chon).
function LBTG_OnGiftPartnerTest()
	local nCount = PARTNER_Count()
	if nCount == nil then nCount = 0 end
	if nCount >= 5 then
		Talk(1, "", "Da du 5 ban dong hanh. Khong the tang them.")
		return
	end
	local idx = PARTNER_AddFightPartner(1, 4, 1, 5, 5, 5, 5, 5, 5)
	if idx == nil or idx == -1 then
		Talk(1, "", "Tang ban dong hanh that bai (he thong Partner co the chua bat).")
		return
	end
	PARTNER_SetCurPartner(idx)
	PARTNER_CallOutCurPartner(1)
	local szName = PARTNER_GetName(idx) or "Partner"
	Talk(1, "", "Da tang 1 ban dong hanh thu: " .. szName .. ". Co the dung \"Chon ban dong hanh\" de doi nguoi.")
end

-- Chon ban dong hanh (Partner): list partner tu PARTNER_Count(), chon 1 lam hien tai va trieu hoi.
function LBTG_OnPartnerSelectMenu()
	local nCount = PARTNER_Count()
	if nCount == nil or nCount < 1 then
		Talk(1, "", "Ban chua co ban dong hanh (Partner). Nhan qua nhiem vu/bang hoi hoac dung option \"Tang 1 ban dong hanh thu (GM)\" de thu.")
		return
	end
	local tbOpt = {}
	local i
	for i = 1, nCount do
		local szName = PARTNER_GetName(i)
		if szName and szName ~= "" then
			tinsert(tbOpt, {szName, LBTG_OnPartnerSelect, {i}})
		end
	end
	if getn(tbOpt) == 0 then
		Talk(1, "", "Khong lay duoc danh sach ban dong hanh.")
		return
	end
	tinsert(tbOpt, {"Huy", main})
	CreateNewSayEx("Chon ban dong hanh (Partner) lam hien tai va trieu hoi:", tbOpt)
end
-- CreateNewSayEx goi callback bang call(pFun, tbParam) nen tham so la (i) chua khong phai ({i})
function LBTG_OnPartnerSelect(nIdx)
	if type(nIdx) == "table" then nIdx = nIdx[1] end
	if nIdx == nil or nIdx < 1 then return end
	PARTNER_SetCurPartner(nIdx)
	PARTNER_CallOutCurPartner(1)
	local szName = PARTNER_GetName(nIdx) or "Partner"
	Talk(1, "", "Da chon va trieu hoi ban dong hanh: " .. szName .. ".")
end

-- Trieu hoi hoac thu hoi ban dong hanh (Partner).
function LBTG_OnPartnerSummonUnsummon()
	local nCur, nState = PARTNER_GetCurPartner()
	if nCur == nil or nCur < 1 then
		Talk(1, "", "Chua chon ban dong hanh (Partner). Dung \"Chon ban dong hanh (Partner)\" truoc.")
		return
	end
	if nState == 1 then
		PARTNER_CallOutCurPartner(0)
		Talk(1, "", "Da thu hoi ban dong hanh (Partner).")
	else
		PARTNER_CallOutCurPartner(1)
		Talk(1, "", "Da trieu hoi ban dong hanh (Partner).")
	end
end

-- Reset diem tiem nang giong di tao tuy dao: hoan Suc manh, Than phap, Ngoai cong, Noi cong ve base (theo phai) + Task(88)
function LBTG_OnResetTienNang()
	local base_str = {35, 20, 25, 30, 20}
	local base_dex = {25, 35, 25, 20, 15}
	local base_vit = {25, 20, 25, 30, 25}
	local base_eng = {15, 25, 25, 20, 40}
	local player_series = GetSeries() + 1
	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
	Talk(1, "", "Da reset diem tiem nang (giong tao tuy dao: Suc manh, Than phap, Ngoai cong, Noi cong ve base).")
end

-- Reset diem ki nang: tay trang + hoan toan bo skill diem (goi ClearMagicPoint)
function LBTG_OnResetKiNang()
	Include("\\script\\task\\newtask\\master\\clearskillpoint.lua")
	if ClearMagicPoint then
		ClearMagicPoint()
		Talk(1, "", "Da reset diem ki nang (tay trang, hoan skill diem).")
	else
		Talk(1, "", "Loi: khong goi duoc ClearMagicPoint.")
	end
end
-----------------------------------------------
function dibaivip()
	local szTitle = "Ng­¬i muèn ®Õn b·i nµo?"
	local tbOpt = {}
		tinsert(tbOpt, {"B·i Vip 1", dibaivip1})
		tinsert(tbOpt, {"B·i Vip 2", dibaivip2})
		tinsert(tbOpt, {"§Ó ta suy nghÜ l¹i", no})		
		CreateNewSayEx(szTitle, tbOpt)
end

function dibaivip1()
	NewWorld(1010,1611,3178)
	SetFightState(1)
end

function dibaivip2()
	NewWorld(1010,1739,3178)
	SetFightState(1)
end

-----------------------------------------------

-----------------------------------------------
function phichiendau()
SetFightState(0); 
end

-----------------------------------------------


function LietKeNPCXungQuanh()
    local tbNpcList = GetAroundNpcList(60)
    
    -- KiÓm tra danh s¸ch NPC
    if not tbNpcList or type(tbNpcList) ~= "table" or getn(tbNpcList) == 0 then
        print("Kh«ng t×m thÊy NPC nµo trong ph¹m vi")
        return 0
    end

    local total = getn(tbNpcList)
    print("T×m thÊy " .. total .. " NPC trong ph¹m vi:")

    -- In ID cña NPC
    for i = 1, total do
        local nNpcIdx = tbNpcList[i]
        local npcId = GetNpcSettingIdx(nNpcIdx)
        if npcId then
            print("NPC " .. i .. ": ID=" .. tostring(npcId))
        else
            print("NPC " .. i .. ": ID kh«ng hîp lÖ (nil)")
        end
    end

    return total
end

----------------------------------------------------------------------------------------------------
--						Shop TiÒn V¹n						--
----------------------------------------------------------------------------------------------------
function shoptienvan()
Sale(185); 
end

----------------------------------------------------------------------------------------------------
--						Hæ trî server PK						--
----------------------------------------------------------------------------------------------------
function nhanhotropk()
		local szTitle = "Ng­¬i muèn nhËn g× nµo?"
		local tbOpt = {}
		if check_faction() ~= 1 then
		else
		tinsert(tbOpt, {"Vµo ph¸i vµ häc full skill", choose_faction})
		end
		if GetTask(5734) == 0 then
		tinsert(tbOpt, {"NhËn trang bÞ hoµng kim Max Op", TRANGBIHOANGKIMMAXKHOA})
		end
		tinsert(tbOpt, {"Thó C­ëi", ThuCuoi2})
		tinsert(tbOpt, {"Trang BÞ TÝm", TrangBiTim2})
		tinsert(tbOpt, {"Trang BÞ Xanh", TrangBiXanh})
		tinsert(tbOpt, {"NhËn c¸c lo¹i ®iÓm", CacLoaiDiem2})
		tinsert(tbOpt, {"§iÒn KiÖn T¹o Bang Héi", DieuKienTaoBangHoi})
		tinsert(tbOpt, {"§æi mµu", trangthai22})
		tinsert(tbOpt, {"§Ó ta suy nghÜ l¹i", no})		
		CreateNewSayEx(szTitle, tbOpt)
end

---------Trang Thai--------------
function trangthai22()
local szTitle = "Xin chµo <color=red>"..GetName().."<color>"
local tbOpt =
	{
		{"ChÝnh Ph¸i",chinhphai},
		{"Trung LËp",trunglap},
		{"Tµ Ph¸i",taphai},
		{"S¸t Thñ",satthu},
		{"Trë L¹i",main},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function chinhphai()
SetCurCamp(1)
SetCamp(1)
end
function trunglap()
SetCurCamp(3)
SetCamp(3) 
end
function taphai()
SetCurCamp(2)
SetCamp(2) 
end
function satthu()
SetCurCamp(4)
SetCamp(4) 
end

------------------------Vµo ph¸i full skill-----------------------------
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nSeries = GetSeries() + 1
	local szTitle = "Xin chµo <color=red>"..GetName().."<color>. Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü"
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë VÒ", dialog_main})
	tinsert(tbOpt, {"Tho¸t"})
	CreateNewSayEx(szTitle, tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<color=red>"..GetName().."<color> Cã ch¾c ch¾n muèn gia nhËp ph¸i <color=yellow>%s<color> kh«ng?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë VÒ.", choose_faction},
		{"Kªt thóc ®èi tho¹i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do--Add Skill 90-120-150-180
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	for i=1, getn(%tbFaction[nIndex].tbRank) do--Add X­ng HiÖu
		SetRank(%tbFaction[nIndex].tbRank[i])
	end
	SetCurCamp(4)----Mµu ch÷ ®á
	SetCamp(4) 
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i <color=yellow>%s", %tbFaction[nIndex].szShowName))
end
----------------------------------------------------------------------------------------------------

-------------------------------------------------------------------


function xoatoanboitem()
	Say("B¹n cã muèn xãa toµn bé kh«ng?", 2, "§óng vËy!/xoatoanbo", "Ta nhÇm./no")
end

function xoatoanbo()
--Msg2Player("Xãa thµnh c«ng!")
local tbEquip  = GetRoomItems(0)
for _,v in tbEquip do
RemoveItemByIndex(v)
end
ItemIndex = AddItem(6,1,4851,0,0,0)
ItemIndex2 = AddItem(6,1,1266,0,0,0)
ItemIndex3 = AddItem(6,1,438,0,0,0)
SetItemBindState(ItemIndex, -2)
SetItemBindState(ItemIndex2, -2)
SetItemBindState(ItemIndex3, -2)
end


function KetAcc()
	Say("B¹n cã ch¾c ch¾n r»ng b¹n ®ang bÞ kÑt acc kh«ng?", 2, "§óng vËy!/GiaiKetNhanVat", "Ta nhÇm./no")
end

function ChangeKNBToCoin_FixBug()
	local nCount = CountFreeRoomByWH(2,3);
	print(nCount)
end;

---------------------------------nhiem vu hoang kim nhanh-------------------------------------------------------
tb_HelpGoldQuest = {
--=========================================================Hoµng Kim ChÝnh TuyÕn START
	[1] = { --Chinh tuyen
		[1] = { --Chinh phai OK
			[1] = { --Cap 20
				[1] = {"§Õn §¹i Lý gÆp Lý M¹c SÇu",0,1,162,1470,3170},
				[2] = {"Ra bÕn tµu ®¸nh b¹i M¹c SÇu",1,1,162,1636,2984},
				[3] = {"VÒ thµnh gÆp M¹c SÇu",0,1,162,1470,3170},
			},
			[2] = { --Cap 30
				[1] = {"T×m C«ng Tö TiÕu",0,1,11,3223,5118},
				[2] = {"§¸nh b¹i Giíi L­u Phong",1,1,141,1544,3323},
				[3] = {"VÒ gÆp M¹c SÇu",0,1,162,1470,3170},
			},
			[3] = { --Cap 40
				[1] = {"T×m gÆp H¹ V« Th­",0,1,80,1705,3119},
				[2] = {"§¸nh b¹i T¶ §ao HiÖp",1,1,173,1557,3049},
				[3] = {"Quay vÒ gÆp M¹c SÇu",0,1,162,1470,3170},
			},
			[4] = { --Cap 50
				[1] = {"T×m gÆp M¹nh Phµm",0,1,176,1626,2990},
				[2] = {"Tiªu diÖt O¸n §éc",1,1,24,2109,3322},
				[3] = {"Quay vÒ gÆp M¹nh Phµm",0,1,176,1626,2990},
			},
			[5] = { --Cap 60
				[1] = {"Tiªu diÖt ThÇn bÝ nam nh©n",1,1,79,1681,3142},
				[2] = {"Quay vÒ gÆp M¹c SÇu",0,1,162,1470,3170},
			},
		},
		[2] = { --Trung lap OK
			[1] = { --Cap 20 OK
				[1] = {"T×m gÆp Phã Nam B¨ng",0,1,37,1699,3161},
				[2] = {"§¸nh Ninh T­íng Qu©n",1,1,179,2033,2755},
				[3] = {"T×m gÆp Phã Nam B¨ng",0,1,37,1699,3161},
			},
			[2] = { --Cap 30 OK
				[1] = {"T×m gÆp Phã Nam B¨ng",0,1,37,1699,3161},
				[2] = {"§¸nh L­ Thiªn T­îng",1,1,136,1602,3197},
				[3] = {"T×m gÆp Phã Nam B¨ng",0,1,37,1699,3161},
			},
			[3] = { --Cap 40 OK
				[1] = {"GÆp LÖ Thu Thuû",0,1,154,343,1346},
				[2] = {"§¸nh Tõ Tù Lùc",1,1,5,1476,3433},
				[3] = {"GÆp LÖ Thu Thuû",0,1,154,343,1346},
			},
			[4] = { --Cap 50 OK
				[1] = {"T×m gÆp Phã Nam B¨ng",0,1,37,1699,3161},
				[2] = {"T×m §éc §iÕu TÈu",0,1,59,1642,3188},
				[3] = {"Tiªu diÖt §éc §iÕu TÈu",1,1,66,1596,3307},
				[4] = {"Quay l¹i gÆp Phã Nam B¨ng",0,1,37,1699,3161},
			},
			[5] = { --Cap 60 -OK
				[1] = {"T×m gÆp Phã Nam B¨ng",0,1,37,1699,3161},
				[2] = {"GÆp ®¹i s­ Kh«ng TÞch",0,1,103,1776,2843},
				[3] = {"§¸nh b¹i Kh«ng TÞch",1,1,103,1744,2662},
				[4] = {"VÒ gÆp Phã Nam B¨ng",0,1,37,1699,3161},
			},
		},
		[3] = { --Ta phai OK
			[1] = { --Cap 20 OK
				[1] = {"GÆp V©n Nhi",0,1,100,1729,3173},
				[2] = {"GÆp Th¸i C«ng C«ng",0,1,176,1625,3203},
				[3] = {"§¸nh b¹i TiÓu Kú Nhi",1,1,90,1798,3284},
				[4] = {"GÆp Th¸i C«ng C«ng",0,1,176,1625,3203},
				[5] = {"GÆp V©n Nhi",0,1,100,1729,3173},
			},
			[2] = { --Cap 30 OK
				[1] = {"GÆp Tiªu S­",0,1,80,1597,3117},
				[2] = {"§¸nh b¹i H¹ HÇu Phôc",1,1,21,2720,3956},
				[3] = {"GÆp V©n Nhi",0,1,100,1729,3173},
				[4] = {"GÆp Phã L«i Th­",0,1,174,199*8,203*16},
				[5] = {"GÆp MÆc Thï H­¬ng Chñ",0,1,186,1600,3196},
				[6] = {"GÆp Phã L«i Th­",0,1,174,199*8,203*16},
			},
			[3] = { --Cap 40 OK
				[1] = {"GÆp §µo Th¹ch M«n",0,1,86,1606,3190},
				[2] = {"§¸nh TiÓu V« Th­êng",1,1,92,1948,3233},
				[3] = {"GÆp §µo Th¹ch M«n",0,1,86,1606,3190},
				[4] = {"GÆp Phã L«i Th­",0,1,174,199*8,203*16},
				[5] = {"GÆp Nh­ Ngäc",0,1,37,1681,3139},
			},
			[4] = { --Cap 50 OK
				[1] = {"GÆp TrÇn Tam B¶o",0,1,37,1756,2995},
				[2] = {"Tiªu diÖt §¹o TÆc Lôc Phi",1,1,195,599,3068},
				[3] = {"GÆp TrÇn Tam B¶o",0,1,37,1756,2995},
				[4] = {"§¸nh t­íng Kim §å Lan ë TÇng 3 ThiÕt Th¸p",1,1,40,1699,3044},
				[5] = {"GÆp §oµn Méc DuÖ",0,1,49,1801,3183},
				[6] = {"GÆp §oµn Méc Thanh",0,1,121,2013,4490},
			},
			[5] = { --Cap 60 -OK
				[1] = {"GÆp §oµn Méc Thanh",0,1,121,2013,4490},
				[2] = {"Tiªu anh hïng kh¸ng Kim, Liªu §Þnh",1,1,94,1565,3141},
				[3] = {"GÆp §oµn Méc Thanh",0,1,121,2013,4490},
			},
		},
	},
--=========================================================Hoµng Kim ChÝnh TuyÕn END
--=========================================================Hoµng Kim Phô TuyÒn START
	[2] = { --Phô tuyÕn
		[1] = { --------------------------------------------Phô tuyÕn Chinh phai OK
			[1] = { --Cap 20-29 OK
				[1] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[2] = {"GÆp Si T¨ng",0,1,332,167*8,176*16},
				[3] = {"§¸nh Tµng B¶o Kh¸ch lÊy 5 ®å phæ",1,1,332,156*8,188*16},
				[4] = {"GÆp Si T¨ng",0,1,332,167*8,176*16},
				[5] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[6] = {"GÆp TiÔn §Çu",0,1,333,1246,3267},
				[7] = {"GÆp SÇm Hïng",0,1,1,192*8,201*16},
				[8] = {"§¸nh b¹i Phan Nh­ Long",1,1,1,220*8,190*16},
				[9] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
			},
			[2] = { --Cap 30-39 OK
				[1] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[2] = {"GÆp H¹ Lan Chi",0,1,11,3085,5191},
				[3] = {"GÆp Ng« L·o Th¸i",0,1,20,3465,6195},
				[4] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[5] = {"§¸nh 50 Sãi Xanh",1,1,90,1639,3511},
				[6] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[7] = {"GÆp Cung A Ng­u",0,1,78,1551,3191},
				[8] = {"§¸nh ¸c Lang",1,1,90,1789,3140},
				[9] = {"GÆp Cung A Ng­u",0,1,78,1551,3191},
				[10] = {"GÆp Ng« L·o Th¸i",0,1,20,3465,6195},
				[11] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
			},
			[3] = { --Cap 40-49 OK
				[1] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[2] = {"GÆp C«ng B×nh Tö ®¸nh l«i ®µi lÇn 1",0,1,11,3165,5194},
				[3] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[4] = {"GÆp Hçn Hçn",0,1,80,1846,3046},
				[5] = {"GÆp C«ng B×nh Tö ®¸nh l«i ®µi lÇn 2",0,1,11,3165,5194},
				[6] = {"GÆp Hçn Hçn",0,1,80,1846,3046},
				[7] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
				[8] = {"§¸nh Du S­¬ng T©n",1,1,11,3371,4889},
				[9] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
			},
			[4] = { --Cap 50-59 OK
				[1] = {"GÆp Hçn Hçn",0,1,80,1846,3046},
				[2] = {"Hoµn thµnh tèng kim vÒ gÆp Hçn Hçn",1,1,24,2109,3322},
				[3] = {"§¸nh TÒ Tøc Phong",1,1,176,1680,2575},
				[4] = {"GÆp Ng¹o V©n T«ng",0,1,1,1587,3303},
			},
		},
		[2] = { --------------------------------------------Phô tuyÕn Trung lËp OK
			[1] = { --Cap 20 OK
				[1] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[2] = {"§¸nh 50 nhÝm TÇn L¨ng",1,1,7,2277,2824},
				[3] = {"GÆp Giang NhÊt TiÕu",0,1,80,204*8,192*16},
				[4] = {"GÆp L¹c Thanh Thu",0,1,80,1694,3129},
				[5] = {"GÆp b¶o kª sßng b¹c",0,1,80,1744,3151},
				[6] = {"§¸nh Lé Tr­êng Thiªn",1,1,80,1999,2882},
				[7] = {"GÆp b¶o kª sßng b¹c",0,1,80,1744,3151},
				[8] = {"GÆp L¹c Thanh Thu",0,1,80,1694,3129},
				[9] = {"§¸nh nh©n vËt vâ l©m lÊy b¶o kiÕm",1,1,80,1396,3397},
				[10] = {"GÆp L¹c Thanh Thu",0,1,80,1694,3129},
			},
			[2] = { --Cap 30 OK
				[1] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[2] = {"GÆp chñ tiªu côc Song ¦ng",0,1,1,1543,3191},
				[3] = {"GÆp A Ng­u",0,1,1,1567,3253},
				[4] = {"GÆp H¹ L·o B¶n (Chñ tiªu côc)",0,1,11,3011,5057},
				[5] = {"§¸nh 50 khØ x¸m",1,1,92,1977,3116},
				[6] = {"GÆp H¹ L·o B¶n (Chñ tiªu côc)",0,1,11,3011,5057},
				[7] = {"§¸nh BÝch Ngäc, Nh­ Yªn, T¨ng Méng",1,1,131,1872,3392},
				[8] = {"GÆp H¹ L·o B¶n (Chñ tiªu côc)",0,1,11,3011,5057},
				[9] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
			},
			[3] = { --Cap 40 OK
				[1] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[2] = {"GÆp C«ng B×nh Tö ®¸nh l«i ®µi lÇn 1",0,1,11,3165,5194},
				[3] = {"Th¾ng l«i ®µi vÒ gÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[4] = {"GÆp C«ng B×nh Tö ®¸nh l«i ®µi lÇn 2",0,1,11,3165,5194},
				[5] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[6] = {"§¸nh Du S­¬ng T©n",1,1,11,3371,4889},
				[7] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
			},
			[4] = { --Cap 50 OK
				[1] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[2] = {"Hoµn thµnh tèng kim vÒ gÆp LiÔu Nam V©n",0,1,176,1368,3050},
				[3] = {"§¸nh b¹i Long Truy Vò",1,1,162,1723,2987},
				[4] = {"GÆp LiÔu Nam V©n",0,1,176,1368,3050},
			},
		},
		[3] = { --------------------------------------------Phô tuyÕn tµ ph¸i OK
			[1] = { --Cap 20 OK
				[1] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[2] = {"§¸nh 50 H¾c DiÖp HÇu",1,1,25,3952,5284},
				[3] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[4] = {"GÆp Ch©u Tr­êng Cöu",0,1,11,3139,5086},
				[5] = {"GÆp ThÈm Phong",0,1,80,1684,3078},
				[6] = {"§¸nh ThÈm Phong",1,1,80,1788,3383},
				[7] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
			},
			[2] = { --Cap 30 OK
				[1] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[2] = {"§¸nh 50 con sãi vµng",1,1,193,1560,3188},
				[3] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[4] = {"GÆp L­u UÈn C«",0,1,78,1611,3185},
				[5] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[6] = {"GÆp Tuý H¸n (Töu Quû)",0,1,176,1691,3033},
				[7] = {"§¸nh Thi Nghi Sinh",1,1,176,1701,3388},
				[8] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
			},
			[3] = { --Cap 40 OK
				[1] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[2] = {"GÆp L­u UÈn C«",0,1,78,1611,3185},
				[3] = {"GÆp C«ng B×nh Tö ®¸nh l«i ®µi lÇn 1",0,1,11,3165,5194},
				[4] = {"GÆp L­u UÈn C«",0,1,78,1611,3185},
				[5] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[6] = {"GÆp C«ng B×nh Tö ®¸nh l«i ®µi lÇn 2",0,1,11,3165,5194},
				[7] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[8] = {"§¸nh NguyÔn Minh ViÔn",1,1,78,1788,3189},
				[9] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
			},
			[4] = { --Cap 50 OK
				[1] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[2] = {"Hoµn thµnh tèng kim vÒ gÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
				[3] = {"§¸nh Sö ThÞnh Do·n",1,1,78,1372,3500},
				[4] = {"GÆp Th¸c B¹t Hoµi Xuyªn",0,1,37,1677,3040},
			},
		},
	},
}
--=========================================================Hoµng Kim Phô TuyÒn END

function helpgoldquest()
	if GetLevel() < 20 then
		Msg2Player("<color=yellow>H·y ®¹t ®Õn cÊp 20 h·y sö dông chøc n¨ng nµy")
		return
	end
	local tb = {
	"ChÝnh tuyÕn/#gquest(1)",
	"Phô tuyÕn/#gquest(2)",
	"Quay l¹i./main",
	"Tho¸t./Quit",
	}
	Say("",getn(tb),tb)
end
function gquest(ID)
	local MissType = ID --Lo¹i nv chÝnh hay phô tuyªn. ChÝnh lµ 1 phô lµ 2
	local tb = {
	"ChÝnh ph¸i - BÝ mËt TÇm Long Héi/#gquest_step1("..MissType..",1)",
	"Trung lËp - C©u chuyÖn L©m Uyªn Nhai/#gquest_step1("..MissType..",2)",
	"Tµ ph¸i - Long khÝ chi ho¹/#gquest_step1("..MissType..",3)",
	"Quay l¹i/character",
	"KÕt thóc ®èi tho¹i/Quit"
	}
	Say("",getn(tb),tb)
end
function gquest_step1(ID1,ID2)
	local MissType = ID1 --Lo¹i NV chÝnh hay phô
	local PheType = ID2 --NhiÖm vô chÝnh - trung - tµ
	if MissType == 1 then --chÝnh tuyÕn
		local tab_Content = {
		"ChÝnh tuyÕn cÊp 20/#gquest_step2("..MissType..","..PheType..",1)",
		"ChÝnh tuyÕn cÊp 30/#gquest_step2("..MissType..","..PheType..",2)",
		"ChÝnh tuyÕn cÊp 40/#gquest_step2("..MissType..","..PheType..",3)",
		"ChÝnh tuyÕn cÊp 50/#gquest_step2("..MissType..","..PheType..",4)",
		"ChÝnh tuyÕn cÊp 60/#gquest_step2("..MissType..","..PheType..",5)",
		"Quay l¹i/character",
		"KÕt thóc ®èi tho¹i/Quit"
		}
		Say("Hç trî lµm nhiÖm vô hoµng kim ChÝnh TuyÕn. ", getn(tab_Content), tab_Content);
	elseif MissType == 2 then --phô tuyÕn
		local tab_Content = {
		"Phô tuyÕn cÊp 20 - 29/#gquest_step2("..MissType..","..PheType..",1)",
		"Phô tuyÕn cÊp 30 - 39/#gquest_step2("..MissType..","..PheType..",2)",
		"Phô tuyÕn cÊp 40 - 49/#gquest_step2("..MissType..","..PheType..",3)",
		"Phô tuyÕn cÊp 50 - 59/#gquest_step2("..MissType..","..PheType..",4)",
		"Quay l¹i/character",
		"KÕt thóc ®èi tho¹i/Quit"
		}
		Say("Hç trî lµm nhiÖm vô hoµng kim ChÝnh TuyÕn. ", getn(tab_Content), tab_Content);
	end
end
function gquest_step2(ID1,ID2,ID3)
	local MissType = ID1 --Lo¹i NV chÝnh hay phô
	local PheType = ID2 --NhiÖm vô chÝnh - trung - tµ
	local CapDo = ID3
	local strDesc = tb_HelpGoldQuest[MissType][PheType][CapDo][1][1]
	local tbOpt = {}
	local TotalSelect = getn(tb_HelpGoldQuest[MissType][PheType][CapDo]) --Tæng céng cã bao nhiªu lùa chän.
	for i=1,TotalSelect do
		local FightState = tb_HelpGoldQuest[MissType][PheType][CapDo][i][2]
		local MapId = tb_HelpGoldQuest[MissType][PheType][CapDo][i][4]
		local nX =tb_HelpGoldQuest[MissType][PheType][CapDo][i][5]
		local nY = tb_HelpGoldQuest[MissType][PheType][CapDo][i][6]
		tinsert(tbOpt, {tb_HelpGoldQuest[MissType][PheType][CapDo][i][1],gquest_step3,{FightState,MapId,nX,nY}})
	end
	tinsert(tbOpt, {"Quay l¹i",gquest_step1})
	tinsert(tbOpt, {"Tho¸t."})
	CreateNewSayEx(strDesc, tbOpt);
end
function gquest_step3(ID1,ID2,ID3,ID4)
	local FightState = ID1
	local MapId = ID2
	local nX = ID3
	local nY = ID4
	NewWorld(MapId,nX,nY)
	SetFightState(FightState)
end
----------------------------------------------------------------------------------------------------------

function meltaobai()
local tbNpcList = GetAroundNpcList(60)
local pW, pX, pY = GetWorldPos()
local tmpFound = {}
local nNpcIdx
for i=1,getn(tbNpcList) do
nNpcIdx = tbNpcList[i]
local nSettingIdx = GetNpcSettingIdx(nNpcIdx)
local name = GetNpcName(nNpcIdx)
local level = NPCINFO_GetLevel(nNpcIdx)
local kind = GetNpcKind(nNpcIdx)
if nSettingIdx > 0 and kind == 0 then
tinsert(tmpFound, {nSettingIdx, name, level})
end
end
local total = getn(tmpFound)
if total == 0 then
return 0
end
local j = 0
while j < 20 do
local data = tmpFound[random(1, total)]
local isBoss = 0
if (j==10) then
isBoss = 2
end
local nNpcIndex = AddNpcEx(data[1], data[3], random(0,4), SubWorldID2Idx(pW),(pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, data[2] , isBoss)
if nNpcIndex > 0 then
j = j + 1
end
end
return 0
end


function melxoabai()
    local tbNpcList = GetAroundNpcList(30)
    local pW, pX, pY = GetWorldPos()
    local tmpFound = {}
    local nNpcIdx
    for i=1,getn(tbNpcList) do
        nNpcIdx = tbNpcList[i]
        local kind = GetNpcKind(nNpcIdx)


        local nSettingIdx = GetNpcSettingIdx(nNpcIdx)

        local nNpcType = GetNpcPowerType(nNpcIdx)

        if nSettingIdx > 0 and kind == 0 and nNpcType ~= 3 then
            DelNpc(nNpcIdx)
        end
    end
    return 0
end


--------------------------------------------------------------
--Söa ThÇn Hµnh Phï
--------------------------------------------------------------
function fixthanhanhphu()
    DisabledUseTownP(0)
    Talk(1, "", "Tr¹ng th¸i sö dông thæ ®Þa phï vµ thÇn hµnh phï cña Quý nh©n sÜ ®· trë vÒ ban ®Çu!")
end
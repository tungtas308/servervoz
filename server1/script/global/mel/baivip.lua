IncludeLib("NPCINFO");
IncludeLib("SETTING");
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
}
local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}
------------------------------------------------------------------------------------------------

THONGTINSERVER_DIALOG = "Sè anh em n»m th¼ng: <color=green>%s<color>\n"
TITLE_DIALOG = "Tªn nh©n vËt: <color=green>%s<color> "
TITLE_DIALOG  = TITLE_DIALOG.."TTK: <color=green>%s<color>/<color=red>%s<color>, VLMT: <color=green>%s<color>/<color=red>%s<color>\n"
DOCHI_DIALOG = "§å chÝ: <color=green>%s<color>\n"
DIEMTK_DIALOG = "§iÓm tÝch lòy Tèng Kim: <color=green>%s<color>\n"
BOSS_SATTHU_DIALOG = "Boss s¸t thñ: <color=green>%s<color>/<color=red>%s<color>\n"
THONGTINNHANVAT_DIALOG = "May m¾n: <color=green>%s<color>"
function main(nItemIndex)
	dofile("script/global/mel/baivip.lua")
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

	tinsert(tbSay,"Lªn b·i Vip/dibaivip")
	tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
			
	CreateTaskSay(tbSay)
	return 1;
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
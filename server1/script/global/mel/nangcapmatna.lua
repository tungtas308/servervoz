--Date: 24/11/2025
--Script: N©ng cÊp mÆt n¹
--Coder: Mel
--------------------------------------------------CODE N©ng cÊp MÆt n¹--------------------------------------------------
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\judgeoffline.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\system\\task_string.lua" );
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

------------------------------------------------------------------------------------------------------------------------

function melnangcapmatna()
dofile("script/global/mel/nangcapmatna.lua")
Say("H·y chän ph­¬ng thøc n©ng cÊp!",11,
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 2/nangcapmatna2",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 3/nangcapmatna3",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 4/nangcapmatna4",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 5/nangcapmatna5",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 6/nangcapmatna6",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 7/nangcapmatna7",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 8/nangcapmatna8",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 9/nangcapmatna9",
	"N©ng cÊp MÆt n¹ Tèng Kim cÊp 10/nangcapmatna10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 2------------------------------

function nangcapmatna2()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 2 kh«ng? CÇn cã c¸i MÆt n¹ Tèng Kim cÊp 1, 2 Tèng Kim LÖnh vµ 200 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna2",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna2()
	if CalcEquiproomItemCount (0,11,586,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 1.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 2 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 2 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 2000000 then
		Pay(2000000)
		ConsumeEquiproomItem (1,0,11,586,1)
		ConsumeEquiproomItem (2,4,2058,1,1)
		AddItem(0,11,587,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 2<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 200 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 3------------------------------

function nangcapmatna3()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 3 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 2, 4 Tèng Kim LÖnh vµ 300 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna3",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna3()
	if CalcEquiproomItemCount (0,11,587,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 2.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 4 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 4 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 3000000 then
		Pay(3000000)
		ConsumeEquiproomItem (1,0,11,587,1)
		ConsumeEquiproomItem (4,4,2058,1,1)
		AddItem(0,11,588,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 3<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 300 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 4------------------------------

function nangcapmatna4()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 4 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 3, 8 Tèng Kim LÖnh vµ 400 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna4",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna4()
	if CalcEquiproomItemCount (0,11,588,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 3.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 8 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 8 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 4000000 then
		Pay(4000000)
		ConsumeEquiproomItem (1,0,11,588,1)
		ConsumeEquiproomItem (8,4,2058,1,1)
		AddItem(0,11,589,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 4<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 400 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 5------------------------------

function nangcapmatna5()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 5 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 4, 16 Tèng Kim LÖnh vµ 500 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna5",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna5()
	if CalcEquiproomItemCount (0,11,589,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 4.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 16 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 16 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 5000000 then
		Pay(5000000)
		ConsumeEquiproomItem (1,0,11,589,1)
		ConsumeEquiproomItem (16,4,2058,1,1)
		AddItem(0,11,590,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 5<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 500 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 6------------------------------

function nangcapmatna6()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 6 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 5, 32 Tèng Kim LÖnh vµ 600 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna6",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna6()
	if CalcEquiproomItemCount (0,11,590,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 5.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 32 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 32 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 6000000 then
		Pay(6000000)
		ConsumeEquiproomItem (1,0,11,590,1)
		ConsumeEquiproomItem (32,4,2058,1,1)
		AddItem(0,11,591,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 6<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 600 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 7------------------------------

function nangcapmatna7()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 7 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 6, 64 Tèng Kim LÖnh vµ 700 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna7",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna7()
	if CalcEquiproomItemCount (0,11,591,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 MÆt N¹ Tèng Kim cÊp 6.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 64 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 64 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 7000000 then
		Pay(7000000)
		ConsumeEquiproomItem (1,0,11,591,1)
		ConsumeEquiproomItem (64,4,2058,1,1)
		AddItem(0,11,592,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 7<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 700 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 8------------------------------

function nangcapmatna8()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 8 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 7, 128 T«ng Kim LÖnh vµ 800 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna8",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna8()
	if CalcEquiproomItemCount (0,11,592,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 1 MÆt N¹ Tèng Kim cÊp 7.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 128 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 128 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 8000000 then
		Pay(8000000)
		ConsumeEquiproomItem (1,0,11,592,1)
		ConsumeEquiproomItem (128,4,2058,1,1)
		AddItem(0,11,593,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 8<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 800 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 9------------------------------

function nangcapmatna9()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 9 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 8, 256 Tèng Kim LÖnh vµ 900 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna9",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna9()
	if CalcEquiproomItemCount (0,11,593,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 8.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 256 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 256 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 9000000 then
		Pay(9000000)
		ConsumeEquiproomItem (1,0,11,593,1)
		ConsumeEquiproomItem (256,4,2058,1,1)
		AddItem(0,11,594,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 9<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 900 v¹n l­îng.")
	end
end

------------------------------N©ng cÊp MÆt n¹ Tèng Kim cÊp 10------------------------------

function nangcapmatna10()
Say("B¹n cã ch¾c lµ muèn n©ng cÊp MÆt n¹ Tèng Kim cÊp 10 kh«ng? CÇn cã MÆt n¹ Tèng Kim cÊp 9, 512 Tèng Kim LÖnh vµ 1000 v¹n l­îng",2,
	"Ch¾c ch¾n råi./donangcapmatna10",
	"§Ó t«i suy nghÜ ®·./OnCancel");
end;

function donangcapmatna10()
	if CalcEquiproomItemCount (0,11,594,1) < 1 then
		Say("H·y xem l¹i hµnh trang kh«ng cã MÆt N¹ Tèng Kim cÊp 9.")
	return
	end
	if CalcEquiproomItemCount (4,2058,1,1) < 512 then
		Say("H·y xem l¹i hµnh trang kh«ng ®ñ 512 Tèng Kim LÖnh.")
	return
	end
	if GetCash() >= 10000000 then
		Pay(10000000)
		ConsumeEquiproomItem (1,0,11,594,1)
		ConsumeEquiproomItem (512,4,2058,1,1)
		AddItem(0,11,595,1,0,0,0)
		Msg2Player("<color=green>N©ng cÊp thµnh c«ng nhËn<color> <color=yellow>MÆt n¹ Tèng Kim cÊp 10<color>")
	else
		Say("H·y xem l¹i hµnh trang b¹n kh«ng cã ®ñ 1000 v¹n l­îng.")
	end
end
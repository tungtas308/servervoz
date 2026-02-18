Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
ListHKMP={

"[Cùc phÈm] §Þnh Quèc Thanh Sa Tr­êng Sam",
"[Cùc phÈm] §Þnh Quèc Thanh Sa Ph¸t Qu¸n",
"[Cùc phÈm] §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",
"[Cùc phÈm] §Þnh Quèc Tö §»ng Hé UyÓn",
"[Cùc phÈm] §Þnh Quèc Ng©n Tµm Yªu §¸i",
"[Hoµn Mü] An Bang B¨ng Tinh Th¹ch H¹ng Liªn",
"[Hoµn Mü] An Bang Cóc Hoa Th¹ch ChØ Hoµn",
"[Hoµn Mü] An Bang §iÒn Hoµng Th¹ch Ngäc Béi",
"[Hoµn Mü] An Bang Kª HuyÕt Th¹ch Giíi ChØ",


}
---------------------------------
function vinhdieu() 
dofile("script/global/mel/vinhdieu.lua")
	local tbOpt = {
		{"N©ng cÊp trang bÞ Vinh DiÖu",DoiVinhDieu},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>C¸c h¹ muèn n©ng cÊp trang bÞ Vinh DiÖu µ?<color>", tbOpt)
end

function DoiVinhDieu()
	local tbOpt = {
		{"Bá vµo 2 bé An Bang Hoµn Mü vµ §Þnh Quèc Cùc PhÈm",DoiVinhDieu2},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>§Æt vµo 2 bé trang bÞ Cùc phÈm §éng S¸t vµ Hång ¶nh<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiVinhDieu2()
	GiveItemUI( "§æi bé trang bÞ Vinh DiÖu", "B¹n cÇn ®Æt vµo 2 bé trang bÞ An Bang Hoµn Mü vµ §Þnh Quèc Cùc PhÈm vµ hµnh trang cã 200 tiÒn ®ång th× cã thÓ ®æi ®­îc", "DoiVinhDieu3", "onCancel",1 );
end

function DoiVinhDieu3( nCount )
	countvk = 0
	if nCount ~= 9 then						
		Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ListHKMP) do
				if szName == %ListHKMP[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 9 then
				Say("Xin kiÓm tra kü, trang bÞ b¹n ®­a ta kh«ng phï hîp yªu cÇu!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H·y ch¾c ch¾n r»ng b¹n cã ®ñ chç trèng trong hµnh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=200) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("ChuyÖn g× vËy, sao ng­¬i cã thÓ g¹t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(200, 4, 417, 1, 1)
			AddGoldItem(0,214)
			AddGoldItem(0,215)
			Msg2Player("Chóc Mõng "..GetName().." n©ng cÊp bé trang bÞ <color=green>Vinh DiÖu<color> Thµnh C«ng")
		else
			Say("Kh¸ch quan ®ang trªu chäc tiÓu nh©n hay thËt sù ng­êi cã ®ñ 200 TiÒn §ång kh«ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

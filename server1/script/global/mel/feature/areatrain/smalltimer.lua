Include("\\script\\global\\mel\\feature\\areatrain\\head.lua")

function pFeatureArea:OnTimer()
    --print("[AREATRAINVIP] Timer triggered")
    checkAllPlayerTime()
    AddTimer(FRAME2TIME, "pFeatureArea:OnTimer", 0)
end
AddTimer(FRAME2TIME, "pFeatureArea:OnTimer", 0)
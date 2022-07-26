local pnl = FindMetaTable("Panel")
LordsFilter.SetText = LordsFilter.SetText or pnl.SetText
function pnl:SetText(str)
    return LordsFilter.SetText(self, LordsFilter:Filter(str))
end

LordsFilter.DrawSimple = LordsFilter.DrawSimple or draw.SimpleText
function draw.SimpleText(str, font, x, y, col)
    return LordsFilter.DrawSimple(LordsFilter:Filter(str), font, x, y, col)
end

LordsFilter.DrawText = LordsFilter.DrawText or surface.DrawText
function surface.DrawText(str, ad)
    return LordsFilter.DrawText(LordsFilter:Filter(str), ad)
end
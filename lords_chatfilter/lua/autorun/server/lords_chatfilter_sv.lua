hook.Add("PlayerSay", "LordsFilter:ChatFilter", function(ply, text)
    return LordsFilter:Filter(text)
end)
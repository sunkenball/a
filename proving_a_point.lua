local a
a = hookmetamethod(game, "__namecall", function(d, ...)
    local b = {...}
    if not checkcaller() then
        local c = getnamecallmethod()

        if c == "FireServer" and d.Name == "AFK" and b[1] == false then
            b[1] = true
        end
    end
    return a(d, unpack(b))
end)

local function alternateServersRequest()
    local response = request({Url = 'https://games.roblox.com/v1/games/' .. tostring(game.PlaceId) .. '/servers/Public?sortOrder=Asc&limit=100', Method = "GET", Headers = { ["Content-Type"] = "application/json" },})
    if response.Success then
        return response.Body
    else
        return nil
    end
end
local function getServer()
    local servers
    local success, _ = pcall(function()
        servers = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. tostring(game.PlaceId) .. '/servers/Public?sortOrder=Asc&limit=100')).data
    end)
    if not success then
        print("Error getting servers, using backup method")
        servers = game.HttpService:JSONDecode(alternateServersRequest()).data
    end
    local selectedServer
    for _, server in ipairs(servers) do
        if server.playing <= 2 then 
            selectedServer = server
            break
        end
    end
    if not selectedServer then
        return getServer()
    end
    return selectedServer
end
pcall(function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, getServer().id, game.Players.LocalPlayer)
end)
task.wait(5)
while true do
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    task.wait()
end

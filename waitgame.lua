local function waitFor(condition, timeout)
    timeout = timeout or 30
    local start = os.time()
    repeat
        if condition() then
            return true
        end
        task.wait(1)
    until os.time() - start >= timeout
    return false
end

waitFor(function()
    return game:IsLoaded()
end)

waitFor(function()
    return game.PlaceId ~= nil
end)

waitFor(function()
    local players = game:GetService("Players")
    return players.LocalPlayer and players.LocalPlayer.Character and players.LocalPlayer.Character.HumanoidRootPart
end)

if game.PlaceId == 8737899170 then
    waitFor(function()
        return #game:GetService("Workspace").Map:GetChildren() == 100
    end)
elseif game.PlaceId == 16498369169 then
    waitFor(function()
        return #game:GetService("Workspace").Map2:GetChildren() == 51
    end)
end

waitFor(function()
    local workspace = game:GetService("Workspace")
    return workspace.__THINGS and workspace.__DEBRIS
end)

task.wait(2)

print("[CLIENT] Loaded Game")

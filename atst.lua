local WAITING = false

local function serverhop(player)
    local timeToWait = math.random(30, 60) 
    print("[ANTI-STAFF] BIG Games staff (" .. player.Name ..  ") is in the server! Waiting for " .. tostring(timeToWait) .. " seconds before server hopping...")
    wait(timeToWait) 

    local success, _ = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fdvll/pet-simulator-99/main/serverhop.lua"))()
    end)

    if not success then
        game.Players.LocalPlayer:Kick("[ANTI-STAFF] A BIG Games staff member joined and the script was unable to server hop")
    end
end

local function checkPlayer(player)
    local success, _ = pcall(function()
        if player:IsInGroup(5060810) then
            WAITING = true
            serverhop(player)
        end
    end)
    if not success then
        print("[ANTI-STAFF] Error while checking player: " .. player.Name)
    end
end

for _, player in pairs(game.Players:GetPlayers()) do
    checkPlayer(player)
end

game.Players.PlayerAdded:Connect(function(player)
    if player:IsInGroup(5060810) and not WAITING then
        print("[ANTI-STAFF] Staff member joined, stopping all scripts")
        
        getgenv().autoBalloon = false
        getgenv().autoChest = false
        getgenv().autoFishing = false

        getgenv().STAFF_DETECTED = true
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

        local mapPath = game:GetService("Workspace").Map
        local zoneData = require(game:GetService("ReplicatedStorage").Library.Util.ZonesUtil).GetZoneFromNumber(math.random(40, 90))
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mapPath[tostring(zoneData["_script"])].PERSISTENT.Teleport.CFrame

        serverhop(player)
    end
end)

print("[ANTI-STAFF] No staff member detected")

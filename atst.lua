getgenv().AccountFilter = {
    ["Enabled"] = false,
    ["Accounts"] = {"account_name_here"}
}
getgenv().config = {
    ["Team"] = "Pirates",
    ["FPS Boost"] = false,
    ["LocalPlayer"] = {
        ["Ken Haki"] = true, ["Invisible"] = true, ["Click Delay"] = 0.1,
        ["Panic Mode"] = {["Skip Player"] = false, ["Run"] = 4500, ["Max"] = 5000}
    },
    ["settings"] = {
        ["Cam Farm"] = true,
        ["White Screen"] = false,
        ["Region_Hop"] = {["Enabled"] = true, ["Value"] = "United States"},
        ["Webhook"] = {["Enabled"] = true, ["URL"] = {["Discord"] = "https://discord.com/api/webhooks/1218470029662748682/j4QAvhUc9FuE3etTSJgqSObFWEc_goUIyhoEx75--FkxngajpE6Sya9eouIF2lA637Jy", ["Thumbnail"] = "default"}},
        ["Chatkill"] = {["Enabled"] = false, ["Text"] = {""}},
        ["FPS Locker"] = {["Enabled"] = false, ["Value"] = 12},
        ["Bounty Lock"] = {["Enabled"] = true, ["Value"] = 30000000},
        ["Ignore"] = {["Buddha Users"] = false, ["Portal Users"] = false, ['Some Annoying V4'] = false},
        ["Stats"] = {["Auto Reset Stat If Doesnt Match"] = false, ["Points"] = "Sword"},
    },
    ["Skills"] = {
        ["Melee"] = {["Time"] = 1.5, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.5}, 
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = true, ["HoldTime"] = 0}
        },
        ["Fruit"] = {["Time"] = 0, ["Enabled"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0}, 
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["C"] = {["Enabled"] = false, ["HoldTime"] = 0}, 
            ["V"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["F"] = {["Enabled"] = false, ["HoldTime"] = 0}
        },
        ["Sword"] = {["Time"] = 1, ["Enabled"] = true,
            ["Z"] = {["Enabled"] = true, ["HoldTime"] = 0.25},
            ["X"] = {["Enabled"] = true, ["HoldTime"] = 0.25},
        },
        ["Gun"] = {["Time"] = 0, ["Enabled"] = false, ["GunMode"] = false,
            ["Z"] = {["Enabled"] = false, ["HoldTime"] = 0},
            ["X"] = {["Enabled"] = false, ["HoldTime"] = 0},
        }
    }
}
loadstring(game:HttpGet(("https://raw.githubusercontent.com/obfchx/Gui/main/hehek.txt")))()

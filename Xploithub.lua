local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local greeting = "منوّر السكربت"

if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Shirt") then
    local shirtId = LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
    if shirtId and shirtId:lower():find("girl") then
        greeting = "منوّرة السكربت"
    end
end

MakeWindow({
    Hub = {
        Title = "Xploit  ساموراي  V0.1",
        Animation = greeting
    },
    Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            Incorrectkey = "The key is incorrect",
            CopyKeyLink = "Copied to Clipboard"
        }
    }
})

MinimizeButton({
    Image = "rbxassetid://88122625843089",
    Size = {40, 40},
    Color = Color3.fromRGB(255, 125, 0),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 125, 0)
})

local Main = MakeTab({
    Name = "المعلومات",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

local Image = AddImageLabel(Main, {
    Name = "قناة السكربت",
    Image = "rbxassetid://88122625843089"
})

AddButton(Main, {
    Name = "انضم",
    Callback = function()
        setclipboard('https://t.me/Prov_development')
    end
})

AddLine(Main, {
    Color = Color3.fromRGB(200, 200, 200),
    Thickness = 1
})

AddTextLabel(Main, "اليوزرات", {
    TextColor = Color3.fromRGB(180, 180, 180),
    TextSize = 14
})

AddLine(Main, {
    Color = Color3.fromRGB(200, 200, 200),
    Thickness = 1
})

AddButton(Main, {
    Name = "تيك توك المطور ساموراي",
    Callback = function()
        setclipboard('@alsamorayt')
        game.StarterGui:SetCore("SendNotification", {
            Title = "تم نسخ اليوزر ✅",
            Text = "@alsamorayt",
            Duration = 3
        })
    end
})

AddButton(Main, {
    Name = "تليجرام المطور ساموراي",
    Callback = function()
        setclipboard('@D_hh_313')
        game.StarterGui:SetCore("SendNotification", {
            Title = "تم نسخ اليوزر ✅",
            Text = "@D_hh_313",
            Duration = 3
        })
    end
})

AddButton(Main, {
    Name = "تيك توك المطور عركـ",
    Callback = function()
        setclipboard('dmc_ark@')
        game.StarterGui:SetCore("SendNotification", {
            Title = "تم نسخ اليوزر ✅",
            Text = "dmc_ark@",
            Duration = 3
        })
    end
})

AddLine(Main, {
    Color = Color3.fromRGB(200, 200, 200),
    Thickness = 1
})

local PlayerInfoLabel = AddTextLabel(Main,
    "User: " .. LocalPlayer.Name .. "\n" ..
    "Map: " .. game.PlaceId .. "\n" ..
    "Time: " .. os.date("%H:%M:%S")
)

task.spawn(function()
    while true do
        task.wait(1)
        PlayerInfoLabel.Update(
            "User: " .. LocalPlayer.Name .. "\n" ..
            "Map: " .. game.PlaceId .. "\n" ..
            "Time: " .. os.date("%H:%M:%S")
        )
    end
end)

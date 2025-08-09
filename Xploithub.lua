loadstring(game:HttpGet("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua"))()

task.spawn(function()
    wait(1)

    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local Main = MakeTab({
        Name = "المعلومات",
        Image = "rbxassetid://88122625843089",
        TabTitle = false
    })

    AddImageLabel(Main, {
        Name = "قناة السكربت",
        Image = "rbxassetid://88122625843089"
    })

    AddButton(Main, {
        Name = "انضم",
        Callback = function()
            setclipboard('https://t.me/Prov_development')
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم نسخ الرابط ✅",
                Text = "رابط القناة تم نسخه للحافظة",
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

    AddLine(Main, {
        Color = Color3.fromRGB(200, 200, 200),
        Thickness = 1
    })

    AddTextLabel(Main, "اليوزرات", {
        TextColor = Color3.fromRGB(180, 180, 180),
        TextSize = 14
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

end)

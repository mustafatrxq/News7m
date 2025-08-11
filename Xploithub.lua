local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

redzlib:SetTheme("Dark")

-- دوال تلاشي لفتح وغلق النافذة بشكل سلس
local function FadeIn(window)
    for i = 0, 1, 0.05 do
        for _, frame in pairs(window:GetChildren()) do
            if frame:IsA("Frame") or frame:IsA("ImageLabel") or frame:IsA("TextLabel") then
                frame.BackgroundTransparency = 1 - i
                frame.TextTransparency = 1 - i
                frame.ImageTransparency = 1 - i
            end
        end
        task.wait(0.03)
    end
end

local function FadeOut(window)
    for i = 0, 1, 0.05 do
        for _, frame in pairs(window:GetChildren()) do
            if frame:IsA("Frame") or frame:IsA("ImageLabel") or frame:IsA("TextLabel") then
                frame.BackgroundTransparency = i
                frame.TextTransparency = i
                frame.ImageTransparency = i
            end
        end
        task.wait(0.03)
    end
end

-- نافذة الترحيب
local WelcomeWindow = redzlib:MakeWindow({
    Title = "welcome to Xploit hub",
    SubTitle = "صنع بواسطة ساموراي ‖ عركـ",
    SaveFolder = nil
})

WelcomeWindow:AddImageLabel({
    Name = "Logo",
    Image = "rbxassetid://107399679611214"
})

local count = 0
local Label = WelcomeWindow:AddParagraph({"", tostring(count) .. " %"})
local ProgressBar = WelcomeWindow:AddSlider({
    Name = "Loading...",
    Min = 0,
    Max = 100,
    Default = 0,
    Increase = 1,
    Callback = function() end
})
ProgressBar:Set({Disabled = true})

-- بداية شفافية الترحيب 100%
for _, frame in pairs(WelcomeWindow:GetChildren()) do
    if frame:IsA("Frame") or frame:IsA("ImageLabel") or frame:IsA("TextLabel") then
        frame.BackgroundTransparency = 1
        frame.TextTransparency = 1
        frame.ImageTransparency = 1
    end
end

FadeIn(WelcomeWindow)

task.spawn(function()
    while count <= 100 do
        task.wait(0.03)
        count = count + 1
        Label:Set({Text = tostring(count) .. " %"})
        ProgressBar:Set({Default = count})
    end

    FadeOut(WelcomeWindow)
    WelcomeWindow:Destroy()

    -- النافذة الرئيسية بدون تاتيل فرعي
    local MainWindow = redzlib:MakeWindow({
        Title = "Xploit Hub ‖ Brookhaven || V0.1",
        SubTitle = "",  -- حذف التاتيل الفرعي
        SaveFolder = "XploitHubScripts"
    })

    -- بداية شفافية النافذة الرئيسية 100%
    for _, frame in pairs(MainWindow:GetChildren()) do
        if frame:IsA("Frame") or frame:IsA("ImageLabel") or frame:IsA("TextLabel") then
            frame.BackgroundTransparency = 1
            frame.TextTransparency = 1
            frame.ImageTransparency = 1
        end
    end

    FadeIn(MainWindow)

    local LocalPlayer = game:GetService("Players").LocalPlayer

    -- تبويب المعلومات
    local InfoTab = MainWindow:MakeTab({
        Name = "المعلومات",
        Image = "rbxassetid://107399679611214",
        TabTitle = false
    })

    InfoTab:AddImageLabel({
        Name = "قناة السكربت",
        Image = "rbxassetid://107399679611214"
    })

    InfoTab:AddButton({
        Name = "انضم",
        Callback = function()
            setclipboard('https://t.me/Prov_development')
        end
    })

    local LabelInfo = InfoTab:AddTextLabel(
        "User: " .. LocalPlayer.Name .. "\n" ..
        "Map: " .. tostring(game.PlaceId) .. "\n" ..
        "Time: " .. os.date("%H:%M:%S")
    )

    task.spawn(function()
        while true do
            task.wait(1)
            LabelInfo.Update(
                "User: " .. LocalPlayer.Name .. "\n" ..
                "Map: " .. tostring(game.PlaceId) .. "\n" ..
                "Time: " .. os.date("%H:%M:%S")
            )
        end
    end)

    -- تبويب المطورين
    local DevTab = MainWindow:MakeTab({
        Name = "المطورين",
        Image = "rbxassetid://107399679611214",
        TabTitle = false
    })

    DevTab:AddButton({
        Name = "يوزر تيك توك المطور ساموراي",
        Callback = function()
            setclipboard("@alsamorayt")
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم النسخ ✅",
                Text = "نسخت يوزر تيك توك المطور ساموراي",
                Duration = 3
            })
        end
    })

    DevTab:AddButton({
        Name = "يوزر تيك توك المطور عرك",
        Callback = function()
            setclipboard("@dmc_ark")
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم النسخ ✅",
                Text = "نسخت يوزر تيك توك المطور عرك",
                Duration = 3
            })
        end
    })

    DevTab:AddButton({
        Name = "يوزر تيليجرام المطور ساموراي",
        Callback = function()
            setclipboard("@D_hh_313")
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم النسخ ✅",
                Text = "نسخت يوزر تيليجرام المطور ساموراي",
                Duration = 3
            })
        end
    })

    -- تبويب السكربتات
    local ScriptsTab = MainWindow:MakeTab({
        Name = "السكربتات",
        Image = "rbxassetid://107399679611214",
        TabTitle = false
    })

    ScriptsTab:AddButton({
        Name = "سكربت Antikick - من تطويري",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ALSAMORAYT/N3na3/refs/heads/main/AntiKick.lua"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت Antikick شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت متنوع عربي جميل",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xc-i7/-/refs/heads/main/C39TnCJn.txt"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت متنوع عربي جميل شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت vr7",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-VR7-45290"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت vr7 شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت صلمه",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AntiAFK-System-SOLARA-21775"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت صلمه شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت صلمه v3",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AntiAFK-v-AntiKick-V3-v-Kick-Attempt-Logger-27977"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت صلمه v3 شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت ما اعرف شسمه بس حلو",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Murim-Cultivation-SECT-UPDATE-NK-8125"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت ما اعرف شسمه بس حلو شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت الهلال",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Ragdoll-Engine-ATOMIC-HUB-8295"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت الهلال شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت ساندر",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Sander-XY-35845"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت ساندر شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت Tiger",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Tiger-X-39488"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت Tiger شغال الآن",
                Duration = 3
            })
        end
    })

    ScriptsTab:AddButton({
        Name = "سكربت رقصات AFEM",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-14048"))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = "سكربت رقصات AFEM شغال الآن",
                Duration = 3
            })
        end
    })

end)

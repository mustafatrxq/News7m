local splib = loadstring(game:HttpGet("https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/splibv2"))()

local Window = splib:MakeWindow({
    Name = "Xploit Hub ‖ Brookhaven || V0.1",
    HidePremium = false,
    SaveConfig = true,
    Setting = true,
    ToggleIcon = "rbxassetid://107399679611214",
    ConfigFolder = "XploitConfigs"
})

-- تبويب المطور
local MainTab = Window:MakeTab("المطور", "rbxassetid://107399679611214")
MainTab:AddLabel("ساموراي - عركـ")
MainTab:AddLabel("User: " .. game.Players.LocalPlayer.Name)

MainTab:AddButton({
    Name = "انضم لقناة السكربت",
    Callback = function()
        setclipboard("https://t.me/Prov_development")
        game.StarterGui:SetCore("SendNotification", {
            Title = "تم النسخ ✅",
            Text = "رابط قناة السكربت تم نسخه",
            Duration = 3
        })
    end
})

-- تبويب المطورين
local DevelopersTab = Window:MakeTab("المطورين", "rbxassetid://107399679611214")

DevelopersTab:AddButton({
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

DevelopersTab:AddButton({
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

DevelopersTab:AddButton({
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
local ScriptsTab = Window:MakeTab("السكربتات", "rbxassetid://118017437324495")

local function notify(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "تم التشغيل ✅",
        Text = text,
        Duration = 3
    })
end

ScriptsTab:AddButton({
    Name = "سكربت Antikick - من تطويري",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ALSAMORAYT/N3na3/refs/heads/main/AntiKick.lua"))()
        notify("سكربت Antikick شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت متنوع عربي جميل",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xc-i7/-/refs/heads/main/C39TnCJn.txt"))()
        notify("سكربت متنوع عربي جميل شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت vr7",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-VR7-45290"))()
        notify("سكربت vr7 شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت صلمه",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AntiAFK-System-SOLARA-21775"))()
        notify("سكربت صلمه شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت صلمه v3",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AntiAFK-v-AntiKick-V3-v-Kick-Attempt-Logger-27977"))()
        notify("سكربت صلمه v3 شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت ما اعرف شسمه بس حلو",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Murim-Cultivation-SECT-UPDATE-NK-8125"))()
        notify("سكربت ما اعرف شسمه بس حلو شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت الهلال",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Ragdoll-Engine-ATOMIC-HUB-8295"))()
        notify("سكربت الهلال شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت ساندر",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Sander-XY-35845"))()
        notify("سكربت ساندر شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت Tiger",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Tiger-X-39488"))()
        notify("سكربت Tiger شغال الآن")
    end
})

ScriptsTab:AddButton({
    Name = "سكربت رقصات AFEM",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-14048"))()
        notify("سكربت رقصات AFEM شغال الآن")
    end
})

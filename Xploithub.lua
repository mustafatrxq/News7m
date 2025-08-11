local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lx8Lx/Redzhard/refs/heads/main/Hardredz.txt"))()

local Window = redzlib:MakeWindow({
  Title = "Xploit Hub ‖ Brookhaven || V0.1",
  SubTitle = "ساموراي - عركـ",
  SaveFolder = "testando | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://107399679611214", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

local LocalPlayer = game:GetService("Players").LocalPlayer

-- تبويب المعلومات
local MainTab = Window:MakeTab({
    Name = "المعلومات",
    Icon = "rbxassetid://88122625843089",
    PremiumOnly = false
})

MainTab:AddImageLabel({
    Name = "قناة السكربت",
    Image = "rbxassetid://88122625843089",
    Size = UDim2.new(0, 150, 0, 75)
})

MainTab:AddButton({
    Name = "انضم",
    Callback = function()
        setclipboard('https://t.me/Prov_development')
    end
})

local InfoLabel = MainTab:AddLabel(
    "User: " .. LocalPlayer.Name .. "\n" ..
    "Map: " .. game.PlaceId .. "\n" ..
    "Time: " .. os.date("%H:%M:%S")
)

task.spawn(function()
    while true do
        task.wait(1)
        InfoLabel.Update(
            "User: " .. LocalPlayer.Name .. "\n" ..
            "Map: " .. game.PlaceId .. "\n" ..
            "Time: " .. os.date("%H:%M:%S")
        )
    end
end)

-- تبويب المطورين
local DevTab = Window:MakeTab({
    Name = "المطورين",
    Icon = "rbxassetid://88122625843089",
    PremiumOnly = false
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
local ScriptsTab = Window:MakeTab({
    Name = "السكربتات",
    Icon = "rbxassetid://88122625843089",
    PremiumOnly = false
})

local scripts = {
    {Name = "سكربت Antikick - من تطويري", URL = "https://raw.githubusercontent.com/ALSAMORAYT/N3na3/refs/heads/main/AntiKick.lua"},
    {Name = "سكربت متنوع عربي جميل", URL = "https://raw.githubusercontent.com/xc-i7/-/refs/heads/main/C39TnCJn.txt"},
    {Name = "سكربت vr7", URL = "https://rawscripts.net/raw/Universal-Script-VR7-45290"},
    {Name = "سكربت صلمه", URL = "https://rawscripts.net/raw/Universal-Script-AntiAFK-System-SOLARA-21775"},
    {Name = "سكربت صلمه v3", URL = "https://rawscripts.net/raw/Universal-Script-AntiAFK-v-AntiKick-V3-v-Kick-Attempt-Logger-27977"},
    {Name = "سكربت ما اعرف شسمه بس حلو", URL = "https://rawscripts.net/raw/Murim-Cultivation-SECT-UPDATE-NK-8125"},
    {Name = "سكربت الهلال", URL = "https://rawscripts.net/raw/Ragdoll-Engine-ATOMIC-HUB-8295"},
    {Name = "سكربت ساندر", URL = "https://rawscripts.net/raw/Brookhaven-RP-Sander-XY-35845"},
    {Name = "سكربت Tiger", URL = "https://rawscripts.net/raw/Brookhaven-RP-Tiger-X-39488"},
    {Name = "سكربت رقصات AFEM", URL = "https://rawscripts.net/raw/Universal-Script-AFEM-14048"},
}

for _, script in pairs(scripts) do
    ScriptsTab:AddButton({
        Name = script.Name,
        Callback = function()
            loadstring(game:HttpGet(script.URL))()
            game.StarterGui:SetCore("SendNotification", {
                Title = "تم التشغيل ✅",
                Text = script.Name .. " شغال الآن",
                Duration = 3
            })
        end
    })
end

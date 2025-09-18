-- عنوان الـ Loader
shared.LoaderTitle = "جار تحميل السكربت عزيزي المستخدم";

-- Keyframes للتحميل
shared.LoaderKeyFrames = {
    [1] = {1, 20},
    [2] = {2, 50},
    [3] = {3, 80},
    [4] = {2, 100}
};

-- إعدادات الـ Loader
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),           -- الخلفية الأساسية للـ Frame
            Topic = Color3.fromRGB(255, 0, 0),        -- النصوص الصغيرة، مثل "Loader" أسفل العنوان
            Title = Color3.fromRGB(255, 0, 0),        -- النصوص الكبيرة، مثل عنوان Loader واسم المستخدم
            LoaderBackground = Color3.fromRGB(255, 255, 255),  -- خلفية شريط التقدم
            LoaderSplash = Color3.fromRGB(150, 0, 0)  -- لون شريط التقدم
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {1, 10},
        [2] = {2, 30},
        [3] = {3, 60},
        [4] = {2, 100}
    }
};

-- النصوص للخطوات
local v3 = {"", "", "", ""}

-- دالة لتشغيل Tween على أي عنصر
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end

-- دالة لإنشاء أي عنصر بسهولة
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end

-- دالة لإضافة UICorner لأي عنصر
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end

-- إنشاء ScreenGui رئيسي
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
})

-- إنشاء الإطار الرئيسي للـ Loader
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);

-- صورة المستخدم
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://89817528943349",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 55, 0, 55)
});
v4(25, v7);

-- اسم المستخدم
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "أهلاً وسهلاً عزيزي المستخدم",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,  -- أصبح أحمر
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});

-- نصوص صغيرة تحت العنوان
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,  -- أصبح أحمر
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});

-- عنوان الـ Loader
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,  -- أصبح أحمر
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});

-- الخلفية لشريط التقدم
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.85, 0, 0, 24)
});
v4(8, v11);

-- شريط التقدم نفسه
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);

-- نص الخطوات أسفل الـ Loader
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, -25),
    Size = UDim2.new(1, -20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,  -- أصبح أحمر
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});

-- دالة لتحديث نص الخطوة الحالية
function UpdateStepText(v191)
    v13.Text = v3[v191] or "";
end

-- دالة لتحديث نسبة شريط التقدم
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {Size = UDim2.new(v193 / 100, 0, 0, 24)});
    UpdateStepText(v194);
end

-- فتح الـ Loader تدريجياً
TweenObject(v6, 0.25, {Size = UDim2.new(0, 346, 0, 121)})
wait()
TweenObject(v9, 0.5, {TextTransparency = 0})
TweenObject(v10, 0.5, {TextTransparency = 0})
TweenObject(v11, 0.5, {BackgroundTransparency = 0})
TweenObject(v12, 0.5, {BackgroundTransparency = 0})

-- تنفيذ Keyframes للتقدم
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1])
    UpdatePercentage(v196[2], v195)
end

-- الوصول إلى 100%
UpdatePercentage(100, 4)

-- إخفاء النصوص وشريط التقدم بعد انتهاء التحميل
TweenObject(v9, 0.5, {TextTransparency = 1})
TweenObject(v10, 0.5, {TextTransparency = 1})
TweenObject(v11, 0.5, {BackgroundTransparency = 1})
TweenObject(v12, 0.5, {BackgroundTransparency = 1})
wait(0.5)
TweenObject(v6, 0.25, {Size = UDim2.new(0, 0, 0, 0)})
wait(0.25)
v5:Destroy()

-- تشغيل صوت عند انتهاء التحميل
local Sound = Instance.new("Sound", game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://100922953830446"
Sound:Play()

-- تغيير اسم الـ RolePlay وخصائصه
game:GetService("ReplicatedStorage").RE["1RPNam1eTex1t"]:FireServer("RolePlayName", "Script Xpolit Hub ‖ Brookhaven ‖ V0.1")

local args = {"PickingRPNameColor", Color3.fromRGB(255, 255, 255)}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))

local args = {"RolePlayBio", "المطور: ساموراي"}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

local args = {"PickingRPBioColor", Color3.fromRGB(255, 255, 255)}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))

loadstring(game:HttpGet("https://raw.githubusercontent.com/mustafatrxq/News7m/refs/heads/main/are.txt"))()

-- تعديل اسم السكربت للسيرفر
local boyName = "Script Xploit Hub ‖ Brookhaven ‖ Beta"
local args = { [1] = "RolePlayName", [2] = boyName }
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

-- النافذة الرئيسية
MakeWindow({
    Hub = {
        Title = "Xpolit Hub ‖ Brookhaven || V0.1",
        Animation = "يتم التحميل عزيزي المستخدم...."
    },
    Key = {
        KeySystem = false, -- مطفي
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            IncorrectKey = "The key is incorrect",
            CopyKeyLink = "Copied to Clipboard"
        }
    }
})

MinimizeButton({
  Image = "rbxassetid://123824180654162",
  Size = {40, 40},
  Color = Color3.fromRGB(255, 125, 0),
  Corner = true,
  Stroke = false,
  StrokeColor = Color3.fromRGB(255, 125, 0)
})

local ScriptInfoTab = MakeTab({
  Name = "االتحديثات,
  Image = "rbxassetid://10734885015",
  TabTitle = false
})

AddSection(Main, {"السكنات الصغيره"})

-- تبويب معلومات السكربت
local ScriptInfoTab = MakeTab({
  Name = "السيرفر والسكربت",
  Image = "rbxassetid://75529783306690",
  TabTitle = false
})

AddImageLabel(ScriptInfoTab, {
  Name = "قناة السكربت",
  Image = "rbxassetid://98549797253541"
})

AddButton(ScriptInfoTab, {
  Name = "انضم",
  Callback = function()
    setclipboard('https://t.me/hack_itzme')
    game.StarterGui:SetCore("SendNotification", {
      Title = "تم النسخ ✅",
      Text = "تم نسخ رابط القناة بنجاح!",
      Duration = 3
    })
  end
})

--========================
-- خدمات وروابط
--========================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")
local StarterGui = game:GetService("StarterGui")
local SoundService = game:GetService("SoundService")
local placeId = game.PlaceId

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Label = AddTextLabel(ScriptInfoTab,
  "User: " .. LocalPlayer.Name .. "\n" ..
  "Map: " .. game.PlaceId .. "\n" ..
  "Time: " .. os.date("%H:%M:%S")
)

task.spawn(function()
  while true do
    task.wait(1)
    Label.Update(
      "User: " .. LocalPlayer.Name .. "\n" ..
      "Map: " .. game.PlaceId .. "\n" ..
      "Time: " .. os.date("%H:%M:%S")
    )
  end
end)

--========================
-- الأصوات للإشعارات
--========================
local function PlaySound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://142376088" -- صوت لطيف
    sound.Volume = 0.7
    sound.PlaybackSpeed = 1
    sound.Parent = SoundService
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 5)
end

--========================
-- إشعارات دخول وخروج مع عدد اللاعبين
--========================
_G.NotificationsEnabled = false

local function ShowNotification(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 3
    })
end

Players.PlayerAdded:Connect(function(player)
    UpdateLabel()
    if _G.NotificationsEnabled then
        ShowNotification("✅ دخول لاعب", player.Name .. " دخل اللعبة\n👥 اصبح عدد اللاعبين: " .. #Players:GetPlayers(), 3)
        PlaySound()
    end
end)

Players.PlayerRemoving:Connect(function(player)
    UpdateLabel()
    if _G.NotificationsEnabled then
        ShowNotification("❌ خروج لاعب", player.Name .. " غادر اللعبة\n👥 اصبح عدد اللاعبين: " .. #Players:GetPlayers(), 3)
        PlaySound()
    end
end)

AddToggle(ScriptInfoTab, {
    Name = "اشعارات دخول وخروج",
    Default = false,
    Callback = function(Value)
        _G.NotificationsEnabled = Value
    end
})

AddButton(ScriptInfoTab, {
    Name = "اختبار الاشعارات",
    Callback = function()
        if _G.NotificationsEnabled then
            ShowNotification("🔔 اختبار", "العدد الحالي للاعبين: " .. #Players:GetPlayers(), 3)
            PlaySound()
        else
            print("⚠️ فعل خيار الاشعارات حتى تجربها.")
        end
    end
})

--========================
-- زر إعادة دخول السيرفر
--========================
AddButton(ScriptInfoTab, {
    Name = "اعادة دخول السيرفر",
    Callback = function()
        local currentJobId = game.JobId
        TeleportService:TeleportToPlaceInstance(placeId, currentJobId, LocalPlayer)
    end
})

local Main = MakeTab({
    Name = "الكشف",
    Image = "rbxassetid://126288298358369",
    TabTitle = false
})

local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Names = false

local Toggle = AddToggle(Main, {
  Name = "الكشف",
  Default = false,
  Callback = function(Value)
    ESP.Players = Value
  end
})

local Toggle = AddToggle(Main, {
  Name = "أسماء اللاعبين",
  Default = false,
  Callback = function(Value)
    ESP.Names = Value
  end
})
AddColorPicker(Main, {
  Name = "اللون",
  Default = Color3.fromRGB(255, 255, 0),
  Callback = function(Value)
    ESP.Color = Value
  end
})

-- تبويب المطورين
local DevelopersTab = MakeTab({
    Name = "المطورين",
    Image = "rbxassetid://75529783306690",
    TabTitle = false
})

AddButton(DevelopersTab, {
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

AddButton(DevelopersTab, {
    Name = "يوزر تيك توك المطور لـوكـاࢪد",
    Callback = function()
        setclipboard("@dmc_alucard")
        game.StarterGui:SetCore("SendNotification", {
            Title = "تم النسخ ✅",
            Text = "نسخت يوزر تيك توك المطور لـوكـاࢪد",
            Duration = 3
        })
    end
})

AddButton(DevelopersTab, {
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
local ScriptsTab = MakeTab({
    Name = "السكربتات",
    Image = "rbxassetid://118017437324495",
    TabTitle = false
})

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

AddButton(ScriptsTab, {
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

local ScriptInfoTab = MakeTab({
  Name = "شادرات",
  Image = "rbxassetid://75529783306690",
  TabTitle = false
})

local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")

-- حفظ القيم الأصلية للـ Lighting
local defaultLighting = {
    Ambient = Lighting.Ambient,
    OutdoorAmbient = Lighting.OutdoorAmbient,
    FogStart = Lighting.FogStart,
    FogEnd = Lighting.FogEnd,
    FogColor = Lighting.FogColor
}

local shaderList = {
    "شادر نيون وبرق أسطوري",
    "شادر RTX ونيون قوي",
    "شادر مخيف ودماء ف الماب",
    "جو شتاء اسطوري",
    "شادر غروب الشمس وضباب",
    "شادر غابة سحرية مع أشعة شمس",
    "شادر بحر هادئ وضبابي",
    "شادر فضائي مع توهج النجوم",
    "شادر نار مشتعلة وبخار",
    "شادر قوس قزح متوهج",
    "شادر ضباب ليلي",
    "شادر غابة ضبابية",
    "شادر غروب صحراوي",
    "شادر جليدي متلألئ",
    "شادر غابة ليزرية سحرية"
}

local selectedShader = shaderList[1]
local currentEffects = {}

-- DropDown
local shaderDropdown = AddDropdown(ScriptsTab, {
    Name = "اختر الشادر",
    Options = shaderList,
    Default = shaderList[1],
    Callback = function(value)
        selectedShader = value
    end
})

-- دالة لإعادة Lighting للوضع الافتراضي وحذف Effects القديمة
local function resetLighting()
    for _, effect in pairs(currentEffects) do
        if effect and effect.Parent then
            effect:Destroy()
        end
    end
    currentEffects = {}

    Lighting.Ambient = defaultLighting.Ambient
    Lighting.OutdoorAmbient = defaultLighting.OutdoorAmbient
    Lighting.FogStart = defaultLighting.FogStart
    Lighting.FogEnd = defaultLighting.FogEnd
    Lighting.FogColor = defaultLighting.FogColor
end

-- زر التطبيق
AddButton(ScriptsTab, {
    Name = "اضغط لتطبيق الشادر",
    Callback = function()
        if not selectedShader then
            warn("ياخي، اختار شادر أول")
            return
        end

        resetLighting() -- إزالة الشادر القديم

        -- تطبيق الشادر الجديد
        if selectedShader == "شادر نيون وبرق أسطوري" then
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 2
            bloom.Size = 24
            bloom.Threshold = 0.8
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)

        elseif selectedShader == "شادر RTX ونيون قوي" then
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 2.5
            bloom.Size = 40
            bloom.Threshold = 0.7
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)

            local sunrays = Instance.new("SunRaysEffect")
            sunrays.Intensity = 0.2
            sunrays.Spread = 0.7
            sunrays.Parent = Lighting
            table.insert(currentEffects, sunrays)

        elseif selectedShader == "شادر مخيف ودماء ف الماب" then
            local colorCorrection = Instance.new("ColorCorrectionEffect")
            colorCorrection.Contrast = 0.3
            colorCorrection.Brightness = -0.2
            colorCorrection.TintColor = Color3.fromRGB(100, 20, 20)
            colorCorrection.Saturation = -0.5
            colorCorrection.Parent = Lighting
            table.insert(currentEffects, colorCorrection)

            local blur = Instance.new("BlurEffect")
            blur.Size = 8
            blur.Parent = Lighting
            table.insert(currentEffects, blur)

        elseif selectedShader == "جو شتاء اسطوري" then
            Lighting.Ambient = Color3.fromRGB(150,190,220)
            Lighting.OutdoorAmbient = Color3.fromRGB(120,170,210)
            Lighting.FogColor = Color3.fromRGB(180,210,230)
            Lighting.FogStart = 50
            Lighting.FogEnd = 300

        elseif selectedShader == "شادر غروب الشمس وضباب" then
            Lighting.Ambient = Color3.fromRGB(255,150,100)
            Lighting.OutdoorAmbient = Color3.fromRGB(255,120,80)
            Lighting.FogStart = 30
            Lighting.FogEnd = 200

        elseif selectedShader == "شادر غابة سحرية مع أشعة شمس" then
            Lighting.Ambient = Color3.fromRGB(80,200,120)
            Lighting.OutdoorAmbient = Color3.fromRGB(60,180,100)
            local sunrays = Instance.new("SunRaysEffect")
            sunrays.Intensity = 0.3
            sunrays.Spread = 0.6
            sunrays.Parent = Lighting
            table.insert(currentEffects, sunrays)

        elseif selectedShader == "شادر بحر هادئ وضبابي" then
            Lighting.Ambient = Color3.fromRGB(100,150,255)
            Lighting.OutdoorAmbient = Color3.fromRGB(80,130,255)
            Lighting.FogStart = 20
            Lighting.FogEnd = 150

        elseif selectedShader == "شادر فضائي مع توهج النجوم" then
            Lighting.Ambient = Color3.fromRGB(120,80,200)
            Lighting.OutdoorAmbient = Color3.fromRGB(100,60,180)
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 1.5
            bloom.Size = 30
            bloom.Threshold = 0.7
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)

        elseif selectedShader == "شادر نار مشتعلة وبخار" then
            Lighting.Ambient = Color3.fromRGB(255,80,20)
            Lighting.OutdoorAmbient = Color3.fromRGB(255,60,0)
            local blur = Instance.new("BlurEffect")
            blur.Size = 5
            blur.Parent = Lighting
            table.insert(currentEffects, blur)

        elseif selectedShader == "شادر قوس قزح متوهج" then
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 2
            bloom.Size = 35
            bloom.Threshold = 0.6
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)

        elseif selectedShader == "شادر ضباب ليلي" then
            Lighting.Ambient = Color3.fromRGB(30,30,50)
            Lighting.OutdoorAmbient = Color3.fromRGB(20,20,40)
            Lighting.FogStart = 10
            Lighting.FogEnd = 100

        elseif selectedShader == "شادر غابة ضبابية" then
            Lighting.Ambient = Color3.fromRGB(40,80,40)
            Lighting.OutdoorAmbient = Color3.fromRGB(20,60,20)
            Lighting.FogStart = 20
            Lighting.FogEnd = 150

        elseif selectedShader == "شادر غروب صحراوي" then
            Lighting.Ambient = Color3.fromRGB(255,180,100)
            Lighting.OutdoorAmbient = Color3.fromRGB(255,150,80)
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 1.2
            bloom.Size = 25
            bloom.Threshold = 0.7
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)

        elseif selectedShader == "شادر جليدي متلألئ" then
            Lighting.Ambient = Color3.fromRGB(180,220,255)
            Lighting.OutdoorAmbient = Color3.fromRGB(150,200,255)
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 1
            bloom.Size = 20
            bloom.Threshold = 0.8
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)

        elseif selectedShader == "شادر غابة ليزرية سحرية" then
            Lighting.Ambient = Color3.fromRGB(100,200,150)
            Lighting.OutdoorAmbient = Color3.fromRGB(60,180,120)
            local bloom = Instance.new("BloomEffect")
            bloom.Intensity = 2
            bloom.Size = 30
            bloom.Threshold = 0.6
            bloom.Parent = Lighting
            table.insert(currentEffects, bloom)
        end

        print("تم تفعيل الشادر: " .. selectedShader)
    end
})

local Main = MakeTab({
    Name = "جميع اغراض السكن",
    Image = "rbxassetid://83107814722177",
    TabTitle = false
})

AddButton(ScriptsTab, {
    Name = "أداة نسخ سكن (ساموراي)",
    Callback = function()
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local LocalPlayer = Players.LocalPlayer

        local TOOL_NAME = "نسخ سكن (ساموراي)"
        local toolEquipped = false

        -- إنشاء الأداة إذا مو موجودة
        local backpack = LocalPlayer:WaitForChild("Backpack")
        if not backpack:FindFirstChild(TOOL_NAME) then
            local tool = Instance.new("Tool")
            tool.Name = TOOL_NAME
            tool.RequiresHandle = true

            local handle = Instance.new("Part")
            handle.Name = "Handle"
            handle.Size = Vector3.new(1,1,1)
            handle.Parent = tool

            tool.Equipped:Connect(function()
                toolEquipped = true
            end)
            tool.Unequipped:Connect(function()
                toolEquipped = false
            end)

            tool.Parent = backpack
        end

        -- دالة نسخ السكن
        local function CopySkin(TargetPlayer)
            if not TargetPlayer or TargetPlayer == LocalPlayer then return end
            local LChar = LocalPlayer.Character
            local TChar = TargetPlayer.Character
            if not LChar or not TChar then return end

            local LHumanoid = LChar:FindFirstChildOfClass("Humanoid")
            local THumanoid = TChar:FindFirstChildOfClass("Humanoid")
            if not LHumanoid or not THumanoid then return end

            local Remotes = ReplicatedStorage:WaitForChild("Remotes")

            -- نسخ الجسم
            local PDesc = THumanoid:GetAppliedDescription()
            local argsBody = {
                [1] = {PDesc.Torso, PDesc.RightArm, PDesc.LeftArm, PDesc.RightLeg, PDesc.LeftLeg, PDesc.Head}
            }
            Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
            task.wait(0.3)

            -- نسخ الملابس والإكسسوارات
            if tonumber(PDesc.Shirt) then Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt)) task.wait(0.2) end
            if tonumber(PDesc.Pants) then Remotes.Wear:InvokeServer(tonumber(PDesc.Pants)) task.wait(0.2) end
            if tonumber(PDesc.Face) then Remotes.Wear:InvokeServer(tonumber(PDesc.Face)) task.wait(0.2) end

            for _, v in ipairs(PDesc:GetAccessories(true)) do
                if v.AssetId and tonumber(v.AssetId) then
                    Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                    task.wait(0.2)
                end
            end

            -- نسخ لون البشرة
            local SkinColor = TChar:FindFirstChild("Body Colors")
            if SkinColor then
                Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor))
            end

            -- نسخ الاسم والسيرة ولونهم
            local Bag = TargetPlayer:FindFirstChild("PlayersBag")
            if Bag then
                if Bag:FindFirstChild("RPName") and Bag.RPName.Value ~= "" then
                    Remotes.RPNameText:FireServer("RolePlayName", Bag.RPName.Value)
                end
                if Bag:FindFirstChild("RPBio") and Bag.RPBio.Value ~= "" then
                    Remotes.RPNameText:FireServer("RolePlayBio", Bag.RPBio.Value)
                end
                if Bag:FindFirstChild("RPNameColor") then
                    Remotes.RPNameColor:FireServer("PickingRPNameColor", Bag.RPNameColor.Value)
                end
                if Bag:FindFirstChild("RPBioColor") then
                    Remotes.RPNameColor:FireServer("PickingRPBioColor", Bag.RPBioColor.Value)
                end
            end
        end

        -- استخدام Mouse Click بدل Touched
        local mouse = LocalPlayer:GetMouse()
        mouse.Button1Down:Connect(function()
            if not toolEquipped then return end
            local targetPart = mouse.Target
            if not targetPart then return end

            local player = Players:GetPlayerFromCharacter(targetPart.Parent)
            if not player then
                -- حاول نطلع للأب الأعلى 5 مرات إذا ما لقينا اللاعب مباشرة
                local parent = targetPart.Parent
                for i = 1,5 do
                    if parent.Parent then
                        parent = parent.Parent
                        player = Players:GetPlayerFromCharacter(parent)
                        if player then break end
                    end
                end
            end

            if player then
                CopySkin(player)
                -- إشعار على الشاشة
                game.StarterGui:SetCore("SendNotification", {
                    Title = "نسخ سكن (ساموراي)",
                    Text = "تم نسخ سكن اللاعب: "..player.Name,
                    Duration = 3
                })
            end
        end)
    end
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

local Target = nil

-- Function to get player names
local function GetPlayerNames()
    local PlayerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(PlayerNames, player.Name)
    end
    return PlayerNames
end

-- Player selection dropdown
local Dropdown = AddDropdown(ScriptsTab, {
    Name = "اختيار لاعب",
    Options = GetPlayerNames(),
    Default = Target,
    Callback = function(Value)
        Target = Value
    end
})

-- Update dropdown options when someone joins or leaves
local function UpdateDropdown()
    Dropdown:Refresh(GetPlayerNames(), true)
end

Players.PlayerAdded:Connect(UpdateDropdown)
Players.PlayerRemoving:Connect(UpdateDropdown)

AddButton(ScriptsTab, {
    Name = "نسخ سكن",
    Callback = function()
        if not Target then return end

        local LP = Players.LocalPlayer
        local LChar = LP.Character
        local TPlayer = Players:FindFirstChild(Target)

        if TPlayer and TPlayer.Character then
            local LHumanoid = LChar and LChar:FindFirstChildOfClass("Humanoid")
            local THumanoid = TPlayer.Character:FindFirstChildOfClass("Humanoid")

            if LHumanoid and THumanoid then
                -- RESET LOCALPLAYER
                local LDesc = LHumanoid:GetAppliedDescription()

                -- Remove current accessories, clothes, and face
                for _, acc in ipairs(LDesc:GetAccessories(true)) do
                    if acc.AssetId and tonumber(acc.AssetId) then
                        Remotes.Wear:InvokeServer(tonumber(acc.AssetId))
                        task.wait(0.2)
                    end
                end

                if tonumber(LDesc.Shirt) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Shirt))
                    task.wait(0.2)
                end

                if tonumber(LDesc.Pants) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Pants))
                    task.wait(0.2)
                end

                if tonumber(LDesc.Face) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Face))
                    task.wait(0.2)
                end

                -- COPY FROM TARGET PLAYER
                local PDesc = THumanoid:GetAppliedDescription()

                -- Send body parts
                local argsBody = {
                    [1] = {
                        [1] = PDesc.Torso,
                        [2] = PDesc.RightArm,
                        [3] = PDesc.LeftArm,
                        [4] = PDesc.RightLeg,
                        [5] = PDesc.LeftLeg,
                        [6] = PDesc.Head
                    }
                }
                Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
                task.wait(0.5)

                if tonumber(PDesc.Shirt) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt))
                    task.wait(0.3)
                end

                if tonumber(PDesc.Pants) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Pants))
                    task.wait(0.3)
                end

                if tonumber(PDesc.Face) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Face))
                    task.wait(0.3)
                end

                for _, v in ipairs(PDesc:GetAccessories(true)) do
                    if v.AssetId and tonumber(v.AssetId) then
                        Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                        task.wait(0.3)
                    end
                end

                local SkinColor = TPlayer.Character:FindFirstChild("Body Colors")
                if SkinColor then
                    Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor))
                    task.wait(0.3)
                end

                if tonumber(PDesc.IdleAnimation) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.IdleAnimation))
                    task.wait(0.3)
                end

                -- Name, bio, and color
                local Bag = TPlayer:FindFirstChild("PlayersBag")
                if Bag then
                    if Bag:FindFirstChild("RPName") and Bag.RPName.Value ~= "" then
                        Remotes.RPNameText:FireServer("RolePlayName", Bag.RPName.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPBio") and Bag.RPBio.Value ~= "" then
                        Remotes.RPNameText:FireServer("RolePlayBio", Bag.RPBio.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPNameColor") then
                        Remotes.RPNameColor:FireServer("PickingRPNameColor", Bag.RPNameColor.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPBioColor") then
                        Remotes.RPNameColor:FireServer("PickingRPBioColor", Bag.RPBioColor.Value)
                        task.wait(0.3)
                    end
                end
            end
        end
    end
})

AddSection(Main, {"الأكسسوارات من المطور نوكيا"})

-- قائمة العناصر بأسماء صحيحة وواضحة باللهجة العربية (سعودي / عراقي)
local itemList = {
    "قبعة بنفسجية",
    "نوب مع أيفكت ساعات",
    "أجنحة ذهبية مع لمعان ذهبي",
    "جمجمة زرقاء مشتعلة",
    "حاصد أرواح ضبابي",
    "مسدس ماء",
    "شيطان يطلق نار",
    "شيبس مشتعل",
    "سفينة فضاء تطلق إشعاع",
    "فراشة بنية",
    "فراشة وردية",
    "فراشة خضراء",
    "فراشة ثلجية",
    "رأس اليقطين الأزرق مشتعل",
    "رأس اليقطين الأخضر مشتعل",
    "أجنحة بيضاء تتوهج",
    "قرنان أحمران مشتعلة",
    "قرنان أصفران مشتعلة",
    "أربع جماجم متوهجة",
    "رمح ريبر زهري",
    "أخطبوط يطلق حبر زهري",
    "خوذة زهري تتحرك",
    "سيف أحمر نادر",
    "شعر مشتعل نار",
    "زهرة تتحرك في الظهر نادرة",
    "جماجم تطلق نار حولك",
    "سلاح يطلق أشعة",
    "سيف نار",
    "سيف نجوم",
    "دجاجة تطلق ليزر",
    "سيف الخبز",
    "صولجان",
    "فأس 1",
    "فأس 2",
    "سيف اصفر",
    "سيف احمر",
    "ملعقه حمراء",
    "مسدس فضائي",
    "بخاخ اصفر",
    "بخاخ بنفسجي",
    "صولجان عليه ألماسه",
    "صولجان ذهبي"
}

local itemIDs = {
    ["قبعة بنفسجية"] = 16088338699,
    ["نوب مع أيفكت ساعات"] = 14901241425,
    ["أجنحة ذهبية مع لمعان ذهبي"] = 417456127,
    ["جمجمة زرقاء مشتعلة"] = 102887469225690,
    ["حاصد أرواح ضبابي"] = 95188146402423,
    ["مسدس ماء"] = 16972562122,
    ["شيطان يطلق نار"] = 14228725502,
    ["شيبس مشتعل"] = 15316834620,
    ["سفينة فضاء تطلق إشعاع"] = 8151404994,
    ["فراشة بنية"] = 128217885,
    ["فراشة وردية"] = 150381051,
    ["فراشة خضراء"] = 226189871,
    ["فراشة ثلجية"] = 141742418,
    ["رأس اليقطين الأزرق مشتعل"] = 183468963,
    ["رأس اليقطين الأخضر مشتعل"] = 132809431,
    ["أجنحة بيضاء تتوهج"] = 192557913,
    ["قرنان أحمران مشتعلة"] = 215718515,
    ["قرنان أصفران مشتعلة"] = 233705354,
    ["أربع جماجم متوهجة"] = 14524326503,
    ["رمح ريبر زهري"] = 17756281756,
    ["أخطبوط يطلق حبر زهري"] = 115894210504764,
    ["خوذة زهري تتحرك"] = 17756304457,
    ["سيف أحمر نادر"] = 5722175994,
    ["شعر مشتعل نار"] = 191101707,
    ["زهرة تتحرك في الظهر نادرة"] = 15121280255,
    ["جماجم تطلق نار حولك"] = 527364921,
    ["سلاح يطلق أشعة"] = 18431445072,
    ["سيف نار"] = 4790788200,
    ["سيف نجوم"] = 18431436143,
    ["دجاجة تطلق ليزر"] = 18934746119,
    ["سيف الخبز"] = 3052700547,
    ["صولجان"] = 3141364957,
    ["فأس 1"] = 3131064293,
    ["فأس 2"] = 3240543366,
    ["سيف اصفر"] = 3343204006,
    ["سيف احمر"] = 5722175994,
    ["ملعقه حمراء"] = 3381195240,
    ["مسدس فضائي"] = 3013849063,
    ["بخاخ اصفر"] = 2936950534,
    ["بخاخ بنفسجي"] = 4026739846,
    ["صولجان عليه ألماسه"] = 3210526113,
    ["صولجان ذهبي"] = 3241238974
}

-- الدروب داون
local selectedItem = itemList[1]
local itemDropdown = AddDropdown(ScriptsTab, {
    Name = "اختر العنصر",
    Options = itemList,
    Default = itemList[1],
    Callback = function(value)
        selectedItem = value
    end
})

-- زر الاستخدام
AddButton(ScriptsTab, {
    Name = "اضغط واستخدم العنصر",
    Callback = function()
        if not selectedItem then
            warn("ياخي، اختار شي أول")
            return
        end

        local args = {itemIDs[selectedItem]}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9)
            :WaitForChild("Wear",9e9):InvokeServer(unpack(args))
    end
})

AddSection(Main, {"السكنات الصغيره"})

local skins = {
    ["القزم"] = {14579958702,14579959062,14579959191,14579959249,14579963667,1},
    ["قزم2"] = {18599265011,18599265151,18599265190,18599265270,18599264796,1}
}

local selectedSkin = "القزم"
local ddSkins = AddDropdown(ScriptsTab, {
    Name = "اختر السكن",
    Options = {"القزم","القزم2"},
    Default = "القزم",
    Callback = function(value)
        selectedSkin = value
    end
})

AddButton(ScriptsTab, {
    Name = "استخدم السكن",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(skins[selectedSkin])
    end
})

local bodies = {
    ["جسم بنت"] = {15539008532,15539008875,15539008680,15539008795,15539011945,1},
    ["جسم بنت ضعيف خصر"] = {74302534603111,76683091425509,75159926897589,1,1,1},
    ["جسم ولد"] = {17754346388,1,1,1,1,1},
    ["جسم ولد ضعيف"] = {92757812011061,99519402284266,115905570886697,1,1,1}
}

local selectedBody = "جسم بنت"
local ddBodies = AddDropdown(ScriptsTab, {
    Name = "اختر الجسم",
    Options = {"جسم بنت","جسم بنت ضعيف خصر","جسم ولد","جسم ولد ضعيف"},
    Default = "جسم بنت",
    Callback = function(value)
        selectedBody = value
    end
})

AddButton(ScriptsTab, {
    Name = "استخدم الجسم",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(bodies[selectedBody])
    end
})

local heads = {
    ["رأس مخفي"] = 134082579,
    ["راس روبوت"] = 3210773801
}

local selectedHead = "رأس مخفي"
local ddHeads = AddDropdown(ScriptsTab, {
    Name = "اختر الرأس",
    Options = {"رأس مخفي", "راس روبوت"},
    Default = "رأس مخفي",
    Callback = function(value)
        selectedHead = value
    end
})

AddButton(ScriptsTab, {
    Name = "استخدم الرأس",
    Callback = function()
        local headID = heads[selectedHead]
        game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(headID)
    end
})

local legs = {
    ["رجل مقطوعه"] = {1,1,1,139607718,1,1},
    ["رجل حديدة"] = {1,1,1,17500249989,1,1},
    ["رجل العظام الرصاصي"] = {1,1,1,17500249989,1,1},
    ["رجل العظام السود"] = {1,1,1,14547162578,1,1}
}

local selectedLeg = "رجل مقطوعه"
local ddLegs = AddDropdown(ScriptsTab, {
    Name = "اختر الرجل",
    Options = {"رجل مقطوعه", "رجل حديدة", "رجل العظام الرصاصي", "رجل العظام السود"},
    Default = "رجل مقطوعه",
    Callback = function(value)
        selectedLeg = value
    end
})

AddButton(ScriptsTab, {
    Name = "استخدم الرجل",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(legs[selectedLeg])
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteEvent = ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r")

local Main = MakeTab({
    Name = "ترول",
    Image = "rbxassetid://87060218582359",
    TabTitle = false
})

-- دالة لجلب أسماء اللاعبين الآخرين
local function GetOtherPlayerNames()
    local names = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    return names
end

---------------------------
-- قسم القتلات (Kills) --
---------------------------

AddSection(Main, {"القتلات"})

-- إنشاء Dropdowns لاختيار اللاعبين مع خيارات أولية
local killTargets = GetOtherPlayerNames()

local selectedKillTarget = killTargets[1]
local killDropdown = AddDropdown(Main, {
    Name = "اختر الضحية",
    Options = killTargets,
    Default = killTargets[1] or "",
    Callback = function(value)
        selectedKillTarget = value
    end
})

local selectedBigBoatTarget = killTargets[1]
local bigBoatDropdown = AddDropdown(Main, {
    Name = "اختر لاعب للسفينة الكبيرة",
    Options = killTargets,
    Default = killTargets[1] or "",
    Callback = function(value)
        selectedBigBoatTarget = value
    end
})

local selectedBusTarget = killTargets[1]
local busDropdown = AddDropdown(Main, {
    Name = "اختر لاعب للباص",
    Options = killTargets,
    Default = killTargets[1] or "",
    Callback = function(value)
        selectedBusTarget = value
    end
})

-- دالة لتحديث القوائم في قسم القتلات
local function UpdateKillDropdowns()
    local newOptions = GetOtherPlayerNames()
    if killDropdown.UpdateOptions then
        killDropdown:UpdateOptions(newOptions)
        bigBoatDropdown:UpdateOptions(newOptions)
        busDropdown:UpdateOptions(newOptions)
    else
        -- لو مكتبة الـ UI ما تدعم UpdateOptions
        -- يمكن تعيد إنشاء الـ Dropdowns هنا (مع حذف القديمة)
        -- اخبرني اذا تحتاج هذا الحل
    end

    if #newOptions > 0 then
        selectedKillTarget = newOptions[1]
        selectedBigBoatTarget = newOptions[1]
        selectedBusTarget = newOptions[1]
    else
        selectedKillTarget = nil
        selectedBigBoatTarget = nil
        selectedBusTarget = nil
    end

    ShowListUpdatedNotification()
end

-- تحديث القوائم عند دخول أو خروج لاعب
Players.PlayerAdded:Connect(UpdateKillDropdowns)
Players.PlayerRemoving:Connect(UpdateKillDropdowns)

-- زر "القتل بالسفينة"
AddButton(Main, {
    Name = "القتل بالسفينه",
    Callback = function()
        if not selectedKillTarget then
            warn("لم يتم اختيار لاعب")
            return
        end

        MakeNotifi({
            Title = "تم التشغيل",
            Text = "لا تفعل الامر اكثر من مره",
            Time = 5
        })

        local targetPlayer = Players:FindFirstChild(selectedKillTarget)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local originalPosition = humanoidRootPart.Position
            local originalAnchoredState = humanoidRootPart.Anchored

            humanoidRootPart.CFrame = CFrame.new(634.18, -4.00, 1839.65)
            wait(0.5)

            local args = {
                "PickingBoat",
                "MilitaryBoatFree"
            }
            RemoteEvent:FireServer(unpack(args))
            wait(1.5)

            local function sitInBoat()
                local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
                if not vehicle then return end

                local vehicleSeat = vehicle.Body:FindFirstChild("VehicleSeat")
                if not vehicleSeat then return end

                humanoidRootPart.Anchored = false
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                wait(0.2)

                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                wait(0.2)

                humanoid.Sit = true
                firetouchinterest(humanoidRootPart, vehicleSeat, 0)
                firetouchinterest(humanoidRootPart, vehicleSeat, 1)
                wait(0.5)

                if humanoid.SeatPart ~= vehicleSeat then
                    humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                    humanoid.Sit = true
                    wait(0.5)
                end
            end

            sitInBoat()
            wait(0.5)

            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")

            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0)))
                humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))

                local crazyStart = tick()
                while tick() - crazyStart < 2 do
                    local offset = Vector3.new(
                        math.random(-25, 12),
                        math.random(-13, 10),
                        math.random(-10, 18)
                    )
                    vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                    wait(0.05)
                end
            end

            local targetDestination = Vector3.new(-86.00, -224.27, 34.57)
            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetDestination))
                humanoidRootPart.CFrame = CFrame.new(targetDestination + Vector3.new(0, 5, 0))
            end

            wait(1)
            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            if vehicle then
                vehicle:Destroy()
            end

            wait(0.5)
            humanoidRootPart.CFrame = CFrame.new(originalPosition)
            humanoidRootPart.Anchored = originalAnchoredState
            humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

            local finalArgs = {
                [1] = "PickingBoat",
                [2] = "MilitaryBoatFree"
            }
            RemoteEvent:FireServer(unpack(finalArgs))

            wait(0.5)
            local deleteArgs = {
                [1] = "DeleteAllVehicles"
            }
            RemoteEvent:FireServer(unpack(deleteArgs))
        else
            warn("اللاعب غير موجود أو لا يملك الشخصية")
        end
    end
})

local crazyFollow = false
local followConnection

AddButton(Main, {
    Name = "الصمله بالسفينه",
    Callback = function()
        if not selectedKillTarget then
            warn("لم يتم اختيار لاعب")
            return
        end

        local targetPlayer = Players:FindFirstChild(selectedKillTarget)
        if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            warn("اللاعب غير موجود")
            return
        end

        crazyFollow = not crazyFollow

        if crazyFollow then
            MakeNotifi({
                Title = "الصمله اشتغلت ✅",
                Text = "السفينه رح تبقى ويا اللاعب",
                Time = 5
            })

            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            -- روح لمكان spawn
            humanoidRootPart.CFrame = CFrame.new(634.18, -4.00, 1839.65)
            task.wait(0.5)

            -- Spawn سفينة
            RemoteEvent:FireServer("PickingBoat","MilitaryBoatFree")
            task.wait(1.5)

            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
            if not vehicle then
                warn("ما لكيت السفينة")
                return
            end

            -- اجلس بيها
            local vehicleSeat = vehicle.Body:FindFirstChild("VehicleSeat")
            if vehicleSeat then
                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                humanoid.Sit = true
                firetouchinterest(humanoidRootPart, vehicleSeat, 0)
                firetouchinterest(humanoidRootPart, vehicleSeat, 1)
            end

            -- الصمله: السفينة تضل تفتر حوالين الهدف
            followConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if not crazyFollow then return end
                if not vehicle or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then return end

                local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
                local offset = Vector3.new(
                    math.random(-20,20),
                    math.random(-5,5),
                    math.random(-20,20)
                )

                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
            end)

        else
            MakeNotifi({
                Title = "الصمله انطفت ❌",
                Text = "تم حذف السفينة",
                Time = 5
            })

            if followConnection then
                followConnection:Disconnect()
                followConnection = nil
            end

            RemoteEvent:FireServer("DeleteAllVehicles")
        end
    end
})

-- زر "قتل بالسفينة الكبيرة"
AddButton(Main, {
    Name = "قتل بالسفينه الكبيره",
    Callback = function()
        if not selectedBigBoatTarget then
            warn("لم يتم اختيار لاعب")
            return
        end

        MakeNotifi({
            Title = "تم التشغيل",
            Text = "لا تفعل الامر اكثر من مره",
            Time = 5
        })

        local targetPlayer = Players:FindFirstChild(selectedBigBoatTarget)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local originalPosition = humanoidRootPart.Position
            local originalAnchoredState = humanoidRootPart.Anchored

            humanoidRootPart.CFrame = CFrame.new(634.18, -4.00, 1839.65)
            wait(0.5)

            local args = {
                "PickingBoat",
                "PirateFree"
            }
            RemoteEvent:FireServer(unpack(args))
            wait(1.5)

            local function sitInBoat()
                local vehicleModel = workspace.Vehicles:FindFirstChild("doctonbcCar")
                if not vehicleModel then return end

                local vehicleSeat = vehicleModel.Body and vehicleModel.Body:FindFirstChild("VehicleSeat")
                if not vehicleSeat then return end

                humanoidRootPart.Anchored = false
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                wait(0.2)

                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                wait(0.2)

                humanoid.Sit = true
                firetouchinterest(humanoidRootPart, vehicleSeat, 0)
                firetouchinterest(humanoidRootPart, vehicleSeat, 1)
                wait(0.5)

                if humanoid.SeatPart ~= vehicleSeat then
                    humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                    humanoid.Sit = true
                    wait(0.5)
                end
            end

            sitInBoat()
            wait(0.5)

            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")

            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0)))
                humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))

                local crazyStart = tick()
                while tick() - crazyStart < 2 do
                    local offset = Vector3.new(
                        math.random(-25, 12),
                        math.random(-13, 10),
                        math.random(-10, 18)
                    )
                    vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                    wait(0.05)
                end
            end

            local targetDestination = Vector3.new(-86.00, -224.27, 34.57)
            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetDestination))
                humanoidRootPart.CFrame = CFrame.new(targetDestination + Vector3.new(0, 5, 0))
            end

            wait(0.5)
            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            if vehicle then
                vehicle:Destroy()
            end

            wait(0.5)
            humanoidRootPart.CFrame = CFrame.new(originalPosition)
            humanoidRootPart.Anchored = originalAnchoredState
            humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

            local finalArgs = {
                [1] = "PickingBoat",
                [2] = "PirateFree"
            }
            RemoteEvent:FireServer(unpack(finalArgs))

            wait(0.5)
            local deleteArgs = {
                [1] = "DeleteAllVehicles"
            }
            RemoteEvent:FireServer(unpack(deleteArgs))
        else
            warn("اللاعب غير موجود أو لا يملك الشخصية")
        end
    end
})

local bigBoatFollow = false
local followConnection

AddButton(Main, {
    Name = "صمله بالسفينة الكبيرة",
    Callback = function()
        if not selectedBigBoatTarget then
            warn("اختر لاعبًا أولًا")
            return
        end

        local targetPlayer = Players:FindFirstChild(selectedBigBoatTarget)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو لم يُحمّل")
            return
        end

        bigBoatFollow = not bigBoatFollow

        if bigBoatFollow then
            MakeNotifi({
                Title = "الصملة بالسفينة الكبيرة ✅",
                Text = "السفينة الكبيرة رح تبقى تلحق اللاعب",
                Time = 5
            })

            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            -- موقع spawn السفينة الكبيرة
            humanoidRootPart.CFrame = CFrame.new(634.18, -4.00, 1839.65)
            task.wait(0.5)

            RemoteEvent:FireServer("PickingBoat","PirateFree")
            task.wait(1.5)

            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
            if not vehicle then
                warn("لم يتم إيجاد السفينة الكبيرة")
                return
            end

            -- الصملة: السفينة الكبيرة تظل تلحق اللاعب
            followConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if not bigBoatFollow then return end
                if not vehicle or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then return end

                local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
                local offset = Vector3.new(
                    math.random(-25,25),
                    math.random(-5,5),
                    math.random(-25,25)
                )

                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0,-2,0) + offset))
            end)

        else
            MakeNotifi({
                Title = "الصملة بالسفينة الكبيرة ❌",
                Text = "تم إيقاف السفينة الكبيرة",
                Time = 5
            })

            if followConnection then
                followConnection:Disconnect()
                followConnection = nil
            end

            RemoteEvent:FireServer("DeleteAllVehicles")
        end
    end
})

-- زر "قتل بالباص"
AddButton(Main, {
    Name = "قتل بالباص",
    Callback = function()
        if not selectedBusTarget then
            warn("اختر لاعبًا أولًا")
            return
        end

        local targetPlayer = Players:FindFirstChild(selectedBusTarget)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو لم يُحمّل")
            return
        end

        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local originalPosition = humanoidRootPart.Position
        local originalAnchoredState = humanoidRootPart.Anchored

        humanoidRootPart.CFrame = CFrame.new(1082.86, 76.00, -1125.20)
        wait(0.3)

        local spawnArgs = {
            [1] = "PickingCar",
            [2] = "SchoolBus"
        }
        RemoteEvent:FireServer(unpack(spawnArgs))
        wait(3.5)

        local function sitInBus()
            local vehicleName = LocalPlayer.Name .. "Car"
            local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)
            if not vehicle then return false end

            local vehicleSeat = vehicle.Body and vehicle.Body:FindFirstChild("VehicleSeat")
            if not vehicleSeat then return false end

            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
            wait(0.15)

            humanoid.Sit = true
            firetouchinterest(humanoidRootPart, vehicleSeat, 0)
            firetouchinterest(humanoidRootPart, vehicleSeat, 1)
            wait(0.3)

            if humanoid.SeatPart ~= vehicleSeat then
                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
                humanoid.Sit = true
                wait(0.3)
            end

            return humanoid.SeatPart == vehicleSeat
        end

        if not sitInBus() then return end

        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
        local vehicleName = LocalPlayer.Name .. "Car"
        local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)

        if vehicle then
            local crazyStart = tick()
            while tick() - crazyStart < 2.5 do
                local offset = Vector3.new(
                    math.random(-25, 12),
                    math.random(-13, 10),
                    math.random(-10, 18)
                )
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                wait(0.04)
            end
        end

        local targetDestination = Vector3.new(-86.00, -224.27, 34.57)
        if vehicle then
            vehicle:SetPrimaryPartCFrame(CFrame.new(targetDestination))
            humanoidRootPart.CFrame = CFrame.new(targetDestination + Vector3.new(0, 3, 0))
        end

        wait(0.3)
        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

        local deleteArgs = {
            [1] = "DeleteAllVehicles"
        }
        RemoteEvent:FireServer(unpack(deleteArgs))

        wait(0.2)
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
        humanoidRootPart.Anchored = originalAnchoredState
        humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
})

local busFollow = false
local followConnection

-- زر صملة الباص
AddButton(Main, {
    Name = "صمله بالباص",
    Callback = function()
        if not selectedBusTarget then
            warn("اختر لاعبًا أولًا")
            return
        end

        local targetPlayer = Players:FindFirstChild(selectedBusTarget)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو لم يُحمّل")
            return
        end

        busFollow = not busFollow

        if busFollow then
            MakeNotifi({
                Title = "الصملة بالباص ✅",
                Text = "الباص رح يبقى يلاحق اللاعب",
                Time = 5
            })

            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            -- موقع spawn الباص
            humanoidRootPart.CFrame = CFrame.new(1082.86, 76.00, -1125.20)
            task.wait(0.3)

            RemoteEvent:FireServer("PickingCar", "SchoolBus")
            task.wait(3.5)

            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
            if not vehicle then
                warn("لم يتم إيجاد الباص")
                return
            end

            -- الصملة: الباص يظل يلاحق اللاعب
            followConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if not busFollow then return end
                if not vehicle or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then return end

                local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
                local offset = Vector3.new(
                    math.random(-20,20),
                    math.random(-5,5),
                    math.random(-20,20)
                )

                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
            end)

        else
            MakeNotifi({
                Title = "الصملة بالباص ❌",
                Text = "تم إيقاف الباص",
                Time = 5
            })

            if followConnection then
                followConnection:Disconnect()
                followConnection = nil
            end

            RemoteEvent:FireServer("DeleteAllVehicles")
        end
    end
})

AddSection(Main, {"الضعيف"})

----------------------------
-- قسم الفلنجات (Dragging) --
----------------------------

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local RemoteEvent = ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r")

local selectedDragTarget = nil

-- دالة تجيب أسماء اللاعبين بدون اللاعب المحلي
local function GetOtherPlayerNames()
    local list = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(list, player.Name)
        end
    end
    return list
end

-- قائمة اللاعبين للمثال (تحدثها حسب حاجتك)
local killTargets = GetOtherPlayerNames()
selectedDragTarget = killTargets[1]

-- تحديث قائمة اللاعب في Dropdown (مفترض عندك Dropdown معرفة)
local function UpdateDragDropdown()
    local newOptions = GetOtherPlayerNames()
    if dragDropdown and dragDropdown.UpdateOptions then
        dragDropdown:UpdateOptions(newOptions)
    end

    if #newOptions > 0 then
        selectedDragTarget = newOptions[1]
    else
        selectedDragTarget = nil
    end

    -- عرض اشعار تحديث القائمة (مفترض عندك دالة MakeNotifi أو مشابهة)
    MakeNotifi({
        Title = "تم تحديث القائمة",
        Text = "القائمة تحدثت تلقائياً",
        Time = 3
    })
end

-- استدعاء تحديث القائمة عند دخول او خروج لاعب
Players.PlayerAdded:Connect(UpdateDragDropdown)
Players.PlayerRemoving:Connect(UpdateDragDropdown)

-- زر أخذ الكنبة (يبقى كما هو)
AddButton(Main, {
    Name = "أخذ الكنبة",
    Callback = function()
        local args = {
            [1] = "PickingTools",
            [2] = "Couch"
        }
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
    end
})

-- زر سحب اللاعب بالباص مع استدعاء الباص تلقائي
AddButton(Main, {
    Name = "سحب بالباص",
    Callback = function()
        if not selectedDragTarget then
            warn("اختر لاعبًا أولًا")
            return
        end

        local targetPlayer = Players:FindFirstChild(selectedDragTarget)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو لم يُحمّل")
            return
        end

        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local originalPosition = humanoidRootPart.Position
        local originalAnchoredState = humanoidRootPart.Anchored

        -- إحداثيات استدعاء الباص (الأصلية)
        local busSpawnPosition = CFrame.new(1082.86, 76.00, -1125.20)

        humanoidRootPart.CFrame = busSpawnPosition
        wait(0.3)

        -- استدعاء الباص من الريموت
        local spawnArgs = {
            [1] = "PickingCar",
            [2] = "SchoolBus"
        }
        RemoteEvent:FireServer(unpack(spawnArgs))
        wait(3.5) -- ننتظر حتى يتم استدعاء السيارة

        -- جلب السيارة بعد استدعائها
        local vehicleName = LocalPlayer.Name .. "Car"
        local vehicle = Workspace.Vehicles:FindFirstChild(vehicleName)

        if not vehicle then
            warn("السيارة لم تستدعَ بنجاح")
            return
        end

        local vehicleSeat = vehicle.Body and vehicle.Body:FindFirstChild("VehicleSeat")
        if not vehicleSeat then
            warn("مقعد السيارة غير موجود")
            return
        end

        -- الجلوس في الباص
        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

        humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
        wait(0.15)

        humanoid.Sit = true
        firetouchinterest(humanoidRootPart, vehicleSeat, 0)
        firetouchinterest(humanoidRootPart, vehicleSeat, 1)
        wait(0.3)

        if humanoid.SeatPart ~= vehicleSeat then
            humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
            humanoid.Sit = true
            wait(0.3)
        end

        -- موقع الهدف
        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position

        -- نبدأ بتحريك الباص نحو اللاعب
        local crazyStart = tick()
        while tick() - crazyStart < 2.5 do
            local offset = Vector3.new(
                math.random(-25, 12),
                math.random(-13, 10),
                math.random(-10, 18)
            )
            vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
            wait(0.04)
        end

        -- نرجع السيارة للنقطة الأصلية
        vehicle:SetPrimaryPartCFrame(busSpawnPosition)
        humanoidRootPart.CFrame = busSpawnPosition + Vector3.new(0, 3, 0)

        wait(0.3)
        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

        -- مسح كل المركبات
        local deleteArgs = {
            [1] = "DeleteAllVehicles"
        }
        RemoteEvent:FireServer(unpack(deleteArgs))

        wait(0.2)
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
        humanoidRootPart.Anchored = originalAnchoredState
        humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
})

-- زر قتل اللاعب بالكنبة مع فلنج قصير ثم يأخذه تحت الماب ويرجعه
AddButton(ScriptsTab, {
    Name = "لمس فلنق بلكنبة",
    Callback = function()
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local world = game:GetService("Workspace")
local userInput = game:GetService("UserInputService")

local localPlayer = players.LocalPlayer
local camera = world.CurrentCamera

local TOOL_NAME = "Click Kill Couch"
local toolEquipped = false
local targetName = nil
local tpLoop = nil
local couchEquipped = false
local basePart = nil
local initialPos = nil
local rootPart = nil

local backpack = localPlayer:WaitForChild("Backpack")
if not backpack:FindFirstChild(TOOL_NAME) then
	local tool = Instance.new("Tool")
	tool.Name = TOOL_NAME
	tool.RequiresHandle = false
	tool.CanBeDropped = false

	tool.Equipped:Connect(function()
		toolEquipped = true
	end)

	tool.Unequipped:Connect(function()
		toolEquipped = false
		targetName = nil
		cleanupCouch()
	end)

	tool.Parent = backpack
end

function cleanupCouch()
	if tpLoop then
		tpLoop:Disconnect()
		tpLoop = nil
	end

	if couchEquipped then
		local character = localPlayer.Character
		if character then
			local couch = character:FindFirstChild("Couch")
			if couch then
				couch.Parent = localPlayer.Backpack
				couchEquipped = false
			end
		end
	end

	if basePart then
		basePart:Destroy()
		basePart = nil
	end

	if getgenv().AntiSit then
		getgenv().AntiSit:Set(false)
	end

	local humanoid = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
		humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
	end

	if initialPos and rootPart then
		rootPart.CFrame = initialPos
		initialPos = nil
	end
end

function getCouch()
	local character = localPlayer.Character
	if not character then return end
	local backpack = localPlayer.Backpack

	if not backpack:FindFirstChild("Couch") and not character:FindFirstChild("Couch") then
		local args = { "PickingTools", "Couch" }
		replicatedStorage.RE["1Too1l"]:InvokeServer(unpack(args))
		task.wait(0.1)
	end

	local couch = backpack:FindFirstChild("Couch") or character:FindFirstChild("Couch")
	if couch then
		couch.Parent = character
		couchEquipped = true
	end
end

function getRandomPositionBelow(character)
	local rp = character:FindFirstChild("HumanoidRootPart")
	if not rp then return Vector3.new() end
	local offset = Vector3.new(math.random(-2, 2), -5.1, math.random(-2, 2))
	return rp.Position + offset
end

function tpBelow(target)
	if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then return end

	local myCharacter = localPlayer.Character
	local myRootPart = myCharacter and myCharacter:FindFirstChild("HumanoidRootPart")
	local humanoid = myCharacter and myCharacter:FindFirstChildOfClass("Humanoid")

	if not myRootPart or not humanoid then return end

	humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)

	if not basePart then
		basePart = Instance.new("Part")
		basePart.Size = Vector3.new(10, 1, 10)
		basePart.Anchored = true
		basePart.CanCollide = true
		basePart.Transparency = 0.5
		basePart.Parent = world
	end

	local destination = getRandomPositionBelow(target.Character)
	basePart.Position = destination
	myRootPart.CFrame = CFrame.new(destination)

	humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
end

function throwWithCouch(target)
	if not target then return end
	targetName = target.Name
	local character = localPlayer.Character
	if not character then return end

	initialPos = character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart.CFrame
	rootPart = character:FindFirstChild("HumanoidRootPart")
	getCouch()

	tpLoop = runService.Heartbeat:Connect(function()
		local currentTarget = players:FindFirstChild(targetName)
		if not currentTarget or not currentTarget.Character or not currentTarget.Character:FindFirstChild("Humanoid") then
			cleanupCouch()
			return
		end
		if getgenv().AntiSit then
			getgenv().AntiSit:Set(true)
		end
		tpBelow(currentTarget)
	end)

	task.spawn(function()
		local currentTarget = players:FindFirstChild(targetName)
		while currentTarget and currentTarget.Character and currentTarget.Character:FindFirstChild("Humanoid") do
			task.wait(0.05)
			if currentTarget.Character.Humanoid.SeatPart then
				local voidPosition = CFrame.new(265.46, -450.83, -59.93)
				currentTarget.Character.HumanoidRootPart.CFrame = voidPosition
				localPlayer.Character.HumanoidRootPart.CFrame = voidPosition
				task.wait(0.4)
				cleanupCouch()
				task.wait(0.2)
				if initialPos then
					localPlayer.Character.HumanoidRootPart.CFrame = initialPos
				end
				break
			end
		end
	end)
end

userInput.TouchTap:Connect(function(touches, processed)
	if not toolEquipped or processed then return end
	local pos = touches[1]
	local ray = camera:ScreenPointToRay(pos.X, pos.Y)
	local hit = world:Raycast(ray.Origin, ray.Direction * 1000)
	if hit and hit.Instance then
		local model = hit.Instance:FindFirstAncestorOfClass("Model")
		local player = players:GetPlayerFromCharacter(model)
		if player and player ~= localPlayer then
			throwWithCouch(player)
		end
	end
end)
end
})

AddButton(Main, {
    Name = "أداه فلنق كره",
    Callback = function()
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        local UserInputService = game:GetService("UserInputService")
        local Camera = Workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer

        local TOOL_NAME = "Click Fling Ball"
        local toolEquipped = false

        local backpack = LocalPlayer:WaitForChild("Backpack")
        if not backpack:FindFirstChild(TOOL_NAME) then
            local tool = Instance.new("Tool")
            tool.Name = TOOL_NAME
            tool.RequiresHandle = false
            tool.CanBeDropped = false

            tool.Equipped:Connect(function()
                toolEquipped = true
            end)
            tool.Unequipped:Connect(function()
                toolEquipped = false
            end)

            tool.Parent = backpack
        end

        local function FlingBall(target)
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local hrp = character:WaitForChild("HumanoidRootPart")
            local ServerBalls = Workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")

            local function GetBall()
                if not backpack:FindFirstChild("SoccerBall") and not character:FindFirstChild("SoccerBall") then
                    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
                end
                repeat task.wait() until backpack:FindFirstChild("SoccerBall") or character:FindFirstChild("SoccerBall")

                local tool = backpack:FindFirstChild("SoccerBall")
                if tool then
                    tool.Parent = character
                end

                repeat task.wait() until ServerBalls:FindFirstChild("Soccer" .. LocalPlayer.Name)
                return ServerBalls:FindFirstChild("Soccer" .. LocalPlayer.Name)
            end

            local Ball = ServerBalls:FindFirstChild("Soccer" .. LocalPlayer.Name) or GetBall()
            Ball.CanCollide = false
            Ball.Massless = true
            Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

            if target ~= LocalPlayer then
                local tchar = target.Character
                if tchar and tchar:FindFirstChild("HumanoidRootPart") and tchar:FindFirstChild("Humanoid") then
                    local troot = tchar.HumanoidRootPart
                    local thum = tchar.Humanoid

                    if Ball:FindFirstChildWhichIsA("BodyVelocity") then
                        Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
                    end

                    local bv = Instance.new("BodyVelocity")
                    bv.Name = "FlingPower"
                    bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
                    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bv.P = 9e900
                    bv.Parent = Ball

                    Camera.CameraSubject = thum

                    repeat
                        if troot.Velocity.Magnitude > 0 then
                            Ball.CFrame = CFrame.new(troot.Position + (troot.Velocity / 1.5))
                            Ball.Orientation += Vector3.new(45, 60, 30)
                        else
                            for _, v in ipairs(tchar:GetChildren()) do
                                if v:IsA("BasePart") and v.CanCollide and not v.Anchored then
                                    Ball.CFrame = v.CFrame
                                    task.wait(1 / 6000)
                                end
                            end
                        end
                        task.wait(1 / 6000)
                    until troot.Velocity.Magnitude > 1000 or thum.Health <= 0 or not tchar:IsDescendantOf(Workspace)Camera.CameraSubject = humanoid
                end
            end
        end

        UserInputService.TouchTap:Connect(function(touches, processed)
            if not toolEquipped or processed then return end
            local pos = touches[1]
            local ray = Camera:ScreenPointToRay(pos.X, pos.Y)
            local hit = Workspace:Raycast(ray.Origin, ray.Direction * 1000)
            if hit and hit.Instance then
                local model = hit.Instance:FindFirstAncestorOfClass("Model")
                local player = Players:GetPlayerFromCharacter(model)
                if player and player ~= LocalPlayer then
                    FlingBall(player)
                end
            end
        end)
    end
})

local Paragraph = AddParagraph(Main, {" يمكنك التحكم بالاعب الخاص بك"})

AddTextBox(Main, {
  Name = "سرعه",
  Default = "",
  PlaceholderText = "احدد سرعة الاعب",
  ClearText = true,
  Callback = function(value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value     
  end
})

AddTextBox(Main, {
  Name = "القفز",
  Default = "",
  PlaceholderText = "احدد مستوى القفز",
  ClearText = true,
  Callback = function(value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value         
  end
})

AddButton(Main, {
  Name = "العاده السريه",
  Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
  end
})

AddToggle(ScriptsTab, {
    Name = "تلوين الجسم",
    Description = "يلون جسمك بالوان متنوعة",
    Default = false,
    Callback = function(value)
        toggleRGBCharacter(value)
    end
})

local hairColors = {
    Color3.new(1, 1, 0), Color3.new(0, 0, 1), Color3.new(1, 0, 1), Color3.new(1, 1, 1),
    Color3.new(0, 1, 0), Color3.new(0.5, 0, 1), Color3.new(1, 0.647, 0), Color3.new(0, 1, 1)
}
local isActive = false


local function changeHairColor()
    local i = 1
    while isActive do
        if not isActive then break end
        local args = { [1] = "ChangeHairColor2", [2] = hairColors[i] }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Max1y"):FireServer(unpack(args))
        wait(0.1)
        i = i % #hairColors + 1
    end
end


AddToggle(ScriptsTab, {
    Name = "تلوين الشعر",
    Description = "يلون شعرك بالوان متعددة",
    Default = false,
    Callback = function(value)
        isActive = value
        if isActive then
            changeHairColor()
        end
    end
})

AddSection(Main, {"خواص أتباع الضحيه (مؤقته)"})

-- Function to get all player names
local function getPlayerNames()
    local playerNames = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    return playerNames
end

-- Store selected player for later use
local selectedPlayer = nil
local followHead = false
local connection = nil

-- Function to spectate the selected player
local function spectatePlayer(enable)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                -- Set camera to follow the selected player
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                -- Reset camera to default (back to the local player)
                camera.CameraSubject = player.Character.Humanoid
            end
        else
            print("Selected player not available or out of game.")
        end
    else
        print("No player selected!")
    end
end

-- Function to float just above the selected player's head without falling
local function floatAbovePlayerHead()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        if selectedPlayer then
            local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                local targetHead = targetPlayer.Character.Head

                -- Position above the selected player's head
                humanoidRootPart.CFrame = targetHead.CFrame * CFrame.new(0, 3, 0)

                -- Keep updating the position every frame
                connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        -- Update to stay above the player's head
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        connection:Disconnect() -- Disconnect if the toggle is off
                    end
                end)
            else
                print("Target player not found or not in the game.")
            end
        else
            print("No player selected!")
        end
    end
end

-- Function to trigger the secondary script
local function triggerCharacterSizeDown()
    local args = {
        [1] = "CharacterSizeDown",
        [2] = 2.4
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
end

-- Function to teleport behind the selected player and return after 1.5 seconds
local function moveBehindAndReturn()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart and selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetHumanoidRootPart = targetPlayer.Character.HumanoidRootPart

            -- Store the original position
            local originalPosition = humanoidRootPart.CFrame

            -- Move behind the selected player
            humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

            -- Wait for 1.5 seconds before returning
            wait(1.5)

            -- Return to original position
            humanoidRootPart.CFrame = originalPosition
        else
            print("Selected player not found or not in the game.")
        end
    else
        print("No player or HumanoidRootPart found!")
    end
end

-- Create the dropdown with player names
AddDropdown(Main, {
    Name = "اختار ضحيتك",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("Player selected: " .. value)
    end    
})

AddButton(Main, {
    Name = "تحديث القائمة",
    Callback = function()
        UMupdatePlayerList()
    end    
})

local flingToggle

-- Add a toggle that allows the player to spectate the selected player
AddToggle(Main, {
    Name = "مشاهده الضحيه",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end    
})

-- Add a button to teleport to the selected player
AddButton(Main, {
    Name = "الانتقال الى الضحيه",
    Callback = function()
        floatAbovePlayerHead()
    end    
})

local Main = MakeTab({
    Name = "الأغاني",
    Image = "rbxassetid://95704435998219",
    TabTitle = false
})

AddSection(Main, {"الأغاني من المطور نوكيا"})

AddSection(Main, {"ملاحظه:غير مسؤول عن ذنوبكم"})

-- زر قتل الشخصية للريست
AddButton(Main, {
    Name = "اقتل نفسك للريست",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
})

-------------------------------------------------
-- قسم تشغيل الاغاني
AddSection(Main, {"شغل الاغاني حسب الكود الخاص بك"})
-------------------------------------------------
-- سكوتر
AddTextBox(Main, {
    Name = "للسكوتر",
    Default = "",
    PlaceholderText = "ادخل كود الاغنية",
    ClearText = true,
    Callback = function(Value)
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
    
        local args2 = {[1] = "PickingScooterMusicText",[2] = Value}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end 
})

-- سيارة
AddTextBox(Main, {
    Name = "للسياره",
    Default = "",
    PlaceholderText = "ادخل كود الاغنية",
    ClearText = true,
    Callback = function(Value)
        local args1 = {[1] = "Car"}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
 
        local args2 = {[1] = "PickingCarMusicText",[2] = Value}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end 
})

AddTextBox(Main, {
    Name = "للبيت",
    Default = "",
    PlaceholderText = "ادخل كود الاغنية",
    ClearText = true,
    Callback = function(input)
        local args = {[1] = "PickHouseMusicText",[2] = input}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
    end
})

-------------------------------------------------
-- قسم الميزات
AddSection(Main, {"ميزات اضافية"})

AddTextBox(Main, {
    Name = "بدون جيم باس",
    Default = "",
    PlaceholderText = "ادخل كود الاغنية",
    ClearText = true,
    Callback = function(Value)
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
 
        local args2 = {[1] = "PickingScooterMusicText",[2] = Value}
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-------------------------------------------------
-- قسم العربي
AddSection(Main, {"العربي"})

AddButton(Main, {
    Name = "عراقي طرب",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "80039364766636"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "اه ياحلو",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "93620598835551"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "تعالي عند دادي",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "7984027399"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "علي ابو حسن وحسين",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "98224127892587"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "سبونج بوب",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "2396797933"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-------------------------------------------------
-- قسم الصملات
AddSection(Main, {"الصملات"})

AddButton(Main, {
    Name = "صمله - 1",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "5849978429"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "صمله - 2",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "6536444735"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "صمله - 3",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "8701632845"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "صمله - 4",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "7942547789"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "ضحك بهجت صابر",
    Callback = function()
        local args1 = {[1] = "SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
        
        local args2 = {[1] = "PickingScooterMusicText",[2] = "6713993281"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddSection(Main, {"إسلامي"})

AddButton(Main, {
  Name = "سوره الانفطار",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "112717697126145"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "قران - 1",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "133272041755020"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "قران - 2",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "90593176828958"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "قران - 3",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "86911769585232"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "قران - 4",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "88269497623993"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "قران - 5",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "1836685929"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "قران - 6",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "4711690175"
     }
     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddSection(Main, {"فونك"})

AddButton(Main, {
    Name = "فونك باك مان",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "120889371113999" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "Alanwaad فونك",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "17422074849" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك انا برازيلي",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "81335392002580" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك مافيا",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "14145626412" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك برازيلي",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "108621585736031" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك i Don't wait",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "14145618306" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك باتمان",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "127591727266317" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك لورد",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "99470628895715" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك السواد",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "113759927323910" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك نينجا",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "97006479380709" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك Blue",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "113182617065475" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك فقط يوم واحد",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "128954014582288" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك نوبارا مسرع",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "107522730945242" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- =========================
-- كل الأغاني / فونك / JumpStyle / راب ترانش بوي / النسخ القديمة
-- =========================

-- فونك النسخة القديمة
AddButton(Main, {
    Name = "إكسبريس فونك",
    Callback = function()
        local args = {[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="112214814544629"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك قويي",
    Callback = function()
        local args = {[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="97469791822306"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك نادرررر",
    Callback = function()
        local args = {[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="122114766584918"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- فونك النسخة الانفنسبل
AddButton(Main, {
    Name = "انفنسبل",
    Callback = function()
        local args = {[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="128934903242385"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- جمب ستايل القديمة
AddButton(Main, {
    Name = "جمب ستايل",
    Callback = function()
        local args = {[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="97524436880016"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- جمب ستايل الجديدة
AddButton(Main, {
    Name = "jumbstyle",
    Callback = function()
        local args = {[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="135881205397136"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- فونك النسخ الجديدة بدون رقم
AddButton(Main, {
    Name = "فونك/1",
    Callback = function()
        local args={[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="122114766584918"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- فونك ثانية
AddButton(Main, {
    Name = "فونك/2",
    Callback = function()
        local args={[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="99409598156364"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

-- راب ترانش بوي
AddButton(Main, {
    Name = "راب ترانش بوي",
    Callback = function()
        local args={[1]="SkateBoard"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2={[1]="PickingScooterMusicText",[2]="123515487055780"}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "يستحق التجربه",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "94301557485291" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/3",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "106830526982834" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/4",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "125286594503659" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/5",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "98364034458260" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/6",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "102706852645421" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/7",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "1812585810912239" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/9",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "132406629909648" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/10",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "88157093772771" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/11",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "126607925966123" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/12",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "134713831368801" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/13",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "125037339642322" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

AddButton(Main, {
    Name = "فونك/14",
    Callback = function()
        local args = { [1] = "SkateBoard" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
        local args2 = { [1] = "PickingScooterMusicText", [2] = "13820593856988" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
    end
})

local Main = MakeTab({
    Name = "الاغاني المجانية",
    Image = "rbxassetid://106429367523862",
    TabTitle = false
})

local audioList = {
    "Yamete Kudasai","Scream","Horror Jumpscare","Loud Audio","Noise",
    "Jumpscare 2","Minecraft Witch Laugh","The Boiled One","Crazy Hail Mary","Mandrake Detected",
    "Aaaaaaaaa","AAAHHHH","amongus","Sus","Big Scream AAAAAAAAA",
    "UHHHHH COFFCOFF","SUS","Sonic.exe","Tubers93 1","Tubers93 2",
    "John's Laugh","No Idea LOL","Screaming","Sus Audio","AAAH",
    "Gay, gay","Bat Hit","Nuclear Siren","No idea for a name LOL","Scream 2",
    "Eardrum Buster","Annoying Moan","Meme Sound Clip","iFood Ad","I Ghost The down",
    "Shop Online at Shopee","Uh, So Gross","Get Out, Go Wash Dishes","Meme Quote"
}

local audioIDs = {
    ["Yamete Kudasai"] = 108494476595033,
    ["Scream"] = 5710016194,
    ["Horror Jumpscare"] = 85435253347146,
    ["Loud Audio"] = 6855150757,
    ["Noise"] = 120034877160791,
    ["Jumpscare 2"] = 110637995610528,
    ["Minecraft Witch Laugh"] = 116214940486087,
    ["The Boiled One"] = 137177653817621,
    ["Crazy Hail Mary"] = 128669424001766,
    ["Mandrake Detected"] = 9068077052,
    ["Aaaaaaaaa"] = 80156405968805,
    ["AAAHHHH"] = 9084006093,
    ["amongus"] = 6651571134,
    ["Sus"] = 6701126635,
    ["Big Scream AAAAAAAAA"] = 5853668794,
    ["UHHHHH COFFCOFF"] = 7056720271,
    ["SUS"] = 7153419575,
    ["Sonic.exe"] = 2496367477,
    ["Tubers93 1"] = 270145703,
    ["Tubers93 2"] = 18131809532,
    ["John's Laugh"] = 130759239,
    ["No Idea LOL"] = 6549021381,
    ["Screaming"] = 80156405968805,
    ["Sus Audio"] = 7705506391,
    ["AAAH"] = 7772283448,
    ["Gay, gay"] = 18786647417,
    ["Bat Hit"] = 7129073354,
    ["Nuclear Siren"] = 675587093,
    ["No idea for a name LOL"] = 7520729342,
    ["Scream 2"] = 91412024101709,
    ["Eardrum Buster"] = 268116333,
    ["Annoying Moan"] = 106835463235574,
    ["Meme Sound Clip"] = 132603645477541,
    ["iFood Ad"] = 133843750864059,
    ["I Ghost The down"] = 84663543883498,
    ["Shop Online at Shopee"] = 8747441609,
    ["Uh, So Gross"] = 103440368630269,
    ["Get Out, Go Wash Dishes"] = 101232400175829,
    ["Meme Quote"] = 78442476709262
}

local selectedAudio = audioList[1]
local customAudioID = nil
local audioVolume = 1
local audioDelay = 0.5

-- TextBox لإدخال ID يدوي
AddTextBox(ScriptsTab, {
    Name = "هنا ايدي الأغنية",
    Description = "ادخل أي ID تريد تشغيله",
    PlaceholderText = "ضع ID هنا",
    Callback = function(value)
        customAudioID = tonumber(value)
    end
})

-- Dropdown لاختيار الصوت من القائمة
AddDropdown(ScriptsTab, {
    Name = "اختر الأغنية",
    Options = audioList,
    Default = audioList[1],
    Callback = function(value)
        selectedAudio = value
    end
})

-- Dropdown لاختيار مستوى الصوت
AddDropdown(ScriptsTab, {
    Name = "مستوى الصوت",
    Options = {"0","0.25","0.5","1","1.5","2","3","4","5"},
    Default = "1",
    Callback = function(value)
        audioVolume = tonumber(value)
    end
})

-- Dropdown لاختيار مدة بين الأصوات
AddDropdown(ScriptsTab, {
    Name = "مدة بين الأصوات",
    Options = {"0.05","0.1","0.25","0.5","1","2"},
    Default = "0.5",
    Callback = function(value)
        audioDelay = tonumber(value)
    end
})

-- Button لتشغيل الصوت مرة واحدة
AddButton(ScriptsTab, {
    Name = "تشغيل الأغنية",
    Callback = function()
        local idToPlay = customAudioID or audioIDs[selectedAudio]
        if not idToPlay then
            warn("ياخي، اختار صوت أو ادخل ID أول")
            return
        end

        -- ServerSide
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(workspace, idToPlay, 1)

        -- ClientSide
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://" .. idToPlay
        sound.Volume = audioVolume
        sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        sound:Play()
    end
})

-- Toggle لتشغيل سبام سريع عند الجميع
local audioSpam = false
AddToggle(ScriptsTab, {
    Name = "سبام سريع الأغنية",
    Description = "تشغيل الصوت عند كل اللاعبين بسرعة مع التحكم بالمدة",
    Default = false,
    Callback = function(value)
        audioSpam = value
        if audioSpam then
            task.spawn(function()
                while audioSpam do
                    local idToPlay = customAudioID or audioIDs[selectedAudio]
                    if idToPlay then
                        -- ServerSide
                        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(workspace, idToPlay, 1)

                        -- ClientSide
                        local sound = Instance.new("Sound")
                        sound.SoundId = "rbxassetid://" .. idToPlay
                        sound.Volume = audioVolume
                        sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        sound:Play()
                    end
                    task.wait(audioDelay)
                end
            end)
        end
    end
})

local Main = MakeTab({
    Name = "الأسماء",
    Image = "rbxassetid://127476568939667",
    TabTitle = false
})

-- =====================
-- الاسم
-- =====================
AddSection(Main, {"الاسم"})
AddTextBox(Main, {
    Name = "الاسم",
    Default = "",
    PlaceholderText = "ضع الاسم",
    ClearText = true,
    Callback = function(value)
        local args = {[1] = "RolePlayName", [2] = value}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
    end
})

local isNameActive = false
AddToggle(Main, {
    Name = "تلوين الاسم",
    Default = false,
    Callback = function(value)
        isNameActive = value
    end    
})

-- =====================
-- البايو
-- =====================
AddSection(Main, {"البايو"})
AddTextBox(Main, {
    Name = "البايو",
    Default = "",
    PlaceholderText = "ضع البايو",
    ClearText = true,
    Callback = function(value)
        local args = {[1] = "RolePlayBio", [2] = value}
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
    end
})

local isBioActive = false
AddToggle(Main, {
    Name = "تلوين البايو",
    Default = false,
    Callback = function(value)
        isBioActive = value
    end    
})

-- =====================
-- قائمة الألوان المشتركة (متوهجة بالكامل)
-- =====================
local vibrantColors = {
    Color3.fromRGB(255, 0, 0),   -- أحمر
    Color3.fromRGB(0, 255, 0),   -- أخضر
    Color3.fromRGB(0, 0, 255),   -- أزرق
    Color3.fromRGB(255, 255, 0), -- أصفر
    Color3.fromRGB(255, 0, 255), -- فوشيا
    Color3.fromRGB(0, 255, 255), -- سماوي
    Color3.fromRGB(255, 165, 0), -- برتقالي
    Color3.fromRGB(128, 0, 128), -- بنفسجي
    Color3.fromRGB(135, 206, 235) -- سماوي فاتح
}

local function getRandomColor()
    return vibrantColors[math.random(#vibrantColors)]
end

local function smoothTransition(current, target, step)
    return Color3.new(
        current.r + (target.r - current.r) * step,
        current.g + (target.g - current.g) * step,
        current.b + (target.b - current.b) * step
    )
end

-- =====================
-- Thread تلوين الاسم
-- =====================
spawn(function()
    local currentColor = getRandomColor()
    while true do
        if isNameActive then
            local targetColor = getRandomColor()
            local holdTime = 0.5
            local steps = 20
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r")
                :FireServer("PickingRPNameColor", currentColor)
            wait(holdTime)
            for i = 1, steps do
                local t = i / steps
                local lerpColor = smoothTransition(currentColor, targetColor, t)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r")
                    :FireServer("PickingRPNameColor", lerpColor)
                wait(0.07)
            end
            currentColor = targetColor
        else
            wait(0.1)
        end
    end
end)

-- =====================
-- Thread تلوين البايو
-- =====================
spawn(function()
    local currentColor = getRandomColor()
    while true do
        if isBioActive then
            local targetColor = getRandomColor()
            local holdTime = 0.5
            local steps = 20
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r")
                :FireServer("PickingRPBioColor", currentColor)
            wait(holdTime)
            for i = 1, steps do
                local t = i / steps
                local lerpColor = smoothTransition(currentColor, targetColor, t)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r")
                    :FireServer("PickingRPBioColor", lerpColor)
                wait(0.07)
            end
            currentColor = targetColor
        else
            wait(0.1)
        end
    end
end)

-- قسم أسماء أولاد
AddSection(Main, {"أسماء أولاد"})

local boyNames = {
    "عَلَآء", "نَجِيبٌ", "عَلِيٌّ", "أَحْمَدُ", "عَـبَّـاسُ",
    "حَسَنٌ", "جَوْهَر", "حُسَينٌ", "كُـُرار", "حًمًزُة",
    "کْأّظُمً", "مِـصِـطٌـفُى", "مِـنٌتُظٌـرَ", "مِـرَتُضـى",
    "ذٌوُ آلَفُقَآرَ", "زَيّنٌ آلَعَآبّـدُيّنٌ", "مِـحً ـمِدُ", "نٌزَآرَ"
}

for _, name in ipairs(boyNames) do
    AddButton(Main, {
        Name = name,
        Callback = function()
            local args = { [1] = "RolePlayName", [2] = name }
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
        end
    })
end

-- قسم أسماء بنات
AddSection(Main, {"أسماء بنات"})

local girlNames = {
    "مِـيّآرَ", "آيّآتُ", "زَيّنٌبّ", "قَآطٌـمِـهِ", "لَبّـآبّـهِ",
    "مِـرَوُى", "جَ ـوُآهِرَ", "رَسًـلَ", "زَهِرَآء", "مِـلَآكَ",
    "مِـنٌآرَ", "رَيّمِ", "رَوُآنٌ", "رَزَآنٌ", "دُآرَيّنٌ",
    "دُعَآء", "غّ ـزَلَ"
}

for _, name in ipairs(girlNames) do
    AddButton(Main, {
        Name = name,
        Callback = function()
            local args = { [1] = "RolePlayName", [2] = name }
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
        end
    })
end

AddSection(Main, {"هجمات اسماء متنوعه ضد مجتمعات روبلوكس القـ/ـذره"})

local toggled = false
local names = {
    "انيق ام الرول", 
    "احول سيرفركم لجحيم", 
    "اهينك واهين عشره مثلك", 
    "كـ/ـسم الرول", 
    "مانع الحوامض الكيميائيه", 
    "اهينـ/ـك واصمل عليك", 
    "مانع الرول دشره", 
    "مانع مرجله الرول دشره",
    "صياد الرول دشره",
    "الرول دشره حموضه",
    "يارول يامنحط",
}

local index = 1

AddToggle(Main, {
    Name = "هجوم ضد الرول",
    Default = false,
    Callback = function(state)
        toggled = state
        if toggled then
            spawn(function()
                while toggled do
                    if #names > 0 then
                        local args = {
                            [1] = "RolePlayName",
                            [2] = names[index]
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

                        index = index + 1
                        if index > #names then
                            index = 1
                        end
                    end
                    task.wait(0.5) -- كل نص ثانية
                end
            end)
        end
    end
})

local toggled = false
local names = {
    "عم الفيمبوي", 
    "اهين الفيمبوي", 
    "صياد الفيمبوي المازوخـ/ـيين", 
    "مانع الفيمبوي", 
    "Top 1", 
    "لا أراكم شيء أمامي", 
    "هاك للقضاء على الفيمبوي", 
    "خذلك قناع من اشعاع حموضه الفيمبوي",
    "محارب الكرنج",
    "محارب للابد",
    "اسحلك يافيمبوي",
}

local index = 1

AddToggle(Main, {
    Name = "هجوم ضد الفيمبوي",
    Default = false,
    Callback = function(state)
        toggled = state
        if toggled then
            spawn(function()
                while toggled do
                    if #names > 0 then
                        local args = {
                            [1] = "RolePlayName",
                            [2] = names[index]
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

                        index = index + 1
                        if index > #names then
                            index = 1
                        end
                    end
                    task.wait(0.5) -- كل نص ثانية
                end
            end)
        end
    end
})

local toggled = false
local names = {
    "هجوم ضد مازوخيه البكمي", 
    "ازاله البكمي من المجتمع", 
    "لا للبكمي", 
    "انا عم البكمي", 
    "المنقذ من البكمي سينسي", 
    "ستيم انقاذكم من البكمي", 
    "صياد البكمي", 
    "Top 1 لأزاله البكمي",
    "ارتدي قناع من كرنج البكمي",
    "اهيـ/ـنك انتي وسيرفرك",
    "مكافحه البكمي",
}

local index = 1

AddToggle(Main, {
    Name = "هجوم ضد البكمي",
    Default = false,
    Callback = function(state)
        toggled = state
        if toggled then
            spawn(function()
                while toggled do
                    if #names > 0 then
                        local args = {
                            [1] = "RolePlayName",
                            [2] = names[index]
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

                        index = index + 1
                        if index > #names then
                            index = 1
                        end
                    end
                    task.wait(0.5) -- كل نص ثانية
                end
            end)
        end
    end
})

local toggled = false
local names = {
    "تسجيل دخول العم", 
    "مانع مرجله", 
    "الي قدامي ليس لديه مرجله",
    "سيرفركم غير صالح للعيش", 
    "محارب المرجله", 
    "مافيكم رجال", 
    "أحذر من عمك", 
    "احفظ اسمي ياصغيري",
    "تعال عندي اعطيك حصه مرجله",
    "يامـ/ـهان",
    "مكافحه المرجله",
}

local index = 1

AddToggle(Main, {
    Name = "هجوم ضد عابد البنات",
    Default = false,
    Callback = function(state)
        toggled = state
        if toggled then
            spawn(function()
                while toggled do
                    if #names > 0 then
                        local args = {
                            [1] = "RolePlayName",
                            [2] = names[index]
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))

                        index = index + 1
                        if index > #names then
                            index = 1
                        end
                    end
                    task.wait(0.5) -- كل نص ثانية
                end
            end)
        end
    end
})

local Main = MakeTab({
    Name = "ترول اكسترى",
    Image = "rbxassetid://87060218582359",
    TabTitle = false
})

AddSection(Main, {"التجميد"})

AddSection(Main, {"حتى لو حذفت الواجهه الخاصه ب التجميد رح يبقى التجميد واسم الشخص"})

-- ==================================
-- سكربت تجميد كامل مع واجهات جديدة + صوت نقرة + رسالة بالشات
-- ==================================
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local TextChatService = game:GetService("TextChatService")

local frozenTargets = {}

local RE = ReplicatedStorage:WaitForChild("RE")
local ClearEvent = RE:FindFirstChild("1Clea1rTool1s")
local ToolEvent = RE:FindFirstChild("1Too1l")
local FireEvent = RE:FindFirstChild("1Gu1n")

-- =========================
-- دوال التجميد والسلاح
-- =========================
local function clearAllTools()
    if ClearEvent then ClearEvent:FireServer("ClearAllTools") end
end

local function getAssault()
    if ToolEvent then ToolEvent:InvokeServer("PickingTools","Assault") end
end

local function hasAssault()
    return LocalPlayer.Backpack:FindFirstChild("Assault") ~= nil
end

local function fireAtPart(targetPart)
    local weapon = LocalPlayer.Backpack:FindFirstChild("Assault")
    if not weapon then return end
    local gunScript = weapon:FindFirstChild("GunScript_Local")
    if not gunScript or not targetPart then return end

    local args = {
        targetPart,
        targetPart,
        Vector3.new(1e14,1e14,1e14),
        targetPart.Position,
        gunScript:FindFirstChild("MuzzleEffect"),
        gunScript:FindFirstChild("HitEffect"),
        0,
        0,
        {false},
        {25,Vector3.new(100,100,100),BrickColor.new(29),0.25,Enum.Material.SmoothPlastic,0.25},
        true,
        false
    }
    FireEvent:FireServer(unpack(args))
end

local function freezeTarget(targetPlayer)
    if frozenTargets[targetPlayer] then return end
    frozenTargets[targetPlayer] = true

    task.spawn(function()
        while task.wait(1) do
            if not frozenTargets[targetPlayer] 
               or not targetPlayer.Parent 
               or not targetPlayer.Character 
               or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                break
            end

            clearAllTools()
            getAssault()
            repeat task.wait(0.2) until hasAssault()
            fireAtPart(targetPlayer.Character.HumanoidRootPart)
        end
        frozenTargets[targetPlayer] = nil
    end)
end

local function unfreezeTarget(targetPlayer)
    frozenTargets[targetPlayer] = nil
end

-- =========================
-- دالة البحث عن لاعب باستخدام أول حرفين
-- =========================
local function findPlayerByPrefix(prefix)
    prefix = prefix:lower()
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Name:lower():sub(1,#prefix) == prefix then
            return p
        end
    end
    return nil
end

-- =========================
-- صوت النقر
-- =========================
local clickSound = Instance.new("Sound")
clickSound.SoundId = "rbxassetid://12222005" -- صوت نقرة
clickSound.Volume = 1
clickSound.Parent = LocalPlayer:WaitForChild("PlayerGui")

local function playClick()
    if clickSound.IsLoaded then
        clickSound:Play()
    else
        clickSound.Loaded:Wait()
        clickSound:Play()
    end
end

-- =========================
-- دالة إنشاء واجهة لكل زر
-- =========================
local function createFreezeGUI(buttonNumber, defaultPrefix)
    local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    gui.Name = "FreezeGUI_"..buttonNumber
    gui.Enabled = false

    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0,250,0,150)
    frame.Position = UDim2.new(0,100,0,100)
    frame.BackgroundColor3 = Color3.fromRGB(50,50,50)

    -- عنوان الواجهة
    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1,0,0,30)
    title.Position = UDim2.new(0,0,0,0)
    title.Text = "تجميد اللاعب - ساموراي - رقم "..buttonNumber
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.BackgroundColor3 = Color3.fromRGB(35,35,35)

    -- زر إغلاق (❌)
    local closeButton = Instance.new("TextButton", frame)
    closeButton.Size = UDim2.new(0,30,0,30)
    closeButton.Position = UDim2.new(1,-30,0,0)
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(255,0,0)
    closeButton.BackgroundColor3 = Color3.fromRGB(40,40,40)

    closeButton.MouseButton1Click:Connect(function()
        playClick()
        gui.Enabled = false
    end)

    -- TextBox لأخذ أول حرفين من اسم اللاعب
    local playerBox = Instance.new("TextBox", frame)
    playerBox.Size = UDim2.new(1,-20,0,30)
    playerBox.Position = UDim2.new(0,10,0,40)
    playerBox.PlaceholderText = "أول حرفين للاعب"
    playerBox.Text = defaultPrefix or ""
    playerBox.TextColor3 = Color3.fromRGB(255,255,255)
    playerBox.BackgroundColor3 = Color3.fromRGB(60,60,60)
    playerBox.ClearTextOnFocus = false

    -- زر التجميد
    local freezeButton = Instance.new("TextButton", frame)
    freezeButton.Size = UDim2.new(1,-20,0,30)
    freezeButton.Position = UDim2.new(0,10,0,80)
    freezeButton.Text = "تجميد/إطفاء"
    freezeButton.TextColor3 = Color3.fromRGB(255,255,255)
    freezeButton.BackgroundColor3 = Color3.fromRGB(80,80,80)

    freezeButton.MouseButton1Click:Connect(function()
        playClick()
        local prefixText = playerBox.Text
        if prefixText and #prefixText >= 2 then
            local target = findPlayerByPrefix(prefixText)
            if target then
                getAssault()
                repeat task.wait(0.2) until hasAssault()
                if frozenTargets[target] then
                    unfreezeTarget(target)
                    print("❌ تم الإطفاء على "..target.Name)
                else
                    freezeTarget(target)
                    print("✅ تم التشغيل على "..target.Name)
                end
            else
                warn("⚠️ لم يتم العثور على لاعب يبدأ بـ: "..prefixText)
            end
        end
    end)

    return gui
end

-- =========================
-- إنشاء واجهات الأربعة أزرار (الجديدة)
-- =========================
local button1GUI, button2GUI, button3GUI, button4GUI

-- =========================
-- دالة لفتح/إغلاق الواجهة + رسالة بالشات + صوت
-- =========================
local function toggleGUI(gui)
    playClick()
    gui.Enabled = not gui.Enabled
    if gui.Enabled then
        TextChatService.TextChannels.RBXGeneral:SendAsync("[The server was hacked by freezing solo from Xpolit hub🥶]")
    end
end

-- =========================
-- ربط أزرار Main بالواجهات الجديدة
-- =========================
AddButton(Main,{
    Name = "واجهة تجميد 1",
    Callback = function()
        if not button1GUI then button1GUI = createFreezeGUI(1,"Sa") end
        toggleGUI(button1GUI)
    end
})
AddButton(Main,{
    Name = "واجهة تجميد 2",
    Callback = function()
        if not button2GUI then button2GUI = createFreezeGUI(2,"Sa") end
        toggleGUI(button2GUI)
    end
})
AddButton(Main,{
    Name = "واجهة تجميد 3",
    Callback = function()
        if not button3GUI then button3GUI = createFreezeGUI(3,"Sa") end
        toggleGUI(button3GUI)
    end
})
AddButton(Main,{
    Name = "واجهة تجميد 4",
    Callback = function()
        if not button4GUI then button4GUI = createFreezeGUI(4,"Sa") end
        toggleGUI(button4GUI)
    end
})

AddSection(Main, {"التجميد من خلال اوامر الشات"})

AddSection(Main, {
    "1. اضغط 'تفعيل أوامر التجميد من خلال الشات' لتشغيل الأوامر.",
    "2. استخدم أوامر التجميد عبر الشات:",
    "   - /تجميد <أول حرفين من اسم اللاعب>",
    "   - /الغاء التجميد <أول حرفين من اسم اللاعب>",
    "   - /تجميد الكل",
    "   - /الغاء تجميد الكل",
    "3. اضغط 'إيقاف أوامر التجميد' لإيقاف جميع الأوامر."
})

-- سكربت تجميد عبر الشات (Xpolit Hub 🥶)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local tcs = game:GetService("TextChatService")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local TextChatService = game:GetService("TextChatService")

-- =========================
-- المتغيرات
-- =========================
local prefixFreeze = "/تجميد"
local prefixUnfreeze = "/الغاء التجميد"
local frozenTargets = {}
local commandsEnabled = false
local rightsText = "[Freezing Chat Script by Xpolit Hub 🥶]"
local weaponName = "Assault"

local RE = ReplicatedStorage:WaitForChild("RE")
local ClearEvent = RE:FindFirstChild("1Clea1rTool1s")
local ToolEvent = RE:FindFirstChild("1Too1l")
local FireEvent = RE:FindFirstChild("1Gu1n")

-- =========================
-- دوال السلاح
-- =========================
local function clearAllTools()
    if ClearEvent then ClearEvent:FireServer("ClearAllTools") end
end

local function getWeapon()
    if ToolEvent then ToolEvent:InvokeServer("PickingTools", weaponName) end
end

local function hasWeapon()
    return LocalPlayer.Backpack:FindFirstChild(weaponName) ~= nil
end

local function fireAtPart(targetPart)
    local gunScript = LocalPlayer.Backpack:FindFirstChild(weaponName) and LocalPlayer.Backpack[weaponName]:FindFirstChild("GunScript_Local")
    if not gunScript or not targetPart then return end

    local args = {
        targetPart,
        targetPart,
        Vector3.new(1e14,1e14,1e14),
        targetPart.Position,
        gunScript:FindFirstChild("MuzzleEffect"),
        gunScript:FindFirstChild("HitEffect"),
        0,
        0,
        {false},
        {25,Vector3.new(100,100,100),BrickColor.new(29),0.25,Enum.Material.SmoothPlastic,0.25},
        true,
        false
    }
    FireEvent:FireServer(unpack(args))
end

-- =========================
-- تجميد لاعب محدد
-- =========================
local function freezeTarget(targetPlayer)
    if not commandsEnabled then return end
    if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    end

    frozenTargets[targetPlayer] = true

    task.spawn(function()
        while commandsEnabled and frozenTargets[targetPlayer] and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") do
            clearAllTools()
            getWeapon()
            repeat task.wait(0.2) until hasWeapon()
            fireAtPart(targetPlayer.Character.HumanoidRootPart)
            task.wait(1)
        end
        frozenTargets[targetPlayer] = nil
    end)
end

-- =========================
-- إلغاء تجميد لاعب
-- =========================
local function unfreezeTarget(targetPlayer)
    frozenTargets[targetPlayer] = nil
end

-- =========================
-- البحث عن لاعب بأول حرفين أو أكثر
-- =========================
local function findPlayerByPrefix(prefixLetters)
    prefixLetters = prefixLetters:lower()
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Name:lower():sub(1,#prefixLetters) == prefixLetters then
            return p
        end
    end
    return nil
end

-- =========================
-- مراقبة الرسائل الجديدة (فقط فردي)
-- =========================
TextChatService.MessageReceived:Connect(function(msg)
    if not commandsEnabled then return end
    if msg.TextSource and msg.TextSource.UserId ~= LocalPlayer.UserId then return end

    local text = msg.Text

    if text:sub(1,#prefixFreeze) == prefixFreeze then
        local targetPrefix = text:sub(#prefixFreeze + 2)
        local target = findPlayerByPrefix(targetPrefix)
        if target then
            freezeTarget(target)
        else
            warn("لم يتم العثور على لاعب يبدأ بـ: "..targetPrefix)
        end

    elseif text:sub(1,#prefixUnfreeze) == prefixUnfreeze then
        local targetPrefix = text:sub(#prefixUnfreeze + 2)
        local target = findPlayerByPrefix(targetPrefix)
        if target then
            unfreezeTarget(target)
            print("تم إلغاء التجميد على "..target.Name)
        end
    end
end)

-- =========================
-- زر تفعيل أوامر الشات
-- =========================
AddButton(Main,{
    Name = "تفعيل أوامر التجميد من خلال الشات",
    Callback = function()
        commandsEnabled = true
        if TextChatService.TextChannels.RBXGeneral then
            TextChatService.TextChannels.RBXGeneral:SendAsync(rightsText)
        end
        task.spawn(function()
            while commandsEnabled do
                task.wait(120)
                if TextChatService.TextChannels.RBXGeneral then
                    TextChatService.TextChannels.RBXGeneral:SendAsync(rightsText)
                end
            end
        end)
        print("✅ تم تفعيل أوامر التجميد.")
    end
})

-- =========================
-- زر إيقاف كل الأوامر
-- =========================
AddButton(Main,{
    Name = "إيقاف أوامر التجميد",
    Callback = function()
        commandsEnabled = false
        frozenTargets = {}
        print("❌ تم إيقاف كل أوامر التجميد.")
    end
})

AddSection(Main, {"تجميد الكل بواسطه الزر"})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = game:GetService("Players").LocalPlayer

local RE = ReplicatedStorage:WaitForChild("RE")
local ClearEvent = RE:FindFirstChild("1Clea1rTool1s")
local ToolEvent = RE:FindFirstChild("1Too1l")
local FireEvent = RE:FindFirstChild("1Gu1n")

local frozenTargets = {}
local allFrozen = false
local recurringMsgTask = nil

-- دالة السلاح لتجميد لاعب بسرعة عالية
local function freezePlayer(player)
    if frozenTargets[player] then return end
    frozenTargets[player] = true

    task.spawn(function()
        while frozenTargets[player] and player.Character and player.Character:FindFirstChild("HumanoidRootPart") do
            if ClearEvent then ClearEvent:FireServer("ClearAllTools") end
            if ToolEvent then ToolEvent:InvokeServer("PickingTools","Assault") end
            local weapon = LocalPlayer.Backpack:FindFirstChild("Assault")
            if weapon then
                local gunScript = weapon:FindFirstChild("GunScript_Local")
                if gunScript then
                    FireEvent:FireServer(
                        player.Character.HumanoidRootPart,
                        player.Character.HumanoidRootPart,
                        Vector3.new(1e14,1e14,1e14),
                        player.Character.HumanoidRootPart.Position,
                        gunScript:FindFirstChild("MuzzleEffect"),
                        gunScript:FindFirstChild("HitEffect"),
                        0,0,
                        {false},
                        {25,Vector3.new(100,100,100),BrickColor.new(29),0.25,Enum.Material.SmoothPlastic,0.25},
                        true,false
                    )
                end
            end
            task.wait(0.1) -- السلاح يطلق بسرعة عالية الآن
        end
        frozenTargets[player] = nil
    end)
end

-- دالة تجميد الكل بالسلاح
local function freezeAll()
    allFrozen = true
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[All were frozen in the server by Xpolit hub🥶]")
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            freezePlayer(player)
        end
    end

    recurringMsgTask = task.spawn(function()
        while allFrozen do
            task.wait(120)
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[The freezing of all in the server is still continuing by Xpolit hub🥶]")
        end
    end)
end

-- دالة إلغاء تجميد الكل
local function unfreezeAll()
    allFrozen = false
    frozenTargets = {}
    print("❌ تم إلغاء تجميد جميع اللاعبين")
end

-- =========================
-- أزرار Main
-- =========================
AddButton(Main,{
    Name = "تجميد الكل",
    Callback = function()
        freezeAll()
        print("✅ تم تجميد جميع اللاعبين")
    end
})

AddButton(Main,{
    Name = "إلغاء تجميد الكل",
    Callback = function()
        unfreezeAll()
    end
})

AddSection(Main, {"البانق"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- 🔹 السرعات الثابتة والمخففة
local bangSpeeds = {
    ["بانق"] = 0.5,          -- حركة خلفية سلسة
    ["بانق للوجه"] = 0.5     -- حركة وجهي سلسة
}

-- 🔹 اللاعب المحدد
getgenv().selectedPlayer = nil

-- 🔹 دالة لجلب أسماء اللاعبين
local function fetchPlayerNames()
    local namesList = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then
            table.insert(namesList, plr.Name)
        end
    end
    return namesList
end

-- 🔹 Dropdown لاختيار الضحية
local targetDropdown
local function createTargetDropdown()
    if targetDropdown then
        targetDropdown:Remove() -- إذا GUI يدعم إزالة Dropdown قديم
    end

    targetDropdown = AddDropdown(Main, {
        Name = "اختر الضحية",
        Default = "...",
        Options = fetchPlayerNames(),
        Callback = function(Value)
            if Value ~= "" then
                getgenv().selectedPlayer = Value
            end
        end
    })
end

createTargetDropdown()

-- 🔹 زر لتحديث قائمة اللاعبين
AddButton(Main, {
    Name = "تحديث قائمة اللاعبين",
    Callback = function()
        createTargetDropdown()
    end
})

-- 🔹 دالة إنشاء بانق
local function createBangToggle(name, faceBang)
    local bangActive = false
    local connection
    local togglePosition = false

    AddToggle(Main, {
        Name = name,
        Default = false,
        Callback = function(Value)
            bangActive = Value

            local player = Players.LocalPlayer
            local char = player.Character
            if not char then return end

            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if not humanoid then return end

            if Value then
                humanoid.PlatformStand = true

                if connection then connection:Disconnect() end

                connection = RunService.Heartbeat:Connect(function()
                    if bangActive and getgenv().selectedPlayer then
                        local targetPlayer = Players:FindFirstChild(getgenv().selectedPlayer)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character.PrimaryPart then
                            local targetHead = targetPlayer.Character:FindFirstChild("Head")
                            if targetHead and char.PrimaryPart then
                                local offset = togglePosition and 1 or 3
                                if faceBang then
                                    -- بانق للوجه
                                    char:SetPrimaryPartCFrame(
                                        targetHead.CFrame *
                                        CFrame.new(0, 1, -offset) *
                                        CFrame.Angles(0, math.rad(180), 0)
                                    )
                                else
                                    -- بانق
                                    char:SetPrimaryPartCFrame(
                                        targetHead.CFrame *
                                        CFrame.new(0, -1, offset)
                                    )
                                end
                                togglePosition = not togglePosition

                                -- 🔹 سرعة ثابتة
                                task.wait(bangSpeeds[name])
                            end
                        end
                    end
                end)
            else
                humanoid.PlatformStand = false
                if connection then
                    connection:Disconnect()
                    connection = nil
                end
            end
        end    
    })
end

-- 🔹 إنشاء البانق وزر للوجه
createBangToggle("بانق", false)
createBangToggle("بانق للوجه", true)

AddSection(Main, {"بانق وتجميد نفس الوقت"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local RE = ReplicatedStorage:WaitForChild("RE")
local ClearEvent = RE:FindFirstChild("1Clea1rTool1s")
local ToolEvent = RE:FindFirstChild("1Too1l")
local FireEvent = RE:FindFirstChild("1Gu1n")

-- 🔹 دالة تجميد اللاعب
local freezeConnections = {}
local function startFreeze(targetPlayer, id)
    if freezeConnections[id] then return end
    local running = true

    freezeConnections[id] = {
        stop = function() running = false end
    }

    task.spawn(function()
        while running and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") do
            if ClearEvent then ClearEvent:FireServer("ClearAllTools") end
            if ToolEvent then ToolEvent:InvokeServer("PickingTools", "Assault") end

            repeat task.wait(0.2) until LocalPlayer.Backpack:FindFirstChild("Assault") or not running
            local gunScript = LocalPlayer.Backpack:FindFirstChild("Assault") and LocalPlayer.Backpack.Assault:FindFirstChild("GunScript_Local")
            if gunScript and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetPart = targetPlayer.Character.HumanoidRootPart
                local args = {
                    targetPart,
                    targetPart,
                    Vector3.new(1e14, 1e14, 1e14),
                    targetPart.Position,
                    gunScript:FindFirstChild("MuzzleEffect"),
                    gunScript:FindFirstChild("HitEffect"),
                    0,
                    0,
                    { false },
                    { 25, Vector3.new(100, 100, 100), BrickColor.new(29), 0.25, Enum.Material.SmoothPlastic, 0.25 },
                    true,
                    false
                }
                FireEvent:FireServer(unpack(args))
            end
            task.wait(1)
        end
    end)
end

local function stopFreeze(id)
    if freezeConnections[id] then
        freezeConnections[id].stop()
        freezeConnections[id] = nil
    end
end

-- 🔹 دالة بانق
local function createBangToggle(name, yOffset, faceBang, id)
    local bangConnection
    local bangActive = false
    local togglePosition = false
    local speed = 0.8 -- ثانية

    AddToggle(Main, {
        Name = name,
        Default = false,
        Callback = function(Value)
            bangActive = Value

            local player = LocalPlayer
            local char = player.Character
            if not char or not char.PrimaryPart then return end

            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if not humanoid then return end

            if Value then
                humanoid.PlatformStand = true

                local targetPlayer = getgenv().selectedPlayer and Players:FindFirstChild(getgenv().selectedPlayer)
                if not targetPlayer then return end

                -- بدء التجميد
                startFreeze(targetPlayer, id)

                if bangConnection then bangConnection:Disconnect() end
                bangConnection = RunService.Heartbeat:Connect(function()
                    if bangActive and targetPlayer and targetPlayer.Character and targetPlayer.Character.PrimaryPart then
                        local targetHead = targetPlayer.Character:FindFirstChild("Head")
                        if targetHead and char.PrimaryPart then
                            local offset = togglePosition and 1 or 4
                            if faceBang then
                                char:SetPrimaryPartCFrame(targetHead.CFrame * CFrame.new(0, 1, -offset) * CFrame.Angles(0, math.rad(180), 0))
                            else
                                char:SetPrimaryPartCFrame(targetHead.CFrame * CFrame.new(0, yOffset, offset))
                            end
                            togglePosition = not togglePosition
                            task.wait(speed)
                        end
                    end
                end)
            else
                humanoid.PlatformStand = false

                if bangConnection then
                    bangConnection:Disconnect()
                    bangConnection = nil
                end

                -- إيقاف التجميد
                stopFreeze(id)
            end
        end
    })
end

-- 🔹 إنشاء التبديلين
createBangToggle("بانق", -1, false, "bangNormal")
createBangToggle("بانق للوجه", 1, true, "bangFace")

local ScriptInfoTab = MakeTab({
  Name = "فقط ترول للجميع",
  Image = "rbxassetid://13364900349",
  TabTitle = false
})

AddSection(Main, {"الباص"})

AddButton(ScriptsTab, {
    Name = "قتل الجميع ف الباص",
    Callback = function()
        local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local destination = Vector3.new(145.51, -374.09, 21.58) 
local originalPosition = nil  

local function GetBus()  
    local vehicles = Workspace:FindFirstChild("Vehicles")  
    if vehicles then  
        return vehicles:FindFirstChild(Players.LocalPlayer.Name.."Car")  
    end  
    return nil  
end  

local function TrackPlayer(selectedPlayerName, callback)
    while true do  
        if selectedPlayerName then  
            local targetPlayer = Players:FindFirstChild(selectedPlayerName)  
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then  
                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")  
                if targetHumanoid and targetHumanoid.Sit then  
                    local bus = GetBus()
                    if bus then
                        bus:SetPrimaryPartCFrame(CFrame.new(destination))   
                        print("Player sat down, taking bus to the void!")  

                        task.wait(0.2)  

                        local function simulateJump()  
                            local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")  
                            if humanoid then  
                                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  
                            end  
                        end  

                        simulateJump()  
                        print("Simulating first jump!")  

                        task.wait(0.4)  
                        simulateJump()
                        print("Simulating second jump!")  

                        task.wait(0.5)
                        if originalPosition then
                            Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition  
                            print("Player returned to initial position.")  

                            task.wait(0.1)
                            local args = {
                                [1] = "DeleteAllVehicles"
                            }
                            ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))
                            print("All vehicles were deleted!")
                        end
                    end
                    break  
                else  
                    local targetRoot = targetPlayer.Character.HumanoidRootPart  
                    local time = tick() * 35
               
                    local lateralOffset = math.sin(time) * 10  -- Fast lateral movement  
                    local frontBackOffset = math.cos(time) * 20  -- Front/back movement
                      
                    local bus = GetBus()
                    if bus then
                        bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(0, 0, frontBackOffset))  
                    end
                end  
            end  
        end  
        RunService.RenderStepped:Wait()  
    end
    
    if callback then
        callback()
    end
end  

local function StartKillBus(playerName, callback)
    local selectedPlayerName = playerName

    local player = Players.LocalPlayer  
    local character = player.Character or player.CharacterAdded:Wait()  
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")  

    originalPosition = humanoidRootPart.CFrame  

    local bus = GetBus()  

    if not bus then  
        humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)  
        task.wait(0.5)  
        local remoteEvent = ReplicatedStorage:FindFirstChild("RE")  
        if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then  
            remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")  
        end  
        task.wait(1)  
        bus = GetBus()  
    end  

    if bus then  
        local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")  
        if seat and character:FindFirstChildOfClass("Humanoid") and not character.Humanoid.Sit then  
            repeat  
                humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)  
                task.wait()  
            until character.Humanoid.Sit or not bus.Parent  
        end  
    end  

    spawn(function()
        TrackPlayer(selectedPlayerName, callback)
    end)
end

local function PerformActionForAllPlayers(players)
    if #players == 0 then
        return
    end

    local player = table.remove(players, 1)
    if player ~= Players.LocalPlayer then
        StartKillBus(player.Name, function()
            task.wait(0.5)
            PerformActionForAllPlayers(players)
        end)
    else
        PerformActionForAllPlayers(players) -- Skip self and move to the next
    end
end

PerformActionForAllPlayers(Players:GetPlayers())
    end
})

AddSection(Main, {"القارب"})

AddButton(ScriptsTab, {
    Name = "قتل الجميع ف القارب",
    Callback = function()
        local Player = game.Players.LocalPlayer
    local Character = Player.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    local Vehicles = game.Workspace:FindFirstChild("Vehicles")
    local OldPos = RootPart.CFrame
    local Angles = 0
    local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
    
    -- If no car, create one
            if not PCar then  
                if RootPart then  
                    RootPart.CFrame = CFrame.new(1754, -2, 58)  
                    task.wait(0.5)  
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")  
                    task.wait(0.5)  
                    PCar = Vehicles:FindFirstChild(Player.Name.."Car")  
                    task.wait(0.5)  
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")  
                    if Seat then  
                        repeat  
                            task.wait()  
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)  
                        until Humanoid.Sit  
                    end  
                end  
            end  
      
            task.wait(0.5)  
            PCar = Vehicles:FindFirstChild(Player.Name.."Car")  
      
            -- If the car exists, teleport to the seat if necessary
            if PCar then  
                if not Humanoid.Sit then  
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")  
                    if Seat then  
                        repeat  
                            task.wait()  
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)  
                        until Humanoid.Sit  
                    end  
                end  
            end  
      
            -- Add BodyGyro to the car for movement control
            local SpinGyro = Instance.new("BodyGyro")  
            SpinGyro.Parent = PCar.PrimaryPart  
            SpinGyro.MaxTorque = Vector3.new(1e7, 1e7, 1e7)  
            SpinGyro.P = 1e7  
            SpinGyro.CFrame = PCar.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(90), 0)  
      
            -- Fling function for each player for 3 seconds
            local function flingPlayer(TargetC, TargetRP, TargetH)
    Angles = 0  
                local endTime = tick() + 1  -- Set end time to 2 seconds from now
                while tick() < endTime do  
                    Angles = Angles + 100  
                    task.wait()  
      
                    -- Movements and angles for the Fling
                    local kill = function(target, pos, angle)  
                        PCar:SetPrimaryPartCFrame(CFrame.new(target.Position) * pos * angle)  
                    end  
      
                    -- Fling to various positions around the TargetRP
                    kill(TargetRP, CFrame.new(0, 3, 0), CFrame.Angles(math.rad(Angles), 0, 0))  
                    kill(TargetRP, CFrame.new(0, -1.5, 2), CFrame.Angles(math.rad(Angles), 0, 0))  
                    kill(TargetRP, CFrame.new(2, 1.5, 2.25), CFrame.Angles(math.rad(50), 0, 0))  
                    kill(TargetRP, CFrame.new(-2.25, -1.5, 2.25), CFrame.Angles(math.rad(30), 0, 0))  
                    kill(TargetRP, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(Angles), 0, 0))  
                    kill(TargetRP, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(Angles), 0, 0))  
                end  
            end  
      
            -- Iterate over all players
            for _, Target in pairs(game.Players:GetPlayers()) do  
                -- Skip the local player
                if Target ~= Player then  
                    local TargetC = Target.Character  
                    local TargetH = TargetC and TargetC:FindFirstChildOfClass("Humanoid")  
                    local TargetRP = TargetC and TargetC:FindFirstChild("HumanoidRootPart")  
      
                    -- If the target and its components are found, execute the fling
                    if TargetC and TargetH and TargetRP then  
                        flingPlayer(TargetC, TargetRP, TargetH)  -- Fling the current player
                    end  
                end  
            end  
      
            -- Return the player to their original position
            task.wait(0.5)  
            PCar:SetPrimaryPartCFrame(CFrame.new(0, 0, 0))  
            task.wait(0.5)  
            Humanoid.Sit = false  
            task.wait(0.5)  
            RootPart.CFrame = OldPos  
      
            -- Remove the BodyGyro after the effect
            SpinGyro:Destroy()  
    end
})

AddSection(Main, {"ترول الجميع"})

AddButton(ScriptsTab, {
    Name = "فلنق للجميع",
    Callback = function()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local LocalPlayer = Players.LocalPlayer
    local cam = workspace.CurrentCamera


    local function ProcessPlayer(target)
        if not target or not target.Character or target == LocalPlayer then return end
        
        local flingActive = true
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local tRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
        if not root or not tRoot then return end
        
        local char = LocalPlayer.Character
        local hum = char:FindFirstChildOfClass("Humanoid")
        local original = root.CFrame

    
        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
        task.wait(0.2)

  
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
        task.wait(0.3)

        local tool = LocalPlayer.Backpack:FindFirstChild("Couch")
        if tool then
            tool.Parent = char
        end
task.wait(0.1)

game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
task.wait(0.25)

        workspace.FallenPartsDestroyHeight = 0/0

        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlingForce"
        bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Parent = root

        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        hum.PlatformStand = false
        cam.CameraSubject = target.Character:FindFirstChild("Head") or tRoot or hum

 
        task.spawn(function()
            local angle = 0
            local parts = {root}
            while flingActive and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
                local tHum = target.Character:FindFirstChildOfClass("Humanoid")
                if tHum.Sit then break end
                angle += 50

                for _, part in ipairs(parts) do
                    local hrp = target.Character.HumanoidRootPart
                    local pos = hrp.Position + hrp.Velocity / 1.5
                    root.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(angle), 0, 0)
                end

                root.Velocity = Vector3.new(9e8, 9e8, 9e8)
                root.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
                task.wait()
            end

         
            flingActive = false
            bv:Destroy()
            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            hum.PlatformStand = false
            root.CFrame = original
            cam.CameraSubject = hum

            for _, p in pairs(char:GetDescendants()) do
                if p:IsA("BasePart") then
                    p.Velocity = Vector3.zero
                    p.RotVelocity = Vector3.zero
                end
            end

            hum:UnequipTools()
            ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
        end)
       
        while flingActive do
            task.wait()
        end
    end


    for _, player in ipairs(Players:GetPlayers()) do
        ProcessPlayer(player)
			end
    end
})

AddSection(Main, {"تجميد الجميع"})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = game:GetService("Players").LocalPlayer

local RE = ReplicatedStorage:WaitForChild("RE")
local ClearEvent = RE:FindFirstChild("1Clea1rTool1s")
local ToolEvent = RE:FindFirstChild("1Too1l")
local FireEvent = RE:FindFirstChild("1Gu1n")

local frozenTargets = {}
local allFrozen = false
local recurringMsgTask = nil

-- دالة السلاح لتجميد لاعب بسرعة عالية
local function freezePlayer(player)
    if frozenTargets[player] then return end
    frozenTargets[player] = true

    task.spawn(function()
        while frozenTargets[player] and player.Character and player.Character:FindFirstChild("HumanoidRootPart") do
            if ClearEvent then ClearEvent:FireServer("ClearAllTools") end
            if ToolEvent then ToolEvent:InvokeServer("PickingTools","Assault") end
            local weapon = LocalPlayer.Backpack:FindFirstChild("Assault")
            if weapon then
                local gunScript = weapon:FindFirstChild("GunScript_Local")
                if gunScript then
                    FireEvent:FireServer(
                        player.Character.HumanoidRootPart,
                        player.Character.HumanoidRootPart,
                        Vector3.new(1e14,1e14,1e14),
                        player.Character.HumanoidRootPart.Position,
                        gunScript:FindFirstChild("MuzzleEffect"),
                        gunScript:FindFirstChild("HitEffect"),
                        0,0,
                        {false},
                        {25,Vector3.new(100,100,100),BrickColor.new(29),0.25,Enum.Material.SmoothPlastic,0.25},
                        true,false
                    )
                end
            end
            task.wait(0.1) -- السلاح يطلق بسرعة عالية الآن
        end
        frozenTargets[player] = nil
    end)
end

-- دالة تجميد الكل بالسلاح
local function freezeAll()
    allFrozen = true
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[All were frozen in the server by Xpolit hub🥶]")
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            freezePlayer(player)
        end
    end

    recurringMsgTask = task.spawn(function()
        while allFrozen do
            task.wait(120)
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("[The freezing of all in the server is still continuing by Xpolit hub🥶]")
        end
    end)
end

-- دالة إلغاء تجميد الكل
local function unfreezeAll()
    allFrozen = false
    frozenTargets = {}
    print("❌ تم إلغاء تجميد جميع اللاعبين")
end

-- =========================
-- أزرار Main
-- =========================
AddButton(Main,{
    Name = "تجميد الكل",
    Callback = function()
        freezeAll()
        print("✅ تم تجميد جميع اللاعبين")
    end
})

AddButton(Main,{
    Name = "إلغاء تجميد الكل",
    Callback = function()
        unfreezeAll()
    end
})

AddSection(Main, {"الكنبه"})

AddButton(ScriptsTab, {
    Name = "سحب الجميع ف الكنبه",
    Callback = function()
        local args = {
    [1] = "ClearAllTools"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))

wait(0.2)

toolselcted = "Couch"
dupeamot = 25 --Put amount to dupe
picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")
cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Duping",Text="Do not click anything while duping. ", Button1 = "I understand" ,Duration=5})
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupe Script",Text="Because It will break the script and you will need to rejoin.", Button1 = "I understand" ,Duration=5}) 
duping = true
oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
wait(0.1)
if game:GetService("Workspace"):FindFirstChild("Camera") then
    game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
end
for m=1,2 do 
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
end
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.5)
for aidj,afh in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if afh.Name == toolselcted == false then
        if afh:IsA("Tool") then
            afh.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
for aiefhiewhwf,dvjbvj in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if dvjbvj:IsA("Tool") then
        if dvjbvj.Name == toolselcted == false then
            dvjbvj:Destroy()
        end
    end
end
for ttjtjutjutjjtj,ddvdvdsvdfbrnytytmvdv in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if ddvdvdsvdfbrnytytmvdv:IsA("Tool") then
        if ddvdvdsvdfbrnytytmvdv.name == toolselcted == false then
            ddvdvdsvdfbrnytytmvdv:Destroy()
        end
    end
end
for findin,toollel in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if toollel:IsA("Tool") then
        if toollel.Name == toolselcted then
            toollllfoun2 = true
            for basc,aijfw in pairs(toollel:GetDescendants()) do
                if aijfw.Name == "Handle" then
                    aijfw.Name = "Hâ ¥aâ ¥nâ ¥dâ ¥lâ ¥e"
                    toollel.Parent = game.Players.LocalPlayer.Backpack
                    toollel.Parent = game.Players.LocalPlayer.Character
                    tollllahhhh = toollel
                    task.wait()
                end
            end
        else 
            toollllfoun2 = false
        end
    end
end
for fiifi,toollll in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if toollll:IsA("Tool") then
        if toollll.Name == toolselcted then
            toollllfoun = true
            for nana,jjsjsj in pairs(toollll:GetDescendants()) do
                if jjsjsj.Name == "Handle" then
                    toollll.Parent = game.Players.LocalPlayer.Character
                    wait()
                    jjsjsj.Name = "Hâ ¥aâ ¥nâ ¥dâ ¥lâ ¥e"
                    toollll.Parent = game.Players.LocalPlayer.Backpack
                    toollll.Parent = game.Players.LocalPlayer.Character
                    toolllffel = toollll
                end
            end
        else 
            toollllfoun = false
        end
    end
end
if toollllfoun == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil then  
        toollllfoun = false 
    end
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil
    toollllfoun = false
end
if toollllfoun2 == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil then 
        toollllfoun2 = false 
    end
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil
    toollllfoun2 = false
end
wait(0.1)
for m=1, dupeamot do
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end
    if game:GetService("Workspace"):FindFirstChild("Camera") then
        game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
    end
    if m <= dupeamot then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Duping",Text="You have".." "..m.." ".."Duped".." "..toolselcted.."!",Duration=0.5})
    elseif m == dupeamot or m >= dupeamot - 1 then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Duping",Text="You have".." "..m.." ".."Duped".." "..toolselcted.."!".." ".."Duping tools is done now, Please wait a little bit to respawn.",Duration=4})
    end
    local args = {
        [1] = "PickingTools",
        [2] = toolselcted
    }
    
    picktoolremote:InvokeServer(unpack(args))
    game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolselcted).Parent = game.Players.LocalPlayer.Character
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end
    wait()
    game:GetService("Players").LocalPlayer.Character[toolselcted]:FindFirstChild("Handle").Name = "Hâ ¥aâ ¥nâ ¥dâ ¥lâ ¥e"
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Backpack
    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Character
    repeat  
        if game:GetService("Workspace"):FindFirstChild("Camera") then
            game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
        end
        task.wait() 
    until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted) == nil
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
wait()
duping = false

for wwefef,weifwwe in pairs(game.Players:GetPlayers()) do
    if weifwwe.Name == game.Players.LocalPlayer.Name == false then
        ewoifjwoifjiwo = wwefef
    end
end
for m=1,ewoifjwoifjiwo do
    game.Players.LocalPlayer.Backpack.Couch.Name = "couch"..m
end
wait()
for weofefawd,iwiejguiwg in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if iwiejguiwg.Name == "couch"..weofefawd then
        iwiejguiwg.Handle.Name = "Handle "
    end
end
wait(0.2)
local function bring(skjdfuwiruwg,woiejewg)
    if woiejewg == nil == false then
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Seat1").Disabled = true
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Seat2").Disabled = true
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
        tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Handle "))
        tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        tet.P = 1250
        tet.Velocity = Vector3.new(0,0,0)
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
        repeat
            for m=1,35 do
                local pos = {x=0, y=0, z=0}
                pos.x = woiejewg.Character.HumanoidRootPart.Position.X
                pos.y = woiejewg.Character.HumanoidRootPart.Position.Y
                pos.z = woiejewg.Character.HumanoidRootPart.Position.Z
                pos.x = pos.x + woiejewg.Character.HumanoidRootPart.Velocity.X / 2
                pos.y = pos.y + woiejewg.Character.HumanoidRootPart.Velocity.Y / 2
                pos.z = pos.z + woiejewg.Character.HumanoidRootPart.Velocity.Z / 2
                game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Seat1").CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) * CFrame.new(-2,2,0)
                task.wait()
            end
            game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
            wait()
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle"
            wait(0.2)
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
            wait()
            game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Handle.Name = "Handle "
            wait(0.2)
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
            tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Seat1"))
            tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            tet.P = 1250
            tet.Velocity = Vector3.new(0,0,0)
            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
        until woiejewg.Character.Humanoid.Sit == true
        wait()
        game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Handle "):FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
        game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
        wait()
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle"
        wait(0.2)
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
        wait()
        game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
    end
end
for mwef,weuerg in pairs(game.Players:GetPlayers()) do
    if weuerg.Name == game.Players.LocalPlayer.Name == false then
        spawn(function()
            bring(mwef,weuerg)
        end)
    end
end
    end
})

AddButton(ScriptsTab, {
    Name = "قتل الكل كنبه",
    Callback = function()
        local args = {
    [1] = "ClearAllTools"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))

wait(0.2)

local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

local part = Instance.new("Part")
part.Size = Vector3.new(5000, 10, 5000)
part.Position = Vector3.new(0, -500, 0)
part.Anchored = true
part.CanCollide = true
part.Parent = game.Workspace
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -500, 0)
wait(2)
toolselcted = "Couch"
dupeamot = 25 -- dupe amount
picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")
cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Duping",Text="Don't click anything", Button1 = "I understand" ,Duration=5})
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Duping",Text="Wait", Button1 = "Got it" ,Duration=5})
duping = true
oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
wait(0.1)
if game:GetService("Workspace"):FindFirstChild("Camera") then
    game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
end
for m=1,2 do 
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
end
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.5)
for aidj,afh in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if afh.Name == toolselcted == false then
        if afh:IsA("Tool") then
            afh.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
for aiefhiewhwf,dvjbvj in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if dvjbvj:IsA("Tool") then
        if dvjbvj.Name == toolselcted == false then
            dvjbvj:Destroy()
        end
    end
end
for ttjtjutjutjjtj,ddvdvdsvdfbrnytytmvdv in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if ddvdvdsvdfbrnytytmvdv:IsA("Tool") then
        if ddvdvdsvdfbrnytytmvdv.Name == toolselcted == false then
            ddvdvdsvdfbrnytytmvdv:Destroy()
        end
    end
end
for findin,toollel in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if toollel:IsA("Tool") then
        if toollel.Name == toolselcted then
            toollllfoun2 = true
            for basc,aijfw in pairs(toollel:GetDescendants()) do
                if aijfw.Name == "Handle" then
                    aijfw.Name = "Hâ ¥aâ ¥nâ ¥dâ ¥lâ ¥e"
                    toollel.Parent = game.Players.LocalPlayer.Backpack
                    toollel.Parent = game.Players.LocalPlayer.Character
                    tollllahhhh = toollel
                    task.wait()
                end
            end
        else 
            toollllfoun2 = false
        end
    end
end
for fiifi,toollll in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if toollll:IsA("Tool") then
        if toollll.Name == toolselcted then
            toollllfoun = true
            for nana,jjsjsj in pairs(toollll:GetDescendants()) do
                if jjsjsj.Name == "Handle" then
                    toollll.Parent = game.Players.LocalPlayer.Character
                    wait()
                    jjsjsj.Name = "Hâ ¥aâ ¥nâ ¥dâ ¥lâ ¥e"
                    toollll.Parent = game.Players.LocalPlayer.Backpack
                    toollll.Parent = game.Players.LocalPlayer.Character
                    toolllffel = toollll
                end
            end
        else 
            toollllfoun = false
        end
    end
end
if toollllfoun == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil then 
        toollllfoun = false 
    end
    repeat 
        wait() 
    until game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil
    toollllfoun = false
end
if toollllfoun2 == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil then 
        toollllfoun2 = false 
    end
    repeat 
        wait() 
    until game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil
    toollllfoun2 = false
end
wait(0.1)
for m=1, dupeamot do
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end
    if game:GetService("Workspace"):FindFirstChild("Camera") then
        game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
    end
    if m <= dupeamot then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupe Script",Text="Now you have".." "..m.." ".."Duped".." "..toolselcted.."!",Duration=0.5})
    elseif m == dupeamot or m >= dupeamot - 1 then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupe Script",Text="Now you have".." "..m.." ".."Duped".." "..toolselcted.."!".." ".."Tools are being duped, don't click anything.",Duration=4})
    end
    local args = {
        [1] = "PickingTools",
        [2] = toolselcted
    }

    picktoolremote:InvokeServer(unpack(args)) 
    game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolselcted).Parent = game.Players.LocalPlayer.Character 
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end 
    wait() 
    game:GetService("Players").LocalPlayer.Character[toolselcted]:FindFirstChild("Handle").Name = "Hâ ¥aâ ¥nâ ¥dâ ¥lâ ¥e" 
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Backpack 
    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Character 
    repeat 
        if game:GetService("Workspace"):FindFirstChild("Camera") then 
            game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
        end 
        task.wait() 
    until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted) == nil 
end 
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
repeat 
    wait() 
until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil 
repeat 
    wait() 
until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf 
wait() 
duping = false 
for wwefef,weifwwe in pairs(game.Players:GetPlayers()) do 
    if weifwwe.Name == game.Players.LocalPlayer.Name == false then 
        ewoifjwoifjiwo = wwefef 
    end 
end 
for m=1,ewoifjwoifjiwo do 
    game.Players.LocalPlayer.Backpack.Couch.Name = "Chaos Couch"..m 
end 
wait() 
for weofefawd,iwiejguiwg in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
    if iwiejguiwg.Name == "Chaos Couch"..weofefawd then 
        iwiejguiwg.Handle.Name = "Handle " 
    end 
end 
wait(0.2) 
local function bring(skjdfuwiruwg,woiejewg) 
    if woiejewg == nil == false then 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat1").Disabled = true 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat2").Disabled = true 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
        tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle ")) 
        tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
        tet.P = 1250 
        tet.Velocity = Vector3.new(0,0,0) 
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W" 
        repeat 
            for m=1,35 do 
                local pos = {x=0, y=0, z=0} 
                pos.x = woiejewg.Character.HumanoidRootPart.Position.X 
                pos.y = woiejewg.Character.HumanoidRootPart.Position.Y 
                pos.z = woiejewg.Character.HumanoidRootPart.Position.Z 
                pos.x = pos.x + woiejewg.Character.HumanoidRootPart.Velocity.X / 2 
                pos.y = pos.y + woiejewg.Character.HumanoidRootPart.Velocity.Y / 2 
                pos.z = pos.z + woiejewg.Character.HumanoidRootPart.Velocity.Z / 2 
                game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat1").CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) * CFrame.new(-2,2,0) 
                task.wait() 
            end 
            game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
            wait() 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle" 
            wait(0.2) 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
            wait() 
            game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Handle.Name = "Handle " 
            wait(0.2) 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
            tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat1")) 
            tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
            tet.P = 1250 
            tet.Velocity = Vector3.new(0,0,0) 
            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W" 
        until woiejewg.Character.Humanoid.Sit == true 
        wait() 
        game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle "):FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy() 
        game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
        wait() 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle" 
        wait(0.2) 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
        wait() 
        game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
    end 
end 
for mwef,weuerg in pairs(game.Players:GetPlayers()) do 
    if weuerg.Name == game.Players.LocalPlayer.Name == false then 
        spawn(function() bring(mwef,weuerg) end) 
    end 
end 

-- Function to teleport the player back to the initial position after 10 seconds
task.delay(14, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(initialPosition)
end)

-- Function to clear all tools 0.5 seconds after teleporting to the initial position
task.delay(14.1, function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))
end)
    end
})

AddSection(Main, {"الكره"})

AddButton(ScriptsTab, {
    Name = "فلنق الجميع كره",
    Callback = function()
local player=game:GetService("Players").LocalPlayer
local SoccerBalls=workspace.WorkspaceCom["001_SoccerBalls"]
local MyBall=SoccerBalls:FindFirstChild("Soccer"..player.Name)

if not MyBall then
if not player.Backpack:FindFirstChild("SoccerBall") then
local args={[1]="PickingTools",[2]="SoccerBall"}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
task.wait()
player.Backpack.SoccerBall.Parent=player.Character
repeat MyBall=SoccerBalls:FindFirstChild("Soccer"..player.Name) task.wait() until MyBall
player.Character.SoccerBall.Parent=player.Backpack
task.wait()
else
player.Backpack.SoccerBall.Parent=player.Character
repeat MyBall=SoccerBalls:FindFirstChild("Soccer"..player.Name) task.wait() until MyBall
player.Character.SoccerBall.Parent=player.Backpack
end
end


for i,v in pairs(game.Players:GetPlayers()) do
if v~=game.Players.LocalPlayer then
local target=v
local TCharacter=target.Character or target.CharacterAdded:Wait()
local THumanoidRootPart=TCharacter:WaitForChild("HumanoidRootPart")
if not MyBall or not THumanoidRootPart then return end

for _,v in pairs(MyBall:GetChildren()) do
if v:IsA("BodyMover") then v:Destroy() end
end

local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.Velocity=Vector3.new(9e8,9e8,9e8)
bodyVelocity.MaxForce=Vector3.new(1/0,1/0,1/0)
bodyVelocity.P=1e10
bodyVelocity.Parent=MyBall

local bv=Instance.new("BodyVelocity")
bv.Velocity=Vector3.new(9e8,9e8,9e8)
bv.MaxForce=Vector3.new(1/0,1/0,1/0)
bv.P=1e9
bv.Parent=THumanoidRootPart

local oldPos=THumanoidRootPart.Position
workspace.CurrentCamera.CameraSubject=THumanoidRootPart

repeat
local velocity=THumanoidRootPart.Velocity.Magnitude
local parts={}
for _,v in pairs(TCharacter:GetDescendants()) do
if v:IsA("BasePart") and v.CanCollide and not v.Anchored then table.insert(parts,v) end
end
for _,part in ipairs(parts) do
local pos_x=target.Character.HumanoidRootPart.Position.X
local pos_y=target.Character.HumanoidRootPart.Position.Y
local pos_z=target.Character.HumanoidRootPart.Position.Z
pos_x=pos_x+(target.Character.HumanoidRootPart.Velocity.X/1.5)
pos_y=pos_y+(target.Character.HumanoidRootPart.Velocity.Y/1.5)
pos_z=pos_z+(target.Character.HumanoidRootPart.Velocity.Z/1.5)
MyBall.CFrame=CFrame.new(pos_x,pos_y,pos_z)
task.wait(1/6000)
end
task.wait(1/6000)
until THumanoidRootPart.Velocity.Magnitude>5000 or TCharacter.Humanoid.Health==0 or target.Parent~=game.Players or THumanoidRootPart.Parent~=TCharacter or TCharacter~=target.Character

end
end

workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  end
})

AddSection(Main, {"لاق السيرفر وتدميره"})

AddButton(ScriptsTab, {
    Name = "تدمير وأيقاف السيرفر ف الكامل",
    Callback = function()
        for m = 1, 495 do
            local args = {
                [1] = "PickingTools",
                [2] = "FireHose"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
            local args = {
                [1] = "FireHose",
                [2] = "DestroyFireHose"
            }
            game:GetService("Players").LocalPlayer.Backpack.FireHose.ToolSound:FireServer(unpack(args))
        end
        local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -475, 999999999.414)
        local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
        repeat wait() until rootpart.Parent == nil
        repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Dupe Script",
            Text = "Shutdown Complete, Now It Will Shut Down",
            Button1 = "Ok",
            Duration = 5
        })
        wait()
        for _, ergeg in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if ergeg.Name == "FireHose" then
                ergeg.Parent = game.Players.LocalPlayer.Character
            end
        end
        wait(0.2)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Dupe Script",
            Text = "Starting duplication, be patient",
            Button1 = "Ok",
            Duration = 5
        })
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, -475, 9999)
    end
})

AddButton(ScriptsTab, {
    Name = "تفعيل فشل الأتصال ف الانترنيت",
    Callback = function()
        for m = 1, 535 do
            local args = {
                [1] = "PickingTools",
                [2] = "FireHose"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
            local args = {
                [1] = "FireHose",
                [2] = "DestroyFireHose"
            }
            game:GetService("Players").LocalPlayer.Backpack.FireHose.ToolSound:FireServer(unpack(args))
        end
        local oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -475, 999999999.414)
        local rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
        repeat wait() until rootpart.Parent == nil
        repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Dupe Script",
            Text = "Shutdown Complete, Now It Will Shut Down",
            Button1 = "Ok",
            Duration = 5
        })
        wait()
        for _, ergeg in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if ergeg.Name == "FireHose" then
                ergeg.Parent = game.Players.LocalPlayer.Character
            end
        end
        wait(0.2)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Dupe Script",
            Text = "Starting duplication, be patient",
            Button1 = "Ok",
            Duration = 5
        })
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999, -475, 9999)
    end
})

local toggles = { LagLaptop = false }

-- Function to Simulate Normal Click
local function clickNormally(object)
    local clickDetector = object:FindFirstChildWhichIsA("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector)
    end
end

-- Function to Lag Game with Laptop
local function lagGameWithLaptop(laptopPath, maxTeleports)
    if laptopPath then
        local teleportCount = 0
        while teleportCount < maxTeleports and toggles.LagLaptop do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = laptopPath.CFrame
            clickNormally(laptopPath)
            teleportCount = teleportCount + 1
            wait(0.0001)
        end
    else
        warn("Laptop not found.")
    end
end

-- Lag Laptop Toggle
AddToggle(ScriptsTab, {
    Name = "رعب أيقاف ف اللابتوب",
    Default = false,
    Callback = function(state)
        toggles.LagLaptop = state
        if state then
            local laptopPath = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_GiveTools"):FindFirstChild("Laptop")
            if laptopPath then
                spawn(function()
                    lagGameWithLaptop(laptopPath, 999999999)
                end)
            else
                warn("Laptop not found.")
            end
        else
            print("Lag with Laptop deactivated.")
        end
    end
})

toggles.LagPhone = false

-- Function to Lag Game with Phone
local function lagGameWithPhone(phonePath, maxTeleports)
    if phonePath then
        local teleportCount = 0
        while teleportCount < maxTeleports and toggles.LagPhone do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = phonePath.CFrame
            clickNormally(phonePath)
            teleportCount = teleportCount + 1
            wait(0.01)
        end
    else
        warn("Phone not found.")
    end
end

-- Lag Phone Toggle
AddToggle(ScriptsTab, {
    Name = "جحيم الهاتف أسطوري",
    Default = false,
    Callback = function(state)
        toggles.LagPhone = state
        if state then
            local phonePath = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_CommercialStores"):FindFirstChild("CommercialStorage1"):FindFirstChild("Store"):FindFirstChild("Tools"):FindFirstChild("Iphone")
            if phonePath then
                spawn(function()
                    lagGameWithPhone(phonePath, 999999)
                end)
            else
                warn("Phone not found.")
            end
        else
            print("Lag with Phone deactivated.")
        end
    end
})

local Main = MakeTab({
    Name = "تنقل",
    Image = "rbxassetid://75014710749916",
    TabTitle = false
})

AddButton(Main, {
  Name = "أداة تنقل",
  Callback = function()
    mouse = game.Players.LocalPlayer:GetMouse() 

tool = Instance.new("Tool") 

tool.RequiresHandle = false 

tool.Name = "أداة تنقل المطور ساموراي" 

tool.Activated:connect(function() 

local pos = mouse.Hit+Vector3.new(0,2.5,0) 

pos = CFrame.new(pos.X,pos.Y,pos.Z) 

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos 

end) 

tool.Parent = game.Players.LocalPlayer.Backpack
  end
})

-- دالة تسوي زر تنقل استعراضي
local function CreateTeleportButton(parent, name, x, y, z)
    AddButton(parent, {
        Name = name,
        Callback = function()
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")

            if hrp then
                local TweenService = game:GetService("TweenService")
                local duration = 2.5
                local finalPos = Vector3.new(x, y, z)

                local midPos = (hrp.Position + finalPos) / 2
                midPos = midPos + Vector3.new(0, 15, 0) -- ارتفاع الطيران

                local spinAngle = math.rad(360) -- لفة كاملة

                local tween1 = TweenService:Create(
                    hrp,
                    TweenInfo.new(duration, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
                    {CFrame = CFrame.new(midPos) * CFrame.Angles(0, spinAngle / 2, 0)}
                )

                local tween2 = TweenService:Create(
                    hrp,
                    TweenInfo.new(duration, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
                    {CFrame = CFrame.new(finalPos) * CFrame.Angles(0, spinAngle, 0)}
                )

                tween1:Play()
                tween1.Completed:Connect(function()
                    tween2:Play()
                end)
            else
                warn("HumanoidRootPart not found")
            end
        end
    })
end

-- إنشاء الأزرار لكل الأماكن
CreateTeleportButton(Main, "النافورة", -26, 6, -16)
CreateTeleportButton(Main, "باب محطة القطار", 20, 6, 52)
CreateTeleportButton(Main, "الأسواق", 18, 6, -106)
CreateTeleportButton(Main, "صالون", -74, 6, -100)
CreateTeleportButton(Main, "المرقص والعياذ بالله", -75, 23, -133)
CreateTeleportButton(Main, "مكتب", -123, 24, -135)
CreateTeleportButton(Main, "محل أيس كريم", -127, 6, -114)
CreateTeleportButton(Main, "ألعاب", -168, 6, -110)
CreateTeleportButton(Main, "مكان الشرطة", -120, 6, -10)
CreateTeleportButton(Main, "مستشفى", -303, 6, -19)
CreateTeleportButton(Main, "مختبر المستشفى المهجور", -281, 20, 82)
CreateTeleportButton(Main, "المقبرة", -458, 6, 53)
CreateTeleportButton(Main, "مدرسة", -268, 6, 214)
CreateTeleportButton(Main, "حضانة", -174, 6, 175)
CreateTeleportButton(Main, "لوحة 1", -240, 96, -548)
CreateTeleportButton(Main, "لوحة 2", 357, 65, 582)
CreateTeleportButton(Main, "لوحة 3", -624, 35, 356)
CreateTeleportButton(Main, "مبنى الإشعاع", 501, 16, 389)
CreateTeleportButton(Main, "البيت المهجور", 1017, 8, 47)
CreateTeleportButton(Main, "مكان الأحصنة", -757, 21, -62)
CreateTeleportButton(Main, "الحضيرة", -848, 8, -441)
CreateTeleportButton(Main, "مكان الباخرة", -114, 10, 866)
CreateTeleportButton(Main, "مكان الدرون", -663, 255, 761)
CreateTeleportButton(Main, "مكان البوابة الكبيرة", -589, 144, -58)
CreateTeleportButton(Main, "مكان الأسلحة", -119, -25, 235)
CreateTeleportButton(Main, "مطعم", 161, 7, 52)
CreateTeleportButton(Main, "الجزيرة", -1925, 25, 127)
CreateTeleportButton(Main, "المطار", 310, 7, 31)
CreateTeleportButton(Main, "المكان السري تحت الجبل", 179, 6, -464)
CreateTeleportButton(Main, "مكان سري", 672, 6, -296) -- فوق تحت الماب 1
CreateTeleportButton(Main, "تحت الماب 1", 0, 6, -495)
CreateTeleportButton(Main, "تحت الماب 2", -343, 6, -613)
CreateTeleportButton(Main, "تحت الماب 3", 505, -74, 143)
CreateTeleportButton(Main, "فوق الإشعاع", 757, 162, 549)
CreateTeleportButton(Main, "مكان رسبنه الباص", 1169, 82, -1119)
CreateTeleportButton(Main, "مكان رسبنه السفينة", 1780, 18, 81)
  
  local Main = MakeTab({
    Name = "الشات",
    Image = "rbxassetid://113424828294821",
    TabTitle = false
})
  
  local TextSave
  local tcs = game:GetService("TextChatService")
  local chat = tcs.ChatInputBarConfiguration.TargetTextChannel
  function sendchat(msg)
    if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
      game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
    else
      chat:SendAsync(msg)
    end
  end
  AddTextBox(Main, {
    Name = "اكتب رسالتك",
    Description = "اكتب الرسالة",
    Flag = "هنا",
    Default = false,
    Callback = function(text)
      TextSave = text
    end
  })
  
  
  
  AddToggle(Main, {
    Name = "بدء السبام",
    Description = "سبام كتابتك",
    Flag = ".",
    Default = false,
    Callback = function(Value)
      getgenv().RaelHubSpawnText = Value
      while getgenv().RaelHubSpawnText do
        sendchat(TextSave)
        task.wait(0.1)
      end
    end
  })
  AddButton(Main, {
  	Name = "شات كذبي",
  	Callback = function()
        		loadstring(game:HttpGet("https://raw.githubusercontent.com/game-hax/uca/main/release/uca.min.lua"))()
    	end    
  })
  AddButton(Main, {
  	Name = "رسم في الشات",
  	Callback = function()
        		loadstring(game:HttpGet("https://pastebin.com/raw/Q5zhT6Mv"))()
    	end    
  })
 
 local Main = MakeTab({
    Name = "المضادات",
    Image = "rbxassetid://72197666517711",
    TabTitle = false
})

AddToggle(ScriptsTab, {
    Name = "مضاد جلوس",
    Description = "مضاد جلوس فائق",
    Default = false,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local connections = {}
        local runService = game:GetService("RunService")


        local function preventSitting(humanoid)
            if humanoid then
                humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                local sitConnection = humanoid.StateChanged:Connect(function(_, newState)
                    if newState == Enum.HumanoidStateType.Seated then
                        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    end
                end)
                table.insert(connections, sitConnection)
            end
        end


        local function monitorCharacter()
            local function onCharacterAdded(character)
                local humanoid = character:WaitForChild("Humanoid")
                preventSitting(humanoid)
            end


            local characterAddedConnection = player.CharacterAdded:Connect(onCharacterAdded)
            table.insert(connections, characterAddedConnection)


            if player.Character then
                onCharacterAdded(player.Character)
            end
        end


        local function resetSitting()
            for _, connection in ipairs(connections) do
                connection:Disconnect()
            end
            connections = {}
            local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end
        end


        if Value then
            monitorCharacter()
            local heartbeatConnection = runService.Heartbeat:Connect(function()
                local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                end
            end)
            table.insert(connections, heartbeatConnection)
        else
            resetSitting()
        end
    end
})

AddSection(Main, {"أنتبه عزيزي المتسخدم وراء كل كتم اغاني اقتل نفسك"})

AddButton(Main, {
    Name = "اقتل نفسك للريست",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local antiAudioEnabled = false
local forceMuteEnabled = false
local connections = {}

local volumeThreshold = 1 -- للحد العادي

-- دالة تكتم كل أصوات الأغاني (سبام) وأيضاً تطبق الحد العادي
local function muteIfLoud(sound)
    -- تكتم كل أصوات سبام الأغاني بناءً على الاسم أو أي قاعدة محددة
    if sound.Name:match("Sound") or forceMuteEnabled or (volumeThreshold ~= math.huge and sound.Volume > volumeThreshold) then
        sound.Volume = 0
    end
end

-- تشغيل المضاد
local function startAntiAudio()
    for _, s in ipairs(workspace:GetDescendants()) do
        if s:IsA("Sound") then
            muteIfLoud(s)
        end
    end

    connections["workspace"] = workspace.DescendantAdded:Connect(function(obj)
        if obj:IsA("Sound") and (antiAudioEnabled or forceMuteEnabled) then
            task.defer(function()
                muteIfLoud(obj)
            end)
        end
    end)

    print("مضاد الأغاني شغال: كل أصوات الأغاني والسبام سيتم كتمها")
end

local function stopAntiAudio()
    for _, c in pairs(connections) do
        if c.Connected then
            c:Disconnect()
        end
    end
    connections = {}
    print("المضاد انطفأ: الأصوات كلها مسموعة")
end

-- Toggle العادي
AddToggle(ScriptsTab, {
    Name = "مضاد الأغاني العالية",
    Default = false,
    Callback = function(state)
        antiAudioEnabled = state
        if state then
            startAntiAudio()
        else
            stopAntiAudio()
        end
    end
})

-- Toggle كتم كل الأصوات
AddToggle(ScriptsTab, {
    Name = "كتم كل الأصوات",
    Default = false,
    Callback = function(state)
        forceMuteEnabled = state
        for _, s in ipairs(workspace:GetDescendants()) do
            if s:IsA("Sound") then
                muteIfLoud(s)
            end
        end
        print("كتم كل الأصوات: "..(forceMuteEnabled and "مفعل" or "غير مفعل"))
    end
})

-- Dropdown للحد العادي (يمكن التحكم به لأصوات ثانية غير الأغاني)
local volumeOptions = {"إلغاء الكتم"}
for i = 1, 100 do
    table.insert(volumeOptions, string.format("%.1f", i * 0.1))
end

AddDropdown(ScriptsTab, {
    Name = "مستوى الصوت المسموح",
    Options = volumeOptions,
    Default = "1.0",
    Callback = function(value)
        if value == "إلغاء الكتم" then
            volumeThreshold = math.huge
        else
            volumeThreshold = tonumber(value)
        end
        print("الحد الجديد للصوت: "..(volumeThreshold==math.huge and "∞" or volumeThreshold))
        for _, s in ipairs(workspace:GetDescendants()) do
            if s:IsA("Sound") then
                muteIfLoud(s)
            end
        end
    end
})

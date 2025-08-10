-- بداية واجهة ومعلومات المطورين والسكربتات (كما هي بدون تغيير)
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

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

-- تبويب السكربتات الجاهزة للتشغيل
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

-- تبويب التخريب - Troll Tab
local TrollTab = MakeTab({
    Name = "التخريب",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

local selectedPlayer = nil
local playerNames = {}

-- تحديث قائمة اللاعبين
local function UpdatePlayerList()
    playerNames = {}
    for _, plr in pairs(Players:GetPlayers()) do
        table.insert(playerNames, plr.Name)
    end
    if Dropdown then
        Dropdown:SetOptions(playerNames)
    end
end

UpdatePlayerList()

local Dropdown = AddDropdown(TrollTab, {
    Name = "اختار اللاعب",
    Options = playerNames,
    Default = "",
    Callback = function(value)
        selectedPlayer = value
        print("تم اختيار اللاعب: " .. value)
    end
})

AddButton(TrollTab, {
    Name = "تحديث القائمة",
    Callback = function()
        UpdatePlayerList()
    end
})

-- متغيرات عامه
local Angles = 0
local Humanoid, rootPart, playerCharacter

-- دالة التحقق من الشخصية وجذرها
local function Check()
    playerCharacter = LocalPlayer.Character
    if not playerCharacter then return false end
    rootPart = playerCharacter:FindFirstChild("HumanoidRootPart")
    Humanoid = playerCharacter:FindFirstChildOfClass("Humanoid")
    if not rootPart or not Humanoid then return false end
    return true
end

-- زر "قتل اللاعب" بالباص
AddButton(TrollTab, {
    Name = "تدمير اللاعب بالباص",
    Callback = function()
        if not selectedPlayer then
            print("لم يتم اختيار لاعب!")
            return
        end

        if not Check() then
            print("شخصيتك غير جاهزة!")
            return
        end

        local Vehicles = Workspace:FindFirstChild("Vehicles")
        if not Vehicles then
            print("لا توجد مركبات في اللعبة!")
            return
        end

        local Houses = Workspace:FindFirstChild("Houses")
        if not Houses then
            print("لا توجد منازل في اللعبة!")
            return
        end

        -- إيجاد المنزل المناسب للشراء (أو تنفيذ ما يلزم)
        local EHouse = nil
        for _, Lot in pairs(Houses:GetChildren()) do
            for _, num in pairs(Lot:GetDescendants()) do
                if num:IsA("NumberValue") and num.Name == "Number" and num.Value < 25 and num.Value > 10 then
                    EHouse = Lot
                    break
                end
            end
            if EHouse then break end
        end

        if not EHouse then
            print("لم يتم إيجاد المنزل المناسب!")
            return
        end

        local BuyDetector = EHouse:FindFirstChild("BuyHouse")
        if BuyDetector and BuyDetector:IsA("BasePart") then
            rootPart.CFrame = BuyDetector.CFrame + Vector3.new(0, -6, 0)
            task.wait(0.5)
            local ClickDetector = BuyDetector:FindFirstChild("ClickDetector")
            if ClickDetector then
                fireclickdetector(ClickDetector)
            end
        end

        task.wait(0.5)

        local PreHouse = Houses:FindFirstChild(LocalPlayer.Name .. "House")
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
                repEvent:FireServer("PickingCustomHouse", "049_House", Number and Number.Value)
            end
        end

        task.wait(0.5)

        local PCar = Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")

        if not PCar then
            if Check() then
                rootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
                task.wait(0.5)
                local carEvent = ReplicatedStorage.RE:FindFirstChild("1Ca1r")
                if carEvent then
                    carEvent:FireServer("PickingCar", "SchoolBus")
                end
                task.wait(0.5)
                PCar = Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
                task.wait(0.5)
                if PCar then
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                    if Seat then
                        repeat
                            task.wait()
                            rootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                        until Humanoid.Sit
                    end
                end
            end
        end

        task.wait(0.5)

        if PCar then
            if not Humanoid.Sit then
                local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                if Seat then
                    repeat
                        task.wait()
                        rootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                    until Humanoid.Sit
                end
            end

            local Target = Players:FindFirstChild(selectedPlayer)
            if not Target or not Target.Character then
                print("لا يمكن إيجاد اللاعب الهدف.")
                return
            end
            local TargetHumanoid = Target.Character:FindFirstChildOfClass("Humanoid")
            local TargetRoot = Target.Character:FindFirstChild("HumanoidRootPart")
            if not TargetHumanoid or not TargetRoot then
                print("لا يمكن إيجاد أجزاء اللاعب الهدف.")
                return
            end

            Angles = 0
            repeat
                task.wait()
                Angles = Angles + 50
                PCar:SetPrimaryPartCFrame(CFrame.new(TargetRoot.Position) * CFrame.Angles(0, math.rad(Angles), 0) * CFrame.new(0, 0, 3))
            until TargetHumanoid.Sit or not PCar.Parent
        else
            print("لم يتم إيجاد الباص الخاص بك.")
        end
    end
})

-- زر "سحب اللاعب بالباص"
AddButton(TrollTab, {
    Name = "سحب اللاعب بالباص",
    Callback = function()
        if not selectedPlayer then
            print("لم يتم اختيار لاعب!")
            return
        end

        if not Check() then
            print("شخصيتك غير جاهزة!")
            return
        end

        local Vehicles = Workspace:FindFirstChild("Vehicles")
        if not Vehicles then
            print("لا توجد مركبات في اللعبة!")
            return
        end

        local bus = Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")

        if not bus then
            rootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
            task.wait(0.5)
            local remoteEvent = ReplicatedStorage:FindFirstChild("RE")
            if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then
                remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
            end
            task.wait(1)
            bus = Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
        end

        if bus then
            local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")
            if seat and Humanoid and not Humanoid.Sit then
                repeat
                    task.wait()
                    rootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
                until Humanoid.Sit or not bus.Parent
            end

            spawn(function()
                while Humanoid.Sit and selectedPlayer do
                    local targetPlayer = Players:FindFirstChild(selectedPlayer)
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                        local targetRoot = targetPlayer.Character.HumanoidRootPart
                        if targetHumanoid and targetHumanoid.Sit then
                            bus:SetPrimaryPartCFrame(rootPart.CFrame)
                            task.wait(0.2)
                            Humanoid.Jump = true
                            task.wait(0.2)
                            rootPart.CFrame = rootPart.CFrame
                        else
                            local time = tick() * 35
                            local lateralOffset = math.sin(time) * 4
                            local frontBackOffset = math.cos(time) * 20
                            bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                        end
                    end
                    RunService.RenderStepped:Wait()
                end
            end)
        else
            print("لم يتم إيجاد الباص الخاص بك.")
        end
    end
})

-- نودكليب (التخطي عن التصادم)
local noclipEnabled = false
local noclipConnection = nil

local function setCharacterCanCollide(character, canCollide)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
end

AddToggle(TrollTab, {
    Name = "نودكليب (عديم التصادم)",
    Default = false,
    Callback = function(value)
        noclipEnabled = value
        local character = LocalPlayer.Character
        if noclipEnabled then
            noclipConnection = RunService.Stepped:Connect(function()
                if character then
                    -- تابع من كلمة character لكود النودكليب

                    setCharacterCanCollide(character, false)
                end
            end)
        else
            if noclipConnection then
                noclipConnection:Disconnect()
                noclipConnection = nil
            end
            local character = LocalPlayer.Character
            if character then
                setCharacterCanCollide(character, true)
            end
        end
    end
})

-- دالة استدعاء السكربتات الإضافية اللي ارسلتها سابقاً

AddButton(TrollTab, {
    Name = "شغل سكربت الطيران",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua"))()
        game.StarterGui:SetCore("SendNotification", {
            Title = "تشغيل",
            Text = "تم تشغيل سكربت الطيران",
            Duration = 3
        })
    end
})

-- قائمة لاعبين للوظائف التجسسية

local function getPlayerNames()
    local names = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        table.insert(names, plr.Name)
    end
    return names
end

local selectedSpyPlayer = nil
local followHead = false
local heartbeatConnection = nil

-- دالة التجسس على اللاعب (تتبع الكاميرا)

local function spectatePlayer(enable)
    local camera = Workspace.CurrentCamera
    if selectedSpyPlayer then
        local target = Players:FindFirstChild(selectedSpyPlayer)
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                camera.CameraSubject = target.Character:FindFirstChildOfClass("Humanoid")
            else
                camera.CameraSubject = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            end
        else
            print("اللاعب المحدد غير موجود أو خرج من اللعبة.")
        end
    else
        print("لم يتم اختيار لاعب للتجسس عليه.")
    end
end

-- دالة تحويم فوق رأس اللاعب

local function floatAbovePlayerHead()
    if not selectedSpyPlayer then
        print("لاعب التجسس غير محدد.")
        return
    end

    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local root = character:FindFirstChild("HumanoidRootPart")
    if not root then
        print("لم يتم العثور على HumanoidRootPart الخاص بك.")
        return
    end

    local targetPlayer = Players:FindFirstChild(selectedSpyPlayer)
    if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("Head") then
        print("اللاعب الهدف غير موجود أو لا يحتوي على رأس.")
        return
    end

    local targetHead = targetPlayer.Character.Head
    root.CFrame = targetHead.CFrame * CFrame.new(0, 3, 0)

    followHead = true

    heartbeatConnection = RunService.Heartbeat:Connect(function()
        if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            root.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
        else
            if heartbeatConnection then
                heartbeatConnection:Disconnect()
                heartbeatConnection = nil
            end
        end
    end)
end

-- دالة تصغير حجم الشخصية (إطلاق حدث سيرفر)

local function triggerCharacterSizeDown()
    local args = {
        [1] = "CharacterSizeDown",
        [2] = 2.4
    }
    local remote = ReplicatedStorage:FindFirstChild("RE")
    if remote and remote:FindFirstChild("1Clothe1s") then
        remote["1Clothe1s"]:FireServer(unpack(args))
    end
end

-- دالة الذهاب خلف اللاعب والعودة

local function moveBehindAndReturn()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local root = character:FindFirstChild("HumanoidRootPart")
    if not root or not selectedSpyPlayer then
        print("لاعب غير موجود أو لا يمكن إيجاد HumanoidRootPart.")
        return
    end

    local targetPlayer = Players:FindFirstChild(selectedSpyPlayer)
    if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        print("لاعب الهدف غير موجود أو خارج اللعبة.")
        return
    end

    local targetRoot = targetPlayer.Character.HumanoidRootPart
    local originalCFrame = root.CFrame

    -- نروح ورا اللاعب
    root.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3)

    wait(1.5)

    -- نرجع لمكاننا الأصلي
    root.CFrame = originalCFrame
end

-- إضافة واجهة التجسس والتحكم باللاعبين في تبويب التخريب (TrollTab)

AddDropdown(TrollTab, {
    Name = "اختار لاعب للتجسس",
    Options = getPlayerNames(),
    Default = "",
    Callback = function(value)
        selectedSpyPlayer = value
        print("تم اختيار لاعب للتجسس: " .. value)
    end
})

AddButton(TrollTab, {
    Name = "تحديث قائمة اللاعبين",
    Callback = function()
        local newList = getPlayerNames()
        Dropdown:SetOptions(newList)
    end
})

AddToggle(TrollTab, {
    Name = "شوف اللاعب بالكاميرا",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end
})

AddButton(TrollTab, {
    Name = "اطير فوق راسه",
    Callback = function()
        floatAbovePlayerHead()
    end
})

AddButton(TrollTab, {
    Name = "صغر حجم الشخصية",
    Callback = function()
        triggerCharacterSizeDown()
    end
})

AddButton(TrollTab, {
    Name = "روح ورا اللاعب ورجع",
    Callback = function()
        moveBehindAndReturn()
    end
})

-- إضافات أخرى (مثلاً فحص وتجهيز شخصيتك لو لزم)
-- ممكن تضيف أزرار أخرى حسب كوداتك القديمة بنفس النمط

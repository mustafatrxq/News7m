-- بداية السكربت الأساسي
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()

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

-- تبويب التخريب (Troll)
local TrollTab = MakeTab({
    Name = "التخريب",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

-- قائمة اللاعبين متغيرة دائماً
local playerNames = {}
local function UMupdatePlayerList()
    playerNames = {}
    for _, player in pairs(Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    Dropdown:SetOptions(playerNames)
end

local selectedPlayerName = nil

local Dropdown = AddDropdown(TrollTab, {
    Name = "اختار الاعب",
    Options = playerNames,
    Callback = function(selected)
        selectedPlayerName = selected
    end
})

AddButton(TrollTab, {
    Name = "تحديث القائمة",
    Callback = function()
        UMupdatePlayerList()
    end
})

-- كودات باص، سحب، قتل، الخ… (تماماً مثل ما أرسلتها، كاملة حرفياً):

-- قتل اللاعب بالباص
AddButton(TrollTab, {
    Name = "قتل الاعب",
    Callback = function()
        if not selectedPlayerName then
            print("Nenhum jogador selecionado!")
            return
        end

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local originalPosition = humanoidRootPart.CFrame

        local function GetBus()
            local vehicles = workspace:FindFirstChild("Vehicles")
            if vehicles then
                return vehicles:FindFirstChild(player.Name.."Car")
            end
            return nil
        end

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

            local function TrackPlayer()
                while true do
                    if selectedPlayerName then
                        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                            if targetHumanoid and targetHumanoid.Sit then
                                if character.Humanoid then
                                    bus:SetPrimaryPartCFrame(CFrame.new(265.46, -450.83, -59.93))
                                    print("Jogador sentou, levando ônibus para o void!")

                                    task.wait(0.2)
                                    local function simulateJump()
                                        local humanoid = player.Character and player.Character:FindFirstChildWhichIsA("Humanoid")
                                        if humanoid then
                                            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end

                                    simulateJump()
                                    print("Simulando pulo!")
                                    task.wait(0.4)
                                    simulateJump()
                                    task.wait(0.5)
                                    humanoidRootPart.CFrame = originalPosition
                                    print("Player voltou para a posição inicial!")
                                end
                                break
                            else
                                local targetRoot = targetPlayer.Character.HumanoidRootPart
                                local time = tick() * 35
                                local lateralOffset = math.sin(time) * 4
                                local frontBackOffset = math.cos(time) * 20
                                bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                            end
                        end
                    end
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end

            spawn(TrackPlayer)
        end
    end
})

-- سحب اللاعب بالباص
AddButton(TrollTab, {
    Name = "سحب الاعب",
    Callback = function()
        if not selectedPlayerName then
            print("Nenhum jogador selecionado!")
            return
        end

        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local originalPosition = humanoidRootPart.CFrame

        local function GetBus()
            local vehicles = workspace:FindFirstChild("Vehicles")
            if vehicles then
                return vehicles:FindFirstChild(player.Name.."Car")
            end
            return nil
        end

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

            local function TrackPlayerToOriginalPosition()
                while true do
                    if selectedPlayerName then
                        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                            if targetHumanoid and targetHumanoid.Sit then
                                if character.Humanoid then
                                    bus:SetPrimaryPartCFrame(originalPosition)
                                    print("Jogador sentou, trazendo ônibus para a posição inicial!")

                                    task.wait(0.2)
                                    local function simulateJump()
                                        local humanoid = player.Character and player.Character:FindFirstChildWhichIsA("Humanoid")
                                        if humanoid then
                                            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                        end
                                    end

                                    simulateJump()
                                    task.wait(0.2)
                                    humanoidRootPart.CFrame = originalPosition
                                    print("Player voltou para a posição inicial!")

                                    local args = {
                                        [1] = "DeleteAllVehicles"
                                    }
                                    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))
                                end
                                break
                            else
                                local targetRoot = targetPlayer.Character.HumanoidRootPart
                                local time = tick() * 35
                                local lateralOffset = math.sin(time) * 4
                                local frontBackOffset = math.cos(time) * 20
                                bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                            end
                        end
                    end
                    game:GetService("RunService").RenderStepped:Wait()
                end
            end

            spawn(TrackPlayerToOriginalPosition)
        end
    end
})

-- كود النوكليب
local noclipEnabled = false
local runService = game:GetService("RunService")
local noclipLoop

local function setCharacterCanCollide(character, canCollide)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
end

local function onNoclipToggle(value)
    noclipEnabled = value
    print("Noclip Enabled:", noclipEnabled)
    
    local player = game.Players.LocalPlayer
    local character = player.Character

    if noclipEnabled then
        noclipLoop = runService.Stepped:Connect(function()
            if character then
                setCharacterCanCollide(character, false)
            end
        end)
    else
        if noclipLoop then
            noclipLoop:Disconnect()
        end
        if character then
            setCharacterCanCollide(character, true)
        end
    end
end

AddToggle(TrollTab, {
    Name = "نو كليب",
    Default = false,
    Callback = onNoclipToggle
})

-- تبويب تجسس وتحكم باللاعب

local function getPlayerNames()
    local names = {}
    for _, p in ipairs(game.Players:GetPlayers()) do
        table.insert(names, p.Name)
    end
    return names
end

local selectedPlayer = nil
local followHead = false
local connection = nil

local function spectatePlayer(enable)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if selectedPlayer then

        local function spectatePlayer(enable)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                camera.CameraSubject = player.Character.Humanoid
            end
        else
            print("Selected player not available or out of game.")
        end
    else
        print("No player selected!")
    end
end

local function floatAbovePlayerHead()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        if selectedPlayer then
            local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                local targetHead = targetPlayer.Character.Head

                humanoidRootPart.CFrame = targetHead.CFrame * CFrame.new(0, 3, 0)

                connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        connection:Disconnect()
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

local function triggerCharacterSizeDown()
    local args = {
        [1] = "CharacterSizeDown",
        [2] = 2.4
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
end

local function moveBehindAndReturn()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart and selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetHumanoidRootPart = targetPlayer.Character.HumanoidRootPart

            local originalPosition = humanoidRootPart.CFrame

            humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

            wait(1.5)

            humanoidRootPart.CFrame = originalPosition
        else
            print("Selected player not found or not in the game.")
        end
    else
        print("No player or HumanoidRootPart found!")
    end
end

-- اضافة القائمة لاختيار الاعب  
AddDropdown(Main, {
    Name = "اختار الاعب",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("Player selected: " .. value)
    end    
})

-- تحديث قائمة الاعبين  
AddButton(Main, {
    Name = "تحديث القائمة",
    Callback = function()
        UMupdatePlayerList()
    end    
})

local flingToggle

-- تبديل مشاهدة اللاعب المحدد  
AddToggle(Main, {
    Name = "شوف الاعب",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end    
})

-- زر للذهاب والارتفاع فوق رأس اللاعب  
AddButton(Main, {
    Name = "اذهب الى الاعب",
    Callback = function()
        floatAbovePlayerHead()
    end    
})

-- زر الذهاب خلف اللاعب لفترة قصيرة  
AddButton(Main, {
    Name = "روح وارجع من ورا الاعب",
    Callback = function()
        moveBehindAndReturn()
    end    
})

-- دالة تحديث قائمة الاعبين (ضروري تكتبها كاملة لو تستخدمها)
function UMupdatePlayerList()
    local playerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    Dropdown:SetOptions(playerNames)
end

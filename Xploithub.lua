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

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local TrollTab = MakeTab({
    Name = "التخريب",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

local selectedPlayer = nil
local originalPosition = nil

-- دالة تجيب أسماء اللاعبين عشان نحدث القائمة
local function getPlayerNames()
    local names = {}
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(names, p.Name)
    end
    return names
end

-- انشاء القائمة المنسدلة
local dropdown = AddDropdown(TrollTab, {
    Name = "اختار الاعب",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("Player selected: " .. value)
    end    
})

-- تحديث القائمة فعليًا
AddButton(TrollTab, {
    Name = "تحديث القائمة",
    Callback = function()
        local newNames = getPlayerNames()
        dropdown.UpdateOptions(newNames)  -- تحديث خيارات الـ Dropdown
        print("تم تحديث قائمة اللاعبين.")
    end    
})

-- نو كليب مع اتصال مستمر يتم فصله عند الإيقاف
local noclipConnection = nil

AddToggle(TrollTab, {
    Name = "نو كليب",
    Default = false,
    Callback = function(value)
        local function setCharacterCanCollide(character, canCollide)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = canCollide
                end
            end
        end

        if value then
            noclipConnection = RunService.Stepped:Connect(function()
                local character = LocalPlayer.Character
                if character then
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

-- دالة تجلب الباص الحالي أو تحاول تشتريه
local function GetBus()
    local vehicles = Workspace:FindFirstChild("Vehicles")
    if vehicles then
        return vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
    end
    return nil
end

-- زر قتل اللاعب بالباص
AddButton(TrollTab, {
    Name = "قتل اللاعب بالباص",
    Callback = function()
        if not selectedPlayer or selectedPlayer == "" then
            print("ما تختار لاعب!")
            return
        end

        local player = LocalPlayer
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
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if seat and humanoid and not humanoid.Sit then
                repeat
                    humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
                    task.wait()
                until humanoid.Sit or not bus.Parent
            end

            spawn(function()
                while true do
                    if selectedPlayer then
                        local targetPlayer = Players:FindFirstChild(selectedPlayer)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                            local targetRoot = targetPlayer.Character.HumanoidRootPart
                            if targetHumanoid and targetHumanoid.Sit then
                                bus:SetPrimaryPartCFrame(CFrame.new(0, -5000, 0)) -- إخفاء الباص
                                task.wait(0.2)
                                humanoidRootPart.CFrame = originalPosition
                                break
                            else
                                local time = tick() * 35
                                local lateralOffset = math.sin(time) * 4
                                local frontBackOffset = math.cos(time) * 20
                                bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                            end
                        end
                    end
                    RunService.RenderStepped:Wait()
                end
            end)
        else
            print("ما حصلت باص.")
        end
    end
})

-- زر سحب اللاعب بالباص
AddButton(TrollTab, {
    Name = "سحب اللاعب بالباص",
    Callback = function()
        if not selectedPlayer or selectedPlayer == "" then
            print("ما تختار لاعب!")
            return
        end

        local player = LocalPlayer
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
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if seat and humanoid and not humanoid.Sit then
                repeat
                    humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
                    task.wait()
                until humanoid.Sit or not bus.Parent
            end

            spawn(function()
                while true do
                    if selectedPlayer then
                        local targetPlayer = Players:FindFirstChild(selectedPlayer)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                            local targetRoot = targetPlayer.Character.HumanoidRootPart
                            if targetHumanoid and targetHumanoid.Sit then
                                bus:SetPrimaryPartCFrame(originalPosition)
                                task.wait(0.2)
                                humanoidRootPart.CFrame = originalPosition

                                local args = {
                                    [1] = "DeleteAllVehicles"
                                }
                                ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

                                break
                            else
                                local time = tick() * 35
                                local lateralOffset = math.sin(time) * 4
                                local frontBackOffset = math.cos(time) * 20
                                bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                            end
                        end
                    end
                    RunService.RenderStepped:Wait()
                end
            end)
        else
            print("ما حصلت باص.")
        end
    end
})

-- دالة تتبع اللاعب بالكاميرا
local function spectatePlayer(enable)
    local player = LocalPlayer
    local camera = workspace.CurrentCamera

    if selectedPlayer then
        local targetPlayer = Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                camera.CameraSubject = player.Character.Humanoid
            end
        else
            print("اللاعب المختار غير متوفر.")
        end
    else
        print("لم تختر لاعب.")
    end
end

AddToggle(TrollTab, {
    Name = "شوف الاعب",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end
})

local connection = nil

local function floatAbovePlayerHead()
    local player = LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        if selectedPlayer then
            local targetPlayer = Players:FindFirstChild(selectedPlayer)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                local targetHead = targetPlayer.Character.Head

                humanoidRootPart.CFrame = targetHead.CFrame * CFrame.new(0, 3, 0)

                connection = RunService.Heartbeat:Connect(function()
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        if connection then
                            connection:Disconnect()
                            connection = nil
                        end
                    end
                end)
            else
                print("اللاعب غير موجود أو خارج اللعبة.")
            end
        else
            print("لم تختر لاعب.")
        end
    end
end

AddButton(TrollTab, {
    Name = "اذهب الى الاعب",
    Callback = function()
        floatAbovePlayerHead()
    end
})

AddButton(TrollTab, {
    Name = "روح ورا الاعب",
    Callback = function()
        local player = LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart and selectedPlayer then
            local targetPlayer = Players:FindFirstChild(selectedPlayer)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetHumanoidRootPart = targetPlayer.Character.HumanoidRootPart

                local originalPos = humanoidRootPart.CFrame

                humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

                task.wait(1.5)

                humanoidRootPart.CFrame = originalPos
            else
                print("اللاعب المختار غير موجود.")
            end
        else
            print("لم يتم العثور على اللاعب أو HumanoidRootPart.")
        end
    end
})

local Main = MakeTab({Name = "الأغاني"})

AddParagraph(Main, {
  "ملاحظة: غير مسؤول عن ذنوبكم وذنوب السامعين، ودمتم بخير"
})

AddButton(Main, {
  Name = "فورتنايت ببجي",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "8671258578"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "عراقي حزين",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "80039364766636"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "تعالي عند دادي",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "7984027399"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "سبونج",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "2396797933"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "أسد الله الغالب علي بن ابي طالب (ع)",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "98224127892587"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "قرآن 1",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickHouseMusicText",
      [2] = "86911769585232"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "قرآن 2",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickHouseMusicText",
      [2] = "133272041755020"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "قرآن 3",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickHouseMusicText",
      [2] = "88269497623993"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "قرآن 4",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickHouseMusicText",
      [2] = "1836685929"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "إذان",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickHouseMusicText",
      [2] = "1836685873"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddSection(Main, {"قسم السب"})

AddButton(Main, {
  Name = "سب / 1",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "8107899910"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "سب - 2",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "8701632845"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "سب - 3",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "5849978429"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "سب - 4",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "6536444735"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

AddButton(Main, {
  Name = "سب - 5",
  Callback = function()
    local args = {
      [1] = "SkateBoard"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

    local args2 = {
      [1] = "PickingScooterMusicText",
      [2] = "7942547789"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
  end
})

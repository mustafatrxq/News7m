StarterGui:SetCore("SendNotification", {
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

local function getPlayerNames()
    local names = {}
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(names, p.Name)
    end
    return names
end

AddDropdown(TrollTab, {
    Name = "اختار الاعب",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("Player selected: " .. value)
    end    
})

AddButton(TrollTab, {
    Name = "تحديث القائمة",
    Callback = function()
        local newNames = getPlayerNames()
        -- هنا يجب تحديث الخيارات في Dropdown حسب مكتبة الـ UI اللي تستخدمها
        -- لو مكتبتك تسمح إعادة تعيين Options مباشرة استعملها
        -- مثال افتراضي (غيره حسب مكتبتك):
        -- UpdateDropdownOptions(TrollTab, "اختار الاعب", newNames)
    end    
})

AddToggle(TrollTab, {
    Name = "نو كليب",
    Default = false,
    Callback = function(value)
        local noclipEnabled = value
        local runService = game:GetService("RunService")
        local connection

        local function setCharacterCanCollide(character, canCollide)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = canCollide
                end
            end
        end

        if noclipEnabled then
            connection = runService.Stepped:Connect(function()
                local character = LocalPlayer.Character
                if character then
                    setCharacterCanCollide(character, false)
                end
            end)
        else
            if connection then
                connection:Disconnect()
            end
            local character = LocalPlayer.Character
            if character then
                setCharacterCanCollide(character, true)
            end
        end
    end
})

AddButton(TrollTab, {
    Name = "قتل اللاعب بالباص",
    Callback = function()
        if not selectedPlayer then
            print("ما تختار لاعب!")
            return
        end

        local player = LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        originalPosition = humanoidRootPart.CFrame

        local function GetBus()
            local vehicles = Workspace:FindFirstChild("Vehicles")
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
                                bus:SetPrimaryPartCFrame(CFrame.new(0, -5000, 0))
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
        end
    end
})

AddButton(TrollTab, {
    Name = "سحب اللاعب بالباص",
    Callback = function()
        if not selectedPlayer then
            print("ما تختار لاعب!")
            return
        end

        local player = LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        originalPosition = humanoidRootPart.CFrame

        local function GetBus()
            local vehicles = Workspace:FindFirstChild("Vehicles")
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
        end
    end
})

local followHead = false
local connection = nil

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
                    if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        connection:Disconnect()
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

AddToggle(TrollTab, {
    Name = "شوف الاعب",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end
})

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

                local originalPosition = humanoidRootPart.CFrame

                humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

                wait(1.5)

                humanoidRootPart

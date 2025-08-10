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
local noclipConnection = nil

-- تحديث قائمة اللاعبين في القائمة المنسدلة
local function getPlayerNames()
    local names = {}
    for _, p in ipairs(Players:GetPlayers()) do
        table.insert(names, p.Name)
    end
    return names
end

local playerDropdown = AddDropdown(TrollTab, {
    Name = "اختار الاعب",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("تم اختيار اللاعب: " .. value)
    end    
})

AddButton(TrollTab, {
    Name = "تحديث قائمة اللاعبين",
    Callback = function()
        local newNames = getPlayerNames()
        -- تحديث الخيارات بالقائمة
        playerDropdown:SetOptions(newNames)
        print("تم تحديث قائمة اللاعبين.")
    end    
})

AddToggle(TrollTab, {
    Name = "نو كليب (عدم الاصطدام)",
    Default = false,
    Callback = function(enabled)
        if enabled then
            if noclipConnection then noclipConnection:Disconnect() end
            noclipConnection = RunService.Stepped:Connect(function()
                local character = LocalPlayer.Character
                if character then
                    for _, part in pairs(character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                end
            end)
        else
            if noclipConnection then
                noclipConnection:Disconnect()
                noclipConnection = nil
            end
            local character = LocalPlayer.Character
            if character then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end
})

local function getBus()
    local vehicles = Workspace:FindFirstChild("Vehicles")
    if vehicles then
        -- يفترض اسم الباص اسم اللاعب + "Car"
        return vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
    end
    return nil
end

local function spawnBus()
    local remoteEvent = ReplicatedStorage:FindFirstChild("RE")
    if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then
        remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
    end
end

local function moveToSeat(humanoidRootPart, seat)
    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if seat and humanoid and not humanoid.Sit then
        repeat
            humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
            task.wait()
        until humanoid.Sit or not seat.Parent
    end
end

local function useBusAction(actionName)
    if not selectedPlayer then
        warn("لم تختار لاعب بعد!")
        return
    end

    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    originalPosition = humanoidRootPart.CFrame

    local bus = getBus()

    if not bus then
        humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
        task.wait(0.5)
        spawnBus()
        task.wait(1)
        bus = getBus()
        if not bus then
            warn("فشل الحصول على الباص!")
            return
        end
    end

    local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")

    if seat then
        moveToSeat(humanoidRootPart, seat)
    else
        warn("لم يتم العثور على المقعد في الباص!")
        return
    end

    spawn(function()
        while true do
            if not selectedPlayer then break end
            local targetPlayer = Players:FindFirstChild(selectedPlayer)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                local targetRoot = targetPlayer.Character.HumanoidRootPart
                if actionName == "kill" then
                    -- إذا اللاعب جالس بالباص، نوديه للVoid (يموت)
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
                elseif actionName == "drag" then
                    -- نسحب اللاعب بالباص
                    if targetHumanoid and targetHumanoid.Sit then
                        bus:SetPrimaryPartCFrame(originalPosition)
                        task.wait(0.2)
                        humanoidRootPart.CFrame = originalPosition

                        -- حذف كل المركبات
                        local args = {"DeleteAllVehicles"}
                        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))

                        break
                    else
                        local time = tick() * 35
                        local lateralOffset = math.sin(time) * 4
                        local frontBackOffset = math.cos(time) * 20
                        bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                    end
                end
            else
                warn("اللاعب المحدد غير موجود أو خارج اللعبة.")
                break
            end
            RunService.RenderStepped:Wait()
        end
    end)
end

AddButton(TrollTab, {
    Name = "قتل اللاعب بالباص",
    Callback = function()
        useBusAction("kill")
    end
})

AddButton(TrollTab, {
    Name = "سحب اللاعب بالباص",
    Callback = function()
        useBusAction("drag")
    end
})

-- التتبع والكاميرا

local followHead = false
local heartbeatConnection = nil

local function spectatePlayer(enable)
    local camera = workspace.CurrentCamera

    if selectedPlayer then
        local targetPlayer = Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                camera.CameraSubject = LocalPlayer.Character.Humanoid
            end
        else
            warn("اللاعب المختار غير متوفر.")
        end
    else
        warn("لم تختر لاعب.")
    end
end

local function floatAbovePlayerHead()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        if selectedPlayer then
            local targetPlayer = Players:FindFirstChild(selectedPlayer)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)

                heartbeatConnection = RunService.Heartbeat:Connect(function()
                    if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        if heartbeatConnection then
                            heartbeatConnection:Disconnect()
                            heartbeatConnection = nil
                        end
                    end
                end)
            else
                warn("اللاعب غير موجود أو خارج اللعبة.")
            end
        else
            warn("لم تختر لاعب.")
        end
    end
end

AddToggle(TrollTab, {
    Name = "شوف الاعب",
    Default = false,
    Callback = function(value)
        followHead = value
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
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart and selectedPlayer then
            local targetPlayer = Players:FindFirstChild(selectedPlayer)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetHumanoidRootPart = targetPlayer.Character.HumanoidRootPart
                local originalPosition = humanoidRootPart.CFrame

                humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

                wait(1.5)

                humanoidRootPart.CFrame = originalPosition
            else
                warn("اللاعب المختار غير موجود.")
            end
        else
            warn("لم يتم العثور على اللاعب أو HumanoidRootPart.")
        end
    end
})

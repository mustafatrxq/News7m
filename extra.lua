loadstring(game:HttpGet("https://raw.githubusercontent.com/mustafatrxq/News7m/refs/heads/main/are.txt"))()

MakeWindow({
  Hub = {
    Title = "Xploit Hub ‖ Brookhaven || Beta",
    Animation = "يتم التحميل عزيزي المستخدم...."
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
      IncorrectKey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})

MinimizeButton({
  Image = "rbxassetid://75529783306690",
  Size = {40, 40},
  Color = Color3.fromRGB(255, 125, 0),
  Corner = true,
  Stroke = false,
  StrokeColor = Color3.fromRGB(255, 125, 0)
})

-- تبويب معلومات السكربت
local ScriptInfoTab = MakeTab({
  Name = "معلومات السكربت",
  Image = "rbxassetid://75529783306690",
  TabTitle = false
})

AddImageLabel(ScriptInfoTab, {
  Name = "قناة السكربت",
  Image = "rbxassetid://75529783306690"
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

-- دالة عرض إشعار التحديث
local function ShowListUpdatedNotification()
    MakeNotifi({
        Title = "تحديث",
        Text = "تحدثت القائمة تلقائيًا",
        Time = 3
    })
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
AddButton(Main, {
    Name = "قتل بالكنبة",
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

        -- تجهيز الكنبة إذا لم تكن عند اللاعب
        local argsEquip = {
            [1] = "PickingTools",
            [2] = "Couch"
        }
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(argsEquip))
        wait(0.5)

        -- جلب الكنبة مركبة اللاعب
        local vehicleName = LocalPlayer.Name .. "Car"
        local vehicle = Workspace.Vehicles:FindFirstChild(vehicleName)
        if not vehicle then
            warn("الكنبة غير موجودة")
            return
        end

        local vehicleSeat = vehicle.Body and vehicle.Body:FindFirstChild("VehicleSeat")
        if not vehicleSeat then
            warn("مقعد الكنبة غير موجود")
            return
        end

        -- الجلوس على الكنبة
        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
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

        -- فلنج قصير تجاه الهدف
        local runTime = 1.5
        local startTime = tick()
        while tick() - startTime < runTime do
            humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            wait()
        end

        -- انقل الكنبة واللاعب تحت الماب
        local underMapPosition = Vector3.new(-86, -224, 34)
        vehicle:SetPrimaryPartCFrame(CFrame.new(underMapPosition))
        humanoidRootPart.CFrame = CFrame.new(underMapPosition + Vector3.new(0, 5, 0))

        wait(1)

        -- عد للموضع الأصلي
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
        humanoidRootPart.Anchored = originalAnchoredState
        humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

        -- تدمير الكنبة
        vehicle:Destroy()
    end
})

-- زر فلنج اللاعب يدور ويلتصق فيه وبعدها ينقله تحت الماب ويقتله
AddButton(Main, {
    Name = "فلنج اللاعب",
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

        local Thrust = Instance.new('BodyThrust')
        Thrust.Force = Vector3.new(999999, 999999, 999999)
        Thrust.Name = "FlingForce"
        Thrust.Parent = humanoidRootPart

        local runTime = 4
        local startTime = tick()

        while tick() - startTime < runTime do
            if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                break
            end

            humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            Thrust.Location = targetPlayer.Character.HumanoidRootPart.Position

            -- إضافة دوران سريع (spin)
            humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(90), 0)

            RunService.Heartbeat:Wait()
        end

        Thrust:Destroy()

        -- انقل اللاعب تحت الماب ليتم قتله
        local underMapPosition = Vector3.new(-86, -224, 34)
        humanoidRootPart.CFrame = CFrame.new(underMapPosition + Vector3.new(0, 5, 0))

        wait(1)

        -- عد للموضع الأصلي
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
        humanoidRootPart.Anchored = originalAnchoredState
        humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
})

-- تهيئة القائمة عند بداية السكربت
UpdateDragDropdown()

AddButton(Main, {
    Name = "فلنق كره",
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
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value    
  end
})

AddButton(Main, {
  Name = "العاده السريه",
  Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
  end
})

local Main = MakeTab({Name = "الاغاني"})

-- فقرة تعريف
local Paragraph = AddParagraph(Main, {
    "الاغاني من صنع المطور نوكيا",
    "bom dia meus manos"
})

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

AddButton(Main, {
  Name = "الآذان",
  Callback = function()
     local args = {
        [1] = "SkateBoard"
     }

     game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
     local args = {
        [1] = "PickingScooterMusicText",
        [2] = "1836685873"
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

local Main = MakeTab({Name = "الأسماء"})

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

local section = AddSection(Main, {"اسماء اولاد"})

AddButton(section, {Name = "نَجِيبٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","نَجِيبٌ")
end})

AddButton(section, {Name = "عَلِيٌّ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","عَلِيٌّ")
end})

AddButton(section, {Name = "أَحْمَدُ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","أَحْمَدُ")
end})

AddButton(section, {Name = "عَـبَّـاسُ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","عَـبَّـاسُ")
end})

AddButton(section, {Name = "حَسَنٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","حَسَنٌ")
end})

AddButton(section, {Name = "جَوْهَر", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","جَوْهَر")
end})

AddButton(section, {Name = "حُسَينٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","حُسَينٌ")
end})

AddButton(section, {Name = "كُـُرار", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","كُـُرار")
end})

AddButton(section, {Name = "حًمًزُة", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","حًمًزُة")
end})

AddButton(section, {Name = "کْأّظُمً", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","کْأّظُمً")
end})

AddButton(section, {Name = "مِـصِـطٌـفُى", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـصِـطٌـفُى")
end})

AddButton(section, {Name = "مِـنٌتُظٌـرَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـنٌتُظٌـرَ")
end})

AddButton(section, {Name = "مِـرَتُضـى", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـرَتُضـى")
end})

AddButton(section, {Name = "ذٌوُ آلَفُقَآرَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","ذٌوُ آلَفُقَآرَ")
end})

AddButton(section, {Name = "زَيّنٌ آلَعَآبّـدُيّنٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","زَيّنٌ آلَعَآبّـدُيّنٌ")
end})

AddButton(Main, {
  Name = "مِـحً ـمِدُ",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "مِـحً ـمِدُ"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "نٌزَآرَ",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "نٌزَآرَ"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "عَلَآء",
  Callback = function()
local args = {
    [1] = "RolePlayName",
    [2] = "عَلَآء"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

local notesSection = AddSection(Main, {"أسماء بنات"})

AddButton(notesSection, {Name = "مِـيّآرَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـيّآرَ")
end})

AddButton(notesSection, {Name = "آيّآتُ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","آيّآتُ")
end})

AddButton(notesSection, {Name = "زَيّنٌبّ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","زَيّنٌبّ")
end})

AddButton(notesSection, {Name = "قَآطٌـمِـهِ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","قَآطٌـمِـهِ")
end})

AddButton(notesSection, {Name = "لَبّـآبّـهِ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","لَبّـآبّـهِ")
end})

AddButton(notesSection, {Name = "مِـرَوُى", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـرَوُى")
end})

AddButton(notesSection, {Name = "جَ ـوُآهِرَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","جَ ـوُآهِرَ")
end})

AddButton(notesSection, {Name = "رَسًـلَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","رَسًـلَ")
end})

AddButton(notesSection, {Name = "زَهِرَآء", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","زَهِرَآء")
end})

AddButton(notesSection, {Name = "مِـلَآكَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـلَآكَ")
end})

AddButton(notesSection, {Name = "مِـنٌآرَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","مِـنٌآرَ")
end})

AddButton(notesSection, {Name = "رَيّمِ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","رَيّمِ")
end})

AddButton(notesSection, {Name = "رَوُآنٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","رَوُآنٌ")
end})

AddButton(notesSection, {Name = "رَزَآنٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","رَزَآنٌ")
end})

AddButton(notesSection, {Name = "دُآرَيّنٌ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","دُآرَيّنٌ")
end})

AddButton(notesSection, {Name = "دُعَآء", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","دُعَآء")
end})

AddButton(notesSection, {Name = "غّ ـزَلَ", Callback = function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName","غّ ـزَلَ")
end})

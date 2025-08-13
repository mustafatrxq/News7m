loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/SCN/refs/heads/main/TT")))()

MakeWindow({
  Hub = {
    Title = "Xploit Hub ‖ Brookhaven || V0.1",
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
  Image = "rbxassetid://107399679611214",
  Size = {40, 40},
  Color = Color3.fromRGB(255, 125, 0),
  Corner = true,
  Stroke = false,
  StrokeColor = Color3.fromRGB(255, 125, 0)
})

-- تبويب معلومات السكربت
local ScriptInfoTab = MakeTab({
  Name = "معلومات السكربت",
  Image = "rbxassetid://107399679611214",
  TabTitle = false
})

AddImageLabel(ScriptInfoTab, {
  Name = "قناة السكربت",
  Image = "rbxassetid://107399679611214"
})

AddButton(ScriptInfoTab, {
  Name = "انضم",
  Callback = function()
    setclipboard('https://t.me/Prov_development')
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
    Image = "rbxassetid://107399679611214",
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

----------------------------
-- قسم الفلنجات (Dragging) --
----------------------------

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local RemoteEvent = ReplicatedStorage:WaitForChild("RE") -- تأكد من اسم الريموت إيفنت عندك

local function GetOtherPlayerNames()
    local names = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    return names
end

local selectedPlayerName = nil

local playerDropdown = AddDropdown(Main, {
    Name = "اختر لاعب",
    Options = GetOtherPlayerNames(),
    Default = nil,
    Callback = function(value)
        selectedPlayerName = value
    end
})

local function UpdatePlayerDropdown()
    local newOptions = GetOtherPlayerNames()
    if playerDropdown.UpdateOptions then
        playerDropdown:UpdateOptions(newOptions)
    end
    if #newOptions > 0 then
        selectedPlayerName = newOptions[1]
    else
        selectedPlayerName = nil
    end
    print("✅ تم تحديث قائمة اللاعبين تلقائيًا")
end

Players.PlayerAdded:Connect(UpdatePlayerDropdown)
Players.PlayerRemoving:Connect(UpdatePlayerDropdown)

-- زر أخذ الكنبة فقط (تبقى معاك ولا تروح)
AddButton(Main, {
    Name = "أخذ الكنبة",
    Callback = function()
        local toolInvoke = ReplicatedStorage.RE:FindFirstChild("1Too1l")
        if toolInvoke then
            toolInvoke:InvokeServer("PickingTools", "Couch")
            print("تم أخذ الكنبة")
        else
            warn("لم أجد أداة الكنبة")
        end
    end
})

-- زر سحب اللاعب بالباص (يرسل أمر اسبون تلقائي للباص ويركب)
AddButton(Main, {
    Name = "سحب اللاعب بالباص",
    Callback = function()
        if not selectedPlayerName then
            warn("اختر لاعبًا أولًا")
            return
        end
        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو الشخصية غير جاهزة")
            return
        end

        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        -- ارسال امر اسبون الباص تلقائي بدون ما تروح لمكان معين
        RemoteEvent:FireServer("PickingCar", "SchoolBus")
        wait(4) -- ننتظر شوي حتى يجي الباص

        -- الجلوس في الباص
        local vehicleName = LocalPlayer.Name .. "Car"
        local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)
        if not vehicle then
            warn("لم يتم استدعاء الباص")
            return
        end
        local vehicleSeat = vehicle.Body and vehicle.Body:FindFirstChild("VehicleSeat")
        if not vehicleSeat then
            warn("لم يتم العثور على مقعد الباص")
            return
        end

        humanoidRootPart.Anchored = false
        humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
        wait(0.15)

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Sit = true
        end

        wait(0.5)

        local targetHRP = targetPlayer.Character.HumanoidRootPart

        local crazyStart = tick()
        while tick() - crazyStart < 2.5 do
            local offset = Vector3.new(
                math.random(-25, 12),
                math.random(-13, 10),
                math.random(-10, 18)
            )
            vehicle:SetPrimaryPartCFrame(CFrame.new(targetHRP.Position + Vector3.new(0, -2, 0) + offset))
            wait(0.04)
        end

        -- ارجاع الباص لمكانه الأصلي
        vehicle:SetPrimaryPartCFrame(CFrame.new(humanoidRootPart.Position))
        wait(0.3)

        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        wait(0.3)

        print("تم سحب اللاعب بالباص")
    end
})

-- زر قتل اللاعب بالكنبة مع فلنج قصير (ينقل اللاعب تحت الماب ثم يرجع)
AddButton(Main, {
    Name = "قتل اللاعب بالكنبة",
    Callback = function()
        if not selectedPlayerName then
            warn("اختر لاعبًا أولاً")
            return
        end
        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو الشخصية غير جاهزة")
            return
        end

        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        local originalPos = humanoidRootPart.Position
        local originalAnchored = humanoidRootPart.Anchored

        -- أخذ الكنبة بدون حذفها (ما تروح)
        local toolInvoke = ReplicatedStorage.RE:FindFirstChild("1Too1l")
        if toolInvoke then
            toolInvoke:InvokeServer("PickingTools", "Couch")
        else
            warn("لم أجد أداة الكنبة")
            return
        end

        wait(0.5)

        local targetHRP = targetPlayer.Character.HumanoidRootPart

        -- تحريك شخصية السكربت فوق اللاعب
        humanoidRootPart.CFrame = targetHRP.CFrame * CFrame.new(0, 3, 0)
        wait(0.3)

        -- فلنج قصير نحو اللاعب
        local thrust = Instance.new("BodyThrust")
        thrust.Name = "FlingForce"
        thrust.Force = Vector3.new(99999, 99999, 99999)
        thrust.Parent = humanoidRootPart

        local flingDuration = 1.2
        local flingStart = tick()
        local connection
        connection = RunService.Heartbeat:Connect(function()
            if tick() - flingStart > flingDuration then
                connection:Disconnect()
                thrust:Destroy()
                return
            end
            thrust.Location = targetHRP.Position
            humanoidRootPart.CFrame = targetHRP.CFrame * CFrame.new(0, 3, 0)
        end)

        wait(flingDuration + 0.1)

        -- نقل اللاعب تحت الماب وقتله
        local deathPos = Vector3.new(0, -500, 0)
        targetHRP.CFrame = CFrame.new(deathPos)

        wait(1)

        humanoidRootPart.CFrame = CFrame.new(originalPos)
        humanoidRootPart.Anchored = originalAnchored
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
        end

        print("تم قتل اللاعب بالكنبة مع فلنج قصير")
    end
})

-- زر فلنج اللاعب يدور ويلتصق ثم ينقل اللاعب تحت الماب ويقتله
AddButton(Main, {
    Name = "فلنج اللاعب",
    Callback = function()
        if not selectedPlayerName then
            warn("اختر لاعبًا أولاً")
            return
        end

        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو الشخصية غير جاهزة")
            return
        end

        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        -- إزالة أي فلنج قديم
        local oldForce = humanoidRootPart:FindFirstChild("FlingForce")
        if oldForce then oldForce:Destroy() end

        local thrust = Instance.new("BodyThrust")
        thrust.Name = "FlingForce"
        thrust.Force = Vector3.new(1e5, 1e5, 1e5)
        thrust.Parent = humanoidRootPart

        local targetHRP = targetPlayer.Character.HumanoidRootPart

        local angle = 0
        local connection
        connection = RunService.Heartbeat:Connect(function()
            if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
                connection:Disconnect()
                thrust:Destroy()
                return
            end

            angle = angle + math.rad(20)
            local offset = Vector3.new(math.cos(angle)*3, 0, math.sin(angle)*3)

            humanoidRootPart.CFrame = targetHRP.CFrame * CFrame.new(offset)
            thrust.Location = targetHRP.Position
        end)

        -- بعد 4 ثواني ننهي الفلنج وننقل اللاعب تحت الماب
        delay(4, function()
            connection:Disconnect()
            thrust:Destroy()

            local deathPos = Vector3.new(0, -500, 0)
            targetHRP.CFrame = CFrame.new(deathPos)
            humanoidRootPart.CFrame = CFrame.new(deathPos + Vector3.new(0,5,0))

            wait(1)

            humanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.Position)
            humanoidRootPart.Anchored = false
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
            end

            print("تم فلنج اللاعب وقتله تحت الماب")
        end)
    end
})

-- شغل تحديث القائمة أول مرة
UpdatePlayerDropdown()

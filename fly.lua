local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- اللاعب الذي سيكون مركز الثقب
local mainPlayer = Players.LocalPlayer -- يمكن تغييره حسب احتياجك
local hrp = mainPlayer.Character:WaitForChild("HumanoidRootPart")

-- جمع الأجزاء وحفظ مواقعها الأصلية
local objectsToFollow = {}
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") and obj.Name == "Door" and not obj:IsDescendantOf(workspace.MyHouse) then
        table.insert(objectsToFollow, {obj=obj, originalPos=obj.Position})
    end
end

local spinAngle = 0
local radius = 10
local heightAmplitude = 3
local effectEnabled = false -- يتحكم بتشغيل/إيقاف التأثير

-- إضافة إضاءة مركزية حول اللاعب
local lightPart = Instance.new("Part")
lightPart.Anchored = true
lightPart.CanCollide = false
lightPart.Transparency = 1
lightPart.Size = Vector3.new(1,1,1)
lightPart.Parent = workspace

local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.fromRGB(255,50,50)
pointLight.Brightness = 5
pointLight.Range = 20
pointLight.Parent = lightPart

-- RemoteEvent للتحكم بالزر
local toggleEvent = Instance.new("RemoteEvent")
toggleEvent.Name = "ToggleBlackHole"
toggleEvent.Parent = ReplicatedStorage

toggleEvent.OnServerEvent:Connect(function(player)
    if player == mainPlayer then
        effectEnabled = not effectEnabled
    end
end)

RunService.Heartbeat:Connect(function(deltaTime)
    if not hrp then return end
    local center = hrp.Position
    spinAngle = spinAngle + deltaTime * math.pi/2

    for i, data in ipairs(objectsToFollow) do
        local obj = data.obj
        if effectEnabled then
            local angle = (i / #objectsToFollow) * math.pi * 2 + spinAngle
            local heightOffset = math.sin(spinAngle * 2 + i) * heightAmplitude
            local targetPos = center + Vector3.new(math.cos(angle) * radius, heightOffset, math.sin(angle) * radius)
            obj.Position = obj.Position:Lerp(targetPos, 0.1)
            obj.Rotation = Vector3.new(0, spinAngle*50, 0)
        else
            obj.Position = obj.Position:Lerp(data.originalPos, 0.1)
            obj.Rotation = Vector3.new(0,0,0)
        end
    end

    -- تأثير على اللاعبين الآخرين
    if effectEnabled then
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= mainPlayer and plr.Character then
                local hrp2 = plr.Character:FindFirstChild("HumanoidRootPart")
                if hrp2 and (hrp2.Position - center).Magnitude < 10 then
                    local bv = Instance.new("BodyVelocity")
                    bv.Velocity = (hrp2.Position - center).Unit * 150
                    bv.MaxForce = Vector3.new(1e5,1e5,1e5)
                    bv.Parent = hrp2
                    game:GetService("Debris"):AddItem(bv, 0.2)
                end
            end
        end
    end

    -- تحديث موقع الإضاءة
    lightPart.Position = center
end)

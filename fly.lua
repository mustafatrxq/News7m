local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- اللاعب الأساسي
local mainPlayer = Players.LocalPlayer
local hrp = mainPlayer.Character:WaitForChild("HumanoidRootPart")

-- تخزين الأبواب
local objectsToFollow = {}
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") and obj.Name == "Door" then
        table.insert(objectsToFollow, {obj=obj, originalPos=obj.Position})
    end
end

-- متغيرات الحركة
local spinAngle = 0
local radius = 10
local heightAmplitude = 3
local effectEnabled = false

-- عمل واجهة
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Button = Instance.new("TextButton", ScreenGui)
Button.Size = UDim2.new(0,150,0,50)
Button.Position = UDim2.new(0.5,-75,0,100)
Button.Text = "تشغيل الثقب الأسود"
Button.BackgroundColor3 = Color3.fromRGB(200,0,0)
Button.TextColor3 = Color3.new(1,1,1)
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 20
Button.Visible = true

Button.MouseButton1Click:Connect(function()
    effectEnabled = not effectEnabled
    if effectEnabled then
        Button.Text = "إيقاف الثقب الأسود"
        Button.BackgroundColor3 = Color3.fromRGB(0,200,0)
    else
        Button.Text = "تشغيل الثقب الأسود"
        Button.BackgroundColor3 = Color3.fromRGB(200,0,0)
    end
end)

-- التحديث
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
            obj.Position = obj.Position:Lerp(targetPos, 0.2)
            obj.Rotation = Vector3.new(0, spinAngle*50, 0)
        else
            obj.Position = obj.Position:Lerp(data.originalPos, 0.2)
            obj.Rotation = Vector3.new(0,0,0)
        end
    end

    -- إذا قربت من لاعب ثاني يطير
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
end)

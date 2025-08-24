--// Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")

--// Player
local player = Players.LocalPlayer
local hrp = player.Character:WaitForChild("HumanoidRootPart")

--// Variables
local effectEnabled = false
local objectsToFollow = {}
local spawnOffset = Vector3.new(0,2,0) -- مكان الأبواب داخل السكن

--// GUI
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
screenGui.ResetOnSpawn = false
local button = Instance.new("TextButton", screenGui)
button.Size = UDim2.new(0,200,0,50)
button.Position = UDim2.new(0.4,0,0.85,0)
button.Text = "تشغيل الثقب"
button.BackgroundColor3 = Color3.fromRGB(200,0,0)
button.TextColor3 = Color3.new(1,1,1)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 20

button.MouseButton1Click:Connect(function()
    effectEnabled = not effectEnabled
    button.Text = effectEnabled and "إطفاء الثقب" or "تشغيل الثقب"
    button.BackgroundColor3 = effectEnabled and Color3.fromRGB(0,200,0) or Color3.fromRGB(200,0,0)
end)

--// جمع الأبواب الصغيرة حسب الحجم
objectsToFollow = {}
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") or obj:IsA("MeshPart") then
        local nameLower = string.lower(obj.Name)
        local size = obj.Size
        if string.find(nameLower,"door") and size.X < 4 and size.Y < 7 then
            local hasBell = false
            for _, child in pairs(obj:GetChildren()) do
                if string.find(string.lower(child.Name),"bell") then
                    hasBell = true
                    break
                end
            end
            if not hasBell then
                table.insert(objectsToFollow,obj)
                obj.CanCollide = false
                obj.Anchored = true
            end
        end
    end
end

--// Update loop
RunService.Heartbeat:Connect(function(dt)
    if not hrp then return end
    local center = hrp.Position + spawnOffset

    for i, obj in ipairs(objectsToFollow) do
        if obj and obj.Parent then
            if effectEnabled then
                -- كل باب يلتصق بجسمك
                local offset = Vector3.new((i-1)*2,0,0)
                obj.CFrame = CFrame.new(center + offset) * CFrame.Angles(0, dt*3, 0) -- سبين داخلي فقط
            else
                obj.CFrame = obj.CFrame + Vector3.new(0,1000,0)
            end
        end
    end

    -- تأثير طيران على اللاعبين الآخرين
    if effectEnabled then
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player and plr.Character then
                local hrp2 = plr.Character:FindFirstChild("HumanoidRootPart")
                if hrp2 and (hrp2.Position - center).Magnitude < 10 then
                    local bv = Instance.new("BodyVelocity")
                    bv.Velocity = Vector3.new(0,100,0) -- يرفع اللاعبين للأعلى
                    bv.MaxForce = Vector3.new(1e5,1e5,1e5)
                    bv.Parent = hrp2
                    Debris:AddItem(bv, 0.2)
                end
            end
        end
    end
end)

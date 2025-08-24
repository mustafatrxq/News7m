--// Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--// Player
local player = Players.LocalPlayer
local hrp = player.Character:WaitForChild("HumanoidRootPart")

--// Spin variables
local spinAngle = 0
local radius = 6
local spinSpeed = 30
local effectEnabled = false
local objectsToFollow = {}

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

--// جمع الأبواب القابلة للاستخدام
objectsToFollow = {}
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") or obj:IsA("MeshPart") then
        local parent = obj.Parent
        local nameLower = string.lower(obj.Name)
        -- نضيف فقط الأبواب التي لها مساحة قابلة للفتح ولا تحتوي جرس
        if string.find(nameLower,"door") then
            local hasBell = false
            for _, child in pairs(obj:GetChildren()) do
                if string.find(string.lower(child.Name),"bell") then
                    hasBell = true
                    break
                end
            end
            if not hasBell then
                table.insert(objectsToFollow,obj)
            end
        end
    end
end

--// Update loop
RunService.Heartbeat:Connect(function(dt)
    if not hrp then return end
    local center = hrp.Position
    spinAngle = spinAngle + dt * spinSpeed

    for i, obj in ipairs(objectsToFollow) do
        if obj and obj.Parent then
            if effectEnabled then
                local angle = (i / #objectsToFollow) * math.pi * 2 + spinAngle
                local heightOffset = math.sin(spinAngle*3 + i) * 2
                local targetPos = center + Vector3.new(math.cos(angle)*radius, heightOffset, math.sin(angle)*radius)
                obj.CFrame = CFrame.new(targetPos) * CFrame.Angles(0,spinAngle*15,0)
            else
                -- عند الإطفاء → نختفي بعيدًا
                obj.CFrame = obj.CFrame + Vector3.new(0,1000,0)
            end
        end
    end
end)

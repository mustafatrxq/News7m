--// Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--// Player
local player = Players.LocalPlayer
local hrp = player.Character:WaitForChild("HumanoidRootPart")

--// Spin variables
local spinAngle = 0
local radius = 8
local spinSpeed = 20
local effectEnabled = false
local objectsToFollow = {}
local originalCFrames = {}

--// GUI
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
screenGui.ResetOnSpawn = false
local button = Instance.new("TextButton", screenGui)
button.Size = UDim2.new(0,180,0,50)
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

--// جمع الأشياء المطلوبة فقط
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") or obj:IsA("MeshPart") then
        local nameLower = string.lower(obj.Name)
        if string.find(nameLower,"door") 
        or string.find(nameLower,"window") 
        or string.find(nameLower,"car") 
        or string.find(nameLower,"seat")
        or string.find(nameLower,"wheel") then
            table.insert(objectsToFollow,obj)
            table.insert(originalCFrames,obj.CFrame)
        end
    end
end

--// Central light effect
local lightPart = Instance.new("Part")
lightPart.Anchored = true
lightPart.CanCollide = false
lightPart.Transparency = 1
lightPart.Size = Vector3.new(1,1,1)
lightPart.Parent = workspace
local pointLight = Instance.new("PointLight",lightPart)
pointLight.Color = Color3.fromRGB(255,50,50)
pointLight.Brightness = 8
pointLight.Range = 25

--// Update loop
RunService.Heartbeat:Connect(function(dt)
    if not hrp then return end
    local center = hrp.Position
    lightPart.Position = center
    spinAngle = spinAngle + dt * spinSpeed

    for i, obj in ipairs(objectsToFollow) do
        if obj and obj.Parent then
            if effectEnabled then
                local angle = (i / #objectsToFollow) * math.pi * 2 + spinAngle
                local heightOffset = math.sin(spinAngle*3 + i) * 2
                local targetPos = center + Vector3.new(math.cos(angle)*radius, heightOffset, math.sin(angle)*radius)
                obj.CFrame = CFrame.new(targetPos) * CFrame.Angles(0,spinAngle*10,0)
            else
                local original = originalCFrames[i]
                obj.CFrame = obj.CFrame:Lerp(original, 0.1)
            end
        end
    end
end)

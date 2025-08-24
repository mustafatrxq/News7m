--// Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")

--// Player
local player = Players.LocalPlayer
local hrp = player.Character:WaitForChild("HumanoidRootPart")

--// Spin variables
local spinAngle = 0
local radius = 6
local spinSpeed = 30 -- أسرع سبين
local effectEnabled = false
local objectsToFollow = {}
local originalCFrames = {}

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
    
    if effectEnabled then
        -- تسجيل المواقع الأصلية عند كل تشغيل جديد
        originalCFrames = {}
        for i, obj in ipairs(objectsToFollow) do
            if obj and obj.Parent then
                table.insert(originalCFrames,obj.CFrame)
            end
        end
    end
end)

--// جمع الأبواب فقط، مع استثناء الجرس
for _, obj in pairs(workspace:GetDescendants()) do
    if obj:IsA("Part") or obj:IsA("MeshPart") then
        local nameLower = string.lower(obj.Name)
        if string.find(nameLower,"door") then
            table.insert(objectsToFollow,obj)
        end
    end
end

--// Function لإضافة جزيئات لكل باب
local function addParticles(obj)
    local particle = Instance.new("ParticleEmitter")
    particle.Rate = 10
    particle.Lifetime = NumberRange.new(0.5,1)
    particle.Speed = NumberRange.new(0,0)
    particle.Size = NumberSequence.new(0.2)
    particle.Color = ColorSequence.new(Color3.fromRGB(255,50,50))
    particle.LightInfluence = 0
    particle.Parent = obj
    return particle
end

local particles = {}
for _, obj in ipairs(objectsToFollow) do
    particles[obj] = addParticles(obj)
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
                -- جزيئات تعمل عند الحركة
                particles[obj].Enabled = true
            else
                if originalCFrames[i] then
                    obj.CFrame = obj.CFrame:Lerp(originalCFrames[i],0.1)
                    particles[obj].Enabled = false
                end
            end
        end
    end
end)

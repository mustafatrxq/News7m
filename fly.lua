-- إعداد اللاعب والشخصية
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- إعداد GUI
local gui = Instance.new("ScreenGui", player.PlayerGui)
local toggleBtn = Instance.new("TextButton")
toggleBtn.Size = UDim2.new(0,150,0,50)
toggleBtn.Position = UDim2.new(0.5,-75,0.9,0)
toggleBtn.Text = "تشغيل الأبواب"
toggleBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
toggleBtn.Font = Enum.Font.SourceSansBold
toggleBtn.TextScaled = true
toggleBtn.TextColor3 = Color3.new(1,1,1)

-- متغير التحكم
local doorsActive = false
local doors = {}
local pushForce = 50
local slowed = false

-- إنشاء أبواب ملتصقة بالجسم
for i = 1, 5 do
    local door = Instance.new("Part")
    door.Size = Vector3.new(2,4,0.5)
    door.Anchored = false
    door.CanCollide = true
    door.Position = root.Position + Vector3.new(i*3,0,0)
    door.Parent = workspace

    local weld = Instance.new("WeldConstraint")
    weld.Part0 = root
    weld.Part1 = door
    weld.Parent = door

    table.insert(doors, door)
end

-- دالة دفع اللاعبين القريبين
local function pushNearbyPlayers()
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local targetRoot = p.Character.HumanoidRootPart
            local distance = (targetRoot.Position - root.Position).Magnitude
            if distance <= 10 then
                local force = Instance.new("BodyVelocity")
                force.Velocity = Vector3.new(0,pushForce,0)
                force.MaxForce = Vector3.new(0,1e5,0)
                force.P = 1e5
                force.Parent = targetRoot
                game:GetService("Debris"):AddItem(force,0.5)
            end
        end
    end
end

-- تحديث الحركة عند تفعيل الأبواب
local function updateMovement()
    if doorsActive and not slowed then
        humanoid.WalkSpeed = 8 -- تقليل السرعة
        slowed = true
    elseif not doorsActive and slowed then
        humanoid.WalkSpeed = 16 -- استعادة السرعة
        slowed = false
    end
end

-- زر التشغيل/الإيقاف
toggleBtn.MouseButton1Click:Connect(function()
    doorsActive = not doorsActive
    if doorsActive then
        toggleBtn.Text = "إيقاف الأبواب"
        toggleBtn.BackgroundColor3 = Color3.fromRGB(0,255,0)
    else
        toggleBtn.Text = "تشغيل الأبواب"
        toggleBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
    end
    updateMovement()
end)

-- حلقة مستمرة لتطبيق الدفع إذا كانت الأبواب مفعلة
game:GetService("RunService").RenderStepped:Connect(function()
    if doorsActive then
        pushNearbyPlayers()
    end
end)

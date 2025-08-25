-- Lag Toggle Script كامل
-- ضع هذا Script داخل ServerScriptService

local Players = game:GetService("Players")

-- إعدادات Lag
local lagTime = 2      -- وقت الاختفاء/التثبيت بالثواني
local delayTime = 5    -- الوقت بين كل Lag
local isLagging = false -- الوضع الافتراضي مغلق

-- دالة لتطبيق Lag على لاعب واحد
local function applyLag(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local char = player.Character
        local originalCFrame = char.HumanoidRootPart.CFrame

        -- الاختفاء مؤقت
        for _, part in pairs(char:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = 1
                part.CanCollide = false
            end
        end

        -- إيقاف الحركة
        local humanoid = char:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = 0
            humanoid.JumpPower = 0
        end

        wait(lagTime)

        -- إعادة كل شيء
        for _, part in pairs(char:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = 0
                part.CanCollide = true
            end
        end
        if humanoid then
            humanoid.WalkSpeed = 16
            humanoid.JumpPower = 50
        end

        char.HumanoidRootPart.CFrame = originalCFrame
    end
end

-- دالة لتطبيق Lag دوري على كل اللاعبين
local function lagLoop()
    while isLagging do
        for _, player in pairs(Players:GetPlayers()) do
            spawn(function()
                applyLag(player)
            end)
        end
        wait(delayTime)
    end
end

-- GUI لتشغيل وإيقاف Lag
local function createGUI(adminPlayer)
    local ScreenGui = Instance.new("ScreenGui", adminPlayer:WaitForChild("PlayerGui"))
    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 200, 0, 60)
    Frame.Position = UDim2.new(0, 50, 0, 50)
    Frame.BackgroundColor3 = Color3.fromRGB(40,40,40)

    local Button = Instance.new("TextButton", Frame)
    Button.Size = UDim2.new(1,0,1,0)
    Button.Text = "تشغيل Lag"
    Button.Font = Enum.Font.GothamBold
    Button.TextSize = 18
    Button.TextColor3 = Color3.fromRGB(255,255,255)

    Button.MouseButton1Click:Connect(function()
        isLagging = not isLagging
        if isLagging then
            Button.Text = "إيقاف Lag"
            spawn(lagLoop)
        else
            Button.Text = "تشغيل Lag"
        end
    end)
end

-- إضافة GUI لأي لاعب يدخل (يفترض أن هو المسؤول)
Players.PlayerAdded:Connect(function(player)
    -- لو تريد تفعيله فقط لمشرف، ضع شرط هنا
    createGUI(player)
end)

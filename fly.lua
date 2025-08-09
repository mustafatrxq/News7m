-- تحميل السكربت الفوقي فوراً
loadstring(game:HttpGet("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua"))()

local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")

local flying = false
local speed = 50

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- إنشاء واجهة الترحيب تغطي الشاشة كاملة
local welcomeGui = Instance.new("ScreenGui")
welcomeGui.Name = "WelcomeGui"
welcomeGui.Parent = player:WaitForChild("PlayerGui")

local welcomeFrame = Instance.new("Frame", welcomeGui)
welcomeFrame.Size = UDim2.new(1, 0, 1, 0)
welcomeFrame.Position = UDim2.new(0,0,0,0)
welcomeFrame.BackgroundColor3 = Color3.new(0,0,0)
welcomeFrame.BackgroundTransparency = 1 -- شفافة للخلفية

-- أكواد متحركة تغطي الشاشة
local codeLines = {}
local numLines = 40
local codeChars = {";", "{", "}", "(", ")", "[", "]", "=", "+", "-", "*", "/", ">", "<", ":", ",", ".", "_", "|", "&", "%", "#", "@", "$", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"}

local function randomCodeString(length)
    local str = ""
    for i = 1, length do
        str = str .. codeChars[math.random(#codeChars)]
    end
    return str
end

for i = 1, numLines do
    local codeLabel = Instance.new("TextLabel", welcomeFrame)
    codeLabel.Size = UDim2.new(1, 0, 0, 20)
    codeLabel.Position = UDim2.new(0, 0, (i-1)/numLines, 0)
    codeLabel.BackgroundTransparency = 1
    codeLabel.Font = Enum.Font.Code
    codeLabel.TextSize = 16
    codeLabel.Text = ""
    codeLabel.TextColor3 = Color3.fromHSV(math.random(), 1, 1)
    codeLabel.ZIndex = 1
    table.insert(codeLines, codeLabel)
end

local function updateCodeLines()
    for i, label in ipairs(codeLines) do
        label.Text = randomCodeString(math.random(25, 50))
        local yOffset = math.sin(tick() * 2 + i) * 5
        label.Position = UDim2.new(0, 0, (i-1)/numLines, yOffset)
        label.TextColor3 = Color3.fromHSV((tick() * 0.2 + i/numLines) % 1, 0.9, 1)
    end
end

-- كتابة "المطور ساموراي" حرف حرف ببطء
local welcomeText = Instance.new("TextLabel", welcomeFrame)
welcomeText.Size = UDim2.new(1, 0, 0.15, 0)
welcomeText.Position = UDim2.new(0, 0, 0.4, 0)
welcomeText.BackgroundTransparency = 1
welcomeText.Font = Enum.Font.Arcade
welcomeText.TextSize = 60
welcomeText.TextColor3 = Color3.fromRGB(255, 165, 0)
welcomeText.TextStrokeTransparency = 0
welcomeText.TextStrokeColor3 = Color3.new(0, 0, 0)
welcomeText.ZIndex = 2
welcomeText.Text = ""

local fullText = "المطور ساموراي"
local charIndex = 0
local charTimer = 0
local charInterval = 0.15

-- موسيقى ترحيب هكرية بصوت كتابة (موسيقى هكرية مرعبة)
local sound = Instance.new("Sound", SoundService)
sound.SoundId = "rbxassetid://991303534" -- مثال صوت هكر
sound.Volume = 0.6
sound.Looped = false

sound:Play()

-- واجهة زر الطيران (خفيفة وقابلة للسحب)
local flyGui = Instance.new("ScreenGui")
flyGui.Name = "SamuraiFlyGui"
flyGui.Parent = player:WaitForChild("PlayerGui")
flyGui.Enabled = false

local Frame = Instance.new("Frame", flyGui)
Frame.Size = UDim2.new(0, 140, 0, 50)
Frame.Position = UDim2.new(0, 15, 0, 15)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.4
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

local ToggleButton = Instance.new("TextButton", Frame)
ToggleButton.Size = UDim2.new(1, 0, 1, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.Font = Enum.Font.ArialBold
ToggleButton.TextSize = 20
ToggleButton.Text = "تشغيل الطيران"

local speed = 50
local flying = false

local playerCharacter = player.Character or player.CharacterAdded:Wait()
local humanoid = playerCharacter:WaitForChild("Humanoid")
local rootPart = playerCharacter:WaitForChild("HumanoidRootPart")

local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.MaxForce = Vector3.new(1e5,1e5,1e5)
BodyVelocity.Velocity = Vector3.new(0,0,0)
BodyVelocity.Parent = rootPart

local function updateUI()
    -- تحديث إذا بغيت تضيف لاحقاً
end

local function toggleFly()
    flying = not flying
    humanoid.PlatformStand = flying
    if flying then
        ToggleButton.Text = "إيقاف الطيران"
    else
        ToggleButton.Text = "تشغيل الطيران"
        BodyVelocity.Velocity = Vector3.new(0,0,0)
    end
    updateUI()
end

ToggleButton.MouseButton1Click:Connect(toggleFly)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Equals or input.KeyCode == Enum.KeyCode.Plus then
        speed = math.clamp(speed + 10, 10, 1000)
        updateUI()
    elseif input.KeyCode == Enum.KeyCode.Minus or input.KeyCode == Enum.KeyCode.Underscore then
        speed = math.clamp(speed - 10, 10, 1000)
        updateUI()
    elseif input.KeyCode == Enum.KeyCode.F then
        toggleFly()
    end
end)

RunService.Heartbeat:Connect(function(dt)
    if welcomeGui.Enabled then
        updateCodeLines()
        charTimer = charTimer + dt
        if charTimer >= charInterval and charIndex < #fullText then
            charIndex = charIndex + 1
            welcomeText.Text = string.sub(fullText,1,charIndex)
            charTimer = 0
        end

        local hue = (tick() * 0.3) % 1
        welcomeText.TextColor3 = Color3.fromHSV(hue, 1, 1)

        if not sound.IsPlaying then
            welcomeGui.Enabled = false
            flyGui.Enabled = true
            welcomeGui:Destroy()
        end
    else
        if flying then
            local moveDirection = Vector3.new()

            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                moveDirection = moveDirection + workspace.CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                moveDirection = moveDirection - workspace.CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                moveDirection = moveDirection - workspace.CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                moveDirection = moveDirection + workspace.CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                moveDirection = moveDirection + Vector3.new(0,1,0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                moveDirection = moveDirection - Vector3.new(0,1,0)
            end

            if moveDirection.Magnitude > 0 then
                BodyVelocity.Velocity = moveDirection.Unit * speed
            else
                BodyVelocity.Velocity = Vector3.new(0,0,0)
            end
        else
            BodyVelocity.Velocity = Vector3.new(0,0,0)
        end
    end
end)

-- تحميل السكربت الفوقي (loadstring) فوراً
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()

local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local flying = false
local speed = 50

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- إنشاء واجهة الترحيب
local welcomeGui = Instance.new("ScreenGui")
welcomeGui.Name = "WelcomeGui"
welcomeGui.Parent = player:WaitForChild("PlayerGui")

local welcomeFrame = Instance.new("Frame", welcomeGui)
welcomeFrame.Size = UDim2.new(1,0,1,0)
welcomeFrame.BackgroundColor3 = Color3.new(0,0,0)
welcomeFrame.BackgroundTransparency = 1 -- خلي الخلفية شفافة

-- كودات متحركة في الخلفية (على كامل الشاشة)
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
    codeLabel.Size = UDim2.new(1, 0, 0, 18)
    codeLabel.Position = UDim2.new(0, 0, (i-1)/numLines, 0)
    codeLabel.BackgroundTransparency = 1
    codeLabel.Font = Enum.Font.Code
    codeLabel.TextSize = 16
    codeLabel.Text = ""
    codeLabel.TextColor3 = Color3.fromHSV(math.random(), 1, 1)
    codeLabel.TextStrokeTransparency = 0.7
    table.insert(codeLines, codeLabel)
end

local function updateCodeLines(dt)
    for i, label in ipairs(codeLines) do
        label.Text = randomCodeString(math.random(20, 40))
        local yOffset = math.sin(tick() * 2 + i) * 3
        label.Position = UDim2.new(0, 0, (i-1)/numLines, yOffset)
        label.TextColor3 = Color3.fromHSV((tick() * 0.2 + i/numLines) % 1, 0.7, 1)
    end
end

-- كتابة "المطور ساموراي" حرف حرف ببطء في وسط الشاشة
local welcomeText = Instance.new("TextLabel", welcomeFrame)
welcomeText.Size = UDim2.new(1, 0, 0.15, 0)
welcomeText.Position = UDim2.new(0, 0, 0.42, 0)
welcomeText.BackgroundTransparency = 1
welcomeText.Font = Enum.Font.Arcade
welcomeText.TextSize = 44
welcomeText.TextColor3 = Color3.fromRGB(255, 165, 0)
welcomeText.TextStrokeTransparency = 0
welcomeText.TextStrokeColor3 = Color3.new(0,0,0)
welcomeText.Text = ""

local fullText = "المطور ساموراي"
local charIndex = 0
local charTimer = 0
local charInterval = 0.15

-- واجهة الطيران
local flyGui = Instance.new("ScreenGui")
flyGui.Name = "SamuraiFlyGui"
flyGui.Parent = player:WaitForChild("PlayerGui")
flyGui.Enabled = false

local Frame = Instance.new("Frame", flyGui)
Frame.Size = UDim2.new(0, 280, 0, 140)
Frame.Position = UDim2.new(0, 20, 0, 20)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.4
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

local TitleLabel = Instance.new("TextLabel", Frame)
TitleLabel.Size = UDim2.new(1, 0, 0.2, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextColor3 = Color3.new(1,1,1)
TitleLabel.Font = Enum.Font.ArialBold
TitleLabel.TextSize = 26
TitleLabel.Text = "طيران ساموراي"
TitleLabel.TextStrokeTransparency = 0.6

local StatusLabel = Instance.new("TextLabel", Frame)
StatusLabel.Size = UDim2.new(1, 0, 0.2, 0)
StatusLabel.Position = UDim2.new(0, 0, 0.22, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextColor3 = Color3.new(1,1,1)
StatusLabel.Font = Enum.Font.ArialBold
StatusLabel.TextSize = 20
StatusLabel.Text = "الحالة: متوقف"

local SpeedLabel = Instance.new("TextLabel", Frame)
SpeedLabel.Size = UDim2.new(1, 0, 0.2, 0)
SpeedLabel.Position = UDim2.new(0, 0, 0.42, 0)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.TextColor3 = Color3.new(1,1,1)
SpeedLabel.Font = Enum.Font.ArialBold
SpeedLabel.TextSize = 20
SpeedLabel.Text = "السرعة: " .. speed

local ToggleButton = Instance.new("TextButton", Frame)
ToggleButton.Size = UDim2.new(0.6, 0, 0.15, 0)
ToggleButton.Position = UDim2.new(0.2, 0, 0.75, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleButton.TextColor3 = Color3.new(1,1,1)
ToggleButton.Font = Enum.Font.ArialBold
ToggleButton.TextSize = 20
ToggleButton.Text = "تشغيل الطيران"

ToggleButton.MouseButton1Click:Connect(function()
    flying = not flying
    if flying then
        humanoid.PlatformStand = true
        ToggleButton.Text = "إيقاف الطيران"
    else
        humanoid.PlatformStand = false
        BodyVelocity.Velocity = Vector3.new(0,0,0)
        ToggleButton.Text = "تشغيل الطيران"
    end
    updateUI()
end)

local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
BodyVelocity.Velocity = Vector3.new(0,0,0)
BodyVelocity.Parent = rootPart

local function updateUI()
    StatusLabel.Text = "الحالة: " .. (flying and "يشتغل" or "متوقف")
    SpeedLabel.Text = "السرعة: " .. speed
end

updateUI()

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Equals or input.KeyCode == Enum.KeyCode.Plus then
        speed = math.min(speed + 10, 1000)
        updateUI()
    elseif input.KeyCode == Enum.KeyCode.Minus or input.KeyCode == Enum.KeyCode.Underscore then
        speed = math.max(speed - 10, 10)
        updateUI()
    end
end)

local elapsed = 0
local welcomeDuration = 7

RunService.Heartbeat:Connect(function(dt)
    elapsed = elapsed + dt

    if elapsed <= welcomeDuration then
        updateCodeLines(dt)

        charTimer = charTimer + dt
        if charTimer >= charInterval and charIndex < #fullText then
            charIndex = charIndex + 1
            welcomeText.Text = string.sub(fullText,1,charIndex)
            charTimer = 0
        end

        local hue = (tick() * 0.3) % 1
        welcomeText.TextColor3 = Color3.fromHSV(hue, 1, 1)

    elseif welcomeGui.Enabled then
        welcomeGui.Enabled = false
        flyGui.Enabled = true
        welcomeGui:Destroy()
    end

    if flying then
        local moveDirection = Vector3.new(0,0,0)

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
end)

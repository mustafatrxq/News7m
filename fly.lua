-- تشغيل الفوق (اللودسترينج)
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()

local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

local flying = false
local speed = 50

local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- واجهة المستخدم
local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
ScreenGui.Name = "SamuraiFlyGui"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 240, 0, 110)
Frame.Position = UDim2.new(0, 20, 0, 20)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0

local TitleLabel = Instance.new("TextLabel", Frame)
TitleLabel.Size = UDim2.new(1, 0, 0.25, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextColor3 = Color3.new(1,1,1)
TitleLabel.Font = Enum.Font.ArialBold
TitleLabel.TextSize = 22
TitleLabel.Text = "طيران ساموراي"
TitleLabel.TextStrokeTransparency = 0.8

local StatusLabel = Instance.new("TextLabel", Frame)
StatusLabel.Size = UDim2.new(1, 0, 0.25, 0)
StatusLabel.Position = UDim2.new(0, 0, 0.25, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextColor3 = Color3.new(1,1,1)
StatusLabel.Font = Enum.Font.ArialBold
StatusLabel.TextSize = 18
StatusLabel.Text = "الحالة: متوقف"

local SpeedLabel = Instance.new("TextLabel", Frame)
SpeedLabel.Size = UDim2.new(1, 0, 0.25, 0)
SpeedLabel.Position = UDim2.new(0, 0, 0.5, 0)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.TextColor3 = Color3.new(1,1,1)
SpeedLabel.Font = Enum.Font.ArialBold
SpeedLabel.TextSize = 18
SpeedLabel.Text = "السرعة: " .. speed

local RightsLabel = Instance.new("TextLabel", Frame)
RightsLabel.Size = UDim2.new(1, 0, 0.25, 0)
RightsLabel.Position = UDim2.new(0, 0, 0.75, 0)
RightsLabel.BackgroundTransparency = 1
RightsLabel.TextColor3 = Color3.fromRGB(255, 165, 0)
RightsLabel.Font = Enum.Font.ArialBold
RightsLabel.TextSize = 16
RightsLabel.Text = "حقوق © ساموراي"
RightsLabel.TextStrokeTransparency = 0.8
RightsLabel.TextScaled = true

-- إعداد سرعة الحركة
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

    if input.KeyCode == Enum.KeyCode.E then
        flying = not flying
        if not flying then
            BodyVelocity.Velocity = Vector3.new(0,0,0)
        end
        updateUI()
    elseif input.KeyCode == Enum.KeyCode.Equals or input.KeyCode == Enum.KeyCode.Plus then
        speed = math.min(speed + 10, 1000)
        updateUI()
    elseif input.KeyCode == Enum.KeyCode.Minus or input.KeyCode == Enum.KeyCode.Underscore then
        speed = math.max(speed - 10, 10)
        updateUI()
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if not flying then return end

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
end)

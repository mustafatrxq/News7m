-- are.lua
-- سكربت واجهة مع زر تشغيل/إيقاف اللاگ

-- حماية بسيطة
if game.CoreGui:FindFirstChild("LagUi") then
    game.CoreGui.LagUi:Destroy()
end

-- عمل واجهة
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "LagUi"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 120)
Frame.Position = UDim2.new(0.5, -100, 0.5, -60)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel", Frame)
Title.Text = "🚨 Lag Control"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, -20, 0, 40)
Button.Position = UDim2.new(0, 10, 0, 50)
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Button.Text = "تشغيل اللاگ"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true

local UICorner2 = Instance.new("UICorner", Button)
UICorner2.CornerRadius = UDim.new(0, 8)

-- حالة اللاگ
local LagEnabled = false
local Loop = nil

-- زر التشغيل/الإيقاف
Button.MouseButton1Click:Connect(function()
    LagEnabled = not LagEnabled
    if LagEnabled then
        Button.Text = "إيقاف اللاگ"
        Button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)

        -- تفعيل اللاگ
        Loop = game:GetService("RunService").Heartbeat:Connect(function()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    player.Character:TranslateBy(Vector3.new(0, math.random(-1,1), 0))
                end
            end
        end)

    else
        Button.Text = "تشغيل اللاگ"
        Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

        -- إيقاف اللاگ
        if Loop then
            Loop:Disconnect()
            Loop = nil
        end
    end
end)

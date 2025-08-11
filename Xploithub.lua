local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- إنشاء واجهة الشاشة
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "XploitHubV5"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

-- النافذة الرئيسية
local Window = Instance.new("Frame")
Window.Size = UDim2.new(0, 400, 0, 180)
Window.Position = UDim2.new(0.5, -200, 0.4, -90)
Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Window.BorderSizePixel = 0
Window.Parent = ScreenGui
Window.Active = true
Window.Draggable = true
Window.ClipsDescendants = true

-- شريط العنوان
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TitleBar.Parent = Window

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -40, 1, 0)
TitleLabel.Position = UDim2.new(0, 10, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Xploit Hub ‖ Brookhaven || V0.1"
TitleLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 20
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Size = UDim2.new(1, -40, 0, 20)
SubTitleLabel.Position = UDim2.new(0, 10, 1, -20)
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Text = "ساموراي - عركـ"
SubTitleLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
SubTitleLabel.Font = Enum.Font.Gotham
SubTitleLabel.TextSize = 14
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.Parent = TitleBar

-- زر التصغير
local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
MinimizeBtn.Position = UDim2.new(1, -35, 0, 5)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 24
MinimizeBtn.Parent = TitleBar

-- صورة الشعار
local Logo = Instance.new("ImageLabel")
Logo.Size = UDim2.new(0, 200, 0, 80)
Logo.Position = UDim2.new(0.5, -100, 0, 50)
Logo.BackgroundTransparency = 1
Logo.Image = "rbxassetid://107399679611214"
Logo.Parent = Window

local minimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
    if minimized then
        Window.Size = UDim2.new(0, 400, 0, 180)
        Logo.Visible = true
        SubTitleLabel.Visible = true
        minimized = false
    else
        Window.Size = UDim2.new(0, 400, 0, 40)
        Logo.Visible = false
        SubTitleLabel.Visible = false
        minimized = true
    end
end)

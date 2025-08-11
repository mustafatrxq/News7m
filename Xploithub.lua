local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "XploitHubV5_Empty"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

local Window = Instance.new("Frame")
Window.Size = UDim2.new(0, 700, 0, 500)
Window.Position = UDim2.new(0.5, -350, 0.3, -250)
Window.BackgroundColor3 = Color3.fromRGB(0,0,0)
Window.BackgroundTransparency = 0.25
Window.BorderSizePixel = 0
Window.Parent = ScreenGui
Window.Active = true
Window.Draggable = true
Window.ClipsDescendants = true
Window.Name = "MainWindow"

-- مساحة فراغ داخلية (Padding)
local PaddingFrame = Instance.new("Frame")
PaddingFrame.Size = UDim2.new(1, -60, 1, -100)
PaddingFrame.Position = UDim2.new(0, 30, 0, 80)
PaddingFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
PaddingFrame.BackgroundTransparency = 0.6
PaddingFrame.BorderSizePixel = 0
PaddingFrame.Parent = Window

-- شريط العنوان
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 60)
TitleBar.BackgroundColor3 = Color3.fromRGB(15,15,15)
TitleBar.BackgroundTransparency = 0.2
TitleBar.BorderSizePixel = 0
TitleBar.Parent = Window

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -100, 0, 30)
TitleLabel.Position = UDim2.new(0, 20, 0, 10)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Xploit Hub ‖ Brookhaven || V0.1"
TitleLabel.TextColor3 = Color3.fromRGB(230,230,230)
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextSize = 26
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Size = UDim2.new(1, -100, 0, 20)
SubTitleLabel.Position = UDim2.new(0, 20, 0, 40)
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Text = "ساموراي - عركـ"
SubTitleLabel.TextColor3 = Color3.fromRGB(170,170,170)
SubTitleLabel.Font = Enum.Font.Gotham
SubTitleLabel.TextSize = 16
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.Parent = TitleBar

-- زر التصغير
local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 40, 0, 40)
MinimizeBtn.Position = UDim2.new(1, -50, 0, 10)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(180,50,50)
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(255,255,255)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 32
MinimizeBtn.Parent = TitleBar

local Logo = Instance.new("ImageLabel")
Logo.Size = UDim2.new(0, 220, 0, 100)
Logo.Position = UDim2.new(0.5, -110, 0, 80)
Logo.BackgroundTransparency = 1
Logo.Image = "rbxassetid://107399679611214"
Logo.Parent = Window

local minimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
    if minimized then
        Window.Size = UDim2.new(0, 700, 0, 500)
        PaddingFrame.Visible = true
        Logo.Visible = true
        SubTitleLabel.Visible = true
        minimized = false
    else
        Window.Size = UDim2.new(0, 700, 0, 60)
        PaddingFrame.Visible = false
        Logo.Visible = false
        SubTitleLabel.Visible = false
        minimized = true
    end
end)

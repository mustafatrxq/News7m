--// GUI Setup
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local PlayerGui = plr:WaitForChild("PlayerGui")

-- إنشاء ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VR7"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- الإطار الرئيسي
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 450, 0, 300)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true

-- عنوان الواجهة
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Title.BorderSizePixel = 0
Title.Text = "VR7 Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

-- خط فاصل أسفل العنوان
local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, -20, 0, 2)
Divider.Position = UDim2.new(0, 10, 0, 40)
Divider.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Divider.BorderSizePixel = 0
Divider.Parent = MainFrame

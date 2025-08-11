local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "XploitHubV5_Advanced"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

local isOpen = true

local Window = Instance.new("Frame")
Window.Size = UDim2.new(0, 750, 0, 520)
Window.Position = UDim2.new(0.5, -375, 0.3, -260)
Window.BackgroundColor3 = Color3.fromRGB(0,0,0)
Window.BackgroundTransparency = 0.25
Window.BorderSizePixel = 0
Window.Parent = ScreenGui
Window.Active = true
Window.Draggable = true
Window.ClipsDescendants = true
Window.Name = "MainWindow"

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 60)
TitleBar.BackgroundColor3 = Color3.fromRGB(15,15,15)
TitleBar.BackgroundTransparency = 0.2
TitleBar.BorderSizePixel = 0
TitleBar.Parent = Window

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -140, 0, 30)
TitleLabel.Position = UDim2.new(0, 20, 0, 10)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Xploit Hub ‖ Brookhaven || V0.1"
TitleLabel.TextColor3 = Color3.fromRGB(230,230,230)
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextSize = 26
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Size = UDim2.new(1, -140, 0, 20)
SubTitleLabel.Position = UDim2.new(0, 20, 0, 40)
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Text = "ساموراي - عركـ"
SubTitleLabel.TextColor3 = Color3.fromRGB(170,170,170)
SubTitleLabel.Font = Enum.Font.Gotham
SubTitleLabel.TextSize = 16
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.Parent = TitleBar

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 40, 0, 40)
MinimizeBtn.Position = UDim2.new(1, -100, 0, 10)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(180,50,50)
MinimizeBtn.Text = "−"
MinimizeBtn.TextColor3 = Color3.fromRGB(255,255,255)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 32
MinimizeBtn.Parent = TitleBar

local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Size = UDim2.new(0, 40, 0, 40)
ToggleBtn.Position = UDim2.new(1, -50, 0, 10)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(70,70,70)
ToggleBtn.BackgroundTransparency = 0
ToggleBtn.Image = "rbxassetid://107399679611214"
ToggleBtn.ScaleType = Enum.ScaleType.Fit
ToggleBtn.Parent = TitleBar

local ContentFrame = Instance.new("Frame")
ContentFrame.Size = UDim2.new(1, -60, 1, -110)
ContentFrame.Position = UDim2.new(0, 30, 0, 80)
ContentFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
ContentFrame.BackgroundTransparency = 0.6
ContentFrame.BorderSizePixel = 0
ContentFrame.Parent = Window

local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, 0, 0, 40)
TabContainer.Position = UDim2.new(0, 0, 0, 40)
TabContainer.BackgroundTransparency = 1
TabContainer.Parent = Window

local ExperimentTabBtn = Instance.new("TextButton")
ExperimentTabBtn.Size = UDim2.new(0, 120, 1, 0)
ExperimentTabBtn.Position = UDim2.new(0, 10, 0, 0)
ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ExperimentTabBtn.Text = "تجربة"
ExperimentTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExperimentTabBtn.Font = Enum.Font.GothamBold
ExperimentTabBtn.TextSize = 18
ExperimentTabBtn.Parent = TabContainer

local ExperimentTabContent = Instance.new("Frame")
ExperimentTabContent.Size = UDim2.new(1, 0, 1, 0)
ExperimentTabContent.Position = UDim2.new(0, 0, 0, 0)
ExperimentTabContent.BackgroundTransparency = 1
ExperimentTabContent.Parent = ContentFrame

local ExperimentImage = Instance.new("ImageLabel")
ExperimentImage.Size = UDim2.new(0, 300, 0, 300)
ExperimentImage.Position = UDim2.new(0.5, -150, 0, 10)
ExperimentImage.BackgroundTransparency = 1
ExperimentImage.Image = "rbxassetid://107399679611214"
ExperimentImage.Parent = ExperimentTabContent

local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.new(0, 160, 0, 40)
CopyButton.Position = UDim2.new(0.5, -80, 0, 320)
CopyButton.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
CopyButton.Text = "يوزر ساموراي"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.TextSize = 20
CopyButton.Parent = ExperimentTabContent

CopyButton.MouseButton1Click:Connect(function()
    setclipboard("@alsamorayt")
    game.StarterGui:SetCore("SendNotification", {
        Title = "تم النسخ ✅",
        Text = "تم نسخ يوزر ساموراي: @alsamorayt",
        Duration = 3
    })
end)

local TweenService = game:GetService("TweenService")
local minimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local sizeGoal = UDim2.new(Window.Size.X.Scale, Window.Size.X.Offset, 0, 60)
        local tween = TweenService:Create(Window, tweenInfo, {Size = sizeGoal})
        tween:Play()
        tween.Completed:Wait()
        ContentFrame.Visible = false
        ExperimentTabContent.Visible = false
        ExperimentImage.Visible = false
        CopyButton.Visible = false
        SubTitleLabel.Visible = false
        MinimizeBtn.Text = "+"
    else
        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local sizeGoal = UDim2.new(Window.Size.X.Scale, Window.Size.X.Offset, 0, 520)
        local tween = TweenService:Create(Window, tweenInfo, {Size = sizeGoal})
        tween:Play()
        tween.Completed:Wait()
        ContentFrame.Visible = true
        ExperimentTabContent.Visible = true
        ExperimentImage.Visible = true
        CopyButton.Visible = true
        SubTitleLabel.Visible = true
        MinimizeBtn.Text = "−"
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    if isOpen then
        local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
        local tween = TweenService:Create(Window, tweenInfo, {Position = UDim2.new(0.5, -375, 0, -700)})
        tween:Play()
        isOpen = false
    else
        local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Window, tweenInfo, {Position = UDim2.new(0.5, -375, 0.3, -260)})
        tween:Play()
        isOpen = true
    end
end)

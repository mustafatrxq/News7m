local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "XploitHubV5_Styled"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

local isOpen = true

-- النافذة الرئيسية
local Window = Instance.new("Frame")
Window.Size = UDim2.new(0, 750, 0, 520)
Window.Position = UDim2.new(0.5, -375, 0.3, -260)
Window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Window.BorderSizePixel = 0
Window.Parent = ScreenGui
Window.Active = true
Window.Draggable = true
Window.ClipsDescendants = true
Window.Name = "MainWindow"

-- حواف مدورة و ظل خفيف للنافذة
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(80, 80, 80)
UIStroke.Thickness = 2
UIStroke.Parent = Window

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 18)
UICorner.Parent = Window

-- ظل خفيف
local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://1316045217" -- Shadow image asset
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.6
Shadow.ZIndex = 0
Shadow.Parent = Window

-- شريط العنوان
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 60)
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = Window

local TitleUICorner = Instance.new("UICorner")
TitleUICorner.CornerRadius = UDim.new(0, 18)
TitleUICorner.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -140, 0, 30)
TitleLabel.Position = UDim2.new(0, 20, 0, 10)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Xploit Hub ‖ Brookhaven || V0.1"
TitleLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextSize = 26
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Size = UDim2.new(1, -140, 0, 20)
SubTitleLabel.Position = UDim2.new(0, 20, 0, 40)
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Text = "ساموراي - عركـ"
SubTitleLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
SubTitleLabel.Font = Enum.Font.Gotham
SubTitleLabel.TextSize = 16
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.Parent = TitleBar

-- زر تصغير مع حركة سلايموشن وتغيير لون ورمز
local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 40, 0, 40)
MinimizeBtn.Position = UDim2.new(1, -100, 0, 10)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 180) -- لون أزرق هادي
MinimizeBtn.AutoButtonColor = false
MinimizeBtn.Text = "−"
MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 32
MinimizeBtn.Parent = TitleBar

local MinimizeUICorner = Instance.new("UICorner")
MinimizeUICorner.CornerRadius = UDim.new(0, 10)
MinimizeUICorner.Parent = MinimizeBtn

-- تأثير تغيير لون عند تمرير الماوس
MinimizeBtn.MouseEnter:Connect(function()
    MinimizeBtn.BackgroundColor3 = Color3.fromRGB(100, 160, 210)
end)
MinimizeBtn.MouseLeave:Connect(function()
    MinimizeBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
end)
MinimizeBtn.MouseButton1Down:Connect(function()
    MinimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 110, 160)
end)
MinimizeBtn.MouseButton1Up:Connect(function()
    MinimizeBtn.BackgroundColor3 = Color3.fromRGB(100, 160, 210)
end)

-- محتوى النافذة مع حاجز واضح بين التبويبات والمحتوى
local ContentFrame = Instance.new("Frame")
ContentFrame.Size = UDim2.new(1, -60, 1, -110)
ContentFrame.Position = UDim2.new(0, 30, 0, 80)
ContentFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18) -- أسود قاتم
ContentFrame.BorderSizePixel = 0
ContentFrame.Parent = Window

local ContentUICorner = Instance.new("UICorner")
ContentUICorner.CornerRadius = UDim.new(0, 14)
ContentUICorner.Parent = ContentFrame

-- حاجز (Separator) بين التبويبات والمحتوى
local Separator = Instance.new("Frame")
Separator.Size = UDim2.new(1, -60, 0, 4)
Separator.Position = UDim2.new(0, 30, 0, 75)
Separator.BackgroundColor3 = Color3.fromRGB(70, 130, 180) -- نفس لون الأزرق
Separator.BorderSizePixel = 0
Separator.Parent = Window

local SeparatorUICorner = Instance.new("UICorner")
SeparatorUICorner.CornerRadius = UDim.new(0, 2)
SeparatorUICorner.Parent = Separator

-- تبويبات (Tab container)
local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, 0, 0, 40)
TabContainer.Position = UDim2.new(0, 0, 0, 40)
TabContainer.BackgroundTransparency = 1
TabContainer.Parent = Window

-- زر تبويب تجربة
local ExperimentTabBtn = Instance.new("TextButton")
ExperimentTabBtn.Size = UDim2.new(0, 110, 1, 0)
ExperimentTabBtn.Position = UDim2.new(0, 15, 0, 0)
ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
ExperimentTabBtn.AutoButtonColor = false
ExperimentTabBtn.Text = "تجربة"
ExperimentTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExperimentTabBtn.Font = Enum.Font.GothamBold
ExperimentTabBtn.TextSize = 18
ExperimentTabBtn.Parent = TabContainer

local ExperimentBtnUICorner = Instance.new("UICorner")
ExperimentBtnUICorner.CornerRadius = UDim.new(0, 8)
ExperimentBtnUICorner.Parent = ExperimentTabBtn

-- تأثير تغيير لون زر التبويب عند التمرير
ExperimentTabBtn.MouseEnter:Connect(function()
    ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(100, 160, 210)
end)
ExperimentTabBtn.MouseLeave:Connect(function()
    ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
end)
ExperimentTabBtn.MouseButton1Down:Connect(function()
    ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(50, 110, 160)
end)
ExperimentTabBtn.MouseButton1Up:Connect(function()
    ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(100, 160, 210)
end)

-- محتوى تبويب تجربة
local ExperimentTabContent = Instance.new("Frame")
ExperimentTabContent.Size = UDim2.new(1, 0, 1, 0)
ExperimentTabContent.Position = UDim2.new(0, 0, 0, 0)
ExperimentTabContent.BackgroundTransparency = 1
ExperimentTabContent.Parent = ContentFrame

-- صورة في تبويب تجربة (أصغر شوي)
local ExperimentImage = Instance.new("ImageLabel")
ExperimentImage.Size = UDim2.new(0, 260, 0, 260)
ExperimentImage.Position = UDim2.new(0.5, -130, 0, 15)
ExperimentImage.BackgroundTransparency = 1
ExperimentImage.Image = "rbxassetid://107399679611214"
ExperimentImage.Parent = ExperimentTabContent

-- زر نسخ يوزر ساموراي
local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.new(0, 150, 0, 40)
CopyButton.Position = UDim2.new(0.5, -75, 0, 290)
CopyButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
CopyButton.AutoButtonColor = false
CopyButton.Text = "يوزر ساموراي"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.TextSize = 20
CopyButton.Parent = ExperimentTabContent

local CopyBtnUICorner = Instance.new("UICorner")
CopyBtnUICorner.CornerRadius = UDim.new(0, 8)
CopyBtnUICorner.Parent = CopyButton

-- تأثير تغير لون زر النسخ عند التمرير
CopyButton.MouseEnter:Connect(function()
    CopyButton.BackgroundColor3 = Color3.fromRGB(100, 160, 210)
end)
CopyButton.MouseLeave:Connect(function()
    CopyButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
end)
CopyButton.MouseButton1Down:Connect(function()
    CopyButton.BackgroundColor3 = Color3.fromRGB(50, 110, 160)
end)
CopyButton.MouseButton1Up:Connect(function()
    CopyButton.BackgroundColor3 = Color3.fromRGB(100, 160, 210)
end)

CopyButton.MouseButton1Click:Connect(function()
    setclipboard("@alsamorayt")
    game.StarterGui:SetCore("SendNotification", {
        Title = "تم النسخ ✅",
        Text = "تم نسخ يوزر ساموراي: @alsamorayt",
        Duration = 3
    })
end)

-- حالة التصغير مع حركة سلايموشن وتغيير رمز
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

-- زر الغلق (زر صورة) يبقى ظاهر دائماً وبعزل عن النافذة
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Size = UDim2.new(0, 40, 0, 40)
ToggleBtn.Position = UDim2.new(0.5, 375 + 20, 0.3, -260) -- يمين النافذة، منفصل عنها
ToggleBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
ToggleBtn.BackgroundTransparency = 0
ToggleBtn.Image = "rbxassetid://107399679611214"
ToggleBtn.ScaleType = Enum.ScaleType.Fit
ToggleBtn.ZIndex = 10
ToggleBtn.Parent = ScreenGui

ToggleBtn.MouseEnter:Connect(function()
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
end)
ToggleBtn.MouseLeave:Connect(function()
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
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

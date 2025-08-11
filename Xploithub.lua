local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- انشاء ScreenGui جديد
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "XploitHubV5_Pro"
ScreenGui.Parent = CoreGui
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

-- حالة الواجهة
local isOpen = true
local isMinimized = false

-- إنشاء النافذة الرئيسية
local Window = Instance.new("Frame")
Window.Name = "MainWindow"
Window.Size = UDim2.new(0, 700, 0, 520)
Window.Position = UDim2.new(0.5, -350, 0.35, -260)
Window.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Window.BorderSizePixel = 0
Window.ClipsDescendants = true
Window.Active = true
Window.Draggable = true
Window.Parent = ScreenGui

local WindowUICorner = Instance.new("UICorner")
WindowUICorner.CornerRadius = UDim.new(0, 20)
WindowUICorner.Parent = Window

local WindowStroke = Instance.new("UIStroke")
WindowStroke.Color = Color3.fromRGB(50, 140, 220)
WindowStroke.Thickness = 3
WindowStroke.Parent = Window

-- شريط العنوان
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 70)
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = Window

local TitleBarCorner = Instance.new("UICorner")
TitleBarCorner.CornerRadius = UDim.new(0, 20)
TitleBarCorner.Parent = TitleBar

-- العنوان الرئيسي
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "Xploit Hub ‖ Brookhaven || V0.1"
TitleLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextSize = 30
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 25, 0, 10)
TitleLabel.Size = UDim2.new(0.7, 0, 0, 35)
TitleLabel.Parent = TitleBar

-- العنوان الفرعي
local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Text = "ساموراي - عركـ"
SubTitleLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
SubTitleLabel.Font = Enum.Font.Gotham
SubTitleLabel.TextSize = 18
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Position = UDim2.new(0, 25, 0, 45)
SubTitleLabel.Size = UDim2.new(0.7, 0, 0, 20)
SubTitleLabel.Parent = TitleBar

-- زر الفتح/الإغلاق (يمين النافذة خارجها شوي)
local ToggleButton = Instance.new("ImageButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 45, 0, 45)
ToggleButton.Position = UDim2.new(0, Window.AbsolutePosition.X + Window.AbsoluteSize.X + 12, 0, Window.AbsolutePosition.Y + 15)
ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleButton.AutoButtonColor = false
ToggleButton.Image = "rbxassetid://107399679611214"
ToggleButton.ScaleType = Enum.ScaleType.Fit
ToggleButton.Parent = ScreenGui

local ToggleButtonCorner = Instance.new("UICorner")
ToggleButtonCorner.CornerRadius = UDim.new(0, 12)
ToggleButtonCorner.Parent = ToggleButton

-- تحديث مكان زر التبديل عند تحريك النافذة
local function updateTogglePos()
    ToggleButton.Position = UDim2.new(0, Window.AbsolutePosition.X + Window.AbsoluteSize.X + 12, 0, Window.AbsolutePosition.Y + 15)
end
updateTogglePos()
Window:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateTogglePos)
Window:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateTogglePos)

-- أزرار تحت العنوان (تصغير، يوزر ساموراي)
local ButtonsFrame = Instance.new("Frame")
ButtonsFrame.Size = UDim2.new(0, 200, 0, 50)
ButtonsFrame.Position = UDim2.new(1, -210, 0, 70)
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.Parent = Window

local function createButton(text, posX)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 90, 1, 0)
    btn.Position = UDim2.new(0, posX, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(60, 130, 210)
    btn.AutoButtonColor = false
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(245, 245, 245)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 18
    btn.Parent = ButtonsFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 14)
    corner.Parent = btn

    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(80, 160, 240)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(60, 130, 210)
    end)
    btn.MouseButton1Down:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(40, 90, 150)
    end)
    btn.MouseButton1Up:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(80, 160, 240)
    end)
    return btn
end

local MinimizeButton = createButton("تصغير", 0)
local CopyUserButton = createButton("يوزر ساموراي", 100)

CopyUserButton.MouseButton1Click:Connect(function()
    setclipboard("@alsamorayt")
    game.StarterGui:SetCore("SendNotification", {
        Title = "تم النسخ ✅",
        Text = "نسخت يوزر ساموراي: @alsamorayt",
        Duration = 3
    })
end)

-- حاجز واضح بين التبويبات والمحتوى
local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, -40, 0, 3)
Divider.Position = UDim2.new(0, 20, 0, 125)
Divider.BackgroundColor3 = Color3.fromRGB(60, 140, 220)
Divider.BorderSizePixel = 0
Divider.Parent = Window

-- التبويبات
local TabsFrame = Instance.new("Frame")
TabsFrame.Size = UDim2.new(1, -40, 0, 45)
TabsFrame.Position = UDim2.new(0, 20, 0, 80)
TabsFrame.BackgroundTransparency = 1
TabsFrame.Parent = Window

local tabButtons = {}
local contentFrames = {}

local function createTabButton(name, xPos)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 110, 1, 0)
    btn.Position = UDim2.new(0, xPos, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(40, 95, 160)
    btn.AutoButtonColor = false
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(230, 230, 230)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 18
    btn.Parent = TabsFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 14)
    corner.Parent = btn

    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(65, 130, 210)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(40, 95, 160)
    end)
    btn.MouseButton1Down:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(25, 70, 130)
    end)
    btn.MouseButton1Up:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(65, 130, 210)
    end)

    return btn
end

local function createContentFrame()
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -40, 1, -150)
    frame.Position = UDim2.new(0, 20, 0, 140)
    frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    frame.BorderSizePixel = 2
    frame.BorderColor3 = Color3.fromRGB(60, 140, 220)
    frame.Visible = false
    frame.Parent = Window

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 18)
    corner.Parent = frame

    return frame
end

-- مثال تبويب "تجربة"
local tab1Name = "تجربة"
local tab1Btn = createTabButton(tab1Name, 0)
local tab1Content = createContentFrame()

local experimentImage = Instance.new("ImageLabel")
experimentImage.Size = UDim2.new(0, 220, 0, 220)
experimentImage.Position = UDim2.new(0.5, -110, 0, 30)
experimentImage.BackgroundTransparency = 1
experimentImage.Image = "rbxassetid://107399679611214"
experimentImage.Parent = tab1Content

tabButtons[tab1Name] = tab1Btn
contentFrames[tab1Name] = tab1Content

-- تبديل التبويبات
local function switchTab(name)
    for tabName, frame in pairs(contentFrames) do
        frame.Visible = false
        if tabButtons[tabName] then
            tabButtons[tabName].BackgroundColor3 = Color3.fromRGB(40, 95, 160)
        end
    end
    contentFrames[name].Visible = true
    tabButtons[name].BackgroundColor3 = Color3.fromRGB(65, 130, 210)
end

tab1Btn.MouseButton1Click:Connect(function()
    switchTab(tab1Name)
end)

switchTab(tab1Name)

-- وظيفة تصغير/تكبير النافذة
MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        local tween = TweenService:Create(Window, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 700, 0, 70)})
        tween:Play()
        tween.Completed:Wait()
        for _, frame in pairs(contentFrames) do
            frame.Visible = false
        end
        MinimizeButton.Text = "تكبير"
        CopyUserButton.Visible = false
        TabsFrame.Visible = false
        Divider.Visible = false
    else
        local tween = TweenService:Create(Window, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 700, 0, 520)})
        tween:Play()
        tween.Completed:Wait()
        switchTab(tab1Name)
        MinimizeButton.Text = "تصغير"
        CopyUserButton.Visible = true
        TabsFrame.Visible = true
        Divider.Visible = true
    end
end)

-- وظيفة فتح/إغلاق النافذة مع حركة سلسة
ToggleButton.MouseButton1Click:Connect(function()
    if isOpen then
        local tween = TweenService:Create(Window, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, -350, 0, -600)})
        tween:Play()
        isOpen = false
        ToggleButton.Image = "rbxassetid://7058263466" -- أي دي صورة زائد
    else
        local tween = TweenService:Create(Window, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, -350, 0.35, -260)})
        tween:Play()
        isOpen = true
        ToggleButton.Image = "rbxassetid://107399679611214" -- صورتك الأصلية
    end
end)

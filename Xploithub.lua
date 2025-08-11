local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "XploitHubV5_Dark"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

local isOpen = true
local isMinimized = false

-- النافذة الرئيسية
local Window = Instance.new("Frame")
Window.Size = UDim2.new(0, 750, 0, 520)
Window.Position = UDim2.new(0.5, -375, 0.3, -260)
Window.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Window.BorderSizePixel = 0
Window.Parent = ScreenGui
Window.Active = true
Window.Draggable = true
Window.ClipsDescendants = true
Window.Name = "MainWindow"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 18)
UICorner.Parent = Window

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(60, 60, 60)
UIStroke.Thickness = 3
UIStroke.Parent = Window

-- شريط العنوان
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 60)
TitleBar.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
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
TitleLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.TextSize = 26
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local SubTitleLabel = Instance.new("TextLabel")
SubTitleLabel.Size = UDim2.new(1, -140, 0, 20)
SubTitleLabel.Position = UDim2.new(0, 20, 0, 40)
SubTitleLabel.BackgroundTransparency = 1
SubTitleLabel.Text = "ساموراي - عركـ"
SubTitleLabel.TextColor3 = Color3.fromRGB(170, 170, 170)
SubTitleLabel.Font = Enum.Font.Gotham
SubTitleLabel.TextSize = 16
SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
SubTitleLabel.Parent = TitleBar

-- أزرار تحت العنوان داخل TitleBar
local ButtonsFrame = Instance.new("Frame")
ButtonsFrame.Size = UDim2.new(0, 220, 0, 50)
ButtonsFrame.Position = UDim2.new(1, -230, 0, 5)
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.Parent = TitleBar

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 80, 0, 40)
MinimizeBtn.Position = UDim2.new(0, 0, 0, 5)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(45, 125, 170)
MinimizeBtn.AutoButtonColor = false
MinimizeBtn.Text = "تصغير"
MinimizeBtn.TextColor3 = Color3.fromRGB(240, 240, 240)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 20
MinimizeBtn.Parent = ButtonsFrame

local MinimizeUICorner = Instance.new("UICorner")
MinimizeUICorner.CornerRadius = UDim.new(0, 12)
MinimizeUICorner.Parent = MinimizeBtn

local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.new(0, 120, 0, 40)
CopyButton.Position = UDim2.new(0, 100, 0, 5)
CopyButton.BackgroundColor3 = Color3.fromRGB(45, 125, 170)
CopyButton.AutoButtonColor = false
CopyButton.Text = "يوزر ساموراي"
CopyButton.TextColor3 = Color3.fromRGB(240, 240, 240)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.TextSize = 18
CopyButton.Parent = ButtonsFrame

local CopyBtnUICorner = Instance.new("UICorner")
CopyBtnUICorner.CornerRadius = UDim.new(0, 12)
CopyBtnUICorner.Parent = CopyButton

local function setupButtonColors(btn)
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(70, 155, 210)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(45, 125, 170)
    end)
    btn.MouseButton1Down:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(30, 95, 140)
    end)
    btn.MouseButton1Up:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(70, 155, 210)
    end)
end

setupButtonColors(MinimizeBtn)
setupButtonColors(CopyButton)

CopyButton.MouseButton1Click:Connect(function()
    setclipboard("@alsamorayt")
    game.StarterGui:SetCore("SendNotification", {
        Title = "تم النسخ ✅",
        Text = "تم نسخ يوزر ساموراي: @alsamorayt",
        Duration = 3
    })
end)

-- المحتوى مع إطار (حاجز) واضح من كل الجهات
local ContentFrame = Instance.new("Frame")
ContentFrame.Size = UDim2.new(1, -40, 1, -140)
ContentFrame.Position = UDim2.new(0, 20, 0, 100)
ContentFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ContentFrame.BorderSizePixel = 3
ContentFrame.BorderColor3 = Color3.fromRGB(60, 160, 210)
ContentFrame.Parent = Window

local ContentUICorner = Instance.new("UICorner")
ContentUICorner.CornerRadius = UDim.new(0, 18)
ContentUICorner.Parent = ContentFrame

-- التبويبات داخل النافذة ونزولها تحت شريط العنوان وحاجز المحتوى
local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, -40, 0, 50)
TabContainer.Position = UDim2.new(0, 20, 0, 50)
TabContainer.BackgroundTransparency = 1
TabContainer.Parent = Window

local TabBorder = Instance.new("Frame")
TabBorder.Size = UDim2.new(1, 0, 0, 3)
TabBorder.Position = UDim2.new(0, 0, 1, 0)
TabBorder.BackgroundColor3 = Color3.fromRGB(60, 160, 210)
TabBorder.BorderSizePixel = 0
TabBorder.Parent = TabContainer

local ExperimentTabBtn = Instance.new("TextButton")
ExperimentTabBtn.Size = UDim2.new(0, 130, 1, 0)
ExperimentTabBtn.Position = UDim2.new(0, 10, 0, 0)
ExperimentTabBtn.BackgroundColor3 = Color3.fromRGB(45, 125, 170)
ExperimentTabBtn.AutoButtonColor = false
ExperimentTabBtn.Text = "تجربة"
ExperimentTabBtn.TextColor3 = Color3.fromRGB(240, 240, 240)
ExperimentTabBtn.Font = Enum.Font.GothamBold
ExperimentTabBtn.TextSize = 20
ExperimentTabBtn.Parent = TabContainer

local ExperimentBtnUICorner = Instance.new("UICorner")
ExperimentBtnUICorner.CornerRadius = UDim.new(0, 14)
ExperimentBtnUICorner.Parent = ExperimentTabBtn

setupButtonColors(ExperimentTabBtn)

-- محتوى تبويب تجربة
local ExperimentTabContent = Instance.new("Frame")
ExperimentTabContent.Size = UDim2.new(1, 0, 1, 0)
ExperimentTabContent.Position = UDim2.new(0, 0, 0, 0)
ExperimentTabContent.BackgroundTransparency = 1
ExperimentTabContent.Parent = ContentFrame

local ExperimentImage = Instance.new("ImageLabel")
ExperimentImage.Size = UDim2.new(0, 260, 0, 260)
ExperimentImage.Position = UDim2.new(0.5, -130, 0, 20)
ExperimentImage.BackgroundTransparency = 1
ExperimentImage.Image = "rbxassetid://107399679611214"
ExperimentImage.Parent = ExperimentTabContent

-- زر الغلق (زر الصورة) على جنب يمين النافذة، وسط عمودي
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Size = UDim2.new(0, 40, 0, 40)
ToggleBtn.Position = UDim2.new(0.5, 375 + 10, 0.3, -260 + 240) -- جنب النافذة منتصف الارتفاع
ToggleBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ToggleBtn.Image = "rbxassetid://107399679611214"
ToggleBtn.ScaleType = Enum.ScaleType.Fit
ToggleBtn.AutoButtonColor = false
ToggleBtn.Parent = ScreenGui

local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 10)
ToggleUICorner.Parent = ToggleBtn

local function updateToggleHover(state)
    if state then
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    else
        ToggleBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    end
end

ToggleBtn.MouseEnter:Connect(function() updateToggleHover(true) end)
ToggleBtn.MouseLeave:Connect(function() updateToggleHover(false) end)

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

-- وظيفة زر تصغير النافذة مع تأثير سلايموشن وتغيير نص الزر
MinimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Window, tweenInfo, {Size = UDim2.new(Window.Size.X.Scale, Window.Size.X.Offset, 0, 60)})
        tween:Play()
        tween.Completed:Wait()
        ContentFrame.Visible = false
        ExperimentTabContent.Visible = false
        ExperimentImage.Visible = false
        CopyButton.Visible = false
        SubTitleLabel.Visible = false
        MinimizeBtn.Text = "تكبير"
    else
        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Window, tweenInfo, {Size = UDim2.new(Window.Size.X.Scale, Window.Size.X.Offset, 0, 520)})
        tween:Play()
        tween.Completed:Wait()
        ContentFrame.Visible = true
        ExperimentTabContent.Visible = true
        ExperimentImage.Visible = true
        CopyButton.Visible = true
        SubTitleLabel.Visible = true
        MinimizeBtn.Text = "تصغير"
    end
end)

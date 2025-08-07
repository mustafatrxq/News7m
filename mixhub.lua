loadstring(game:HttpGet("https://raw.githubusercontent.com/mustafatrxq/News7m/refs/heads/main/mixhub.lua"))()

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BrookhavenScriptGUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- خلفية الواجهة
local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 450, 0, 350)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 40, 80)
MainFrame.BackgroundTransparency = 0.05
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true

-- عنوان الواجهة
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "سكربت بروكهافن"
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.TextScaled = true

-- أقسام رئيسية
local sections = {"الأدوات", "السيارات", "المنازل", "اعدادات"}
local sectionColors = {
    Color3.fromRGB(109, 204, 218), -- أدوات
    Color3.fromRGB(178, 255, 89),  -- سيارات
    Color3.fromRGB(255, 176, 176), -- منازل
    Color3.fromRGB(255, 245, 120), -- إعدادات
}

local ButtonY = 60
for i, section in ipairs(sections) do
    local Button = Instance.new("TextButton")
    Button.Parent = MainFrame
    Button.Text = section
    Button.Font = Enum.Font.Gotham
    Button.TextColor3 = Color3.fromRGB(34, 34, 34)
    Button.BackgroundColor3 = sectionColors[i]
    Button.Position = UDim2.new(0.05, 0, 0, ButtonY)
    Button.Size = UDim2.new(0.4, 0, 0, 35)
    Button.TextScaled = true
    Button.BorderSizePixel = 0
    ButtonY = ButtonY + 40

    Button.MouseButton1Click:Connect(function()
        -- هنا ضع وظائف كل زر
        print("تم اختيار: "..section)
    end)
end

-- نافذة محتوى القسم
local ContentFrame = Instance.new("Frame")
ContentFrame.Parent = MainFrame
ContentFrame.Position = UDim2.new(0.5, 10, 0, 60)
ContentFrame.Size = UDim2.new(0.45, -20, 0.8, -70)
ContentFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
ContentFrame.BackgroundTransparency = 0.3
ContentFrame.BorderSizePixel = 0

local SectionContent = Instance.new("TextLabel")
SectionContent.Parent = ContentFrame
SectionContent.Text = "اختر قسماً لعرض الخيارات"
SectionContent.Font = Enum.Font.Gotham
SectionContent.TextColor3 = Color3.fromRGB(50,50,50)
SectionContent.BackgroundTransparency = 1
SectionContent.Position = UDim2.new(0,0,0,0)
SectionContent.Size = UDim2.new(1,0,1,0)
SectionContent.TextScaled = true

-- مثال تلوين وزينة
local UICorner = Instance.new("UICorner")
UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 18)

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = ContentFrame
UICorner2.CornerRadius = UDim.new(0, 14)

-- يمكنك إضافة تفاصيل وأزرار أكثر حسب رغبتك لكل قسم

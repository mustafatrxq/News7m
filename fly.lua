local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- حجم الواجهة
local UISize = {400, 300}
local TabSize = 140

-- اعدادات
local Configs = {
    "Xploit hub ‖ Brookhaven || Beta", 
    ""
}

------------------ شاشة التحميل ------------------
local loadingGui = Instance.new("ScreenGui", PlayerGui)
loadingGui.Name = "LoadingScreen"
loadingGui.ResetOnSpawn = false

local loadingFrame = Instance.new("Frame", loadingGui)
loadingFrame.Size = UDim2.new(1,0,1,0)
loadingFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)

local border = Instance.new("UIStroke", loadingFrame)
border.Color = Color3.fromRGB(200,0,0)
border.Thickness = 5

-- صورة صغيرة
local logo = Instance.new("ImageLabel", loadingFrame)
logo.Size = UDim2.fromOffset(100,100)
logo.Position = UDim2.new(0.5,-50,0.3,-50)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://99164277842978"

-- شريط التحميل
local barBack = Instance.new("Frame", loadingFrame)
barBack.Size = UDim2.new(0,300,0,20)
barBack.Position = UDim2.new(0.5,-150,0.6,0)
barBack.BackgroundColor3 = Color3.fromRGB(40,40,40)
Instance.new("UICorner", barBack).CornerRadius = UDim.new(0,5)

local barFill = Instance.new("Frame", barBack)
barFill.Size = UDim2.new(0,0,1,0)
barFill.BackgroundColor3 = Color3.fromRGB(200,0,0)
Instance.new("UICorner", barFill).CornerRadius = UDim.new(0,5)

-- نص تحت الشريط
local loadingText = Instance.new("TextLabel", loadingFrame)
loadingText.Size = UDim2.new(1,0,0,30)
loadingText.Position = UDim2.new(0,0,0.7,0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "يتم تشغيل Xploit hub..."
loadingText.TextColor3 = Color3.fromRGB(255,255,255)
loadingText.Font = Enum.Font.SourceSansBold
loadingText.TextSize = 22

-- تحريك الشريط
task.spawn(function()
    for i=1,100 do
        barFill.Size = UDim2.new(i/100,0,1,0)
        task.wait(0.03)
    end
    loadingGui:Destroy()
end)

------------------ الواجهة الرئيسية ------------------
local screenGui = Instance.new("ScreenGui", PlayerGui)
screenGui.Name = "XploitHubUI"
screenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, UISize[1], 0, UISize[2])
mainFrame.Position = UDim2.new(0.5, -UISize[1]/2, 0.5, -UISize[2]/2)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.BackgroundTransparency = 0.2
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 20)

local stroke = Instance.new("UIStroke", mainFrame)
stroke.Thickness = 3
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

task.spawn(function()
    local hue = 0
    while true do
        stroke.Color = Color3.fromHSV(hue, 1, 1)
        hue = hue + 0.005
        if hue > 1 then hue = 0 end
        task.wait(0.02)
    end
end)

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, -TabSize, 0, 40)
title.Position = UDim2.new(0, TabSize, 0, 0)
title.BackgroundTransparency = 1
title.Text = Configs[1]
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 22

local subtitle = Instance.new("TextLabel", mainFrame)
subtitle.Size = UDim2.new(1, -TabSize, 0, 20)
subtitle.Position = UDim2.new(0, TabSize, 0, 40)
subtitle.BackgroundTransparency = 1
subtitle.Text = Configs[2]
subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitle.Font = Enum.Font.SourceSans
subtitle.TextSize = 14

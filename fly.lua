local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")


local UISize = {400, 300}
local TabSize = 140

-- إعدادات
local Configs = {
    "Xploit hub ‖ Brookhaven || Beta",
    "Made by سـاموراي ‖ عركـ"
}

local screenGui = Instance.new("ScreenGui", PlayerGui)
screenGui.Name = "Xploit Hub"
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
subtitle.Position = UDim2.new(0, TabSize, 0, 35)
subtitle.BackgroundTransparency = 1
subtitle.Text = Configs[2]
subtitle.TextColor3 = Color3.fromRGB(200, 50, 50)
subtitle.Font = Enum.Font.SourceSansItalic
subtitle.TextSize = 14


for i = 1, 50 do
    local dot = Instance.new("Frame", mainFrame)
    local size = math.random(2, 5)
    dot.Size = UDim2.new(0, size, 0, size)
    dot.Position = UDim2.new(0, math.random(0, UISize[1]-20), 0, math.random(0, UISize[2]-20))
    dot.BackgroundColor3 = Color3.fromHSV(math.random(), 0.7, 1)
    dot.BackgroundTransparency = math.random(4, 8)/10
    dot.BorderSizePixel = 0
    Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

    task.spawn(function()  
        while true do  
            local newPos = UDim2.new(0, math.random(0, UISize[1]-20), 0, math.random(0, UISize[2]-20))  
            local newTransparency = math.random(4, 8)/10  
            local newSize = math.random(2, 5)  
            local tween = TweenService:Create(dot, TweenInfo.new(math.random(2, 5), Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {  
                Position = newPos,  
                BackgroundTransparency = newTransparency,  
                Size = UDim2.new(0, newSize, 0, newSize)  
            })  
            tween:Play()  
            tween.Completed:Wait()  
        end  
    end)
end

local externalBtn = Instance.new("ImageButton", screenGui)
externalBtn.Size = UDim2.fromOffset(50, 50)
externalBtn.Position = UDim2.new(0, 50, 0.5, -25)
externalBtn.BackgroundTransparency = 0.3
externalBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
externalBtn.Image = "rbxassetid://99164277842978" -- هنا ضفت الايدي مال الصورة
Instance.new("UICorner", externalBtn).CornerRadius = UDim.new(0, 10)


local externalStroke = Instance.new("UIStroke", externalBtn)
externalStroke.Thickness = 3
externalStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

task.spawn(function()
    local hue = 0
    while true do
        externalStroke.Color = Color3.fromHSV(hue, 1, 1)
        hue = hue + 0.01
        if hue > 1 then hue = 0 end
        task.wait(0.02)
    end
end)

local dragging
externalBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
    end
end)
externalBtn.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
    end
end)
externalBtn.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        local mouse = game.Players.LocalPlayer:GetMouse()
        externalBtn.Position = UDim2.new(0, mouse.X - externalBtn.AbsoluteSize.X/2, 0, mouse.Y - externalBtn.AbsoluteSize.Y/2)
    end
end)


externalBtn.Activated:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

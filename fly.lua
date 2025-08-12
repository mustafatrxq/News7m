-- سكربت الفضاء (ساموراي)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local originalCFrame = hrp.CFrame
local inSpace = false

-- إخفاء الشخصية (من باقي اللاعبين)
local function hideCharacterForOthers(char)
    for _, part in pairs(char:GetChildren()) do
        if part:IsA("BasePart") then
            part.LocalTransparencyModifier = 1
            part.CanCollide = false
        elseif part:IsA("Decal") then
            part.LocalTransparencyModifier = 1
        elseif part:IsA("Accessory") then
            local handle = part:FindFirstChild("Handle")
            if handle then
                handle.LocalTransparencyModifier = 1
            end
        end
    end
end

-- إظهار الشخصية (لكل اللاعبين)
local function showCharacterForOthers(char)
    for _, part in pairs(char:GetChildren()) do
        if part:IsA("BasePart") then
            part.LocalTransparencyModifier = 0
            part.CanCollide = true
        elseif part:IsA("Decal") then
            part.LocalTransparencyModifier = 0
        elseif part:IsA("Accessory") then
            local handle = part:FindFirstChild("Handle")
            if handle then
                handle.LocalTransparencyModifier = 0
            end
        end
    end
end

local function teleportToSpace()
    hideCharacterForOthers(character)
    hrp.CFrame = CFrame.new(0, 1000000, 0) -- مكان عالي جداً
    inSpace = true
end

local function returnToOriginalPosition()
    hrp.CFrame = originalCFrame
    showCharacterForOthers(character)
    inSpace = false
end

-- إنشاء زر واحد يغير نصه
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
local button = Instance.new("TextButton", screenGui)
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0, 10, 0, 10)
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextScaled = true
button.Text = "إلى الفضاء"

button.MouseButton1Click:Connect(function()
    if not inSpace then
        teleportToSpace()
        button.Text = "إلى مكانك الأصلي"
    else
        returnToOriginalPosition()
        button.Text = "إلى الفضاء"
    end
end)

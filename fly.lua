-- سكربت الفضاء (ساموراي)

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local originalCFrame = hrp.CFrame
local inSpace = false

local function teleportToSpace()
    hrp.CFrame = CFrame.new(0, 10000, 0)
    wait(0.1)
    hrp.Anchored = true
    inSpace = true
end

local function returnToOriginalPosition()
    hrp.Anchored = false
    hrp.CFrame = originalCFrame
    inSpace = false
end

local function killNearbyEntities()
    local radius = 30
    -- أولاً نتعامل مع اللاعبين
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local otherHrp = otherPlayer.Character.HumanoidRootPart
            local dist = (otherHrp.Position - hrp.Position).Magnitude
            if dist <= radius then
                local humanoid = otherPlayer.Character:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Health > 0 then
                    humanoid.Health = 0
                end
            end
        end
    end
    -- ثانياً نتعامل مع كل الموديلات والأدوات في Workspace
    for _, obj in pairs(Workspace:GetChildren()) do
        if obj:IsA("Model") and obj ~= character then
            -- نبحث إذا فيه BasePart قريب
            local primaryPart = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
            if primaryPart then
                local dist = (primaryPart.Position - hrp.Position).Magnitude
                if dist <= radius then
                    -- نحذف الموديل كله
                    obj:Destroy()
                end
            end
        elseif obj:IsA("BasePart") and obj.Parent ~= character then
            local dist = (obj.Position - hrp.Position).Magnitude
            if dist <= radius then
                obj:Destroy()
            end
        end
    end
end

-- إنشاء واجهة زر
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
local button = Instance.new("TextButton", screenGui)
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0, 10, 0, 10)
button.BackgroundColor3 = Color3.fromRGB(0,0,0)
button.TextColor3 = Color3.fromRGB(255,255,255)
button.TextScaled = true
button.Text = "إلى الفضاء"

button.MouseButton1Click:Connect(function()
    if not inSpace then
        teleportToSpace()
        button.Text = "العودة"
        spawn(function()
            while inSpace do
                killNearbyEntities()
                wait(0.5)
            end
        end)
    else
        returnToOriginalPosition()
        button.Text = "إلى الفضاء"
    end
end)

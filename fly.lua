local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local originalCFrame = hrp.CFrame
local inSpace = false

local function hideCharacter(char)
    for _, part in pairs(char:GetChildren()) do
        if part:IsA("BasePart") then
            part.Transparency = 1
            part.CanCollide = false
        elseif part:IsA("Decal") then
            part.Transparency = 1
        elseif part:IsA("Accessory") then
            local handle = part:FindFirstChild("Handle")
            if handle then
                handle.Transparency = 1
            end
        end
    end
end

local function showCharacter(char)
    for _, part in pairs(char:GetChildren()) do
        if part:IsA("BasePart") then
            part.Transparency = 0
            part.CanCollide = true
        elseif part:IsA("Decal") then
            part.Transparency = 0
        elseif part:IsA("Accessory") then
            local handle = part:FindFirstChild("Handle")
            if handle then
                handle.Transparency = 0
            end
        end
    end
end

local function teleportToSpace()
    hideCharacter(character)
    hrp.CFrame = CFrame.new(0, 9999, 0)
    inSpace = true
end

local function returnToOriginalPosition()
    hrp.CFrame = originalCFrame
    showCharacter(character)
    inSpace = false
end

local function killOthersInSpace()
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local otherHrp = otherPlayer.Character.HumanoidRootPart
            local dist = (otherHrp.Position - hrp.Position).Magnitude
            if dist < 20 then
                local hasScript = otherPlayer:FindFirstChild("HasSpaceScript")
                if not hasScript or not hasScript.Value then
                    local humanoid = otherPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid and humanoid.Health > 0 then
                        humanoid.Health = 0
                    end
                end
            end
        end
    end
end

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
        local val = Instance.new("BoolValue")
        val.Name = "HasSpaceScript"
        val.Value = true
        val.Parent = player

        while inSpace do
            killOthersInSpace()
            wait(0.5)
        end

        if player:FindFirstChild("HasSpaceScript") then
            player.HasSpaceScript:Destroy()
        end
    else
        returnToOriginalPosition()
        button.Text = "إلى الفضاء"
    end
end)

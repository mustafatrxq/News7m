-- سكربت تعليمي للـ Noclip
-- للتشغيل: اضغط N
-- للإيقاف: اضغط M

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local noclip = false

-- تفعيل Noclip بالزر N
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.N then
        noclip = true
        print("Noclip Activated")
    elseif input.KeyCode == Enum.KeyCode.M then
        noclip = false
        print("Noclip Deactivated")
    end
end)

-- كل Frame يغير خصائص الجسم
RunService.Stepped:Connect(function()
    if character and noclip then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

--[[
اسمحلي اسميه: PremiumSystem
هذ السكربت يجمع السيرفر + RemoteEvents + GUI
ضع هذا في StarterPlayerScripts للـ GUI و في ServerScriptService للجزء السيرفر
--]]

-- ===== Server-side part =====
if game:GetService("RunService"):IsServer() then
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    -- إنشاء RemoteEvents
    local TogglePremium = ReplicatedStorage:FindFirstChild("TogglePremium")
    if not TogglePremium then
        TogglePremium = Instance.new("RemoteEvent")
        TogglePremium.Name = "TogglePremium"
        TogglePremium.Parent = ReplicatedStorage
    end

    local NotifyPremium = ReplicatedStorage:FindFirstChild("PremiumNotification")
    if not NotifyPremium then
        NotifyPremium = Instance.new("RemoteEvent")
        NotifyPremium.Name = "PremiumNotification"
        NotifyPremium.Parent = ReplicatedStorage
    end

    -- إضافة PremiumPass لكل لاعب عند دخوله
    Players.PlayerAdded:Connect(function(player)
        if not player:FindFirstChild("PremiumPass") then
            local premium = Instance.new("BoolValue")
            premium.Name = "PremiumPass"
            premium.Value = false -- افتراضي غير مفعل
            premium.Parent = player
        end

        -- Leaderstats
        local leaderstats = player:FindFirstChild("leaderstats")
        if not leaderstats then
            leaderstats = Instance.new("Folder")
            leaderstats.Name = "leaderstats"
            leaderstats.Parent = player
        end

        -- نص البريموم بجانب الاسم
        local premiumText = Instance.new("StringValue")
        premiumText.Name = "Premium"
        premiumText.Value = player.PremiumPass.Value and "⭐ Premium" or ""
        premiumText.Parent = leaderstats

        -- تحديث تلقائي إذا تغيرت القيمة
        player.PremiumPass.Changed:Connect(function(val)
            premiumText.Value = val and "⭐ Premium" or ""
        end)
    end)

    -- تفعيل/إيقاف البريموم لكل اللاعبين
    TogglePremium.OnServerEvent:Connect(function(adminPlayer, state)
        for _, player in pairs(Players:GetPlayers()) do
            if player:FindFirstChild("PremiumPass") then
                player.PremiumPass.Value = state
                -- مثال: تفعيل SilverPass إذا موجودة
                if player:FindFirstChild("PlayersBag") and player.PlayersBag:FindFirstChild("SilverPass") then
                    player.PlayersBag.SilverPass.Value = state
                end
            end
        end
        -- إشعار لكل اللاعبين
        NotifyPremium:FireAllClients(state)
    end)
end

-- ===== Client-side GUI =====
if game:GetService("RunService"):IsClient() then
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = Players.LocalPlayer
    local TogglePremium = ReplicatedStorage:WaitForChild("TogglePremium")
    local NotifyPremium = ReplicatedStorage:WaitForChild("PremiumNotification")

    -- واجهة GUI
    local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 220, 0, 120)
    Frame.Position = UDim2.new(0, 50, 0, 50)
    Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Frame.BorderSizePixel = 0

    local Title = Instance.new("TextLabel", Frame)
    Title.Size = UDim2.new(1,0,0,30)
    Title.Position = UDim2.new(0,0,0,0)
    Title.BackgroundTransparency = 1
    Title.Text = "تحكم البريموم"
    Title.TextColor3 = Color3.fromRGB(255,215,0)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 18

    -- زر تشغيل
    local ButtonOn = Instance.new("TextButton", Frame)
    ButtonOn.Size = UDim2.new(0.45,0,0,40)
    ButtonOn.Position = UDim2.new(0.05,0,0.4,0)
    ButtonOn.Text = "تشغيل"
    ButtonOn.TextColor3 = Color3.fromRGB(0,255,0)
    ButtonOn.Font = Enum.Font.GothamBold
    ButtonOn.TextSize = 18

    ButtonOn.MouseButton1Click:Connect(function()
        TogglePremium:FireServer(true)
    end)

    -- زر إيقاف
    local ButtonOff = Instance.new("TextButton", Frame)
    ButtonOff.Size = UDim2.new(0.45,0,0,40)
    ButtonOff.Position = UDim2.new(0.5,0,0.4,0)
    ButtonOff.Text = "إيقاف"
    ButtonOff.TextColor3 = Color3.fromRGB(255,0,0)
    ButtonOff.Font = Enum.Font.GothamBold
    ButtonOff.TextSize = 18

    ButtonOff.MouseButton1Click:Connect(function()
        TogglePremium:FireServer(false)
    end)

    -- إشعار عند التغيير
    NotifyPremium.OnClientEvent:Connect(function(state)
        local message = Instance.new("Message", workspace)
        message.Text = state and "✨ تم تفعيل البريموم لجميع اللاعبين!" or "❌ تم إيقاف البريموم لجميع اللاعبين!"
        wait(3)
        message:Destroy()
    end)
end

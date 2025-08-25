-- Lag + Freeze GUI Script (تعليمي)
-- ضع هذا كـ LocalScript داخل StarterPlayerScripts

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

-- مثال RemoteEvent موجود مسبقاً في السيرفر
local ExampleEvent = ReplicatedStorage:FindFirstChild("PhoneEvent") -- استبدل بالاسم الصحيح

-- GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("❄️ Lag & Freeze Tool", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Control")

-- حالة اللاگ
local LagEnabled = false
local Loop

-- دالة تشغيل اللاگ + تجميد
local function StartLag()
    if not ExampleEvent then
        warn("RemoteEvent مو موجود")
        return
    end
    LagEnabled = true
    Loop = game:GetService("RunService").Heartbeat:Connect(function()
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                -- تجميد الحركة
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum.WalkSpeed = 0
                    hum.JumpPower = 0
                end
                -- تأثير مرئي: تحريك الشخصية قليلًا (تذبذب)
                p.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(-1,1),0,math.random(-1,1))
                -- إرسال RemoteEvent إذا موجود
                ExampleEvent:FireServer("Spam", string.rep("A",500))
            end
        end
    end)
end

-- دالة إيقاف اللاگ + إعادة اللاعبين طبيعي
local function StopLag()
    LagEnabled = false
    if Loop then
        Loop:Disconnect()
        Loop = nil
    end
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Character then
            local hum = p.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.WalkSpeed = 16
                hum.JumpPower = 50
            end
        end
    end
end

-- أزرار GUI
Section:NewButton("تشغيل اللاگ + تجميد", "يسبب Lag وتجميد للاعبين", function()
    StartLag()
end)

Section:NewButton("ايقاف اللاگ", "يرجع كلشي طبيعي", function()
    StopLag()
end)

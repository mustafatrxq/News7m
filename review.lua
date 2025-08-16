-- سكربت كامل للتعليم: إزعاج/رعب في Brookhaven (للتعلم الأخلاقي)
-- ضع هذا السكربت في ServerScriptService

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        -- إنشاء ScreenGui
        local gui = Instance.new("ScreenGui")
        gui.Name = "ScaryUI"
        gui.ResetOnSpawn = false

        local frame = Instance.new("Frame", gui)
        frame.Size = UDim2.new(1,0,1,0)
        frame.BackgroundColor3 = Color3.new(0,0,0)

        local image = Instance.new("ImageLabel", frame)
        image.Size = UDim2.new(1,0,1,0)
        image.Image = "rbxassetid://1972219027" -- صورة مرعبة
        image.BackgroundTransparency = 1

        -- الأصوات
        local scream = Instance.new("Sound", frame)
        scream.SoundId = "rbxassetid://9039981228"
        scream.Volume = 10
        scream.Looped = false

        local thunder = Instance.new("Sound", frame)
        thunder.SoundId = "rbxassetid://9040027510"
        thunder.Volume = 8
        thunder.Looped = false

        gui.Parent = player:WaitForChild("PlayerGui")

        -- إنشاء LocalScript داخل اللاعب لتأثيرات الكاميرا والإضاءة
        local localScript = Instance.new("LocalScript")
        localScript.Parent = gui
        localScript.Source = [[
            local camera = workspace.CurrentCamera
            local lighting = game.Lighting

            -- ضبط الإضاءة والجو
            lighting.FogEnd = 50
            lighting.FogColor = Color3.new(0,0,0)
            lighting.Brightness = 0.1
            lighting.ClockTime = 0

            -- تغيير السماء إلى مرعبة (اختياري)
            if lighting:FindFirstChild("Sky") then
                lighting.Sky.SkyboxBk = "rbxassetid://7043650541"
                lighting.Sky.SkyboxDn = "rbxassetid://7043650564"
                lighting.Sky.SkyboxFt = "rbxassetid://7043650523"
                lighting.Sky.SkyboxLf = "rbxassetid://7043650556"
                lighting.Sky.SkyboxRt = "rbxassetid://7043650577"
                lighting.Sky.SkyboxUp = "rbxassetid://7043650533"
            end

            -- دالة اهتزاز الكاميرا
            local function shakeCamera(intensity, duration)
                local originalCFrame = camera.CFrame
                for i = 1, duration*10 do
                    camera.CFrame = originalCFrame * CFrame.new(
                        math.random(-intensity,intensity)/50,
                        math.random(-intensity,intensity)/50,
                        0
                    )
                    task.wait(0.05)
                end
                camera.CFrame = originalCFrame
            end

            task.wait(3)
            shakeCamera(5, 3)
            task.wait(1)
            shakeCamera(8, 2)
        ]]

        -- تشغيل الأصوات وتأثير الصور
        task.wait(2)
        scream:Play()
        frame.BackgroundColor3 = Color3.new(1,0,0)
        task.wait(1)
        thunder:Play()
        frame.BackgroundColor3 = Color3.new(0,0,0)
        task.wait(1)
        image.Image = "rbxassetid://3673523334" -- عيون مخيفة
    end)
end)

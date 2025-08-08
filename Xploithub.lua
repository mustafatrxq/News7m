local developerUsernames = {
    ["lduwgxbf"] = true
}

local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")

local function realisticShake(duration, intensity)
    local cam = workspace.CurrentCamera
    local start = tick()
    local conn
    conn = RunService.RenderStepped:Connect(function()
        local elapsed = tick() - start
        if elapsed > duration then
            conn:Disconnect()
            return
        end
        local x = math.sin(tick() * 50) * intensity
        local y = (math.random() * 2 - 1) * intensity
        local shakeOffset = Vector3.new(x, y, 0)
        cam.CFrame = cam.CFrame * CFrame.new(shakeOffset)
    end)
end

local function spawnExplosions(player)
    local char = player.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    for i = 1, 5 do
        local offset = Vector3.new(math.random(-10,10), 0, math.random(5,15))
        local pos = root.Position + offset
        local exp = Instance.new("Explosion")
        exp.Position = pos
        exp.BlastPressure = 0
        exp.BlastRadius = 5
        exp.Parent = workspace
        local part = Instance.new("Part")
        part.Anchored = true
        part.CanCollide = false
        part.Size = Vector3.new(4,4,4)
        part.Position = pos + Vector3.new(0,2,0)
        part.Transparency = 1
        part.Parent = workspace
        local fire = Instance.new("Fire", part)
        fire.Size = 10
        fire.Heat = 25
        local smoke = Instance.new("Smoke", part)
        smoke.Size = 10
        smoke.Opacity = 0.4
        local boom = Instance.new("Sound", part)
        boom.SoundId = "rbxassetid://138186576"
        boom.Volume = 1
        boom:Play()
        Debris:AddItem(part, 10)
    end
end

local function triggerScene(devName)
    local player = Players.LocalPlayer
    if not player then return end
    local playerGui = player:WaitForChild("PlayerGui")
    local originalSettings = {
        Brightness = Lighting.Brightness,
        ShadowSoftness = Lighting.ShadowSoftness,
        Ambient = Lighting.Ambient,
        TimeOfDay = Lighting.TimeOfDay
    }

    local bw = Instance.new("ColorCorrectionEffect")
    bw.Name = "DevBW"
    bw.Saturation = -1
    bw.Contrast = 1.3
    bw.Brightness = -0.2
    bw.Parent = Lighting

    local blur = Instance.new("BlurEffect")
    blur.Name = "DevBlur"
    blur.Size = 30
    blur.Parent = Lighting

    local gui = Instance.new("ScreenGui", playerGui)
    gui.Name = "DevJoinGui"
    gui.IgnoreGuiInset = true
    gui.ResetOnSpawn = false

    local flash = Instance.new("Frame", gui)
    flash.BackgroundColor3 = Color3.new(1, 1, 1)
    flash.Size = UDim2.new(1, 0, 1, 0)
    flash.BackgroundTransparency = 1

    local background = Instance.new("Frame", gui)
    background.BackgroundColor3 = Color3.new(0, 0, 0)
    background.BackgroundTransparency = 0.3
    background.Size = UDim2.new(1, 0, 1, 0)

    local text = Instance.new("TextLabel", gui)
    text.Size = UDim2.new(0.6, 0, 0.18, 0)
    text.Position = UDim2.new(0.2, 0, 0.41, 0)
    text.BackgroundTransparency = 1
    text.Text = "تسجيل دخول الإمبراطور ساموراي"
    text.TextColor3 = Color3.fromRGB(255, 215, 0)
    text.TextStrokeTransparency = 0.2
    text.TextScaled = true
    text.Font = Enum.Font.Fantasy
    text.ZIndex = 5
    text.TextWrapped = true
    text.TextYAlignment = Enum.TextYAlignment.Center

    local glitch = Instance.new("ImageLabel", gui)
    glitch.Size = UDim2.new(1, 0, 1, 0)
    glitch.BackgroundTransparency = 1
    glitch.Image = "rbxassetid://10974496034"
    glitch.ImageTransparency = 1
    glitch.ZIndex = 4

    local sound = Instance.new("Sound", gui)
    sound.SoundId = "rbxassetid://9120580936"
    sound.Volume = 1
    pcall(function() sound:Play() end)

flash.BackgroundTransparency = 0
    TweenService:Create(flash, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
    TweenService:Create(text, TweenInfo.new(0.4, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0.8, 0, 0.24, 0),
        Position = UDim2.new(0.1, 0, 0.38, 0)
    }):Play()

    spawn(function()
        local colors = {
            Color3.fromRGB(255,215,0),
            Color3.fromRGB(255,100,0),
            Color3.fromRGB(255,60,60),
            Color3.fromRGB(255,255,255),
        }
        for i = 1, 120 do
            text.TextColor3 = colors[(i % #colors) + 1]
            wait(0.06)
        end
        text.TextColor3 = Color3.fromRGB(255,215,0)
    end)

    spawn(function()
        for i = 1, 15 do
            glitch.ImageTransparency = 0
            wait(0.04)
            glitch.ImageTransparency = 1
            wait(0.04)
        end
    end)

    realisticShake(3.5, 0.6)
    spawnExplosions(player)

    delay(10, function()
        if gui and gui.Parent then gui:Destroy() end
    end)
end

local function onPlayerAdded(player)
    if developerUsernames[player.Name] then
        triggerScene(player.Name)
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)

for _, player in pairs(Players:GetPlayers()) do
    if developerUsernames[player.Name] then
        triggerScene(player.Name)
    end
end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()

local PlayersLocal = Players.LocalPlayer
local greeting = "منوّر السكربت"

if PlayersLocal and PlayersLocal.Character and PlayersLocal.Character:FindFirstChildOfClass("Shirt") then
    local shirtId = PlayersLocal.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
    if shirtId and shirtId:lower():find("girl") then
        greeting = "منوّرة السكربت"
    end
end

MakeWindow({
  Hub = {
    Title = "Xploit ساموراي V0.1",
    Animation = greeting
  },
  Key = {
    KeySystem = false,
    Title = "Key System",
    Description = "",
    KeyLink = "",
    Keys = {"1234"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})

MinimizeButton({
  Image = "rbxassetid://88122625843089",
  Size = {40, 40},
  Color = Color3.fromRGB(255, 125, 0),
  Corner = true,
  Stroke = false,
  StrokeColor = Color3.fromRGB(255, 125, 0)
})

local Main = MakeTab({
    Name = "المعلومات",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

AddImageLabel(Main, {
  Name = "قناة السكربت",
  Image = "rbxassetid://88122625843089"
})

AddButton(Main, {
  Name = "انضم",
  Callback = function()
    setclipboard('https://t.me/Prov_development')
  end
})

local Label = AddTextLabel(Main,
 "User: " .. PlayersLocal.Name .. "\n" ..
 "Map: " .. game.PlaceId .. "\n" ..
 "Time: " .. os.date("%H:%M:%S")
)

task.spawn(function()
 while true do
  task.wait(1)
  Label.Update(
   "User: " .. PlayersLocal.Name .. "\n" ..
   "Map: " .. game.PlaceId .. "\n" ..
   "Time: " .. os.date("%H:%M:%S")
  )
 end
end)

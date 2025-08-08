loadstring(game:HttpGet(("https://raw.githubusercontent.com/Y0dp/R7/refs/heads/main/TT.Lua")))()
MakeWindow({
  Hub = {
    Title = "Xploit  مـطور سـاموراي  V0.1",
    Animation = "منور سكربت ساموراي ورده🌹💕 "
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
    Name = "المطور",
    Image = "rbxassetid://88122625843089",
    TabTitle = false
})

local mbr3___ = MakeTab({Name = "سكربتات❤️‍🔥"})
local mbr4___ = MakeTab({Name = "اكواد سكنات 🫡"})
local mbr8___ = MakeTab({Name = "سكنات🌚"})
local mbr5___ = MakeTab({Name = "تخريب😈"})
local mbr7___ = MakeTab({Name = "الأسماء🦕"})
local mbr11___ = MakeTab({Name = "كودات قران"})
local mbr10___ = MakeTab({Name = "تحط كودات اغاني"})




local Image = AddImageLabel(Main, {
  Name = "قناة السكربت",
  Image = "rbxassetid://88122625843089"
})
AddButton(Main, {
  Name = "انضم",
  Callback = function()
    setclipboard('https://t.me/Prov_development')
  end
})
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Label = AddTextLabel(Main,
 "User: " .. LocalPlayer.Name .. "\n" ..
 "Map: " .. game.PlaceId .. "\n" ..
 "Time: " .. os.date("%H:%M:%S")
)

task.spawn(function()
 while true do
  task.wait(1)
  Label.Update(
   "User: " .. LocalPlayer.Name .. "\n" ..
   "Map: " .. game.PlaceId .. "\n" ..
   "Time: " .. os.date("%H:%M:%S")
  )
 end
end)

AddSection(mbr3___, {"تعذيب"})

AddButton(mbr3___, {
  Name = "سكربت بيتر ايم بوت اسطوري",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vvVIRUSss1/ViRuS_Scrip12/refs/heads/main/Protected_9448220717883446.lua.txt"))()
  end
})



AddButton(mbr3___, {
  Name = "سكربت ترولكسه",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmidd409/TrollX-V2/refs/heads/main/TrollXHUBv3-TrogiX"))()
  end
})

AddSection(mbr4___, {"اكـمام الـيد"})

AddButton(mbr4___, {
  Name = "قـفازات يد اسود مخطط",
  Callback = function()
    wait(0.1)
    local args = {[1] = 9239689111}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "سـتـرة اسـود",
  Callback = function()
    wait(0.1)
    local args = {[1] = 89892588488089}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "سـتـرة زهـري كـيـوت ",
  Callback = function()
    wait(0.1)
    local args = {[1] = 99429391843259}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد اسود عـادي 1",
  Callback = function()
    wait(0.1)
    local args = {[1] = 10789914680}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد اسود عـادي 2",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11363898043}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد اسود عـادي 3",
  Callback = function()
    wait(0.1)
    local args = {[1] = 10791180072}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد ابـيـض مزخرف ",
  Callback = function()
    wait(0.1)
    local args = {[1] = 10871965173}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد زهري",
  Callback = function()
    wait(0.1)
    local args = {[1] = 10789939838}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد احـمـر",
  Callback = function()
    wait(0.1)
    local args = {[1] = 12379676852}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "اضـافـر اسـود",
  Callback = function()
    wait(0.1)
    local args = {[1] = 12825022709}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد قـصـير 1",
  Callback = function()
    wait(0.1)
    local args = {[1] = 12483105503}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد قـصـير 2",
  Callback = function()
    wait(0.1)
    local args = {[1] = 12483109504}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد قـصـير 3",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11613796964}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد قـصـير 4",
  Callback = function()
    wait(0.1)
    local args = {[1] = 10954568687}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد قـصـير 5",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11679250718}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "قـفازات يد قـصـير 6",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11182924874}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddSection(mbr4___, {"اكـمام الرجـل"})

AddButton(mbr4___, {
  Name = "حـذاء الـشيطـان زهري",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14388006902}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء الـشيطـان احـمـر",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14388019333}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء الـشيطـان ابـيض",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14387999337}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء الـشيطـان اسـود",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14388004031}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء طـويل اسـود",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11433864064}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء طـويل ابـيض",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11111279400}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء طـويل ابـيض و احـمر",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11708887517}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء الـقـرش الاسـود",
  Callback = function()
    wait(0.1)
    local args = {[1] = 13463375063}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 1",
  Callback = function()
    wait(0.1)
    local args = {[1] = 11856087406}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 2",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14388001192}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 3",
  Callback = function()
    wait(0.1)
    local args = {[1] = 12453321203}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 4",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14338742287}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 5",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14338742287}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 6",
  Callback = function()
    wait(0.1)
    local args = {[1] = 12296189693}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})

AddButton(mbr4___, {
  Name = "حـذاء قـصـير 7",
  Callback = function()
    wait(0.1)
    local args = {[1] = 14338732820}
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
  end
})




 
AddSection(mbr5___, {"قـتـل بـالـبـاص"})

local selectedBusPlayer = nil

AddDropdown(mbr5___, {
    Name = "اخـتـار الـلاعـب",
    Options = playerNames,
    Callback = function(selected)
        selectedBusPlayer = selected
    end
})

AddButton(mbr5___, {
    Name = "اقـتـل الـلاعـب بـالـبـاص",
    Callback = function()
        if not selectedBusPlayer then
            print("لا يوجد لاعب محدد!")
            return
        end
        
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local originalPosition = humanoidRootPart.CFrame
        
        local function GetBus()
            local vehicles = workspace:FindFirstChild("Vehicles")
            if vehicles then
                return vehicles:FindFirstChild(player.Name.."Car")
            end
            return nil
        end
        
        local bus = GetBus()
        if not bus then
            humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
            task.wait(0.5)
            local remoteEvent = game:GetService("ReplicatedStorage"):FindFirstChild("RE")
            if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then
                remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
            end
            task.wait(1)
            bus = GetBus()
        end
        
        if bus then
            local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")
            if seat and character:FindFirstChildOfClass("Humanoid") and not character.Humanoid.Sit then
                repeat
                    humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
                    task.wait()
                until character.Humanoid.Sit or not bus.Parent
            end
        end
        
        local destination = Vector3.new(265.46, -450.83, -59.93)
        spawn(function()
            while true do
                if selectedBusPlayer then
                    local targetPlayer = Players:FindFirstChild(selectedBusPlayer)
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                        if targetHumanoid and targetHumanoid.Sit then
                            if character.Humanoid then
                                bus:SetPrimaryPartCFrame(CFrame.new(destination))
                                task.wait(0.2)
                                character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                task.wait(0.5)
                                humanoidRootPart.CFrame = originalPosition
                            end
                            break
                        else
                            local targetRoot = targetPlayer.Character.HumanoidRootPart
                            local offset = math.sin(tick() * 32) * 8
                            bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(0, 0, -2) * CFrame.new(offset, 0, -2))
                        end
                    end
                end
                game:GetService("RunService").RenderStepped:Wait()
            end
        end)
    end
})   







local mbr77___ = MakeTab({Name = "-مراقبه الاعب🤫-"})


-- Function to get all player names
local function getPlayerNames()
    local playerNames = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    return playerNames
end

-- Store selected player for later use
local selectedPlayer = nil
local followHead = false
local connection = nil

-- Function to spectate the selected player
local function spectatePlayer(enable)
    local player = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if enable then
                -- Set camera to follow the selected player
                camera.CameraSubject = targetPlayer.Character.Humanoid
            else
                -- Reset camera to default (back to the local player)
                camera.CameraSubject = player.Character.Humanoid
            end
        else
            print("Selected player not available or out of game.")
        end
    else
        print("No player selected!")
    end
end

-- Function to float just above the selected player's head without falling
local function floatAbovePlayerHead()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        if selectedPlayer then
            local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                local targetHead = targetPlayer.Character.Head

                -- Position above the selected player's head
                humanoidRootPart.CFrame = targetHead.CFrame * CFrame.new(0, 3, 0)

                -- Keep updating the position every frame
                connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if followHead and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
                        -- Update to stay above the player's head
                        humanoidRootPart.CFrame = targetPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
                    else
                        connection:Disconnect() -- Disconnect if the toggle is off
                    end
                end)
            else
                print("Target player not found or not in the game.")
            end
        else
            print("No player selected!")
        end
    end
end

-- Function to trigger the secondary script
local function triggerCharacterSizeDown()
    local args = {
        [1] = "CharacterSizeDown",
        [2] = 2.4
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
end

-- Function to teleport behind the selected player and return after 1.5 seconds
local function moveBehindAndReturn()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart and selectedPlayer then
        local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetHumanoidRootPart = targetPlayer.Character.HumanoidRootPart

            -- Store the original position
            local originalPosition = humanoidRootPart.CFrame

            -- Move behind the selected player
            humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

            -- Wait for 1.5 seconds before returning
            wait(1.5)

            -- Return to original position
            humanoidRootPart.CFrame = originalPosition
        else
            print("Selected player not found or not in the game.")
        end
    else
        print("No player or HumanoidRootPart found!")
    end
end

-- Create the dropdown with player names
AddDropdown(mbr77___, {
    Name = "اخـتـار الـلاعـب",
    Default = "",
    Options = getPlayerNames(),
    Callback = function(value)
        selectedPlayer = value
        print("Player selected: " .. value)
    end    
})


local flingToggle

-- Add a toggle that allows the player to spectate the selected player
AddToggle(mbr77___, {
    Name = "شـاهـد الـلاعـب",
    Default = false,
    Callback = function(value)
        spectatePlayer(value)
    end    
})

-- Add a button to teleport to the selected player
AddButton(mbr77___, {
    Name = "الانـتـقـال الـى الـلاعـب",
    Callback = function()
        floatAbovePlayerHead()
    end    
})






 
    
local Main = MakeTab({Name = "التنقل🫣"})
AddButton(Main, {
  Name = "زر ينقل لك وين ما تريد",
  Callback = function()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()

    local function createTeleportTool()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = " تنقل"

        tool.Activated:Connect(function()
            local hitPos = mouse.Hit.p + Vector3.new(0, 2.5, 0)
            local pos = CFrame.new(hitPos)
            player.Character.HumanoidRootPart.CFrame = pos
        end)

        tool.Parent = player.Backpack
    end

    -- Cria a ferramenta inicialmente
    createTeleportTool()

    -- Adiciona a ferramenta novamente quando o personagem é reaparecido
    player.CharacterAdded:Connect(function()
        wait(0.1) -- Espera um curto período de tempo para garantir que o inventário seja carregado
        createTeleportTool()
    end)
  end
})

AddButton(Main, {
    Name = "لوحة 1",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char:FindFirstChild("HumanoidRootPart")

        if hrp then
            hrp.CFrame = CFrame.new(-242.68215942382812, 89.68680572509766, -549.6495361328125)
        else
            warn("HumanoidRootPart not found")
        end
    end
})

AddButton(Main, {
    Name = "لوحة 2",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char:FindFirstChild("HumanoidRootPart")

        if hrp then
            hrp.CFrame = CFrame.new(-630.480712890625, 26.586822509765625, 365.14093017578125)
        else
            warn("HumanoidRootPart not found")
        end
    end
})

-- Function to teleport to Teleport
local function teleportToGasStation()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(192, 4, 272)
end

AddButton(Main, {
    Name = "ورا البيوت",
    Description = "",
    Callback = teleportToGasStation
})

-- Function to teleport to Teleport
local function teleportToCenter()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136, 4, 117)
end

AddButton(Main, {
    Name = "قدام البيوت",
    Description = "",
    Callback = teleportToCenter
})

-- Function to teleport to Criminal
local function teleportToCriminal()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-119, -28, 235)
end

AddButton(Main, {
    Name = "مكان أسلحة",
    Description = "Teleporta para as coordenadas do Criminal",
    Callback = teleportToCriminal
})

-- Function to teleport to House Abandoned
local function teleportToHouseAbandoned()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(986, 4, 63)
end

AddButton(Main, {
    Name = "بيت قفير",
    Description = "Teleporta para as coordenadas da Casa Abandonada",
    Callback = teleportToHouseAbandoned
})

-- Function to teleport to Portal Agency
local function teleportToPortalAgency()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(672, 4, -296)
end

AddButton(Main, {
    Name = "مكان سري",
    Description = "Teleporta para as coordenadas do Portal da Agência",
    Callback = teleportToPortalAgency
})

-- Function to teleport to Secret Location
local function teleportToSecretLocation()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, -75, 143)
end

AddButton(Main, {
    Name = "جو الأرض",
    Description = "Teleporta para as coordenadas do Local Secreto",
    Callback = teleportToSecretLocation
})

-- Function to teleport to School
local function teleportToSchool()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-312, 4, 211)
end

AddButton(Main, {
    Name = "مدرسة",
    Description = "Teleporta para as coordenadas da Escola",
    Callback = teleportToSchool
})

-- Function to teleport to Brooks Diner
local function teleportToBrooksDiner()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161, 8, 52)
end

AddButton(Main, {
    Name = "قهوة",
    Description = "Teleporta para as coordenadas do Brooks Diner",
    Callback = teleportToBrooksDiner
})

local function teleportToBrooksDiner()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26, 4, -23)
end

AddButton(Main, {
    Name = "البداية",
    Description = "Teleporta para as coordenadas do Brooks Diner",
    Callback = teleportToBrooksDiner
})


-- Function to teleport to Hospital
local function teleportToHospital()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-309, 4, 71)
end

AddButton(Main, {
    Name = "مستشفى",
    Description = "Teleporta para as coordenadas do Hospital",
    Callback = teleportToHospital
})

-- Function to teleport to Arch
local function teleportToArch()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-589, 141, -59)
end

AddButton(Main, {
    Name = "فوق الجسر",
    Description = "Teleporta para as coordenadas do Arco",
    Callback = teleportToArch
})

-- Function to teleport to Agency
local function teleportToAgency()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 4, -464)
end

AddButton(Main, {
    Name = "مكان الكهرباء",
    Description = "Teleporta para as coordenadas da Agência",
    Callback = teleportToAgency
})

-- Function to teleport to Secret Room in Workshop
local function teleportToSecretRoomInWorkshop()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 4, -495)
end

AddButton(Main, {
    Name = "جو الأرض",
    Description = "Teleporta para as coordenadas da Sala Secreta na Oficina",
    Callback = teleportToSecretRoomInWorkshop
})

-- Function to teleport to Secret Room 2
local function teleportToSecretRoom2()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-343, 4, -613)
end

AddButton(Main, {
    Name = "جو الأرض 2",
    Description = "Teleporta para as coordenadas da Sala Secreta 2",
    Callback = teleportToSecretRoom2
})

-- Function to teleport to Island 1
local function teleportToIsland1()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1925, 23, 127)
end

AddButton(Main, {
    Name = "جزيرة 1",
    Description = "Teleporta para as coordenadas da Ilha 1",
    Callback = teleportToIsland1
})

-- Function to teleport to Airport
local function teleportToAirport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 5, 31)
end

AddButton(Main, {
    Name = "مطار",
    Description = "Teleporta para as coordenadas do Aeroporto",
    Callback = teleportToAirport
})

-- Function to teleport to Hotel Center
local function teleportToHotelCenter()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182, 4, 150)
end

AddButton(Main, {
    Name = "البيوت",
    Description = "Teleporta para as coordenadas do Centro dos Hotéis",
    Callback = teleportToHotelCenter
})

-- Function to teleport to Lower Houses
local function teleportToLowerHouses()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63, 35, 410)
end

AddButton(Main, {
    Name = " نص الشارع",
    Description = "Teleporta para as coordenadas das Casas Inferiores",
    Callback = teleportToLowerHouses
})

-- Function to teleport to Mountain 1
local function teleportToMountain1()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-670, 251, 765)
end

AddButton(Main, {
    Name = "فوق الجبل",
    Description = "Teleporta para as coordenadas da Montanha 1",
    Callback = teleportToMountain1
})

-- Function to teleport to On Top of School
local function teleportToOnTopOfSchool()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370, 50, 173)
end

AddButton(Main, {
    Name = "فوق المدرسة",
    Description = "Teleporta para as coordenadas Em Cima da Escola",
    Callback = teleportToOnTopOfSchool
})






local function RESETBLOCK()
local args = {
    [1] = "CharacterChange",
    [2] = {
        [1] = 0,
        [2] = 0,
        [3] = 0,
        [4] = 0,
        [5] = 0,
        [6] = 0
    },
    [3] = "AllBlocky"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Avata1rOrigina1l"):FireServer(unpack(args))
end




local function APPLY_SKINTONE(Player)
    local p = Player
    local c = p.Character or p.CharacterAdded:Wait()
    local h = c:FindFirstChildOfClass("Humanoid")

    if not h then
        warn("Humanoid not found!")
        return
    end

    local bodyColors = c:FindFirstChildOfClass("BodyColors")

    if not bodyColors then
        warn("BodyColors not found!")
        return
    end

    -- Get skin tone (use HeadColor or any other body part color)
    local skinTone = bodyColors.HeadColor

    -- Convert BrickColor to readable string
    local skinToneName = skinTone.Name

    -- Fire the RemoteEvent with the detected skin tone
    local args = {
        [1] = "skintone",
        [2] = skinToneName
    }

    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Updat1eAvata1r"):FireServer(unpack(args))
end

local function Wear(id)
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer("wear", id) end


local function COPYCLOTHING(Player)
    local p = Player
    local c = p.Character or p.CharacterAdded:Wait()
    local h = c:FindFirstChildOfClass("Humanoid")

    if not h then
        warn("Humanoid not found!")
        return
    end

    local d = h:GetAppliedDescription()
    local cIds = { d.Shirt, d.Pants, d.GraphicTShirt }
    local done = false

    task.spawn(function()
        for _, id in ipairs(cIds) do
            if id ~= 0 then
                task.wait(1)
                Wear(id)
            end
        end
        done = true
    end)

    repeat task.wait() until done -- Ensure the function waits until completion
end

local function COPYBODYPART(Player)
    local p = Player
    local c = p.Character or p.CharacterAdded:Wait()
    local h = c:FindFirstChildOfClass("Humanoid")

    if not h then
        warn("Humanoid not found!")
        return
    end

    local d = h:GetAppliedDescription()
    
    local bIds = {
        d.Torso,
        d.RightArm,
        d.LeftArm,
        d.RightLeg,
        d.LeftLeg,
        d.Head
    }

    local done = false
    task.spawn(function()
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Avata1rOrigina1l"):FireServer(
            "CharacterChange",
            bIds,
            "GAZE"
        )
        done = true
    end)

    repeat task.wait() until done
end

local function COPYACCESSORIES(Player)
    local p = Player
    local c = p.Character or p.CharacterAdded:Wait()
    local h = c:FindFirstChildOfClass("Humanoid")

    if not h then
        warn("Humanoid not found!")
        return
    end

    local d = h:GetAppliedDescription()
    local aIds = {}

    for _, aList in ipairs({
        d.HatAccessory,
        d.HairAccessory,
        d.FaceAccessory,
        d.NeckAccessory,
        d.ShouldersAccessory,
        d.FrontAccessory,
        d.BackAccessory,
        d.WaistAccessory
    }) do
        for id in string.gmatch(aList, "%d+") do
            table.insert(aIds, tonumber(id))
        end
    end

    local done = false
    task.spawn(function()
        for _, id in ipairs(aIds) do
            task.wait(1)
            Wear(id)
        end
        done = true
    end)

    repeat task.wait() until done
end



local function START(displayName)
    local player = nil
    displayName = string.lower(displayName)
    for _, plr in ipairs(game.Players:GetPlayers()) do
        local playerNameLower = string.lower(plr.Name)
        local playerDisplayNameLower = string.lower(plr.DisplayName)
        if string.find(playerNameLower, displayName, 1, true) or string.find(playerDisplayNameLower, displayName, 1, true) then
            player = plr
            break
        end
    end

    if player then
   
    COPYACCESSORIES(game.Players.LocalPlayer)
    COPYACCESSORIES(player)
    wait(1)
    RESETBLOCK()
    wait(3)
    COPYBODYPART(player)
    COPYCLOTHING(player)
    APPLY_SKINTONE(player)
    
    
    
end
end


-- put your mainframe into the screengui that I have made (frame.Parent = gui) 

local GazerMain = Instance.new("Frame")
GazerMain.Size = UDim2.new(0.4, 0, 0.4, 0)
GazerMain.Position = UDim2.new(0.5, -GazerMain.Size.X.Offset / 2, 0.5, -GazerMain.Size.Y.Offset / 2)
GazerMain.BackgroundColor3 = Color3.fromRGB(238, 130, 238)
GazerMain.BackgroundTransparency = 0.2
GazerMain.BorderSizePixel = 0
GazerMain.Active = true
GazerMain.Draggable = true
GazerMain.Parent = gui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = GazerMain

local GazerTitle = Instance.new("TextLabel")
GazerTitle.Size = UDim2.new(1, 0, 0.2, 0)
GazerTitle.Position = UDim2.new(0, 0, 0, 0)
GazerTitle.BackgroundColor3 = Color3.fromRGB(238, 130, 238)
GazerTitle.BackgroundTransparency = 0.2
GazerTitle.BorderSizePixel = 0
GazerTitle.Text = "Developer.Jeon"
GazerTitle.TextScaled = true
GazerTitle.Font = Enum.Font.GothamBold
GazerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
GazerTitle.Parent = GazerMain

local UICornerTitle = Instance.new("UICorner")
UICornerTitle.CornerRadius = UDim.new(0.1, 0)
UICornerTitle.Parent = GazerTitle

local EnterName = Instance.new("TextBox")
EnterName.Size = UDim2.new(0.85, 0, 0.2, 0)
EnterName.Position = UDim2.new(0.075, 0, 0.3, 0)
EnterName.BackgroundColor3 = Color3.fromRGB(238, 130, 238)
EnterName.Text = ""
EnterName.BackgroundTransparency = 0.2
EnterName.BorderSizePixel = 0
EnterName.PlaceholderText = "ادخـل اول ثـلاث احـرف مـن اسـم الأعـب "
EnterName.PlaceholderColor3 = Color3.fromRGB(255,255,255)
EnterName.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterName.Font = Enum.Font.Gotham
EnterName.TextScaled = true
EnterName.ClearTextOnFocus = true
EnterName.Parent = GazerMain

local UICornerInput = Instance.new("UICorner")
UICornerInput.CornerRadius = UDim.new(0.1, 0)
UICornerInput.Parent = EnterName

local INFO = Instance.new("TextButton")
INFO.Size = UDim2.new(0.4, 0, 0.2, 0)
INFO.Position = UDim2.new(0.3, 0, 0.7, 0)
INFO.BackgroundColor3 = Color3.fromRGB(238, 130, 238)
INFO.BackgroundTransparency = 0.2
INFO.BorderSizePixel = 0
INFO.Text = "نـسـخ"
INFO.TextScaled = true

INFO.Font = Enum.Font.GothamBold
INFO.TextColor3 = Color3.fromRGB(255, 255, 255)
INFO.Parent = GazerMain

local UICornerButton = Instance.new("UICorner")
UICornerButton.CornerRadius = UDim.new(0.1, 0)
UICornerButton.Parent = INFO

INFO.MouseButton1Click:Connect(function()
    local displayName = EnterName.Text
    
    
    INFO.Size = UDim2.new(0, 0, 0, 0)
    
    START(displayName)
    wait(3)
    INFO.Size = UDim2.new(0.4, 0, 0.2, 0)
    
    
    
end)





local Main = MakeTab({Name = "الرحمه قويهه☠️☠️"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function fetchPlayerNames()
    local namesList = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then 
            table.insert(namesList, plr.Name)
        end
    end
    return namesList
end

AddDropdown(Main, {
    Name = "اخـتـار الـلاعـب",
    Default = "...",
    Options = fetchPlayerNames(),
    Callback = function(Value)
        if Value ~= "" then
            getgenv().selectedPlayer = Value
        end
    end
})

local function createBangToggle(name, yOffset, faceBang)
    local bangActive = false
    local connection
    local togglePosition = false

    AddToggle(Main, {
        Name = name,
        Default = false,
        Callback = function(Value)
            bangActive = Value

            local player = Players.LocalPlayer
            local char = player.Character
            if not char then return end

            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if not humanoid then return end

            if Value then
                humanoid.PlatformStand = true

                if connection then connection:Disconnect() end

                connection = RunService.Heartbeat:Connect(function()
                    if bangActive and getgenv().selectedPlayer then
                        local targetPlayer = Players:FindFirstChild(getgenv().selectedPlayer)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character.PrimaryPart then
                            local targetHead = targetPlayer.Character:FindFirstChild("Head")
                            if targetHead and char.PrimaryPart then
                                local offset = togglePosition and 1 or 4
                                if faceBang then
                                    char:SetPrimaryPartCFrame(targetHead.CFrame * CFrame.new(0, 1, -offset) * CFrame.Angles(0, math.rad(180), 0))
                                else
                                    char:SetPrimaryPartCFrame(targetHead.CFrame * CFrame.new(0, yOffset, offset) * CFrame.Angles(0, 0, 0))
                                end
                                togglePosition = not togglePosition
                                wait(1)
                            end
                        end
                    end
                end)
            else
                humanoid.PlatformStand = false
                if connection then
                    connection:Disconnect()
                    connection = nil
                end
            end
        end    
    })
end

createBangToggle("بـانـق 1", -1, false)
createBangToggle("بـانـق 2", -1.5, false)
createBangToggle("بـانـق الـوجـه 1", 1, true)
createBangToggle("بـانـق الـوجـه 2", 1, true)
















AddSection(mbr7___, {"الاسـم"})


AddTextBox(mbr7___, {
Name = "ضـع اسـم",
Default = "",
PlaceholderText = "",
ClearText = true,
Callback = function(value)
local args = {[1] = "RolePlayName", [2] = value};
        game:GetService("ReplicatedStorage").RE:FindFirstChild(
            "1RPNam1eTex1t"):FireServer(unpack(args));
    end
})

-- Variáveis para rastrear os estados dos toggles
local isNameActive = false
local isBioActive = false

-- Toggle para ativar/desativar o RGB Name
Toggle = AddToggle(mbr7___, {
Name = "تـلـويـن الاسم",
Default = false,
Callback = function(value)
isNameActive = value -- Define o estado baseado no toggle
        if isNameActive then
            print("RGB Name ativado")
        else
            print("RGB Name desativado")
        end
    end    
})

AddSection(mbr7___, {"الـبـايـو"})

AddTextBox(mbr7___, {
Name = "ضـع الـبـايـو",
Default = "",
PlaceholderText = "",
ClearText = true,
Callback = function(value)
     local args = {[1] = "RolePlayBio", [2] = value};
        game:GetService("ReplicatedStorage").RE:FindFirstChild(
            "1RPNam1eTex1t"):FireServer(unpack(args));
    end
})

-- Toggle para ativar/desativar o RGB BIO
Toggle = AddToggle(mbr7___, {
Name = "تـلـويـن الـبـايو",
Default = false,
Callback = function(value)
isBioActive = value -- Define o estado baseado no toggle
        if isBioActive then
            print("RGB BIO ativado")
        else
            print("RGB BIO desativado")
        end
    end    
})

-- Thread separada para o RGB Name
spawn(function()
    local vibrantColors = {
        Color3.fromRGB(255, 0, 0),   -- Vermelho
        Color3.fromRGB(0, 255, 0),   -- Verde
        Color3.fromRGB(0, 0, 255),   -- Azul
        Color3.fromRGB(255, 255, 0), -- Amarelo
        Color3.fromRGB(255, 0, 255), -- Magenta
        Color3.fromRGB(0, 255, 255), -- Ciano
        Color3.fromRGB(255, 165, 0), -- Laranja
        Color3.fromRGB(128, 0, 128), -- Roxo
        Color3.fromRGB(255, 20, 147) -- Rosa choque
    }

    while true do
        if isNameActive then
            local randomColor = vibrantColors[math.random(#vibrantColors)]
            local args = {
                [1] = "PickingRPNameColor",
                [2] = randomColor
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r"):FireServer(unpack(args))
        end
        wait(0.7) -- Ajuste o tempo de espera conforme necessário
    end
end)

-- Thread separada para o RGB BIO
spawn(function()
    local vibrantColors = {
        Color3.fromRGB(255, 0, 0),   -- Vermelho
        Color3.fromRGB(0, 255, 0),   -- Verde
        Color3.fromRGB(0, 0, 255),   -- Azul
        Color3.fromRGB(255, 255, 0), -- Amarelo
        Color3.fromRGB(255, 0, 255), -- Magenta
        Color3.fromRGB(0, 255, 255), -- Ciano
        Color3.fromRGB(255, 165, 0), -- Laranja
        Color3.fromRGB(128, 0, 128), -- Roxo
        Color3.fromRGB(255, 20, 147) -- Rosa choque
    }

    while true do
        if isBioActive then
            local randomColor = vibrantColors[math.random(#vibrantColors)]
            local args = {
                [1] = "PickingRPBioColor",
                [2] = randomColor
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eColo1r"):FireServer(unpack(args))
        end
        wait(0.7) -- Ajuste o tempo de espera conforme necessário
    end
end)


AddSection(mbr7___, {"-الاسـمـاء الـجـاهـزة-"})


AddButton(mbr7___, {
  Name = "نور",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "نٌـّوٌَر"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "منه",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "مـِنـهه"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "لارا",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "لآرآ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "روز",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "رِوزِ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "رزان",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "رِزٰآنَ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})



AddButton(mbr7___, {
  Name = "فضل",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "فَــضُـل"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "عمر",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "عـمر"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "ريتاج",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "رِيـتـّاجُ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "ريحانه",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "ريـحـِاُنـه"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "بطيخه",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "بـُطـيـخـه"
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})


AddButton(mbr7___, {
  Name = "امنه",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "امـنـَهه"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "زينب",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "زّيـِنب"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "رجب",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "رجــب"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "جكليته",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "جـكـلـيـتهه"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})

AddButton(mbr7___, {
  Name = "احمد",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "احــمـد"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})


AddButton(mbr7___, {
  Name = "ايه",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "أيهَ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(mbr7___, {
  Name = "زهراء",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "زهـرَاّءٰ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})


AddButton(mbr7___, {
  Name = "ايات",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "ايُـّاًّتَ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(mbr7___, {
  Name = "شهد",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "شُهّدٍ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})


AddButton(mbr7___, {
  Name = "علي",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "عّـلُـي"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})


AddButton(mbr7___, {
  Name = "مجتبى",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "مجتـَبىً"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(mbr7___, {
  Name = "ياسين",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "ياسَيـَنّ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(mbr7___, {
  Name = "اثيرَ",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "اثّيـرَ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(mbr7___, {
  Name = "عبسي",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "عبَـّسيّ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})
AddButton(mbr7___, {
  Name = "عبدالله",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "عىٕدَالُلهّ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})


AddButton(mbr7___, {
  Name = "محمد",
  Callback = function()
    local args = {
    [1] = "RolePlayName",
    [2] = "مَـٓحمًدٓ"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
  end
})





local mbr95___ = MakeTab({Name ="اوامـر الـلاعـب"})

AddTextBox(mbr95___, {
  Name = "الـسـرعـة",
  Default = "",
  PlaceholderText = "ادخـل الـرقـم",
  ClearText = true,
  Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value     
 end
})
AddTextBox(mbr95___, {
  Name = "الـقـفـز",
  Default = "",
  PlaceholderText = "ادخـل الـرقـم",
  ClearText = true,
  Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value    
  end
})
AddTextBox(mbr95___, {
  Name = "الـشـاشـة Fov",
  Default = "",
  PlaceholderText = "ادخـل الـرقـم",
  ClearText = true,
  Callback = function(value)
local FovNumber = value
local Camera = workspace.CurrentCamera
Camera.FieldOfView = FovNumber  
  end
})
AddTextBox(mbr95___, {
  Name = "الـدوران spin",
  Default = "",
  PlaceholderText = "ادخـل الـرقـم",
  ClearText = true,
  Callback = function(Value)
    getgenv().Spinspeed = Value

local Spin = Instance.new'BodyAngularVelocity'
Spin.Parent = game:GetService'Players'.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'
Spin.MaxTorque = Vector3.new(0, math.huge, 100)
wait(0.1)
Spin.AngularVelocity = Vector3.new(100,Spinspeed,0)
  end
})

function MakeNotifi(notification)
    game.StarterGui:SetCore("SendNotification", {
        Title = notification.Title;
        Text = notification.Text;
        Duration = notification.Time;
    })
end

-- Variáveis e funções para a visualização dos jogadores
local viewEnabled = false
local selectedViewPlayer = nil
local characterAddedConnection = nil

local function toggleView(enabled)
    if enabled then
        if selectedViewPlayer then
            local player = selectedViewPlayer
            if player then
                game.Workspace.CurrentCamera.CameraSubject = player.Character
                if characterAddedConnection then
                    characterAddedConnection:Disconnect()
                end
                characterAddedConnection = player.CharacterAdded:Connect(function(character)
                    game.Workspace.CurrentCamera.CameraSubject = character
                end)
                MakeNotifi({
                    Title = "Visualizando " .. player.Name,
                    Text = "Você está visualizando o jogador: " .. player.Name,
                    Time = 6
                })
            else
                print("Jogador não encontrado.")
                viewEnabled = false
            end
        else
            print("Nenhum jogador selecionado para a visualização.")
            viewEnabled = false
        end
    else
        if characterAddedConnection then
            characterAddedConnection:Disconnect()
            characterAddedConnection = nil
        end
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    end
end

local value = "" -- Variável para armazenar o nome digitado

local function findPlayerByPartialNameOrNickname(partialName)
    value = partialName -- Atualiza a variável com o nome digitado completo
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower():find(partialName:lower(), 1, true) or (player.DisplayName and player.DisplayName:lower():find(partialName:lower(), 1, true)) then
            return player
        end
    end
    return nil
end


-- Conectando eventos de jogador removido
game.Players.PlayerRemoving:Connect(function(player)
    if selectedViewPlayer == player then
        selectedViewPlayer = nil
        if viewEnabled then
            toggleView(false)
            MakeNotifi({
                Title = "Jogador Saiu",
                Text = player.Name .. " saiu do jogo. Visua

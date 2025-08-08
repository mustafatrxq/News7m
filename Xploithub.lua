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

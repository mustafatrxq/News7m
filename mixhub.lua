MakeWindow({
    Hub = {
    Title = "Mixhup",
    Animation = "مرحباً"
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

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lx8Lx/Redzhard/refs/heads/main/Hardredz.txt"))()

local Window = redzlib:MakeWindow({
  Title = "Test Window",
  SubTitle = "Testing Tabs",
  SaveFolder = "TestFolder"
})

local Tab1 = Window:MakeTab({
  Name = "Tab 1",
  Icon = "rbxassetid://88122625843089",
  PremiumOnly = false
})

local Tab2 = Window:MakeTab({
  Name = "Tab 2",
  Icon = "rbxassetid://88122625843089",
  PremiumOnly = false
})

Tab1:AddButton({
  Name = "Button 1",
  Callback = function()
    print("Button 1 pressed")
  end
})

Tab2:AddButton({
  Name = "Button 2",
  Callback = function()
    print("Button 2 pressed")
  end
})

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lx8Lx/Redzhard/refs/heads/main/Hardredz.txt"))()

local Window = redzlib:MakeWindow({
  Title = "Test Window",
  SubTitle = "Testing Tabs",
  SaveFolder = "TestFolder"
})

local Tab1 = Window:MakeTab({
  Name = "التبويب 1",
  Icon = "rbxassetid://88122625843089",
  PremiumOnly = false
})

local Tab2 = Window:MakeTab({
  Name = "التبويب 2",
  Icon = "rbxassetid://88122625843089",
  PremiumOnly = false
})

Tab1:AddButton({
  Name = "زر 1",
  Callback = function()
    print("تم الضغط على زر 1")
  end
})

Tab2:AddButton({
  Name = "زر 2",
  Callback = function()
    print("تم الضغط على زر 2")
  end
})

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
    Title = "Xploit Hub ‖ Brookhaven || V0.1",
    SubTitle = "ساموراي - عركـ",
    SaveFolder = "Xploithub.lua"
})

redzlib:SetTheme("Dark")

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://107399679611214", BackgroundColor3 = Color3.fromRGB(80, 80, 80), BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 8) },
})

local Tab1 = Window:MakeTab({"Main Tab", "rbxassetid://107399679611214"})
Tab1.Button.BackgroundColor3 = Color3.fromRGB(90, 90, 90)

Tab1:AddDiscordInvite({
    Name = "Name Hub",
    Description = "Join server",
    Logo = "rbxassetid://107399679611214",
    Invite = "Link discord invite",
})

local Section = Tab1:AddSection({"Main Section"})

local Paragraph = Tab1:AddParagraph({"حقوق", "تم التطوير بواسطة المطور ساموراي - المطور عركـ"})

local Dialog = Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
        {"Confirm", function() end},
        {"Maybe", function() end},
        {"Cancel", function() end}
    }
})

Tab1:AddButton({
    Name = "Print Message",
    Callback = function()
        print("Hello World!")
    end,
    BackgroundColor3 = Color3.fromRGB(100, 100, 100)
})

local Toggle1 = Tab1:AddToggle({
    Name = "Toggle Example",
    Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
    Default = false 
})
Toggle1:Callback(function(Value) end)

Tab1:AddToggle({
    Name = "Toggle 2",
    Default = false,
    Callback = function(v) end
})

Tab1:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Increase = 1,
    Default = 16,
    Callback = function(Value) end
})

local Dropdown = Tab1:AddDropdown({
    Name = "Players List",
    Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
    Options = {"one", "two", "three"},
    Default = "two",
    Flag = "dropdown test",
    Callback = function(Value) end
})

Tab1:AddTextBox({
    Name = "Name item",
    Description = "1 Item on 1 Server", 
    PlaceholderText = "item only",
    Callback = function(Value) end
})

Window:SelectTab(Tab1)

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
    Title = "Xploit Hub ‖ Brookhaven || V0.1",
    SubTitle = "ساموراي - عركـ",
    SaveFolder = "Xploithub.lua"
})

redzlib:SetTheme("Dark")

local Tab1 = Window:MakeTab({"Main Tab", "rbxassetid://107399679611214"})

Tab1:AddParagraph({
    "حقوق",
    "تم التطوير بواسطة المطور ساموراي - المطور عركـ"
})

Window:SelectTab(Tab1)

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

redzlib:SetTheme("Dark")

local Window = redzlib:MakeWindow({
    Title = "redz Hub : Blox Fruits",
    SubTitle = "by redz9999",
    SaveFolder = "testando | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) }
})

local Tab1 = Window:MakeTab({"ابدأ", "Start"})
Window:SelectTab(Tab1)

-- إضافة فقرة ترحيبية أو نص بسيط بدون أزرار أو عناصر تحكم
Tab1:AddParagraph({
    "مرحباً بك في redz Hub",
    "هنا ستجد كل ما تحتاجه من سكربتات وأدوات للعبة Blox Fruits.\nتابعنا دائماً لأحدث التحديثات."
})

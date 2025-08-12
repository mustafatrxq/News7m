local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
    Title = "Xploit Hub ‖ Brookhaven || V0.1",
    SubTitle = "ساموراي - عركـ",
    SaveFolder = "Xploithub"  -- لاحظت آخر مرة وضعت .lua هنا، حذفتها عشان تكون مجلد وليس ملف
})

redzlib:SetTheme("Dark")

local Tab1 = Window:MakeTab({"Main Tab", ""}) -- خلت الصورة فاضية مؤقتًا

Tab1:AddParagraph({"حقوق", "تم التطوير بواسطة المطور ساموراي - المطور عركـ"})

Window:SelectTab(Tab1)

print("واجهة redzlib تم تحميلها بنجاح")

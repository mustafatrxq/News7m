local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- نبني الواجهة
local gui = Instance.new("ScreenGui")
gui.Name = "CopySkinGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 40)
textBox.Position = UDim2.new(0.5, -100, 0, 100)
textBox.PlaceholderText = "اكتب اسم اللاعب"
textBox.Parent = gui

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0, 200, 0, 40)
copyButton.Position = UDim2.new(0.5, -100, 0, 150)
copyButton.Text = "نسخ السكن"
copyButton.Parent = gui

local resetButton = Instance.new("TextButton")
resetButton.Size = UDim2.new(0, 200, 0, 40)
resetButton.Position = UDim2.new(0.5, -100, 0, 200)
resetButton.Text = "رجوع للسكن الأصلي"
resetButton.Parent = gui

-- نخزن الشكل الأصلي (الوصف + الإكسسوارات)
local originalDescription = nil
local originalAccessories = {}

local function saveOriginal(char)
	local humanoid = char:WaitForChild("Humanoid")
	originalDescription = humanoid:GetAppliedDescription()
	originalAccessories = {}
	for _, acc in ipairs(char:GetChildren()) do
		if acc:IsA("Accessory") then
			table.insert(originalAccessories, acc:Clone())
		end
	end
end

player.CharacterAdded:Connect(saveOriginal)
if player.Character then
	saveOriginal(player.Character)
end

-- يبحث بأسماء اللاعبين
local function findPlayer(name)
	name = string.lower(name)
	for _, p in ipairs(Players:GetPlayers()) do
		if string.sub(string.lower(p.Name), 1, #name) == name then
			return p
		end
	end
end

-- ينسخ مظهر لاعب ثاني
local function copyAppearance(fromPlayer)
	if not (fromPlayer and fromPlayer.Character and player.Character) then return end

	local fromChar = fromPlayer.Character
	local toChar = player.Character

	local fromHumanoid = fromChar:FindFirstChildOfClass("Humanoid")
	local toHumanoid = toChar:FindFirstChildOfClass("Humanoid")

	if fromHumanoid and toHumanoid then
		local desc = fromHumanoid:GetAppliedDescription()
		toHumanoid:ApplyDescription(desc)

		-- امسح الاكسسوارات القديمة
		for _, acc in ipairs(toChar:GetChildren()) do
			if acc:IsA("Accessory") then
				acc:Destroy()
			end
		end

		-- انسخ اكسسوارات اللاعب الثاني
		for _, acc in ipairs(fromChar:GetChildren()) do
			if acc:IsA("Accessory") then
				acc:Clone().Parent = toChar
			end
		end
	end
end

-- يرجع للسكن الأصلي
local function resetAppearance()
	if not (player.Character and originalDescription) then return end

	local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:ApplyDescription(originalDescription)

		-- مسح الاكسسوارات الحالية
		for _, acc in ipairs(player.Character:GetChildren()) do
			if acc:IsA("Accessory") then
				acc:Destroy()
			end
		end

		-- رجّع الاكسسوارات الأصلية
		for _, acc in ipairs(originalAccessories) do
			acc:Clone().Parent = player.Character
		end
	end
end

-- الأزرار
copyButton.MouseButton1Click:Connect(function()
	local input = textBox.Text
	local target = findPlayer(input)
	if target then
		copyAppearance(target)
	else
		warn("ماكو لاعب بهالاسم")
	end
end)

resetButton.MouseButton1Click:Connect(function()
	resetAppearance()
end)

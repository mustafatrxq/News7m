local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- نبني الواجهة برمجياً
local gui = Instance.new("ScreenGui")
gui.Name = "CopySkinGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- TextBox
local textBox = Instance.new("TextBox")
textBox.Name = "TextBox"
textBox.Size = UDim2.new(0, 200, 0, 40)
textBox.Position = UDim2.new(0.5, -100, 0, 100)
textBox.PlaceholderText = "اكتب اسم اللاعب هنا"
textBox.Text = ""
textBox.Parent = gui

-- Copy Button
local copyButton = Instance.new("TextButton")
copyButton.Name = "CopyButton"
copyButton.Size = UDim2.new(0, 200, 0, 40)
copyButton.Position = UDim2.new(0.5, -100, 0, 150)
copyButton.Text = "نسخ السكن"
copyButton.Parent = gui

-- Reset Button
local resetButton = Instance.new("TextButton")
resetButton.Name = "ResetButton"
resetButton.Size = UDim2.new(0, 200, 0, 40)
resetButton.Position = UDim2.new(0.5, -100, 0, 200)
resetButton.Text = "رجوع للسكن الأصلي"
resetButton.Parent = gui

-- نخزن المظهر الأصلي
local originalDescription = nil
player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	originalDescription = humanoid:GetAppliedDescription()
end)

-- بحث عن لاعبين يبدأ اسمهم بهالحروف
local function findMatchingPlayers(partial)
	partial = string.lower(partial)
	local matches = {}
	for _, p in ipairs(Players:GetPlayers()) do
		if string.sub(string.lower(p.Name), 1, #partial) == partial then
			table.insert(matches, p)
		end
	end
	return matches
end

-- نسخ مظهر لاعب
local function copyAppearance(fromPlayer)
	if fromPlayer.Character and player.Character then
		local fromHumanoid = fromPlayer.Character:FindFirstChildOfClass("Humanoid")
		local toHumanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if fromHumanoid and toHumanoid then
			local desc = fromHumanoid:GetAppliedDescription()
			toHumanoid:ApplyDescription(desc)
		end
	end
end

-- زر "نسخ السكن"
copyButton.MouseButton1Click:Connect(function()
	local input = textBox.Text
	if input ~= "" then
		local matches = findMatchingPlayers(input)
		if #matches == 1 then
			copyAppearance(matches[1])
			textBox.Text = "" -- يفرغ الحقل بعد النسخ
		elseif #matches > 1 then
			warn("أكو أكثر من لاعب بهالحروف، زيد حروف")
		else
			warn("ما لكيت لاعب بهالحروف")
		end
	end
end)

-- زر "رجوع للسكن الأصلي"
resetButton.MouseButton1Click:Connect(function()
	if originalDescription and player.Character then
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:ApplyDescription(originalDescription)
		end
	end
end)

-- إكمال تلقائي للاسم
textBox:GetPropertyChangedSignal("Text"):Connect(function()
	local input = textBox.Text
	if input ~= "" then
		local matches = findMatchingPlayers(input)
		if #matches == 1 then
			textBox.Text = matches[1].Name
			textBox.CursorPosition = #input + 1
		end
	end
end)

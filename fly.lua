local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = script.Parent
local textBox = gui:WaitForChild("TextBox")
local button = gui:WaitForChild("TextButton")

-- دالة تبحث بأسماء اللاعبين
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

-- دالة نسخ المظهر
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
button.MouseButton1Click:Connect(function()
	local input = textBox.Text
	if input and input ~= "" then
		local matches = findMatchingPlayers(input)
		if #matches == 1 then
			copyAppearance(matches[1])
		elseif #matches > 1 then
			warn("أكو أكثر من لاعب بهالحروف، زيد حروف للاسم")
		else
			warn("ما لكيت لاعب بهالحروف")
		end
	end
end)

-- يكمل الاسم تلقائياً إذا أكو لاعب واحد فقط يطابق
textBox:GetPropertyChangedSignal("Text"):Connect(function()
	local input = textBox.Text
	if input ~= "" then
		local matches = findMatchingPlayers(input)
		if #matches == 1 then
			textBox.Text = matches[1].Name
			textBox.CursorPosition = #input + 1 -- يبقي المؤشر ورا الحروف الأصلية
		end
	end
end)

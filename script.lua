local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local Window = OrionLib:MakeWindow({Name = "Kingdom World", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionConfig"})

local Tab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- السرعة الطبيعية - بدون تعديل
humanoid.WalkSpeed = 16

-- عند إعادة تحميل الشخصية
player.CharacterAdded:Connect(function(newCharacter)
	local newHumanoid = newCharacter:WaitForChild("Humanoid")
	newHumanoid.WalkSpeed = 16 -- احافظ على السرعة الطبيعية
end)

Tab:AddLabel("🎮 Kingdom World - Normal Speed")
Tab:AddButton({
	Name = "Normal Walk Speed (16)",
	Callback = function()
		if character:FindFirstChild("Humanoid") then
			character.Humanoid.WalkSpeed = 16
		end
		OrionLib:MakeNotification({
			Name = "✅ Success",
			Content = "Walk speed set to normal (16)",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

Tab:AddButton({
	Name = "Reload Script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/TRFY309/Kingdom-World/main/script.lua"))()
	end
})

OrionLib:Init()
print("✅ Kingdom World Script Loaded with OrionLib - Normal Speed")

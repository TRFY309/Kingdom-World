-- Kingdom World Script - No Speed Modification
-- السكربت بدون تعديل السرعة - يمشي طبيعي تماماً

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- تأكد أن السرعة طبيعية بدون تعديل
humanoid.WalkSpeed = 16  -- السرعة الافتراضية الطبيعية

-- عند إعادة تحميل الشخصية
player.CharacterAdded:Connect(function(newCharacter)
    local newHumanoid = newCharacter:WaitForChild("Humanoid")
    newHumanoid.WalkSpeed = 16  -- احافظ على السرعة الطبيعية
end)

print("✅ Kingdom World Script Loaded - Normal Speed")

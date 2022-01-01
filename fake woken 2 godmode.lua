game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Script Ran",
	Text = "It is not my fault if you get banned.",
	Duration = 5
})

local oldPos

while true do
	wait(0)
	if game.Players.LocalPlayer.Character.Humanoid.Health <= 10 then
		oldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("ReplicatedStorage").Events.Spawn:FireServer()
		workspace:WaitForChild(game.Players.LocalPlayer.Name)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
	end
end

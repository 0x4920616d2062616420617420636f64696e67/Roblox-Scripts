-- Gui to Lua
-- Version: 3.2

-- Instances:

local WorldsWorstGodmode = Instance.new("ScreenGui")
local Note = Instance.new("TextButton")

--Properties:

WorldsWorstGodmode.Name = "WorldsWorstGodmode"
WorldsWorstGodmode.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
WorldsWorstGodmode.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
WorldsWorstGodmode.DisplayOrder = 999999999
WorldsWorstGodmode.ResetOnSpawn = false

Note.Name = "Note"
Note.Parent = WorldsWorstGodmode
Note.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Note.BorderColor3 = Color3.fromRGB(252, 255, 46)
Note.BorderSizePixel = 5
Note.Position = UDim2.new(0.29103449, 0, 0.065992862, 0)
Note.Size = UDim2.new(0.384827673, 0, 0.100000001, 0)
Note.AutoButtonColor = false
Note.Font = Enum.Font.SourceSans
Note.Text = "Warning If you get banned its not my fault. Click here to run script."
Note.TextColor3 = Color3.fromRGB(252, 255, 46)
Note.TextScaled = true
Note.TextSize = 14.000
Note.TextWrapped = true

-- Scripts:

local function JXJZ_fake_script() -- WorldsWorstGodmode.Client 
	local script = Instance.new('LocalScript', WorldsWorstGodmode)

	script.Parent.Note.MouseButton1Click:Connect(function()
		script.Parent.Lol:Play()
		script.Parent.Lol.Ended:Wait()
	
		spawn(function()
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
		end)
		
		script.Parent:Destroy()
	end)
end
coroutine.wrap(JXJZ_fake_script)()

-- made by copetrine
-- was some gui i threw together, nothing much.

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local AutoFarm = Instance.new("TextButton")
local PrintCredits = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Frame.Position = UDim2.new(0.155208334, 0, 0.317401916, 0)
Frame.Size = UDim2.new(0, 303, 0, 259)
Frame.Draggable = true
Frame.Visible = true
Frame.Active = true

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 303, 0, 50)
Title.Font = Enum.Font.TitilliumWeb
Title.Text = "NDS Gui V1.0"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm.Position = UDim2.new(0.168316826, 0, 0.243243247, 0)
AutoFarm.Size = UDim2.new(0, 200, 0, 50)
AutoFarm.Font = Enum.Font.Oswald
AutoFarm.Text = "Autofarm"
AutoFarm.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoFarm.TextScaled = true
AutoFarm.TextSize = 14.000
AutoFarm.TextWrapped = true
AutoFarm.MouseButton1Down:connect(function()
	while true do
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265.430115, 179.497955, 340.779327, -0.936744332, -3.20583737e-08, 0.350014418, -5.13043616e-08, 1, -4.57143905e-08, -0.350014418, -6.07799606e-08, -0.936744332)
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-149.869171, 46.9979935, 7.83110905, 0.0143192178, 1.40906531e-08, 0.99989748, -3.43927198e-08, 1, -1.35995704e-08, -0.99989748, -3.4194457e-08, 0.0143192178)
	end	
end)

PrintCredits.Name = "PrintCredits"
PrintCredits.Parent = Frame
PrintCredits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PrintCredits.Position = UDim2.new(0.168316826, 0, 0.67181468, 0)
PrintCredits.Size = UDim2.new(0, 200, 0, 50)
PrintCredits.Font = Enum.Font.SourceSans
PrintCredits.Text = "Credits (check console)"
PrintCredits.TextColor3 = Color3.fromRGB(0, 0, 0)
PrintCredits.TextScaled = true
PrintCredits.TextSize = 14.000
PrintCredits.TextWrapped = true
PrintCredits.MouseButton1Down:connect(function()
	print("script made by cOpEtriNe, check github for more updates!")
end)

-- nds gui v1.1

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local AutoFarm = Instance.new("TextButton")
local PrintCredits = Instance.new("TextButton")
local AntiAFK = Instance.new("TextButton")

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
Title.Font = Enum.Font.Oswald
Title.Text = "NDS Gui V1.1"
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
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-149.869171, 46.9979935, 7.83110905, 0.0143192178, 1.40906531e-08, 0.99989748, -3.43927198e-08, 1, -1.35995704e-08, -0.99989748, -3.4194457e-08, 0.0143192178)
	end	
end)

PrintCredits.Name = "PrintCredits"
PrintCredits.Parent = Frame
PrintCredits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PrintCredits.Position = UDim2.new(0, 0, 0.903474867, 0)
PrintCredits.Size = UDim2.new(0, 123, 0, 25)
PrintCredits.Font = Enum.Font.Oswald
PrintCredits.Text = "Credits (check console)"
PrintCredits.TextColor3 = Color3.fromRGB(0, 0, 0)
PrintCredits.TextScaled = true
PrintCredits.TextSize = 14.000
PrintCredits.TextWrapped = true
PrintCredits.MouseButton1Down:connect(function()
	print("\n natural disaster script made by cOpEtriNe, Verison V1.1 ")
end)

AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = Frame
AntiAFK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiAFK.Position = UDim2.new(0.168316826, 0, 0.555984557, 0)
AntiAFK.Size = UDim2.new(0, 200, 0, 50)
AntiAFK.Font = Enum.Font.Oswald
AntiAFK.Text = "Anti AFK"
AntiAFK.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiAFK.TextScaled = true
AntiAFK.TextSize = 14.000
AntiAFK.TextWrapped = true
AntiAFK.MouseButton1Down:connect(function()
	local VirtualUser=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)

	warn("Anti-Afk has Loaded")
end)

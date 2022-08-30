-- nds gui v1.2


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Disable3D = Instance.new("TextButton")
local afk = Instance.new("TextButton")
local Farm = Instance.new("TextButton")
local Close = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.195786864, 0, 0.620987654, 0)
Frame.Size = UDim2.new(0, 301, 0, 279)
Frame.Draggable = true
Frame.Visible = true
Frame.Active = true


title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0, 0, 0.0752688199, 0)
title.Size = UDim2.new(0, 301, 0, 50)
title.Font = Enum.Font.Ubuntu
title.Text = "NDS Gui V1.2"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

UICorner.Parent = Frame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(65, 65, 65)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(65, 65, 65))}
UIGradient.Parent = Frame

Disable3D.Name = "Disable3D"
Disable3D.Parent = Frame
Disable3D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Disable3D.BackgroundTransparency = 0.900
Disable3D.BorderSizePixel = 0
Disable3D.Position = UDim2.new(0.166112959, 0, 0.745519698, 0)
Disable3D.Size = UDim2.new(0, 200, 0, 50)
Disable3D.Font = Enum.Font.SourceSans
Disable3D.Text = "Disable 3D Rendering"
Disable3D.TextColor3 = Color3.fromRGB(255, 255, 255)
Disable3D.TextScaled = true
Disable3D.TextSize = 14.000
Disable3D.TextWrapped = true

afk.Name = "afk"
afk.Parent = Frame
afk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
afk.BackgroundTransparency = 0.900
afk.BorderSizePixel = 0
afk.Position = UDim2.new(0.166112959, 0, 0.530465961, 0)
afk.Size = UDim2.new(0, 200, 0, 50)
afk.Font = Enum.Font.SourceSans
afk.Text = "Anti AFK"
afk.TextColor3 = Color3.fromRGB(255, 255, 255)
afk.TextScaled = true
afk.TextSize = 14.000
afk.TextWrapped = true

Farm.Name = "Farm"
Farm.Parent = Frame
Farm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Farm.BackgroundTransparency = 0.900
Farm.BorderSizePixel = 0
Farm.Position = UDim2.new(0.166112959, 0, 0.322580636, 0)
Farm.Size = UDim2.new(0, 200, 0, 50)
Farm.Font = Enum.Font.SourceSans
Farm.Text = "Autofarm"
Farm.TextColor3 = Color3.fromRGB(255, 255, 255)
Farm.TextScaled = true
Farm.TextSize = 14.000
Farm.TextWrapped = true

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.830564797, 0, 0, 0)
Close.Size = UDim2.new(0, 47, 0, 21)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

-- Scripts:

local function SYLZJZK_fake_script() -- Disable3D.LocalScript 
	local script = Instance.new('LocalScript', Disable3D)

	script.Parent.MouseButton1Down:Connect(function()
		game:GetService("RunService"):Set3dRenderingEnabled(false)
	end)
end
coroutine.wrap(SYLZJZK_fake_script)()
local function XRUHQSI_fake_script() -- afk.LocalScript 
	local script = Instance.new('LocalScript', afk)

	script.Parent.MouseButton1Down:Connect(function()
		local VirtualUser=game:service'VirtualUser'
		game:service'Players'.LocalPlayer.Idled:connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	
		warn("Anti-Afk has Loaded")
	end)
end
coroutine.wrap(XRUHQSI_fake_script)()
local function CFYCWL_fake_script() -- Farm.LocalScript 
	local script = Instance.new('LocalScript', Farm)

	script.Parent.MouseButton1Down:Connect(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265.430115, 179.497955, 340.779327, -0.936744332, -3.20583737e-08, 0.350014418, -5.13043616e-08, 1, -4.57143905e-08, -0.350014418, -6.07799606e-08, -0.936744332)
			wait(0.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-149.869171, 46.9979935, 7.83110905, 0.0143192178, 1.40906531e-08, 0.99989748, -3.43927198e-08, 1, -1.35995704e-08, -0.99989748, -3.4194457e-08, 0.0143192178)
		end)
	end)
end
coroutine.wrap(CFYCWL_fake_script)()
local function FEILYWN_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Frame:Destroy()
	end)
	
end
coroutine.wrap(FEILYWN_fake_script)()

-- Exoliner Serverside GUI

-- Exoliner Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Guide = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local GiveGUI = Instance.new("TextButton")
local Dismiss = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

-- Exoliner Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.Position = UDim2.new(0.482171214, 0, 0.508530252, 0)
Frame.Size = UDim2.new(0, 400, 0, 150)

UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(3, 255, 255)
Title.Size = UDim2.new(0, 378, 0, 25)
Title.Position = UDim2.new(-0.33, 0, 0.03, 0)
Title.BackgroundTransparency = 1.000
Title.Font = Enum.Font.GothamBlack
Title.Text = "   EXOLINER"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 27
Title.TextWrapped = false

Guide.Name = "Guide"
Guide.Parent = Frame
Guide.BackgroundColor3 = Color3.fromRGB(3, 255, 255)
Guide.Size = UDim2.new(0, 378, 0, 25)
Guide.Position = UDim2.new(0, 0, 0.4, 0)
Guide.BackgroundTransparency = 1.000
Guide.Font = Enum.Font.SourceSans
Guide.Text = "     Finished, you may click on any of the buttons"
Guide.TextColor3 = Color3.fromRGB(255, 255, 255)
Guide.TextScaled = true
Guide.TextSize = 20
Guide.TextWrapped = false

-- Click 'Give GUI' to get the 'Script Execution Panel'.

GiveGUI.Name = "GiveGUI"
GiveGUI.Parent = Frame
GiveGUI.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
GiveGUI.BackgroundTransparency = 0.800
GiveGUI.BorderSizePixel = 0
GiveGUI.Position = UDim2.new(0.02, 0, 0.66, 0)
GiveGUI.Size = UDim2.new(0, 160, 0, 40)
GiveGUI.Font = Enum.Font.SourceSans
GiveGUI.Text = "Give GUI"
GiveGUI.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveGUI.TextSize = 20
GiveGUI.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Heaventier/Exoliner/refs/heads/main/Source.lua"))()
ScreenGui:Destroy()
end)

-- Click 'Dismiss' to close Exoliner.

Dismiss.Name = "Dismiss"
Dismiss.Parent = Frame
Dismiss.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Dismiss.BackgroundTransparency = 0.800
Dismiss.BorderSizePixel = 0
Dismiss.Position = UDim2.new(0.579, 0, 0.66, 0)
Dismiss.Size = UDim2.new(0, 160, 0, 40)
Dismiss.Font = Enum.Font.SourceSans
Dismiss.Text = "Dismiss"
Dismiss.TextColor3 = Color3.fromRGB(255, 255, 255)
Dismiss.TextSize = 20
Dismiss.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Remade by Heaventier on GitHub.

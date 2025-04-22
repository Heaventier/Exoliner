-- Exoliner Serverside GUI

-- Exoliner Instances:

local Exoliner = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UI = Instance.new("ImageLabel")
local Logo = Instance.new("TextLabel")
local Section = Instance.new("TextLabel")
local Number = Instance.new("TextLabel")
local Delete = Instance.new("TextButton")
local Executor = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")

-- Exoliner Properties:

Exoliner.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Exoliner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Exoliner.ResetOnSpawn = false

Frame.Parent = Exoliner
Frame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.228368789, 0, 0.206611574, 0)
Frame.Size = UDim2.new(0, 499, 0, 300)

UI.Parent = Frame
UI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.BackgroundTransparency = 1.000
UI.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Size = UDim2.new(0, 499, 0, 300)
UI.Rotation = 0
UI.Image = "rbxassetid://71037505956210"

Logo.Parent = UI
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.new(1, 1, 1)
Logo.Position = UDim2.new(0, 14, 0, 35)
Logo.Size = UDim2.new(0, 125, 0, 20)
Logo.Font = Enum.Font.GothamBlack
Logo.BorderSizePixel = 5
Logo.Text = "EXOLINER"
Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
Logo.TextSize = 28.000

Section.Parent = UI
Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section.BackgroundTransparency = 1.000
Section.BorderColor3 = Color3.new(1, 1, 1)
Section.Position = UDim2.new(0, 183, 0, 35)
Section.Size = UDim2.new(0, 125, 0, 20)
Section.Font = Enum.Font.SourceSansSemibold
Section.BorderSizePixel = 2
Section.Text = "- Script Execution Panel"
Section.TextColor3 = Color3.fromRGB(255, 255, 255)
Section.TextSize = 24.000

Number.Parent = UI
Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Number.BackgroundTransparency = 1.000
Number.BorderColor3 = Color3.new(1, 1, 1)
Number.Position = UDim2.new(0, -46, 0, 75)
Number.Size = UDim2.new(0, 125, 0, 20)
Number.Font = Enum.Font.SourceSans
Number.BorderSizePixel = 0
Number.Text = "1"
Number.TextColor3 = Color3.fromRGB(255, 255, 255)
Number.TextSize = 15

-- Click '×' to close Exoliner.

Delete.Parent = UI
Delete.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Delete.BackgroundTransparency = 1.000
Delete.BorderColor3 = Color3.new(1, 1, 1)
Delete.Position = UDim2.new(0, 479, 0, 4)
Delete.Size = UDim2.new(0, 13, 0, 13)
Delete.Font = Enum.Font.SourceSans
Delete.BorderSizePixel = 0
Delete.Text = ""
Delete.TextColor3 = Color3.fromRGB(255, 255, 255)
Delete.TextSize = 15
Delete.MouseButton1Click:Connect(function()
Exoliner:Destroy()
end)

-- Enter your script on this box.

Executor.Name = "Executor"
Executor.Size = UDim2.new(1, -73, 1, -113)
Executor.Position = UDim2.new(0, 26, 0, 77)
Executor.BackgroundTransparency = 1.000
Executor.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Executor.BorderSizePixel = 0
Executor.TextColor3 = Color3.fromRGB(255, 255, 255)
Executor.TextSize = 14
Executor.Font = Enum.Font.Code
Executor.TextXAlignment = Enum.TextXAlignment.Left
Executor.TextYAlignment = Enum.TextYAlignment.Top
Executor.ClearTextOnFocus = false
Executor.Text = ""
Executor.MultiLine = true
Executor.PlaceholderText = ""
Executor.TextWrapped = true
Executor.Parent = Frame

-- Click 'Execute' to execute the script.

Execute.Name = "Execute"
Execute.BorderSizePixel = 0
Execute.BackgroundTransparency = 0.92
Execute.Size = UDim2.new(0, 123, 0, 25)
Execute.Position = UDim2.new(0, 5, 1, -29)
Execute.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Execute.Text = "EXECUTE"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 18
Execute.Font = Enum.Font.BuilderSansExtraBold
Execute.Parent = UI

-- Click 'Clear' to clear the script tab.

Clear.Name = "Clear"
Clear.Size = UDim2.new(0, 85, 0, 25)
Clear.BorderSizePixel = 0
Clear.BackgroundTransparency = 0.92
Clear.Position = UDim2.new(0, 136, 1, -29)
Clear.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
Clear.Text = "CLEAR"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 18
Clear.Font = Enum.Font.BuilderSansExtraBold
Clear.Parent = UI

-- Exoliner Scripts:

local function ZDHUJLJ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(ZDHUJLJ_fake_script)()
local function OEKP_fake_script() -- min.LocalScript 
end


-- Exoliner Script Execution Module

Execute.MouseButton1Click:Connect(function()
    local script = Executor.Text
    if script and script ~= "" then
        local success, err = pcall(function()
            loadstring(script)()
        end)
        if success then
            
        else
            
        end
    else
    
    end
end)

Clear.MouseButton1Click:Connect(function()
Executor.Text = ""
end)

-- Exoliner Script Execution Module

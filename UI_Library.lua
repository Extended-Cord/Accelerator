local Library = {}
local UI = Instance.new("ScreenGui")
UI.Name = "UI"
UI.Parent = game.CoreGui
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function dragify(Frame) -- Skidded asf ikr
	dragToggle = nil
	dragSpeed = .25
	dragInput = nil
	dragStart = nil
	dragPos = nil

	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

function Library:CreateWindow(title)
	local Tab = Instance.new("Frame")
	local Container = Instance.new("Frame")
	local Layout = Instance.new("UIListLayout")
	local Title = Instance.new("TextLabel")
	
	dragify(Tab)
	
	Tab.Name = "Tab"
	Tab.Parent = UI
	Tab.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Tab.BackgroundTransparency = 0.300
	Tab.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.437956214, 0, 0.292604506, 0)
	Tab.Size = UDim2.new(0, 150, 0, 30)

	Container.Name = "Container"
	Container.Parent = Tab
	Container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Container.BackgroundTransparency = 1.000
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0, 0, 1, 0)
	Container.Size = UDim2.new(0, 150, 0, 0)
	

	Layout.Name = "Layout"
	Layout.Parent = Container
	Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	Layout.SortOrder = Enum.SortOrder.LayoutOrder
	
	Title.Name = "Title"                                                                                                                                              
	Title.Parent = Tab
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.0666666701, 0, 0, 0)
	Title.Size = UDim2.new(0, 130, 0, 30)
	Title.Font = Enum.Font.GothamBold
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	local epicLibrary = {}
	
	function epicLibrary:CreateButton(text,callback)
		
		callback = callback or function() end
		local ButtonContainer = Instance.new("Frame")
		local Button = Instance.new("TextButton")
		
		ButtonContainer.Name = "ButtonContainer"
		ButtonContainer.Parent = Container
		ButtonContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ButtonContainer.BackgroundTransparency = 0.300
		ButtonContainer.BorderSizePixel = 0
		ButtonContainer.Size = UDim2.new(0, 150, 0, 30)

		Button.Name = "Button"
		Button.Parent = ButtonContainer
		Button.AnchorPoint = Vector2.new(0.5, 0)
		Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Button.BackgroundTransparency = 1.000
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0.5, 0, 0, 0)
		Button.Size = UDim2.new(0, 130, 0, 30)
		Button.Font = Enum.Font.GothamBold
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextSize = 14.000
		Button.TextXAlignment = Enum.TextXAlignment.Left
		Button.Text = text
		Button.MouseButton1Click:Connect(callback)
	end
	
	function epicLibrary:CreateToggle(text,status,callback)
		local toggled = status
		local ToggleContainer = Instance.new("Frame")
		local Toggle = Instance.new("TextButton")
		
		ToggleContainer.Name = "ToggleContainer"
		ToggleContainer.Parent = Container
		ToggleContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ToggleContainer.BackgroundTransparency = 0.300
		ToggleContainer.BorderSizePixel = 0
		ToggleContainer.Size = UDim2.new(0, 150, 0, 30)

		Toggle.Name = "Toggle"
		Toggle.Parent = ToggleContainer
		Toggle.AnchorPoint = Vector2.new(0.5, 0)
		Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.BackgroundTransparency = 1.000
		Toggle.BorderSizePixel = 0
		Toggle.Position = UDim2.new(0.5, 0, 0, 0)
		Toggle.Size = UDim2.new(0, 130, 0, 30)
		Toggle.Font = Enum.Font.GothamBold
		Toggle.Text = text
		Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.TextSize = 14.000
		Toggle.TextXAlignment = Enum.TextXAlignment.Left
		
		if toggled == true then
			ToggleContainer.BackgroundColor3 = Color3.fromRGB(255,0,0)
		else
			ToggleContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		end
		
		Toggle.MouseButton1Click:Connect(function()
			toggled = not toggled
			if toggled == true then
				ToggleContainer.BackgroundColor3 = Color3.fromRGB(255,0,0)
			else
				ToggleContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			end
			callback(toggled)
		end)
	end
	
	function epicLibrary:CreateLabel(text)

		local LabelContainer = Instance.new("Frame")
		local Label = Instance.new("TextLabel")


		LabelContainer.Name = "LabelContainer"
		LabelContainer.Parent = Container
		LabelContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		LabelContainer.BackgroundTransparency = 0.300
		LabelContainer.BorderSizePixel = 0
		LabelContainer.Size = UDim2.new(0, 150, 0, 30)

		Label.Name = "Label"
		Label.Parent = LabelContainer
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.BorderSizePixel = 0
		Label.Position = UDim2.new(0.0666666627, 0, 0, 0)
		Label.Size = UDim2.new(0, 130, 0, 30)
		Label.Font = Enum.Font.GothamBold
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextSize = 14.000
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.Text = text
	end
	
	return epicLibrary;
end

	return Library;







local UI = Instance.new("ScreenGui")
UI.Name = "UI"
UI.Parent = game.CoreGui
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function onKeyPress(actionName, userInputState, inputObject)
	if userInputState == Enum.UserInputState.Begin then
			UI.Enabled = not UI.Enabled
		end
	end

game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.RightShift)

local Library = {}

Library.Tabs = 1

function Library:CreateTab(title)
	local Tab = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Container = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	Tab.Name = title
	Tab.Parent = UI
	Tab.BackgroundColor3 = Color3.fromRGB(42, 57, 79)
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0,0,0,25)+ UDim2.new(0,175*Library.Tabs,0,20)
	Tab.Size = UDim2.new(0, 150, 0, 30)
	Tab.Draggable = true
	Tab.Active = true

	Library.Tabs = Library.Tabs + 1

	Title.Name = "Title"
	Title.Parent = Tab
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 150, 0, 30)
	Title.Font = Enum.Font.GothamBold
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000

	Container.Name = "Container"
	Container.Parent = Tab
	Container.BackgroundColor3 = Color3.fromRGB(42, 57, 79)
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0, 0, 1, 0)
	Container.Size = UDim2.new(0, 150, 0, 0)

	UIListLayout.Parent = Container
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local Objects = {}

	function Objects:CreateButton(text,callback)
		callback = callback or function() end
		local Button = Instance.new("TextButton")

		Button.Name = "Button"
		Button.Parent = Container
		Button.BackgroundColor3 = Color3.fromRGB(54, 71, 96)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0, 150, 0, 30)
		Button.AutoButtonColor = false
		Button.Font = Enum.Font.GothamBold
		Button.Text = text
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextSize = 14.000

		Button.MouseButton1Click:Connect(callback)
	end

	function Objects:CreateToggle(text,state,callback)
		local Toggled = state
		callback = callback or function() end
		local Toggle = Instance.new("TextButton")

		Toggle.Name = "Toggle"
		Toggle.Parent = Container
		Toggle.BackgroundColor3 = Color3.fromRGB(54, 71, 96)
		Toggle.BorderSizePixel = 0
		Toggle.Size = UDim2.new(0, 150, 0, 30)
		Toggle.AutoButtonColor = false
		Toggle.Font = Enum.Font.GothamBold
		Toggle.Text = text
		Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Toggle.TextSize = 14.000

		Toggle.MouseButton1Click:Connect(function()
			Toggled = not Toggled

			if Toggled == true then
				Toggle.BackgroundColor3 = Color3.fromRGB(7, 152, 252)
			else
				Toggle.BackgroundColor3 = Color3.fromRGB(54, 71, 96)
			end

			callback(Toggled)
		end)

	end

	function Objects:CreateLabel(text)
		local Label = Instance.new("TextLabel")

		Label.Name = "Label"
		Label.Parent = Container
		Label.BackgroundColor3 = Color3.fromRGB(54, 71, 96)
		Label.BorderSizePixel = 0
		Label.Size = UDim2.new(0, 150, 0, 30)
		Label.Font = Enum.Font.GothamBold
		Label.Text = text
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextSize = 14.000

	end

	return Objects
end

return Library

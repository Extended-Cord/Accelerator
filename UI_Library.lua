local Library = {}

local Accelerator = Instance.new("ScreenGui")
Accelerator.Parent = game.CoreGui
Accelerator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function Library:CreateWindow(title)
	local Tab = Instance.new("Frame")
	local TabFrame = Instance.new("Frame")
	local Container = Instance.new("Frame")
	local Padding = Instance.new("UIListLayout")
	local Title = Instance.new("TextLabel")

	Tab.Name = "Tab"
	Tab.Parent = Accelerator
	Tab.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	Tab.BackgroundTransparency = 0.200
	Tab.BorderSizePixel = 0
	Tab.Position = UDim2.new(0.104797974, 0, 0.167202562, 0)
	Tab.Size = UDim2.new(0, 150, 0, 30)

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Tab
	TabFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BackgroundTransparency = 0.200
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 1, 0)
	TabFrame.Size = UDim2.new(0, 150, 0, 300)

	Container.Name = "Container"
	Container.Parent = TabFrame
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.BorderSizePixel = 0
	Container.Size = UDim2.new(0, 150, 0, 300)

	Padding.Name = "Padding"
	Padding.Parent = Container
	Padding.HorizontalAlignment = Enum.HorizontalAlignment.Center
	Padding.SortOrder = Enum.SortOrder.LayoutOrder
	Title.Name = "Title"
	Title.Parent = Tab
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.0666666701, 0, 0, 0)
	Title.Size = UDim2.new(0, 130, 0, 30)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Auto Farms"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	
	--local pog = {}
	
	--function pog:CreateButton(text,callback)
	--	callback = callback or function() end
	--	local Button = Instance.new("TextButton")
	--	Button.Name = "Button"
	--	Button.Parent = Container
	--	Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	--	Button.BackgroundTransparency = 0.800
	--	Button.BorderSizePixel = 0
	--	Button.Position = UDim2.new(0.0666666701, 0, 0, 0)
	--	Button.Size = UDim2.new(0, 150, 0, 30)
	--	Button.Font = Enum.Font.GothamBold
	--	Button.Text = text
	--	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	--	Button.TextSize = 14.000

	--	Button.MouseButton1Click:Connect(callback)
	--end
	
	--return pog
	
end

return Library



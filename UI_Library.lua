local Accelerator = Instance.new("ScreenGui")
Accelerator.Name = "Accelerator"
    Accelerator.Parent = game:GetService('CoreGui')
    Accelerator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
 
local Library = {}
 
function Library:CreateWindow(name)
    
    
    local Tab = Instance.new("Frame")
    local Container = Instance.new("Frame")
    
    local UIListLayout = Instance.new("UIListLayout")
    local Title = Instance.new("TextLabel")
    
 
    Tab.Name = "Tab"
    Tab.Parent = Accelerator
    Tab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Tab.BackgroundTransparency = 0.200
    Tab.BorderSizePixel = 0
    Tab.Position = UDim2.new(0.122262768, 0, 0.117363341, 0)
    Tab.Size = UDim2.new(0, 150, 0, 400)
 
    Container.Name = "Container"
    Container.Parent = Tab
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 0.075000003, 0)
    Container.Size = UDim2.new(0, 150, 0, 370)
    UIListLayout.Parent = Container
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
    Title.Name = "Title"
    Title.Parent = Tab
    Title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Title.BackgroundTransparency = 0.600
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 150, 0, 30)
    Title.Font = Enum.Font.GothamBold
    Title.Text = name
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    
    local GamerLibrary = {}
    
    function GamerLibrary:CreateButton(text,callback)
        local Button = Instance.new("TextButton")
        local callback = callback or function() end
        Button.Name = "Button"
        Button.Parent = Container
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1.000
        Button.BorderSizePixel = 0
        Button.Size = UDim2.new(0, 150, 0, 30)
        Button.Font = Enum.Font.GothamBold
        Button.Text = text
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.TextSize = 14.000
        
        Button.MouseButton1Click:Connect(callback)
    end
    
    return GamerLibrary
end
 
return Library
 
 
 

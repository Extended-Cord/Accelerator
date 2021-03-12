local TS  =game:GetService('TweenService')
local Accelerator_Intro = Instance.new("ScreenGui")
local Red = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local WIP_Text = Instance.new("TextLabel")
local White = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")



Accelerator_Intro.Name = "Accelerator_Intro"
Accelerator_Intro.Parent = game.CoreGui
Accelerator_Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Red.Name = "Red"
Red.Parent = Accelerator_Intro
Red.AnchorPoint = Vector2.new(0.5, 0.5)
Red.BackgroundColor3 = Color3.fromRGB(255, 104, 103)
Red.Position = UDim2.new(0.5, 0, 0.400000006, 0)
Red.Size = UDim2.new(0, 400, 0, 400)
Red.ZIndex = 2
Red.BackgroundTransparency = 1

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Red

WIP_Text.Name = "WIP_Text"
WIP_Text.Parent = Red
WIP_Text.AnchorPoint = Vector2.new(0.5, 0.5)
WIP_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WIP_Text.BackgroundTransparency = 1.000
WIP_Text.BorderSizePixel = 0
WIP_Text.Position = UDim2.new(0.5, 0, 0.5, 0)
WIP_Text.Size = UDim2.new(0, 200, 0, 50)
WIP_Text.Font = Enum.Font.GothamBold
WIP_Text.Text = "Nothing here so far"
WIP_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
WIP_Text.TextSize = 14.000

White.Name = "White"
White.Parent = Accelerator_Intro
White.AnchorPoint = Vector2.new(0.5, 0.5)
White.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
White.Position = UDim2.new(0.5, 0, 0.400000006, 0)
White.Size = UDim2.new(0, 420, 0, 420)
White.BackgroundTransparency = 1

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = White



local TweenInfos = TweenInfo.new(0.5)

function Tween(item,info,properties)
	local Tweening = TS:Create(item,info,properties)

	Tweening:Play()
end

wait(1)

Tween(White,TweenInfos,{BackgroundTransparency = 0})
Tween(Red,TweenInfos,{BackgroundTransparency = 0})
Tween(WIP_Text,TweenInfos,{TextTransparency = 0})

wait(2)

Tween(White,TweenInfos,{BackgroundTransparency = 1})
Tween(Red,TweenInfos,{BackgroundTransparency = 1})
Tween(WIP_Text,TweenInfos,{TextTransparency = 1})
wait(3)
Accelerator_Intro:Destroy()
print('Initiated Accelerator')

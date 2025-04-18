local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TeleportGui"
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Create main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 600)
frame.Position = UDim2.new(0.5, -200, 0.5, -300)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Visible = true
frame.Parent = screenGui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = frame

-- Create Tab Frame
local tabFrame = Instance.new("Frame")
tabFrame.Size = UDim2.new(1, 0, 0, 40)
tabFrame.Position = UDim2.new(0, 0, 0, 10)
tabFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
tabFrame.BorderSizePixel = 0
tabFrame.Parent = frame

local tabFrameCorner = Instance.new("UICorner")
tabFrameCorner.CornerRadius = UDim.new(0, 8)
tabFrameCorner.Parent = tabFrame

-- Create Teleport Tab Button
local teleportTab = Instance.new("TextButton")
teleportTab.Size = UDim2.new(0.25, -5, 0, 30)
teleportTab.Position = UDim2.new(0, 5, 0, 5)
teleportTab.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
teleportTab.BorderSizePixel = 0
teleportTab.Text = "Teleport"
teleportTab.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportTab.TextSize = 14
teleportTab.Font = Enum.Font.Gotham
teleportTab.Parent = tabFrame

local teleportTabCorner = Instance.new("UICorner")
teleportTabCorner.CornerRadius = UDim.new(0, 6)
teleportTabCorner.Parent = teleportTab

-- Create ClientSided Tab Button
local clientTab = Instance.new("TextButton")
clientTab.Size = UDim2.new(0.25, -5, 0, 30)
clientTab.Position = UDim2.new(0.25, 0, 0, 5)
clientTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
clientTab.BorderSizePixel = 0
clientTab.Text = "ClientSided"
clientTab.TextColor3 = Color3.fromRGB(200, 200, 200)
clientTab.TextSize = 14
clientTab.Font = Enum.Font.Gotham
clientTab.Parent = tabFrame

local clientTabCorner = Instance.new("UICorner")
clientTabCorner.CornerRadius = UDim.new(0, 6)
clientTabCorner.Parent = clientTab

-- Create FunStuff Tab Button
local funTab = Instance.new("TextButton")
funTab.Size = UDim2.new(0.25, -5, 0, 30)
funTab.Position = UDim2.new(0.5, 0, 0, 5)
funTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
funTab.BorderSizePixel = 0
funTab.Text = "FunStuff"
funTab.TextColor3 = Color3.fromRGB(200, 200, 200)
funTab.TextSize = 14
funTab.Font = Enum.Font.Gotham
funTab.Parent = tabFrame

local funTabCorner = Instance.new("UICorner")
funTabCorner.CornerRadius = UDim.new(0, 6)
funTabCorner.Parent = funTab

-- Create Phone Tab Button
local phoneTab = Instance.new("TextButton")
phoneTab.Size = UDim2.new(0.25, -5, 0, 30)
phoneTab.Position = UDim2.new(0.75, 0, 0, 5)
phoneTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
phoneTab.BorderSizePixel = 0
phoneTab.Text = "Phone"
phoneTab.TextColor3 = Color3.fromRGB(200, 200, 200)
phoneTab.TextSize = 14
phoneTab.Font = Enum.Font.Gotham
phoneTab.Parent = tabFrame

local phoneTabCorner = Instance.new("UICorner")
phoneTabCorner.CornerRadius = UDim.new(0, 6)
phoneTabCorner.Parent = phoneTab

-- Create Close Button (X)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -40, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.BorderSizePixel = 0
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 18
closeButton.Font = Enum.Font.Gotham
closeButton.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeButton

-- Create Confirmation Frame
local confirmFrame = Instance.new("Frame")
confirmFrame.Size = UDim2.new(0, 300, 0, 150)
confirmFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
confirmFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
confirmFrame.BorderSizePixel = 0
confirmFrame.Visible = false
confirmFrame.Parent = screenGui

local confirmCorner = Instance.new("UICorner")
confirmCorner.CornerRadius = UDim.new(0, 12)
confirmCorner.Parent = confirmFrame

local confirmLabel = Instance.new("TextLabel")
confirmLabel.Size = UDim2.new(1, 0, 0, 80)
confirmLabel.Position = UDim2.new(0, 0, 0, 10)
confirmLabel.BackgroundTransparency = 1
confirmLabel.Text = "Are you sure to unload this script?"
confirmLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmLabel.TextSize = 18
confirmLabel.TextWrapped = true
confirmLabel.Font = Enum.Font.Gotham
confirmLabel.Parent = confirmFrame

local yesButton = Instance.new("TextButton")
yesButton.Size = UDim2.new(0.4, 0, 0, 40)
yesButton.Position = UDim2.new(0.1, 0, 0.65, 0)
yesButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
yesButton.BorderSizePixel = 0
yesButton.Text = "Yes"
yesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
yesButton.TextSize = 16
yesButton.Font = Enum.Font.Gotham
yesButton.Parent = confirmFrame

local yesCorner = Instance.new("UICorner")
yesCorner.CornerRadius = UDim.new(0, 8)
yesCorner.Parent = yesButton

local noButton = Instance.new("TextButton")
noButton.Size = UDim2.new(0.4, 0, 0, 40)
noButton.Position = UDim2.new(0.55, 0, 0.65, 0)
noButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
noButton.BorderSizePixel = 0
noButton.Text = "No"
noButton.TextColor3 = Color3.fromRGB(255, 255, 255)
noButton.TextSize = 16
noButton.Font = Enum.Font.Gotham
noButton.Parent = confirmFrame

local noCorner = Instance.new("UICorner")
noCorner.CornerRadius = UDim.new(0, 8)
noCorner.Parent = noButton

-- Create Teleport Frame
local teleportFrame = Instance.new("Frame")
teleportFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
teleportFrame.Position = UDim2.new(0.025, 0, 0, 60)
teleportFrame.BackgroundTransparency = 1
teleportFrame.Parent = frame

local playerList = Instance.new("ScrollingFrame")
playerList.Size = UDim2.new(1, 0, 0.7, 0)
playerList.Position = UDim2.new(0, 0, 0, 0)
playerList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
playerList.BorderSizePixel = 0
playerList.CanvasSize = UDim2.new(0, 0, 0, 0)
playerList.ScrollBarThickness = 8
playerList.Parent = teleportFrame

local listCorner = Instance.new("UICorner")
listCorner.CornerRadius = UDim.new(0, 8)
listCorner.Parent = playerList

local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0, 5)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent = playerList

local teleportButton = Instance.new("TextButton")
teleportButton.Size = UDim2.new(1, 0, 0, 50)
teleportButton.Position = UDim2.new(0, 0, 0.75, 0)
teleportButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
teleportButton.BorderSizePixel = 0
teleportButton.Text = "Teleport"
teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportButton.TextSize = 20
teleportButton.Font = Enum.Font.Gotham
teleportButton.Parent = teleportFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = teleportButton

-- Create ClientSided Frame
local clientFrame = Instance.new("Frame")
clientFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
clientFrame.Position = UDim2.new(0.025, 0, 0, 60)
clientFrame.BackgroundTransparency = 1
clientFrame.Visible = false
clientFrame.Parent = frame

local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 0, 30)
nameLabel.Position = UDim2.new(0, 0, 0, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.Text = "Change Display Name"
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabel.TextSize = 16
nameLabel.Font = Enum.Font.Gotham
nameLabel.TextXAlignment = Enum.TextXAlignment.Left
nameLabel.Parent = clientFrame

local nameBox = Instance.new("TextBox")
nameBox.Size = UDim2.new(1, 0, 0, 40)
nameBox.Position = UDim2.new(0, 0, 0, 30)
nameBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
nameBox.BorderSizePixel = 0
nameBox.Text = ""
nameBox.PlaceholderText = "Enter new display name"
nameBox.TextColor3 = Color3.fromRGB(200, 200, 200)
nameBox.TextSize = 16
nameBox.Font = Enum.Font.Gotham
nameBox.Parent = clientFrame

local nameBoxCorner = Instance.new("UICorner")
nameBoxCorner.CornerRadius = UDim.new(0, 6)
nameBoxCorner.Parent = nameBox

local glowButton = Instance.new("TextButton")
glowButton.Size = UDim2.new(1, 0, 0, 40)
glowButton.Position = UDim2.new(0, 0, 0, 80)
glowButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
glowButton.BorderSizePixel = 0
glowButton.Text = "Toggle Player Glow: Off"
glowButton.TextColor3 = Color3.fromRGB(200, 200, 200)
glowButton.TextSize = 16
glowButton.Font = Enum.Font.Gotham
glowButton.Parent = clientFrame

local glowCorner = Instance.new("UICorner")
glowCorner.CornerRadius = UDim.new(0, 6)
glowCorner.Parent = glowButton

local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(1, 0, 0, 40)
speedButton.Position = UDim2.new(0, 0, 0, 130)
speedButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
speedButton.BorderSizePixel = 0
speedButton.Text = "Toggle WalkSpeed Boost: Off"
speedButton.TextColor3 = Color3.fromRGB(200, 200, 200)
speedButton.TextSize = 16
speedButton.Font = Enum.Font.Gotham
speedButton.Parent = clientFrame

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0, 6)
speedCorner.Parent = speedButton

local jumpButton = Instance.new("TextButton")
jumpButton.Size = UDim2.new(1, 0, 0, 40)
jumpButton.Position = UDim2.new(0, 0, 0, 180)
jumpButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
jumpButton.BorderSizePixel = 0
jumpButton.Text = "Toggle JumpPower Boost: Off"
jumpButton.TextColor3 = Color3.fromRGB(200, 200, 200)
jumpButton.TextSize = 16
jumpButton.Font = Enum.Font.Gotham
jumpButton.Parent = clientFrame

local jumpCorner = Instance.new("UICorner")
jumpCorner.CornerRadius = UDim.new(0, 6)
jumpCorner.Parent = jumpButton

-- Create FunStuff Frame
local funFrame = Instance.new("Frame")
funFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
funFrame.Position = UDim2.new(0.025, 0, 0, 60)
funFrame.BackgroundTransparency = 1
funFrame.Visible = false
funFrame.Parent = frame

local thirdPersonButton = Instance.new("TextButton")
thirdPersonButton.Size = UDim2.new(1, 0, 0, 40)
thirdPersonButton.Position = UDim2.new(0, 0, 0, 0)
thirdPersonButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
thirdPersonButton.BorderSizePixel = 0
thirdPersonButton.Text = "Toggle Third-Person: Off"
thirdPersonButton.TextColor3 = Color3.fromRGB(200, 200, 200)
thirdPersonButton.TextSize = 16
thirdPersonButton.Font = Enum.Font.Gotham
thirdPersonButton.Parent = funFrame

local thirdPersonCorner = Instance.new("UICorner")
thirdPersonCorner.CornerRadius = UDim.new(0, 6)
thirdPersonCorner.Parent = thirdPersonButton

local chatLabel = Instance.new("TextLabel")
chatLabel.Size = UDim2.new(1, 0, 0, 30)
chatLabel.Position = UDim2.new(0, 0, 0, 50)
chatLabel.BackgroundTransparency = 1
chatLabel.Text = "Chat Spam Message"
chatLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
chatLabel.TextSize = 16
chatLabel.Font = Enum.Font.Gotham
chatLabel.TextXAlignment = Enum.TextXAlignment.Left
chatLabel.Parent = funFrame

local chatBox = Instance.new("TextBox")
chatBox.Size = UDim2.new(1, 0, 0, 40)
chatBox.Position = UDim2.new(0, 0, 0, 80)
chatBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
chatBox.BorderSizePixel = 0
chatBox.Text = ""
chatBox.PlaceholderText = "Enter chat message"
chatBox.TextColor3 = Color3.fromRGB(200, 200, 200)
chatBox.TextSize = 16
chatBox.Font = Enum.Font.Gotham
chatBox.Parent = funFrame

local chatBoxCorner = Instance.new("UICorner")
chatBoxCorner.CornerRadius = UDim.new(0, 6)
chatBoxCorner.Parent = chatBox

local chatSpamButton = Instance.new("TextButton")
chatSpamButton.Size = UDim2.new(1, 0, 0, 40)
chatSpamButton.Position = UDim2.new(0, 0, 0, 130)
chatSpamButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
chatSpamButton.BorderSizePixel = 0
chatSpamButton.Text = "Toggle Chat Spam: Off"
chatSpamButton.TextColor3 = Color3.fromRGB(200, 200, 200)
chatSpamButton.TextSize = 16
chatSpamButton.Font = Enum.Font.Gotham
chatSpamButton.Parent = funFrame

local chatSpamCorner = Instance.new("UICorner")
chatSpamCorner.CornerRadius = UDim.new(0, 6)
chatSpamCorner.Parent = chatSpamButton

local fovLabel = Instance.new("TextLabel")
fovLabel.Size = UDim2.new(1, 0, 0, 30)
fovLabel.Position = UDim2.new(0, 0, 0, 180)
fovLabel.BackgroundTransparency = 1
fovLabel.Text = "Set FOV (50-120)"
fovLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fovLabel.TextSize = 16
fovLabel.Font = Enum.Font.Gotham
fovLabel.TextXAlignment = Enum.TextXAlignment.Left
fovLabel.Parent = funFrame

local fovBox = Instance.new("TextBox")
fovBox.Size = UDim2.new(1, 0, 0, 40)
fovBox.Position = UDim2.new(0, 0, 0, 210)
fovBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
fovBox.BorderSizePixel = 0
fovBox.Text = ""
fovBox.PlaceholderText = "Enter FOV (e.g., 90)"
fovBox.TextColor3 = Color3.fromRGB(200, 200, 200)
fovBox.TextSize = 16
fovBox.Font = Enum.Font.Gotham
fovBox.Parent = funFrame

local fovBoxCorner = Instance.new("UICorner")
fovBoxCorner.CornerRadius = UDim.new(0, 6)
fovBoxCorner.Parent = fovBox

local transButton = Instance.new("TextButton")
transButton.Size = UDim2.new(1, 0, 0, 40)
transButton.Position = UDim2.new(0, 0, 0, 260)
transButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
transButton.BorderSizePixel = 0
transButton.Text = "Toggle Transparency: Off"
transButton.TextColor3 = Color3.fromRGB(200, 200, 200)
transButton.TextSize = 16
transButton.Font = Enum.Font.Gotham
transButton.Parent = funFrame

local transCorner = Instance.new("UICorner")
transCorner.CornerRadius = UDim.new(0, 6)
transCorner.Parent = transButton

local skyButton = Instance.new("TextButton")
skyButton.Size = UDim2.new(1, 0, 0, 40)
skyButton.Position = UDim2.new(0, 0, 0, 310)
skyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
skyButton.BorderSizePixel = 0
skyButton.Text = "Cycle Skybox Color"
skyButton.TextColor3 = Color3.fromRGB(200, 200, 200)
skyButton.TextSize = 16
skyButton.Font = Enum.Font.Gotham
skyButton.Parent = funFrame

local skyCorner = Instance.new("UICorner")
skyCorner.CornerRadius = UDim.new(0, 6)
skyCorner.Parent = skyButton

-- Create Phone Frame
local phoneFrame = Instance.new("Frame")
phoneFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
phoneFrame.Position = UDim2.new(0.025, 0, 0, 60)
phoneFrame.BackgroundTransparency = 1
phoneFrame.Visible = false
phoneFrame.Parent = frame

local wallpaper = Instance.new("ImageLabel")
wallpaper.Size = UDim2.new(1, 0, 1, 0)
wallpaper.Position = UDim2.new(0, 0, 0, 0)
wallpaper.BackgroundTransparency = 1
wallpaper.Image = "rbxassetid://6872274481"
wallpaper.Parent = phoneFrame

-- Settings App Button
local settingsButton = Instance.new("TextButton")
settingsButton.Size = UDim2.new(0, 120, 0, 100)
settingsButton.Position = UDim2.new(0.25, -60, 0.35, -60)
settingsButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
settingsButton.BorderSizePixel = 0
settingsButton.Text = "Settings"
settingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsButton.TextSize = 16
settingsButton.Font = Enum.Font.Gotham
settingsButton.Parent = phoneFrame

local settingsBtnCorner = Instance.new("UICorner")
settingsBtnCorner.CornerRadius = UDim.new(0, 20)
settingsBtnCorner.Parent = settingsButton

local settingsGradient = Instance.new("UIGradient")
settingsGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 80, 80))
})
settingsGradient.Parent = settingsButton

-- Music App Button
local musicButton = Instance.new("TextButton")
musicButton.Size = UDim2.new(0, 120, 0, 100)
musicButton.Position = UDim2.new(0.75, -60, 0.35, -60)
musicButton.BackgroundColor3 = Color3.fromRGB(30, 200, 30)
musicButton.BorderSizePixel = 0
musicButton.Text = "Music"
musicButton.TextColor3 = Color3.fromRGB(255, 255, 255)
musicButton.TextSize = 16
musicButton.Font = Enum.Font.Gotham
musicButton.Parent = phoneFrame

local musicBtnCorner = Instance.new("UICorner")
musicBtnCorner.CornerRadius = UDim.new(0, 20)
musicBtnCorner.Parent = musicButton

local musicGradient = Instance.new("UIGradient")
musicGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 200, 30)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 220, 50))
})
musicGradient.Parent = musicButton

-- Settings Frame
local settingsFrame = Instance.new("Frame")
settingsFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
settingsFrame.Position = UDim2.new(0.025, 0, 0, 60)
settingsFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
settingsFrame.BorderSizePixel = 0
settingsFrame.Visible = false
settingsFrame.Parent = frame

local settingsFrameCorner = Instance.new("UICorner")
settingsFrameCorner.CornerRadius = UDim.new(0, 8)
settingsFrameCorner.Parent = settingsFrame

local settingsScroll = Instance.new("ScrollingFrame")
settingsScroll.Size = UDim2.new(1, 0, 0.85, 0)
settingsScroll.Position = UDim2.new(0, 0, 0, 50)
settingsScroll.BackgroundTransparency = 1
settingsScroll.CanvasSize = UDim2.new(0, 0, 0, 360)
settingsScroll.ScrollBarThickness = 8
settingsScroll.Parent = settingsFrame

local settingsLayout = Instance.new("UIListLayout")
settingsLayout.Padding = UDim.new(0, 5)
settingsLayout.SortOrder = Enum.SortOrder.LayoutOrder
settingsLayout.Parent = settingsScroll

local settingsBackButton = Instance.new("TextButton")
settingsBackButton.Size = UDim2.new(0, 30, 0, 30)
settingsBackButton.Position = UDim2.new(0, 10, 0, 10)
settingsBackButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
settingsBackButton.BorderSizePixel = 0
settingsBackButton.Text = "<"
settingsBackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsBackButton.TextSize = 16
settingsBackButton.Font = Enum.Font.Gotham
settingsBackButton.Parent = settingsFrame

local settingsBackCorner = Instance.new("UICorner")
settingsBackCorner.CornerRadius = UDim.new(0, 6)
settingsBackCorner.Parent = settingsBackButton

-- Settings Toggles
local hideGuiButton = Instance.new("TextButton")
hideGuiButton.Size = UDim2.new(1, -10, 0, 40)
hideGuiButton.Position = UDim2.new(0, 5, 0, 0)
hideGuiButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
hideGuiButton.BorderSizePixel = 0
hideGuiButton.Text = "Hide GUI: Off"
hideGuiButton.TextColor3 = Color3.fromRGB(200, 200, 200)
hideGuiButton.TextSize = 16
hideGuiButton.Font = Enum.Font.Gotham
hideGuiButton.Parent = settingsScroll

local hideGuiCorner = Instance.new("UICorner")
hideGuiCorner.CornerRadius = UDim.new(0, 6)
hideGuiCorner.Parent = hideGuiButton

local muteSoundButton = Instance.new("TextButton")
muteSoundButton.Size = UDim2.new(1, -10, 0, 40)
muteSoundButton.Position = UDim2.new(0, 5, 0, 45)
muteSoundButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
muteSoundButton.BorderSizePixel = 0
muteSoundButton.Text = "Mute Sound: Off"
muteSoundButton.TextColor3 = Color3.fromRGB(200, 200, 200)
muteSoundButton.TextSize = 16
muteSoundButton.Font = Enum.Font.Gotham
muteSoundButton.Parent = settingsScroll

local muteSoundCorner = Instance.new("UICorner")
muteSoundCorner.CornerRadius = UDim.new(0, 6)
muteSoundCorner.Parent = muteSoundButton

local dragToggleButton = Instance.new("TextButton")
dragToggleButton.Size = UDim2.new(1, -10, 0, 40)
dragToggleButton.Position = UDim2.new(0, 5, 0, 90)
dragToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
dragToggleButton.BorderSizePixel = 0
dragToggleButton.Text = "GUI Dragging: On"
dragToggleButton.TextColor3 = Color3.fromRGB(200, 200, 200)
dragToggleButton.TextSize = 16
dragToggleButton.Font = Enum.Font.Gotham
dragToggleButton.Parent = settingsScroll

local dragToggleCorner = Instance.new("UICorner")
dragToggleCorner.CornerRadius = UDim.new(0, 6)
dragToggleCorner.Parent = dragToggleButton

local mouseLockButton = Instance.new("TextButton")
mouseLockButton.Size = UDim2.new(1, -10, 0, 40)
mouseLockButton.Position = UDim2.new(0, 5, 0, 135)
mouseLockButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mouseLockButton.BorderSizePixel = 0
mouseLockButton.Text = "Force Mouse Unlock: Off"
mouseLockButton.TextColor3 = Color3.fromRGB(200, 200, 200)
mouseLockButton.TextSize = 16
mouseLockButton.Font = Enum.Font.Gotham
mouseLockButton.Parent = settingsScroll

local mouseLockCorner = Instance.new("UICorner")
mouseLockCorner.CornerRadius = UDim.new(0, 6)
mouseLockCorner.Parent = mouseLockButton

local resetFovButton = Instance.new("TextButton")
resetFovButton.Size = UDim2.new(1, -10, 0, 40)
resetFovButton.Position = UDim2.new(0, 5, 0, 180)
resetFovButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
resetFovButton.BorderSizePixel = 0
resetFovButton.Text = "Reset Camera FOV"
resetFovButton.TextColor3 = Color3.fromRGB(200, 200, 200)
resetFovButton.TextSize = 16
resetFovButton.Font = Enum.Font.Gotham
resetFovButton.Parent = settingsScroll

local resetFovCorner = Instance.new("UICorner")
resetFovCorner.CornerRadius = UDim.new(0, 6)
resetFovCorner.Parent = resetFovButton

local thirdPersonLockButton = Instance.new("TextButton")
thirdPersonLockButton.Size = UDim2.new(1, -10, 0, 40)
thirdPersonLockButton.Position = UDim2.new(0, 5, 0, 225)
thirdPersonLockButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
thirdPersonLockButton.BorderSizePixel = 0
thirdPersonLockButton.Text = "Third-Person Lock: Off"
thirdPersonLockButton.TextColor3 = Color3.fromRGB(200, 200, 200)
thirdPersonLockButton.TextSize = 16
thirdPersonLockButton.Font = Enum.Font.Gotham
thirdPersonLockButton.Parent = settingsScroll

local thirdPersonLockCorner = Instance.new("UICorner")
thirdPersonLockCorner.CornerRadius = UDim.new(0, 6)
thirdPersonLockCorner.Parent = thirdPersonLockButton

local themeButton = Instance.new("TextButton")
themeButton.Size = UDim2.new(1, -10, 0, 40)
themeButton.Position = UDim2.new(0, 5, 0, 270)
themeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
themeButton.BorderSizePixel = 0
themeButton.Text = "GUI Theme: Dark"
themeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
themeButton.TextSize = 16
themeButton.Font = Enum.Font.Gotham
themeButton.Parent = settingsScroll

local themeCorner = Instance.new("UICorner")
themeCorner.CornerRadius = UDim.new(0, 6)
themeCorner.Parent = themeButton

local opacityButton = Instance.new("TextButton")
opacityButton.Size = UDim2.new(1, -10, 0, 40)
opacityButton.Position = UDim2.new(0, 5, 0, 315)
opacityButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
opacityButton.BorderSizePixel = 0
opacityButton.Text = "GUI Opacity: 0"
opacityButton.TextColor3 = Color3.fromRGB(200, 200, 200)
opacityButton.TextSize = 16
opacityButton.Font = Enum.Font.Gotham
opacityButton.Parent = settingsScroll

local opacityCorner = Instance.new("UICorner")
opacityCorner.CornerRadius = UDim.new(0, 6)
opacityCorner.Parent = opacityButton

local chatVisibilityButton = Instance.new("TextButton")
chatVisibilityButton.Size = UDim2.new(1, -10, 0, 40)
chatVisibilityButton.Position = UDim2.new(0, 5, 0, 360)
chatVisibilityButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
chatVisibilityButton.BorderSizePixel = 0
chatVisibilityButton.Text = "Chat Visibility: On"
chatVisibilityButton.TextColor3 = Color3.fromRGB(200, 200, 200)
chatVisibilityButton.TextSize = 16
chatVisibilityButton.Font = Enum.Font.Gotham
chatVisibilityButton.Parent = settingsScroll

local chatVisibilityCorner = Instance.new("UICorner")
chatVisibilityCorner.CornerRadius = UDim.new(0, 6)
chatVisibilityCorner.Parent = chatVisibilityButton

-- Music Frame
local musicFrame = Instance.new("Frame")
musicFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
musicFrame.Position = UDim2.new(0.025, 0, 0, 60)
musicFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
musicFrame.BorderSizePixel = 0
musicFrame.Visible = false
musicFrame.Parent = frame

local musicFrameCorner = Instance.new("UICorner")
musicFrameCorner.CornerRadius = UDim.new(0, 8)
musicFrameCorner.Parent = musicFrame

local musicBackButton = Instance.new("TextButton")
musicBackButton.Size = UDim2.new(0, 30, 0, 30)
musicBackButton.Position = UDim2.new(0, 10, 0, 10)
musicBackButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
musicBackButton.BorderSizePixel = 0
musicBackButton.Text = "<"
musicBackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
musicBackButton.TextSize = 16
musicBackButton.Font = Enum.Font.Gotham
musicBackButton.Parent = musicFrame

local musicBackCorner = Instance.new("UICorner")
musicBackCorner.CornerRadius = UDim.new(0, 6)
musicBackCorner.Parent = musicBackButton

local playPauseButton = Instance.new("TextButton")
playPauseButton.Size = UDim2.new(0, 60, 0, 60)
playPauseButton.Position = UDim2.new(0.5, -30, 0, 200)
playPauseButton.BackgroundColor3 = Color3.fromRGB(30, 200, 30)
playPauseButton.BorderSizePixel = 0
playPauseButton.Text = "Play"
playPauseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playPauseButton.TextSize = 16
playPauseButton.Font = Enum.Font.Gotham
playPauseButton.Parent = musicFrame

local playPauseCorner = Instance.new("UICorner")
playPauseCorner.CornerRadius = UDim.new(0, 30)
playPauseCorner.Parent = playPauseButton

local nextButton = Instance.new("TextButton")
nextButton.Size = UDim2.new(0, 50, 0, 50)
nextButton.Position = UDim2.new(0.75, -25, 0, 205)
nextButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
nextButton.BorderSizePixel = 0
nextButton.Text = ">"
nextButton.TextColor3 = Color3.fromRGB(200, 200, 200)
nextButton.TextSize = 16
nextButton.Font = Enum.Font.Gotham
nextButton.Parent = musicFrame

local nextCorner = Instance.new("UICorner")
nextCorner.CornerRadius = UDim.new(0, 6)
nextCorner.Parent = nextButton

local sliderTrack = Instance.new("Frame")
sliderTrack.Size = UDim2.new(0.8, 0, 0, 10)
sliderTrack.Position = UDim2.new(0.1, 0, 0, 150)
sliderTrack.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
sliderTrack.BorderSizePixel = 0
sliderTrack.Parent = musicFrame

local trackCorner = Instance.new("UICorner")
trackCorner.CornerRadius = UDim.new(0, 5)
trackCorner.Parent = sliderTrack

local sliderBar = Instance.new("Frame")
sliderBar.Size = UDim2.new(0, 0, 1, 0)
sliderBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderBar.BorderSizePixel = 0
sliderBar.Parent = sliderTrack

local barCorner = Instance.new("UICorner")
barCorner.CornerRadius = UDim.new(0, 5)
barCorner.Parent = sliderBar

local timeDisplay = Instance.new("TextLabel")
timeDisplay.Size = UDim2.new(0.8, 0, 0, 30)
timeDisplay.Position = UDim2.new(0.1, 0, 0, 120)
timeDisplay.BackgroundTransparency = 1
timeDisplay.Text = "0:00 / 1:27"
timeDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
timeDisplay.TextSize = 16
timeDisplay.Font = Enum.Font.Gotham
timeDisplay.Parent = musicFrame

-- Variables
local selectedPlayer = nil
local glowEnabled = false
local speedEnabled = false
local jumpEnabled = false
local chatSpamEnabled = false
local transEnabled = false
local thirdPersonEnabled = false
local thirdPersonLocked = false
local hideGuiEnabled = false
local muteSoundEnabled = false
local dragEnabled = true
local mouseUnlockEnabled = false
local themeIndex = 1
local themes = {
    {name = "Dark", frameColor = Color3.fromRGB(30, 30, 30), tabColor = Color3.fromRGB(40, 40, 40)},
    {name = "Light", frameColor = Color3.fromRGB(200, 200, 200), tabColor = Color3.fromRGB(180, 180, 180)}
}
local opacityIndex = 1
local opacities = {0, 0.25, 0.5}
local chatVisible = true
local highlight = nil
local skybox = nil
local skyColors = {
    Color3.fromRGB(255, 50, 50),
    Color3.fromRGB(50, 50, 255),
    Color3.fromRGB(50, 255, 50)
}
local currentSkyColor = 1
local musicPlaying = false
local currentTrack = 1
local tracks = {
    {id = "rbxassetid://142376088", duration = 87},
    {id = "rbxassetid://9245561450", duration = 120}
}
local sound = Instance.new("Sound")
sound.Parent = frame
sound.Looped = true

-- Tab switching
teleportTab.MouseButton1Click:Connect(function()
    teleportFrame.Visible = true
    clientFrame.Visible = false
    funFrame.Visible = false
    phoneFrame.Visible = false
    settingsFrame.Visible = false
    musicFrame.Visible = false
    teleportTab.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    clientTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    funTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    phoneTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
end)

clientTab.MouseButton1Click:Connect(function()
    teleportFrame.Visible = false
    clientFrame.Visible = true
    funFrame.Visible = false
    phoneFrame.Visible = false
    settingsFrame.Visible = false
    musicFrame.Visible = false
    teleportTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    clientTab.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    funTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    phoneTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
end)

funTab.MouseButton1Click:Connect(function()
    teleportFrame.Visible = false
    clientFrame.Visible = false
    funFrame.Visible = true
    phoneFrame.Visible = false
    settingsFrame.Visible = false
    musicFrame.Visible = false
    teleportTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    clientTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    funTab.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    phoneTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
end)

phoneTab.MouseButton1Click:Connect(function()
    teleportFrame.Visible = false
    clientFrame.Visible = false
    funFrame.Visible = false
    phoneFrame.Visible = true
    settingsFrame.Visible = false
    musicFrame.Visible = false
    teleportTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    clientTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    funTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    phoneTab.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    print("Phone tab loaded")
end)

settingsButton.MouseButton1Click:Connect(function()
    phoneFrame.Visible = false
    settingsFrame.Visible = true
end)

musicButton.MouseButton1Click:Connect(function()
    phoneFrame.Visible = false
    musicFrame.Visible = true
end)

settingsBackButton.MouseButton1Click:Connect(function()
    settingsFrame.Visible = false
    phoneFrame.Visible = true
end)

musicBackButton.MouseButton1Click:Connect(function()
    musicFrame.Visible = false
    phoneFrame.Visible = true
end)

-- Update player list
local function updatePlayerList()
    for _, child in ipairs(playerList:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    local yOffset = 0
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(1, -10, 0, 40)
            button.Position = UDim2.new(0, 5, 0, yOffset)
            button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            button.BorderSizePixel = 0
            button.Text = player.Name
            button.TextColor3 = Color3.fromRGB(200, 200, 200)
            button.TextSize = 18
            button.Font = Enum.Font.Gotham
            button.Parent = playerList

            local btnCorner = Instance.new("UICorner")
            btnCorner.CornerRadius = UDim.new(0, 6)
            btnCorner.Parent = button

            button.MouseButton1Click:Connect(function()
                selectedPlayer = player
                for _, otherButton in ipairs(playerList:GetChildren()) do
                    if otherButton:IsA("TextButton") then
                        otherButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                    end
                end
                button.BackgroundColor3 = Color3.fromRGB(0, 80, 200)
            end)

            yOffset = yOffset + 45
        end
    end

    playerList.CanvasSize = UDim2.new(0, 0, 0, yOffset)
end

-- Teleport function
teleportButton.MouseButton1Click:Connect(function()
    if selectedPlayer and selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetPos = selectedPlayer.Character.HumanoidRootPart.Position
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = CFrame.new(targetPos + Vector3.new(0, 3, 0))
        end
    end
end)

-- Change Display Name
nameBox.FocusLost:Connect(function(enterPressed)
    if enterPressed and nameBox.Text ~= "" then
        LocalPlayer.DisplayName = nameBox.Text
    end
end)

-- Toggle Player Glow
glowButton.MouseButton1Click:Connect(function()
    glowEnabled = not glowEnabled
    glowButton.Text = "Toggle Player Glow: " .. (glowEnabled and "On" or "Off")
    if glowEnabled then
        if not highlight then
            highlight = Instance.new("Highlight")
            highlight.FillColor = Color3.fromRGB(255, 255, 255)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.Parent = LocalPlayer.Character
        end
    else
        if highlight then
            highlight:Destroy()
            highlight = nil
        end
    end
end)

-- Toggle WalkSpeed Boost
speedButton.MouseButton1Click:Connect(function()
    speedEnabled = not speedEnabled
    speedButton.Text = "Toggle WalkSpeed Boost: " .. (speedEnabled and "On" or "Off")
    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = speedEnabled and 32 or 16
    end
end)

-- Toggle JumpPower Boost
jumpButton.MouseButton1Click:Connect(function()
    jumpEnabled = not jumpEnabled
    jumpButton.Text = "Toggle JumpPower Boost: " .. (jumpEnabled and "On" or "Off")
    local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.JumpPower = jumpEnabled and 75 or 50
    end
end)

-- Third-Person Toggle
local camera = workspace.CurrentCamera
thirdPersonButton.MouseButton1Click:Connect(function()
    if not thirdPersonLocked then
        thirdPersonEnabled = not thirdPersonEnabled
        thirdPersonButton.Text = "Toggle Third-Person: " .. (thirdPersonEnabled and "On" or "Off")
        if thirdPersonEnabled then
            camera.CameraType = Enum.CameraType.Custom
            RunService:BindToRenderStep("ThirdPersonCamera", Enum.RenderPriority.Camera.Value, function()
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") then
                    local head = LocalPlayer.Character.Head
                    local offset = Vector3.new(0, 2, -15)
                    camera.CFrame = CFrame.new(head.Position) * CFrame.new(offset)
                    camera.Focus = CFrame.new(head.Position)
                end
            end)
        else
            RunService:UnbindFromRenderStep("ThirdPersonCamera")
            camera.CameraType = Enum.CameraType.Custom
            LocalPlayer.CameraMode = Enum.CameraMode.Classic
        end
    end
end)

-- Chat Spam
chatSpamButton.MouseButton1Click:Connect(function()
    chatSpamEnabled = not chatSpamEnabled
    chatSpamButton.Text = "Toggle Chat Spam: " .. (chatSpamEnabled and "On" or "Off")
    if chatSpamEnabled and chatBox.Text ~= "" then
        spawn(function()
            while chatSpamEnabled do
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatBox.Text, "All")
                wait(1)
            end
        end)
    end
end)

-- FOV Slider
fovBox.FocusLost:Connect(function(enterPressed)
    if enterPressed and fovBox.Text ~= "" then
        local fov = tonumber(fovBox.Text)
        if fov and fov >= 50 and fov <= 120 then
            camera.FieldOfView = fov
        end
    end
end)

-- Toggle Character Transparency
transButton.MouseButton1Click:Connect(function()
    transEnabled = not transEnabled
    transButton.Text = "Toggle Transparency: " .. (transEnabled and "On" or "Off")
    local character = LocalPlayer.Character
    if character then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.Transparency = transEnabled and 0.5 or 0
            end
        end
    end
end)

-- Cycle Skybox Color
skyButton.MouseButton1Click:Connect(function()
    currentSkyColor = (currentSkyColor % #skyColors) + 1
    if not skybox then
        skybox = Instance.new("Sky")
        skybox.Parent = Lighting
    end
    skybox.SkyboxBk = "rbxassetid://0"
    skybox.SkyboxFt = "rbxassetid://0"
    skybox.SkyboxLf = "rbxassetid://0"
    skybox.SkyboxRt = "rbxassetid://0"
    skybox.SkyboxUp = "rbxassetid://0"
    skybox.SkyboxDn = "rbxassetid://0"
    skybox.StarCount = 0
    skybox.SunAngularSize = 0
    skybox.MoonAngularSize = 0
    skybox.CelestialBodiesShown = false
    Lighting.Ambient = skyColors[currentSkyColor]
end)

-- Settings Toggles
hideGuiButton.MouseButton1Click:Connect(function()
    hideGuiEnabled = not hideGuiEnabled
    hideGuiButton.Text = "Hide GUI: " .. (hideGuiEnabled and "On" or "Off")
    if hideGuiEnabled then
        frame.Visible = false
    else
        frame.Visible = true
    end
end)

muteSoundButton.MouseButton1Click:Connect(function()
    muteSoundEnabled = not muteSoundEnabled
    muteSoundButton.Text = "Mute Sound: " .. (muteSoundEnabled and "On" or "Off")
    sound.Volume = muteSoundEnabled and 0 or 1
end)

dragToggleButton.MouseButton1Click:Connect(function()
    dragEnabled = not dragEnabled
    dragToggleButton.Text = "GUI Dragging: " .. (dragEnabled and "On" or "Off")
end)

mouseLockButton.MouseButton1Click:Connect(function()
    mouseUnlockEnabled = not mouseUnlockEnabled
    mouseLockButton.Text = "Force Mouse Unlock: " .. (mouseUnlockEnabled and "On" or "Off")
end)

resetFovButton.MouseButton1Click:Connect(function()
    camera.FieldOfView = 70
end)

thirdPersonLockButton.MouseButton1Click:Connect(function()
    thirdPersonLocked = not thirdPersonLocked
    thirdPersonLockButton.Text = "Third-Person Lock: " .. (thirdPersonLocked and "On" or "Off")
    if thirdPersonLocked and thirdPersonEnabled then
        thirdPersonEnabled = false
        thirdPersonButton.Text = "Toggle Third-Person: Off"
        RunService:UnbindFromRenderStep("ThirdPersonCamera")
        camera.CameraType = Enum.CameraType.Custom
        LocalPlayer.CameraMode = Enum.CameraMode.Classic
    end
end)

themeButton.MouseButton1Click:Connect(function()
    themeIndex = themeIndex % #themes + 1
    themeButton.Text = "GUI Theme: " .. themes[themeIndex].name
    frame.BackgroundColor3 = themes[themeIndex].frameColor
    tabFrame.BackgroundColor3 = themes[themeIndex].tabColor
end)

opacityButton.MouseButton1Click:Connect(function()
    opacityIndex = opacityIndex % #opacities + 1
    frame.BackgroundTransparency = opacities[opacityIndex]
    opacityButton.Text = "GUI Opacity: " .. opacities[opacityIndex]
end)

chatVisibilityButton.MouseButton1Click:Connect(function()
    chatVisible = not chatVisible
    chatVisibilityButton.Text = "Chat Visibility: " .. (chatVisible and "On" or "Off")
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, chatVisible)
end)

-- Music Controls
local function formatTime(seconds)
    local mins = math.floor(seconds / 60)
    local secs = math.floor(seconds % 60)
    return string.format("%d:%02d", mins, secs)
end

local function updateSlider()
    if sound.IsLoaded and sound.TimeLength > 0 then
        local progress = sound.TimePosition / sound.TimeLength
        sliderBar.Size = UDim2.new(progress, 0, 1, 0)
        timeDisplay.Text = formatTime(sound.TimePosition) .. " / " .. formatTime(sound.TimeLength)
    end
end

playPauseButton.MouseButton1Click:Connect(function()
    musicPlaying = not musicPlaying
    playPauseButton.Text = musicPlaying and "Pause" or "Play"
    if musicPlaying then
        sound.SoundId = tracks[currentTrack].id
        sound:Play()
    else
        sound:Pause()
    end
end)

nextButton.MouseButton1Click:Connect(function()
    currentTrack = currentTrack % #tracks + 1
    sound.SoundId = tracks[currentTrack].id
    sound.TimePosition = 0
    if musicPlaying then
        sound:Play()
    end
    updateSlider()
end)

local sliderDragging = false
sliderBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        sliderDragging = true
    end
end)

sliderBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        sliderDragging = false
    end
end)

sliderBar.InputChanged:Connect(function(input)
    if sliderDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local mouseX = input.Position.X
        local trackX = sliderTrack.AbsolutePosition.X
        local trackWidth = sliderTrack.AbsoluteSize.X
        local progress = math.clamp((mouseX - trackX) / trackWidth, 0, 1)
        sliderBar.Size = UDim2.new(progress, 0, 1, 0)
        if sound.IsLoaded and sound.TimeLength > 0 then
            sound.TimePosition = progress * sound.TimeLength
        end
    end
end)

RunService.Heartbeat:Connect(function()
    if musicPlaying and sound.IsPlaying then
        updateSlider()
    end
end)

-- Close button handler
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false
    confirmFrame.Visible = true
end)

yesButton.MouseButton1Click:Connect(function()
    sound:Stop()
    screenGui:Destroy()
end)

noButton.MouseButton1Click:Connect(function()
    confirmFrame.Visible = false
    frame.Visible = true
end)

-- RightCtrl Toggle
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightControl then
        if hideGuiEnabled and not frame.Visible then
            frame.Visible = true
        else
            frame.Visible = not frame.Visible
        end
    end
end)

-- Update player list
Players.PlayerAdded:Connect(updatePlayerList)
Players.PlayerRemoving:Connect(updatePlayerList)
updatePlayerList()

-- Draggable GUI
local dragging = false
local dragStart
local startPos

frame.InputBegan:Connect(function(input)
    if dragEnabled and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Mouse Unlock (X or Q key)
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X or input.KeyCode == Enum.KeyCode.Q then
        print("X or Q pressed")
        if mouseUnlockEnabled then
            UserInputService.MouseBehavior = Enum.MouseBehavior.Default
        end
    end
end)

RunService.RenderStepped:Connect(function()
    if (UserInputService:IsKeyDown(Enum.KeyCode.X) or UserInputService:IsKeyDown(Enum.KeyCode.Q)) and mouseUnlockEnabled then
        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    end
end)

-- Ensure character updates
LocalPlayer.CharacterAdded:Connect(function(character)
    if glowEnabled and not highlight then
        highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(255, 255, 255)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Parent = character
    end
    if speedEnabled then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = 32
        end
    end
    if jumpEnabled then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.JumpPower = 75
        end
    end
    if transEnabled then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.Transparency = 0.5
            end
        end
    end
end)

--[[
Created by CDXX from Ez Industries - Join their Discord: https://discord.gg/tuWcU7Q
A redistribution of https://wearedevs.net/scripts

Description: Completely free script hub featuring cheats for some of the most popular games. 
It uses custom scripts and 150+ community made scripts.

Instruction: Execute this script and wait for an interface to appear on your game screen.

]]

-- Don't edit below

_G.DISABLEEXELOG = true

-- Instances:

local Launcher = {
	Launcher = Instance.new("ScreenGui"),
	MainFrame = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	SideFrame = Instance.new("Frame"),
	PlayerPicture = Instance.new("ImageLabel"),
	ImageLabel = Instance.new("ImageLabel"),
	Close = Instance.new("ImageButton"),
	LaunchPage = Instance.new("Frame"),
	Frame = Instance.new("Frame"),
	UICorner_2 = Instance.new("UICorner"),
	Image = Instance.new("ImageButton"),
	SettingPage = Instance.new("Frame"),
	Frame_2 = Instance.new("Frame"),
	UICorner_3 = Instance.new("UICorner"),
	Image_2 = Instance.new("ImageButton"),
	AnimFrame2 = Instance.new("Frame"),
	TextLabel = Instance.new("TextLabel"),
	AnimFrame1 = Instance.new("Frame"),
	EzHubSection = Instance.new("Frame"),
	SectionEs = Instance.new("Folder"),
	Frame_3 = Instance.new("Frame"),
	UICorner_4 = Instance.new("UICorner"),
	Frame_4 = Instance.new("Frame"),
	TextLabel_2 = Instance.new("TextLabel"),
	UICorner_5 = Instance.new("UICorner"),
	VersionSelectorEzHub = Instance.new("Frame"),
	Left = Instance.new("TextButton"),
	Right = Instance.new("TextButton"),
	Display = Instance.new("TextButton"),
	LaunchEzHub = Instance.new("TextButton"),
	UICorner_6 = Instance.new("UICorner"),
	ServerStatusSection = Instance.new("Frame"),
	SectionEs_2 = Instance.new("Folder"),
	Frame_5 = Instance.new("Frame"),
	UICorner_7 = Instance.new("UICorner"),
	Frame_6 = Instance.new("Frame"),
	TextLabel_3 = Instance.new("TextLabel"),
	TextLabel_4 = Instance.new("TextLabel"),
	TextLabel_5 = Instance.new("TextLabel"),
	UICorner_8 = Instance.new("UICorner"),
	EzCMDStatus = Instance.new("TextLabel"),
	EzHubStatus = Instance.new("TextLabel"),
	EzCMDSection = Instance.new("Frame"),
	SectionEs_3 = Instance.new("Folder"),
	Frame_7 = Instance.new("Frame"),
	UICorner_9 = Instance.new("UICorner"),
	Frame_8 = Instance.new("Frame"),
	TextLabel_6 = Instance.new("TextLabel"),
	UICorner_10 = Instance.new("UICorner"),
	LaunchEzCMD = Instance.new("TextButton"),
	UICorner_11 = Instance.new("UICorner"),
	VersionSelectorEzCMD = Instance.new("Frame"),
	Left_2 = Instance.new("TextButton"),
	Display_2 = Instance.new("TextButton"),
	Right_2 = Instance.new("TextButton"),
}

--Properties:

Launcher.Launcher.Name = "Launcher"
Launcher.Launcher.Parent = game.CoreGui
Launcher.Launcher.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Launcher.MainFrame.Name = "MainFrame"
Launcher.MainFrame.Parent = Launcher.Launcher
Launcher.MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.MainFrame.BackgroundColor3 = Color3.fromRGB(41, 53, 68)
Launcher.MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.MainFrame.Size = UDim2.new(0, 410, 0, 278)

Launcher.UICorner.CornerRadius = UDim.new(0, 4)
Launcher.UICorner.Parent = Launcher.MainFrame

Launcher.SideFrame.Name = "SideFrame"
Launcher.SideFrame.Parent = Launcher.MainFrame
Launcher.SideFrame.BackgroundColor3 = Color3.fromRGB(28, 41, 56)
Launcher.SideFrame.BorderSizePixel = 0
Launcher.SideFrame.Size = UDim2.new(0, 69, 0, 278)

Launcher.PlayerPicture.Name = "PlayerPicture"
Launcher.PlayerPicture.Parent = Launcher.SideFrame
Launcher.PlayerPicture.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.PlayerPicture.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.PlayerPicture.BackgroundTransparency = 1.000
Launcher.PlayerPicture.BorderSizePixel = 0
Launcher.PlayerPicture.Position = UDim2.new(0.5, 0, 0, 35)
Launcher.PlayerPicture.Size = UDim2.new(0, 45, 0, 45)
Launcher.PlayerPicture.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

Launcher.ImageLabel.Parent = Launcher.PlayerPicture
Launcher.ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.ImageLabel.BackgroundTransparency = 1.000
Launcher.ImageLabel.BorderSizePixel = 0
Launcher.ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.ImageLabel.Size = UDim2.new(1, 0, 1, 0)
Launcher.ImageLabel.Image = "rbxassetid://4031889928"
Launcher.ImageLabel.ImageColor3 = Color3.fromRGB(28, 41, 56)

Launcher.Close.Name = "Close"
Launcher.Close.Parent = Launcher.SideFrame
Launcher.Close.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Close.BackgroundTransparency = 1.000
Launcher.Close.Position = UDim2.new(0.5, 0, 0.306295037, 0)
Launcher.Close.Size = UDim2.new(0, 16, 0, 16)
Launcher.Close.Image = "http://www.roblox.com/asset/?id=5679295310"
Launcher.Close.ImageColor3 = Color3.fromRGB(211, 216, 226)

Launcher.LaunchPage.Name = "LaunchPage"
Launcher.LaunchPage.Parent = Launcher.SideFrame
Launcher.LaunchPage.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
Launcher.LaunchPage.BorderSizePixel = 0
Launcher.LaunchPage.Position = UDim2.new(0, 0, 0.410071939, 0)
Launcher.LaunchPage.Size = UDim2.new(1, 0, 0, 50)

Launcher.Frame.Parent = Launcher.LaunchPage
Launcher.Frame.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.Frame.Size = UDim2.new(0, 2, 1, 0)

Launcher.UICorner_2.Parent = Launcher.Frame

Launcher.Image.Name = "Image"
Launcher.Image.Parent = Launcher.LaunchPage
Launcher.Image.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Image.BackgroundTransparency = 1.000
Launcher.Image.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.Image.Size = UDim2.new(0, 22, 0, 22)
Launcher.Image.Image = "http://www.roblox.com/asset/?id=2876994160"

Launcher.SettingPage.Name = "SettingPage"
Launcher.SettingPage.Parent = Launcher.SideFrame
Launcher.SettingPage.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
Launcher.SettingPage.BackgroundTransparency = 1.000
Launcher.SettingPage.BorderSizePixel = 0
Launcher.SettingPage.Position = UDim2.new(0, 0, 0.587769806, 0)
Launcher.SettingPage.Size = UDim2.new(1, 0, 0, 50)

Launcher.Frame_2.Parent = Launcher.SettingPage
Launcher.Frame_2.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.Frame_2.Size = UDim2.new(0, 2, 1, 0)
Launcher.Frame_2.Visible = false

Launcher.UICorner_3.Parent = Launcher.Frame_2

Launcher.Image_2.Name = "Image"
Launcher.Image_2.Parent = Launcher.SettingPage
Launcher.Image_2.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.Image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Image_2.BackgroundTransparency = 1.000
Launcher.Image_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.Image_2.Size = UDim2.new(0, 15, 0, 15)
Launcher.Image_2.Image = "http://www.roblox.com/asset/?id=4492476121"

Launcher.AnimFrame2.Name = "AnimFrame2"
Launcher.AnimFrame2.Parent = Launcher.MainFrame
Launcher.AnimFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.AnimFrame2.BackgroundTransparency = 1.000
Launcher.AnimFrame2.Position = UDim2.new(0.168292686, 0, 0, 0)
Launcher.AnimFrame2.Size = UDim2.new(0, 341, 0, 278)
Launcher.AnimFrame2.Visible = false

Launcher.TextLabel.Parent = Launcher.AnimFrame2
Launcher.TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel.BackgroundTransparency = 1.000
Launcher.TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.TextLabel.Size = UDim2.new(0, 200, 0, 50)
Launcher.TextLabel.Font = Enum.Font.SourceSans
Launcher.TextLabel.Text = "This feature is not done yet"
Launcher.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel.TextSize = 20.000

Launcher.AnimFrame1.Name = "AnimFrame1"
Launcher.AnimFrame1.Parent = Launcher.MainFrame
Launcher.AnimFrame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.AnimFrame1.BackgroundTransparency = 1.000
Launcher.AnimFrame1.Position = UDim2.new(0.168292686, 0, 0, 0)
Launcher.AnimFrame1.Size = UDim2.new(0, 341, 0, 278)
Launcher.AnimFrame1.Visible = false

Launcher.EzHubSection.Name = "EzHubSection"
Launcher.EzHubSection.Parent = Launcher.AnimFrame1
Launcher.EzHubSection.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.EzHubSection.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
Launcher.EzHubSection.BorderSizePixel = 0
Launcher.EzHubSection.Position = UDim2.new(0.260997087, 0, 0.696402788, 0)
Launcher.EzHubSection.Size = UDim2.new(0, 150, 0, 116)

Launcher.SectionEs.Name = "SectionEs"
Launcher.SectionEs.Parent = Launcher.EzHubSection

Launcher.Frame_3.Parent = Launcher.SectionEs
Launcher.Frame_3.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.Frame_3.Size = UDim2.new(0, 2, 0, 36)

Launcher.UICorner_4.Parent = Launcher.Frame_3

Launcher.Frame_4.Parent = Launcher.SectionEs
Launcher.Frame_4.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
Launcher.Frame_4.BackgroundTransparency = 0.750
Launcher.Frame_4.BorderSizePixel = 0
Launcher.Frame_4.Position = UDim2.new(0, 0, 0.294290125, 0)
Launcher.Frame_4.Size = UDim2.new(1, 0, 0, 1)

Launcher.TextLabel_2.Parent = Launcher.SectionEs
Launcher.TextLabel_2.AnchorPoint = Vector2.new(1, 0)
Launcher.TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel_2.BackgroundTransparency = 1.000
Launcher.TextLabel_2.Position = UDim2.new(1, 0, 0.0439999998, 0)
Launcher.TextLabel_2.Size = UDim2.new(0.899999976, 0, 0, 24)
Launcher.TextLabel_2.Font = Enum.Font.SourceSans
Launcher.TextLabel_2.Text = "Ez Hub"
Launcher.TextLabel_2.TextColor3 = Color3.fromRGB(211, 216, 226)
Launcher.TextLabel_2.TextSize = 14.000
Launcher.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Launcher.UICorner_5.CornerRadius = UDim.new(0, 4)
Launcher.UICorner_5.Parent = Launcher.EzHubSection

Launcher.VersionSelectorEzHub.Name = "VersionSelectorEzHub"
Launcher.VersionSelectorEzHub.Parent = Launcher.EzHubSection
Launcher.VersionSelectorEzHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.VersionSelectorEzHub.BackgroundTransparency = 1.000
Launcher.VersionSelectorEzHub.Position = UDim2.new(0, 10, 0.414000005, 0)
Launcher.VersionSelectorEzHub.Size = UDim2.new(0, 86, 0, 28)

Launcher.Left.Name = "Left"
Launcher.Left.Parent = Launcher.VersionSelectorEzHub
Launcher.Left.AnchorPoint = Vector2.new(0, 0.5)
Launcher.Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Left.BackgroundTransparency = 1.000
Launcher.Left.Position = UDim2.new(0, 0, 0.5, 0)
Launcher.Left.Size = UDim2.new(0, 20, 0, 20)
Launcher.Left.Font = Enum.Font.SourceSans
Launcher.Left.Text = "<"
Launcher.Left.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Left.TextSize = 14.000

Launcher.Right.Name = "Right"
Launcher.Right.Parent = Launcher.VersionSelectorEzHub
Launcher.Right.AnchorPoint = Vector2.new(1, 0.5)
Launcher.Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Right.BackgroundTransparency = 1.000
Launcher.Right.Position = UDim2.new(1, 0, 0.5, 0)
Launcher.Right.Size = UDim2.new(0, 20, 0, 20)
Launcher.Right.Font = Enum.Font.SourceSans
Launcher.Right.Text = ">"
Launcher.Right.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Right.TextSize = 14.000

Launcher.Display.Name = "Display"
Launcher.Display.Parent = Launcher.VersionSelectorEzHub
Launcher.Display.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.Display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Display.BackgroundTransparency = 1.000
Launcher.Display.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.Display.Size = UDim2.new(0, 55, 0, 20)
Launcher.Display.Font = Enum.Font.SourceSans
Launcher.Display.Text = "V 3.3"
Launcher.Display.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Display.TextSize = 14.000

Launcher.LaunchEzHub.Name = "LaunchEzHub"
Launcher.LaunchEzHub.Parent = Launcher.EzHubSection
Launcher.LaunchEzHub.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.LaunchEzHub.Position = UDim2.new(0, 10, 0.720000029, 0)
Launcher.LaunchEzHub.Size = UDim2.new(0, 86, 0, 22)
Launcher.LaunchEzHub.Font = Enum.Font.SourceSans
Launcher.LaunchEzHub.Text = "Launch"
Launcher.LaunchEzHub.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.LaunchEzHub.TextSize = 14.000

Launcher.UICorner_6.CornerRadius = UDim.new(0, 4)
Launcher.UICorner_6.Parent = Launcher.LaunchEzHub

Launcher.ServerStatusSection.Name = "ServerStatusSection"
Launcher.ServerStatusSection.Parent = Launcher.AnimFrame1
Launcher.ServerStatusSection.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.ServerStatusSection.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
Launcher.ServerStatusSection.BorderSizePixel = 0
Launcher.ServerStatusSection.Position = UDim2.new(0.5, 0, 0.0701438859, 50)
Launcher.ServerStatusSection.Size = UDim2.new(0, 312, 0, 116)

Launcher.SectionEs_2.Name = "SectionEs"
Launcher.SectionEs_2.Parent = Launcher.ServerStatusSection

Launcher.Frame_5.Parent = Launcher.SectionEs_2
Launcher.Frame_5.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.Frame_5.Size = UDim2.new(0, 2, 0, 36)

Launcher.UICorner_7.Parent = Launcher.Frame_5

Launcher.Frame_6.Parent = Launcher.SectionEs_2
Launcher.Frame_6.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
Launcher.Frame_6.BackgroundTransparency = 0.750
Launcher.Frame_6.BorderSizePixel = 0
Launcher.Frame_6.Position = UDim2.new(0, 0, 0.294290125, 0)
Launcher.Frame_6.Size = UDim2.new(1, 0, 0, 1)

Launcher.TextLabel_3.Parent = Launcher.SectionEs_2
Launcher.TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel_3.BackgroundTransparency = 1.000
Launcher.TextLabel_3.Position = UDim2.new(0.0416666679, 0, 0.0435512774, 0)
Launcher.TextLabel_3.Size = UDim2.new(0, 299, 0, 24)
Launcher.TextLabel_3.Font = Enum.Font.SourceSans
Launcher.TextLabel_3.Text = "Server Status"
Launcher.TextLabel_3.TextColor3 = Color3.fromRGB(211, 216, 226)
Launcher.TextLabel_3.TextSize = 14.000
Launcher.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

Launcher.TextLabel_4.Parent = Launcher.ServerStatusSection
Launcher.TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel_4.BackgroundTransparency = 1.000
Launcher.TextLabel_4.Position = UDim2.new(0.699999988, 0, 0.5, 0)
Launcher.TextLabel_4.Size = UDim2.new(0, 50, 0, 30)
Launcher.TextLabel_4.Font = Enum.Font.SourceSans
Launcher.TextLabel_4.Text = "Ez CMD"
Launcher.TextLabel_4.TextColor3 = Color3.fromRGB(92, 106, 124)
Launcher.TextLabel_4.TextSize = 14.000

Launcher.TextLabel_5.Parent = Launcher.ServerStatusSection
Launcher.TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel_5.BackgroundTransparency = 1.000
Launcher.TextLabel_5.Position = UDim2.new(0.300000012, 0, 0.5, 0)
Launcher.TextLabel_5.Size = UDim2.new(0, 50, 0, 30)
Launcher.TextLabel_5.Font = Enum.Font.SourceSans
Launcher.TextLabel_5.Text = "Ez Hub"
Launcher.TextLabel_5.TextColor3 = Color3.fromRGB(92, 106, 124)
Launcher.TextLabel_5.TextSize = 14.000

Launcher.UICorner_8.CornerRadius = UDim.new(0, 4)
Launcher.UICorner_8.Parent = Launcher.ServerStatusSection

Launcher.EzCMDStatus.Name = "EzCMDStatus"
Launcher.EzCMDStatus.Parent = Launcher.ServerStatusSection
Launcher.EzCMDStatus.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.EzCMDStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.EzCMDStatus.BackgroundTransparency = 1.000
Launcher.EzCMDStatus.Position = UDim2.new(0.698461592, 0, 0.758620679, 0)
Launcher.EzCMDStatus.Size = UDim2.new(0, 50, 0, 30)
Launcher.EzCMDStatus.Font = Enum.Font.SourceSans
Launcher.EzCMDStatus.Text = "Online"
Launcher.EzCMDStatus.TextColor3 = Color3.fromRGB(45, 192, 179)
Launcher.EzCMDStatus.TextSize = 22.000

Launcher.EzHubStatus.Name = "EzHubStatus"
Launcher.EzHubStatus.Parent = Launcher.ServerStatusSection
Launcher.EzHubStatus.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.EzHubStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.EzHubStatus.BackgroundTransparency = 1.000
Launcher.EzHubStatus.Position = UDim2.new(0.297820538, 0, 0.758620679, 0)
Launcher.EzHubStatus.Size = UDim2.new(0, 50, 0, 30)
Launcher.EzHubStatus.Font = Enum.Font.SourceSans
Launcher.EzHubStatus.Text = "Online"
Launcher.EzHubStatus.TextColor3 = Color3.fromRGB(45, 192, 179)
Launcher.EzHubStatus.TextSize = 22.000

Launcher.EzCMDSection.Name = "EzCMDSection"
Launcher.EzCMDSection.Parent = Launcher.AnimFrame1
Launcher.EzCMDSection.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.EzCMDSection.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
Launcher.EzCMDSection.BorderSizePixel = 0
Launcher.EzCMDSection.Position = UDim2.new(0.736070395, 0, 0.696402788, 0)
Launcher.EzCMDSection.Size = UDim2.new(0, 150, 0, 116)

Launcher.SectionEs_3.Name = "SectionEs"
Launcher.SectionEs_3.Parent = Launcher.EzCMDSection

Launcher.Frame_7.Parent = Launcher.SectionEs_3
Launcher.Frame_7.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.Frame_7.Size = UDim2.new(0, 2, 0, 36)

Launcher.UICorner_9.Parent = Launcher.Frame_7

Launcher.Frame_8.Parent = Launcher.SectionEs_3
Launcher.Frame_8.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
Launcher.Frame_8.BackgroundTransparency = 0.750
Launcher.Frame_8.BorderSizePixel = 0
Launcher.Frame_8.Position = UDim2.new(0, 0, 0.294290125, 0)
Launcher.Frame_8.Size = UDim2.new(1, 0, 0, 1)

Launcher.TextLabel_6.Parent = Launcher.SectionEs_3
Launcher.TextLabel_6.AnchorPoint = Vector2.new(1, 0)
Launcher.TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.TextLabel_6.BackgroundTransparency = 1.000
Launcher.TextLabel_6.Position = UDim2.new(1, 0, 0.0439999998, 0)
Launcher.TextLabel_6.Size = UDim2.new(0.899999976, 0, 0, 24)
Launcher.TextLabel_6.Font = Enum.Font.SourceSans
Launcher.TextLabel_6.Text = "Ez CMD"
Launcher.TextLabel_6.TextColor3 = Color3.fromRGB(211, 216, 226)
Launcher.TextLabel_6.TextSize = 14.000
Launcher.TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

Launcher.UICorner_10.CornerRadius = UDim.new(0, 4)
Launcher.UICorner_10.Parent = Launcher.EzCMDSection

Launcher.LaunchEzCMD.Name = "LaunchEzCMD"
Launcher.LaunchEzCMD.Parent = Launcher.EzCMDSection
Launcher.LaunchEzCMD.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
Launcher.LaunchEzCMD.Position = UDim2.new(0, 10, 0.720000029, 0)
Launcher.LaunchEzCMD.Size = UDim2.new(0, 86, 0, 22)
Launcher.LaunchEzCMD.Font = Enum.Font.SourceSans
Launcher.LaunchEzCMD.Text = "Launch"
Launcher.LaunchEzCMD.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.LaunchEzCMD.TextSize = 14.000

Launcher.UICorner_11.CornerRadius = UDim.new(0, 4)
Launcher.UICorner_11.Parent = Launcher.LaunchEzCMD

Launcher.VersionSelectorEzCMD.Name = "VersionSelectorEzCMD"
Launcher.VersionSelectorEzCMD.Parent = Launcher.EzCMDSection
Launcher.VersionSelectorEzCMD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.VersionSelectorEzCMD.BackgroundTransparency = 1.000
Launcher.VersionSelectorEzCMD.Position = UDim2.new(0, 10, 0.414000005, 0)
Launcher.VersionSelectorEzCMD.Size = UDim2.new(0, 86, 0, 28)

Launcher.Left_2.Name = "Left"
Launcher.Left_2.Parent = Launcher.VersionSelectorEzCMD
Launcher.Left_2.AnchorPoint = Vector2.new(0, 0.5)
Launcher.Left_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Left_2.BackgroundTransparency = 1.000
Launcher.Left_2.Position = UDim2.new(0, 0, 0.5, 0)
Launcher.Left_2.Size = UDim2.new(0, 20, 0, 20)
Launcher.Left_2.Font = Enum.Font.SourceSans
Launcher.Left_2.Text = "<"
Launcher.Left_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Left_2.TextSize = 14.000

Launcher.Display_2.Name = "Display"
Launcher.Display_2.Parent = Launcher.VersionSelectorEzCMD
Launcher.Display_2.AnchorPoint = Vector2.new(0.5, 0.5)
Launcher.Display_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Display_2.BackgroundTransparency = 1.000
Launcher.Display_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Launcher.Display_2.Size = UDim2.new(0, 55, 0, 20)
Launcher.Display_2.Font = Enum.Font.SourceSans
Launcher.Display_2.Text = "N/A"
Launcher.Display_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Display_2.TextSize = 14.000

Launcher.Right_2.Name = "Right"
Launcher.Right_2.Parent = Launcher.VersionSelectorEzCMD
Launcher.Right_2.AnchorPoint = Vector2.new(1, 0.5)
Launcher.Right_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Right_2.BackgroundTransparency = 1.000
Launcher.Right_2.Position = UDim2.new(1, 0, 0.5, 0)
Launcher.Right_2.Size = UDim2.new(0, 20, 0, 20)
Launcher.Right_2.Font = Enum.Font.SourceSans
Launcher.Right_2.Text = ">"
Launcher.Right_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Launcher.Right_2.TextSize = 14.000

-----------------------------------------------------------------------------

-- Start-Up Animations

Launcher.MainFrame.Size = UDim2.new(0,0,0,0)
Launcher.MainFrame.ClipsDescendants = true
Launcher.MainFrame:TweenSize(UDim2.new(0, 410, 0, 278), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true)

for i,v in pairs(Launcher.MainFrame:GetChildren()) do
	if v:IsA("Frame") and string.find(v.Name:lower(), "animframe") then
		v.Visible = true
		v.Position = UDim2.new(1, 0, 0, 0)
	end
end

Launcher.SideFrame.Position = UDim2.new(0, 0, 1, 0)

local PanelInfo = game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Main'),true)
local FormattedInfo = string.split(PanelInfo, ", ")
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players").LocalPlayer.UserId, thumbType, thumbSize)
local timeIncrement = 0;
repeat wait() timeIncrement = timeIncrement + .03
	if timeIncrement >= 5 then
		break
	end
until isReady
wait(.5)

Launcher.SideFrame:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true)
Launcher.AnimFrame1:TweenPosition(UDim2.new(0.168, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true)

-----------------------------------------------------------------------------

-- Backwards compatibility (EZ HUB)
--[[
do
	local a;
	a = hookfunction(game.HttpGet, function(self, url)
		if url == "https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/ExclusivesModule.txt" then
			url = "https://raw.githubusercontent.com/debug420/Ez-Hub/master/Modules/ExclusiveV1.json"
		elseif url == "https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/ExclusivesV2Module.txt" then
			url = "https://raw.githubusercontent.com/debug420/Ez-Hub/master/Modules/ExclusivesV2.json"
		elseif url == "https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/EzLib.lua" then
			url = "https://raw.githubusercontent.com/debug420/Ez-Hub/master/Modules/EzLib.lua"
		elseif url == "https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/RepostedModule.txt" then
			url = "https://raw.githubusercontent.com/debug420/Ez-Hub/master/Modules/RepostedModule.json"
		elseif url == "https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/lexermodule.lua" then
			url = "https://raw.githubusercontent.com/debug420/Ez-Hub/master/Modules/LexerModule.lua"
		end
		return a(self, url)
	end)
end
]]--

-----------------------------------------------------------------------------

local function AppColor(box)
	local t = box.Text:lower()
	if t == "online" then
		return Color3.fromRGB(45, 192, 179)
	elseif t == "maintenance" or t == "updating" then
		return Color3.fromRGB(192, 177, 14)
	elseif t == "offline" or "down" then
		return Color3.fromRGB(192, 49, 52)
	end
	return Color3.fromRGB(45, 192, 179);
end

Launcher.EzHubStatus.Text = FormattedInfo[2]:gsub("%s+", "")
Launcher.EzCMDStatus.Text = FormattedInfo[3]:gsub("%s+", "")
Launcher.EzCMDStatus.TextColor3 = AppColor(Launcher.EzCMDStatus)
Launcher.EzHubStatus.TextColor3 = AppColor(Launcher.EzHubStatus)
Launcher.PlayerPicture.Image = content

-----------------------------------------------------------------------------

-- Apply Version Selection Func

local EzHubV = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Versions"))

local EzCMDV = {}

function GetValWithIndex(ind, t)
	for i,v in pairs(t) do
		if v[1] == ind then
			return {i, v};
		end
	end	
end

function GetLargestIndex(t)
	local l = 0
	for i,v in pairs(t) do
		if v[1] > l then l = v[1] end
	end
	return l;
end

local SelectedEzCMDV = "https://raw.githubusercontent.com/debug420/Ez-CMD/master/EzCMD.lua"
local SelectedEzHubV = (function() for i,v in pairs(EzHubV) do 
		if v[1] == GetLargestIndex(EzHubV) then
			return v[2];
		end		
end end)()



function ApplyVSF(Frame, t)
	assert(Frame.Display, "Invalid Frame supplied to VSF Func")
	assert(Frame.Left, "Invalid Frame supplied to VSF Func")
	assert(Frame.Right, "Invalid Frame supplied to VSF Func")

	local IndexVal = Instance.new("IntValue", Frame)
	IndexVal.Value = GetLargestIndex(t)
	Frame.Display.Text = "V "..GetValWithIndex(GetLargestIndex(t), t)[1]
	Frame.Left.MouseButton1Click:Connect(function()
		if IndexVal.Value > 1 then
			IndexVal.Value = IndexVal.Value - 1
		else
			IndexVal.Value = GetLargestIndex(t)
		end

		Frame.Display.Text = "V "..GetValWithIndex(IndexVal.Value, t)[1]
	end)
	Frame.Right.MouseButton1Click:Connect(function()
		if IndexVal.Value < GetLargestIndex(t) then
			IndexVal.Value = IndexVal.Value + 1
		else
			IndexVal.Value = 1
		end

		Frame.Display.Text = "V "..GetValWithIndex(IndexVal.Value, t)[1]
	end)
end

ApplyVSF(Launcher.VersionSelectorEzHub, EzHubV);

-----------------------------------------------------------------------------

-- Launch

local launchdebounce = true

Launcher.LaunchEzHub.MouseButton1Click:Connect(function()
	
	if Launcher.EzHubStatus.TextColor3 == Color3.fromRGB(192, 49, 52) or Launcher.EzHubStatus.TextColor3 == Color3.fromRGB(192, 177, 14) then
		if launchdebounce then
			launchdebounce = false
			Launcher.LaunchEzHub.Text = "Service Down"
			wait(1)
			game.StarterGui:SetCore("SendNotification", {
				Title = "Ez Industries",
				Text = "Ez Hub is currently offline. Join Discord for more info."
			})
			Launcher.LaunchEzHub.Text = "Launch"
			launchdebounce = true
			return;
		end
	end
	
	if launchdebounce then
		SelectedEzHubV = EzHubV[Launcher.VersionSelectorEzHub.Display.Text:gsub("V ", "")][2]
		launchdebounce = false
		Launcher.LaunchEzHub.Text = "Launching..."
		pcall(function() loadstring(game:HttpGet(SelectedEzHubV))() end)
		Launcher.LaunchEzHub.Text = "Launch"
		launchdebounce = true
	end
	
end)

Launcher.LaunchEzCMD.MouseButton1Click:Connect(function()
	if launchdebounce then
		launchdebounce = false
		Launcher.LaunchEzCMD.Text = "Launching..."
		pcall(function() loadstring(game:HttpGet(SelectedEzCMDV))() end)
		Launcher.LaunchEzCMD.Text = "Launch"
		launchdebounce = true
	end
end)

-----------------------------------------------------------------------------

-- Tab System

local tabdebounce = true
function OpenTab(tabtoclose, taptoopen)
	if tabtoclose then
		tabtoclose:TweenPosition(UDim2.new(1, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
		wait(0.5)
	end
	if taptoopen then
		taptoopen:TweenPosition(UDim2.new(0.168, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
	end
end

function LaunchPageF()
	if tabdebounce == false then return end;
	tabdebounce = false
	spawn(function()
		OpenTab(Launcher.AnimFrame2, Launcher.AnimFrame1)
	end)
	Launcher.LaunchPage.BackgroundTransparency = 0
	Launcher.SettingPage.BackgroundTransparency = 1
	
	Launcher.LaunchPage.Frame.Visible = true
	Launcher.SettingPage.Frame.Visible = false
	wait(1)
	tabdebounce = true
end

function SettingPageF()
	if tabdebounce == false then return end;
	tabdebounce = false
	spawn(function()
		OpenTab(Launcher.AnimFrame1, Launcher.AnimFrame2)
	end)
	Launcher.LaunchPage.BackgroundTransparency = 1
	Launcher.SettingPage.BackgroundTransparency = 0
	
	Launcher.LaunchPage.Frame.Visible = false
	Launcher.SettingPage.Frame.Visible = true
	wait(1)
	tabdebounce = true
end

Launcher.LaunchPage.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		LaunchPageF()
	end
end)

Launcher.SettingPage.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		SettingPageF()
	end
end)

Launcher.LaunchPage.Image.MouseButton1Click:Connect(function()
	LaunchPageF()
end)

Launcher.SettingPage.Image.MouseButton1Click:Connect(function()
	SettingPageF()
end)

-----------------------------------------------------------------------------

-- Close

Launcher.Close.MouseButton1Click:Connect(function()
	Launcher.Launcher:Destroy()
end)

-----------------------------------------------------------------------------

-- Draggability

local function dragify(MainFrame)

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(.15), {Position = Position}):Play()
	end

	MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	MainFrame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

dragify(Launcher.MainFrame)

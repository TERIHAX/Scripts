--Credits:EfeStyle#4948
--Thank you for using hack enjoy
local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local Open = Instance.new("TextButton")
local main = Instance.new("Frame")
local CrimBase = Instance.new("TextButton")
local Bank = Instance.new("TextButton")
local JeweIn = Instance.new("TextButton")
local JeweExit = Instance.new("TextButton")
local Jail = Instance.new("TextButton")
local WeaponShop = Instance.new("TextButton")
local HeroBase = Instance.new("TextButton")
local Casino = Instance.new("TextButton")
local Goto = Instance.new("TextButton")
local SetSpeed = Instance.new("TextButton")
local ComingSoon = Instance.new("TextButton")
local TeleportBox = Instance.new("TextBox")
local SpeedBox = Instance.new("TextBox")
local ComingSoon_2 = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local ExitGui = Instance.new("TextButton")
local AutoRob = Instance.new("TextButton")
local GetAllWeapons = Instance.new("TextButton")
local MadCityGui = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local AutoArrest = Instance.new("TextButton")
local Gravity = Instance.new("TextButton")
local ComingSoon_3 = Instance.new("TextButton")
local ComingSoon_4 = Instance.new("TextButton")
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local humanoid = player.Character.Humanoid
local Speed = SpeedBox.Text
--Properties:
ScreenGui.Parent = game.CoreGui

frame.Name = "frame"
frame.Parent = ScreenGui
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Position = UDim2.new(-0.00109648705, 0, 0.679810703, 0)
frame.Size = UDim2.new(0, 74, 0, 27)
frame.Style = Enum.FrameStyle.DropShadow

Open.Name = "Open"
Open.Parent = frame
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.89999997615814
Open.Position = UDim2.new(-0.133949667, 0, -0.0548453629, 0)
Open.Size = UDim2.new(0, 70, 0, 12)
Open.Font = Enum.Font.SciFi
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 14
Open.MouseButton1Down:connect(function()
main.Visible = true
frame.Visible = false
end)

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(1, 1, 1)
main.Position = UDim2.new(0.240131557, 0, 0.291798204, 0)
main.Size = UDim2.new(0, 302, 0, 324)
main.Visible = false
main.Style = Enum.FrameStyle.DropShadow
main.Visible = false
main.Active = true
main.Draggable = true

CrimBase.Name = "CrimBase"
CrimBase.Parent = main
CrimBase.BackgroundColor3 = Color3.new(0, 0, 0)
CrimBase.BackgroundTransparency = 0.89999997615814
CrimBase.Position = UDim2.new(-0.0123112574, 0, 0.0746913552, 0)
CrimBase.Size = UDim2.new(0, 60, 0, 20)
CrimBase.Font = Enum.Font.SourceSans
CrimBase.Text = "CrimBase"
CrimBase.TextColor3 = Color3.new(1, 1, 1)
CrimBase.TextSize = 14
CrimBase.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2138, 25, 392)
end)

Bank.Name = "Bank"
Bank.Parent = main
Bank.BackgroundColor3 = Color3.new(0, 0, 0)
Bank.BackgroundTransparency = 0.89999997615814
Bank.Position = UDim2.new(-0.0123112574, 0, 0.18580249, 0)
Bank.Size = UDim2.new(0, 60, 0, 20)
Bank.Font = Enum.Font.SourceSans
Bank.Text = "Bank"
Bank.TextColor3 = Color3.new(1, 1, 1)
Bank.TextSize = 14
Bank.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(758, 0, 478)
end)

JeweIn.Name = "Jewe In"
JeweIn.Parent = main
JeweIn.BackgroundColor3 = Color3.new(0, 0, 0)
JeweIn.BackgroundTransparency = 0.89999997615814
JeweIn.Position = UDim2.new(-0.0123112593, 0, 0.306172878, 0)
JeweIn.Size = UDim2.new(0, 60, 0, 20)
JeweIn.Font = Enum.Font.SourceSans
JeweIn.Text = "Jewe In"
JeweIn.TextColor3 = Color3.new(1, 1, 1)
JeweIn.TextSize = 14
JeweIn.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-274, 29, 785)
end)

JeweExit.Name = "Jewe Exit"
JeweExit.Parent = main
JeweExit.BackgroundColor3 = Color3.new(0, 0, 0)
JeweExit.BackgroundTransparency = 0.89999997615814
JeweExit.Position = UDim2.new(-0.0123112593, 0, 0.432716072, 0)
JeweExit.Size = UDim2.new(0, 60, 0, 20)
JeweExit.Font = Enum.Font.SourceSans
JeweExit.Text = "Jewe Exit"
JeweExit.TextColor3 = Color3.new(1, 1, 1)
JeweExit.TextSize = 14
JeweExit.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-81, 24, 733)
end)

Jail.Name = "Jail"
Jail.Parent = main
Jail.BackgroundColor3 = Color3.new(0, 0, 0)
Jail.BackgroundTransparency = 0.89999997615814
Jail.Position = UDim2.new(0.79563576, 0, 0.43580243, 0)
Jail.Size = UDim2.new(0, 60, 0, 20)
Jail.Font = Enum.Font.SourceSans
Jail.Text = "Jail"
Jail.TextColor3 = Color3.new(1, 1, 1)
Jail.TextSize = 14
Jail.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1055, 52, -3083)
end)

WeaponShop.Name = "Weapon Shop"
WeaponShop.Parent = main
WeaponShop.BackgroundColor3 = Color3.new(0, 0, 0)
WeaponShop.BackgroundTransparency = 0.89999997615814
WeaponShop.Position = UDim2.new(0.79563576, 0, 0.0746913254, 0)
WeaponShop.Size = UDim2.new(0, 60, 0, 20)
WeaponShop.Font = Enum.Font.SourceSans
WeaponShop.Text = "Weapon Shop"
WeaponShop.TextColor3 = Color3.new(1, 1, 1)
WeaponShop.TextSize = 13
WeaponShop.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1652, 42, 678)
end)

HeroBase.Name = "HeroBase"
HeroBase.Parent = main
HeroBase.BackgroundColor3 = Color3.new(0, 0, 0)
HeroBase.BackgroundTransparency = 0.89999997615814
HeroBase.Position = UDim2.new(0.79563576, 0, 0.18580243, 0)
HeroBase.Size = UDim2.new(0, 60, 0, 20)
HeroBase.Font = Enum.Font.SourceSans
HeroBase.Text = "HeroBase"
HeroBase.TextColor3 = Color3.new(1, 1, 1)
HeroBase.TextSize = 13
HeroBase.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1749, 75, 1601)
end)

Casino.Name = "Casino"
Casino.Parent = main
Casino.BackgroundColor3 = Color3.new(0, 0, 0)
Casino.BackgroundTransparency = 0.89999997615814
Casino.Position = UDim2.new(0.792324543, 0, 0.306172788, 0)
Casino.Size = UDim2.new(0, 60, 0, 20)
Casino.Font = Enum.Font.SourceSans
Casino.Text = "Casino"
Casino.TextColor3 = Color3.new(1, 1, 1)
Casino.TextSize = 13
Casino.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1660, 25, 525)
end)

Goto.Name = "Goto"
Goto.Parent = main
Goto.BackgroundColor3 = Color3.new(0, 0, 0)
Goto.BackgroundTransparency = 0.89999997615814
Goto.Position = UDim2.new(0.789013207, 0, 0.599382579, 0)
Goto.Size = UDim2.new(0, 60, 0, 20)
Goto.Font = Enum.Font.SourceSans
Goto.Text = "Goto"
Goto.TextColor3 = Color3.new(1, 1, 1)
Goto.TextSize = 13
Goto.MouseButton1Down:connect(function()
	local target = game.Players:FindFirstChild(PN.Text)
	local yes = target.Character.HumanoidRootPart.CFrame
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	print("You just tp'd to "..TeleportBox.Text.." yesyes")
end)

SetSpeed.Name = "SetSpeed"
SetSpeed.Parent = main
SetSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
SetSpeed.BackgroundTransparency = 0.89999997615814
SetSpeed.Position = UDim2.new(0.792324483, 0, 0.713580191, 0)
SetSpeed.Size = UDim2.new(0, 60, 0, 20)
SetSpeed.Font = Enum.Font.SourceSans
SetSpeed.Text = "SetSpeed"
SetSpeed.TextColor3 = Color3.new(1, 1, 1)
SetSpeed.TextSize = 13
SetSpeed.MouseButton1Down:connect(function()
local humanoid = player.Character.Humanoid
	local Speed = SpeedBox.Text
	while wait() do
		humanoid.WalkSpeed = Speed
	end
end)

ComingSoon.Name = "Coming Soon"
ComingSoon.Parent = main
ComingSoon.BackgroundColor3 = Color3.new(0, 0, 0)
ComingSoon.BackgroundTransparency = 0.89999997615814
ComingSoon.Position = UDim2.new(0.252589405, 0, 0.43580249, 0)
ComingSoon.Size = UDim2.new(0, 60, 0, 20)
ComingSoon.Font = Enum.Font.SourceSans
ComingSoon.Text = "Coming Soon"
ComingSoon.TextColor3 = Color3.new(1, 1, 1)
ComingSoon.TextSize = 14

TeleportBox.Name = "TeleportBox"
TeleportBox.Parent = main
TeleportBox.BackgroundColor3 = Color3.new(1, 1, 1)
TeleportBox.Position = UDim2.new(0.25391683, 0, 0.611339569, 0)
TeleportBox.Size = UDim2.new(0, 140, 0, 14)
TeleportBox.Font = Enum.Font.SourceSans
TeleportBox.Text = ""
TeleportBox.TextColor3 = Color3.new(0, 0, 0)
TeleportBox.TextSize = 14

SpeedBox.Name = "SpeedBox"
SpeedBox.Parent = main
SpeedBox.BackgroundColor3 = Color3.new(1, 1, 1)
SpeedBox.Position = UDim2.new(0.25391683, 0, 0.725537121, 0)
SpeedBox.Size = UDim2.new(0, 140, 0, 14)
SpeedBox.Font = Enum.Font.SourceSans
SpeedBox.Text = ""
SpeedBox.TextColor3 = Color3.new(0, 0, 0)
SpeedBox.TextSize = 14

ComingSoon_2.Name = "Coming Soon"
ComingSoon_2.Parent = main
ComingSoon_2.BackgroundColor3 = Color3.new(0, 0, 0)
ComingSoon_2.BackgroundTransparency = 0.89999997615814
ComingSoon_2.Position = UDim2.new(0.517490208, 0, 0.43580249, 0)
ComingSoon_2.Size = UDim2.new(0, 60, 0, 20)
ComingSoon_2.Font = Enum.Font.SourceSans
ComingSoon_2.Text = "Coming Soon"
ComingSoon_2.TextColor3 = Color3.new(1, 1, 1)
ComingSoon_2.TextSize = 14

Close.Name = "Close"
Close.Parent = main
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BackgroundTransparency = 0.89999997615814
Close.Position = UDim2.new(0.935000002, 0, -0.00999999978, 0)
Close.Size = UDim2.new(0, 20, 0, 19)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14
Close.MouseButton1Down:connect(function()
frame.Visible = true
main.Visible = false
end)

ExitGui.Name = "Exit Gui"
ExitGui.Parent = main
ExitGui.BackgroundColor3 = Color3.new(0, 0, 0)
ExitGui.BackgroundTransparency = 0.89999997615814
ExitGui.Position = UDim2.new(-0.00899999961, 0, 0.93599999, 0)
ExitGui.Size = UDim2.new(0, 60, 0, 20)
ExitGui.Font = Enum.Font.SourceSans
ExitGui.Text = "Exit Gui"
ExitGui.TextColor3 = Color3.new(1, 1, 1)
ExitGui.TextSize = 14
ExitGui.MouseButton1Down:connect(function()
frame.Visible = false
main.Visible = false
end)

AutoRob.Name = "AutoRob"
AutoRob.Parent = main
AutoRob.BackgroundColor3 = Color3.new(0, 0, 0)
AutoRob.BackgroundTransparency = 0.89999997615814
AutoRob.Position = UDim2.new(0.517490089, 0, 0.0746913776, 0)
AutoRob.Size = UDim2.new(0, 60, 0, 20)
AutoRob.Font = Enum.Font.SourceSans
AutoRob.Text = "AutoRob"
AutoRob.TextColor3 = Color3.new(1, 1, 1)
AutoRob.TextSize = 13
AutoRob.MouseButton1Down:connect(function()
--// Vars
local WS = game:GetService("Workspace")
local ObjectSelection = WS:WaitForChild("ObjectSelection")

for _,v in pairs (ObjectSelection:GetChildren()) do 
if v.Name == "CashRegister" then 
if v:FindFirstChild("SmashCash") then 
local Event = v.SmashCash.SmashCash.Event
Event:FireServer()
end
end
if v.Name == "ATM" then 
if v:FindFirstChild("ATM") then
local Event = v.ATM.ATM.Event
Event:FireServer()
end
end
if v.Name == "Cash" then 
if v:FindFirstChild("Cash") then 
local Event = v.Cash.Cash.Event
Event:FireServer()
end
end
if v.Name == "DiamondBox" then 
if v:FindFirstChild("SmashCash") then 
local Event = v.SmashCash.SmashCash.Event
Event:FireServer()
end
end
if v.Name == "Safe" then 
if v:FindFirstChild("SmashCash") then 
local Event = v.SmashCash.SmashCash.Event
Event:FireServer()
end
end
if v.Name == "SlotMachine" then 
if v:FindFirstChild("SlotMachine") then 
local Event = v.SlotMachine.SlotMachine.Event
Event:FireServer()
end
end
end
end)

GetAllWeapons.Name = "Get All Weapons"
GetAllWeapons.Parent = main
GetAllWeapons.BackgroundColor3 = Color3.new(0, 0, 0)
GetAllWeapons.BackgroundTransparency = 0.89999997615814
GetAllWeapons.Position = UDim2.new(0.516607344, 0, 0.188553631, 0)
GetAllWeapons.Size = UDim2.new(0, 60, 0, 20)
GetAllWeapons.Font = Enum.Font.SourceSans
GetAllWeapons.Text = "Get All Weapons"
GetAllWeapons.TextColor3 = Color3.new(1, 1, 1)
GetAllWeapons.TextSize = 11
GetAllWeapons.MouseButton1Down:connect(function()

local Remote = game.Workspace.ObjectSelection.Shotgun.Shotgun.Shotgun['Event']

local Arguments = {
       
}

Remote:FireServer(unpack(Arguments))


local Remote = game.Workspace.ObjectSelection.MP5.MP5.MP5['Event']


local Arguments = {
       
}

Remote:FireServer(unpack(Arguments))


local Remote = game.Workspace.ObjectSelection.Baton.Baton.Baton['Event']


local Arguments = {
       
}

Remote:FireServer(unpack(Arguments))

local Remote = game.Workspace.ObjectSelection.Spoon.Spoon.Spoon['Event']


local Arguments = {
       
}

Remote:FireServer(unpack(Arguments))
end)

MadCityGui.Name = "Mad City Gui"
MadCityGui.Parent = main
MadCityGui.BackgroundColor3 = Color3.new(0, 0, 0)
MadCityGui.BackgroundTransparency = 0.89999997615814
MadCityGui.Position = UDim2.new(0.276522994, 0, -0.00548694469, 0)
MadCityGui.Size = UDim2.new(0, 135, 0, 14)
MadCityGui.Font = Enum.Font.SourceSans
MadCityGui.Text = "Mad City Gui"
MadCityGui.TextColor3 = Color3.new(1, 1, 1)
MadCityGui.TextSize = 14

Credits.Name = "Credits"
Credits.Parent = main
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.BackgroundTransparency = 0.89999997615814
Credits.Position = UDim2.new(0.518244863, 0, 0.954389632, 0)
Credits.Size = UDim2.new(0, 135, 0, 14)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Credits:efestyle#4948"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextSize = 14

AutoArrest.Name = "AutoArrest"
AutoArrest.Parent = main
AutoArrest.BackgroundColor3 = Color3.new(0, 0, 0)
AutoArrest.BackgroundTransparency = 0.89999997615814
AutoArrest.Position = UDim2.new(0.516607404, 0, 0.30892399, 0)
AutoArrest.Size = UDim2.new(0, 60, 0, 20)
AutoArrest.Font = Enum.Font.SourceSans
AutoArrest.Text = "AutoArrest(OFF)"
AutoArrest.TextColor3 = Color3.new(1, 1, 1)
AutoArrest.TextSize = 11
AutoArrest.MouseButton1Down:connect(function()
	while wait() do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Handcuffs)
		game.ReplicatedStorage.Event:FireServer("Equip", game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Character.Handcuffs.Handle)
		for i,v in pairs(game.Players:GetChildren()) do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
			wait(0.25)
			game.ReplicatedStorage.Event:FireServer("Arrest", v)
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0,0)
		end
			wait(0.25)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -1000,0)
			game.Players.LocalPlayer.Character:BreakJoints()
			wait(20)
	end
end)

Gravity.Name = "Gravity"
Gravity.Parent = main
Gravity.BackgroundColor3 = Color3.new(0, 0, 0)
Gravity.BackgroundTransparency = 0.89999997615814
Gravity.Position = UDim2.new(0.249278143, 0, 0.0716049522, 0)
Gravity.Size = UDim2.new(0, 60, 0, 20)
Gravity.Font = Enum.Font.SourceSans
Gravity.Text = "Gravity"
Gravity.TextColor3 = Color3.new(1, 1, 1)
Gravity.TextSize = 14
Gravity.MouseButton1Down:connect(function()
	if gr == true then
		gr = false
		game.workspace.Gravity = 195
		Gravity.Text = "Gravity [OFF]"
	else
		gr = true
		game.workspace.Gravity = 45
		Gravity.Text = "Gravity [ON]"
	end
end)

ComingSoon_3.Name = "Coming Soon"
ComingSoon_3.Parent = main
ComingSoon_3.BackgroundColor3 = Color3.new(0, 0, 0)
ComingSoon_3.BackgroundTransparency = 0.89999997615814
ComingSoon_3.Position = UDim2.new(0.249278143, 0, 0.18580249, 0)
ComingSoon_3.Size = UDim2.new(0, 60, 0, 20)
ComingSoon_3.Font = Enum.Font.SourceSans
ComingSoon_3.Text = "Coming Soon"
ComingSoon_3.TextColor3 = Color3.new(1, 1, 1)
ComingSoon_3.TextSize = 14

ComingSoon_4.Name = "Coming Soon"
ComingSoon_4.Parent = main
ComingSoon_4.BackgroundColor3 = Color3.new(0, 0, 0)
ComingSoon_4.BackgroundTransparency = 0.89999997615814
ComingSoon_4.Position = UDim2.new(0.252589405, 0, 0.30308643, 0)
ComingSoon_4.Size = UDim2.new(0, 60, 0, 20)
ComingSoon_4.Font = Enum.Font.SourceSans
ComingSoon_4.Text = "Coming Soon"
ComingSoon_4.TextColor3 = Color3.new(1, 1, 1)
ComingSoon_4.TextSize = 14
-- Scripts:

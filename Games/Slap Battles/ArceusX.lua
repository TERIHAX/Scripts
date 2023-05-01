--Copied key, Sharable, Anti-Bot
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "ArceusX's Slap Battle Hub",
   LoadingTitle = "loading assets",
   LoadingSubtitle = "Made by ArceusX#3428",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "OP SB"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", 
      RememberJoins = true 
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key Anti-Bot",
      Subtitle = "Key System",
      Note = "Copied Key",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"sawnicskid is da best"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local ExploiTab = Window:CreateTab("Exploits", 4483362458) -- Title, Image
local VSection = ExploiTab:CreateSection("Main")
local Toggle = ExploiTab:CreateToggle({
   Name = "Slap Aura",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    getgenv().SlapAura = bool

            if bool == true then

                while getgenv().SlapAura do

                    task.wait(.005)
                        
                        pcall(function()
                            
                        for Index, Player in next, game.Players:GetPlayers() do
                            
                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
                                
                                if Player.Character:FindFirstChild("Head") then
                                    
                                if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
                                    
                                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

                                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
                                    
                                    if 25 >= Magnitude then
                                        
                                        shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))
                                        
                                end
                                    
                                    end
                            end
                                
                                end
                        end
                        
                        end
                    end)
                end
                
            end
    
   end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Auto Enter Arena",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    getgenv().autoJoin = bool

            if bool == true then

                while getgenv().autoJoin do

                    wait()
                        
                        repeat task.wait() until game.Players.LocalPlayer.Character
                    
                        if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            
                            repeat task.wait(.005)
                                
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                            
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

                            until game.Players.LocalPlayer.Character:FindFirstChild("entered")
                            
                        end
                
                end
                
            end
    end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Disable Cube of Death",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     if bool == true then
        
        if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
            
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        
        end
        
        else
            
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
                
                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true

            end

        end
        
    end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Invisible, Ghost Required",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     
        autoInvis = bool

            game.Players.LocalPlayer.CharacterAdded:Connect(function()

                if autoInvis == true and 666 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

        
                    repeat task.wait()  
                    
                    until game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("Nametag") ~= nil
                    
                    game.Players.LocalPlayer.Character.Head.Nametag:Destroy()

                    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

                    task.wait(.1)

                    local gloveClick = game.Players.LocalPlayer.leaderstats.Glove.Value

                    task.wait(.2)

                    fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)

                    task.wait(.2)

                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

                    task.wait(.2)

                    fireclickdetector(game.Workspace.Lobby[gloveClick].ClickDetector)

                end

            end)
    end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Hide Name Tag FE",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     
       Auto_Remove = bool
        
        if bool == true then
        
        game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
            
            task.wait()
            
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
                
                if Auto_Remove == true then
                    
                repeat task.wait()
                    
                until game.Players.LocalPlayer.Character:FindFirstChild("Head")
                
                game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
                    
                end
                
            end)
    
        end
        
    end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Invisible Reverse FE",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     
       Invis_Reverse = bool
        
        if bool == true then
        
        while Invis_Reverse do
        
            repeat wait(.005) until game.Players.LocalPlayer.Character:FindFirstChild("SelectionBox", 1) and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("UnoReverseCard")

            game.Players.LocalPlayer.Character.Head["UnoReverseCard"]:Destroy()

            for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    
                if v.Name == "SelectionBox" then
                
                v:Destroy()
        
                end
            
            end
        
        end
        
        end
        
    end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Fish Farm",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     
       fishFarm = bool
    
        if bool == true then
            
        if game.Players.LocalPlayer.Character:FindFirstChild("entered") and getGlove() == "ZZZZZZZ" then
            
            print("READY")

            task.wait()
            
            print("-------------------------------------------")
            
            task.wait()
            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed [ OvErCrInGe02#0658 ] "].Bed3.CFrame * CFrame.new(0,0,-1)
            
            task.wait(.5)
            
            game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
            
        else
            
            print("FAILED TO TELEPORT TO SAFE SPOT PLEASE DO IT MANUALLY")
        
        end
        
        task.wait()
        
            while fishFarm and task.wait() do
        
                if getGlove() == "ZZZZZZZ" and workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("entered") then
                
                    if workspace:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("Ragdolled").Value then
                    
                        task.wait(1)
                    
                        Time = 1 -- Editor Bug ( Works )
                        
                        print(Time)
                    
                    else
                    
                    Time = 0
                    
                    end
                
                end

            end
    
        else
        
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        
        end
    
    end,
})
local Toggle = ExploiTab:CreateToggle({
   Name = "Stay Tycoon",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     
         if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) then
            
            if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
                
            repeat task.wait(.5)
                                
            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
                            
            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
                            
            until game.Players.LocalPlayer.Character:FindFirstChild("entered")
            
            else
                
            end
            
            repeat task.wait(.5)
                
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0)
                
            until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) 
            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)

        end
        
    end,
})
local Toggle = ExploiTab:CreateToggle({
    Name = "Stay Tycoon v2",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     
           local Door = 1

        if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) and 5000 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

        repeat
    
        task.wait(.25)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PocketDimension.Doors[Door].CFrame

        Door = Door + 1

        print(Door)

        wait(5)

        until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850)

        else 

        print("YOU ALREADY HAVE [ R E D A C T E D ] !!")

        print("OR YOU DONT HAVE 5K SLAPS")

        end
        
    end,
})
local Slider = ExploiTab:CreateSlider({
   Name = "CFrame Speed v2, Set speed Below",
   Range = {0, 450},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(WS)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
        WS1 = WS
   end,
})
local Toggle = ExploiTab:CreateToggle({
    Name = "Set Speed",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
      autoSet1 = bool
        if bool == true then
            while autoSet1 do
                task.wait()
                local Character = workspace:WaitForChild(game.Players.LocalPlayer.Name)
                if Character:FindFirstChild("Humanoid") ~= nil and Character.Humanoid.WalkSpeed ~= WS1 then
                    Character:FindFirstChild("Humanoid").WalkSpeed = WS1
                end
            end
        end
    end,
})
local AntiTab = Window:CreateTab("Features", 4483362458) -- Title, Image
local ASection = AntiTab:CreateSection("Some script will not work")
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Ragdoll",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    antiRagdoll = bool
        
        if bool == true then
            
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        
        task.wait()
        
        game.Players.LocalPlayer.CharacterAdded:Connect(function()

            local Character = game.Workspace[game.Players.LocalPlayer.Name]
            
            task.wait()
            
            Character:WaitForChild("Ragdolled").Changed:Connect(function()
                
                if Character:WaitForChild("Ragdolled").Value == true and antiRagdoll == true 
                
                  then
                    
                    repeat task.wait()
                        
                    Character.Torso.Anchored = true
                        
                    until Character:FindFirstChild("Torso") == nil or Character:WaitForChild("Ragdolled").Value == false
                    
                    Character.Torso.Anchored = false

                end
                
            end)
            
        end)
        
        end
            
    end,
})

local Toggle = AntiTab:CreateToggle({
    Name = "Admin Detector V2",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     antiAdmins = bool
    
    if bool == true then
           
        game.Players.PlayerAdded:Connect(function(Plr)
            
            if Plr:GetRankInGroup(9950771) and 7 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                local args = {
    [1] = "ADMIN LOSER DETECTED, USER IS SERVER HOPPING",
    [2] = "All"
 
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(3)
                game.Players.LocalPlayer:Kick("Loser Admin detected, You can server hop to escape")
            end
            
        end)
        
    end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Hallow Jack Effect",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
      antiHallow = bool
        
        if bool == true then
            
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true
        
        else
        
            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true
        
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Za Hando aka Anti-Trolled",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
      getgenv().AntiZaHando = bool
        
        if bool == true then
            
            while getgenv().AntiZaHando do
                
                wait(.001)
                
                for i,v in pairs(game.Workspace:GetChildren()) do
                    
                    if v.ClassName == "Part" and v.Name == "Part" then
                        
                        v:Destroy()
                    
                    end
                    
                end
                
            end
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Reaper",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
        
      getgenv().AntiReaper = bool
        
        if bool == true then
            
            while getgenv().AntiReaper do
            
                wait(.001)
            
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

                    if v.Name == "DeathMark" then

                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)

                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 

                    end 
        
                end
            
            end
            
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Booster",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
   antiBooster = bool
        
        if bool == true then
            
            if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1) then
            
                game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1):Destroy()
            
            end
        
            task.wait()
            
            game.Workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function(v)
                
                if antiBooster == true then
                    
                    if v.Name == "BoosterObject" then
                        
                        task.wait(.1)
                        
                        v:Destroy()
                        
                    end
                    
                end
                
            end)
            
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Mail Pop-up aka Anti-Annoy",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
    antiMail = bool
        
        if bool == true then
            
            game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(UI)
                
                if antiMail == true then
                    
                    if UI.Name == "MailPopup" then
                    
                        UI.Frame.Visible = false
                        
                        task.wait()
                        
                        game.Players.LocalPlayer.Character.Head.MailIcon:Destroy()
                    
                    end
                
                end
                
            end)
        else
        
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MailPopup") then
            
            game.Players.LocalPlayer.PlayerGui.MailPopup.Frame.Visible = true
        
            task.wait()
            
        end
        
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Stun",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     antiStun = bool
        
        if bool == true then
            
            while antiStun do
                
            task.wait()
            
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true and not Farming and not allFarming and not game.Players.LocalPlayer.Character.Ragdolled.Value == true and game.Workspace:FindFirstChild("Shockwave") then
                
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                
            end
            
            end
            
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Megarock/Custom",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
      AntiRock = bool
        
        if bool == true then
            
            while AntiRock do
                
                task.wait(.1)
                
        for _, Instance in pairs(game.Workspace:GetDescendants()) do
                    
            if Instance.Name == "rock" and Instance.CanTouch == true then

                Instance.CanTouch = false
                        
                Instance.CanQuery = false
                        
            end
                    
                    
        end
                
            end
            
        else
        
        task.wait(.1)  
        
        for _, Instance in pairs(game.Workspace:GetDescendants()) do
                    
            if Instance.Name == "rock" and Instance.CanTouch == false then
                
                task.wait()
                
                Instance.CanTouch = true
                        
                Instance.CanQuery = true
                        
            end
        
        end
            
        end
                
    
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Squid Pop-up",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
 AntiSquid = bool
        
        if bool == true then
            
            while AntiSquid do
            
            task.wait()
            
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.SquidInk:GetChildren()) do
                
                if v.Parent then
                    
                    v:Destroy()
                    
                end
                
            end
            
            end
        
        end
        
    end,
})
local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Void",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
if noVoid == true then
            
            for i,v in pairs(game.Workspace:GetDescendants()) do
                
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then
           
                    if v.CanCollide == false then
               
                        v.CanCollide = true
                        
                        v.Material = "ForceField"
                        
                        v.Color = Color3.new(255,255,255)
                        
                        v.Transparency = .9
               
                    end
           
                end
                
            end
            
            else
                
            for i,v in pairs(game.Workspace:GetDescendants()) do
                
                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then
           
                    if v.CanCollide == true then
               
                        v.CanCollide = false
                        
                        v.Transparency = 1
               
                    end
           
                end
                
            end
        
        end
    
    end
})
local TrellTab = Window:CreateTab("FE Trolls", 4483362458) -- Title, Image
local TSection = TrellTab:CreateSection("Some script isnt FE")
local Toggle = TrellTab:CreateToggle({
    Name = "Spam Error Sound FE No error required",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
   errorSpam = bool
        
        if bool == true then
            
            while errorSpam do
                
                task.wait()
                
                game.ReplicatedStorage.ErrorDeath:FireServer()
                
            end
        end
        
    end,
})
local Toggle = TrellTab:CreateToggle({
    Name = "Spam Thanos Glove ( Thanos Require, Loud )",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
   autoThanos = bool
        
        if bool == true then
            
            while autoThanos do
                
                task.wait()

                if getGlove() == "Thanos" then
    
                    task.wait()
                    
                    game.ReplicatedStorage.Illbeback:FireServer()
                
                end
            end
        end
        
    end,
})
local Toggle = TrellTab:CreateToggle({
    Name = "Spam Space Glove, Require Space",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     spamSpace = bool
    
    if bool == true then
        
        while spamSpace do
            
            task.wait()
            
            if getGlove() == "Space" then
                game.ReplicatedStorage["ZeroGSound"]:FireServer()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)

            end
            
        end
        
    else
        for x = 1,5 do
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
        end

        
    end
    
    end,
})
local Toggle = TrellTab:CreateToggle({
    Name = "Spam Ping Pong Ball, 18K",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(bool)
     spamBall = bool 
    
    if bool == true then
        
        while spamBall and task.wait() do 
            
            if getGlove() == "Ping Pong" then 
                
                game.ReplicatedStorage.GeneralAbility:FireServer()

            end 
            
        end 
        
    end
    
    end,
})
local CrediTab = Window:CreateTab("Credits", 4483362458) -- Title, Image
local CDSection = CrediTab:CreateSection("Player why r u here???")
--Dawg why are you here
local Button = CrediTab:CreateButton({
   Name = "sawnicskid#3706",
   Callback = function()   
   end,
})
local Button = CrediTab:CreateButton({
   Name = "Coems Coder#3847",
   Callback = function()
   end,
})
local Button = CrediTab:CreateButton({
   Name = "Anakin#3568",
   Callback = function()   
   end,
})
local Button = CrediTab:CreateButton({
   Name = "ezmundion#0069",
   Callback = function()   
   end,
})
local Button = CrediTab:CreateButton({
   Name = "OWNER: ArceusX#3428", -- I SEE YOU TYPING HERE >:(
   Callback = function()
   --DONT SKID HERE YOU NEED TO SCROLL UP FAST
   end,
})

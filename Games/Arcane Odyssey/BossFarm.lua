--made by: Cynexia#3185
--boss farm for AO game link: https://www.roblox.com/games/3272915504/Arcane-Odyssey-Early-Access
--pls don't make fun of my code i'm really bad at scripting
getgenv().weapon_name = "Swift Lion's Halberd" --Enter weapon name
getgenv().enemy_name = "BOSS_NAME" --Enter boss name

-------------------------------------------------------------------------

local plr = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local sg = game:GetService("StarterGui")
local enemy_folder = workspace.Enemies
local replicated_store = game:GetService("ReplicatedStorage")
local damage_remote = replicated_store.RS.Remotes.Combat.DealWeaponDamage
local c

local s,errMsg = pcall(function()
    if weapon_name == "" then
        sg:SetCore("SendNotification",{
          Title = "ERROR",
          Text = "Enter the name of your weapon.",
          Duration = 2
        })              
    end
    if enemy_name == "" then
        sg:SetCore("SendNotification",{
          Title = "ERROR",
          Text = "Enter the name of your boss.",
          Duration = 2
        })              
    end
    
    c = rs.RenderStepped:Connect(function()
        if weapon_name ~= "" and enemy_name ~= "" then
            if workspace:FindFirstChild(tostring(plr)) then
               local char = workspace[tostring(plr)]
              
               if char:FindFirstChild("HumanoidRootPart") then
                   local char_rp = char.HumanoidRootPart  
                  
                    if not char_rp:FindFirstChild("BodyVelocity") then
                        --stops our screen from doing a shakey shakey
                        local body_vel = Instance.new("BodyVelocity",char_rp)
                          
                        body_vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                        body_vel.Velocity = Vector3.new(0,0,0)
                    end
                    
                   if plr.Backpack:FindFirstChild(weapon_name) then
                      plr.Backpack[weapon_name].Parent = char
                   end
                  
                   --checks if a tool which isn't selected by the player is equipped
                   for i,v in pairs(char:GetChildren()) do
                       if v:IsA("Tool") and v.Name ~= weapon_name then
                           v.Parent = plr.Backpack
                        end
                    end
                end
            end
            
            if enemy_folder:FindFirstChild(enemy_name) and workspace:FindFirstChild(tostring(plr)) then  
                local char = workspace[tostring(plr)]
                local enemy = enemy_folder[enemy_name]
                if char:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Humanoid") then
                   local char_rp = char.HumanoidRootPart
                   local e_rp = enemy.HumanoidRootPart
                   local e_hum = enemy.Humanoid
                  
                   e_rp.Anchored = true
                   char_rp.CFrame = e_rp.CFrame*CFrame.new(0,0,5)
                  
                   if e_hum.Health <= 0 then
                       enemy:Destroy()
                   end
            
                    damage_remote:FireServer(0,char,enemy,char:FindFirstChild(weapon_name),"Slash")
                end
            end
        end
    end)
end)

if errMsg then
   print(errMsg)
   if c then c:Disconnect() end
end

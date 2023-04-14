-- Credits to Reverential (https://v3rmillion.net/member.php?action=profile&uid=302999)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character

local FishStateRemote = ReplicatedStorage.RS.Remotes.Misc.FishState
local ToolActionRemote = ReplicatedStorage.RS.Remotes.Misc.ToolAction

local AutoFish = true
local LegitMode = true
local PreventPull = false
local CustomRodName = "Magnetic Wooden Rod"

local function GetFishingRodTool(Parent)
    if Parent:FindFirstChild(CustomRodName) then
        return Parent[CustomRodName]
    else
        for i,v in ipairs(Parent:GetChildren()) do
            if string.find(v.Name, "Rod") then
                return v
            end
        end
    end
end

task.defer(function()
    local FishingRod = GetFishingRodTool(Character)
            
    if FishingRod then
        ToolActionRemote:FireServer(GetFishingRodTool(Character))
    else
        GetFishingRodTool(Backpack).Parent = Character
    end
    
    task.wait(.5)
    
    ToolActionRemote:FireServer(GetFishingRodTool(Character))
end)

local Connection; Connection = Character.DescendantAdded:Connect(function(Descendant)
    if Descendant.Name == "FishCaught" then
        local CachedPosition = Character.HumanoidRootPart.Position
        
        if PreventPull and not LegitMode then
            Character.HumanoidRootPart.Anchored = true
        end
        
        repeat
            if not LegitMode then
                FishStateRemote:FireServer("Reel")
            end
            
            ToolActionRemote:FireServer(GetFishingRodTool(Character))
            
            task.wait()
        until not Character:FindFirstChild("FishClock")
        
        ToolActionRemote:FireServer(GetFishingRodTool(Character))
        
        task.wait(1)
        
        if LegitMode and (Character.HumanoidRootPart.Position - CachedPosition).Magnitude < 20 then
            Character.Humanoid:MoveTo(CachedPosition)
        end
        
        if not AutoFish then
            Connection:Disconnect()
            
            Character.HumanoidRootPart.Anchored = false
        else
            local FishingRod = GetFishingRodTool(Character)
            
            if not FishingRod then
                GetFishingRodTool(Backpack).Parent = Character
            end
            
            task.wait(3)
            
            Character.HumanoidRootPart.Anchored = false
            
            ToolActionRemote:FireServer(GetFishingRodTool(Character))
        end
    end
end)

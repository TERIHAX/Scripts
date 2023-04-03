-- Made by Decta --
local players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

isFishing = false

function getFishingRod(backpack)
    if not (backpack) then
        chars = players.LocalPlayer.Character:GetChildren()
    else
        chars =  players.LocalPlayer.Backpack:GetChildren()
    end
    local rod = nil
    for index,child in pairs(chars) do
        if( string.match(child.Name,"Rod") == "Rod") then
            if not ( backpack ) then
                rodName = child.Name
            end
            if backpack and child.Name ~= rodName then continue end
            rod = child
            break
        end
    end
    if (rod) then  
        return rod
    end
end

function triggerRod()
    local rod = getFishingRod()
    if not (rod) then 
        return rod 
    end 
    local toolEvent = ReplicatedStorage.RS.Remotes.Misc:WaitForChild("ToolAction")
    toolEvent:FireServer(rod)
end

function startFishing()
    if not(isFishing) then
        triggerRod()
        isFishing = true
        return true
    else
        return false
    end
end

destroy = false
enable = false
lastPos = Vector3.new(0,0,0)
rodName = ""
UserInputService.InputBegan:Connect(function(input)
    if(input.KeyCode == Enum.KeyCode.U and destroy==false) then
        destroy = true
        print("destroyed")
    end
    if(input.KeyCode == Enum.KeyCode.Y) and destroy == false then
        if not (enable) and getFishingRod() then
            triggerRod()
            enable = true
            isFishing = true
        end
    end
end)
gotfish = false
lastGotFish = false
while wait(0.1) and destroy == false do 
    if enable then
        local ply = players.LocalPlayer
        local pmodel = ply.Character
        local root = pmodel.HumanoidRootPart
        spawn(function()
            local GotFish = pmodel:FindFirstChild("FishBiteGoal")
            if(GotFish.value)then
                rodName = getFishingRod().Name
                triggerRod()
                gotfish = true
            end
        end)
        if(lastGotFish ~= gotfish and not (gotfish)) then
            -- unequip then equp the fishing rod 
            local rod = getFishingRod()
            rod.Parent = ply.Backpack
            wait(1)
            rod.Parent = ply.Character
            wait(1)
            isFishing = true
            triggerRod()
        end
        lastGotFish = gotfish
        if(gotfish)then
            gotfish = false
        else
            startFishing()    
        end
        spawn(function()
            local rod = getFishingRod(true)
            if(rod)then
                enable = false
                isFishing = false
            end
        end)    
        local currentPos = pmodel.HumanoidRootPart.Position
        if((lastPos - currentPos).magnitude > 1.9) then
            isFishing = false    
        end
        lastPos = currentPos
    end
end

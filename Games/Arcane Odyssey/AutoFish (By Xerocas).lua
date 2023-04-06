-- By Xerocas (https://v3rmillion.net/member.php?action=profile&uid=2977289)

local localPlayer = game:GetService("Players").LocalPlayer
local character = localPlayer.Character

local RS = game:GetService("ReplicatedStorage").RS
local misc = RS.Remotes.Misc

local fishState = misc.FishState
local fishClock = misc.FishClock
local toolAction = misc.ToolAction


local function GetRod(rod)
    for i,v in ipairs(localPlayer:WaitForChild("Backpack"):GetChildren()) do
        if v:IsA("Tool") and string.match(v.Name, rod) then
            return v
        end
    end

    for i,v in ipairs(character:GetChildren()) do
        if v:IsA("Tool") and string.match(v.Name, rod) then
            return v
        end
    end
en


shared.AutoFish = false -- toggle autofish

while true do
    local rod = GetRod("Wooden Rod") -- rod that you want to use

    if not shared.AutoFish then
        fishState:FireServer("StopClock")
        break
    end

    -- silent fishing (don't have to hold rod)
    if not character:FindFirstChild("FishClock") then
        fishClock:FireServer(rod, nil, Vector3.new(19760, 400, 700))
    elseif character:FindFirstChild("FishBiteGoal") then
        fishState:FireServer("Reel")
    end


    --[[
        replace code with this if you want legit mode (have to hold the rod to use)
        if not character:FindFirstChild("FishClock") then
            toolAction:FireServer(rod)
            task.wait(3.5)
        elseif character:FindFirstChild("FishBiteGoal") then
            toolAction:FireServer(rod)
        end
    ]]--

    task.wait()
end

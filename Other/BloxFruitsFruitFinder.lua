_G.DelayTime = 12 -- This is required you cant possibly set it to zero the script wont work,it will be defaulted to 12 seconds(Recommended), you can change it to a higher value until the script works for you

wait(_G.DelayTime)

RootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
Character = game:GetService("Players").LocalPlayer.Character
LocalPlayer = game:GetService("Players").LocalPlayer


if _G.Team == 0 then
    local MyUiButton = game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton

    for i,v in pairs(getconnections(MyUiButton.MouseButton1Click)) do
    v.Function()
    end
elseif _G.Team == 1 then
    local MyUiButton = game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton

    for i,v in pairs(getconnections(MyUiButton.MouseButton1Click)) do
    v.Function()
    end
end

wait(5)


function FRUITtp()
RootPart.CFrame = game:GetService("Workspace")[_G.Fruit].Handle.CFrame
Fruit = Character:WaitForChild(_G.Fruit)
if _G.EATFRUIT == true then
Fruit:WaitForChild("EatRemote"):InvokeServer("Player")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)   
end
if game:GetService("Workspace").NPCs:FindFirstChild("Bandit Quest Giver") ~= nil then
   RootPart.CFrame = CFrame.new(1159,16.5,1346)
else RootPart.CFrame = CFrame.new(-430, 73, 297)
end
if _G.EATFRUIT == false then
if game:GetService("Workspace").NPCs:FindFirstChild("Bandit Quest Giver") ~= nil then
   RootPart.CFrame = CFrame.new(1159,16.5,1346)
else RootPart.CFrame = CFrame.new(-430, 73, 297)
end
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)   
end 
end 

local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
 
local File =
    pcall(
    function()
        AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
    end
)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
end
function TPReturner()
    local Site
    if foundAnything == "" then
        Site =
            game.HttpService:JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100")
        )
    else
        Site =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" ..
                    PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
            )
        )
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0
    for i, v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile =
                            pcall(
                            function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end
                        )
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(
                    function()
                        writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                            PlaceID,
                            ID,
                            game.Players.LocalPlayer
                        )
                    end
                )
                wait(4)
            end
        end
    end
end
 
function Teleport()
    while wait() do
        pcall(
            function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end
        )
    end
end


if game:GetService("Workspace"):FindFirstChild(_G.Fruit) ~= nil then
   FRUITtp()
   else Teleport()
end

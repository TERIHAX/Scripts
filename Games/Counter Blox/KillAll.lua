getgenv().TeamCheck = true -- true/false
getgenv().KillAll = true -- true/false

local mt = getrawmetatable(game)
setreadonly(mt, false)
local nc = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
local Method = getnamecallmethod()
local Args = {...}

if Method == 'FireServer' and self.Name == 'HitPart' and KillAll then

for i,v in next, game.Players.GetPlayers(game.Players) do
    if v ~= game.Players.LocalPlayer and ((TeamCheck and v.Team ~= game.Players.LocalPlayer.Team) or (not TeamCheck and true)) then
    if v.Character.FindFirstChild(v.Character, 'Head') and v.Character.FindFirstChild(v.Character, 'Humanoid') and v.Character.Humanoid.Health ~= 0 then
    local Player = v

    Args[1] = Player.Character.Head
    Args[2] = Player.Character.Head.Position

    for i = 1, 3 do
        nc(self, unpack(Args))
        end
        end
        end
        end
    end

    return nc(self, ...)
end)

--made by The3Bakers#4565
--discord link https://discord.gg/vQQqcgBWCG
_G.Aimbot_Settings={
    Enabled=true,--true,false  set to true to enable aimbot set to false to disable
    Silent=false,--true,false  set to true to enable silent aim mode, set to false to disable silent aim
    Target="Head",--All,Ends,LeftHand,Abdomen,RightLeg,Hips,RightFoot,LeftArm,LeftForearm,RightForearm,RightForeleg,RightHand,Chest,RightArm,Neck,Head,LeftForeleg,LeftLeg,LeftFoot
    Auto_Shoot=false,--true,false  set to true to automaticly shoot enemys when you aim,set to false to disable
    Auto_Aim=false,--true,false  set to true to automaticly aim and target players,set to false to disable
    Aim_Out_Delay=.25,--0-inf  amount of time before it unaims if auto aim is on
    Fov=50,--0-inf  aimbot circle size
    Show_Fov=true,--true,false  set to true to make circle visible, set to false to disable
    Fov_Color=Color3.fromRGB(255,0,0),--circle color
    Ignore_Fov=false,--true,false  set to true to disable fov circle check,set to false to enable fov circle check
    Ignore_Walls=false,--true,false  set to true to enable wallbang set to false to disable
}

if _G.Aimbot_Settings.Ignore_Walls then--wallbang without loop O_o
    debug.setupvalue(require(game.ReplicatedStorage.TS).Raycast.CastGeometryAndEnemies,1,nil)--remove geometry from list
    debug.setupvalue(require(game.ReplicatedStorage.TS).Raycast.CastGeometryAndEnemies,2,nil)--remove terrain from list
else
    debug.setupvalue(require(game.ReplicatedStorage.TS).Raycast.CastGeometryAndEnemies,1,game.Workspace.Geometry)--add geomtry to list
    debug.setupvalue(require(game.ReplicatedStorage.TS).Raycast.CastGeometryAndEnemies,2,game.Workspace.Terrain)--add terrain to list
end
_G.Targets={}--targeting system
if _G.Aimbot_Settings.Target=="All"then--if we target all then add everypart to list
    _G.Targets={"LeftHand","Abdomen","RightLeg","Hips","RightFoot","LeftArm","LeftForearm","RightForearm","RightForeleg","RightHand","Chest","RightArm","Neck","Head","LeftForeleg","LeftLeg","LeftFoot"}
elseif _G.Aimbot_Settings.Target=="Ends"then--if edges then we add every end to list
    _G.Targets={"LeftHand","RightFoot","RightHand","Head","LeftFoot"}
else--or we add itself
    _G.Targets={_G.Aimbot_Settings.Target}
end
if _G.AimHack then return else _G.AimHack="Shoote Merthod fOR bAd Business!??!?!"end--we allow the prevoiuse code to be rexxecuted because it needs to be to update settings
local ClientTeam=""--use for later ;)
local PlayerTable=getupvalue(require(game.ReplicatedStorage.TS).Characters.GetCharacter,1)--player table
local NotIgnore={game.Workspace.Geometry}--some shit i used awhile ago
local GetEnemys=function()--get enemys function
    local a={}
    if ClientTeam=="FFA"then--new ffa game mode 0_o
        for _,v in pairs(game.Players:GetChildren())do
            if v~=game.Players.LocalPlayer then
                if PlayerTable[v]then
                    if PlayerTable[v].Parent==game.Workspace.Characters then
                        if PlayerTable[v]:FindFirstChild("Root")then
                            if not PlayerTable[v].Root.ShieldEmitter.Enabled then
                                a[v]=PlayerTable[v]
                            end
                        end
                    end
                end
            end
        end
    else--no ffa sad
        for _,v in pairs(game.Teams:GetChildren())do
            if v.Name~=ClientTeam then
                for _,c in pairs(v.Players:GetChildren())do
                    if PlayerTable[c.Value]then
                        if PlayerTable[c.Value].Parent==game.Workspace.Characters then
                            if PlayerTable[c.Value]:FindFirstChild("Root")then
                                if not PlayerTable[c.Value].Root.ShieldEmitter.Enabled then
                                    a[c.Value]=PlayerTable[c.Value]
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return a
end
local IsAlive=function()--detect if client is alive
    if PlayerTable[game.Players.LocalPlayer]then
        if PlayerTable[game.Players.LocalPlayer].Parent==game.Workspace.Characters then
            if PlayerTable[game.Players.LocalPlayer]:FindFirstChild("Root")then
                return true
            end
        end
    end
    return false
end
local IsPartOfDescendant=function(part,ancestor)--fuck u roblox you should already have this fucking stoopid rewtard
    if part==ancestor then return true end
    repeat part=part.Parent until part==ancestor or not part
    return part==ancestor
end
local GetNotTerrain=function()--fuck you whitelist
    local a={}
    for _,v in pairs(game.Workspace:GetChildren())do
        if v~=game.Workspace.Terrain then
            a[#a+1]=v
        end
    end
    return a
end
local CanHit=function(position,ignore,notignore,terrainhit)--can we SEE THE ENEMYS?!?!?!?!
    terrainhit=terrainhit or false
    ignore=ignore or{}
    notignore=notignore or{}
    if typeof(position)=="Instance"then
        position=position.Position
    end
    for _,v in pairs(game.Workspace.CurrentCamera:GetPartsObscuringTarget({position},ignore))do
        for _,c in pairs(notignore)do
            if IsPartOfDescendant(v,c)then
                return false
            end
        end
    end
    if terrainhit then--pro gamer hacks :)
        local start=game.Workspace.CurrentCamera.CFrame.Position
        local ray=Ray.new(start,position-start)
        local hitterrain=game.Workspace:FindPartOnRayWithIgnoreList(ray,GetNotTerrain())
        if hitterrain then
            return false
        end
    end
    return true
end
local UpdateClientTeam=function()--am shitty at getting teams
    for _,v in pairs(game.Teams:GetChildren())do
        for _,c in pairs(v.Players:GetChildren())do
            if c.Name==game.Players.LocalPlayer.Name then
                ClientTeam=v.Name
                return ClientTeam
            end
        end
    end
end
local GetHB=function(hitboxes,toget)--hitboxes > bones
    for _,v in pairs(hitboxes:GetChildren())do
        if v.WeldConstraint.Part0.Name==toget then
            return v
        end
    end
    return false
end
local Rmb=false--is we enabled?
local shift=false--are we sprinting?
game.Players.LocalPlayer:GetMouse().Button2Down:Connect(function()
    Rmb=true
end)
game.Players.LocalPlayer:GetMouse().Button2Up:Connect(function()
    Rmb=false
end)
game.UserInputService.InputBegan:Connect(function(x)
    if x.KeyCode==Enum.KeyCode.LeftShift then
        shift=true
    end
end)
game.UserInputService.InputEnded:Connect(function(x)
    if x.KeyCode==Enum.KeyCode.LeftShift then
        shift=false
    end
end)
local target--fuck you its simple
game.RunService.RenderStepped:Connect(function()
    target=nil
    if _G.Aimbot_Settings.Enabled and IsAlive()then
        UpdateClientTeam()
        local a=math.huge
        for _,v in pairs(GetEnemys())do
            for _,c in pairs(_G.Targets)do
                local main=GetHB(v.Hitbox,c)
                if _G.Aimbot_Settings.Ignore_Fov then
                    if(main.Position-PlayerTable[game.Players.LocalPlayer].Root.Position).Magnitude<a and(CanHit(main.Position,{},NotIgnore,true)or _G.Aimbot_Settings.Ignore_Walls)then
                        target=main
                        a=(main.Position-PlayerTable[game.Players.LocalPlayer].Root.Position).Magnitude
                    end
                else
                    local center=game.Workspace.CurrentCamera:WorldToViewportPoint(game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector)
                    local partloc=game.Workspace.CurrentCamera:WorldToScreenPoint(main.Position)
                    if(Vector2.new(partloc.X,partloc.Y)-Vector2.new(center.X,center.Y)).Magnitude<=_G.Aimbot_Settings.Fov then
                        if(main.Position-PlayerTable[game.Players.LocalPlayer].Root.Position).Magnitude<a and(CanHit(main.Position,{},NotIgnore,true)or _G.Aimbot_Settings.Ignore_Walls)then
                            target=main
                            a=(main.Position-PlayerTable[game.Players.LocalPlayer].Root.Position).Magnitude
                        end
                    end
                end
            end
        end
        local oldcf=game.Workspace.CurrentCamera.CFrame--silent aim hack 2021/1?1
        if _G.Aimbot_Settings.Silent and target then
            game.Workspace.CurrentCamera.CFrame=CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,target.Position)
        end
        if target and(Rmb or _G.Aimbot_Settings.Auto_Aim)and _G.Aimbot_Settings.Auto_Shoot and game.Workspace.CurrentCamera.CFrame==CFrame.new(game.Workspace.CurrentCamera.CFrame.Position,target.Position)then
            if _G.Aimbot_Settings.Auto_Aim then
                require(game.ReplicatedStorage.TS).Input:AutomateBegan("Aim")--my epic aim input hack
            end
            require(game.ReplicatedStorage.TS).Input:AutomateBegan("Shoot")--new shoot method no mouse1press?!?!?!?!
            require(game.ReplicatedStorage.TS).Input:AutomateEnded("Shoot")
        end
        if _G.Aimbot_Settings.Silent then
            game.Workspace.CurrentCamera.CFrame=oldcf
        end
    end
end)
coroutine.wrap(function()
    while game.RunService.RenderStepped:Wait()do
        pcall(function()
            if _G.Aimbot_Settings.Enabled and target and _G.Aimbot_Settings.Auto_Aim and IsAlive()then
                repeat game.RunService.RenderStepped:Wait()
                until not target or not _G.Aimbot_Settings.Enabled or not _G.Aimbot_Settings.Auto_Aim
                if _G.Aimbot_Settings.Aim_Out_Delay~=0 then
                    wait(_G.Aimbot_Settings.Aim_Out_Delay)
                end
                if(not target or not _G.Aimbot_Settings.Enabled or not _G.Aimbot_Settings.Auto_Aim)and not Rmb then
                    require(game.ReplicatedStorage.TS).Input:AutomateEnded("Aim")
                end
                if(not target or not _G.Aimbot_Settings.Enabled or not _G.Aimbot_Settings.Auto_Aim)and shift then
                    require(game.ReplicatedStorage.TS).Input:AutomateBegan("Sprint")--resprint if we are sprinting
                end
            end
        end)
    end
end)()
coroutine.wrap(function()
    while wait(1)do
        pcall(function()--epic fov circle
            if _G.Aimbot_Settings.Enabled and _G.Aimbot_Settings.Show_Fov and not _G.Aimbot_Settings.Ignore_Fov then
                local center=game.Workspace.CurrentCamera:WorldToViewportPoint(game.Workspace.CurrentCamera.CFrame.Position+game.Workspace.CurrentCamera.CFrame.LookVector)
                local a=Drawing.new("Circle")
                a.Visible=true
                a.Position=Vector2.new(center.X,center.Y)
                a.Color=_G.Aimbot_Settings.Fov_Color
                a.Thickness=2.5
                a.Transparency=1
                a.NumSides=100
                a.Radius=_G.Aimbot_Settings.Fov
                coroutine.wrap(function()
                    wait(1.1)
                    a:Remove()
                end)()
            end
        end)
    end
end)()
local mt=getrawmetatable(game)
local oldnewIndex=mt.__newindex
setreadonly(mt,false)
mt.__newindex=newcclosure(function(obj,prop,newprop)
    if not _G.Aimbot_Settings.Silent and target and _G.Aimbot_Settings.Enabled and(Rmb or _G.Aimbot_Settings.Auto_Aim)and tostring(obj)=="Camera"and prop=="CFrame"then
        newprop=CFrame.new(newprop.Position,target.Position)--arms get stuck behind if we use regular renderstep
    end
    return oldnewIndex(obj,prop,newprop)
end)
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Made By: The3Bakers#4565",Text="https://discord.gg/vQQqcgBWCG",Duration=10})
--game:GetService("StarterGui"):SetCore("SendNotification",{Title="Invite Link",Text="Copied To Clipboard",Duration=99999})
--setclipboard("https://discord.gg/vQQqcgBWCG")

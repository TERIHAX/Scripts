--Made by gamermanaway (Modified to be shorter by TERI)

local OldIndex = nil
 
OldIndex = hookmetamethod(game:GetService('Players'), '__index', function(Self, Key)
    if not checkcaller() and tostring(Self) == 'Head' and Key == 'Size' then
        return Vector3.new(10, 10, 10)
    end
    return OldIndex(Self, Key)
end)

local OldNameCall
OldNameCall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
  local args = {...}
  if not checkcaller() and getnamecallmethod() == 'FireServer' and self.Name == 'SPFV' and game.PlaceId == 12604352060 then
       if args[1] ~= 1 then
           args[1] = 1
       end
  end
  return OldNameCall(self,unpack(args))
end))

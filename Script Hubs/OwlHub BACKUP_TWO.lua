-- Yes the legendary owl hub

--[[
local old
old = hookfunction(game.HttpGetAsync, function(inst, url, state)
  url = url:gsub('CriShoux', 'SiLeNSwOrD')
  return old(inst, url, state)
end)

local old2
old2 = hookfunction(game.HttpGet, function(inst, url, state)
  url = url:gsub('CriShoux', 'SiLeNSwOrD')
  return old2(inst, url, state)
end)

loadstring(game:HttpGet("https://github.com/SiLeNSwOrD/OwlHub/raw/master/OwlHub.txt"))()
]]--

-- Backup by SiLeNSwOrD got removed

-- This is the 2nd backup

local old
old = hookfunction(game.HttpGetAsync, function(inst, url, state)
  url = url:gsub('TERIHAX', 'H3xad3cimalDev')
  return old(inst, url, state)
end)

local old2
old2 = hookfunction(game.HttpGet, function(inst, url, state)
  url = url:gsub('TERIHAX', 'H3xad3cimalDev')
  return old2(inst, url, state)
end)

loadstring(game:HttpGet('https://github.com/H3xad3cimalDev/OwlHub/raw/master/OwlHub.txt', true))()

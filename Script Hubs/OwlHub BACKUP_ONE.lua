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

-- This is the 1st backup

local old
old = hookfunction(game.HttpGetAsync, function(inst, url, state)
  url = url:gsub('CriShoux/OwlHub', 'ZinityDrops/OwlHubFixed')
  return old(inst, url, state)
end)

local old2
old2 = hookfunction(game.HttpGet, function(inst, url, state)
  url = url:gsub('CriShoux/OwlHub', 'ZinityDrops/OwlHubFixed')
  return old2(inst, url, state)
end)

loadstring(game:HttpGet('https://github.com/ZinityDrops/OwlHubFixed/raw/master/OwlHub.txt', true))()

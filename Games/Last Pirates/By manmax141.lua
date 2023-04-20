repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
getgenv().Items = {"None"}

local properties = {
    autoStand = false,
    usingArrow = false,
    ateRoka = false,
    shinyFarm = false,
    itemFarm = false,
    autoArcade = false
}

local StandsToGet = {
    ["Platinum Sun"] = false, 
    ["White Poison"] = false, 
    ["Violet Fog"] = false, 
    ["Six Pistols"] = false, 
    ["Airsmith"] = false, 
    ["Scarlet King"] = false, 
    ["Golden Spirit"] = false, 
    ["Zipper Fingers"] = false, 
    ["Ms. Vice President"] = false,
    ["Ice Album"] = false,
    ["Ocean Boy"] = false,
    ["That Hand"] = false,
    ["Shining Sapphire"] = false,
    ["Deadly King"] = false,
    ["Yellow Hot Chili Pepper"] = false,
    ["Violet Vine"] = false,
    ["Tentacle Green"] = false,
    ["Grey Rapier"] = false,
    ["Magician's Ember"] = false,
    ["Void"] = false,
    ["The Universe"] = false,
    ["Anubiz"] = false
}

local Stands = {
    "Platinum Sun", 
    "White Poison", 
    "Violet Fog", 
    "Six Pistols", 
    "Airsmith", 
    "Scarlet King", 
    "Golden Spirit", 
    "Zipper Fingers", 
    "Ms. Vice President",
    "Ice Album",
    "Ocean Boy",
    "That Hand",
    "Shining Sapphire",
    "Deadly King",
    "Yellow Hot Chili Pepper",
    "Violet Vine",
    "Tentacle Green",
    "Grey Rapier",
    "Magician's Ember",
    "Void",
    "The Universe",
    "Anubiz"
}


local Items = {
    "Rokakaka",
    "Mysterious Arrow",
    "Lucky Arrow",
    "Rib Cage of Saint's Corpse",
    "Pure Rokakaka",
    "Steel Ball",
    "Quinton's Glove",
    "Zeppeli's Headband",
    "Ancient Scroll",
    "Stone Mask",
    "Gold Coin",
    "Diamond",
    "DEO's Diary"
}

local rokakakaEatTable = {
   ["NPC"] = "Rokakaka",
   ["Option"] = "Option1",
   ["Dialogue"] = "Dialogue2"
}

local useArrowTable = {
    ["NPC"] = "Mysterious Arrow",
    ["Option"] = "Option1",
    ["Dialogue"] = "Dialogue2"
}

local autoArcadeTable = {
    ["NPC"] = "Item Machine",
    ["Option"] = "Option1",
    ["Dialogue"] = "Dialogue1"
}

local events = {}
local functions = {}

local kavo = Library.CreateLib("Mos Lord Hub", "BloodTheme")
local StandsPage = kavo:NewTab("Stands")
local ArcadePage = kavo:NewTab("Arcade")
local MiscPage = kavo:NewTab("Misc")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local miscSection = MiscPage:NewSection("Misc")
functions.addWorthiness = function()
    wait()
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()


    -- Vitality
    Character.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Vitality I", ["SkillTreeType"] = "Character"})
    Character.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Vitality II", ["SkillTreeType"] = "Character"})
    Character.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Vitality III", ["SkillTreeType"] = "Character"})
    -- Worthiness
    Character.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Worthiness I", ["SkillTreeType"] = "Character"})
    Character.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Worthiness II", ["SkillTreeType"] = "Character"})
    Character.RemoteFunction:InvokeServer("LearnSkill", {["Skill"] = "Worthiness III", ["SkillTreeType"] = "Character"})
end

functions.eatRoka = function()
    if properties.autoStand then
    
    local Player = game.Players.LocalPlayer
    local StandValue = Player.PlayerStats.Stand
   if StandsToGet[StandValue.Value] == false then
    
    properties.usingArrow = true
    properties.ateRoka = true
   
        local Character = Player.Character or Player.CharacterAdded:Wait()

        Character.RemoteEvent:FireServer("EndDialogue", rokakakaEatTable)
        
    end
end
end

events.autoArcade = function()

    spawn(function()
        while wait() do

            if properties.autoArcade then
                Character.RemoteEvent:FireServer("EndDialogue", autoArcadeTable)
            else
                break
            end
        end
    end)

end

functions.useArrow = function()
    
    wait()
    properties.usingArrow = false
    properties.ateRoka = false
    local Character = Player.Character or Player.CharacterAdded:Wait()

    Character.RemoteEvent:FireServer("EndDialogue", useArrowTable)
    
    
end


events.autoStand = function()
    spawn(function()
   while wait() do
        wait()
    if properties.autoStand then
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local StandValue = Player.PlayerStats.Stand

            if StandsToGet[StandValue.Value] == false or StandValue.Value == "None" then
                wait()
            if properties.usingArrow then
            spawn(function()
                functions.useArrow()
                functions.addWorthiness()
                
                wait(5)
                properties.usingArrow = false
                properties.ateRoka = false
            end)
            else
               
                if StandValue.Value == "None" then  
                    properties.usingArrow = true 
                else
                  
                   
                if not properties.ateRoka then
                 if properties.shinyFarm then
                    if Character.StandMorph.StandSkin.Value == "" and StandsToGet[StandValue.Value] == false then
                        wait()
                        properties.usingArrow = true
                        properties.ateRoka = true
                        functions.eatRoka()
                    end
                else
                   if StandsToGet[StandValue.Value] == false then
                    wait()
                    properties.usingArrow = true
                    properties.ateRoka = true
                    functions.eatRoka()
                   
                   end
                 end
                   
                    
                end
                 end
               
            end

           
    end
    else
        break
    end
end
end)
end

local AutoStandsSection = StandsPage:NewSection("Auto Stand")

local autoStandToggle = AutoStandsSection:NewToggle("Auto Stand", "Toggles Auto Stand", function(Value)
  if Value then
        properties.autoStand = true
        
        events.autoStand()
        print("Auto Stand on")
    else
        properties.autoStand = false
        print("Auto Stand off")
    end
end)

local shinyFarmToggle = AutoStandsSection:NewToggle("Shiny Farm", "Stops on any shiny", function(Value)
    if Value then
          properties.shinyFarm = true
          
          print("Shiny Farm on")
      else
          properties.shinyFarm = false
          print("Shiny Farm off")
      end
  end)

local ArcadeSection = ArcadePage:NewSection("Auto Arcade")

local AutoArcadeToggle = ArcadeSection:NewToggle("Auto Arcade", "Toggles Auto Arcade", function(Value)
    if Value then
          properties.autoArcade = true
          
          events.autoArcade()
          print("Auto Arcade on")
      else
          properties.autoArcade = false
          print("Auto Arcade off")
     end
end)

local StandsSection = StandsPage:NewSection("Stands")

for i = 1,#Stands do
    local standToggle = StandsSection:NewToggle(Stands[i], "Stand", function(Value)
        if Value then
            wait()
            StandsToGet[Stands[i]] = true
        else
            wait()
            StandsToGet[Stands[i]] = false
        end
    end)
end

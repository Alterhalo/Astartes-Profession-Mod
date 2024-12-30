-- File: AstartesTraits.lua
-- This file defines the traits associated with the Astartes Profession

local function initAstartesTraits()
    -- Using existing traits where applicable

    ProfessionFramework.addTrait('FastHealer', {
        name = "Fast Healer",
        description = "Enhanced healing abilities, regenerating health gradually over time.",
        cost = -1,
        onTick = function(player, _)
            local bodyDamage = player:getBodyDamage()
            local modData = player:getModData()
            if not modData.lastHealTick then
                modData.lastHealTick = 0
            end
            local currentTick = getGameTime():getWorldAgeHours()
            if currentTick - modData.lastHealTick >= 0.5 then  -- Heal every 30 in-game minutes
                bodyDamage:AddHealth(0.1)  -- Gradual healing
                modData.lastHealTick = currentTick
            end
        end
    })

    -- Additional enhancements via modData
    ProfessionFramework.addTrait('SuperhumanBoost', {
        name = "Superhuman Boost",
        description = "Massively increased strength and fitness.",
        cost = -1,
        onStart = function(player)
            local modData = player:getModData()
            modData.superStrength = true
            modData.superSpeed = true
            player:getStats():setStrength(10)  -- Max out strength stat
            player:getStats():setFitness(10)  -- Max out fitness stat
        end
    })

    -- Adding additional traits to enhance the Astartes capabilities
    ProfessionFramework.addTrait('ThickSkinned', {
        name = "Thick Skinned",
        description = "Reduced chance of scratches and bites breaking the skin.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("ThickSkinned")
        end
    })

    ProfessionFramework.addTrait('Hardy', {
        name = "Hardy",
        description = "Recovers from exhaustion more quickly.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("Hardy")
        end
    })

    ProfessionFramework.addTrait('Outdoorsman', {
        name = "Outdoorsman",
        description = "Less prone to weather-related ailments.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("Outdoorsman")
        end
    })

    ProfessionFramework.addTrait('Desensitized', {
        name = "Desensitized",
        description = "Immune to panic.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("Desensitized")
        end
    })

    ProfessionFramework.addTrait('FastLearner', {
        name = "Fast Learner",
        description = "Gains experience points faster in all skills.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("FastLearner")
        end
    })

    ProfessionFramework.addTrait('Lucky', {
        name = "Lucky",
        description = "Increased chance of finding rare items.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("Lucky")
        end
    })

    ProfessionFramework.addTrait('AdrenalineJunkie', {
        name = "Adrenaline Junkie",
        description = "Moves faster when highly panicked.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("AdrenalineJunkie")
        end
    })

    ProfessionFramework.addTrait('KeenHearing', {
        name = "Keen Hearing",
        description = "Increased range for hearing sounds and detecting threats.",
        cost = -1,
        onStart = function(player)
            player:getTraits():add("KeenHearing")
        end
    })
end

Events.OnGameBoot.Add(initAstartesTraits)

-- File: AstartesProfession.lua
-- This is the main Lua file for the Astartes Profession

if not ProfessionFramework then
    print("ERROR: Profession Framework not loaded. Astartes Profession mod requires Profession Framework.")
    return
end

ProfessionFramework.addProfession('Astartes', {
    name = "Astartes",
    icon = "astartes.png",  -- Add an Astartes icon here
    cost = -20,  -- Reflects the extreme power of the profession
    traits = {
        "Strong", "Fit", "FastHealer", "Brave", "Resilient", "Athletic", "Outdoorsman",
        "Desensitized", "ThickSkinned", "Hardy", "FastLearner", "Lucky", "AdrenalineJunkie", "KeenHearing"
    },
    perks = {
        [Perks.Fitness] = 10,        -- Reflects their superhuman stamina
        [Perks.Strength] = 10,       -- Reflects their enhanced physical power
        [Perks.Aiming] = 7,          -- Adept with ranged weapons
        [Perks.Reloading] = 7,       -- Skilled in weapon maintenance and reload
        [Perks.Blade] = 8,           -- Mastery of melee weapons
        [Perks.Blunt] = 7,           -- Adaptability with blunt weapons
        [Perks.Sneaking] = 5,        -- Tactical maneuvering
        [Perks.Doctor] = 5,          -- Field medic knowledge
        [Perks.Woodwork] = 3,        -- For fortification building
    },
    description = "Superhuman warriors of the Imperium, engineered for war."
})

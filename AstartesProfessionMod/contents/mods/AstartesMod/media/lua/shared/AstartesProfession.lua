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
    traits = {"Strong", "Fit", "FastHealer", "Brave", "Resilient", "Athletic", "Outdoorsman", "Desensitized", "ThickSkinned", "Hardy", "FastLearner", "Lucky", "AdrenalineJunkie", "KeenHearing"},
    description = "Superhuman warriors of the Imperium, engineered for war."
})

while true do
wait(1100)
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()


-- Create entity
local A404 = Spawner.createEntity({
    CustomName = "A-404", -- Custom name of your entity
    Model = "13063322366",
    Speed = 2000, -- Percentage, 100 = default Rush speed
    DelayTime = 0.01, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 100000,
    BackwardsMovement = false,
    BreakLights = true,
    FlickerLights = {
        false, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 20,
        Max = 30,
        WaitTime = 0.01,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {4, 25, 0.6, 3}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://13013289154", -- Image1 url
            Image2 = "rbxassetid://12980584234", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(0,0,255), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"ERROR CODE 404",}, -- Custom death message
})


-----[[  Debug -=- Advanced  ]]-----
------------------------------------


-- Run the created entity
Spawner.runEntity(A404)
end
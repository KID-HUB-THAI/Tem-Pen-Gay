local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "My Super Hub",
    Icon = "door-open", -- lucide icon. optional
    Author = "by .ftgs and .ftgs", -- optional
})

local Tab = Window:Tab({
    Title = "Tab Title",
    Icon = "bird", -- optional
    Locked = false,
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local savedPositions = {}

local function getRoot()
    local character = player.Character or player.CharacterAdded:Wait()
    return character:WaitForChild("HumanoidRootPart")
end

local function savePosition(slot)
    local root = getRoot()
    savedPositions[slot] = root.CFrame
    print("Saved Slot "..slot)
end

local function loadPosition(slot)
    local root = getRoot()
    if savedPositions[slot] then
        root.CFrame = savedPositions[slot]
        print("Loaded Slot "..slot)
    else
        warn("Slot "..slot.." ยังไม่ได้ Save")
    end
end

Tab:Button({ Title = "S1", Locked = false, Callback = function() savePosition(1) end })
Tab:Button({ Title = "S2", Locked = false, Callback = function() savePosition(2) end })
Tab:Button({ Title = "S3", Locked = false, Callback = function() savePosition(3) end })
Tab:Button({ Title = "S4", Locked = false, Callback = function() savePosition(4) end })
Tab:Button({ Title = "S5", Locked = false, Callback = function() savePosition(5) end })
Tab:Button({ Title = "S6", Locked = false, Callback = function() savePosition(6) end })
Tab:Button({ Title = "S7", Locked = false, Callback = function() savePosition(7) end })
Tab:Button({ Title = "S8", Locked = false, Callback = function() savePosition(8) end })

Tab:Button({ Title = "L1", Locked = false, Callback = function() loadPosition(1) end })
Tab:Button({ Title = "L2", Locked = false, Callback = function() loadPosition(2) end })
Tab:Button({ Title = "L3", Locked = false, Callback = function() loadPosition(3) end })
Tab:Button({ Title = "L4", Locked = false, Callback = function() loadPosition(4) end })
Tab:Button({ Title = "L5", Locked = false, Callback = function() loadPosition(5) end })
Tab:Button({ Title = "L6", Locked = false, Callback = function() loadPosition(6) end })
Tab:Button({ Title = "L7", Locked = false, Callback = function() loadPosition(7) end })
Tab:Button({ Title = "L8", Locked = false, Callback = function() loadPosition(8) end })

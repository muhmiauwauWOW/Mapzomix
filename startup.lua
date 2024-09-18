
local addonName, Mapzomix = ...
local _ = LibStub("LibLodash-1"):Get()


local addon = CreateFrame("Frame")
addon:RegisterEvent("PLAYER_LOGIN")
addon:SetScript("OnEvent", function()
    DevTool:AddData(Mapzomix)

    MapzomixDB = MapzomixDB or {}
    Mapzomix.Options:init()

    _.forEach(Mapzomix.modules, function(module)
        local config = MapzomixDB[module.ID] or module.default
        DevTool:AddData(config)
       module:Init(config)
    end)
end)







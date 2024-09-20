
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
        config.func = module.func or nil
        config.module = module
        module:Init(config)
    end)





    hooksecurefunc(DelveEntrancePinMixin, "OnAcquired", function(self, dungeonEntranceInfo)


        -- print(poiInfo.atlasName)
        DevTool:AddData(dungeonEntranceInfo, "dungeonEntranceInfo")
    end)

    
    hooksecurefunc(DelveEntrancePinMixin, "SetTexture", function(self, poiInfo)


        -- print(poiInfo.atlasName)
        DevTool:AddData(poiInfo, poiInfo.atlasName)
    end)


end)







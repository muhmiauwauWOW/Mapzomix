
local addonName, Mapzomix = ...
local _ = LibStub("LibLodash-1"):Get()



local registerdNames = {}

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
        registerdNames[module.default.atlas] = module.default.atlas
        module:Init(config)
    end)





    -- hooksecurefunc(DelveEntrancePinMixin, "OnAcquired", function(self, dungeonEntranceInfo)


    --     -- print(poiInfo.atlasName)
    --     DevTool:AddData(dungeonEntranceInfo, "dungeonEntranceInfo")
    -- end)


    DevTool:AddData(registerdNames,"registerdNames")
    hooksecurefunc(BaseMapPoiPinMixin, "SetTexture", function(self, poiInfo)
        if registerdNames[ poiInfo.atlasName] then return end

        print("öpö", poiInfo.atlasName)
        DevTool:AddData(poiInfo, poiInfo.atlasName)
    end)
    
    -- hooksecurefunc(MapLinkPinMixin, "SetTexture", function(self, poiInfo)


    --     -- print(poiInfo.atlasName)
    --     DevTool:AddData(poiInfo, poiInfo.atlasName)
    -- end)


end)







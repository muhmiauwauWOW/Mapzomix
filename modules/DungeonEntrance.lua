local addonName, Mapzomix = ...


local module = {}

module.ID = "DungeonEntranceModule"
module.Name = "Dungeon Entrance"
module.Desc = "Dungeon Entrance"

module.default = {
    atlas = "Dungeon",
    x = 32,
    y = 32
}

function module:Init(config)
    if self.initzializied then return end
    self.initzialied = true

    hooksecurefunc(DungeonEntrancePinMixin, "SetTexture", function(self, poiInfo)
        poiInfo.atlasName = config.atlas
        BaseMapPoiPinMixin.SetTexture(self, poiInfo);
        self.Texture:SetSize(config.x, config.y);
    end)
    
end


Mapzomix.modules:Add(module)
local addonName, Mapzomix = ...


local module = {}

module.ID = "FlighMasterModule"
module.Name = "Fligh Master"
module.Desc = "Fligh Master"

module.default = {
    atlas = "FlightMaster",
    x = 21,
    y = 18
}

function module:Init(config)
    if self.initzializied then return end
    self.initzialied = true

    hooksecurefunc(FlightPointPinMixin, "SetTexture", function(self, poiInfo)

        poiInfo.atlasName = config.atlas
        BaseMapPoiPinMixin.SetTexture(self, poiInfo);
        self.Texture:SetSize(config.x, config.y);
    end)
    
end


Mapzomix.modules:Add(module)
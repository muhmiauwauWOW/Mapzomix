local addonName, Mapzomix = ...


local module = CreateFromMixins(Mapzomix.baseMixin)

module.mixin = AreaPOIPinMixin
module.ID = "AreaPOIPinModule"
module.Name = "AreaPOIPin"
module.Desc = "AreaPOIPin"

module.default = {
    atlas = "racing",
    x = 22,
    y = 22
}

module.func = function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        poiInfo.orgAtlasName = poiInfo.atlasName
        print("in here?", poiInfo.atlasName )
        DevTool:AddData(poiInfo, "poiInfo")
        -- defaultFn(self, poiInfo)
    end
end

Mapzomix.modules:Add(module)
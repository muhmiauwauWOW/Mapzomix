local addonName, Mapzomix = ...


local module = CreateFromMixins(Mapzomix.baseMixin)

module.mixin = WaypointLocationPinMixin
module.ID = "WaypointLocation"
module.Name = "Waypoint Location "
module.Desc = "Waypoint Location"

module.default = {
    atlas = "racing",
    x = 22,
    y = 22
}

module.func = function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        print("in here?", poiInfo.atlasName )
        defaultFn(self, poiInfo)
    end
end

Mapzomix.modules:Add(module)
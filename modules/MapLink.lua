local addonName, Mapzomix = ...

local SetTextureFn =  function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        if not poiInfo.addPaddingAboveTooltipWidgets then return end
        defaultFn(self, poiInfo)
    end
end


-- mixin = MapLinkPinMixin,
-- ID = "MapLinkModule",
-- Name = "Map Link",
-- Desc = "Map Link",
-- default = {
--     atlas = "MapLink",
--     x = 32,
--     y = 32
-- }

local module = CreateFromMixins(Mapzomix.baseMixin)
module.mixin = MapLinkPinMixin



local module1 = CreateFromMixins(module)
local module2 = CreateFromMixins(module)

-- regular
module1.ID = "MapLinkModule"
module1.Name = "CaveUnderground Down"
module1.Desc = "CaveUnderground Down"

module1.default = {
    atlas = "CaveUnderground-Down",
    x = 28,
    y = 28
}

Mapzomix.modules:Add(module1)


-- bountiful
module2.ID = "MapLinkModule2"
module2.Name = "CaveUnderground-Up"
module2.Desc = "CaveUnderground-Up"

module2.default = {
    atlas = "CaveUnderground-Up",
    x = 28,
    y = 28
}

module2.func = SetTextureFn
Mapzomix.modules:Add(module2)
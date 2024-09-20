local addonName, Mapzomix = ...

local SetTextureFn =  function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        if not poiInfo.addPaddingAboveTooltipWidgets then return end
        defaultFn(self, poiInfo)
    end
end


local module = CreateFromMixins(Mapzomix.baseMixin)
module.mixin = DelveEntrancePinMixin



local module1 = CreateFromMixins(module)
local module2 = CreateFromMixins(module)

-- regular
module1.ID = "DelveEntranceModule"
module1.Name = "Delve Entrance"
module1.Desc = "Delve Entrance"

module1.default = {
    atlas = "delves-regular",
    x = 30,
    y = 30
}

Mapzomix.modules:Add(module1)


-- bountiful
module2.ID = "DelveEntranceModule2"
module2.Name = "Delve Boutiful Entrance"
module2.Desc = "Delve Boutiful Entrance"

module2.default = {
    atlas = "delves-bountiful",
    x = 30,
    y = 30
}

module2.func = SetTextureFn
Mapzomix.modules:Add(module2)
local addonName, Mapzomix = ...


-- local module = CreateFromMixins(Mapzomix.baseMixin)

-- module.mixin = FlightPointPinMixin
-- module.ID = "FlighMasterModule"
-- module.Name = "Fligh Master"
-- module.Desc = "Fligh Master"

-- module.default = {
--     atlas = "TaxiNode_Neutral",
--     x = 21,
--     y = 18
-- }





-- Mapzomix.modules:Add(module)











local module = CreateFromMixins(Mapzomix.baseMixin)
module.mixin = FlightPointPinMixin
module.func = SetTextureFn


local module1 = CreateFromMixins(module)
local module2 = CreateFromMixins(module)
local module3 = CreateFromMixins(module)
local module4 = CreateFromMixins(module)

-- regular
module1.ID = "FlighMasterModule"
module1.Name = "Flight Master Neutral"
module1.Desc = "Flight Master Neutral"

module1.default = {
    atlas = "TaxiNode_Neutral",
    x = 21,
    y = 21
}


module1.func = function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        if poiInfo.isUndiscovered then return end
        if poiInfo.faction ~= 0 then return end
        defaultFn(self, poiInfo)
    end
end


Mapzomix.modules:Add(module1)


-- Undiscovered
module2.ID = "FlighMasterModule2"
module2.Name = "Flight Master Undiscovered"
module2.Desc = "Flight Master Undiscovered"

module2.default = {
    atlas = "TaxiNode_Undiscovered",
    x = 21,
    y = 21
}

module2.func = function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        if not  poiInfo.isUndiscovered then return end
       defaultFn(self, poiInfo)
    end
end

Mapzomix.modules:Add(module2)



-- Alliance
module3.ID = "FlighMasterModule3"
module3.Name = "Flight Master Alliance"
module3.Desc = "Flight Master Alliance"

module3.default = {
    atlas = "TaxiNode_Alliance",
    x = 21,
    y = 21
}

module3.func = function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        if poiInfo.isUndiscovered then return end
        if poiInfo.faction ~= 2 then return end
        defaultFn(self, poiInfo)
    end
end

Mapzomix.modules:Add(module3)


-- Horde
module4.ID = "FlighMasterModule4"
module4.Name = "Flight Master Horde"
module4.Desc = "Flight Master Horde"

module4.default = {
    atlas = "TaxiNode_Horde",
    x = 21,
    y = 21
}

module4.func = function(config)
    local defaultFn = Mapzomix.baseMixin:defaultSetTextureFn(config)
    return function(self, poiInfo)
        if poiInfo.isUndiscovered then return end
        if poiInfo.faction ~= 1 then return end
        defaultFn(self, poiInfo)
    end
end

Mapzomix.modules:Add(module4)
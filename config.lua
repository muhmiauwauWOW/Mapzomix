local addonName, Mapzomix = ...
local _ = LibStub("LibLodash-1"):Get()


local function CreateMetaTable(metatable)
    local Proxies = ProxyUtil.CreateProxyDirectory("Pools.lua", false);
    local table = {}
    local MetaTable = {}
    do
        MetaTable = ProxyUtil.CreateProxyMixin(Proxies, metatable, _.functions(metatable));
        MetaTable.__index = MetaTable;
    end
    setmetatable(table, MetaTable)
    return table
end


local SecureModulesMixin = {}
function SecureModulesMixin:Add(module)
	return table.insert(Mapzomix.modules, module)
end


Mapzomix.modules = CreateMetaTable(SecureModulesMixin)



Mapzomix.baseMixin = {}


function Mapzomix.baseMixin:Init(config)
    if self.initzializied then return end
    self.initzialied = true

    print(self.ID)
    DevTool:AddData(config)

    hooksecurefunc(self.mixin, "SetTexture", function(self, poiInfo)
        poiInfo.atlasName = config.atlas
        BaseMapPoiPinMixin.SetTexture(self, poiInfo);
        self.Texture:SetSize(config.x, config.y);
        if self.HighlightTexture then
            self.HighlightTexture:SetSize(config.x, config.y);
        end
    end)
end







-- _.forEach(Mapzomix.moduleData, function(data)
--     if not data.mixin then return end
--     local module = CreateFromMixins(Mapzomix.baseMixin, data)
--     DevTool:AddData(module, module.ID)
--     Mapzomix.modules:Add(module)
-- end)





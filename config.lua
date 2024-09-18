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




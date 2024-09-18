
local addonName, Mapzomix = ...
local _ = LibStub("LibLodash-1"):Get()


Mapzomix.Options = {}



function Mapzomix.Options:init()
    local AddOnInfo = {C_AddOns.GetAddOnInfo(addonName)}
    local category, layout = Settings.RegisterVerticalLayoutCategory(AddOnInfo[2])
    self.category = category
    Settings.RegisterAddOnCategory(category)
    Mapzomix.OptionsID = category:GetID()

    Settings.OpenToCategory(Mapzomix.OptionsID)
    

    _.forEach(Mapzomix.modules, function(module)
        local setting = Settings.RegisterAddOnSetting(category, module.ID, module.ID, MapzomixDB, "table", module.Name, module.default) -- default)
        setting:SetValueChangedCallback(function(self)
        end)
    
        -- Settings.CreateCheckbox(category, setting, module.Desc)
        Settings.CreateAtlasWithSize(category, setting, module.Desc)
     end)



end
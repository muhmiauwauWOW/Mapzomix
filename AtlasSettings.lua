SettingsAtlasWithSizeMixin = CreateFromMixins(SettingsControlMixin);

function SettingsAtlasWithSizeMixin:OnLoad()
	SettingsControlMixin.OnLoad(self);
	self.dataTable = {}
end

function SettingsAtlasWithSizeMixin:SetValueFn(key, value)
	self.dataTable[key] = value
	self:GetSetting():SetValue(self.dataTable)
end

function SettingsAtlasWithSizeMixin:Init(initializer)
	SettingsControlMixin.Init(self, initializer);
	local setting = self:GetSetting();
	local currentValue = setting:GetValue()

	self.dataTable = currentValue

	self.AtlasName:SetText(self.dataTable.atlas)
    self.Atlas.NormalTexture:SetAtlas(self.dataTable.atlas)
	self.Atlas.HighlightTexture:SetAtlas(self.dataTable.atlas)

	self.X:SetText(self.dataTable.x)
	self.Y:SetText(self.dataTable.y)

end

function SettingsAtlasWithSizeMixin:OnSettingValueChanged(setting, value)
	SettingsControlMixin.OnSettingValueChanged(self, setting, value)
	self.AtlasName:SetText(value.atlas)
	self.Atlas.NormalTexture:SetAtlas(value.atlas)
	self.Atlas.HighlightTexture:SetAtlas(value.atlas)
	self.X:SetText(value.x)
	self.Y:SetText(value.y)
end

function SettingsAtlasWithSizeMixin:Release()
	SettingsControlMixin.Release(self);
end


SettingsAtlasWithSizeInputMixin = {}

function SettingsAtlasWithSizeInputMixin:OnLoad()
end

function SettingsAtlasWithSizeInputMixin:SetValue(value)
	if self.ID ~= "atlas" then 
		value = tonumber(value) or 0
	end
	self:GetParent():SetValueFn(self.ID ,value)
end


function SettingsAtlasWithSizeInputMixin:OnEscapePressed()
	--self:SetValue(self:GetText())
end

function SettingsAtlasWithSizeInputMixin:OnEditFocusGained()
	--self:SetValue(self:GetText())
end

function SettingsAtlasWithSizeInputMixin:OnEditFocusLost()
	self:SetValue(self:GetText())
end

function SettingsAtlasWithSizeInputMixin:OnEnterPressed()
	self:SetValue(self:GetText())
end












function Settings.CreateAtlasWithSize(category, setting, tooltip)
    local initializer = Settings.CreateControlInitializer("SettingsAtlasWithSizeTemplate", setting, nil, tooltip);
    local layout = SettingsPanel:GetLayout(category);
	layout:AddInitializer(initializer);
    return initializer;
end










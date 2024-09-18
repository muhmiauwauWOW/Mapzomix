local addonName, Mapzomix = ...


local module = CreateFromMixins(Mapzomix.baseMixin)

module.mixin = DungeonEntrancePinMixin
module.ID = "DungeonEntranceModule"
module.Name = "Dungeon Entrance"
module.Desc = "Dungeon Entrance"

module.default = {
    atlas = "Dungeon",
    x = 32,
    y = 32
}

Mapzomix.modules:Add(module)
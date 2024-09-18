
local addonName, Mapzomix = ...
local _ = LibStub("LibLodash-1"):Get()





Mapzomix.moduleData =  {
    {
        mixin = AreaPOIPinMixin,
        ID = "AreaPOIPinModule",
        Name = "AreaPOIPin",
        Desc = "AreaPOIPin",
        default = {
            atlas = "FlightMaster",
            x = 32,
            y = 32
        }
    },
    {
        mixin = ContributionCollectorPinMixin,
        ID = "ContributionCollectorModule",
        Name = "Contribution Collector",
        Desc = "Contribution Collector",
        default = {
            atlas = "ContributionCollector",
            x = 32,
            y = 32
        }
    },
    {
        mixin = DelveEntrancePinMixin,
        ID = "DelveEntranceModule",
        Name = "Delve Entrance",
        Desc = "Delve Entrance",
        default = {
            atlas = "delves-regular",
            x = 30,
            y = 30
        }
    },
    {
        mixin = DigSitePinMixin,
        ID = "DigSiteModule",
        Name = "Dig Site",
        Desc = "Dig Site",
        default = {
            atlas = "DigSite",
            x = 32,
            y = 32
        }
    },
    {
        mixin = DragonridingRacePinMixin,
        ID = "DragonridingRaceModule",
        Name = "Dragonriding Race",
        Desc = "Dragonriding Race",
        default = {
            atlas = "DragonridingRace",
            x = 32,
            y = 32
        }
    },
    {
        mixin = DungeonEntrancePinMixin,
        ID = "DungeonEntranceModule",
        Name = "Dungeon Entrance",
        Desc = "Dungeon Entrance",
        default = {
            atlas = "Dungeon",
            x = 32,
            y = 32
        }
    },
    {
        mixin = FlightPointPinMixin,
        ID = "FlightPointModule",
        Name = "FlightPoint",
        Desc = "FlightPoint",
        default = {
            atlas = "FlightMaster",
            x = 21,
            y = 18
        }
    },
    {
        mixin = GarrisonPlotPinMixin,
        ID = "GarrisonPlotModule",
        Name = "GarrisonPlot",
        Desc = "GarrisonPlot",
        default = {
            atlas = "GarrisonPlot",
            x = 32,
            y = 32
        }
    },
    {
        mixin = GossipPinMixin,
        ID = "GossipModule",
        Name = "Gossip",
        Desc = "Gossip",
        default = {
            atlas = "Gossip",
            x = 32,
            y = 32
        }
    },
    {
        mixin = InvasionPinMixin,
        ID = "InvasionModule",
        Name = "Invasion",
        Desc = "Invasion",
        default = {
            atlas = "Invasion",
            x = 32,
            y = 32
        }
    },
    {
        mixin = MapLinkPinMixin,
        ID = "MapLinkModule",
        Name = "Map Link",
        Desc = "Map Link",
        default = {
            atlas = "MapLink",
            x = 32,
            y = 32
        }
    },
    {
        mixin = PetTamerPinMixin,
        ID = "PetTamerModule",
        Name = "Pet Tamer",
        Desc = "Pet Tamer",
        default = {
            atlas = "PetTamer",
            x = 32,
            y = 32
        }
    },
    {
        mixin = SelectableGraveyardPinMixin,
        ID = "SelectableGraveyardModule",
        Name = "Selectable Graveyard",
        Desc = "Selectable Graveyard",
        default = {
            atlas = "SelectableGraveyard",
            x = 32,
            y = 32
        }
    }
}



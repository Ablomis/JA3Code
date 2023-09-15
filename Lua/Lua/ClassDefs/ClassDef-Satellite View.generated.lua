DefineClass.Camp = {
  __parents = {
    "PropertyObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "Standing",
      editor = "number",
      default = 0,
      min = -100,
      max = 100
    }
  }
}
DefineClass.CampaignCity = {
  __parents = {
    "CampaignObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "Id",
      editor = "text",
      default = false
    },
    {
      id = "DisplayName",
      name = "Display Name",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "Loyalty",
      name = "Loyalty",
      editor = "number",
      default = 0,
      no_edit = true
    },
    {
      id = "template_key",
      editor = "text",
      default = false,
      read_only = true,
      no_edit = true
    },
    {
      id = "currentCivilianDeathPenalty",
      editor = "number",
      default = 0,
      no_edit = true,
      min = 0,
      max = 30
    }
  }
}
function CampaignCity:GetEditorView()
  return self.DisplayName or Untranslated(self.Id or "(unnamed city)")
end
DefineClass.CampaignSide = {
  __parents = {
    "CampaignObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "Id",
      editor = "text",
      default = false
    },
    {
      id = "DisplayName",
      name = "Display Name",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "Standing",
      editor = "number",
      default = 0,
      min = -100,
      max = 100
    },
    {
      id = "StickyStanding",
      name = "Sticky Standing",
      editor = "bool",
      default = false
    },
    {
      id = "template_key",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "Player",
      editor = "bool",
      default = false
    },
    {
      id = "Enemy",
      editor = "bool",
      default = false
    }
  }
}
function CampaignSide:GetEditorView()
  return self.DisplayName or Untranslated(self.Id or "(unnamed side)")
end
DefineClass.EnemySquadUnit = {
  __parents = {
    "PropertyObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "weightedList",
      name = "Unit List",
      help = "Weighted list with unit types to choose from",
      editor = "nested_list",
      default = false,
      base_class = "UnitTypeListWithWeights"
    },
    {
      id = "UnitCountMin",
      name = "Unit Count Min",
      editor = "number",
      default = false,
      min = 0
    },
    {
      id = "UnitCountMax",
      name = "Unit Count Max",
      editor = "number",
      default = false,
      min = 0
    }
  }
}
function EnemySquadUnit:GetError()
  if not self.weightedList then
    return "Choose at least one unit type"
  elseif not self.UnitCountMin or not self.UnitCountMax then
    return "Choose units count range (min-max)"
  elseif self.UnitCountMin > self.UnitCountMax then
    return "min should not be more than max"
  end
end
function EnemySquadUnit:GetEditorView()
  if self.weightedList then
    return tostring(self.UnitCountMin) .. "-" .. tostring(self.UnitCountMax) .. " {" .. table.concat(table.map(self.weightedList, "unitType"), "/") .. "}"
  end
end
DefineClass.EventOperationOutcome = {
  __parents = {"Preset"},
  __generated_by_class = "PresetDef",
  properties = {
    {
      id = "Weight",
      help = "Event 'Weight' when choose outcome",
      editor = "number",
      default = false
    },
    {
      id = "Stat",
      name = "Unit Stat",
      help = "Weight depends from that stat",
      editor = "choice",
      default = false,
      items = function(self)
        return GetUnitStatsCombo()
      end
    },
    {
      id = "Desending",
      help = "The way the weight  depends from the stat. Desending: heigher stat->lower weight",
      editor = "bool",
      default = false
    },
    {
      id = "PopupId",
      editor = "preset_id",
      default = false,
      preset_class = "PopupNotification",
      preset_group = "Outcome"
    },
    {
      id = "Condition",
      editor = "func",
      default = function(self, operation_id, sector, mercs)
        return true
      end,
      params = "self,operation_id,sector, mercs"
    },
    {
      id = "Effect",
      editor = "func",
      default = function(self, operation_id, sector, mercs)
      end,
      params = "self,operation_id,sector, mercs"
    }
  },
  HasParameters = true,
  GlobalMap = "EventOperationsOutcomes",
  EditorMenubarName = "Event Operation Outcomes",
  EditorIcon = "CommonAssets/UI/Icons/delivery fast packing truck.png",
  EditorMenubar = "Scripting"
}
function EventOperationOutcome:GetWeight(operation_id, sector, mercs)
  if self.Weight and self.Weight > 0 then
    return self.Weight
  end
  local stat = self.Stat
  if stat and mercs and 0 < #mercs then
    local max_merc = table.max(mercs, function(m)
      return m[stat]
    end)
    local max_stat = max_merc[stat]
    return self.Descending and Min(100 - max_stat, 20) or max_stat
  end
  return 0
end
DefineClass.Intel = {
  __parents = {
    "CampaignObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "Id",
      editor = "text",
      default = false
    },
    {
      id = "Description",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "Discoverable",
      editor = "bool",
      default = true
    },
    {
      id = "discovered",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "sector_id",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "template_key",
      editor = "text",
      default = false,
      no_edit = true
    }
  }
}
function Intel:GetCampaignTemplate()
  if self.template_key and Game and Game.Campaign and CampaignPresets[Game.Campaign] then
    local campaign = CampaignPresets[Game.Campaign]
    local sector = table.find_value(campaign.Sectors, "Id", self.sector_id)
    return sector and sector.Intel and table.find_value(sector.Intel, "Id", self.Id)
  end
end
function Intel:LoadFirstPriorityProps(prop_data, obj)
  CampaignObject.LoadFirstPriorityProps(self, prop_data, obj)
  local idx = table.find(prop_data, "sector_id")
  if idx then
    obj.sector_id = prop_data[idx + 1]
  end
end
DefineClass.SatelliteSector = {
  __parents = {
    "CampaignObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "SetId",
      editor = "func",
      default = function(self, id)
        self.name = id
        self.NPCs = table.copy(self.NPCs)
        CampaignObject.SetId(self, id)
      end,
      no_edit = true,
      params = "self, id"
    },
    {
      id = "Setdisplay_name",
      editor = "func",
      default = function(self, display_name)
        self.display_name = display_name
        if display_name then
          self.name = string.format("%s %s", self.Id, _InternalTranslate(display_name))
        else
          self.name = self.Id
        end
      end,
      no_edit = true,
      params = "self, display_name"
    },
    {
      id = "OnEditorSetProperty",
      editor = "func",
      default = function(self, prop_id)
        if prop_id == "Roads" or prop_id == "BlockTravel" then
          SatelliteSectorSetDirectionsProp(self, prop_id)
        end
      end,
      no_edit = true,
      params = "self, prop_id"
    },
    {
      id = "Id",
      editor = "text",
      default = false,
      read_only = true
    },
    {
      id = "MapPosition",
      help = "delete me",
      editor = "point",
      default = false,
      dont_save = true,
      no_edit = true
    },
    {
      id = "XMapPosition",
      editor = "point",
      default = false,
      no_edit = true
    },
    {
      id = "IconMapPosition",
      editor = "point",
      default = false,
      dont_save = true,
      no_edit = true
    },
    {
      id = "Map",
      name = "Map",
      editor = "combo",
      default = false,
      items = function(self)
        return ListMaps()
      end
    },
    {
      id = "MapTier",
      name = "Tier",
      editor = "number",
      default = 0,
      scale = 10,
      step = 5,
      min = 0,
      max = 50
    },
    {
      id = "Label1",
      name = "Label 1",
      editor = "text",
      default = false
    },
    {
      id = "Label2",
      name = "Label 2",
      editor = "text",
      default = false
    },
    {
      id = "ExplorePopup",
      editor = "combo",
      default = "",
      items = function(self)
        return PresetGroupCombo("PopupNotification", "Sectors")
      end
    },
    {
      id = "HasUnderground",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      id = "HideUnderground",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return not self.HasUnderground
      end,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      id = "GroundSector",
      editor = "text",
      default = false,
      read_only = true,
      no_edit = true
    },
    {
      id = "template_key",
      editor = "text",
      default = false,
      read_only = true,
      no_edit = true
    },
    {
      id = "display_name",
      name = "DisplayName",
      editor = "text",
      default = false,
      translate = true,
      context = SatelliteSectorLocContext()
    },
    {
      id = "Side",
      editor = "combo",
      default = "enemy1",
      items = function(self)
        return table.map(GetCurrentCampaignPreset().Sides, "Id")
      end
    },
    {
      id = "StickySide",
      name = "Sticky Side",
      editor = "bool",
      default = false
    },
    {
      category = "Travel",
      id = "TerrainType",
      name = "Terrain Type",
      editor = "preset_id",
      default = "Savanna",
      no_edit = function(self)
        return self.GroundSector
      end,
      preset_class = "SectorTerrain"
    },
    {
      id = "WeatherZone",
      name = "Weather Zone",
      help = "Weather Zone the sector belongs to. Sectors within the same Weather Zone have the same weather conditions.",
      editor = "text",
      default = false
    },
    {
      category = "Travel",
      id = "Passability",
      editor = "combo",
      default = "Land",
      no_edit = function(self)
        return self.GroundSector
      end,
      items = function(self)
        return {
          "Land",
          "Water",
          "Land and Water",
          "Blocked"
        }
      end
    },
    {
      category = "City",
      id = "City",
      name = "Associated City",
      editor = "combo",
      default = "none",
      items = function(self)
        return table.iappend({"none"}, table.map(GetCurrentCampaignPreset().Cities, "Id"))
      end
    },
    {
      category = "City",
      id = "ShowCity",
      name = "Show City Name",
      help = "Whether to show the city name on the sector",
      editor = "bool",
      default = false
    },
    {
      id = "reveal_allowed",
      help = "Treat sector as revealed even if there are no player squads nearby",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      category = "Conflict",
      id = "AutoResolveDefenderBonus",
      help = "Percent by which defender power is increased in this sector",
      editor = "number",
      default = 0,
      min = 0
    },
    {
      category = "Mine",
      id = "Mine",
      editor = "bool",
      default = false
    },
    {
      category = "Mine",
      id = "DailyIncome",
      help = "Profit per day at 100% loyalty",
      editor = "number",
      default = 1000,
      no_edit = function(self)
        return not self.Mine
      end,
      min = 0
    },
    {
      id = "intel_progress",
      name = "Intel progress",
      editor = "number",
      default = 0,
      no_edit = true
    },
    {
      category = "Mine",
      id = "Depletion",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return not self.Mine
      end
    },
    {
      category = "Mine",
      id = "DepletionTime",
      help = "In how many days the mine will deplete. This should be randomized each game around this value.",
      editor = "number",
      default = 90,
      no_edit = function(self)
        return not self.Mine
      end,
      min = 1,
      max = 500
    },
    {
      category = "Mine",
      id = "mine_work_days",
      editor = "number",
      default = false,
      no_edit = true
    },
    {
      category = "Mine",
      id = "mine_depleted",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      category = "Mine",
      id = "mine_enabled",
      editor = "bool",
      default = true,
      no_edit = true
    },
    {
      category = "Mine",
      id = "income_mods",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      category = "Mine",
      id = "depletion_mods",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      category = "Hospital",
      id = "Hospital",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Hospital",
      id = "HospitalLocked",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Guardpost",
      id = "Guardpost",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Guardpost",
      id = "PatrolRespawnTime",
      name = "Attack Spawn (+ 24h Preparation)",
      editor = "number",
      default = 172800,
      no_edit = function(self)
        return not self.Guardpost
      end,
      scale = "h",
      min = 0
    },
    {
      category = "Guardpost",
      id = "InitialSpawn",
      name = "Initial squad spawn",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return not self.Guardpost
      end
    },
    {
      category = "Guardpost",
      id = "TargetSectors",
      name = "Target sectors",
      help = "Target sectors for spawned enemy squads.",
      editor = "string_list",
      default = {},
      no_edit = function(self)
        return not self.Guardpost
      end,
      item_default = "",
      items = function(self)
        return GetCampaignSectorsCombo("")
      end
    },
    {
      category = "Guardpost",
      id = "ExtraDefenderSquads",
      name = "Extra Defender Squads",
      help = "Squads that will be spawned as extra defenders (4th shield)",
      editor = "preset_id_list",
      default = {},
      no_edit = function(self)
        return not self.Guardpost
      end,
      preset_class = "EnemySquads",
      item_default = ""
    },
    {
      category = "Guardpost",
      id = "EnemySquadsList",
      name = "Enemy Squads List",
      help = "A random squad from the list will be chosen on guardpost spawn time",
      editor = "preset_id_list",
      default = {},
      no_edit = function(self)
        return not self.Guardpost
      end,
      preset_class = "EnemySquads",
      item_default = ""
    },
    {
      category = "Guardpost",
      id = "StrongEnemySquadsList",
      name = "Strong Enemy Squads List",
      help = "When the guardpost performs a \"strong attack\" it will swap the currently primed squad with one from this array.",
      editor = "preset_id_list",
      default = {},
      no_edit = function(self)
        return not self.Guardpost
      end,
      preset_class = "EnemySquads",
      item_default = ""
    },
    {
      category = "Militia",
      id = "Militia",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Militia",
      id = "MaxMilitia",
      editor = "number",
      default = 8,
      no_edit = function(self)
        return not self.Militia
      end,
      min = 1,
      max = 50
    },
    {
      category = "Militia",
      id = "MilitiaTrainingCost",
      name = "Training Cost",
      editor = "number",
      default = 750,
      no_edit = function(self)
        return not self.Militia
      end,
      min = 1,
      max = 10000
    },
    {
      category = "Conflict",
      id = "ForceConflict",
      editor = "bool",
      default = false
    },
    {
      category = "Conflict",
      id = "InitialSquads",
      name = "InitialSquads",
      editor = "string_list",
      default = {},
      item_default = "",
      items = function(self)
        return table.keys(EnemySquadDefs, true)
      end
    },
    {
      category = "Conflict",
      id = "CustomConflictDescr",
      name = "Custom Conflict Description",
      help = "The first time a conflict is initiated in this sector, this description preset will be shown.",
      editor = "combo",
      default = false,
      items = function(self)
        return PresetGroupCombo("ConflictDescription", "Default")
      end
    },
    {
      category = "Militia",
      id = "militia_training",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      category = "Militia",
      id = "militia_training_progress",
      editor = "number",
      default = 0,
      no_edit = true
    },
    {
      category = "Militia",
      id = "militia_squad_id",
      editor = "number",
      default = false,
      no_edit = true
    },
    {
      category = "Operation",
      id = "training_stat",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      category = "Operation",
      id = "custom_operations",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      category = "Operation",
      id = "operations_temp_data",
      help = "Temp data for assigned mercs before the actual operation start/change. Valid only when the UI is opened in  'change' mode.",
      editor = "prop_table",
      default = false,
      dont_save = true,
      no_edit = true
    },
    {
      category = "Operation",
      id = "started_operations",
      help = "Started operations for the sector",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      id = "Intel",
      name = "Intel",
      editor = "bool",
      default = true
    },
    {
      id = "intel_discovered",
      name = "Intel",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "player_visited",
      help = "Marked as visited when a player squad reaches the sector's center on the satellite.",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "autoresolve_disabled",
      name = "Intel",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "InterestingSector",
      name = "Interesting Sector",
      help = "Marks whether a sector has something interesting in it",
      editor = "bool",
      default = false
    },
    {
      id = "MinFlareCarriers",
      help = "Minimum number of Roaming NPCs to carry a light during Night or Underground",
      editor = "number",
      default = 1,
      slider = true,
      min = 0,
      max = 20
    },
    {
      id = "MaxFlareCarriers",
      help = "Minimum number of Roaming NPCs to carry a light during Night or Underground",
      editor = "number",
      default = 3,
      slider = true,
      min = function(self)
        return self.MinFlareCarriers
      end,
      max = function(self)
        return 20
      end
    },
    {
      id = "RAndRAllowed",
      name = "R&R Allowed",
      help = "R&R operation is available in this sector",
      editor = "bool",
      default = false
    },
    {
      id = "RepairShop",
      name = "Repair Shop",
      help = "Allows Craft Ammo, Craft Explosives operations in this sector",
      editor = "bool",
      default = false
    },
    {
      category = "Travel",
      id = "Roads",
      name = "Roads",
      editor = "directions_set",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Travel",
      id = "ImpassableForEnemies",
      name = "Impassable for Enemies",
      help = "Enemy squads can't pass through this sector",
      editor = "bool",
      default = false
    },
    {
      category = "Diamond Briefcase",
      id = "ImpassableForDiamonds",
      name = "Impassable for Diamonds",
      help = "Diamond shipments can't pass through this sector",
      editor = "bool",
      default = false
    },
    {
      category = "Travel",
      id = "BlockTravel",
      name = "Block Travel",
      editor = "directions_set",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Travel",
      id = "BlockTravelRiver",
      name = "Block Travel River",
      help = "Blocks travel without displaying it on the sat view",
      editor = "directions_set",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      category = "Travel",
      id = "BridgeCrossing",
      name = "Bridge Crossing",
      editor = "directions_set",
      default = false,
      no_edit = function(self)
        return self.GroundSector
      end
    },
    {
      id = "sector_data",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "dead_units",
      help = "All dead units on the map before removing and converting them to bags. Used for adding their staff to the stash",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "sector_inventory",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "sector_repair_items",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "sector_repair_items_queued",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "sector_craft_ammo_items_queued",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "sector_craft_explosive_items_queued",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "NPCs",
      name = "NPCs",
      help = "List of NPCs placed here using the AssociateNPCWithSector effect.",
      editor = "preset_id_list",
      default = {},
      preset_class = "UnitDataCompositeDef",
      item_default = ""
    },
    {
      id = "conflict",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      id = "conflict_backup",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      id = "guardpost_obj",
      editor = "nested_obj",
      default = false,
      no_edit = true,
      base_class = "GuardpostSessionObject"
    },
    {
      id = "image",
      name = "Image",
      editor = "ui_image",
      default = "UI/SatelliteView/SectorImages/_Highlands",
      image_preview_size = 200
    },
    {
      category = "Events",
      id = "Events",
      editor = "nested_list",
      default = false,
      base_class = "SectorEvent"
    },
    {
      id = "ExecutedEvents",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      id = "CustomIcon",
      name = "Custom Building Icon",
      help = "A custom icon to show in the rollover along with other buildings.",
      editor = "ui_image",
      default = false
    },
    {
      category = "Port",
      id = "Port",
      name = "Port",
      editor = "bool",
      default = false
    },
    {
      category = "Port",
      id = "PortLocked",
      name = "PortLocked",
      editor = "bool",
      default = false
    },
    {
      category = "Port",
      id = "CanBeUsedForArrival",
      name = "CanBeUsedForArrival",
      editor = "bool",
      default = false
    },
    {
      category = "Diamond Briefcase",
      id = "DBSourceSector",
      name = "Source Sector",
      help = "Travelling squads carrying diamond shipments will spawn on this sector.",
      editor = "bool",
      default = false
    },
    {
      category = "Diamond Briefcase",
      id = "DBDestinationSector",
      name = "Destination Sector",
      help = "Travelling squads carrying diamond shipments will path to this sector.",
      editor = "bool",
      default = false
    },
    {
      category = "Diamond Briefcase",
      id = "DBRecalc",
      help = "You only need to run this once when applying multiple changes. It will take a while!",
      editor = "buttons",
      default = false,
      buttons = {
        {
          name = "Recalculate Diamond Routes",
          func = "GenerateDynamicDBPathCache"
        }
      }
    },
    {
      category = "Port",
      id = "PricePerTile",
      name = "Price per tile",
      editor = "number",
      default = false
    },
    {
      id = "enabled_auto_deploy",
      editor = "bool",
      default = true,
      no_edit = true
    },
    {
      id = "awareness_sequence",
      name = "Awareness Sequence",
      editor = "choice",
      default = "Standard",
      items = function(self)
        return {
          "Standard",
          "Skip Setpiece",
          "Skip All"
        }
      end
    },
    {
      id = "last_enter_campaign_time",
      editor = "number",
      default = 0,
      no_edit = true
    },
    {
      id = "last_own_campaign_time",
      editor = "number",
      default = 0,
      no_edit = true
    },
    {
      category = "Music",
      id = "MusicCombat",
      name = "Music Combat",
      help = "Music in turn based mode",
      editor = "combo",
      default = "Combat_Dramatic",
      items = function(self)
        return PresetsCombo("RadioStationPreset")
      end
    },
    {
      category = "Music",
      id = "MusicConflict",
      name = "Music Conflict",
      help = "In real time exploration but the sector is still in conflict",
      editor = "combo",
      default = "Enemy_Territory",
      items = function(self)
        return PresetsCombo("RadioStationPreset")
      end
    },
    {
      category = "Music",
      id = "MusicExploration",
      name = "Music Exploration",
      help = "Real time exploration and there is no conflict in the sector",
      editor = "combo",
      default = "Exploration_Jungle",
      items = function(self)
        return PresetsCombo("RadioStationPreset")
      end
    },
    {
      category = "Squads",
      id = "enemy_squads",
      editor = "nested_list",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "SatelliteSquad"
    },
    {
      category = "Squads",
      id = "ally_squads",
      editor = "nested_list",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "SatelliteSquad"
    },
    {
      category = "Squads",
      id = "underground_squads",
      editor = "nested_list",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "SatelliteSquad"
    },
    {
      category = "Squads",
      id = "ally_and_militia_squads",
      editor = "nested_list",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "SatelliteSquad"
    },
    {
      category = "Squads",
      id = "all_squads",
      editor = "nested_list",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "SatelliteSquad"
    },
    {
      category = "Warning State",
      id = "warningStateEnabled",
      name = "Enable Warning State",
      help = [[
If enabled the first time you are discovered by enemies you will enter a Warning State.
A timer is set. Enemies become neutral until the timer expires. And effects can be executed.]],
      editor = "bool",
      default = false
    },
    {
      category = "Warning State",
      id = "warningReceived",
      name = "Warning Received",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      category = "Warning State",
      id = "inWarningState",
      name = "In Warning State",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      category = "Warning State",
      id = "warningTimerText",
      name = "Warning Timer Text",
      help = "Text to display when the Warning State is active.",
      editor = "text",
      default = T(888882045986, "Exit the Area"),
      no_edit = function(self)
        return not self.warningStateEnabled
      end,
      translate = true
    },
    {
      category = "Warning State",
      id = "warningStateTimer",
      name = "Warning State Timer",
      help = "How long (sec) will the Warning State hold.",
      editor = "number",
      default = 30000,
      no_edit = function(self)
        return not self.warningStateEnabled
      end,
      scale = "sec",
      min = 0
    },
    {
      category = "Warning State",
      id = "warningBanters",
      name = "Warning Banters",
      help = "List of banters from which to choose one to play when spotted by the nearest enemy.",
      editor = "preset_id_list",
      default = {},
      no_edit = function(self)
        return not self.warningStateEnabled
      end,
      preset_class = "BanterDef",
      item_default = ""
    },
    {
      category = "Combat Tasks",
      id = "combatTaskGenerate",
      name = "When to Generate",
      help = "When to generate Combat Tasks. Chances and cooldowns are independant and are always taken into account.",
      editor = "choice",
      default = "always",
      items = function(self)
        return {
          "always",
          "afterFirstConflict",
          "never"
        }
      end
    },
    {
      category = "Combat Tasks",
      id = "combatTaskAmount",
      name = "Maximum Amount",
      help = "Maximum Combat Tasks that can be given.",
      editor = "number",
      default = 1,
      min = 0
    },
    {
      category = "Combat Tasks",
      id = "firstConflictWon",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "conflictLoyaltyGained",
      help = "Checks whether to give loyalty on Conflict Win. Resets on sector lost and sector defended.",
      editor = "bool",
      default = false,
      no_edit = true
    }
  },
  FilterClass = "SatelliteSectorGedFilter"
}
function SatelliteSector:GetError()
  local errors = {}
  if self.Guardpost and not next(self.EnemySquadsList) then
    table.insert(errors, string.format("%s: Please select at least one enemy squad for guardpost", self.Id))
  elseif self.Guardpost then
    for _, squad in ipairs(self.EnemySquadsList) do
      if squad == "" then
        table.insert(errors, string.format("Please remove empty entries from guardpost enemy squads", self.Id))
        break
      end
    end
  end
  local radios = Presets.RadioStationPreset.Default
  if not radios[self.MusicCombat] then
    table.insert(errors, string.format("%s: '%s' Music Combat radio station is invalid!", self.Id, self.MusicCombat))
  end
  if not radios[self.MusicConflict] then
    table.insert(errors, string.format("%s: '%s' Music Conflict radio station is invalid!", self.Id, self.MusicConflict))
  end
  if not radios[self.MusicExploration] then
    table.insert(errors, string.format("%s: '%s' Music Exploration radio station is invalid!", self.Id, self.MusicExploration))
  end
  local mapdata = MapData[self.Map]
  local region = mapdata and mapdata.Region
  if region and GameStateDefs[region].WeatherCycle and not self.WeatherZone then
    table.insert(errors, string.format("Sectors from region %s need to have WeatherZone defined", region))
  end
  return next(errors) and table.concat(errors, "\n") or nil
end
function SatelliteSector:SetHasUnderground(value)
  self.HasUnderground = value
  if not GetCurrentCampaignPreset() then
    return
  end
  local sectors = GetSatelliteSectors()
  local id = self.Id .. "_Underground"
  local u_sector = table.find_value(sectors, "Id", id)
  if value then
    if not u_sector then
      local sector = PlaceObject("SatelliteSector")
      sector.GroundSector = self.Id
      sector:SetId(id)
      table.insert(sectors, table.find(sectors, "Id", self.Id) + 1, sector)
      ObjModified(GetSatelliteSectors())
    end
  elseif u_sector then
    table.remove_value(sectors, u_sector)
    DoneObject(u_sector)
    ObjModified(GetSatelliteSectors())
  end
end
function SatelliteSector:GetTravelPrice(squad)
  local cost = self.PricePerTile or const.Satellite.DefaultPortPricePerTile
  local discounts = false
  local cityHere = gv_Cities[self.City]
  if cityHere and cityHere.Loyalty > 0 then
    local discount = Lerp(0, 50, cityHere.Loyalty, 100)
    cost = cost - MulDivRound(cost, discount, 100)
    discounts = discounts or {}
    discounts[#discounts + 1] = {
      label = T(342530626078, "Loyalty"),
      percent = discount
    }
  end
  if IsKindOf(squad, "SatelliteSquad") then
    for _, id in ipairs(squad.units) do
      local unit = gv_UnitData[id]
      if HasPerk(unit, "Negotiator") then
        local discount = CharacterEffectDefs.Negotiator:ResolveValue("discountPercent")
        discounts = discounts or {}
        discounts[#discounts + 1] = {
          label = T({
            542222741234,
            "<Nick> <em>(<perkName>)</em>",
            Nick = unit.Nick,
            perkName = CharacterEffectDefs.Negotiator.DisplayName
          }),
          percent = discount
        }
        cost = cost - MulDivRound(cost, discount, 100)
        break
      end
    end
  end
  return cost, discounts
end
DefineClass.SatelliteSectorGedFilter = {
  __parents = {"GedFilter"},
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "City",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return table.iappend({
          "don't care",
          "any",
          "none"
        }, table.map(GetCurrentCampaignPreset().Cities, "Id"))
      end
    },
    {
      id = "Mine",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return {
          true,
          false,
          "don't care"
        }
      end
    },
    {
      id = "Events",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return {
          true,
          false,
          "don't care"
        }
      end
    },
    {
      id = "Guardpost",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return {
          true,
          false,
          "don't care"
        }
      end
    },
    {
      id = "Region",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return PresetsCombo("GameStateDef", "region", "don't care")
      end
    },
    {
      id = "Port",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return {
          true,
          false,
          "don't care"
        }
      end
    },
    {
      id = "Militia",
      editor = "choice",
      default = "don't care",
      items = function(self)
        return {
          true,
          false,
          "don't care"
        }
      end
    },
    {
      id = "Music",
      editor = "choice",
      default = false,
      items = function(self)
        return PresetsCombo("RadioStationPreset")
      end
    },
    {
      id = "Weather",
      editor = "text",
      default = false
    }
  }
}
function SatelliteSectorGedFilter:FilterObject(sector)
  if self.Mine ~= "don't care" and self.Mine ~= sector.Mine then
    return false
  end
  if self.Guardpost ~= "don't care" and self.Guardpost ~= sector.Guardpost then
    return false
  end
  if self.City == "any" then
    if sector.City == "none" then
      return false
    end
  elseif self.City ~= "don't care" and self.City ~= sector.City then
    return false
  end
  if self.Events ~= "don't care" and self.Events ~= (sector.Events and #sector.Events > 0) then
    return false
  end
  if self.Region ~= "don't care" then
    local region = sector.Map and MapData[sector.Map] and MapData[sector.Map].Region
    if self.Region ~= region then
      return false
    end
  end
  if self.Port ~= "don't care" and self.Port ~= sector.Port then
    return false
  end
  if self.Militia ~= "don't care" and self.Militia ~= sector.Militia then
    return false
  end
  if self.Music then
    local music_match
    if sector.MusicCombat and string.match(sector.MusicCombat, self.Music) then
      music_match = true
    end
    if sector.MusicConflict and string.match(sector.MusicConflict, self.Music) then
      music_match = true
    end
    if sector.MusicExploration and string.match(sector.MusicExploration, self.Music) then
      music_match = true
    end
    if not music_match then
      return false
    end
  end
  if self.Weather and (not sector.WeatherZone or not string.match(string.lower(sector.WeatherZone), string.lower(self.Weather))) then
    return false
  end
  return true
end
DefineClass.SatelliteSquad = {
  __parents = {
    "PropertyObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "Side",
      editor = "combo",
      default = "enemy1",
      items = function(self)
        return table.map(GetCurrentCampaignPreset().Sides, "Id")
      end
    },
    {
      id = "Name",
      editor = "text",
      default = false
    },
    {
      id = "image",
      editor = "text",
      default = false
    },
    {
      id = "UniqueId",
      editor = "number",
      default = false
    },
    {
      id = "CurrentSector",
      editor = "combo",
      default = false,
      items = function(self)
        return GetCampaignSectorsCombo()
      end
    },
    {
      id = "PreviousSector",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "PreviousLandSector",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "Sleep",
      editor = "bool",
      default = false
    },
    {
      id = "Retreat",
      editor = "bool",
      default = false
    },
    {
      id = "VisualPos",
      editor = "point",
      default = false
    },
    {
      id = "XVisualPos",
      editor = "point",
      default = false
    },
    {
      id = "route",
      editor = "prop_table",
      default = false
    },
    {
      id = "water_route",
      editor = "prop_table",
      default = false
    },
    {
      id = "water_travel",
      editor = "bool",
      default = false
    },
    {
      id = "returning_water_travel",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "water_travel_rest_timer",
      editor = "number",
      default = 0
    },
    {
      id = "traversing_shortcut_start",
      editor = "number",
      default = false
    },
    {
      id = "traversing_shortcut_start_sId",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "traversing_shortcut_water",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "uninterruptable_travel",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "joining_squad",
      editor = "number",
      default = false
    },
    {
      id = "units",
      editor = "prop_table",
      default = false
    },
    {
      id = "militia",
      help = "Militia squad",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "arrival_squad",
      help = "Squad not on the map yet",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "diamond_briefcase",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "shipment_preset_id",
      editor = "text",
      default = false,
      no_edit = true,
      translate = true
    },
    {
      id = "guardpost",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "diamond_briefcase_dynamic",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "always_visible",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "villain",
      help = "Villain squad",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "ref",
      help = "Used by UI in objects which pretend to be squads, because of duck typing it needs to be in the squad definition as well",
      editor = "bool",
      default = false,
      dont_save = true,
      read_only = true,
      no_edit = true
    },
    {
      id = "enemy_squad_def",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "wait_in_sector",
      editor = "number",
      default = false,
      no_edit = true
    },
    {
      id = "arrive_in_sector",
      editor = "prop_table",
      default = false,
      no_edit = true
    },
    {
      id = "vrForActivity",
      editor = "prop_table",
      default = false
    },
    {
      id = "squad_bag",
      editor = "nested_list",
      default = false,
      no_edit = true,
      base_class = "InventoryItem"
    },
    {
      id = "on_reach_quest",
      editor = "text",
      default = false,
      no_edit = true
    },
    {
      id = "on_reach_var",
      editor = "prop_table",
      default = false,
      no_edit = true
    }
  }
}
function SatelliteSquad:CancelTravel()
  NetSyncEvent("SquadCancelTravel", self.UniqueId)
end
DefineClass.SectorOperation = {
  __parents = {"Preset"},
  __generated_by_class = "PresetDef",
  properties = {
    {
      id = "Custom",
      help = "Custom operations show only certain properties",
      editor = "bool",
      default = true
    },
    {
      id = "CustomRepeat",
      name = "Repeat",
      help = "Operation reamains enabled on completion and can be performed again",
      editor = "bool",
      default = false,
      no_edit = function(self)
        return not self.Custom
      end
    },
    {
      id = "operation_type",
      name = "Type",
      help = "Operation categories by action",
      editor = "set",
      default = false,
      items = function(self)
        return {"Healing"}
      end
    },
    {
      id = "display_name",
      name = "Display name",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "short_name",
      name = "Short Name",
      editor = "text",
      default = T(814680295449, "Operation"),
      translate = true
    },
    {
      id = "sub_title",
      name = "Sub Title",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "progress_sub_title",
      name = "Sub Title in Progress",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "description",
      name = "Description",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "log_msg_start",
      name = "LogMsgOnStart",
      help = "Log message on operation start",
      editor = "text",
      default = "",
      translate = true
    },
    {
      id = "image",
      name = "Image",
      editor = "ui_image",
      default = false
    },
    {
      id = "icon",
      name = "Icon",
      help = "Satellite view on-screen merc icon",
      editor = "ui_image",
      default = false
    },
    {
      id = "Professions",
      editor = "nested_list",
      default = false,
      base_class = "SectorOperationProfession",
      auto_expand = true
    },
    {
      id = "ShowInCombatBadge",
      help = "Show in Combat Badge",
      editor = "bool",
      default = true
    },
    {
      id = "error_msg",
      name = "ErrorMessage",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "RequiredItem",
      name = "Required Item",
      editor = "combo",
      default = false,
      items = function(self)
        return table.keys2(InventoryItemDefs, "sorted", "")
      end
    },
    {
      id = "RequiredResources",
      editor = "string_list",
      default = {},
      item_default = "Money",
      items = function(self)
        local items = table.imap(SectorOperationResouces, "id")
        table.sort(items)
        return items
      end
    },
    {
      id = "GetSectorSlots",
      help = "Maximum merc slots per profession for this operation in the sector",
      editor = "func",
      default = function(self, prof, sector)
        return 1
      end,
      params = "self, prof, sector"
    },
    {
      id = "related_stat",
      name = "Associated Stat",
      help = "Stat which is used to advance the operation per tick (50 for no selected stat)",
      editor = "combo",
      default = false,
      items = function(self)
        return UnitPropertiesStats:GetProperties()
      end
    },
    {
      id = "related_stat_2",
      name = "Second Associated Stat",
      help = "Between the two stats - the one with higher value is counted",
      editor = "combo",
      default = false,
      items = function(self)
        return UnitPropertiesStats:GetProperties()
      end
    },
    {
      id = "min_requirement_stat",
      name = "Min Requirement Stat",
      help = "Given Stat at given value required for mercs to be able to perform the operation",
      editor = "combo",
      default = false,
      items = function(self)
        return UnitPropertiesStats:GetProperties()
      end
    },
    {
      id = "min_requirement_stat_value",
      name = "Min Requirement Value",
      help = "Min value of the stat required for mercs to be able to perform the operation",
      editor = "number",
      default = 0
    },
    {
      id = "target_contribution",
      name = "Target Contribution",
      help = "Each tick the merc contributes his Associated Stat (or 50 if no stat is set) towards a value that has to reach Target Contribution to finish the Operation",
      editor = "number",
      default = 1000
    },
    {
      id = "target_example",
      name = "Target Example Time",
      help = "The time (in hours) it would take for a full set of mercs with stat 100 to finish the operation.",
      editor = "number",
      default = 1000,
      dont_save = true,
      read_only = true
    },
    {
      id = "bonus_perks",
      name = "Bonus Perks",
      help = "Each perk provides additional contribution",
      editor = "nested_list",
      default = false,
      base_class = "SectorOperationBonusPerk",
      auto_expand = true
    },
    {
      id = "Tick",
      name = "Tick",
      editor = "func",
      default = function(self, merc)
        local sector = merc:GetSector()
        local progress_per_tick = self:ProgressPerTick(merc)
        if CheatEnabled("FastActivity") then
          progress_per_tick = progress_per_tick * 100
        end
        self:ModifyProgress(progress_per_tick, sector)
        self:CheckCompleted(merc, sector)
      end,
      params = "self, merc"
    },
    {
      id = "SectorMercsTick",
      name = "SectorMercsTick",
      editor = "func",
      default = function(self, merc)
      end,
      params = "self, merc"
    },
    {
      id = "CheckCompleted",
      editor = "func",
      default = function(self, merc, sector)
        if self:ProgressCurrent(merc, sector) >= self:ProgressCompleteThreshold(merc, sector) then
          self:Complete(sector)
        end
      end,
      params = "self, merc, sector"
    },
    {
      id = "Complete",
      editor = "func",
      default = function(self, sector)
        local mercs = GetOperationProfessionals(sector.Id, self.id)
        local merc_names = {}
        for _, merc in ipairs(mercs) do
          merc_names[#merc_names + 1] = merc.Nick
          merc:SetCurrentOperation("Idle")
        end
        self:OnComplete(sector, mercs)
        if next(merc_names) then
          CombatLog("important", T({
            352089713704,
            "<em><mercs></em> finished <em><activity></em> in <SectorName(sector)>",
            mercs = ConcatListWithAnd(merc_names),
            activity = self.display_name,
            sector = sector
          }))
        end
        Msg("OperationCompleted", self, mercs, sector)
      end,
      params = "self, sector"
    },
    {
      id = "OnComplete",
      editor = "func",
      default = function(self, sector, mercs)
        if self.Custom then
          local ca = sector.custom_operations[self.id]
          if not self.CustomRepeat then
            ca.status = "completed"
          else
            ca.progress = 0
          end
          local script = ca.EffectsOnSuccess
          if script then
            ExecuteEffectList(script)
          end
          local loot_table = ca.LootTableId
          if loot_table then
            local apply = ca.GrantItemApply
            local units = apply == "all" and mercs or {
              mercs[1]
            }
            for _, unit in ipairs(units) do
              local items = {}
              local loot_tbl = LootDefs[loot_table]
              if loot_tbl then
                loot_tbl:GenerateLoot(self, {}, unit:Random(), items)
                local squad = unit.Squad
                local all_squad_mercs = gv_Squads[squad].units
                AddItemsToSquadBag(unit.Squad, items)
                if 0 < #items then
                  unit:AddItemsToInventory(items)
                end
                if 0 < #items then
                  for idx, merc in ipairs(all_squad_mercs) do
                    if #items <= 0 then
                      break
                    end
                    local u = gv_UnitData[merc]
                    u:AddItemsToInventory(items)
                  end
                end
                if 0 < #items then
                  local stash = GetSectorInventory(sector.Id)
                  if stash then
                    AddItemsToInventory(stash, items, true)
                  end
                end
                if 0 < #items then
                  CombatLog("important", T({
                    825769344536,
                    "Inventory full. <name> can not grant all items",
                    name = unit:GetDisplayName()
                  }))
                end
              end
            end
          end
        end
      end,
      params = "self, sector, mercs"
    },
    {
      id = "ProgressPerTick",
      name = "ProgressPerTick",
      editor = "func",
      default = function(self, merc, prediction)
        if self.Custom then
          local bonus = 0
          local perks = self.bonus_perks
          for _, bp in ipairs(self.bonus_perks or empty_table) do
            if HasPerk(merc, bp.perk) then
              bonus = bonus + bp.bonus
            end
          end
          local _, val = self:GetRelatedStat(merc)
          return (val or 50) + bonus
        end
        return 0
      end,
      params = "self, merc, prediction"
    },
    {
      id = "ProgressCompleteThreshold",
      editor = "func",
      default = function(self, merc, sector, prediction)
        if self.Custom then
          return self.target_contribution
        end
        return 0
      end,
      params = "self, merc, sector, prediction"
    },
    {
      id = "ProgressCurrent",
      editor = "func",
      default = function(self, merc, sector, prediction)
        return self.Custom and sector.custom_operations and sector.custom_operations[self.id] and sector.custom_operations[self.id].progress or -1
      end,
      params = "self, merc, sector, prediction"
    },
    {
      id = "OnSetOperation",
      name = "OnSetOperation",
      editor = "func",
      default = function(self, merc, arg)
      end,
      params = "self, merc, arg"
    },
    {
      id = "OnRemoveOperation",
      name = "OnRemoveOperation",
      editor = "func",
      default = function(self, merc)
      end,
      params = "self, merc"
    },
    {
      id = "OnMove",
      name = "OnMove",
      editor = "func",
      default = function(self, merc, already_synced)
        local operation_id = self.id
        if operation_id == "Traveling" or operation_id == "Idle" or operation_id == "Arriving" then
          return
        end
        local sector = merc:GetSector()
        local mercs = GetOperationProfessionals(sector.Id, operation_id, false, merc.session_id)
        if #mercs <= 0 then
          if already_synced then
            local event_id = GetOperationEventId(merc, operation_id)
            RemoveTimelineEvent(event_id)
            NetSyncEvents.InterruptSectorOperation(sector.Id, operation_id)
          else
            NetSyncEvent("InterruptSectorOperation", sector.Id, operation_id)
          end
          Msg("OperationCompleted", SectorOperations[operation_id], mercs, sector)
        end
      end,
      params = "self, merc,already_synced"
    },
    {
      id = "GetOperationCost",
      editor = "func",
      default = function(self, merc, profession, idx)
        return {}
      end,
      params = "self, merc, profession, idx"
    },
    {
      id = "FilterAvailable",
      editor = "func",
      default = function(self, merc, profession)
        return not self.min_requirement_stat or merc[self.min_requirement_stat] >= self.min_requirement_stat_value
      end,
      params = "self, merc, profession"
    },
    {
      id = "CanPerformOperation",
      editor = "func",
      default = function(self, merc, profession)
        return self:CanPerformOperationBase(merc, profession)
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, merc, profession"
    },
    {
      id = "CanPerformOperationBase",
      editor = "func",
      default = function(self, merc, profession)
        local cost = self:GetOperationCost(merc, profession)
        if not CanPayOperation(cost, merc:GetSector()) then
          return "OperationResourceError", {
            activity = self.display_name
          }
        elseif merc:IsTravelling() then
          return "OperationTravelError", {
            activity = self.display_name
          }
        elseif self.RequiredItem and not merc:HasItem(self.RequiredItem) then
          return "OperationMissingItemError", {
            activity = self.display_name,
            item = InventoryItemDefs[self.RequiredItem].DisplayName
          }
        end
      end,
      no_edit = true,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, merc, profession"
    },
    {
      id = "HasOperation",
      editor = "func",
      default = function(self, sector)
        if self.Custom then
          return sector.custom_operations and sector.custom_operations[self.id] and sector.custom_operations[self.id].status == "enabled"
        end
        return true
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, sector"
    },
    {
      id = "IsEnabled",
      editor = "func",
      default = function(self, sector)
        return true
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, sector"
    },
    {
      id = "GetDescription",
      editor = "func",
      default = function(self, merc)
        return self.description
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, merc"
    },
    {
      id = "GetTimelineEventDescription",
      editor = "func",
      default = function(self, sector_id, eventcontext)
        local mercs
        local professionId = self.Professions and self.Professions[1] and self.Professions[1].id
        if eventcontext.mercs then
          mercs = table.map(eventcontext.mercs, function(id)
            return gv_UnitData[id].Nick
          end)
        else
          mercs = GetOperationProfessionalsGroupedByProfession(sector_id, self.id)
          mercs = table.map(professionId and mercs[professionId] or mercs, "Nick")
        end
        mercs = ConcatListWithAnd(mercs)
        return T({
          366696912627,
          "<em><mercs></em> will finish <activityName>.",
          mercs = mercs,
          activityName = self.display_name
        })
      end,
      params = "self, sector_id, eventcontext"
    },
    {
      id = "GetAssignMessage",
      editor = "func",
      default = function(self, nameCombination, costTexts)
        costTexts = T(210127148759, "<newline>It will cost ") .. table.concat(costTexts, T(642697486575, ", ")) .. T(194271688304, ".")
        return T({
          810287359580,
          "Do you want to assign mercs - <names> to this Operation? <costTexts>",
          names = nameCombination,
          costTexts = costTexts
        })
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, nameCombination, costTexts"
    },
    {
      id = "SectorOperationStats",
      editor = "func",
      default = function(self, sector, check_only)
        if self.Custom then
          local lines = {}
          if self.min_requirement_stat and self.min_requirement_stat_value then
            local prop = table.find_value(UnitPropertiesStats:GetProperties(), "id", self.min_requirement_stat)
            if check_only then
              return true
            end
            lines[#lines + 1] = {
              text = T({
                300232421689,
                "Min Required <name>",
                name = prop.name
              }),
              value = T({
                139355455984,
                "<min_requirement_stat_value>",
                self
              })
            }
          end
          local progressVal = MulDivTrunc(self:ProgressCurrent(nil, sector) or 0, 100, self:ProgressCompleteThreshold(nil, sector))
          if check_only then
            return true
          end
          lines[#lines + 1] = {
            text = T(349715428104, "Current Progress"),
            value = T({
              257328164584,
              "<percent(value)>",
              value = progressVal
            })
          }
          return lines, progressVal
        end
        return false, false
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, sector, check_only"
    },
    {
      id = "GetErrorMessage",
      editor = "func",
      default = function(self, merc)
        local genericError = self:CanPerformOperation(merc)
        if genericError and self.error_msg then
          return self.error_msg
        end
        if genericError == "OperationMissingItemError" then
          return T({
            996660950207,
            "Missing required item <ItemName(RequiredItem)>.",
            self
          })
        end
        if genericError then
          return Untranslated(genericError)
        end
        return false
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, merc"
    },
    {
      id = "ModifyProgress",
      editor = "func",
      default = function(self, value, sector)
        if self.Custom then
          local ac = sector.custom_operations and sector.custom_operations[self.id]
          if ac then
            ac.progress = ac.progress + value
          end
        end
      end,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, value, sector"
    },
    {
      id = "BoostProgress",
      editor = "func",
      default = function(self, perc, sector)
        local progress = self:ProgressCompleteThreshold(nil, sector) * perc / 100
        self:ModifyProgress(Min(progress, self:ProgressCompleteThreshold(nil, sector) - self:ProgressCurrent(nil, sector)), sector)
        ObjModified(sector)
      end,
      no_edit = true,
      no_edit = function(self)
        return self.Custom
      end,
      params = "self, perc, sector"
    },
    {
      id = "GetRelatedStat",
      editor = "func",
      default = function(self, merc, sector)
        local stat1 = self.related_stat
        local stat2 = self.related_stat_2
        if stat1 or stat2 then
          local stat = stat1
          if not stat1 or stat2 and merc[stat2] > merc[stat1] then
            stat = stat2
          end
          return stat, merc[stat]
        end
      end,
      params = "self, merc, sector"
    }
  },
  HasSortKey = true,
  HasParameters = true,
  GlobalMap = "SectorOperations",
  EditorMenubarName = "Sector Operations",
  EditorIcon = "CommonAssets/UI/Icons/location marker pin.png",
  EditorMenubar = "Scripting",
  EditorMenubarSortKey = "4500"
}
DefineModItemPreset("SectorOperation", {
  EditorName = "Sector operation",
  EditorSubmenu = "Satellite"
})
function SectorOperation:Gettarget_example()
  return self.target_contribution / (4 * self:GetSectorSlots() * 100)
end
DefineClass.SectorOperationBonusPerk = {
  __parents = {
    "PropertyObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "perk",
      name = "Perk",
      help = "Mercs with this perk provide bonus contribution per tick",
      editor = "preset_id",
      default = false,
      preset_class = "CharacterEffectCompositeDef",
      preset_filter = function(preset, obj, prop_meta)
        return preset.object_class == "Perk"
      end
    },
    {
      id = "bonus",
      name = "Bonus",
      help = "Value of the bonus contribution per tick",
      editor = "number",
      default = false
    }
  }
}
DefineClass.SectorOperationProfession = {
  __parents = {
    "PropertyObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      id = "id",
      name = "Id",
      help = "Profession",
      editor = "text",
      default = false
    },
    {
      id = "display_name",
      name = "Display Name",
      help = "Profession",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "description",
      name = "Description",
      help = "Profession",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "display_name_all_caps",
      name = "Display Name All Caps",
      help = "Profession",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "display_name_plural",
      name = "Display Name Plural",
      help = "Profession",
      editor = "text",
      default = false,
      translate = true
    },
    {
      id = "display_name_plural_all_caps",
      name = "Display Name Plural All Caps",
      help = "Profession",
      editor = "text",
      default = false,
      translate = true
    }
  }
}


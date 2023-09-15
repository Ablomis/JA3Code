UndefineClass("HE_Grenade")
DefineClass.HE_Grenade = {
  __parents = {"Grenade"},
  __generated_by_class = "InventoryItemCompositeDef",
  object_class = "Grenade",
  Repairable = false,
  Reliability = 100,
  Icon = "UI/Icons/Weapons/HEGrenade",
  ItemType = "Grenade",
  DisplayName = T(437605005390, "Grenade"),
  DisplayNamePlural = T(761036999825, "Grenades"),
  UnitStat = "Explosives",
  Cost = 1500,
  MinMishapChance = -2,
  MaxMishapChance = 18,
  MaxMishapRange = 6,
  CenterUnitDamageMod = 130,
  CenterObjDamageMod = 500,
  AreaObjDamageMod = 500,
  PenetrationClass = 4,
  DeathType = "BlowUp",
  BaseDamage = 32,
  Entity = "MilitaryCamp_Grenade_02",
  ActionIcon = "UI/Icons/Hud/throw_grenade"
}


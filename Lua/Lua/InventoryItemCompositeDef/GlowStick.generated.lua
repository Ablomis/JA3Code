UndefineClass("GlowStick")
DefineClass.GlowStick = {
  __parents = {"Flare"},
  __generated_by_class = "InventoryItemCompositeDef",
  object_class = "Flare",
  Repairable = false,
  Reliability = 100,
  Icon = "UI/Icons/Weapons/GlowStick",
  ItemType = "Throwables",
  DisplayName = T(517885924891, "Glow Stick"),
  DisplayNamePlural = T(808212665145, "Glow Sticks"),
  AdditionalHint = T(354093002478, "<bullet_point> Illuminates a small area"),
  UnitStat = "Explosives",
  Cost = 1500,
  MinMishapChance = -2,
  MaxMishapChance = 18,
  MaxMishapRange = 6,
  CenterUnitDamageMod = 0,
  CenterObjDamageMod = 0,
  AreaOfEffect = 2,
  AreaUnitDamageMod = 0,
  AreaObjDamageMod = 0,
  PenetrationClass = 1,
  BaseDamage = 0,
  Scatter = 4,
  AttackAP = 2000,
  BaseRange = 10,
  ThrowMaxRange = 20,
  CanBounce = false,
  Noise = 0,
  Entity = "Weapon_MolotovCocktail",
  ActionIcon = "UI/Icons/Hud/throw_glowstick",
  ExpirationTurns = 10
}


UndefineClass("SteroidPunchGrenade")
DefineClass.SteroidPunchGrenade = {
  __parents = {"Grenade"},
  __generated_by_class = "InventoryItemCompositeDef",
  object_class = "Grenade",
  Repairable = false,
  Reliability = 100,
  Icon = "UI/Icons/Weapons/Fist",
  DisplayName = T(464793431675, "Steroid Punch"),
  DisplayNamePlural = T(421052735666, "Steroid Punches"),
  UnitStat = "Explosives",
  Cost = 1500,
  MinMishapChance = 0,
  MaxMishapChance = 0,
  MinMishapRange = 1,
  MaxMishapRange = 1,
  AreaOfEffect = 1,
  BaseDamage = 15,
  Scatter = 4,
  AttackAP = 2000,
  BaseRange = 3,
  IgnoreCoverReduction = 1,
  Noise = 0,
  Entity = "MilitaryCamp_Grenade_01"
}


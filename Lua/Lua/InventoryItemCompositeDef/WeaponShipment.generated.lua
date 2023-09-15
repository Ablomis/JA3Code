UndefineClass("WeaponShipment")
DefineClass.WeaponShipment = {
  __parents = {
    "ValuableItemContainer"
  },
  __generated_by_class = "InventoryItemCompositeDef",
  object_class = "ValuableItemContainer",
  Repairable = false,
  Icon = "UI/Icons/Items/weapon_briefcase",
  DisplayName = T(520738190079, "Weapon Shipment"),
  DisplayNamePlural = T(240149537921, "Weapon Shipments"),
  Description = T(668450550818, "A shipment of weapons and ammo recovered from the enemy."),
  AdditionalHint = T(561475317234, "<bullet_point> <GameColorD>Can be opened to receive the items</GameColorD>"),
  is_valuable = true,
  loot_def = "WeaponShipment"
}


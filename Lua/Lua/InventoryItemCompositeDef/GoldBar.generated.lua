UndefineClass("GoldBar")
DefineClass.GoldBar = {
  __parents = {
    "ValuablesStack"
  },
  __generated_by_class = "InventoryItemCompositeDef",
  object_class = "ValuablesStack",
  Repairable = false,
  Icon = "UI/Icons/Items/gold_bar",
  DisplayName = T(190438886927, "Gold Bar"),
  DisplayNamePlural = T(139403300827, "Gold Bars"),
  Description = T(147062904895, "Gold - what can it not do, and undo?"),
  AdditionalHint = T(260907109485, "<bullet_point> <GameColorD>Can be cashed in for Money</GameColorD>"),
  is_valuable = true,
  Cost = 3000,
  MaxStacks = 5
}


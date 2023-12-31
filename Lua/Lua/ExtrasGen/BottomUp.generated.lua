rawset(_G, "ExtrasGenPrgs", rawget(_G, "ExtrasGenPrgs") or {})
function ExtrasGenPrgs.BottomUp(seed, initial_selection)
  local li = {id = "BottomUp"}
  initial_selection = initial_selection or editor.GetSel()
  local rand = BraidRandomCreate(seed or AsyncRand())
  local _, guides
  prgdbg(li, 1, 1)
  _, guides = sprocall(PlaceRoomGuides.Exec, PlaceRoomGuides, initial_selection, guides, "Wall exterior", true, true, true, true, true, true, "Bottom", 1, 0, 0, "Inwards (wall)")
  prgdbg(li, 1, 2)
  sprocall(SelectInEditor.Exec, SelectInEditor, guides, true, true)
end


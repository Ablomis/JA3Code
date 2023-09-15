rawset(_G, "SetpiecePrgs", rawget(_G, "SetpiecePrgs") or {})
function SetpiecePrgs.DowntownFirstEnter_Chimurenga(seed, state, MainActor, TargetActor, TargetActor2)
  local li = {
    id = "DowntownFirstEnter_Chimurenga"
  }
  local rand = BraidRandomCreate(seed or AsyncRand())
  prgdbg(li, 1, 1)
  sprocall(SetpieceSetStance.Exec, SetpieceSetStance, state, rand, true, "", MainActor, "Standing", "Current Weapon", true)
  prgdbg(li, 1, 2)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 400)
  prgdbg(li, 1, 3)
  sprocall(SetpieceAnimation.Exec, SetpieceAnimation, state, rand, true, "", MainActor, "", true, "ar_Standing_CombatBegin2", 1000, 0, range(1, 1), 0, false, true, false, "")
  prgdbg(li, 1, 4)
  sprocall(SetpieceSetStance.Exec, SetpieceSetStance, state, rand, true, "", MainActor, "Crouch", "Current Weapon", true)
  prgdbg(li, 1, 5)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 1200)
  prgdbg(li, 1, 6)
  sprocall(SetpieceWaitCheckpoint.Exec, SetpieceWaitCheckpoint, state, rand, "PantagruelFirstEnter_SynPoint")
  prgdbg(li, 1, 7)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 300)
  prgdbg(li, 1, 8)
  sprocall(SetpieceShoot.Exec, SetpieceShoot, state, rand, true, "", MainActor, "Unit", TargetActor2, "Torso", "", 1, 0, 0, 100, 0, 0)
  prgdbg(li, 1, 9)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 2500)
  prgdbg(li, 1, 10)
  sprocall(SetpieceShoot.Exec, SetpieceShoot, state, rand, true, "", MainActor, "Point", TargetActor2, "Torso", "AttackPointRebel1", 1, 0, 0, 100, 400, 0)
end


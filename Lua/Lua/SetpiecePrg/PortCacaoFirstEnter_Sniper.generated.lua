rawset(_G, "SetpiecePrgs", rawget(_G, "SetpiecePrgs") or {})
function SetpiecePrgs.PortCacaoFirstEnter_Sniper(seed, state, MainActor, TargetActor, TargetActor2, TargetActor3, TargetActor4)
  local li = {
    id = "PortCacaoFirstEnter_Sniper"
  }
  local rand = BraidRandomCreate(seed or AsyncRand())
  prgdbg(li, 1, 1)
  sprocall(SetpieceSetStance.Exec, SetpieceSetStance, state, rand, true, "", MainActor, "Crouch", "Current Weapon", true)
  local _, SniperSpot
  prgdbg(li, 1, 2)
  _, SniperSpot = sprocall(SetpieceTeleport.Exec, SetpieceTeleport, state, MainActor, "SniperSpot", true)
  prgdbg(li, 1, 3)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 5)
  prgdbg(li, 1, 4)
  sprocall(SetpieceAnimation.Exec, SetpieceAnimation, state, rand, false, "", MainActor, "", true, "ar_Crouch_Aim", 900, 0, range(1, 1), 0, false, true, false, "")
  prgdbg(li, 1, 5)
  sprocall(SetpieceWaitCheckpoint.Exec, SetpieceWaitCheckpoint, state, rand, "PortCacaoCity_SecondBanterDone")
  prgdbg(li, 1, 6)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 3500)
  prgdbg(li, 1, 7)
  sprocall(SetpieceShoot.Exec, SetpieceShoot, state, rand, true, "", MainActor, "Unit", TargetActor, "Torso", "", 1, 0, 200, 100, 0, 0)
  prgdbg(li, 1, 8)
  sprocall(SetpieceAnimation.Exec, SetpieceAnimation, state, rand, false, "", TargetActor2, "", true, "ar_Crouch_Aim", 900, 0, range(1, 1), 0, false, true, false, "")
  prgdbg(li, 1, 9)
  sprocall(SetpieceAnimation.Exec, SetpieceAnimation, state, rand, false, "", TargetActor4, "", true, "ar_Standing_CombatBegin3", 900, 0, range(1, 1), 0, false, true, false, "")
  prgdbg(li, 1, 10)
  sprocall(SetpieceDeath.Exec, SetpieceDeath, state, rand, false, "", TargetActor, "civ_DeathBlow_B")
  prgdbg(li, 1, 11)
  sprocall(SetpieceSleep.Exec, SetpieceSleep, state, rand, true, "", 400)
  prgdbg(li, 1, 12)
  sprocall(SetpieceAnimation.Exec, SetpieceAnimation, state, rand, false, "", TargetActor3, "", true, "ar_Crouch_Dodge", 900, 0, range(1, 1), 0, true, true, false, "")
end


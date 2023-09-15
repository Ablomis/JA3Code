rawset(_G, "SetpiecePrgs", rawget(_G, "SetpiecePrgs") or {})
function SetpiecePrgs.Cinematic_Intro_Bake(seed, state, TriggerUnits)
  local li = {
    id = "Cinematic_Intro_Bake"
  }
  local rand = BraidRandomCreate(seed or AsyncRand())
  prgdbg(li, 1, 1)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, false, "", "Tac", "", "", "linear", 0, false, false, point(154871, 163825, 9736), point(156653, 161761, 10985), false, false, 5000, 1000, false, 100, 100, 4000, 10000, 200, 1000, "Default", 100)
  prgdbg(li, 1, 2)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 1)
  prgdbg(li, 1, 3)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", 0, "decelerated", "linear", 9000, false, false, point(155224, 164129, 9736), point(157006, 162065, 10985), point(155383, 164267, 9736), point(157165, 162203, 10985), 5000, 1000, false, 100, 100, 4000, 10000, 20, 1000, "Default", 100)
  prgdbg(li, 1, 4)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 600)
  prgdbg(li, 1, 5)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 400)
  prgdbg(li, 1, 6)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "decelerated", "linear", 13000, false, false, point(156038, 167908, 8547), point(158999, 167771, 9019), point(155486, 167934, 8458), point(158447, 167797, 8930), 4200, 2000, false, 100, 0, 3000, 0, 200, 0, "Default", 100)
  prgdbg(li, 1, 8)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 400)
  prgdbg(li, 1, 9)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 10)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 14000, false, false, point(150604, 168278, 7558), point(153515, 168044, 8250), point(150583, 168035, 7558), point(153495, 167804, 8250), 3200, 2000, false, 0, 70, 0, 4000, 0, 200, "Default", 100)
  prgdbg(li, 1, 12)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 300)
  prgdbg(li, 1, 13)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 14)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 16000, false, false, point(150839, 168776, 5826), point(152478, 168348, 8304), point(150764, 168796, 5879), point(152403, 168368, 8357), 3200, 2000, false, 70, 100, 700, 760, 100, 200, "Default", 100)
  prgdbg(li, 1, 16)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 300)
  prgdbg(li, 1, 17)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 18)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 19000, false, false, point(150518, 168473, 6335), point(152353, 166993, 8191), point(150686, 168338, 6326), point(152521, 166858, 8182), 3200, 2000, false, 100, 100, 600, 800, 200, 200, "Default", 100)
  prgdbg(li, 1, 20)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 300)
  prgdbg(li, 1, 21)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 22)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 16000, false, false, point(150693, 166729, 6044), point(152135, 168136, 8266), point(150775, 166645, 6044), point(152217, 168052, 8266), 3200, 2000, false, 60, 80, 600, 700, 1000, 300, "Default", 100)
  prgdbg(li, 1, 24)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 300)
  prgdbg(li, 1, 25)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 26)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 12000, false, false, point(151082, 167006, 6394), point(152805, 167971, 8654), point(150948, 166931, 6218), point(152671, 167896, 8478), 2200, 2000, false, 20, 80, 1200, 1340, 100, 100, "Default", 100)
  prgdbg(li, 1, 28)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 300)
  prgdbg(li, 1, 29)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 30)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 20000, false, false, point(150468, 168715, 6591), point(152411, 167844, 8707), point(150534, 168864, 6591), point(152477, 167993, 8707), 2200, 2000, false, 60, 80, 1200, 1400, 800, 60, "Default", 100)
  prgdbg(li, 1, 32)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 300)
  prgdbg(li, 1, 33)
  sprocall(SetpieceFadeIn.Exec, SetpieceFadeIn, state, rand, false, "", 0, 100)
  prgdbg(li, 1, 34)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "", "linear", 0, false, false, point(151239, 167997, 5798), point(152417, 167997, 8557), point(151273, 167996, 5508), point(152275, 167996, 8337), 3200, 2000, false, 30, 100, 0, 870, 0, 200, "Default", 100)
  prgdbg(li, 1, 36)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, true, "", "Max", "", "linear", "linear", 7000, false, false, point(151239, 167997, 5798), point(152417, 167997, 8557), point(151211, 167997, 5733), point(152389, 167997, 8492), 3200, 2000, false, 30, 100, 0, 870, 0, 200, "Default", 100)
  prgdbg(li, 1, 37)
  sprocall(SetpieceCamera.Exec, SetpieceCamera, state, rand, false, "", "Max", "", "accelerated", "linear", 2000, false, false, point(150425, 167997, 3893), point(152389, 167997, 8492), point(151273, 167996, 5508), point(152275, 167996, 8337), 3200, 2000, false, 30, 100, 0, 870, 0, 200, "Default", 100)
  prgdbg(li, 1, 38)
  sprocall(SetpieceFadeOut.Exec, SetpieceFadeOut, state, rand, true, "", 2000)
end


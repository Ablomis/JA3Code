UndefineClass("FlayNPC")
DefineClass.FlayNPC = {
  __parents = {"UnitData"},
  __generated_by_class = "UnitDataCompositeDef",
  object_class = "UnitData",
  Health = 79,
  Agility = 63,
  Dexterity = 78,
  Strength = 80,
  Wisdom = 79,
  Leadership = 12,
  Marksmanship = 84,
  Mechanical = 18,
  Explosives = 0,
  Medical = 50,
  Portrait = "UI/MercsPortraits/Flay",
  BigPortrait = "UI/Mercs/Flay",
  Name = T(353945239013, "Flay"),
  Nick = T(804664644600, "Flay"),
  AllCapsNick = T(965234833293, "FLAY"),
  Affiliation = "Secret",
  Bio = T(481901656150, "A native poacher, Flay has been dealing in extremely illegal merchandise and hunted every animal imaginable. Nowadays, he is driven by the allure that now, the times being chaotic as they are in the region, is the time to hunt down the only beasts he has never hunted so far - humans. A very difficult man to like, he is skilled in what he does and won't take much convincing to join you as it is obvious you are his best vehicle to achieve the loathsome goal."),
  StartingLevel = 2,
  ImportantNPC = true,
  neutral_retaliate = true,
  AIKeywords = {"Sniper"},
  MaxAttacks = 2,
  RewardExperience = 0,
  MaxHitPoints = 79,
  StartingPerks = {"Psycho"},
  AppearancesList = {
    PlaceObj("AppearanceWeight", {"Preset", "Flay"})
  },
  Equipment = {"FlayNPC"},
  Tier = "Veteran",
  gender = "Male",
  VoiceResponseId = "Flay"
}


UndefineClass("BiffNPC")
DefineClass.BiffNPC = {
  __parents = {"UnitData"},
  __generated_by_class = "UnitDataCompositeDef",
  object_class = "UnitData",
  Health = 73,
  Agility = 74,
  Dexterity = 71,
  Strength = 41,
  Wisdom = 58,
  Leadership = 13,
  Marksmanship = 57,
  Mechanical = 0,
  Explosives = 4,
  Medical = 24,
  Portrait = "UI/NPCsPortraits/Biff",
  BigPortrait = "UI/NPCs/Biff",
  Name = T(447824364786, "Biff Apscott"),
  Nick = T(164016871770, "Biff"),
  AllCapsNick = T(698769942039, "BIFF"),
  Affiliation = "Other",
  StartingLevel = 3,
  ImportantNPC = true,
  AIKeywords = {"Soldier"},
  MaxAttacks = 2,
  RewardExperience = 0,
  MaxHitPoints = 69,
  StartingPerks = {"Teacher"},
  AppearancesList = {
    PlaceObj("AppearanceWeight", {"Preset", "Biff"})
  },
  Equipment = {"Biff"},
  Specialization = "ExplosiveExpert",
  gender = "Male",
  PersistentSessionId = "NPC_Biff",
  VoiceResponseId = "BiffNPC"
}


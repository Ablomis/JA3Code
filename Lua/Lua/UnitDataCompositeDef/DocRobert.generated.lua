UndefineClass("DocRobert")
DefineClass.DocRobert = {
  __parents = {"UnitData"},
  __generated_by_class = "UnitDataCompositeDef",
  object_class = "UnitData",
  Health = 85,
  Agility = 85,
  Dexterity = 85,
  Strength = 75,
  Wisdom = 90,
  Leadership = 0,
  Marksmanship = 80,
  Mechanical = 0,
  Explosives = 0,
  Medical = 90,
  Portrait = "UI/NPCsPortraits/DocRobert",
  BigPortrait = "UI/NPCs/DocRobert",
  Name = T(886403581998, "Painless Doc Robert"),
  Affiliation = "Other",
  StartingLevel = 6,
  ImportantNPC = true,
  neutral_retaliate = true,
  AIKeywords = {"MobileShot"},
  archetype = "Skirmisher",
  MaxAttacks = 2,
  RewardExperience = 0,
  MaxHitPoints = 60,
  StartingPerks = {
    "Shatterhand",
    "BattleFocus"
  },
  AppearancesList = {
    PlaceObj("AppearanceWeight", {"Preset", "DocRobert"})
  },
  Equipment = {"DocRobert"},
  pollyvoice = "Russell",
  gender = "Male",
  PersistentSessionId = "NPC_DocRobert",
  VoiceResponseId = "DocRobert"
}


-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "J-11 - Jungle",
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "Savanna",
	id = "VoodooChickenMove3_Veinard",
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "LuckyVeinard",
		Group = "Veinard",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1500,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "LuckyVeinard",
		Marker = "Waypoint2_04",
		RandomizePhase = true,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "foundbucket",
				QuestId = "TreasureHunting",
			}),
			PlaceObj('QuestSetVariableNum', {
				Amount = 1,
				Prop = "treasures",
				QuestId = "TreasureHunting",
			}),
		},
	}),
})


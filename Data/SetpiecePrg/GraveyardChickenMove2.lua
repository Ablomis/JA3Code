-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Comment = "Main Setpiece",
	Map = "C-3 - Savanna",
	StopMercMovement = false,
	TakePlayerControl = false,
	Visibility = "Player",
	group = "Savanna",
	id = "GraveyardChickenMove2",
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Schliemann",
		Group = "chicken",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "LuckyVeinard",
		Group = "Veinard",
	}),
	PlaceObj('PrgPlaySetpiece', {
		Prg = "GraveyardChickenMove2_Schliemann",
		PrgClass = "SetpiecePrg",
		Wait = false,
	}),
	PlaceObj('PrgPlaySetpiece', {
		Prg = "GraveyardChickenMove2_Veinard",
		PrgClass = "SetpiecePrg",
		Wait = false,
	}),
})


-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "H-2 - Town of Erny",
	TakePlayerControl = false,
	group = "TownOfErny",
	id = "HangingLucPedestrian",
	PlaceObj('SetpieceSpawn', {
		AssignTo = "Pedestrian01",
		Marker = "SpawnPedestrian_01",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Pedestrian01",
		Animation = "civ_Standing_WalkSlow",
		Duration = 3500,
		Marker = "Pedestrian01LookRight",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Pedestrian01",
		Animation = "civ_WalkSlow_Neutral_LookRight",
		Duration = 3500,
		Marker = "Pedestrian01WalkTo",
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "HangingFloatCamera",
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Pedestrian01",
	}),
})


-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "C-7 - Fosse Noire",
	Params = {
		"MainActor",
		"TargetActor1",
		"TargetActor2",
	},
	TakePlayerControl = false,
	group = "Pantagruel",
	id = "FosseNoir_RebelActor2",
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		InitialDelay = 3450,
		TargetBodyPart = "Head",
		TargetUnits = "TargetActor2",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "ar_Standing_Idle",
		Duration = 1000,
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		AssignTo = "SP_RebelActor2_Shot",
		InitialDelay = 2000,
		ShotInterval = 1000,
		TargetBodyPart = "Legs",
		TargetPos = "SP_RebelActor2_Shot",
		TargetType = "Point",
		TargetUnits = "TargetActor1",
	}),
})


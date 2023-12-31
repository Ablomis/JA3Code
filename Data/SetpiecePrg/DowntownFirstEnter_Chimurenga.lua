-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "D-8 - Pantagruel Downtown",
	Params = {
		"MainActor",
		"TargetActor",
		"TargetActor2",
	},
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "Pantagruel",
	id = "DowntownFirstEnter_Chimurenga",
	PlaceObj('SetpieceSetStance', {
		Actors = "MainActor",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 400,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "ar_Standing_CombatBegin2",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "MainActor",
		Stance = "Crouch",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1200,
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "PantagruelFirstEnter_SynPoint",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 300,
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		TargetUnits = "TargetActor2",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 2500,
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		TargetOffset = 400,
		TargetPos = "AttackPointRebel1",
		TargetType = "Point",
		TargetUnits = "TargetActor2",
	}),
})


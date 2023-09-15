-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "D-8 - Pantagruel Downtown",
	Params = {
		"MainActor",
		"TargetActor",
	},
	TakePlayerControl = false,
	group = "Pantagruel",
	id = "DowntownFirstEnter_LegionActor1",
	PlaceObj('SetpieceTeleport', {
		Actors = "MainActor",
		AssignTo = "LegionActor3Start",
		Marker = "LegionActor1Start",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "MainActor",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "ar_Standing_CombatBegin3",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 800,
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "PantagruelFirstEnter_SynPoint",
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		AssignTo = "AttackPointLegion1",
		InitialDelay = 300,
		TargetBodyPart = "Arms",
		TargetOffset = 800,
		TargetPos = "AttackPointLegion1",
		TargetType = "Point",
		TargetUnits = "TargetActor",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 200,
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		AnimSpeed = 400,
		InitialDelay = 400,
		NumShots = 2,
		TargetBodyPart = "Arms",
		TargetUnits = "TargetActor",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 300,
	}),
	PlaceObj('SetpieceDeath', {
		Actors = "MainActor",
	}),
})


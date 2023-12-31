-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "D-8 - Pantagruel Downtown",
	Params = {
		"MainActor",
		"TargetActor",
	},
	TakePlayerControl = false,
	group = "Pantagruel",
	id = "DowntownFirstEnter_LegionActor2",
	PlaceObj('SetpieceTeleport', {
		Actors = "MainActor",
		AssignTo = "LegionActor3Start",
		Marker = "LegionActor2Start",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "MainActor",
		Stance = "Crouch",
	}),
	PlaceObj('SetpieceSleep', {
		Disable = true,
		Time = 300,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "MainActor",
		AssignTo = "LegionActor3MoveTo",
		Marker = "LegionActor2MoveTo",
		Stance = "Crouch",
		animated_rotation = true,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1800,
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "PantagruelFirstEnter_SynPoint",
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		ShotInterval = 500,
		TargetBodyPart = "Arms",
		TargetOffset = 1000,
		TargetPos = "AttackPointLegion2",
		TargetType = "Point",
		TargetUnits = "TargetActor",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 300,
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "MainActor",
		NumShots = 2,
		ShotInterval = 300,
		TargetBodyPart = "Arms",
		TargetOffset = 800,
		TargetPos = "AttackPointLegion2",
		TargetType = "Point",
		TargetUnits = "TargetActor",
	}),
})


-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "D-17 - Ille Morat",
	Params = {
		"MainActor",
	},
	StopMercMovement = false,
	TakePlayerControl = false,
	group = "IlleMorat",
	id = "IlleMorat_FE_Wlad",
	PlaceObj('SetpieceTeleport', {
		Actors = "MainActor",
		AssignTo = "LegionActor3Start",
		Marker = "SP_WladPort",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "MainActor",
		Transition = false,
		Weapon = "No Weapon",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "civ_Ambient_Weeding",
	}),
})


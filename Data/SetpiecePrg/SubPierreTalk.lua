-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "H-2 - Town of Erny",
	Params = {
		"MainActor",
	},
	TakePlayerControl = false,
	group = "TownOfErny",
	id = "SubPierreTalk",
	PlaceObj('SetpieceTeleport', {
		Actors = "MainActor",
		Marker = "PierreTalk",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "civ_Standing_Idle2",
		Marker = "PierreTalk",
		Rep = range(2, 2),
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "MainActor",
		Animation = "civ_Standing_Idle",
		Marker = "PierreTalk",
	}),
})


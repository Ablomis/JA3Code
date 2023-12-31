-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "K-9 - Port Cacao Docks",
	RestoreCamera = true,
	group = "PortCacao",
	hidden_actors = false,
	id = "KaylaStrike",
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 0,
		},
		CamType = "Tac",
		LookAt1 = point(161144, 141268, 8370),
		PanOnly = true,
		Pos1 = point(171709, 129640, 19370),
		Wait = false,
		Zoom = 1300,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Kayla",
		Group = "GangKayla",
	}),
	PlaceObj('SetpieceAssignFromParam', {
		AssignTo = "Merc",
		Parameter = "TriggerUnits",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Kayla",
		Animation = "mk_Standing_Machete_Attack_Forward",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Merc",
		AnimSpeed = 500,
		Animation = "nw_Standing_IdlePassive_Pain",
	}),
	PlaceObj('SetpiecePlayAwarenessAnim', {
		Actors = "Merc",
	}),
})


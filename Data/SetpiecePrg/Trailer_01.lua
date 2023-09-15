-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "G-8 - Colonial Mansion",
	RestoreCamera = true,
	group = "NotTrailers",
	id = "Trailer_01",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 0,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Ghost",
		Group = "Ghost",
		Marker = "Ghost",
	}),
	PlaceObj('SetpieceTacCamera', {
		Actors = "Ghost",
		Checkpoint = "FirstScene",
		FaceActor = true,
		Floor = 1,
		TransitionTime = 0,
		Wait = false,
		Zoom = true,
		ZoomLevel = 75,
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "Ghost",
		Transition = false,
		Weapon = "No Weapon",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		Animation = "dw_Standing_CombatBegin",
		Checkpoint = "FirstScene",
		Wait = false,
	}),
	PlaceObj('PrgPlayEffect', {
		Checkpoint = "FirstScene",
		Effects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"GhostStories_Clue_Ghost",
				},
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Wait = false,
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "FirstScene",
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 0,
		},
		Duration = 10000,
		Easing = 0,
		LookAt1 = point(124387, 164047, 19199),
		LookAt2 = point(129154, 150847, 21668),
		Movement = "linear",
		PanOnly = true,
		Pos1 = point(121879, 166941, 22413),
		Pos2 = point(126645, 153741, 24882),
		Wait = false,
		Zoom = 1300,
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Ghost",
		AssignTo = "GhostStartPos",
		Marker = "GhostStartPos",
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Ghost",
		AssignTo = "Hypo",
		Marker = "Hypo",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		Animation = "civ_Open_Door",
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Ghost",
		AssignTo = "TrapDoor",
		Marker = "TrapDoor",
		StraightLine = true,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		Animation = "civ_Standing_To_Crouch",
	}),
	PlaceObj('SetpieceFadeIn', {}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Ghost",
	}),
})


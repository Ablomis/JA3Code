-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "G-8 - Colonial Mansion",
	RestoreCamera = true,
	group = "Mansion",
	hidden_actors = false,
	id = "GhostStories_RunAway",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 300,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInTime = 1000,
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Ghost",
		Group = "Ghost",
		Marker = "Ghost",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "Ghost",
		Transition = false,
		Weapon = "No Weapon",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 800,
		Animation = "dw_Standing_CombatBegin",
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
	PlaceObj('SetStartCombatAnim', {
		Actors = "Ghost",
		Anim = "camera_Standing_CombatBegin4",
		AnimDuration = 6500,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 6200,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 300,
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Ghost",
		AssignTo = "GhostStartPos",
		Marker = "GhostStartPos",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 200,
	}),
	PlaceObj('SetpieceCamera', {
		CamType = "Tac",
		CameraMode = "Show all",
		Duration = 7000,
		LookAt1 = point(128552, 163140, 16533),
		Movement = "linear",
		Pos1 = point(125792, 166110, 19459),
		Wait = false,
		Zoom = 1150,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 300,
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 900,
		Animation = "civ_Standing_Run",
		Marker = "GhostStartPos_01",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 900,
		Animation = "civ_Standing_Run",
		Marker = "GhostPos_A",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 10,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Ghost",
		AssignTo = "Hypo",
		Marker = "Hypo",
		MoveStyle = "Run_RainHeavy",
		Stance = "Standing",
		animated_rotation = true,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 10,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 300,
		Animation = "dw_Open_Door",
		ReturnTo = "nw_Standing_CombatBegin2",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 10,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 400,
		Animation = "nw_Standing_CombatBegin2",
		Orient = false,
		Wait = false,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1200,
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Ghost",
		AssignTo = "GhostStartPos",
		Marker = "GhostPos_B_01",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 200,
	}),
	PlaceObj('SetpieceCamera', {
		CamType = "Tac",
		CameraMode = "Show all",
		Duration = 4000,
		LookAt1 = point(134702, 130334, 9512),
		Pos1 = point(130494, 127811, 10475),
		Wait = false,
		Zoom = 1150,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 200,
		FadeInTime = 400,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 600,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 800,
		Animation = "civ_Standing_Run",
		Marker = "GhostPos_B",
	}),
	PlaceObj('SetpieceFadeOut', {
		Checkpoint = "Final run",
		FadeOutTime = 1800,
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Ghost",
		AnimSpeed = 800,
		Animation = "civ_Standing_Run",
		Checkpoint = "Final run",
		Marker = "TrapDoor",
		Wait = false,
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "Final run",
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Ghost",
	}),
	PlaceObj('PrgForceStopSetpiece', {}),
})


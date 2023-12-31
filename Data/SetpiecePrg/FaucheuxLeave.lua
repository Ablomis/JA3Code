-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	CameraMode = "Show all",
	Map = "E-9 - Refugee Camp",
	group = "RefugeeCamp",
	hidden_actors = false,
	id = "FaucheuxLeave",
	PlaceObj('SetpieceFadeOut', {}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('ConditionalEffect', {
				'Conditions', {
					PlaceObj('SetpieceIsTestMode', {}),
				},
				'Effects', {
					PlaceObj('QuestSetVariableBool', {
						Prop = "Given",
						QuestId = "04_Betrayal",
					}),
				},
			}),
		},
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 0,
		},
		CamType = "Tac",
		Duration = 3000,
		Easing = 8,
		LookAt1 = point(131543, 139068, 17052),
		LookAt2 = point(131543, 139068, 17052),
		Pos1 = point(129077, 138016, 18400),
		Pos2 = point(129077, 138016, 18400),
		Wait = false,
		Zoom = 1300,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Faucheux",
		Group = "Faucheux",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "Faucheux",
		Wait = false,
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Faucheux",
		AssignTo = "FL_Faucheux_01",
		Marker = "FL_Faucheux_01",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Faucheux",
		Animation = "civ_Talk_ArmsDown3",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Lieutenant",
		Group = "Lieutenant",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Lieutenant",
		AssignTo = "FL_Liutenant_01",
		Marker = "FL_Liutenant_01",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Lieutenant",
		Animation = "ar_Standing_IdlePassive",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Soldier01",
		Group = "Soldier01",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Soldier01",
		AssignTo = "FL_Soldier01_01",
		Marker = "FL_Soldier01_01",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "Soldier01",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Soldier02",
		Group = "Soldier02",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Soldier02",
		AssignTo = "FL_Soldier02_01",
		Marker = "FL_Soldier02_01",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "Soldier02",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "UAZ",
		Group = "SP_FaucheuxLeave_UAZ",
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 1500,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Betrayal_Faucheux_SetpieceLeave",
				},
				searchInMap = true,
				searchInMarker = false,
			}),
		},
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Faucheux",
		Animation = "civ_WalkNormal_Neutral_Start",
		Duration = 175,
		Marker = "FL_Faucheux_04",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Faucheux",
		Animation = "civ_WalkNormal_Neutral_Base",
		Marker = "FL_Faucheux_03",
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 800,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Soldier02",
		AssignTo = "SP_FaucheuxLeave_Soldier02_01",
		Marker = "SP_FaucheuxLeave_Soldier02_01",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 200,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Soldier01",
		AssignTo = "SP_FaucheuxLeave_Soldier01_01",
		Marker = "SP_FaucheuxLeave_Soldier01_01",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1000,
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 0,
		LookAt1 = point(170362, 130391, 10363),
		Pos1 = point(172041, 132745, 11170),
		Wait = false,
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Faucheux",
		AssignTo = "FL_Faucheux_02",
		Marker = "FL_Faucheux_02",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Soldier01",
		AssignTo = "FL_Soldier01_02",
		Marker = "FL_Soldier01_02",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Soldier02",
		AssignTo = "FL_Soldier02_02",
		Marker = "FL_Soldier02_02",
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Faucheux",
		AssignTo = false,
		Marker = "SP_FaucheuxLeave_02",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Soldier01",
		AssignTo = "SP_FaucheuxLeave_Soldier01_03",
		Marker = "SP_FaucheuxLeave_Soldier01_03",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Soldier02",
		AssignTo = "SP_FaucheuxLeave_Soldier02_03",
		Marker = "SP_FaucheuxLeave_Soldier02_03",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1200,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 1500,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1000,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Soldier02",
		AssignTo = "SP_FaucheuxLeave_Soldier02_04",
		Marker = "SP_FaucheuxLeave_Soldier02_04",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 700,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1000,
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Faucheux",
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Soldier01",
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Soldier02",
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "UAZ",
	}),
	PlaceObj('PrgForceStopSetpiece', {}),
})


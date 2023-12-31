-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	CameraMode = "Show all",
	Effects = {
		PlaceObj('UnitSetConflictIgnore', {
			ConflictIgnore = false,
			TargetUnit = "AbuserPoacher_All",
		}),
		PlaceObj('UnitSetConflictIgnore', {
			ConflictIgnore = false,
			TargetUnit = "Poachers_All",
		}),
		PlaceObj('UnitSetConflictIgnore', {
			ConflictIgnore = false,
			TargetUnit = "PoacherRifles",
		}),
	},
	Map = "C-5 - Poacher Camp",
	RestoreCamera = true,
	group = "Savanna",
	hidden_actors = false,
	id = "PoacherCampLegion",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 0,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('ConditionalEffect', {
				'Conditions', {
					PlaceObj('SetpieceIsTestMode', {}),
				},
				'Effects', {
					PlaceObj('UnitSetConflictIgnore', {
						TargetUnit = "AbuserPoacher_All",
					}),
					PlaceObj('UnitSetConflictIgnore', {
						TargetUnit = "Poachers_All",
					}),
					PlaceObj('UnitSetConflictIgnore', {
						TargetUnit = "PoacherRifles",
					}),
				},
			}),
		},
	}),
	PlaceObj('SetpieceSleep', {
		Time = 50,
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 0,
		},
		Duration = 0,
		LookAt1 = point(128664, 165644, 9574),
		Pos1 = point(126210, 165705, 7847),
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Poacher01",
		Group = "PoacherActor01",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Poacher01",
		AssignTo = "SP_Poacher01_TP",
		Marker = "SP_Poacher01_TP",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Poacher01",
		Animation = "civ_Wall_Idle",
		Duration = 30,
		Marker = "SP_Poacher01_TP",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Poacher02",
		Group = "PoacherActor02",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Poacher02",
		AssignTo = "SP_Poacher02_TP",
		Marker = "SP_Poacher02_TP",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Poacher02",
		Animation = "civ_Talk_HandsOnHips",
		Duration = 30,
		Marker = "SP_Poacher02_TP",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Poacher03",
		Group = "PoacherActor03",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Poacher03",
		AssignTo = "SP_Poacher03_TP",
		Marker = "SP_Poacher03_TP",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Poacher03",
		Animation = "civ_Talk_ArmsDown",
		Duration = 30,
		Marker = "SP_Poacher03_TP",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Poacher04",
		Group = "PoacherActor04",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Poacher04",
		AssignTo = "SP_Poacher04_TP",
		Marker = "SP_Poacher04_TP",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Poacher04",
		Animation = "civ_Ambient_Weeding",
		Duration = 30,
		Marker = "SP_Poacher04_TP",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Poacher05",
		Group = "PoacherActor05",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Poacher05",
		AssignTo = "SP_Poacher05_TP",
		Marker = "SP_Poacher05_TP",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Poacher05",
		Animation = "civ_Ambient_LeanAgainstWall_RHand",
		Duration = 30,
		Marker = "SP_Poacher05_TP",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Hyena",
		Group = "Hyena",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Hyena",
		AssignTo = "SetPiece_HeynaStart",
		Marker = "SetPiece_HeynaStart",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Hyena",
		Animation = "civ_Talk_ArmsDown5",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "LegionLeader_Male",
		Group = "LegionLeader_Male",
		Marker = "LegionLeader",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "LegionLeader_Male",
		AssignTo = "SetPiece_LegionLeaderStart",
		Marker = "SetPiece_LegionLeaderStart",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "LegionLeader_Male",
		Animation = "civ_Talk_FootOnChair",
		Wait = false,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 100,
		FadeInTime = 1500,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 3500,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1500,
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 0,
		},
		Duration = 400,
		LookAt1 = point(178407, 155888, 14523),
		Pos1 = point(180409, 158087, 14915),
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 100,
		FadeInTime = 1500,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 3700,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1500,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Hyena",
		Animation = "civ_Talk_HandsOnHips6",
		Wait = false,
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 0,
		},
		CamType = "Tac",
		Duration = 100,
		Easing = 9,
		LookAt1 = point(166784, 143854, 10126),
		LookAt2 = point(165837, 144923, 10588),
		Pos1 = point(163629, 147415, 11667),
		Pos2 = point(162682, 148483, 12129),
		Wait = false,
		Zoom = 1300,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 800,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 1500,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 2000,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"PoacherCamp_Legion",
				},
				searchInMap = true,
				searchInMarker = false,
			}),
		},
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1000,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1000,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 100,
	}),
	PlaceObj('PrgForceStopSetpiece', {}),
})


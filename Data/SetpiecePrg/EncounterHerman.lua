-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	CameraMode = "Show all",
	Comment = "Main Setpiece",
	Map = "I-3 - Emerald Coast",
	RestoreCamera = true,
	group = "EmeraldCoast",
	hidden_actors = false,
	id = "EncounterHerman",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 0,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Herman",
		Group = "Herman",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Shooter",
		Group = "SceneShooter",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Raider01",
		Group = "RaiderActor01",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Raider01",
		Marker = "RaiderActor01",
	}),
	PlaceObj('SetpieceSetStance', {
		Actors = "Herman",
		Weapon = "No Weapon",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Herman",
		Animation = "civ_Fear_Standing",
		Marker = "HermanShacking",
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Shooter",
		Animation = "ar_Standing_Aim",
		Marker = "Shooter_01",
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider01",
		Animation = "civ_Sit_Idle",
		Marker = "RaiderActor01",
		RandomPhase = true,
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Raider02",
		Group = "RaiderActor02",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Raider02",
		Marker = "RaiderActor02",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider02",
		Animation = "civ_Standing_Idle2",
		Marker = "RaiderActor02",
		Rep = range(1, 2),
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Raider03",
		Group = "RaiderActor03",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Raider03",
		Marker = "RaiderActor03",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider03",
		Animation = "ar_Standing_IdlePassive6",
		Marker = "RaiderActor03",
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Raider04",
		Group = "RaiderActor04",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Raider04",
		Marker = "RaiderActor04",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider04",
		Animation = "civ_Ambient_LeanAgainstHighProp3",
		Marker = "RaiderActor04",
		RandomPhase = true,
		Wait = false,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Raider05",
		Group = "RaiderActor05",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Raider05",
		Marker = "RaiderActor05",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider05",
		Animation = "civ_Ambient_LookingWall",
		Marker = "RaiderActor05",
		RandomPhase = true,
		Wait = false,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 0,
		FadeInTime = 2600,
		Wait = false,
	}),
	PlaceObj('PrgPlaySetpiece', {
		Checkpoint = "Herman_BanterDone",
		Prg = "EncounterHerman_Camera",
		PrgClass = "SetpiecePrg",
		Wait = false,
	}),
	PlaceObj('PrgPlayEffect', {
		Checkpoint = "Herman_BanterDone",
		Effects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"Raiders_AproachingHerman",
				},
				searchInMap = true,
				searchInMarker = false,
			}),
		},
		Wait = false,
	}),
	PlaceObj('SetpieceWaitCheckpoint', {
		WaitCheckpoint = "Herman_BanterDone",
	}),
	PlaceObj('SetpieceShoot', {
		Actors = "Shooter",
		AnimSpeed = 80,
		AssignTo = "HermansFeet",
		InitialDelay = 400,
		TargetPos = "HermansFeet",
		TargetType = "Point",
		TargetUnits = "Herman",
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider05",
		AnimSpeed = 1250,
		Animation = "civ_Ambient_Cheering",
		Crossfade = false,
		Marker = "RaiderActor05",
		RandomPhase = true,
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Raider02",
		AnimSpeed = 1150,
		Animation = "civ_Ambient_Cheering",
		Crossfade = false,
		Marker = "RaiderActor02",
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1800,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 1200,
	}),
	PlaceObj('PrgForceStopSetpiece', {}),
})

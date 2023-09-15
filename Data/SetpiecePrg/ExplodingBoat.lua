-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	CameraMode = "Show all",
	Map = "H-10 - Jungle River",
	group = "Guardpost",
	hidden_actors = false,
	id = "ExplodingBoat",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 0,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('ExecuteCode', {
				Code = function (self, obj)
					SetupBoatForSetpiece()
				end,
				FuncCode = "SetupBoatForSetpiece()",
			}),
			PlaceObj('MusicSetTrack', {
				Playlist = "Scripted",
				Track = "Music/Whispers In The Rain",
			}),
		},
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Boat",
		Group = "ExplosiveBoat",
	}),
	PlaceObj('SetpieceSleep', {
		Time = 500,
	}),
	PlaceObj('SetpieceCamera', {
		DOFFar = 45000,
		DOFNear = 25000,
		DOFStrengthFar = 30,
		Duration = 8500,
		LookAt1 = point(127296, 176809, 9044),
		LookAt2 = point(123216, 158281, 13160),
		Pos1 = point(128399, 179541, 9616),
		Pos2 = point(125676, 162028, 15376),
		Wait = false,
		Zoom = 1298,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Boat",
		AssignTo = "SP_Boat_GoTo",
		Crossfade = false,
		Duration = 11000,
		Marker = "WP1",
		Wait = false,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 100,
		FadeInTime = 2000,
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 4500,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 2000,
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Boat",
		Marker = "WP1_02",
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 10000,
		LookAt1 = point(123216, 158281, 13160),
		LookAt2 = point(123260, 137706, 12341),
		Movement = "linear",
		Pos1 = point(125676, 162028, 15376),
		Pos2 = point(125251, 139673, 13420),
		Wait = false,
		Zoom = 1298,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 1000,
	}),
	PlaceObj('SetpieceFadeIn', {
		FadeInDelay = 100,
		FadeInTime = 2000,
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Boat",
		AssignTo = "SP_Boat_GoTo",
		Crossfade = false,
		Duration = 9000,
		Marker = "WP1_04",
		Wait = false,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 5750,
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 2000,
	}),
	PlaceObj('SetpieceSleep', {
		Time = 500,
	}),
	PlaceObj('PrgForceStopSetpiece', {}),
})

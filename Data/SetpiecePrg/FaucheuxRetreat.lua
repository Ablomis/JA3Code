-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "K-16 - Fort Brigand",
	RestoreCamera = true,
	group = "RefugeeCamp",
	hidden_actors = false,
	id = "FaucheuxRetreat",
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 300,
	}),
	PlaceObj('SetpieceFadeIn', {
		Wait = false,
	}),
	PlaceObj('SetpieceCamera', {
		FovX = 4800,
		LookAt1 = point(145616, 114695, 11191),
		Pos1 = point(142046, 118192, 11021),
	}),
	PlaceObj('SetpieceSleep', {
		Time = 800,
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Faucheux",
		Group = "FaucheuxEnemy",
		Marker = "Faucheux",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Faucheux",
		AssignTo = "SP_Faucheux_Port",
		Marker = "SP_Faucheux_Port",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Boat",
		Group = "BoatActor",
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 0,
		FovX = 4800,
		LookAt1 = point(145616, 114695, 11191),
		Pos1 = point(142046, 118192, 11021),
	}),
	PlaceObj('SetpieceCamera', {
		DOFFar = 90000,
		DOFFarSpread = 400,
		DOFNear = 10000,
		DOFNearSpread = 400,
		DOFStrengthFar = 40,
		DOFStrengthNear = 60,
		Duration = 12000,
		FovX = 4800,
		LookAt1 = point(144189, 116093, 11123),
		LookAt2 = point(145074, 114496, 10950),
		Movement = "accelerated",
		Pos1 = point(142046, 118192, 11021),
		Pos2 = point(143172, 116817, 10994),
		Wait = false,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Faucheux",
		AssignTo = "SP_Faucheux_GoTo",
		Marker = "SP_Faucheux_GoTo",
		Stance = "Standing",
	}),
	PlaceObj('SetpieceFadeOut', {
		FadeOutTime = 300,
	}),
	PlaceObj('SetpieceCamera', {
		Duration = 0,
		FovX = 4800,
		LookAt1 = point(158907, 113962, 13547),
		Pos1 = point(159102, 118797, 14808),
		Wait = false,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('SectorModifyEnemySquads', {
				UnitTemplate = "FaucheuxEnemy",
				count = -1,
				sector_id = "K16",
			}),
		},
	}),
	PlaceObj('SetpieceDespawn', {
		Actors = "Faucheux",
	}),
	PlaceObj('SetpieceFadeIn', {
		Wait = false,
	}),
	PlaceObj('SetpieceAnimation', {
		Actors = "Boat",
		AssignTo = "SP_Boat_GoTo",
		Crossfade = false,
		Duration = 12000,
		Marker = "SP_Boat_GoTo",
		Wait = false,
	}),
	PlaceObj('SetpieceCamera', {
		DOFNear = 10000,
		DOFStrengthNear = 80,
		Duration = 8000,
		FovX = 4800,
		LookAt1 = point(158985, 115894, 14051),
		LookAt2 = point(157064, 116677, 14210),
		Movement = "linear",
		Pos1 = point(159102, 118797, 14808),
		Pos2 = point(159102, 118797, 14808),
	}),
	PlaceObj('SetpieceFadeOut', {}),
	PlaceObj('PrgForceStopSetpiece', {}),
})


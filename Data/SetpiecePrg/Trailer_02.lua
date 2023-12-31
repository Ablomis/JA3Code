-- ========== GENERATED BY SetpiecePrg Editor (Ctrl-Alt-S) DO NOT EDIT MANUALLY! ==========

PlaceObj('SetpiecePrg', {
	Map = "G-8 - Colonial Mansion",
	group = "NotTrailers",
	id = "Trailer_02",
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Thug1",
		Group = "ThugActor1",
		Marker = "Thug1",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Thug2",
		Group = "ThugActor2",
		Marker = "Thug2",
	}),
	PlaceObj('SetpieceAssignFromGroup', {
		AssignTo = "Thug3",
		Group = "ThugActor3",
		Marker = "Thug3",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Thug1",
		AssignTo = "Thug1_Start",
		Marker = "Thug1_Start",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Thug2",
		AssignTo = "Thug1_Start",
		Marker = "Thug2_Start",
	}),
	PlaceObj('SetpieceTeleport', {
		Actors = "Thug3",
		AssignTo = "Thug1_Start",
		Marker = "Thug3_Start",
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Thug1",
		AssignTo = "Thug1_WalkTo",
		Marker = "Thug1_WalkTo",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Thug2",
		AssignTo = "Thug2_WalkTo",
		Marker = "Thug2_WalkTo",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceGotoPosition', {
		Actors = "Thug3",
		AssignTo = "Thug3_WalkTo",
		Marker = "Thug3_WalkTo",
		UseRun = false,
		Wait = false,
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 1,
		},
		CamType = "Tac",
		Duration = 3000,
		Easing = 0,
		LookAt1 = point(139920, 139189, 9410),
		LookAt2 = point(137628, 136759, 9107),
		Pos1 = point(148913, 148726, 20410),
		Pos2 = point(146621, 146296, 20107),
		Zoom = 1300,
	}),
	PlaceObj('SetpieceCamera', {
		CamProps = {
			floor = 1,
		},
		CamType = "Tac",
		Duration = 6000,
		Easing = 0,
		LookAt1 = point(137628, 136759, 9107),
		LookAt2 = point(137628, 136759, 9107),
		Pos1 = point(146621, 146296, 20107),
		Pos2 = point(146621, 146296, 20107),
		Wait = false,
		Zoom = 1300,
	}),
	PlaceObj('PrgPlayEffect', {
		Effects = {
			PlaceObj('PlayBanterEffect', {
				Banters = {
					"GhostStoriesMansion_Thugs_02",
				},
				searchInMap = true,
				searchInMarker = false,
			}),
		},
	}),
})


-- ========== GENERATED BY ExtrasGen Editor (Ctrl-Alt-G) DO NOT EDIT MANUALLY! ==========

PlaceObj('ExtrasGen', {
	RequiresClass = "EditorLineGuide",
	RequiresGuideType = "Horizontal",
	ToolbarSection = "Horizontal Objects",
	group = "PlaceObjects",
	id = "LayColonialStairs",
	PlaceObj('MoveSizeGuides', {
		Along = -1200,
		AlongScale = 1200,
		GuidesVar = "initial_selection",
		SizeChange = -2400,
		SizeChangeScale = 1200,
		UpDown = 700,
		UpDownScale = 700,
	}),
	PlaceObj('PrgIf', {
		Condition = function (self) return #initial_selection >= 4 end,
		PlaceObj('LaySlabsAlongGuides', {
			GuidesVar = "initial_selection",
			Middle = {
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_01",
					Rotate = 5400,
					Weight = 80,
				}),
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_02",
					Rotate = 5400,
					Weight = 20,
				}),
			},
			SnapToNearestWall = false,
			SnapToVoxelEdge = false,
			Start = {
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_Edge_01",
					Mirror = true,
				}),
			},
			StartIsSlab = true,
		}),
	}),
	PlaceObj('PrgElse', {
		PlaceObj('LaySlabsAlongGuides', {
			End1 = {
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_Edge_01",
				}),
			},
			EndIsSlab = true,
			GuidesVar = "initial_selection",
			Middle = {
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_01",
					Rotate = 5400,
					Weight = 80,
				}),
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_02",
					Rotate = 5400,
					Weight = 20,
				}),
			},
			SnapToNearestWall = false,
			SnapToVoxelEdge = false,
			Start = {
				PlaceObj('PlaceObjectData', {
					EditorClass = "Stairs_Colonial_Edge_01",
					Mirror = true,
				}),
			},
			StartIsSlab = true,
		}),
	}),
})


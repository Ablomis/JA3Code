-- ========== GENERATED BY ExtrasGen Editor (Ctrl-Alt-G) DO NOT EDIT MANUALLY! ==========

PlaceObj('ExtrasGen', {
	RequiresClass = "Room",
	ToolbarSection = "Place Guides",
	group = "CreateGuides",
	id = "TopOutwards",
	PlaceObj('PlaceRoomGuides', {
		AssignTo = "guides",
		Direction = "Outwards (room)",
		RoomsVar = "initial_selection",
		StartFrom = "Top",
		UseParams = true,
	}),
	PlaceObj('SelectInEditor', {
		ObjectsVar = "guides",
	}),
})


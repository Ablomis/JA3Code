-- ========== GENERATED BY ExtrasGen Editor (Ctrl-Alt-G) DO NOT EDIT MANUALLY! ==========

PlaceObj('ExtrasGen', {
	RequiresClass = "Slab",
	ToolbarSection = "Place Guides",
	group = "CreateGuides",
	id = "BetweenSlabs",
	PlaceObj('PlaceGuidesBetweenSlabs', {
		AssignTo = "guides",
		SlabsVar = "initial_selection",
	}),
	PlaceObj('SelectInEditor', {
		ObjectsVar = "guides",
	}),
})


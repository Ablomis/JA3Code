-- ========== GENERATED BY SatelliteShortcutPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.B13.XMapPosition,
			GetHalfwaySectorPoint("B14", "C14"),	
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),	
			gv_Sectors.D13.XMapPosition - point(30,0),
			gv_Sectors.E13.XMapPosition,	
			gv_Sectors.F13.XMapPosition,	
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"E9",
		"E10",
		"D10",
		"D11",
		"D12",
		"D13",
		"E13",
		"F13",
	},
	end_sector = "F13",
	group = "Default",
	id = "RiverStartB13toF13",
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "E13",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.B13.XMapPosition,
			GetHalfwaySectorPoint("B14", "C14"),	
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),	
			gv_Sectors.D13.XMapPosition	
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"E9",
		"E10",
		"D10",
		"D11",
		"D12",
		"D13",
	},
	end_sector = "D13",
	group = "Default",
	id = "RiverStartB13toF13_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "C13",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.B13.XMapPosition,
			GetHalfwaySectorPoint("B14", "C14"),	
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),	
			gv_Sectors.D13.XMapPosition - point(30,0),
			gv_Sectors.E13.XMapPosition,		
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"E9",
		"E10",
		"D10",
		"D11",
		"D12",
		"D13",
		"E13",
	},
	end_sector = "E13",
	group = "Default",
	id = "RiverStartB13toF13_Mid_2",
	one_way = true,
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "E12",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.B13.XMapPosition,
			GetHalfwaySectorPoint("B14", "C14"),	
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),	
			gv_Sectors.D13.XMapPosition - point(30,0),
			gv_Sectors.E13.XMapPosition - point(90, 90),
			gv_Sectors.E12.XMapPosition		
		}
	end,
	TravelTimeInSectors = 7,
	VisibilitySectors = {
		"E9",
		"E10",
		"D10",
		"D11",
		"D12",
		"D13",
		"E13",
		"E12",
	},
	end_sector = "E12",
	group = "Default",
	id = "RiverStartB13toF13_Mid_3",
	one_way = true,
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "E13",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.F13.XMapPosition,	
			gv_Sectors.E13.XMapPosition - point(60,0),	
			gv_Sectors.D13.XMapPosition	
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"D13",
		"E13",
		"F13",
	},
	end_sector = "D13",
	group = "Default",
	id = "RiverStartB13toF13_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "E13",
	shortcut_direction_exit_sector = "D12",
	start_sector = "F13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.F13.XMapPosition,	
			gv_Sectors.E13.XMapPosition,	
			gv_Sectors.D13.XMapPosition - point(30,0),	
			gv_Sectors.C13.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"F13",
		"E13",
		"D13",
		"C13",
		"C14",
	},
	end_sector = "C13",
	group = "Default",
	id = "RiverStartB13toF13_Rev_2",
	one_way = true,
	shortcut_direction_entrance_sector = "E13",
	shortcut_direction_exit_sector = "D13",
	start_sector = "F13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.F13.XMapPosition,	
			gv_Sectors.E13.XMapPosition,	
			gv_Sectors.D13.XMapPosition - point(30,0),
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),	
			gv_Sectors.C14.XMapPosition,
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"F13",
		"E13",
		"D13",
		"C13",
		"C14",
	},
	end_sector = "C14",
	group = "Default",
	id = "RiverStartB13toF13_Rev_3",
	one_way = true,
	shortcut_direction_entrance_sector = "E13",
	shortcut_direction_exit_sector = "C13",
	start_sector = "F13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			gv_Sectors.D12.XMapPosition,
			GetHalfwaySectorPoint("C13", "D13"),
			GetHalfwaySectorPoint("C14", "B14"),
			gv_Sectors.B14.XMapPosition -  point(60,20),
			gv_Sectors.B13.XMapPosition,
		}
	end,
	TravelTimeInSectors = 7,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"C13",
		"C14",
		"B14",
		"B13",
	},
	end_sector = "B13",
	group = "Default",
	id = "RiverStartD11toB13",
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "B14",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			gv_Sectors.D12.XMapPosition - point(50,20),
			gv_Sectors.C12.XMapPosition,	
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"D11",
		"D12",
		"C12",
	},
	end_sector = "C12",
	group = "Default",
	id = "RiverStartD11toB13_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "D12",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			gv_Sectors.D12.XMapPosition,
			gv_Sectors.C13.XMapPosition,	
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"C13",
	},
	end_sector = "C13",
	group = "Default",
	id = "RiverStartD11toB13_Mid_2",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "D13",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			gv_Sectors.D12.XMapPosition,
			GetHalfwaySectorPoint("C13", "D13"),
			gv_Sectors.C14.XMapPosition,	
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"C13",
		"C14",
	},
	end_sector = "C14",
	group = "Default",
	id = "RiverStartD11toB13_Mid_3",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "C13",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.B13.XMapPosition,
			GetHalfwaySectorPoint("B14", "C14") - point(70,0),
			gv_Sectors.C14.XMapPosition
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"B13",
		"B14",
		"C14",
	},
	end_sector = "C14",
	group = "Default",
	id = "RiverStartD11toB13_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "B14",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.B13.XMapPosition,
			gv_Sectors.B14.XMapPosition,	
			GetHalfwaySectorPoint("B14", "C14"),	
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),		
			GetHalfwaySectorPoint("D13", "D12"),		
			gv_Sectors.C12.XMapPosition,
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"B13",
		"B14",
		"C14",
		"C13",
		"D13",
		"D12",
	},
	end_sector = "C12",
	group = "Default",
	id = "RiverStartD11toB13_Rev_2",
	one_way = true,
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "D12",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.B13.XMapPosition,
			gv_Sectors.B14.XMapPosition,	
			GetHalfwaySectorPoint("B14", "C14"),	
			GetHalfwaySectorPoint("C13", "D13") + point(30,0),		
			gv_Sectors.D12.XMapPosition,
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"B13",
		"B14",
		"C14",
		"C13",
		"D13",
		"D12",
	},
	end_sector = "D12",
	group = "Default",
	id = "RiverStartD11toB13_Rev_3",
	one_way = true,
	shortcut_direction_entrance_sector = "B14",
	shortcut_direction_exit_sector = "C12",
	start_sector = "B13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			GetHalfwaySectorPoint("D12", "D13") - point(30, -30),
			gv_Sectors.E13.XMapPosition - point(40, 0),
			gv_Sectors.F13.XMapPosition,
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"E13",
		"F13",
	},
	end_sector = "F13",
	group = "Default",
	id = "RiverStartD11toF13",
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "E13",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,	
			gv_Sectors.D12.XMapPosition,
			gv_Sectors.D13.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
	},
	end_sector = "D13",
	group = "Default",
	id = "RiverStartD11toF13_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "D12",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			GetHalfwaySectorPoint("D12", "D13") - point(30, -30),
			gv_Sectors.E13.XMapPosition	
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"E13",
	},
	end_sector = "E13",
	group = "Default",
	id = "RiverStartD11toF13_Mid_2",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "E12",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			GetHalfwaySectorPoint("D12", "D13") - point(30, -30),
			gv_Sectors.E13.XMapPosition - point (0,30),
			gv_Sectors.E14.XMapPosition	
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"E13",
		"E14",
	},
	end_sector = "E14",
	group = "Default",
	id = "RiverStartD11toF13_Mid_3",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "E13",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.D11.XMapPosition,
			GetHalfwaySectorPoint("D12", "D13") - point(30, 0),
			gv_Sectors.E13.XMapPosition - point(90, 90),
			gv_Sectors.E12.XMapPosition	
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"D11",
		"D12",
		"D13",
		"E13",
		"E12",
	},
	end_sector = "E12",
	group = "Default",
	id = "RiverStartD11toF13_Mid_4",
	one_way = true,
	shortcut_direction_entrance_sector = "D12",
	shortcut_direction_exit_sector = "E13",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.F13.XMapPosition,
			gv_Sectors.E13.XMapPosition - point(40, 0),
			GetHalfwaySectorPoint("D12", "D13") - point(0, -60),
			gv_Sectors.D12.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"F13",
		"E13",
		"D13",
		"D12",
	},
	end_sector = "D12",
	group = "Default",
	id = "RiverStartD11toF13_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "E13",
	shortcut_direction_exit_sector = "C12",
	start_sector = "F13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {	
			gv_Sectors.F13.XMapPosition,
			gv_Sectors.E13.XMapPosition - point(40, 0),
			GetHalfwaySectorPoint("D12", "D13") - point(0, -60),
			gv_Sectors.C12.XMapPosition,
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"F13",
		"E13",
		"D13",
		"D12",
		"C12",
	},
	end_sector = "C12",
	group = "Default",
	id = "RiverStartD11toF13_Rev_2",
	one_way = true,
	shortcut_direction_entrance_sector = "E13",
	shortcut_direction_exit_sector = "D12",
	start_sector = "F13",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.E9.XMapPosition,
			gv_Sectors.E10.XMapPosition - point(90,0),
			GetHalfwaySectorPoint("D10", "E10"),
			gv_Sectors.D11.XMapPosition,	
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"E9",
		"E10",
		"D10",
		"D11",
	},
	end_sector = "D11",
	group = "Default",
	id = "RiverStartE9toD11",
	shortcut_direction_entrance_sector = "E10",
	shortcut_direction_exit_sector = "D10",
	start_sector = "E9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.E9.XMapPosition,
			GetHalfwaySectorPoint("D10", "E10") + point(-100, 150),	
			gv_Sectors.D10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"E9",
		"E10",
		"D10",
	},
	end_sector = "D10",
	group = "Default",
	id = "RiverStartE9toD11_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "E10",
	shortcut_direction_exit_sector = "D11",
	start_sector = "E9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,
			gv_Sectors.F10.XMapPosition,
			GetHalfwaySectorPoint("D10", "E10"),
			GetHalfwaySectorPoint("D10", "D11") + point (0,30),
			gv_Sectors.D11.XMapPosition	
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"G10",
		"F10",
		"E10",
		"D10",
		"D11",
	},
	end_sector = "D11",
	group = "Default",
	id = "RiverStartG10toD11",
	shortcut_direction_entrance_sector = "F10",
	shortcut_direction_exit_sector = "D10",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,
			GetHalfwaySectorPoint("D10", "E10"),
			gv_Sectors.D10.XMapPosition
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"G10",
		"F10",
		"E10",
		"D10",
	},
	end_sector = "D10",
	group = "Default",
	id = "RiverStartG10toD11_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "F10",
	shortcut_direction_exit_sector = "D11",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.D11.XMapPosition,
			GetHalfwaySectorPoint("D10", "D11") + point (0,30),
			GetHalfwaySectorPoint("D10", "E10") ,
			gv_Sectors.E10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"D11",
		"D10",
		"E10",
	},
	end_sector = "E10",
	group = "Default",
	id = "RiverStartG10toD11_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "D10",
	shortcut_direction_exit_sector = "E9",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.D11.XMapPosition,	
			GetHalfwaySectorPoint("D10", "D11") + point (0,30),
			GetHalfwaySectorPoint("D10", "E10") ,
			gv_Sectors.E10.XMapPosition - point (30,0),
			gv_Sectors.F10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"D11",
		"D10",
		"E10",
		"F10",
	},
	end_sector = "F10",
	group = "Default",
	id = "RiverStartG10toD11_Rev_2",
	one_way = true,
	shortcut_direction_entrance_sector = "D10",
	shortcut_direction_exit_sector = "F9",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.D11.XMapPosition,	
			GetHalfwaySectorPoint("D10", "D11") + point (0,30),
			GetHalfwaySectorPoint("D10", "E10") ,
			gv_Sectors.E10.XMapPosition - point (30,0),
			gv_Sectors.F10.XMapPosition - point (80,50),
			gv_Sectors.F9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"D11",
		"D10",
		"E10",
		"F10",
		"F9",
	},
	end_sector = "F9",
	group = "Default",
	id = "RiverStartG10toD11_Rev_3",
	one_way = true,
	shortcut_direction_entrance_sector = "D10",
	shortcut_direction_exit_sector = "F10",
	start_sector = "D11",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,
			gv_Sectors.F10.XMapPosition,
			gv_Sectors.E10.XMapPosition - point(40, -20),
			gv_Sectors.E9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"G10",
		"F10",
		"E10",
		"E9",
	},
	end_sector = "E9",
	group = "Default",
	id = "RiverStartG10toE9",
	shortcut_direction_entrance_sector = "F10",
	shortcut_direction_exit_sector = "E10",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,
			gv_Sectors.F10.XMapPosition,
			gv_Sectors.F9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 2,
	VisibilitySectors = {
		"G10",
		"F10",
		"F9",
	},
	end_sector = "F9",
	group = "Default",
	id = "RiverStartG10toE9_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "F10",
	shortcut_direction_exit_sector = "F10",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,
			gv_Sectors.F10.XMapPosition - point(60,0),
			gv_Sectors.E10.XMapPosition
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"G10",
		"F10",
		"E10",
	},
	end_sector = "E10",
	group = "Default",
	id = "RiverStartG10toE9_Mid_2",
	one_way = true,
	shortcut_direction_entrance_sector = "F10",
	shortcut_direction_exit_sector = "E9",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.E9.XMapPosition,
			gv_Sectors.E10.XMapPosition - point(40, -20),
			gv_Sectors.F10.XMapPosition
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"F10",
		"E10",
		"E9",
	},
	end_sector = "F10",
	group = "Default",
	id = "RiverStartG10toE9_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "E10",
	shortcut_direction_exit_sector = "F9",
	start_sector = "E9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.H9.XMapPosition,
			gv_Sectors.H10.XMapPosition,
			gv_Sectors.G10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"H9",
		"H10",
		"G10",
	},
	end_sector = "G10",
	group = "Default",
	id = "RiverStartH9toG10",
	shortcut_direction_entrance_sector = "H10",
	shortcut_direction_exit_sector = "H10",
	start_sector = "H9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.J8.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),
			gv_Sectors.H10.XMapPosition - point(50, 0),
			gv_Sectors.G10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"J8",
		"J9",
		"I9",
		"I10",
		"H10",
		"G10",
	},
	end_sector = "G10",
	group = "Default",
	id = "RiverStartJ8toG10",
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "H10",
	start_sector = "J8",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.J8.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),
			gv_Sectors.I9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"J8",
		"J9",
		"I9",
	},
	end_sector = "I9",
	group = "Default",
	id = "RiverStartJ8toG10_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "J9",
	start_sector = "J8",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.J8.XMapPosition,
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),
			gv_Sectors.I10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"J8",
		"J9",
		"I9",
		"I10",
	},
	end_sector = "I10",
	group = "Default",
	id = "RiverStartJ8toG10_Mid_2",
	one_way = true,
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "I9",
	start_sector = "J8",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.J8.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),
			gv_Sectors.H10.XMapPosition
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"J8",
		"J9",
		"I9",
		"I10",
		"H10",
	},
	end_sector = "H10",
	group = "Default",
	id = "RiverStartJ8toG10_Mid_3",
	one_way = true,
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "H9",
	start_sector = "J8",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,	
			gv_Sectors.H10.XMapPosition - point(30, 0),	
			gv_Sectors.I10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 2,
	VisibilitySectors = {
		"I10",
		"H10",
		"G10",
	},
	end_sector = "I10",
	group = "Default",
	id = "RiverStartJ8toG10_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "H10",
	shortcut_direction_exit_sector = "I9",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,	
			gv_Sectors.H10.XMapPosition - point(30, 0),	
			GetHalfwaySectorPoint("I9", "I10") - point(-50, 150),
			gv_Sectors.I9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"I9",
		"I10",
		"H10",
		"G10",
	},
	end_sector = "I9",
	group = "Default",
	id = "RiverStartJ8toG10_Rev_2",
	one_way = true,
	shortcut_direction_entrance_sector = "H10",
	shortcut_direction_exit_sector = "I10",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.G10.XMapPosition,	
			gv_Sectors.H10.XMapPosition - point(30, 0),	
			GetHalfwaySectorPoint("I9", "I10"),
			gv_Sectors.J9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"J9",
		"I9",
		"I10",
		"H10",
		"G10",
	},
	end_sector = "J9",
	group = "Default",
	id = "RiverStartJ8toG10_Rev_3",
	one_way = true,
	shortcut_direction_entrance_sector = "H10",
	shortcut_direction_exit_sector = "J8",
	start_sector = "G10",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.J8.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),
			gv_Sectors.H10.XMapPosition - point(50, 0),
			gv_Sectors.H9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"J8",
		"J9",
		"I9",
		"I10",
		"H10",
		"H9",
	},
	end_sector = "H9",
	group = "Default",
	id = "RiverStartJ8toH9",
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "H10",
	start_sector = "J8",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.J8.XMapPosition,
			GetHalfwaySectorPoint("J8", "J9") + point(0,60),
			gv_Sectors.K9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"J8",
		"J9",
		"K9",
	},
	end_sector = "K9",
	group = "Default",
	id = "RiverStartJ8toK9",
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "J9",
	start_sector = "J8",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.K9.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),
			GetHalfwaySectorPoint("I9", "I10"),
			gv_Sectors.H10.XMapPosition - point(50, 0),
			gv_Sectors.G10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"K9",
		"J9",
		"I9",
		"I10",
		"H10",
		"G10",
	},
	end_sector = "G10",
	group = "Default",
	id = "RiverStartK9toG10",
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "H10",
	start_sector = "K9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.K9.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),	
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),	
			gv_Sectors.H10.XMapPosition - point(50, 0),
			gv_Sectors.H9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 5,
	VisibilitySectors = {
		"K9",
		"J9",
		"I9",
		"I10",
		"H10",
		"H9",
	},
	end_sector = "H9",
	group = "Default",
	id = "RiverStartK9toH9",
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "H10",
	start_sector = "K9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.K9.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),	
			gv_Sectors.I9.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"K9",
		"J9",
		"I9",
	},
	end_sector = "I9",
	group = "Default",
	id = "RiverStartK9toH9_Mid_1",
	one_way = true,
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "J9",
	start_sector = "K9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.K9.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),	
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),
			gv_Sectors.I10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"K9",
		"J9",
		"I9",
		"I10",
	},
	end_sector = "I10",
	group = "Default",
	id = "RiverStartK9toH9_Mid_2",
	one_way = true,
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "I9",
	start_sector = "K9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.K9.XMapPosition,
			gv_Sectors.J9.XMapPosition - point(30, 10),	
			GetHalfwaySectorPoint("I9", "I10") + point(-50, 150),
			gv_Sectors.H10.XMapPosition
		}
	end,
	TravelTimeInSectors = 4,
	VisibilitySectors = {
		"K9",
		"J9",
		"I9",
		"I10",
		"H10",
	},
	end_sector = "H10",
	group = "Default",
	id = "RiverStartK9toH9_Mid_3",
	one_way = true,
	shortcut_direction_entrance_sector = "J9",
	shortcut_direction_exit_sector = "H9",
	start_sector = "K9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.H9.XMapPosition,
			gv_Sectors.H10.XMapPosition - point(100, 0),	
			gv_Sectors.I10.XMapPosition,
		}
	end,
	TravelTimeInSectors = 3,
	VisibilitySectors = {
		"H10",
		"H9",
		"I10",
	},
	end_sector = "I10",
	group = "Default",
	id = "RiverStartK9toH9_Rev_1",
	one_way = true,
	shortcut_direction_entrance_sector = "H10",
	shortcut_direction_exit_sector = "H10",
	start_sector = "H9",
	water_shortcut = true,
})

PlaceObj('SatelliteShortcutPreset', {
	GetPath = function (self)
		return {
			gv_Sectors.H9.XMapPosition,
			gv_Sectors.H10.XMapPosition - point(50, 0),
			GetHalfwaySectorPoint("I9", "I10"),
			gv_Sectors.J9.XMapPosition
		}
	end,
	TravelTimeInSectors = 6,
	VisibilitySectors = {
		"I9",
		"I10",
		"H10",
		"H9",
	},
	end_sector = "J9",
	group = "Default",
	id = "RiverStartK9toH9_Rev_2",
	one_way = true,
	shortcut_direction_entrance_sector = "H10",
	shortcut_direction_exit_sector = "J8",
	start_sector = "H9",
	water_shortcut = true,
})


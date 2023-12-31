-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Water",
	id = "Splashes_MilitaryBoat",
	ignore_game_object_age = true,
	particles_scale_with_object = true,
	presim_time = 1000,
	rand_start_time = 3000,
	speed_up = 800,
	PlaceObj('ParticleEmitter', {
		'label', "splash",
		'bins', set( "F" ),
		'world_space', true,
		'emit_detail_level', 100,
		'enabled', false,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 1600,
		'lifetime_max', 2000,
		'position', point(-1000, -250, 0),
		'angle', range(120, 120),
		'size_min', 4000,
		'size_max', 10000,
		'texture', "Textures/Particles/water_splash_7x7.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(7, 7),
		'softness', 60,
		'far_softness', 50,
		'viewangle_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'view_dependent_opacity', 65,
		'alpha', range(155, 255),
		'drawing_order', 1,
		'outlines', {
			{
				point(266, 352),
				point(294, 390),
				point(304, 350),
				point(296, 342),
			},
			{
				point(848, 350),
				point(872, 390),
				point(898, 366),
				point(882, 334),
			},
			{
				point(1432, 358),
				point(1458, 394),
				point(1494, 356),
				point(1458, 304),
			},
			{
				point(2010, 352),
				point(2042, 398),
				point(2092, 338),
				point(2034, 300),
			},
			{
				point(2586, 326),
				point(2622, 402),
				point(2680, 346),
				point(2634, 284),
			},
			{
				point(3164, 316),
				point(3206, 404),
				point(3270, 350),
				point(3226, 258),
			},
			{
				point(3738, 306),
				point(3788, 404),
				point(3868, 348),
				point(3808, 240),
			},
			{
				point(210, 878),
				point(278, 988),
				point(368, 930),
				point(304, 814),
			},
			{
				point(780, 864),
				point(862, 990),
				point(966, 932),
				point(890, 798),
			},
			{
				point(1350, 856),
				point(1446, 990),
				point(1562, 932),
				point(1478, 774),
			},
			{
				point(1944, 878),
				point(2030, 990),
				point(2164, 936),
				point(2044, 722),
			},
			{
				point(2548, 804),
				point(2556, 1016),
				point(2754, 938),
				point(2652, 724),
			},
			{
				point(3120, 766),
				point(3142, 1016),
				point(3344, 940),
				point(3258, 742),
			},
			{
				point(3700, 750),
				point(3726, 1020),
				point(3944, 938),
				point(3838, 722),
			},
			{
				point(188, 1324),
				point(212, 1608),
				point(436, 1524),
				point(322, 1300),
			},
			{
				point(758, 1338),
				point(802, 1608),
				point(1040, 1526),
				point(894, 1292),
			},
			{
				point(1348, 1326),
				point(1374, 1610),
				point(1624, 1536),
				point(1480, 1278),
			},
			{
				point(1888, 1376),
				point(2018, 1622),
				point(2210, 1510),
				point(2056, 1258),
			},
			{
				point(2486, 1398),
				point(2590, 1606),
				point(2806, 1538),
				point(2630, 1226),
			},
			{
				point(3084, 1346),
				point(3136, 1606),
				point(3412, 1548),
				point(3232, 1272),
			},
			{
				point(3622, 1360),
				point(3764, 1616),
				point(3986, 1542),
				point(3832, 1288),
			},
			{
				point(126, 1988),
				point(262, 2224),
				point(466, 2104),
				point(300, 1858),
			},
			{
				point(704, 1976),
				point(844, 2232),
				point(1042, 2118),
				point(896, 1876),
			},
			{
				point(1276, 1972),
				point(1442, 2250),
				point(1650, 2096),
				point(1482, 1880),
			},
			{
				point(1912, 1944),
				point(1908, 2202),
				point(2234, 2174),
				point(2072, 1880),
			},
			{
				point(2478, 1946),
				point(2536, 2200),
				point(2822, 2180),
				point(2648, 1884),
			},
			{
				point(3054, 1944),
				point(3130, 2200),
				point(3376, 2192),
				point(3242, 1880),
			},
			{
				point(3628, 1938),
				point(3730, 2206),
				point(3966, 2194),
				point(3832, 1900),
			},
			{
				point(100, 2520),
				point(230, 2798),
				point(464, 2772),
				point(322, 2516),
			},
			{
				point(682, 2534),
				point(820, 2798),
				point(1038, 2776),
				point(900, 2462),
			},
			{
				point(1408, 2812),
				point(1636, 2762),
				point(1492, 2534),
				point(1264, 2516),
			},
			{
				point(1892, 2534),
				point(1890, 2798),
				point(2222, 2794),
				point(2054, 2464),
			},
			{
				point(2458, 2572),
				point(2590, 2842),
				point(2762, 2728),
				point(2656, 2510),
			},
			{
				point(3048, 2592),
				point(3182, 2842),
				point(3336, 2748),
				point(3252, 2520),
			},
			{
				point(3628, 2600),
				point(3776, 2846),
				point(3918, 2742),
				point(3832, 2508),
			},
			{
				point(114, 3186),
				point(228, 3378),
				point(418, 3370),
				point(326, 3102),
			},
			{
				point(720, 3182),
				point(772, 3356),
				point(1004, 3378),
				point(912, 3102),
			},
			{
				point(1270, 3202),
				point(1402, 3364),
				point(1574, 3352),
				point(1498, 3104),
			},
			{
				point(1874, 3198),
				point(1980, 3374),
				point(2156, 3354),
				point(2086, 3110),
			},
			{
				point(2462, 3202),
				point(2558, 3380),
				point(2742, 3360),
				point(2670, 3106),
			},
			{
				point(3030, 3210),
				point(3168, 3382),
				point(3330, 3366),
				point(3258, 3118),
			},
			{
				point(3636, 3202),
				point(3738, 3388),
				point(3912, 3344),
				point(3834, 3124),
			},
			{
				point(114, 3800),
				point(246, 3966),
				point(386, 3890),
				point(320, 3712),
			},
			{
				point(704, 3802),
				point(820, 3978),
				point(976, 3924),
				point(920, 3714),
			},
			{
				point(1296, 3808),
				point(1414, 3982),
				point(1552, 3890),
				point(1498, 3722),
			},
			{
				point(1888, 3812),
				point(2000, 3988),
				point(2134, 3892),
				point(2090, 3722),
			},
			{
				point(2488, 3826),
				point(2568, 3984),
				point(2714, 3906),
				point(2666, 3726),
			},
			{
				point(3072, 3840),
				point(3156, 3986),
				point(3276, 3900),
				point(3266, 3722),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', 2581146602436599147,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "splash",
		'bins', set( "C" ),
		'world_space', true,
		'emit_detail_level', 100,
		'enabled', false,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 1600,
		'lifetime_max', 2000,
		'position', point(-1000, 250, 0),
		'angle', range(-120, -120),
		'size_min', 4000,
		'size_max', 10000,
		'texture', "Textures/Particles/water_splash_7x7.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(7, 7),
		'softness', 60,
		'far_softness', 50,
		'viewangle_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'view_dependent_opacity', 65,
		'alpha', range(155, 255),
		'drawing_order', 1,
		'outlines', {
			{
				point(266, 352),
				point(294, 390),
				point(304, 350),
				point(296, 342),
			},
			{
				point(848, 350),
				point(872, 390),
				point(898, 366),
				point(882, 334),
			},
			{
				point(1432, 358),
				point(1458, 394),
				point(1494, 356),
				point(1458, 304),
			},
			{
				point(2010, 352),
				point(2042, 398),
				point(2092, 338),
				point(2034, 300),
			},
			{
				point(2586, 326),
				point(2622, 402),
				point(2680, 346),
				point(2634, 284),
			},
			{
				point(3164, 316),
				point(3206, 404),
				point(3270, 350),
				point(3226, 258),
			},
			{
				point(3738, 306),
				point(3788, 404),
				point(3868, 348),
				point(3808, 240),
			},
			{
				point(210, 878),
				point(278, 988),
				point(368, 930),
				point(304, 814),
			},
			{
				point(780, 864),
				point(862, 990),
				point(966, 932),
				point(890, 798),
			},
			{
				point(1350, 856),
				point(1446, 990),
				point(1562, 932),
				point(1478, 774),
			},
			{
				point(1944, 878),
				point(2030, 990),
				point(2164, 936),
				point(2044, 722),
			},
			{
				point(2548, 804),
				point(2556, 1016),
				point(2754, 938),
				point(2652, 724),
			},
			{
				point(3120, 766),
				point(3142, 1016),
				point(3344, 940),
				point(3258, 742),
			},
			{
				point(3700, 750),
				point(3726, 1020),
				point(3944, 938),
				point(3838, 722),
			},
			{
				point(188, 1324),
				point(212, 1608),
				point(436, 1524),
				point(322, 1300),
			},
			{
				point(758, 1338),
				point(802, 1608),
				point(1040, 1526),
				point(894, 1292),
			},
			{
				point(1348, 1326),
				point(1374, 1610),
				point(1624, 1536),
				point(1480, 1278),
			},
			{
				point(1888, 1376),
				point(2018, 1622),
				point(2210, 1510),
				point(2056, 1258),
			},
			{
				point(2486, 1398),
				point(2590, 1606),
				point(2806, 1538),
				point(2630, 1226),
			},
			{
				point(3084, 1346),
				point(3136, 1606),
				point(3412, 1548),
				point(3232, 1272),
			},
			{
				point(3622, 1360),
				point(3764, 1616),
				point(3986, 1542),
				point(3832, 1288),
			},
			{
				point(126, 1988),
				point(262, 2224),
				point(466, 2104),
				point(300, 1858),
			},
			{
				point(704, 1976),
				point(844, 2232),
				point(1042, 2118),
				point(896, 1876),
			},
			{
				point(1276, 1972),
				point(1442, 2250),
				point(1650, 2096),
				point(1482, 1880),
			},
			{
				point(1912, 1944),
				point(1908, 2202),
				point(2234, 2174),
				point(2072, 1880),
			},
			{
				point(2478, 1946),
				point(2536, 2200),
				point(2822, 2180),
				point(2648, 1884),
			},
			{
				point(3054, 1944),
				point(3130, 2200),
				point(3376, 2192),
				point(3242, 1880),
			},
			{
				point(3628, 1938),
				point(3730, 2206),
				point(3966, 2194),
				point(3832, 1900),
			},
			{
				point(100, 2520),
				point(230, 2798),
				point(464, 2772),
				point(322, 2516),
			},
			{
				point(682, 2534),
				point(820, 2798),
				point(1038, 2776),
				point(900, 2462),
			},
			{
				point(1408, 2812),
				point(1636, 2762),
				point(1492, 2534),
				point(1264, 2516),
			},
			{
				point(1892, 2534),
				point(1890, 2798),
				point(2222, 2794),
				point(2054, 2464),
			},
			{
				point(2458, 2572),
				point(2590, 2842),
				point(2762, 2728),
				point(2656, 2510),
			},
			{
				point(3048, 2592),
				point(3182, 2842),
				point(3336, 2748),
				point(3252, 2520),
			},
			{
				point(3628, 2600),
				point(3776, 2846),
				point(3918, 2742),
				point(3832, 2508),
			},
			{
				point(114, 3186),
				point(228, 3378),
				point(418, 3370),
				point(326, 3102),
			},
			{
				point(720, 3182),
				point(772, 3356),
				point(1004, 3378),
				point(912, 3102),
			},
			{
				point(1270, 3202),
				point(1402, 3364),
				point(1574, 3352),
				point(1498, 3104),
			},
			{
				point(1874, 3198),
				point(1980, 3374),
				point(2156, 3354),
				point(2086, 3110),
			},
			{
				point(2462, 3202),
				point(2558, 3380),
				point(2742, 3360),
				point(2670, 3106),
			},
			{
				point(3030, 3210),
				point(3168, 3382),
				point(3330, 3366),
				point(3258, 3118),
			},
			{
				point(3636, 3202),
				point(3738, 3388),
				point(3912, 3344),
				point(3834, 3124),
			},
			{
				point(114, 3800),
				point(246, 3966),
				point(386, 3890),
				point(320, 3712),
			},
			{
				point(704, 3802),
				point(820, 3978),
				point(976, 3924),
				point(920, 3714),
			},
			{
				point(1296, 3808),
				point(1414, 3982),
				point(1552, 3890),
				point(1498, 3722),
			},
			{
				point(1888, 3812),
				point(2000, 3988),
				point(2134, 3892),
				point(2090, 3722),
			},
			{
				point(2488, 3826),
				point(2568, 3984),
				point(2714, 3906),
				point(2666, 3726),
			},
			{
				point(3072, 3840),
				point(3156, 3986),
				point(3276, 3900),
				point(3266, 3722),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', 2581146602436599147,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "splash",
		'bins', set( "G" ),
		'world_space', true,
		'emit_detail_level', 100,
		'enabled', false,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 1600,
		'lifetime_max', 2000,
		'position', point(-1000, -250, 0),
		'angle', range(120, 120),
		'size_min', 4000,
		'size_max', 10000,
		'texture', "Textures/Particles/water_splash_7x7.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(7, 7),
		'softness', 60,
		'far_softness', 50,
		'viewangle_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'view_dependent_opacity', 64,
		'alpha', range(155, 255),
		'drawing_order', 1,
		'outlines', {
			{
				point(266, 352),
				point(294, 390),
				point(304, 350),
				point(296, 342),
			},
			{
				point(848, 350),
				point(872, 390),
				point(898, 366),
				point(882, 334),
			},
			{
				point(1432, 358),
				point(1458, 394),
				point(1494, 356),
				point(1458, 304),
			},
			{
				point(2010, 352),
				point(2042, 398),
				point(2092, 338),
				point(2034, 300),
			},
			{
				point(2586, 326),
				point(2622, 402),
				point(2680, 346),
				point(2634, 284),
			},
			{
				point(3164, 316),
				point(3206, 404),
				point(3270, 350),
				point(3226, 258),
			},
			{
				point(3738, 306),
				point(3788, 404),
				point(3868, 348),
				point(3808, 240),
			},
			{
				point(210, 878),
				point(278, 988),
				point(368, 930),
				point(304, 814),
			},
			{
				point(780, 864),
				point(862, 990),
				point(966, 932),
				point(890, 798),
			},
			{
				point(1350, 856),
				point(1446, 990),
				point(1562, 932),
				point(1478, 774),
			},
			{
				point(1944, 878),
				point(2030, 990),
				point(2164, 936),
				point(2044, 722),
			},
			{
				point(2548, 804),
				point(2556, 1016),
				point(2754, 938),
				point(2652, 724),
			},
			{
				point(3120, 766),
				point(3142, 1016),
				point(3344, 940),
				point(3258, 742),
			},
			{
				point(3700, 750),
				point(3726, 1020),
				point(3944, 938),
				point(3838, 722),
			},
			{
				point(188, 1324),
				point(212, 1608),
				point(436, 1524),
				point(322, 1300),
			},
			{
				point(758, 1338),
				point(802, 1608),
				point(1040, 1526),
				point(894, 1292),
			},
			{
				point(1348, 1326),
				point(1374, 1610),
				point(1624, 1536),
				point(1480, 1278),
			},
			{
				point(1888, 1376),
				point(2018, 1622),
				point(2210, 1510),
				point(2056, 1258),
			},
			{
				point(2486, 1398),
				point(2590, 1606),
				point(2806, 1538),
				point(2630, 1226),
			},
			{
				point(3084, 1346),
				point(3136, 1606),
				point(3412, 1548),
				point(3232, 1272),
			},
			{
				point(3622, 1360),
				point(3764, 1616),
				point(3986, 1542),
				point(3832, 1288),
			},
			{
				point(126, 1988),
				point(262, 2224),
				point(466, 2104),
				point(300, 1858),
			},
			{
				point(704, 1976),
				point(844, 2232),
				point(1042, 2118),
				point(896, 1876),
			},
			{
				point(1276, 1972),
				point(1442, 2250),
				point(1650, 2096),
				point(1482, 1880),
			},
			{
				point(1912, 1944),
				point(1908, 2202),
				point(2234, 2174),
				point(2072, 1880),
			},
			{
				point(2478, 1946),
				point(2536, 2200),
				point(2822, 2180),
				point(2648, 1884),
			},
			{
				point(3054, 1944),
				point(3130, 2200),
				point(3376, 2192),
				point(3242, 1880),
			},
			{
				point(3628, 1938),
				point(3730, 2206),
				point(3966, 2194),
				point(3832, 1900),
			},
			{
				point(100, 2520),
				point(230, 2798),
				point(464, 2772),
				point(322, 2516),
			},
			{
				point(682, 2534),
				point(820, 2798),
				point(1038, 2776),
				point(900, 2462),
			},
			{
				point(1408, 2812),
				point(1636, 2762),
				point(1492, 2534),
				point(1264, 2516),
			},
			{
				point(1892, 2534),
				point(1890, 2798),
				point(2222, 2794),
				point(2054, 2464),
			},
			{
				point(2458, 2572),
				point(2590, 2842),
				point(2762, 2728),
				point(2656, 2510),
			},
			{
				point(3048, 2592),
				point(3182, 2842),
				point(3336, 2748),
				point(3252, 2520),
			},
			{
				point(3628, 2600),
				point(3776, 2846),
				point(3918, 2742),
				point(3832, 2508),
			},
			{
				point(114, 3186),
				point(228, 3378),
				point(418, 3370),
				point(326, 3102),
			},
			{
				point(720, 3182),
				point(772, 3356),
				point(1004, 3378),
				point(912, 3102),
			},
			{
				point(1270, 3202),
				point(1402, 3364),
				point(1574, 3352),
				point(1498, 3104),
			},
			{
				point(1874, 3198),
				point(1980, 3374),
				point(2156, 3354),
				point(2086, 3110),
			},
			{
				point(2462, 3202),
				point(2558, 3380),
				point(2742, 3360),
				point(2670, 3106),
			},
			{
				point(3030, 3210),
				point(3168, 3382),
				point(3330, 3366),
				point(3258, 3118),
			},
			{
				point(3636, 3202),
				point(3738, 3388),
				point(3912, 3344),
				point(3834, 3124),
			},
			{
				point(114, 3800),
				point(246, 3966),
				point(386, 3890),
				point(320, 3712),
			},
			{
				point(704, 3802),
				point(820, 3978),
				point(976, 3924),
				point(920, 3714),
			},
			{
				point(1296, 3808),
				point(1414, 3982),
				point(1552, 3890),
				point(1498, 3722),
			},
			{
				point(1888, 3812),
				point(2000, 3988),
				point(2134, 3892),
				point(2090, 3722),
			},
			{
				point(2488, 3826),
				point(2568, 3984),
				point(2714, 3906),
				point(2666, 3726),
			},
			{
				point(3072, 3840),
				point(3156, 3986),
				point(3276, 3900),
				point(3266, 3722),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', 2581146602436599147,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "splash",
		'bins', set( "D" ),
		'world_space', true,
		'emit_detail_level', 100,
		'enabled', false,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 1600,
		'lifetime_max', 2000,
		'position', point(-1000, 500, 0),
		'angle', range(-60, -60),
		'size_min', 4000,
		'size_max', 10000,
		'texture', "Textures/Particles/water_splash_7x7.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(7, 7),
		'softness', 60,
		'far_softness', 50,
		'viewangle_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'view_dependent_opacity', 64,
		'alpha', range(155, 255),
		'drawing_order', 1,
		'outlines', {
			{
				point(266, 352),
				point(294, 390),
				point(304, 350),
				point(296, 342),
			},
			{
				point(848, 350),
				point(872, 390),
				point(898, 366),
				point(882, 334),
			},
			{
				point(1432, 358),
				point(1458, 394),
				point(1494, 356),
				point(1458, 304),
			},
			{
				point(2010, 352),
				point(2042, 398),
				point(2092, 338),
				point(2034, 300),
			},
			{
				point(2586, 326),
				point(2622, 402),
				point(2680, 346),
				point(2634, 284),
			},
			{
				point(3164, 316),
				point(3206, 404),
				point(3270, 350),
				point(3226, 258),
			},
			{
				point(3738, 306),
				point(3788, 404),
				point(3868, 348),
				point(3808, 240),
			},
			{
				point(210, 878),
				point(278, 988),
				point(368, 930),
				point(304, 814),
			},
			{
				point(780, 864),
				point(862, 990),
				point(966, 932),
				point(890, 798),
			},
			{
				point(1350, 856),
				point(1446, 990),
				point(1562, 932),
				point(1478, 774),
			},
			{
				point(1944, 878),
				point(2030, 990),
				point(2164, 936),
				point(2044, 722),
			},
			{
				point(2548, 804),
				point(2556, 1016),
				point(2754, 938),
				point(2652, 724),
			},
			{
				point(3120, 766),
				point(3142, 1016),
				point(3344, 940),
				point(3258, 742),
			},
			{
				point(3700, 750),
				point(3726, 1020),
				point(3944, 938),
				point(3838, 722),
			},
			{
				point(188, 1324),
				point(212, 1608),
				point(436, 1524),
				point(322, 1300),
			},
			{
				point(758, 1338),
				point(802, 1608),
				point(1040, 1526),
				point(894, 1292),
			},
			{
				point(1348, 1326),
				point(1374, 1610),
				point(1624, 1536),
				point(1480, 1278),
			},
			{
				point(1888, 1376),
				point(2018, 1622),
				point(2210, 1510),
				point(2056, 1258),
			},
			{
				point(2486, 1398),
				point(2590, 1606),
				point(2806, 1538),
				point(2630, 1226),
			},
			{
				point(3084, 1346),
				point(3136, 1606),
				point(3412, 1548),
				point(3232, 1272),
			},
			{
				point(3622, 1360),
				point(3764, 1616),
				point(3986, 1542),
				point(3832, 1288),
			},
			{
				point(126, 1988),
				point(262, 2224),
				point(466, 2104),
				point(300, 1858),
			},
			{
				point(704, 1976),
				point(844, 2232),
				point(1042, 2118),
				point(896, 1876),
			},
			{
				point(1276, 1972),
				point(1442, 2250),
				point(1650, 2096),
				point(1482, 1880),
			},
			{
				point(1912, 1944),
				point(1908, 2202),
				point(2234, 2174),
				point(2072, 1880),
			},
			{
				point(2478, 1946),
				point(2536, 2200),
				point(2822, 2180),
				point(2648, 1884),
			},
			{
				point(3054, 1944),
				point(3130, 2200),
				point(3376, 2192),
				point(3242, 1880),
			},
			{
				point(3628, 1938),
				point(3730, 2206),
				point(3966, 2194),
				point(3832, 1900),
			},
			{
				point(100, 2520),
				point(230, 2798),
				point(464, 2772),
				point(322, 2516),
			},
			{
				point(682, 2534),
				point(820, 2798),
				point(1038, 2776),
				point(900, 2462),
			},
			{
				point(1408, 2812),
				point(1636, 2762),
				point(1492, 2534),
				point(1264, 2516),
			},
			{
				point(1892, 2534),
				point(1890, 2798),
				point(2222, 2794),
				point(2054, 2464),
			},
			{
				point(2458, 2572),
				point(2590, 2842),
				point(2762, 2728),
				point(2656, 2510),
			},
			{
				point(3048, 2592),
				point(3182, 2842),
				point(3336, 2748),
				point(3252, 2520),
			},
			{
				point(3628, 2600),
				point(3776, 2846),
				point(3918, 2742),
				point(3832, 2508),
			},
			{
				point(114, 3186),
				point(228, 3378),
				point(418, 3370),
				point(326, 3102),
			},
			{
				point(720, 3182),
				point(772, 3356),
				point(1004, 3378),
				point(912, 3102),
			},
			{
				point(1270, 3202),
				point(1402, 3364),
				point(1574, 3352),
				point(1498, 3104),
			},
			{
				point(1874, 3198),
				point(1980, 3374),
				point(2156, 3354),
				point(2086, 3110),
			},
			{
				point(2462, 3202),
				point(2558, 3380),
				point(2742, 3360),
				point(2670, 3106),
			},
			{
				point(3030, 3210),
				point(3168, 3382),
				point(3330, 3366),
				point(3258, 3118),
			},
			{
				point(3636, 3202),
				point(3738, 3388),
				point(3912, 3344),
				point(3834, 3124),
			},
			{
				point(114, 3800),
				point(246, 3966),
				point(386, 3890),
				point(320, 3712),
			},
			{
				point(704, 3802),
				point(820, 3978),
				point(976, 3924),
				point(920, 3714),
			},
			{
				point(1296, 3808),
				point(1414, 3982),
				point(1552, 3890),
				point(1498, 3722),
			},
			{
				point(1888, 3812),
				point(2000, 3988),
				point(2134, 3892),
				point(2090, 3722),
			},
			{
				point(2488, 3826),
				point(2568, 3984),
				point(2714, 3906),
				point(2666, 3726),
			},
			{
				point(3072, 3840),
				point(3156, 3986),
				point(3276, 3900),
				point(3266, 3722),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', 2581146602436599147,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "splash",
		'bins', set( "H" ),
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 1600,
		'lifetime_max', 2000,
		'position', point(-1200, 0, 0),
		'angle', range(80, 100),
		'size_min', 10000,
		'size_max', 16000,
		'texture', "Textures/Particles/water_splash_7x7.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(7, 7),
		'softness', 60,
		'far_softness', 100,
		'viewangle_softness_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'alpha', range(155, 255),
		'drawing_order', 1,
		'outlines', {
			{
				point(266, 352),
				point(294, 390),
				point(304, 350),
				point(296, 342),
			},
			{
				point(848, 350),
				point(872, 390),
				point(898, 366),
				point(882, 334),
			},
			{
				point(1432, 358),
				point(1458, 394),
				point(1494, 356),
				point(1458, 304),
			},
			{
				point(2010, 352),
				point(2042, 398),
				point(2092, 338),
				point(2034, 300),
			},
			{
				point(2586, 326),
				point(2622, 402),
				point(2680, 346),
				point(2634, 284),
			},
			{
				point(3164, 316),
				point(3206, 404),
				point(3270, 350),
				point(3226, 258),
			},
			{
				point(3738, 306),
				point(3788, 404),
				point(3868, 348),
				point(3808, 240),
			},
			{
				point(210, 878),
				point(278, 988),
				point(368, 930),
				point(304, 814),
			},
			{
				point(780, 864),
				point(862, 990),
				point(966, 932),
				point(890, 798),
			},
			{
				point(1350, 856),
				point(1446, 990),
				point(1562, 932),
				point(1478, 774),
			},
			{
				point(1944, 878),
				point(2030, 990),
				point(2164, 936),
				point(2044, 722),
			},
			{
				point(2548, 804),
				point(2556, 1016),
				point(2754, 938),
				point(2652, 724),
			},
			{
				point(3120, 766),
				point(3142, 1016),
				point(3344, 940),
				point(3258, 742),
			},
			{
				point(3700, 750),
				point(3726, 1020),
				point(3944, 938),
				point(3838, 722),
			},
			{
				point(188, 1324),
				point(212, 1608),
				point(436, 1524),
				point(322, 1300),
			},
			{
				point(758, 1338),
				point(802, 1608),
				point(1040, 1526),
				point(894, 1292),
			},
			{
				point(1348, 1326),
				point(1374, 1610),
				point(1624, 1536),
				point(1480, 1278),
			},
			{
				point(1888, 1376),
				point(2018, 1622),
				point(2210, 1510),
				point(2056, 1258),
			},
			{
				point(2486, 1398),
				point(2590, 1606),
				point(2806, 1538),
				point(2630, 1226),
			},
			{
				point(3084, 1346),
				point(3136, 1606),
				point(3412, 1548),
				point(3232, 1272),
			},
			{
				point(3622, 1360),
				point(3764, 1616),
				point(3986, 1542),
				point(3832, 1288),
			},
			{
				point(126, 1988),
				point(262, 2224),
				point(466, 2104),
				point(300, 1858),
			},
			{
				point(704, 1976),
				point(844, 2232),
				point(1042, 2118),
				point(896, 1876),
			},
			{
				point(1276, 1972),
				point(1442, 2250),
				point(1650, 2096),
				point(1482, 1880),
			},
			{
				point(1912, 1944),
				point(1908, 2202),
				point(2234, 2174),
				point(2072, 1880),
			},
			{
				point(2478, 1946),
				point(2536, 2200),
				point(2822, 2180),
				point(2648, 1884),
			},
			{
				point(3054, 1944),
				point(3130, 2200),
				point(3376, 2192),
				point(3242, 1880),
			},
			{
				point(3628, 1938),
				point(3730, 2206),
				point(3966, 2194),
				point(3832, 1900),
			},
			{
				point(100, 2520),
				point(230, 2798),
				point(464, 2772),
				point(322, 2516),
			},
			{
				point(682, 2534),
				point(820, 2798),
				point(1038, 2776),
				point(900, 2462),
			},
			{
				point(1408, 2812),
				point(1636, 2762),
				point(1492, 2534),
				point(1264, 2516),
			},
			{
				point(1892, 2534),
				point(1890, 2798),
				point(2222, 2794),
				point(2054, 2464),
			},
			{
				point(2458, 2572),
				point(2590, 2842),
				point(2762, 2728),
				point(2656, 2510),
			},
			{
				point(3048, 2592),
				point(3182, 2842),
				point(3336, 2748),
				point(3252, 2520),
			},
			{
				point(3628, 2600),
				point(3776, 2846),
				point(3918, 2742),
				point(3832, 2508),
			},
			{
				point(114, 3186),
				point(228, 3378),
				point(418, 3370),
				point(326, 3102),
			},
			{
				point(720, 3182),
				point(772, 3356),
				point(1004, 3378),
				point(912, 3102),
			},
			{
				point(1270, 3202),
				point(1402, 3364),
				point(1574, 3352),
				point(1498, 3104),
			},
			{
				point(1874, 3198),
				point(1980, 3374),
				point(2156, 3354),
				point(2086, 3110),
			},
			{
				point(2462, 3202),
				point(2558, 3380),
				point(2742, 3360),
				point(2670, 3106),
			},
			{
				point(3030, 3210),
				point(3168, 3382),
				point(3330, 3366),
				point(3258, 3118),
			},
			{
				point(3636, 3202),
				point(3738, 3388),
				point(3912, 3344),
				point(3834, 3124),
			},
			{
				point(114, 3800),
				point(246, 3966),
				point(386, 3890),
				point(320, 3712),
			},
			{
				point(704, 3802),
				point(820, 3978),
				point(976, 3924),
				point(920, 3714),
			},
			{
				point(1296, 3808),
				point(1414, 3982),
				point(1552, 3890),
				point(1498, 3722),
			},
			{
				point(1888, 3812),
				point(2000, 3988),
				point(2134, 3892),
				point(2090, 3722),
			},
			{
				point(2488, 3826),
				point(2568, 3984),
				point(2714, 3906),
				point(2666, 3726),
			},
			{
				point(3072, 3840),
				point(3156, 3986),
				point(3276, 3900),
				point(3266, 3722),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', 2581146602436599147,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "H" ),
		'direction', point(1000, 0, 0),
		'acceleration', 5000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 32000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 549, 549),
			point(277, 606, 669),
			point(642, 714, 817),
			point(1000, 880, 1000),
		},
	}, nil, nil),
	PlaceObj('DisplacerWaterBirth', {
		'bins', set( "H" ),
		'range_min', 200,
		'range_max', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "C", "D", "F", "G", "H" ),
		'anim_type', "Cycle Once",
		'fps', 30,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 333, 333),
			point(667, 667, 667),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C", "D", "F", "G", "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(159, 343, 657),
			point(722, 14, 133),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "F" ),
		'direction', point(1000, 0, 0),
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "C" ),
		'direction', point(1000, 0, 0),
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "G" ),
		'direction', point(500, -700, 0),
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "D" ),
		'direction', point(500, 1000, 0),
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "H" ),
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "F", "G" ),
		'position1', point(0, -750, 0),
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "C", "D" ),
		'position1', point(0, 750, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "F", "G" ),
		'direction', point(1000, -1000, 1000),
		'spread_angle', 2000,
		'vel_max', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C", "D" ),
		'direction', point(1000, 1000, 1000),
		'spread_angle', 2000,
		'vel_max', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "F", "G" ),
		'direction', point(1000, -1000, 0),
		'spread_angle', 2000,
		'vel_min', 5000,
		'vel_max', 5000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C", "D" ),
		'direction', point(1000, 1000, 0),
		'spread_angle', 2000,
		'vel_min', 5000,
		'vel_max', 5000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "C", "D", "F", "G" ),
		'direction', point(0, 0, -1000),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "mist",
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 2000,
		'lifetime_max', 2000,
		'position', point(-1000, -1000, 0),
		'angle', range(-65, 65),
		'size_min', 250,
		'size_max', 1000,
		'shader', "Add Light",
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/clouds_2x2.norm.tga",
		'frames', point(2, 2),
		'softness', 200,
		'far_softness', 100,
		'near_softness', 100,
		'outlines', {
			{
				point(2, 2046),
				point(2046, 2046),
				point(2046, 2),
				point(2, 2),
			},
			{
				point(2050, 2046),
				point(4094, 2046),
				point(4094, 2),
				point(2050, 2),
			},
			{
				point(2, 4094),
				point(2046, 4094),
				point(2046, 2050),
				point(2, 2050),
			},
			{
				point(2050, 4094),
				point(4094, 4094),
				point(4094, 2050),
				point(2050, 2050),
			},
		},
		'texture_hash', -6207396961789587687,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "mist",
		'bins', set( "B" ),
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 0,
		'parts_per_meter', 300,
		'lifetime_min', 2000,
		'lifetime_max', 2000,
		'position', point(-1000, 1000, 0),
		'angle', range(-65, 65),
		'size_min', 250,
		'size_max', 1000,
		'shader', "Add Light",
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/clouds_2x2.norm.tga",
		'frames', point(2, 2),
		'softness', 200,
		'far_softness', 100,
		'near_softness', 100,
		'outlines', {
			{
				point(2, 2046),
				point(2046, 2046),
				point(2046, 2),
				point(2, 2),
			},
			{
				point(2050, 2046),
				point(4094, 2046),
				point(4094, 2),
				point(2050, 2),
			},
			{
				point(2, 4094),
				point(2046, 4094),
				point(2046, 2050),
				point(2, 2050),
			},
			{
				point(2050, 4094),
				point(4094, 4094),
				point(4094, 2050),
				point(2050, 2050),
			},
		},
		'texture_hash', -6207396961789587687,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B" ),
		'start_color_min', RGBA(163, 192, 207, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "A", "B" ),
		'max_size', 10000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 86, 86),
			point(203, 210, 372),
			point(657, 452, 736),
			point(1000, 600, 900),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 162, 330),
			point(218, 282, 530),
			point(635, 535, 825),
			point(1000, 695, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(-1000, -1000, 0),
		'spread_angle', 6000,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'direction', point(-1000, 1000, 0),
		'spread_angle', 6000,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "A", "B" ),
		'direction', point(0, -500, -1000),
		'acceleration', 800,
		'max_vel', 9000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "A", "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(110, 33, 167),
			point(678, 43, 155),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


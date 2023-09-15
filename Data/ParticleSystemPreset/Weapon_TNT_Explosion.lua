-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Grenade_TNT",
	id = "Weapon_TNT_Explosion",
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "C", "D", "E", "F" ),
		'anim_type', "Cycle Once",
		'fps', 28,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(318, 316, 316),
			point(753, 753, 753),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "C", "D", "E", "F" ),
		'max_vel', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "C", "F" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Sparks",
		'time_stop', 200,
		'randomize_period', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 8000,
		'lifetime_min', 200,
		'lifetime_max', 600,
		'size_min', 500,
		'size_max', 500,
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'self_illum', 200,
		'drawing_order', 4,
		'outlines', {
			{
				point(248, 3832),
				point(3832, 3832),
				point(3832, 248),
				point(248, 248),
			},
		},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(230, 125, 22, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(230, 125, 22, 255),
		'start_intensity_max', 3000,
		'mid_color', RGBA(151, 53, 0, 255),
		'mid_intensity', 4000,
		'end_color', RGBA(84, 13, 0, 255),
		'end_intensity', 2000,
		'type', "Interpolate through mid",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 147, 489),
			point(304, 563, 1000),
			point(672, 426, 1000),
			point(1000, 0, 251),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 800,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(347, 52, 52),
			point(746, 74, 74),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 63, 63),
			point(275, 91, 91),
			point(622, 450, 450),
			point(1000, 23, 23),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 245, 245),
			point(141, 987, 987),
			point(612, 507, 507),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 24000,
		'vel_min', 24000,
		'vel_max', 26000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 755, 755),
			point(326, 909, 909),
			point(654, 907, 907),
			point(1000, 912, 912),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Shrapnel",
		'bins', set( "B" ),
		'time_stop', 300,
		'randomize_period', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 10000,
		'lifetime_min', 200,
		'lifetime_max', 400,
		'angle', range(0, 360),
		'size_min', 140,
		'size_max', 180,
		'shader', "Solid",
		'texture', "Textures/Particles/debris_chunks_4x4.tga",
		'normalmap', "Textures/Particles/debris_chunks_4x4.norm.tga",
		'frames', point(4, 4),
		'alpha_test', 64,
		'drawing_order', 4,
		'outlines', {
			{
				point(276, 932),
				point(760, 844),
				point(760, 260),
				point(132, 128),
			},
			{
				point(1164, 728),
				point(1876, 868),
				point(1996, 320),
				point(1116, 180),
			},
			{
				point(2128, 388),
				point(2344, 1000),
				point(2968, 632),
				point(2624, 60),
			},
			{
				point(3292, 228),
				point(3360, 884),
				point(3860, 884),
				point(3860, 4),
			},
			{
				point(88, 1236),
				point(164, 2016),
				point(804, 1656),
				point(840, 1148),
			},
			{
				point(1312, 1188),
				point(1284, 1876),
				point(1740, 2004),
				point(1796, 1124),
			},
			{
				point(2192, 1696),
				point(2368, 2044),
				point(3036, 1552),
				point(2436, 1080),
			},
			{
				point(3080, 1508),
				point(3752, 1992),
				point(4088, 1656),
				point(3660, 1196),
			},
			{
				point(328, 2744),
				point(1020, 2820),
				point(736, 2240),
				point(28, 2136),
			},
			{
				point(1256, 2832),
				point(1992, 2704),
				point(1732, 2320),
				point(1256, 2064),
			},
			{
				point(2168, 2364),
				point(2168, 2924),
				point(2972, 2632),
				point(2952, 2180),
			},
			{
				point(3224, 2632),
				point(3952, 3032),
				point(4072, 2420),
				point(3080, 2092),
			},
			{
				point(76, 3708),
				point(972, 4068),
				point(784, 3376),
				point(204, 3160),
			},
			{
				point(1096, 3528),
				point(1328, 4052),
				point(1904, 3960),
				point(1560, 3072),
			},
			{
				point(2064, 3520),
				point(2484, 4048),
				point(2948, 4048),
				point(2780, 3096),
			},
			{
				point(3336, 3436),
				point(3252, 4016),
				point(3804, 3856),
				point(4008, 3100),
			},
		},
		'texture_hash', -7170684798002532260,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(176, 165, 155, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(120, 109, 100, 255),
		'start_intensity_max', 3000,
		'mid_color', RGBA(176, 165, 155, 255),
		'mid_intensity', 4000,
		'end_color', RGBA(120, 109, 100, 255),
		'end_intensity', 2000,
		'type', "Start color range",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "B" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 487, 487),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "B" ),
		'direction', point(0, 0, -1000),
		'acceleration', 4000,
		'max_vel', 24000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 24000,
		'vel_min', 24000,
		'vel_max', 26000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 755, 755),
			point(326, 909, 909),
			point(654, 907, 907),
			point(1000, 912, 912),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke Black Back",
		'bins', set( "C" ),
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 10000,
		'lifetime_min', 3000,
		'lifetime_max', 5000,
		'angle', range(-360, 360),
		'size_min', 3000,
		'size_max', 3000,
		'texture', "Textures/Particles/Explosion_02_7x7.tga",
		'normalmap', "Textures/Particles/Explosion_02_7x7.norm.tga",
		'frames', point(7, 7),
		'softness', 100,
		'drawing_order', -5,
		'depth_offset', -1000,
		'outlines', {
			{
				point(582, 582),
				point(582, 583),
				point(583, 583),
				point(583, 582),
			},
			{
				point(792, 304),
				point(850, 366),
				point(922, 316),
				point(872, 248),
			},
			{
				point(1366, 338),
				point(1474, 366),
				point(1518, 292),
				point(1432, 236),
			},
			{
				point(1954, 340),
				point(2066, 376),
				point(2114, 278),
				point(2000, 230),
			},
			{
				point(2534, 342),
				point(2654, 382),
				point(2706, 274),
				point(2584, 226),
			},
			{
				point(3104, 348),
				point(3242, 380),
				point(3286, 296),
				point(3188, 190),
			},
			{
				point(3680, 332),
				point(3800, 390),
				point(3880, 322),
				point(3792, 168),
			},
			{
				point(152, 930),
				point(326, 968),
				point(372, 872),
				point(268, 740),
			},
			{
				point(734, 912),
				point(912, 986),
				point(964, 860),
				point(852, 718),
			},
			{
				point(1318, 896),
				point(1498, 1006),
				point(1556, 850),
				point(1432, 700),
			},
			{
				point(1896, 892),
				point(2084, 1018),
				point(2148, 846),
				point(2020, 682),
			},
			{
				point(2476, 890),
				point(2664, 1026),
				point(2740, 848),
				point(2604, 660),
			},
			{
				point(3054, 886),
				point(3248, 1034),
				point(3330, 844),
				point(3192, 648),
			},
			{
				point(3634, 886),
				point(3824, 1038),
				point(3916, 862),
				point(3778, 634),
			},
			{
				point(122, 1470),
				point(334, 1652),
				point(404, 1348),
				point(226, 1282),
			},
			{
				point(706, 1476),
				point(916, 1652),
				point(988, 1366),
				point(810, 1276),
			},
			{
				point(1290, 1478),
				point(1502, 1654),
				point(1574, 1364),
				point(1394, 1272),
			},
			{
				point(1874, 1480),
				point(2088, 1656),
				point(2158, 1362),
				point(1976, 1270),
			},
			{
				point(2458, 1490),
				point(2686, 1638),
				point(2730, 1358),
				point(2560, 1268),
			},
			{
				point(3042, 1490),
				point(3270, 1636),
				point(3318, 1356),
				point(3144, 1266),
			},
			{
				point(3626, 1492),
				point(3854, 1636),
				point(3904, 1354),
				point(3730, 1264),
			},
			{
				point(106, 2072),
				point(340, 2218),
				point(396, 1938),
				point(220, 1850),
			},
			{
				point(666, 2056),
				point(922, 2216),
				point(978, 1978),
				point(816, 1870),
			},
			{
				point(1236, 2050),
				point(1500, 2208),
				point(1568, 1976),
				point(1408, 1874),
			},
			{
				point(1844, 2078),
				point(2082, 2182),
				point(2168, 1980),
				point(1956, 1850),
			},
			{
				point(2442, 2086),
				point(2680, 2180),
				point(2752, 1960),
				point(2518, 1852),
			},
			{
				point(3090, 2110),
				point(3290, 2172),
				point(3330, 1926),
				point(3038, 1866),
			},
			{
				point(3676, 2108),
				point(3888, 2180),
				point(3912, 1900),
				point(3626, 1900),
			},
			{
				point(118, 2506),
				point(168, 2694),
				point(386, 2770),
				point(398, 2466),
			},
			{
				point(700, 2504),
				point(754, 2694),
				point(982, 2774),
				point(982, 2462),
			},
			{
				point(1262, 2556),
				point(1440, 2804),
				point(1592, 2652),
				point(1506, 2438),
			},
			{
				point(1840, 2556),
				point(2026, 2794),
				point(2186, 2656),
				point(2092, 2436),
			},
			{
				point(2432, 2548),
				point(2600, 2794),
				point(2780, 2662),
				point(2680, 2432),
			},
			{
				point(3016, 2540),
				point(3174, 2794),
				point(3378, 2666),
				point(3266, 2436),
			},
			{
				point(3606, 2510),
				point(3718, 2768),
				point(3952, 2722),
				point(3894, 2448),
			},
			{
				point(90, 3092),
				point(220, 3384),
				point(466, 3260),
				point(356, 3036),
			},
			{
				point(672, 3088),
				point(782, 3348),
				point(1022, 3330),
				point(988, 3028),
			},
			{
				point(1254, 3084),
				point(1360, 3348),
				point(1592, 3332),
				point(1592, 3026),
			},
			{
				point(1840, 3084),
				point(1932, 3332),
				point(2170, 3350),
				point(2192, 3022),
			},
			{
				point(2424, 3076),
				point(2508, 3332),
				point(2762, 3352),
				point(2778, 3022),
			},
			{
				point(3094, 3344),
				point(3358, 3344),
				point(3334, 3056),
				point(3004, 3056),
			},
			{
				point(3664, 3344),
				point(3948, 3344),
				point(3918, 3054),
				point(3596, 3050),
			},
			{
				point(94, 3644),
				point(140, 3928),
				point(440, 3928),
				point(412, 3636),
			},
			{
				point(704, 3646),
				point(704, 3888),
				point(1034, 3964),
				point(988, 3632),
			},
			{
				point(1294, 3644),
				point(1274, 3902),
				point(1632, 3944),
				point(1536, 3638),
			},
			{
				point(1892, 3644),
				point(1852, 3864),
				point(2172, 3970),
				point(2120, 3636),
			},
			{
				point(2466, 3720),
				point(2430, 3868),
				point(2724, 3948),
				point(2688, 3666),
			},
			{
				point(3064, 3878),
				point(3326, 3950),
				point(3258, 3790),
				point(3020, 3790),
			},
			{
				point(3794, 3912),
				point(3858, 3904),
				point(3848, 3800),
				point(3618, 3792),
			},
		},
		'texture_hash', 9144901705902613696,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(59, 1000, 1000),
			point(376, 163, 163),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 8000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 74, 74),
			point(10, 695, 695),
			point(489, 800, 800),
			point(1000, 868, 868),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "C" ),
		'start_color_min', RGBA(107, 107, 107, 255),
		'start_color_max', RGBA(103, 103, 103, 255),
		'mid_color', RGBA(93, 93, 93, 255),
		'end_color', RGBA(53, 53, 53, 255),
		'type', "InterpolateByCurve",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(287, 0, 0),
			point(405, 916, 916),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C" ),
		'spread_angle', 18000,
		'vel_min', 100,
		'vel_max', 500,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fireball",
		'bins', set( "D" ),
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 100000,
		'lifetime_min', 6000,
		'lifetime_max', 6000,
		'angle', range(-180, 180),
		'size_min', 5000,
		'size_max', 5000,
		'shader', "Add",
		'texture', "Textures/Particles/Explosion_02_7x7_emissive.tga",
		'frames', point(7, 7),
		'self_illum', 200,
		'softness', 50,
		'drawing_order', 2,
		'outlines', {
			{
				point(230, 294),
				point(268, 350),
				point(318, 316),
				point(282, 270),
			},
			{
				point(792, 304),
				point(850, 366),
				point(922, 316),
				point(872, 248),
			},
			{
				point(1366, 338),
				point(1474, 366),
				point(1518, 292),
				point(1432, 236),
			},
			{
				point(1954, 340),
				point(2066, 376),
				point(2114, 278),
				point(2000, 230),
			},
			{
				point(2534, 342),
				point(2654, 382),
				point(2706, 274),
				point(2584, 226),
			},
			{
				point(3104, 348),
				point(3242, 380),
				point(3286, 296),
				point(3188, 190),
			},
			{
				point(3680, 332),
				point(3800, 390),
				point(3880, 322),
				point(3792, 168),
			},
			{
				point(152, 930),
				point(326, 968),
				point(372, 872),
				point(268, 740),
			},
			{
				point(734, 912),
				point(912, 986),
				point(964, 860),
				point(852, 718),
			},
			{
				point(1318, 896),
				point(1498, 1006),
				point(1556, 850),
				point(1432, 700),
			},
			{
				point(1896, 892),
				point(2084, 1018),
				point(2148, 846),
				point(2020, 682),
			},
			{
				point(2476, 890),
				point(2664, 1026),
				point(2740, 848),
				point(2604, 660),
			},
			{
				point(3054, 886),
				point(3248, 1034),
				point(3330, 844),
				point(3192, 648),
			},
			{
				point(3634, 886),
				point(3824, 1038),
				point(3916, 862),
				point(3778, 634),
			},
			{
				point(122, 1470),
				point(334, 1652),
				point(404, 1348),
				point(226, 1282),
			},
			{
				point(706, 1476),
				point(916, 1652),
				point(988, 1366),
				point(810, 1276),
			},
			{
				point(1290, 1478),
				point(1502, 1654),
				point(1574, 1364),
				point(1394, 1272),
			},
			{
				point(1874, 1480),
				point(2088, 1656),
				point(2158, 1362),
				point(1976, 1270),
			},
			{
				point(2458, 1490),
				point(2686, 1638),
				point(2730, 1358),
				point(2560, 1268),
			},
			{
				point(3042, 1490),
				point(3270, 1636),
				point(3318, 1356),
				point(3144, 1266),
			},
			{
				point(3626, 1492),
				point(3854, 1636),
				point(3904, 1354),
				point(3730, 1264),
			},
			{
				point(106, 2072),
				point(340, 2218),
				point(396, 1938),
				point(220, 1850),
			},
			{
				point(666, 2056),
				point(922, 2216),
				point(978, 1978),
				point(816, 1870),
			},
			{
				point(1236, 2050),
				point(1500, 2208),
				point(1568, 1976),
				point(1408, 1874),
			},
			{
				point(1844, 2078),
				point(2082, 2182),
				point(2168, 1980),
				point(1956, 1850),
			},
			{
				point(2442, 2086),
				point(2680, 2180),
				point(2752, 1960),
				point(2518, 1852),
			},
			{
				point(3090, 2110),
				point(3290, 2172),
				point(3330, 1926),
				point(3038, 1866),
			},
			{
				point(3676, 2108),
				point(3888, 2180),
				point(3912, 1900),
				point(3626, 1900),
			},
			{
				point(118, 2506),
				point(168, 2694),
				point(386, 2770),
				point(398, 2466),
			},
			{
				point(700, 2504),
				point(754, 2694),
				point(982, 2774),
				point(982, 2462),
			},
			{
				point(1262, 2556),
				point(1440, 2804),
				point(1592, 2652),
				point(1506, 2438),
			},
			{
				point(1840, 2556),
				point(2026, 2794),
				point(2186, 2656),
				point(2092, 2436),
			},
			{
				point(2432, 2548),
				point(2600, 2794),
				point(2780, 2662),
				point(2680, 2432),
			},
			{
				point(3016, 2540),
				point(3174, 2794),
				point(3378, 2666),
				point(3266, 2436),
			},
			{
				point(3606, 2510),
				point(3718, 2768),
				point(3952, 2722),
				point(3894, 2448),
			},
			{
				point(90, 3092),
				point(220, 3384),
				point(466, 3260),
				point(356, 3036),
			},
			{
				point(672, 3088),
				point(782, 3348),
				point(1022, 3330),
				point(988, 3028),
			},
			{
				point(1254, 3084),
				point(1360, 3348),
				point(1592, 3332),
				point(1592, 3026),
			},
			{
				point(1840, 3084),
				point(1932, 3332),
				point(2170, 3350),
				point(2192, 3022),
			},
			{
				point(2424, 3076),
				point(2508, 3332),
				point(2762, 3352),
				point(2778, 3022),
			},
			{
				point(3094, 3344),
				point(3358, 3344),
				point(3334, 3056),
				point(3004, 3056),
			},
			{
				point(3664, 3344),
				point(3948, 3344),
				point(3918, 3054),
				point(3596, 3050),
			},
			{
				point(94, 3644),
				point(140, 3928),
				point(440, 3928),
				point(412, 3636),
			},
			{
				point(704, 3646),
				point(704, 3888),
				point(1034, 3964),
				point(988, 3632),
			},
			{
				point(1294, 3644),
				point(1274, 3902),
				point(1632, 3944),
				point(1536, 3638),
			},
			{
				point(1892, 3644),
				point(1852, 3864),
				point(2172, 3970),
				point(2120, 3636),
			},
			{
				point(2466, 3720),
				point(2430, 3868),
				point(2724, 3948),
				point(2688, 3666),
			},
			{
				point(3064, 3878),
				point(3326, 3950),
				point(3258, 3790),
				point(3020, 3790),
			},
			{
				point(3794, 3912),
				point(3858, 3904),
				point(3848, 3800),
				point(3618, 3792),
			},
		},
		'texture_hash', -1556731328998256955,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "D" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(800, 1000, 1000),
			point(923, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "D" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(181, 542, 542),
			point(486, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "D", "E" ),
		'start_color_min', RGBA(255, 148, 9, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fireball Second",
		'bins', set( "E" ),
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 10000,
		'lifetime_min', 3000,
		'angle', range(-180, 180),
		'size_min', 5000,
		'size_max', 5000,
		'shader', "Add",
		'texture', "Textures/Particles/Explosion_02_7x7.tga",
		'frames', point(7, 7),
		'self_illum', 200,
		'softness', 50,
		'drawing_order', 3,
		'outlines', {
			{
				point(582, 582),
				point(582, 583),
				point(583, 583),
				point(583, 582),
			},
			{
				point(792, 304),
				point(850, 366),
				point(922, 316),
				point(872, 248),
			},
			{
				point(1366, 338),
				point(1474, 366),
				point(1518, 292),
				point(1432, 236),
			},
			{
				point(1954, 340),
				point(2066, 376),
				point(2114, 278),
				point(2000, 230),
			},
			{
				point(2534, 342),
				point(2654, 382),
				point(2706, 274),
				point(2584, 226),
			},
			{
				point(3104, 348),
				point(3242, 380),
				point(3286, 296),
				point(3188, 190),
			},
			{
				point(3680, 332),
				point(3800, 390),
				point(3880, 322),
				point(3792, 168),
			},
			{
				point(152, 930),
				point(326, 968),
				point(372, 872),
				point(268, 740),
			},
			{
				point(734, 912),
				point(912, 986),
				point(964, 860),
				point(852, 718),
			},
			{
				point(1318, 896),
				point(1498, 1006),
				point(1556, 850),
				point(1432, 700),
			},
			{
				point(1896, 892),
				point(2084, 1018),
				point(2148, 846),
				point(2020, 682),
			},
			{
				point(2476, 890),
				point(2664, 1026),
				point(2740, 848),
				point(2604, 660),
			},
			{
				point(3054, 886),
				point(3248, 1034),
				point(3330, 844),
				point(3192, 648),
			},
			{
				point(3634, 886),
				point(3824, 1038),
				point(3916, 862),
				point(3778, 634),
			},
			{
				point(122, 1470),
				point(334, 1652),
				point(404, 1348),
				point(226, 1282),
			},
			{
				point(706, 1476),
				point(916, 1652),
				point(988, 1366),
				point(810, 1276),
			},
			{
				point(1290, 1478),
				point(1502, 1654),
				point(1574, 1364),
				point(1394, 1272),
			},
			{
				point(1874, 1480),
				point(2088, 1656),
				point(2158, 1362),
				point(1976, 1270),
			},
			{
				point(2458, 1490),
				point(2686, 1638),
				point(2730, 1358),
				point(2560, 1268),
			},
			{
				point(3042, 1490),
				point(3270, 1636),
				point(3318, 1356),
				point(3144, 1266),
			},
			{
				point(3626, 1492),
				point(3854, 1636),
				point(3904, 1354),
				point(3730, 1264),
			},
			{
				point(106, 2072),
				point(340, 2218),
				point(396, 1938),
				point(220, 1850),
			},
			{
				point(666, 2056),
				point(922, 2216),
				point(978, 1978),
				point(816, 1870),
			},
			{
				point(1236, 2050),
				point(1500, 2208),
				point(1568, 1976),
				point(1408, 1874),
			},
			{
				point(1844, 2078),
				point(2082, 2182),
				point(2168, 1980),
				point(1956, 1850),
			},
			{
				point(2442, 2086),
				point(2680, 2180),
				point(2752, 1960),
				point(2518, 1852),
			},
			{
				point(3090, 2110),
				point(3290, 2172),
				point(3330, 1926),
				point(3038, 1866),
			},
			{
				point(3676, 2108),
				point(3888, 2180),
				point(3912, 1900),
				point(3626, 1900),
			},
			{
				point(118, 2506),
				point(168, 2694),
				point(386, 2770),
				point(398, 2466),
			},
			{
				point(700, 2504),
				point(754, 2694),
				point(982, 2774),
				point(982, 2462),
			},
			{
				point(1262, 2556),
				point(1440, 2804),
				point(1592, 2652),
				point(1506, 2438),
			},
			{
				point(1840, 2556),
				point(2026, 2794),
				point(2186, 2656),
				point(2092, 2436),
			},
			{
				point(2432, 2548),
				point(2600, 2794),
				point(2780, 2662),
				point(2680, 2432),
			},
			{
				point(3016, 2540),
				point(3174, 2794),
				point(3378, 2666),
				point(3266, 2436),
			},
			{
				point(3606, 2510),
				point(3718, 2768),
				point(3952, 2722),
				point(3894, 2448),
			},
			{
				point(90, 3092),
				point(220, 3384),
				point(466, 3260),
				point(356, 3036),
			},
			{
				point(672, 3088),
				point(782, 3348),
				point(1022, 3330),
				point(988, 3028),
			},
			{
				point(1254, 3084),
				point(1360, 3348),
				point(1592, 3332),
				point(1592, 3026),
			},
			{
				point(1840, 3084),
				point(1932, 3332),
				point(2170, 3350),
				point(2192, 3022),
			},
			{
				point(2424, 3076),
				point(2508, 3332),
				point(2762, 3352),
				point(2778, 3022),
			},
			{
				point(3094, 3344),
				point(3358, 3344),
				point(3334, 3056),
				point(3004, 3056),
			},
			{
				point(3664, 3344),
				point(3948, 3344),
				point(3918, 3054),
				point(3596, 3050),
			},
			{
				point(94, 3644),
				point(140, 3928),
				point(440, 3928),
				point(412, 3636),
			},
			{
				point(704, 3646),
				point(704, 3888),
				point(1034, 3964),
				point(988, 3632),
			},
			{
				point(1294, 3644),
				point(1274, 3902),
				point(1632, 3944),
				point(1536, 3638),
			},
			{
				point(1892, 3644),
				point(1852, 3864),
				point(2172, 3970),
				point(2120, 3636),
			},
			{
				point(2466, 3720),
				point(2430, 3868),
				point(2724, 3948),
				point(2688, 3666),
			},
			{
				point(3064, 3878),
				point(3326, 3950),
				point(3258, 3790),
				point(3020, 3790),
			},
			{
				point(3794, 3912),
				point(3858, 3904),
				point(3848, 3800),
				point(3618, 3792),
			},
		},
		'texture_hash', 9144901705902613696,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "E" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(53, 1000, 1000),
			point(686, 300, 300),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke After",
		'bins', set( "F" ),
		'time_start', 200,
		'time_stop', 400,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 2,
		'parts_per_sec', 100000,
		'lifetime_min', 2000,
		'lifetime_max', 4000,
		'angle', range(0, 360),
		'texture', "Textures/Particles/Smoke_01.tga",
		'normalmap', "Textures/Particles/Smoke_01.norm.tga",
		'frames', point(8, 8),
		'light_softness', 1000,
		'no_depth_test', true,
		'drawing_order', -6,
		'outlines', {
			{
				point(148, 394),
				point(310, 394),
				point(326, 226),
				point(148, 194),
			},
			{
				point(640, 366),
				point(820, 422),
				point(842, 228),
				point(670, 194),
			},
			{
				point(1138, 364),
				point(1334, 428),
				point(1358, 232),
				point(1192, 192),
			},
			{
				point(1630, 360),
				point(1850, 432),
				point(1872, 232),
				point(1716, 196),
			},
			{
				point(2130, 352),
				point(2360, 436),
				point(2394, 244),
				point(2242, 188),
			},
			{
				point(2638, 350),
				point(2872, 442),
				point(2910, 244),
				point(2754, 186),
			},
			{
				point(3144, 344),
				point(3384, 448),
				point(3426, 248),
				point(3268, 178),
			},
			{
				point(3678, 256),
				point(3774, 412),
				point(3962, 382),
				point(3874, 140),
			},
			{
				point(86, 756),
				point(188, 924),
				point(386, 896),
				point(292, 660),
			},
			{
				point(586, 740),
				point(698, 924),
				point(902, 896),
				point(810, 676),
			},
			{
				point(1090, 724),
				point(1206, 930),
				point(1418, 888),
				point(1324, 686),
			},
			{
				point(1598, 718),
				point(1716, 934),
				point(1932, 884),
				point(1836, 686),
			},
			{
				point(2104, 706),
				point(2226, 940),
				point(2444, 880),
				point(2350, 688),
			},
			{
				point(2614, 702),
				point(2736, 946),
				point(2960, 872),
				point(2858, 684),
			},
			{
				point(3124, 696),
				point(3246, 950),
				point(3482, 868),
				point(3362, 684),
			},
			{
				point(3634, 694),
				point(3756, 954),
				point(3996, 866),
				point(3870, 678),
			},
			{
				point(44, 1200),
				point(172, 1468),
				point(412, 1378),
				point(290, 1188),
			},
			{
				point(556, 1200),
				point(682, 1472),
				point(922, 1380),
				point(806, 1184),
			},
			{
				point(1064, 1196),
				point(1194, 1474),
				point(1430, 1380),
				point(1322, 1180),
			},
			{
				point(1574, 1190),
				point(1704, 1476),
				point(1942, 1380),
				point(1836, 1178),
			},
			{
				point(2082, 1184),
				point(2216, 1478),
				point(2454, 1382),
				point(2352, 1176),
			},
			{
				point(2592, 1184),
				point(2726, 1478),
				point(2964, 1384),
				point(2866, 1172),
			},
			{
				point(3100, 1178),
				point(3240, 1478),
				point(3474, 1384),
				point(3382, 1170),
			},
			{
				point(3608, 1172),
				point(3752, 1478),
				point(3986, 1384),
				point(3896, 1168),
			},
			{
				point(22, 1682),
				point(168, 1990),
				point(402, 1896),
				point(314, 1678),
			},
			{
				point(678, 1990),
				point(914, 1898),
				point(828, 1678),
				point(530, 1678),
			},
			{
				point(1192, 1990),
				point(1424, 1898),
				point(1342, 1676),
				point(1040, 1676),
			},
			{
				point(1704, 1990),
				point(1938, 1898),
				point(1854, 1676),
				point(1548, 1668),
			},
			{
				point(2216, 1990),
				point(2448, 1900),
				point(2368, 1674),
				point(2058, 1666),
			},
			{
				point(2728, 1990),
				point(2960, 1900),
				point(2882, 1672),
				point(2568, 1664),
			},
			{
				point(3240, 1990),
				point(3474, 1898),
				point(3394, 1670),
				point(3078, 1662),
			},
			{
				point(3752, 1988),
				point(3984, 1900),
				point(3908, 1668),
				point(3586, 1660),
			},
			{
				point(168, 2500),
				point(400, 2414),
				point(324, 2178),
				point(4, 2174),
			},
			{
				point(682, 2498),
				point(914, 2412),
				point(836, 2176),
				point(512, 2172),
			},
			{
				point(1192, 2498),
				point(1426, 2412),
				point(1350, 2174),
				point(1026, 2174),
			},
			{
				point(1706, 2498),
				point(1938, 2414),
				point(1862, 2172),
				point(1536, 2172),
			},
			{
				point(2218, 2496),
				point(2450, 2414),
				point(2376, 2172),
				point(2048, 2168),
			},
			{
				point(2582, 2218),
				point(2730, 2496),
				point(2962, 2412),
				point(2860, 2082),
			},
			{
				point(3072, 2170),
				point(3236, 2500),
				point(3474, 2412),
				point(3400, 2166),
			},
			{
				point(3748, 2502),
				point(3986, 2412),
				point(3914, 2168),
				point(3584, 2168),
			},
			{
				point(0, 2680),
				point(168, 3014),
				point(402, 2924),
				point(328, 2676),
			},
			{
				point(512, 2680),
				point(678, 3018),
				point(914, 2922),
				point(842, 2676),
			},
			{
				point(1026, 2682),
				point(1186, 3020),
				point(1426, 2922),
				point(1354, 2674),
			},
			{
				point(1538, 2678),
				point(1696, 3024),
				point(1940, 2920),
				point(1866, 2674),
			},
			{
				point(2050, 2680),
				point(2206, 3024),
				point(2452, 2920),
				point(2376, 2672),
			},
			{
				point(2564, 2680),
				point(2716, 3026),
				point(2966, 2918),
				point(2890, 2672),
			},
			{
				point(3078, 2682),
				point(3226, 3028),
				point(3480, 2916),
				point(3402, 2668),
			},
			{
				point(3590, 2682),
				point(3738, 3028),
				point(3992, 2916),
				point(3914, 2668),
			},
			{
				point(6, 3194),
				point(152, 3542),
				point(408, 3426),
				point(330, 3178),
			},
			{
				point(518, 3190),
				point(664, 3542),
				point(920, 3426),
				point(842, 3178),
			},
			{
				point(1030, 3190),
				point(1176, 3542),
				point(1434, 3426),
				point(1354, 3178),
			},
			{
				point(1542, 3188),
				point(1670, 3508),
				point(1958, 3462),
				point(1866, 3176),
			},
			{
				point(2052, 3186),
				point(2198, 3546),
				point(2460, 3424),
				point(2378, 3178),
			},
			{
				point(2566, 3186),
				point(2710, 3546),
				point(2972, 3424),
				point(2890, 3174),
			},
			{
				point(3078, 3186),
				point(3222, 3548),
				point(3482, 3420),
				point(3402, 3174),
			},
			{
				point(3588, 3184),
				point(3734, 3546),
				point(3996, 3420),
				point(3916, 3176),
			},
			{
				point(4, 3696),
				point(130, 4006),
				point(430, 3984),
				point(330, 3684),
			},
			{
				point(514, 3694),
				point(662, 4056),
				point(924, 3932),
				point(842, 3686),
			},
			{
				point(1024, 3690),
				point(1180, 4058),
				point(1436, 3928),
				point(1354, 3686),
			},
			{
				point(1536, 3690),
				point(1668, 4004),
				point(1964, 3982),
				point(1868, 3686),
			},
			{
				point(2048, 3688),
				point(2206, 4056),
				point(2458, 3926),
				point(2378, 3684),
			},
			{
				point(2560, 3688),
				point(2720, 4060),
				point(2970, 3924),
				point(2890, 3684),
			},
			{
				point(3080, 3714),
				point(3234, 4058),
				point(3480, 3920),
				point(3380, 3616),
			},
			{
				point(3584, 3686),
				point(3748, 4060),
				point(3990, 3916),
				point(3914, 3682),
			},
		},
		'texture_hash', -3744921864792832313,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "F" ),
		'start_color_min', RGBA(53, 53, 53, 255),
		'start_intensity_min', 1339,
		'start_color_max', RGBA(53, 53, 53, 255),
		'mid_color', RGBA(53, 53, 53, 255),
		'end_color', RGBA(53, 53, 53, 255),
		'type', "Start color only",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(287, 681, 681),
			point(701, 1563, 1563),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "F" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(44, 428, 428),
			point(671, 210, 210),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "F" ),
		'max_size', 6000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(19, 686, 686),
			point(510, 852, 852),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "F" ),
		'anim_type', "Cycle Once",
		'fps', 24,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(339, 354, 354),
			point(667, 667, 667),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Distortion",
		'bins', set( "G" ),
		'time_start', 50,
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 20000,
		'lifetime_min', 350,
		'lifetime_max', 350,
		'angle', range(0, 360),
		'size_min', 1500,
		'size_max', 3000,
		'shader', "Distortion",
		'texture', "Textures/Particles/ripple_1024.tga",
		'normalmap', "Textures/Particles/cloudy.norm.tga",
		'light_softness', 1000,
		'mat_roughness', 26,
		'softness', 100,
		'normal_to_distortion', true,
		'distortion_scale', -116,
		'distortion_scale_max', 503,
		'drawing_order', -5,
		'depth_offset', -1000,
		'outlines', {},
		'texture_hash', 2453457761379002527,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "G" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 768, 768),
			point(108, 258, 258),
			point(641, 100, 100),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "G" ),
		'max_size', 9000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(60, 321, 321),
			point(688, 600, 600),
			point(1000, 721, 721),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Shockwave",
		'bins', set( "H" ),
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 2,
		'parts_per_sec', 10000,
		'lifetime_min', 400,
		'lifetime_max', 400,
		'angle', range(0, 360),
		'size_min', 1500,
		'size_max', 3000,
		'shader', "Add",
		'texture', "Textures/Particles/shockwave_1024.tga",
		'light_softness', 1000,
		'mat_roughness', 26,
		'softness', 100,
		'normal_to_distortion', true,
		'distortion_scale', -116,
		'distortion_scale_max', 503,
		'drawing_order', -5,
		'depth_offset', -1000,
		'outlines', {},
		'texture_hash', -3575605256292869222,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "H" ),
		'start_color_min', RGBA(255, 164, 47, 255),
		'start_color_max', RGBA(255, 164, 47, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "H" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 140, 140),
			point(47, 934, 934),
			point(137, 262, 262),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 10000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(333, 333, 333),
			point(667, 667, 667),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(22, 734, 734),
			point(117, 92, 92),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FacePoint', {
		'bins', set( "H" ),
		'center', point(0, 0, 1000),
	}, nil, nil),
})

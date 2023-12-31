-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Steps",
	id = "StepDust_Run",
	presim_time = 100,
	PlaceObj('ParticleEmitter', {
		'label', "dust",
		'time_stop', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'emit_fade', range(0, 500),
		'max_live_count', 3,
		'parts_per_sec', 20000,
		'lifetime_min', 1600,
		'lifetime_max', 2600,
		'angle', range(0, 360),
		'size_max', 1000,
		'texture', "Textures/Particles/clouds.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'receive_shadow', true,
		'softness', 100,
		'far_softness', 120,
		'near_softness', 100,
		'outlines', {
			{
				point(168, 1928),
				point(1800, 1928),
				point(2032, 264),
				point(152, 8),
			},
			{
				point(2064, 1992),
				point(4048, 1992),
				point(4008, 352),
				point(2216, 96),
			},
			{
				point(8, 4040),
				point(2032, 4040),
				point(2032, 2056),
				point(96, 2056),
			},
			{
				point(2160, 4048),
				point(4088, 4048),
				point(4088, 2128),
				point(2176, 2088),
			},
		},
		'texture_hash', -5054667705513709923,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('DisplacerCircle', {
		'inner_radius', 1,
		'outer_radius', 50,
		'secondary_radius', 200,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'range_min', 100,
		'range_max', 100,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(163, 128, 92, 255),
		'start_intensity_min', 1800,
		'start_color_max', RGBA(228, 185, 135, 255),
		'end_color', RGBA(228, 185, 135, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(328, 4, 4),
			point(717, 4, 4),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-10, 10),
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set(),
		'world_space', true,
		'direction', point(1000, 0, -1000),
		'start_vel', 300,
		'acceleration', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 86, 86),
			point(149, 242, 616),
			point(348, 237, 443),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set(),
		'max_size', 2800,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 232, 232),
			point(227, 246, 445),
			point(681, 305, 749),
			point(1000, 330, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 8000,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'inner_radius', 1,
		'outer_radius', 50,
		'secondary_radius', 200,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'range_min', 100,
		'range_max', 100,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'bins', set( "H" ),
		'time_stop', 200,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 5,
		'lifetime_min', 1400,
		'lifetime_max', 1400,
		'position', point(0, 0, 100),
		'angle', range(0, 360),
		'size_min', 4000,
		'size_max', 5000,
		'texture', "Textures/Particles/ground_smoke_8x8.tga",
		'normalmap', "Textures/Particles/ground_smoke_8x8_2.norm.tga",
		'frames', point(5, 7),
		'light_softness', 1000,
		'receive_shadow', true,
		'drawing_order', -2,
		'outlines', {
			{
				point(292, 290),
				point(310, 406),
				point(446, 374),
				point(424, 276),
			},
			{
				point(1084, 278),
				point(1118, 412),
				point(1276, 388),
				point(1254, 258),
			},
			{
				point(1880, 272),
				point(1916, 426),
				point(2112, 400),
				point(2102, 236),
			},
			{
				point(2676, 272),
				point(2728, 436),
				point(2946, 416),
				point(2936, 210),
			},
			{
				point(3466, 276),
				point(3548, 444),
				point(3782, 428),
				point(3766, 186),
			},
			{
				point(164, 856),
				point(256, 1042),
				point(520, 1026),
				point(506, 754),
			},
			{
				point(946, 854),
				point(1076, 1054),
				point(1352, 1040),
				point(1344, 734),
			},
			{
				point(1748, 850),
				point(1876, 1066),
				point(2178, 1052),
				point(2184, 712),
			},
			{
				point(2534, 852),
				point(2700, 1076),
				point(3006, 1062),
				point(3016, 696),
			},
			{
				point(3378, 838),
				point(3466, 1086),
				point(3828, 1070),
				point(3852, 676),
			},
			{
				point(74, 1426),
				point(198, 1678),
				point(556, 1662),
				point(588, 1248),
			},
			{
				point(902, 1418),
				point(990, 1686),
				point(1400, 1668),
				point(1400, 1240),
			},
			{
				point(1724, 1416),
				point(1792, 1692),
				point(2228, 1674),
				point(2228, 1222),
			},
			{
				point(2490, 1438),
				point(2658, 1694),
				point(3086, 1678),
				point(3020, 1222),
			},
			{
				point(3278, 1452),
				point(3518, 1696),
				point(3878, 1684),
				point(3878, 1198),
			},
			{
				point(36, 2018),
				point(168, 2286),
				point(606, 2272),
				point(606, 1776),
			},
			{
				point(850, 2018),
				point(982, 2288),
				point(1428, 2274),
				point(1428, 1768),
			},
			{
				point(1648, 2024),
				point(1818, 2284),
				point(2250, 2280),
				point(2250, 1762),
			},
			{
				point(2459, 2026),
				point(2646, 2286),
				point(3104, 2282),
				point(3042, 1772),
			},
			{
				point(3322, 2002),
				point(3392, 2288),
				point(3896, 2284),
				point(3896, 1757),
			},
			{
				point(30, 2588),
				point(122, 2872),
				point(622, 2876),
				point(622, 2342),
			},
			{
				point(838, 2592),
				point(948, 2872),
				point(1488, 2882),
				point(1400, 2352),
			},
			{
				point(1692, 2576),
				point(1722, 2870),
				point(2320, 2886),
				point(2214, 2350),
			},
			{
				point(2508, 2576),
				point(2536, 2870),
				point(3144, 2890),
				point(3036, 2344),
			},
			{
				point(3326, 2574),
				point(3346, 2866),
				point(4020, 2900),
				point(3818, 2358),
			},
			{
				point(42, 3162),
				point(70, 3450),
				point(754, 3490),
				point(536, 2942),
			},
			{
				point(858, 3166),
				point(886, 3452),
				point(1600, 3494),
				point(1340, 2942),
			},
			{
				point(1674, 3166),
				point(1702, 3450),
				point(2434, 3502),
				point(2156, 2942),
			},
			{
				point(2488, 3172),
				point(2524, 3454),
				point(3256, 3504),
				point(2974, 2936),
			},
			{
				point(3290, 3178),
				point(3366, 3488),
				point(4090, 3488),
				point(3782, 2938),
			},
			{
				point(24, 3758),
				point(68, 4042),
				point(806, 4094),
				point(518, 3514),
			},
			{
				point(842, 3756),
				point(888, 4076),
				point(1636, 4076),
				point(1322, 3518),
			},
			{
				point(1662, 3756),
				point(1700, 4044),
				point(2448, 4094),
				point(2156, 3512),
			},
			{
				point(2482, 3754),
				point(2514, 4050),
				point(3268, 4094),
				point(2976, 3512),
			},
			{
				point(3292, 3678),
				point(3332, 4052),
				point(4034, 4090),
				point(3844, 3516),
			},
		},
		'texture_hash', 4722035363488411954,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "H" ),
		'start_color_min', RGBA(179, 141, 108, 255),
		'start_intensity_min', 1339,
		'start_color_max', RGBA(161, 124, 77, 255),
		'type', "Start color only",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(48, 0, 0),
			point(69, 926, 926),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set( "H" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "H" ),
		'anim_type', "Cycle Once",
		'fps', 20,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(158, 374, 374),
			point(607, 852, 852),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(130, 84, 310),
			point(565, 37, 169),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 2400,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 241, 241),
			point(37, 414, 586),
			point(613, 611, 894),
			point(1000, 719, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "H" ),
		'multiplier', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "A", "H" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 689, 751),
			point(317, 683, 736),
			point(678, 677, 733),
			point(1000, 686, 739),
		},
	}, nil, nil),
})


-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	distance_bias = -20000,
	game_time_animated = true,
	group = "Weapon_Mortar",
	id = "Explosion_Mortar_Gas",
	particles_scale_with_object = true,
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Smoke Explosion",
		'time_start', 100,
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 10000,
		'lifetime_min', 5000,
		'lifetime_max', 5000,
		'position', point(0, 0, 2000),
		'size_min', 5000,
		'size_max', 5000,
		'texture', "Textures/Particles/Explosion_Mortar_8x8.tga",
		'normalmap', "Textures/Particles/Explosion_Mortar_8x8.norm.tga",
		'frames', point(8, 8),
		'self_illum', 50,
		'softness', 200,
		'drawing_order', -2,
		'outlines', {
			{
				point(212, 468),
				point(310, 468),
				point(310, 374),
				point(212, 374),
			},
			{
				point(730, 350),
				point(700, 470),
				point(846, 470),
				point(806, 342),
			},
			{
				point(1226, 312),
				point(1226, 470),
				point(1344, 470),
				point(1340, 304),
			},
			{
				point(1742, 468),
				point(1854, 468),
				point(1868, 276),
				point(1716, 276),
			},
			{
				point(2246, 464),
				point(2366, 470),
				point(2388, 250),
				point(2216, 238),
			},
			{
				point(2752, 464),
				point(2880, 470),
				point(2912, 228),
				point(2720, 206),
			},
			{
				point(3270, 464),
				point(3392, 470),
				point(3434, 210),
				point(3216, 182),
			},
			{
				point(3776, 468),
				point(3910, 468),
				point(3954, 188),
				point(3722, 164),
			},
			{
				point(182, 980),
				point(328, 980),
				point(376, 684),
				point(134, 662),
			},
			{
				point(676, 976),
				point(844, 986),
				point(890, 668),
				point(646, 650),
			},
			{
				point(1170, 974),
				point(1364, 986),
				point(1404, 658),
				point(1160, 642),
			},
			{
				point(1734, 978),
				point(1880, 988),
				point(1918, 652),
				point(1606, 642),
			},
			{
				point(2184, 974),
				point(2396, 988),
				point(2428, 670),
				point(2174, 622),
			},
			{
				point(2732, 976),
				point(2904, 988),
				point(2948, 666),
				point(2690, 616),
			},
			{
				point(3232, 976),
				point(3410, 988),
				point(3470, 670),
				point(3208, 612),
			},
			{
				point(3732, 974),
				point(3890, 986),
				point(3994, 706),
				point(3732, 602),
			},
			{
				point(148, 1486),
				point(306, 1496),
				point(414, 1220),
				point(148, 1112),
			},
			{
				point(660, 1488),
				point(818, 1496),
				point(932, 1224),
				point(660, 1110),
			},
			{
				point(1170, 1488),
				point(1328, 1496),
				point(1448, 1226),
				point(1170, 1108),
			},
			{
				point(1682, 1488),
				point(1840, 1496),
				point(1962, 1232),
				point(1682, 1106),
			},
			{
				point(2194, 1488),
				point(2352, 1494),
				point(2480, 1234),
				point(2194, 1106),
			},
			{
				point(2662, 1472),
				point(2852, 1504),
				point(2998, 1238),
				point(2746, 1126),
			},
			{
				point(3168, 1474),
				point(3366, 1502),
				point(3514, 1238),
				point(3262, 1128),
			},
			{
				point(3682, 1476),
				point(3880, 1502),
				point(4028, 1244),
				point(3772, 1126),
			},
			{
				point(106, 1956),
				point(278, 2040),
				point(436, 1776),
				point(188, 1638),
			},
			{
				point(616, 1970),
				point(798, 2030),
				point(952, 1780),
				point(700, 1640),
			},
			{
				point(1126, 1978),
				point(1314, 2024),
				point(1466, 1780),
				point(1212, 1642),
			},
			{
				point(1638, 1978),
				point(1828, 2024),
				point(1982, 1782),
				point(1724, 1644),
			},
			{
				point(2152, 1970),
				point(2340, 2030),
				point(2496, 1782),
				point(2238, 1648),
			},
			{
				point(2724, 1998),
				point(2866, 2012),
				point(3020, 1764),
				point(2686, 1694),
			},
			{
				point(3206, 1752),
				point(3234, 2002),
				point(3380, 2012),
				point(3546, 1748),
			},
			{
				point(3722, 1754),
				point(3740, 2000),
				point(3894, 2014),
				point(4058, 1750),
			},
			{
				point(152, 2512),
				point(312, 2526),
				point(458, 2292),
				point(138, 2256),
			},
			{
				point(664, 2512),
				point(830, 2526),
				point(970, 2294),
				point(650, 2258),
			},
			{
				point(1172, 2512),
				point(1348, 2526),
				point(1480, 2298),
				point(1164, 2258),
			},
			{
				point(1680, 2514),
				point(1866, 2526),
				point(1984, 2314),
				point(1680, 2256),
			},
			{
				point(2184, 2514),
				point(2382, 2524),
				point(2484, 2340),
				point(2198, 2246),
			},
			{
				point(2696, 2516),
				point(2900, 2524),
				point(2996, 2342),
				point(2710, 2250),
			},
			{
				point(3202, 2516),
				point(3416, 2522),
				point(3508, 2344),
				point(3230, 2250),
			},
			{
				point(3712, 2522),
				point(3938, 2512),
				point(4020, 2346),
				point(3742, 2256),
			},
			{
				point(124, 3034),
				point(358, 3024),
				point(436, 2858),
				point(160, 2776),
			},
			{
				point(632, 3040),
				point(876, 3018),
				point(960, 2840),
				point(672, 2800),
			},
			{
				point(1140, 3040),
				point(1390, 3020),
				point(1464, 2860),
				point(1194, 2782),
			},
			{
				point(1650, 3040),
				point(1906, 3020),
				point(1974, 2862),
				point(1710, 2780),
			},
			{
				point(2162, 3040),
				point(2420, 3020),
				point(2494, 2850),
				point(2220, 2796),
			},
			{
				point(2676, 3038),
				point(2934, 3022),
				point(3000, 2866),
				point(2734, 2780),
			},
			{
				point(3134, 3042),
				point(3444, 3022),
				point(3512, 2872),
				point(3316, 2800),
			},
			{
				point(3650, 3040),
				point(3958, 3022),
				point(4022, 2876),
				point(3832, 2800),
			},
			{
				point(68, 3552),
				point(374, 3534),
				point(398, 3370),
				point(250, 3318),
			},
			{
				point(652, 3550),
				point(884, 3534),
				point(910, 3372),
				point(734, 3314),
			},
			{
				point(1158, 3552),
				point(1396, 3534),
				point(1422, 3372),
				point(1268, 3328),
			},
			{
				point(1664, 3552),
				point(1908, 3534),
				point(1934, 3372),
				point(1770, 3364),
			},
			{
				point(2278, 3380),
				point(2176, 3548),
				point(2420, 3538),
				point(2444, 3372),
			},
			{
				point(2796, 3384),
				point(2680, 3548),
				point(2932, 3538),
				point(2956, 3374),
			},
			{
				point(3308, 3388),
				point(3196, 3544),
				point(3448, 3544),
				point(3448, 3384),
			},
			{
				point(3706, 3544),
				point(3966, 3544),
				point(3948, 3442),
				point(3822, 3388),
			},
			{
				point(130, 4060),
				point(380, 4044),
				point(362, 3954),
				point(236, 3906),
			},
			{
				point(640, 4062),
				point(890, 4044),
				point(874, 3954),
				point(746, 3912),
			},
			{
				point(1150, 4062),
				point(1404, 4044),
				point(1376, 3954),
				point(1238, 3954),
			},
			{
				point(1744, 3960),
				point(1662, 4062),
				point(1916, 4044),
				point(1888, 3954),
			},
			{
				point(2246, 3968),
				point(2192, 4062),
				point(2428, 4042),
				point(2400, 3956),
			},
			{
				point(2746, 3990),
				point(2708, 4054),
				point(2852, 4054),
				point(2920, 3956),
			},
			{
				point(3220, 4052),
				point(3402, 4052),
				point(3330, 3996),
				point(3258, 3992),
			},
			{
				point(3734, 4038),
				point(3786, 4054),
				point(3894, 4044),
				point(3816, 3988),
			},
		},
		'texture_hash', 4390202743967929329,
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "A", "E" ),
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
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 6000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 205, 205),
			point(51, 647, 647),
			point(576, 679, 679),
			point(1000, 700, 700),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 805, 805),
			point(235, 874, 874),
			point(682, 953, 953),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "A", "E" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 343, 343),
			point(140, 554, 554),
			point(498, 163, 163),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "E" ),
		'start_color_min', RGBA(228, 230, 114, 255),
		'start_color_max', RGBA(228, 230, 114, 255),
		'mid_color', RGBA(153, 146, 68, 255),
		'end_color', RGBA(153, 136, 61, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "A", "C", "E" ),
		'spread_angle', 500,
		'vel_min', 100,
		'vel_max', 100,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "C", "E" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke Explosion Base",
		'bins', set( "E" ),
		'time_start', 100,
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 4000,
		'lifetime_max', 4000,
		'position', point(0, 0, 1200),
		'size_min', 3000,
		'size_max', 3000,
		'texture', "Textures/Particles/Explosion_DirImpact_8x8.tga",
		'normalmap', "Textures/Particles/Explosion_DirImpact_8x8.norm.tga",
		'frames', point(8, 8),
		'self_illum', 50,
		'softness', 100,
		'drawing_order', -1,
		'outlines', {
			{
				point(172, 510),
				point(296, 510),
				point(324, 304),
				point(172, 304),
			},
			{
				point(646, 282),
				point(704, 510),
				point(814, 510),
				point(858, 200),
			},
			{
				point(1128, 234),
				point(1214, 498),
				point(1320, 506),
				point(1400, 156),
			},
			{
				point(1616, 188),
				point(1724, 494),
				point(1830, 500),
				point(1934, 130),
			},
			{
				point(2114, 162),
				point(2228, 492),
				point(2346, 502),
				point(2464, 92),
			},
			{
				point(2630, 184),
				point(2738, 496),
				point(2864, 506),
				point(2982, 72),
			},
			{
				point(3132, 170),
				point(3248, 498),
				point(3382, 510),
				point(3496, 70),
			},
			{
				point(3648, 186),
				point(3758, 504),
				point(3898, 510),
				point(4024, 32),
			},
			{
				point(64, 704),
				point(172, 1022),
				point(322, 1022),
				point(446, 526),
			},
			{
				point(576, 708),
				point(680, 1022),
				point(842, 1022),
				point(956, 528),
			},
			{
				point(1084, 700),
				point(1186, 1022),
				point(1364, 1022),
				point(1468, 534),
			},
			{
				point(1590, 690),
				point(1694, 1022),
				point(1878, 1022),
				point(1974, 576),
			},
			{
				point(2100, 688),
				point(2202, 1022),
				point(2392, 1022),
				point(2488, 576),
			},
			{
				point(2610, 684),
				point(2708, 1022),
				point(2908, 1022),
				point(3000, 584),
			},
			{
				point(3120, 684),
				point(3218, 1022),
				point(3426, 1022),
				point(3510, 600),
			},
			{
				point(3632, 686),
				point(3724, 1022),
				point(3942, 1022),
				point(4022, 606),
			},
			{
				point(46, 1202),
				point(138, 1534),
				point(362, 1534),
				point(438, 1122),
			},
			{
				point(558, 1206),
				point(646, 1534),
				point(878, 1534),
				point(950, 1126),
			},
			{
				point(1070, 1208),
				point(1154, 1534),
				point(1394, 1534),
				point(1464, 1136),
			},
			{
				point(1582, 1212),
				point(1664, 1534),
				point(1908, 1534),
				point(1978, 1140),
			},
			{
				point(2094, 1216),
				point(2172, 1534),
				point(2426, 1534),
				point(2488, 1144),
			},
			{
				point(2606, 1220),
				point(2682, 1534),
				point(2940, 1534),
				point(3002, 1144),
			},
			{
				point(3116, 1226),
				point(3192, 1534),
				point(3458, 1534),
				point(3512, 1150),
			},
			{
				point(3630, 1228),
				point(3702, 1534),
				point(3972, 1534),
				point(4024, 1156),
			},
			{
				point(44, 1744),
				point(116, 2046),
				point(392, 2046),
				point(442, 1672),
			},
			{
				point(558, 1748),
				point(624, 2046),
				point(908, 2046),
				point(954, 1682),
			},
			{
				point(1068, 1750),
				point(1134, 2046),
				point(1418, 2046),
				point(1470, 1704),
			},
			{
				point(1578, 1754),
				point(1644, 2046),
				point(1932, 2046),
				point(1988, 1704),
			},
			{
				point(2088, 1762),
				point(2154, 2046),
				point(2444, 2046),
				point(2506, 1702),
			},
			{
				point(2600, 1766),
				point(2664, 2046),
				point(2956, 2046),
				point(3026, 1704),
			},
			{
				point(3112, 1770),
				point(3176, 2046),
				point(3468, 2046),
				point(3546, 1704),
			},
			{
				point(3624, 1774),
				point(3686, 2046),
				point(3984, 2046),
				point(4064, 1704),
			},
			{
				point(38, 2292),
				point(104, 2558),
				point(402, 2558),
				point(486, 2214),
			},
			{
				point(546, 2296),
				point(618, 2558),
				point(914, 2558),
				point(1008, 2216),
			},
			{
				point(1064, 2300),
				point(1122, 2558),
				point(1424, 2558),
				point(1528, 2214),
			},
			{
				point(1576, 2304),
				point(1632, 2558),
				point(1934, 2558),
				point(2046, 2218),
			},
			{
				point(2086, 2308),
				point(2144, 2558),
				point(2448, 2558),
				point(2558, 2222),
			},
			{
				point(2594, 2312),
				point(2660, 2558),
				point(2966, 2558),
				point(3070, 2228),
			},
			{
				point(3100, 2312),
				point(3174, 2558),
				point(3474, 2558),
				point(3582, 2250),
			},
			{
				point(3610, 2316),
				point(3688, 2558),
				point(4058, 2558),
				point(4058, 2258),
			},
			{
				point(24, 2830),
				point(106, 3070),
				point(476, 3070),
				point(476, 2774),
			},
			{
				point(534, 2832),
				point(616, 3070),
				point(988, 3070),
				point(988, 2776),
			},
			{
				point(1046, 2836),
				point(1126, 3070),
				point(1502, 3070),
				point(1502, 2778),
			},
			{
				point(1556, 2838),
				point(1638, 3070),
				point(2014, 3070),
				point(2014, 2782),
			},
			{
				point(2068, 2838),
				point(2148, 3070),
				point(2528, 3070),
				point(2528, 2788),
			},
			{
				point(2582, 2838),
				point(2660, 3070),
				point(3040, 3070),
				point(3040, 2790),
			},
			{
				point(3134, 2836),
				point(3134, 3070),
				point(3514, 3070),
				point(3582, 2794),
			},
			{
				point(3648, 2838),
				point(3648, 3070),
				point(4066, 3070),
				point(4066, 2798),
			},
			{
				point(64, 3350),
				point(64, 3582),
				point(482, 3582),
				point(482, 3316),
			},
			{
				point(578, 3352),
				point(578, 3582),
				point(994, 3582),
				point(994, 3318),
			},
			{
				point(1092, 3354),
				point(1092, 3582),
				point(1506, 3582),
				point(1506, 3320),
			},
			{
				point(1606, 3356),
				point(1606, 3582),
				point(2018, 3582),
				point(2018, 3322),
			},
			{
				point(2120, 3360),
				point(2120, 3582),
				point(2530, 3582),
				point(2530, 3328),
			},
			{
				point(2634, 3362),
				point(2634, 3582),
				point(3042, 3582),
				point(3042, 3336),
			},
			{
				point(3140, 3364),
				point(3150, 3582),
				point(3552, 3582),
				point(3552, 3348),
			},
			{
				point(3680, 3364),
				point(3652, 3582),
				point(4040, 3582),
				point(4072, 3354),
			},
			{
				point(100, 3880),
				point(70, 4094),
				point(406, 4094),
				point(506, 3876),
			},
			{
				point(592, 4094),
				point(916, 4094),
				point(1004, 3886),
				point(614, 3882),
			},
			{
				point(1130, 3950),
				point(1142, 4094),
				point(1440, 4094),
				point(1454, 3880),
			},
			{
				point(1720, 3964),
				point(1646, 4094),
				point(1972, 4094),
				point(1912, 3896),
			},
			{
				point(2222, 3968),
				point(2212, 4094),
				point(2472, 4094),
				point(2374, 3932),
			},
			{
				point(2736, 3980),
				point(2740, 4094),
				point(2978, 4094),
				point(2884, 3948),
			},
			{
				point(3582, 4094),
				point(3582, 4094),
				point(3582, 4094),
				point(3582, 4094),
			},
			{
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
				point(4094, 4094),
			},
		},
		'texture_hash', -9168827604293629089,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "E" ),
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 489, 489),
			point(55, 737, 737),
			point(473, 863, 863),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke Explosion Ground",
		'bins', set( "G" ),
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 100000,
		'lifetime_min', 4000,
		'lifetime_max', 4000,
		'position', point(0, 0, 200),
		'angle', range(-360, 360),
		'size_min', 2000,
		'texture', "Textures/Particles/Explosion_02_7x7.tga",
		'normalmap', "Textures/Particles/Explosion_02_7x7.norm.tga",
		'frames', point(7, 7),
		'softness', 50,
		'drawing_order', 1,
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
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "G" ),
		'start_color_min', RGBA(228, 230, 114, 255),
		'start_color_max', RGBA(228, 230, 114, 255),
		'mid_color', RGBA(153, 146, 68, 255),
		'end_color', RGBA(153, 136, 61, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "G" ),
		'anim_type', "Cycle Once",
		'fps', 26,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(39, 500, 500),
			point(557, 758, 758),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "G" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 331, 331),
			point(137, 589, 589),
			point(537, 195, 195),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "G" ),
		'max_size', 8000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 74, 74),
			point(71, 347, 347),
			point(478, 616, 616),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set( "F", "G" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "chunks",
		'bins', set( "D" ),
		'time_start', 100,
		'time_stop', 1100,
		'world_space', true,
		'emit_detail_level', 100,
		'enabled', false,
		'max_live_count', 100,
		'parts_per_sec', 100000,
		'lifetime_min', 3000,
		'size_min', 40,
		'size_max', 100,
		'texture', "Textures/Particles/debris_chunks_4x4.tga",
		'normalmap', "Textures/Particles/debris_chunks_4x4.norm.tga",
		'frames', point(4, 4),
		'receive_shadow', true,
		'drawing_order', 2,
		'outlines', {
			{
				point(272, 932),
				point(760, 852),
				point(760, 256),
				point(132, 128),
			},
			{
				point(1156, 728),
				point(1880, 872),
				point(2000, 316),
				point(1116, 180),
			},
			{
				point(2128, 384),
				point(2352, 1020),
				point(2952, 604),
				point(2624, 56),
			},
			{
				point(3292, 220),
				point(3356, 884),
				point(3896, 884),
				point(3828, 16),
			},
			{
				point(88, 1232),
				point(160, 2024),
				point(804, 1656),
				point(840, 1148),
			},
			{
				point(1308, 1184),
				point(1288, 1876),
				point(1736, 2004),
				point(1800, 1124),
			},
			{
				point(2192, 1696),
				point(2368, 2044),
				point(3068, 1524),
				point(2420, 1120),
			},
			{
				point(3076, 1516),
				point(3844, 2040),
				point(4060, 1612),
				point(3644, 1196),
			},
			{
				point(248, 2676),
				point(996, 2856),
				point(796, 2244),
				point(72, 2144),
			},
			{
				point(1232, 2836),
				point(1992, 2704),
				point(1732, 2320),
				point(1268, 2072),
			},
			{
				point(2164, 2360),
				point(2164, 2928),
				point(2972, 2636),
				point(2952, 2180),
			},
			{
				point(3228, 2640),
				point(3956, 3032),
				point(4076, 2420),
				point(3076, 2092),
			},
			{
				point(76, 3712),
				point(972, 4068),
				point(784, 3372),
				point(200, 3156),
			},
			{
				point(1268, 3316),
				point(1140, 4084),
				point(1908, 3964),
				point(1568, 3096),
			},
			{
				point(2064, 3516),
				point(2480, 4048),
				point(2952, 4048),
				point(2780, 3092),
			},
			{
				point(3332, 3432),
				point(3252, 4016),
				point(3808, 3856),
				point(4012, 3096),
			},
		},
		'texture_hash', -7170684798002532260,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "D" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "D" ),
		'start_color_min', RGBA(166, 131, 72, 255),
		'start_intensity_min', 1200,
		'start_color_max', RGBA(167, 142, 104, 255),
		'start_intensity_max', 1200,
		'mid_color', RGBA(140, 115, 77, 255),
		'mid_intensity', 1200,
		'end_color', RGBA(141, 117, 53, 255),
		'end_intensity', 1200,
		'type', "One of four",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "D" ),
		'spread_angle', 6000,
		'vel_min', 8000,
		'vel_max', 10000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "D" ),
		'probability', 20,
		'spread_angle_min', 12000,
		'spread_angle', 26000,
		'vel_max', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "D" ),
		'probability', 10,
		'spread_angle', 12000,
		'vel_min', 2000,
		'vel_max', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "D" ),
		'direction', point(0, 0, -1000),
		'acceleration', 30000,
		'max_vel', 90000,
	}, nil, nil),
})


-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Environment",
	id = "Env_DustDevil_Whirlwind",
	presim_time = 3000,
	PlaceObj('ParticleEmitter', {
		'label', "Dust",
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 400,
		'parts_per_sec', 4000,
		'lifetime_min', 4000,
		'lifetime_max', 5000,
		'size_min', 2000,
		'size_max', 3000,
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/clouds_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'receive_shadow', true,
		'softness', 200,
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
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "B", "D", "F", "G" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(172, 139, 109, 255),
		'start_color_max', RGBA(163, 128, 100, 255),
		'mid_color', RGBA(182, 148, 118, 255),
		'end_color', RGBA(170, 138, 112, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 89, 269),
			point(251, 103, 251),
			point(659, 73, 189),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(157, 41, 120),
			point(500, 117, 117),
			point(1000, 120, 120),
		},
		'rpm_curve_range', range(0, 600),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 6000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 937, 937),
			point(333, 486, 486),
			point(659, 491, 491),
			point(1000, 1000, 1000),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 394, 394),
			point(292, 446, 446),
			point(633, 663, 663),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "A", "B", "C", "D" ),
		'inner_radius', 1000,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorTornado', {
		'bins', set( "A", "B", "C", "D" ),
		'centrifugal', -30,
		'max_distance', 3000,
		'friction_by_distance', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(625, 0, 0),
			point(1324, 24000, 24000),
			point(2000, 55429, 55429),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "A", "B", "C", "D" ),
		'vel_min', 2000,
		'vel_max', 4000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Dust_Details",
		'bins', set( "C" ),
		'world_space', true,
		'emit_detail_level', 60,
		'max_live_count', 40,
		'parts_per_sec', 500,
		'lifetime_min', 4000,
		'lifetime_max', 5000,
		'angle', range(0, 360),
		'size_min', 6000,
		'size_max', 6000,
		'texture', "Textures/Particles/Clouds_1024.tga",
		'normalmap', "Textures/Particles/Clouds_1024.norm.tga",
		'frames', point(4, 4),
		'light_softness', 1000,
		'softness', 200,
		'drawing_order', 1,
		'outlines', {
			{
				point(144, 768),
				point(620, 1020),
				point(1020, 288),
				point(284, 12),
			},
			{
				point(1072, 324),
				point(1072, 792),
				point(2008, 964),
				point(1844, 68),
			},
			{
				point(2064, 800),
				point(2912, 944),
				point(2932, 328),
				point(2256, 24),
			},
			{
				point(3300, 936),
				point(4060, 936),
				point(3848, 124),
				point(3088, 124),
			},
			{
				point(88, 1232),
				point(180, 1904),
				point(824, 2032),
				point(824, 1164),
			},
			{
				point(1072, 1480),
				point(1680, 2008),
				point(1900, 1468),
				point(1596, 1192),
			},
			{
				point(2156, 1284),
				point(2156, 2044),
				point(2980, 2044),
				point(2796, 1240),
			},
			{
				point(3140, 1872),
				point(3852, 2028),
				point(3896, 1272),
				point(3140, 1180),
			},
			{
				point(196, 3064),
				point(908, 2828),
				point(972, 2264),
				point(80, 2100),
			},
			{
				point(1228, 2172),
				point(1156, 3044),
				point(1940, 3008),
				point(1940, 2056),
			},
			{
				point(2076, 2180),
				point(2076, 3004),
				point(2948, 3004),
				point(2948, 2180),
			},
			{
				point(3220, 2896),
				point(3972, 3032),
				point(3768, 2228),
				point(3100, 2204),
			},
			{
				point(116, 4004),
				point(884, 3908),
				point(920, 3208),
				point(96, 3208),
			},
			{
				point(1036, 3688),
				point(1960, 3992),
				point(1888, 3216),
				point(1432, 3136),
			},
			{
				point(2068, 3104),
				point(2068, 3908),
				point(3068, 3972),
				point(3068, 3076),
			},
			{
				point(3132, 3936),
				point(4052, 3936),
				point(4052, 3148),
				point(3132, 3148),
			},
		},
		'texture_hash', -3185377314160643337,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "C" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(179, 10, 34),
			point(529, 49, 49),
			point(1000, 67, 67),
		},
		'rpm_curve_range', range(0, 200),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "C" ),
		'start_color_min', RGBA(191, 153, 122, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(247, 74, 246),
			point(700, 46, 211),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Dust_Ground",
		'bins', set( "F" ),
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 5,
		'parts_per_sec', 400,
		'lifetime_min', 2000,
		'angle', range(0, 360),
		'size_min', 6000,
		'size_max', 8000,
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/clouds_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'softness', 100,
		'drawing_order', 1,
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
		'bins', set( "F" ),
		'start_color_min', RGBA(70, 58, 48, 255),
		'start_color_max', RGBA(199, 154, 101, 255),
		'mid_color', RGBA(179, 151, 120, 255),
		'end_color', RGBA(186, 149, 105, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "F" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(240, 107, 446),
			point(629, 97, 337),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "F" ),
		'position2', point(0, 0, 1000),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "F" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(354, 37, 89),
			point(654, 64, 158),
			point(1000, 96, 206),
		},
		'rpm_curve_range', range(0, 200),
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set( "F" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Dust_Ground_Cone",
		'bins', set( "G" ),
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 40,
		'parts_per_sec', 2000,
		'lifetime_min', 2000,
		'angle', range(0, 360),
		'size_min', 6000,
		'size_max', 8000,
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/clouds_2x2.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'softness', 200,
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
		'bins', set( "G" ),
		'start_color_min', RGBA(141, 116, 94, 255),
		'start_color_max', RGBA(207, 164, 125, 255),
		'mid_color', RGBA(179, 151, 120, 255),
		'end_color', RGBA(186, 149, 105, 255),
		'type', "Start color range",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "G" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(255, 65, 183),
			point(640, 70, 240),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "G" ),
		'outer_radius', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "G" ),
		'probability', 40,
		'start_vel', 400,
		'acceleration', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWell', {
		'bins', set( "G" ),
		'position', point(0, 0, 3000),
		'acceleration', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "G" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 689, 689),
			point(296, 867, 867),
			point(625, 1001, 1001),
			point(1000, 669, 669),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "G" ),
		'rotate', true,
	}, nil, nil),
})


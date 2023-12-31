-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Steps",
	id = "SlideDirt",
	presim_time = 100,
	PlaceObj('ParticleEmitter', {
		'label', "dust",
		'time_stop', 1000,
		'world_space', true,
		'emit_detail_level', 100,
		'emit_fade', range(0, 500),
		'max_live_count', 50,
		'parts_per_sec', 2600,
		'lifetime_min', 2400,
		'lifetime_max', 3600,
		'angle', range(0, 360),
		'size_min', 100,
		'size_max', 100,
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
		'start_color_min', RGBA(143, 104, 79, 255),
		'start_intensity_min', 1800,
		'start_color_max', RGBA(143, 104, 79, 255),
		'mid_color', RGBA(143, 104, 79, 255),
		'end_color', RGBA(181, 129, 100, 255),
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
			point(138, 532, 906),
			point(340, 395, 601),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 3600,
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
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 689, 751),
			point(317, 683, 736),
			point(678, 677, 733),
			point(1000, 686, 739),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Chunks",
		'bins', set( "D" ),
		'time_stop', 2000,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 10000,
		'lifetime_min', 2000,
		'lifetime_max', 2000,
		'angle', range(0, 360),
		'size_min', 20,
		'size_max', 80,
		'texture', "Textures/Particles/debris_chunks_4x4.tga",
		'normalmap', "Textures/Particles/debris_chunks_4x4.norm.tga",
		'frames', point(4, 4),
		'light_softness', 0,
		'receive_shadow', true,
		'drawing_order', -3,
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
		'start_color_min', RGBA(145, 135, 127, 255),
		'start_color_max', RGBA(175, 169, 161, 255),
		'mid_color', RGBA(125, 122, 116, 255),
		'end_color', RGBA(147, 132, 111, 255),
		'type', "One of four",
		'middle_pos', 429,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "D" ),
		'time_period', 1000,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(276, -341, 328),
			point(667, -745, 796),
			point(1000, -1200, 1200),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorDissolve', {
		'bins', set( "D" ),
		'start_alpha_test_max', 24,
		'mid_alpha_test', 50,
		'end_alpha_test', 100,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "D" ),
		'direction', point(1000, 0, 200),
		'spread_angle_min', 6000,
		'spread_angle', 9000,
		'vel_min', 6000,
		'vel_max', 8000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "D" ),
		'direction', point(0, 0, -1000),
		'acceleration', 9800,
	}, nil, nil),
})


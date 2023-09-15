-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Water",
	id = "Env_WaterStream",
	ignore_game_object_age = true,
	particles_scale_with_object = true,
	presim_time = 1000,
	rand_start_time = 1000,
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "A", "B", "E" ),
		'direction', point(0, 0, -1000),
		'spread_angle', 500,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "A", "B" ),
		'direction', point(0, 0, -1000),
		'acceleration', 4000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "B" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "A", "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 295, 732),
			point(258, 177, 1000),
			point(637, 86, 416),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "droplets",
		'world_space', true,
		'emit_detail_level', 100,
		'parts_per_sec', 2000,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'size_min', 100,
		'size_max', 100,
		'shader', "Add",
		'texture', "Textures/Particles/BloodSplashesAtmos_2x2.tga",
		'frames', point(2, 2),
		'light_softness', 823,
		'mat_roughness', 90,
		'softness', 20,
		'alpha', range(50, 100),
		'drawing_order', -2,
		'outlines', {
			{
				point(456, 1408),
				point(1496, 1888),
				point(1552, 624),
				point(552, 8),
			},
			{
				point(2320, 296),
				point(2576, 1928),
				point(3488, 1888),
				point(3648, 160),
			},
			{
				point(152, 2176),
				point(152, 3768),
				point(1592, 3768),
				point(1728, 2120),
			},
			{
				point(2432, 2984),
				point(2952, 3992),
				point(3792, 3432),
				point(3104, 2168),
			},
		},
		'texture_hash', -7050120831119995156,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(108, 108, 108, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'position', point(0, 0, -100),
		'inner_radius', 1,
		'outer_radius', 50,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 29, 63),
			point(320, 49, 157),
			point(651, 174, 454),
			point(1000, 343, 731),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 150, 228),
			point(261, 174, 328),
			point(657, 297, 515),
			point(1000, 569, 859),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "stream_Distortion",
		'bins', set( "B" ),
		'world_space', true,
		'emit_detail_level', 100,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'angle', range(-15, 15),
		'size_min', 20,
		'size_max', 50,
		'shader', "Distortion",
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/ThickSmoke_04.norm.tga",
		'frames', point(2, 2),
		'light_softness', 191,
		'mat_metallic', 12,
		'softness', 20,
		'alpha', range(75, 205),
		'distortion_scale', -87,
		'distortion_scale_max', 572,
		'outlines', {
			{
				point(24, 1956),
				point(2044, 1956),
				point(2044, 152),
				point(24, 12),
			},
			{
				point(2052, 2044),
				point(4060, 2044),
				point(3888, 56),
				point(2052, 56),
			},
			{
				point(76, 3700),
				point(1996, 4084),
				point(1936, 2156),
				point(380, 2076),
			},
			{
				point(2104, 4048),
				point(4092, 4048),
				point(4092, 2052),
				point(2544, 2052),
			},
		},
		'texture_hash', -5332959593331549680,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "stream",
		'bins', set( "B" ),
		'world_space', true,
		'emit_detail_level', 100,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'size_min', 20,
		'size_max', 50,
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'mat_roughness', 16,
		'softness', 20,
		'alpha', range(75, 205),
		'drawing_order', 2,
		'outlines', {
			{
				point(24, 1956),
				point(2044, 1956),
				point(2044, 152),
				point(24, 12),
			},
			{
				point(2052, 2044),
				point(4060, 2044),
				point(3888, 56),
				point(2052, 56),
			},
			{
				point(76, 3700),
				point(1996, 4084),
				point(1936, 2156),
				point(380, 2076),
			},
			{
				point(2104, 4048),
				point(4092, 4048),
				point(4092, 2052),
				point(2544, 2052),
			},
		},
		'texture_hash', -5332959593331549680,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(139, 139, 139, 255),
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "B" ),
		'position', point(0, 0, -100),
		'inner_radius', 1,
		'outer_radius', 1,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 2000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 29, 63),
			point(320, 49, 157),
			point(651, 174, 454),
			point(1000, 343, 731),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 150, 228),
			point(261, 174, 328),
			point(657, 297, 515),
			point(1000, 569, 859),
		},
	}, nil, nil),
})


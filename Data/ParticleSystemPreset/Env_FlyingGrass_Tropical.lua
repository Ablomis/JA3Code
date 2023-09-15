-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_FlyingGrass_Tropical",
	PlaceObj('ParticleEmitter', {
		'label', "Grass",
		'time_stop', 2000,
		'time_period', 4000,
		'randomize_period', 80,
		'emit_detail_level', 40,
		'max_live_count', 10,
		'parts_per_sec', 200,
		'lifetime_min', 4000,
		'lifetime_max', 8000,
		'size_min', 500,
		'size_max', 700,
		'texture', "Textures/Particles/Grass_01.tga",
		'normalmap', "Textures/Particles/Grass_01.norm.tga",
		'frames', point(2, 2),
		'softness', 20,
		'outlines', {
			{
				point(704, 1152),
				point(1792, 2016),
				point(992, 736),
				point(32, 32),
			},
			{
				point(2944, 608),
				point(2432, 1568),
				point(3360, 1728),
				point(3616, 32),
			},
			{
				point(320, 3328),
				point(32, 3904),
				point(1696, 2560),
				point(1984, 2080),
			},
			{
				point(2784, 3904),
				point(3136, 3904),
				point(3136, 2176),
				point(2912, 2080),
			},
		},
		'texture_hash', 4104026586008096414,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 300,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 406, 406),
			point(130, 817, 817),
			point(889, 800, 800),
			point(1000, 263, 263),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'probability', 60,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 66, 66),
			point(291, 213, 213),
			point(805, 208, 208),
			point(1000, 100, 100),
		},
		'rpm_curve_range', range(-400, 400),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(122, 142, 52, 255),
		'start_intensity_min', 1600,
		'start_color_max', RGBA(96, 109, 45, 255),
		'start_intensity_max', 1600,
		'type', "Start color range",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle_min', 3000,
		'spread_angle', 8000,
		'vel_min', 400,
		'vel_max', 600,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'probability', 20,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 936, 936),
			point(320, 950, 950),
			point(660, 987, 987),
			point(1000, 1056, 1056),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorTornado', {
		'direction', point(-1000, 0, 0),
		'start_rpm', 1000,
		'mid_rpm', 1000,
		'end_rpm', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'probability', 60,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 1200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('DisplacerSphere', {
		'inner_radius', 400,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'time_stop', 200,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'probability', 60,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 857, 857),
			point(44, 1000, 1000),
			point(928, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


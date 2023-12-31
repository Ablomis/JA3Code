-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_FlyingMoney",
	PlaceObj('ParticleEmitter', {
		'label', "Confetti",
		'time_stop', 2000,
		'time_period', 2000,
		'randomize_period', 80,
		'emit_detail_level', 100,
		'max_live_count', 16,
		'parts_per_sec', 100,
		'lifetime_min', 4000,
		'lifetime_max', 8000,
		'size_min', 18000,
		'size_max', 18000,
		'texture', "Textures/Particles/Money.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'softness', 20,
		'outlines', {
			{
				point(172, 2844),
				point(3920, 2844),
				point(3920, 1248),
				point(172, 1248),
			},
		},
		'texture_hash', -4420870150619008697,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 200,
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
			point(295, 302, 302),
			point(805, 208, 208),
			point(1000, 100, 100),
		},
		'rpm_curve_range', range(-400, 400),
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


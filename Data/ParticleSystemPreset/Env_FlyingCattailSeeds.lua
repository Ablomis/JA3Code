-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_FlyingCattailSeeds",
	PlaceObj('ParticleEmitter', {
		'label', "Cattail Seeds",
		'time_stop', 2000,
		'time_period', 6000,
		'randomize_period', 80,
		'emit_detail_level', 40,
		'max_live_count', 8,
		'parts_per_sec', 200,
		'lifetime_min', 8000,
		'lifetime_max', 12000,
		'size_min', 200,
		'size_max', 400,
		'texture', "Textures/Particles/CattailSeed.tga",
		'normalmap', "Textures/Particles/CattailSeed.norm.tga",
		'softness', 20,
		'outlines', {
			{
				point(16, 160),
				point(416, 3968),
				point(4000, 3968),
				point(4000, 80),
			},
		},
		'texture_hash', -1386481753620475209,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 300,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 502, 502),
			point(134, 823, 823),
			point(755, 817, 817),
			point(1000, 606, 606),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'probability', 40,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 89, 89),
			point(336, 75, 75),
			point(695, 295, 295),
			point(1000, 322, 322),
		},
		'rpm_curve_range', range(-200, 200),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle_min', 3000,
		'spread_angle', 8000,
		'vel_min', 400,
		'vel_max', 1200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 936, 936),
			point(320, 950, 950),
			point(660, 987, 987),
			point(1000, 866, 866),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorTornado', {
		'bins', set(),
		'direction', point(-1000, 0, 0),
		'start_rpm', 1000,
		'mid_rpm', 1000,
		'end_rpm', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'probability', 60,
		'acceleration', 400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('DisplacerSphere', {
		'inner_radius', 400,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'time_stop', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 127, 127),
			point(115, 362, 362),
			point(821, 353, 353),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


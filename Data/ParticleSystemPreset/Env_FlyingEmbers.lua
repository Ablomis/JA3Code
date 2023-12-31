-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_FlyingEmbers",
	PlaceObj('ParticleEmitter', {
		'label', "Embers Tornado",
		'time_stop', 2000,
		'time_period', 4000,
		'randomize_period', 80,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 200,
		'lifetime_min', 4000,
		'lifetime_max', 6000,
		'position', point(0, 0, 500),
		'size_min', 500,
		'size_max', 500,
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'self_illum', 200,
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
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(337, 80, 80),
			point(738, 120, 120),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 63, 63),
			point(275, 91, 91),
			point(620, 457, 457),
			point(1000, 23, 23),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle_min', 3000,
		'spread_angle', 8000,
		'vel_min', 400,
		'vel_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'probability', 20,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 936, 936),
			point(320, 950, 950),
			point(652, 967, 967),
			point(1000, 1025, 1025),
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
		'multiplier', 3000,
	}, nil, nil),
	PlaceObj('DisplacerSphere', {
		'inner_radius', 400,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('DisplacerSurfaceBirth', {
		'time_stop', 200,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
})


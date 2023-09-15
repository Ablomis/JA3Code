-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	distance_bias = 10000,
	group = "Environment",
	id = "Heat_Haze",
	ignore_game_object_age = true,
	presim_time = 1000,
	rand_start_time = 500,
	PlaceObj('ParticleEmitter', {
		'label', "Heat Haze",
		'bins', set( "F" ),
		'emit_detail_level', 40,
		'max_live_count', 500,
		'parts_per_sec', 10000,
		'lifetime_max', 1500,
		'angle', range(0, 360),
		'size_min', 2000,
		'size_max', 3000,
		'shader', "Distortion",
		'texture', "Textures/Particles/white.tga",
		'normal_as_flow_map', true,
		'normalmap', "Textures/Particles/test2.norm.tga",
		'softness', 200,
		'normal_to_distortion', true,
		'distortion_scale', 4,
		'outlines', {},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('Oscillate', {
		'bins', set( "F" ),
		'x_period', 2000,
		'x_strength', range(100, 500),
		'y_period', 2000,
		'y_strength', range(100, 500),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "F" ),
		'spread_angle', 100,
		'vel_min', 200,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'label', "Y width",
		'bins', set( "F" ),
		'position1', point(0, -2000, 0),
		'position2', point(0, 2000, 0),
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'label', "X lenght",
		'bins', set( "F" ),
		'position1', point(-3000, 0, 0),
		'position2', point(3000, 0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "F" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(225, 97, 658),
			point(674, 52, 232),
			point(1000, 0, 0),
		},
	}, nil, nil),
})

-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "UI",
	id = "UI_Falling_Leaves_Night",
	ignore_game_object_age = true,
	particles_scale_with_object = true,
	post_lighting = true,
	presim_time = 10000,
	ui = true,
	PlaceObj('DisplacerLine', {
		'label', "lenght",
		'position2', point(-200000, 0, 0),
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'label', "height",
		'position2', point(0, 1000000, 0),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'time_stop', 2000,
		'time_period', 500,
		'randomize_period', 80,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 26,
		'parts_per_sec', 40,
		'lifetime_min', 20000,
		'lifetime_max', 30000,
		'angle', range(0, 360),
		'size_min', 40000,
		'size_max', 60000,
		'shader', "Premultiplied",
		'texture', "Textures/Particles/leafs_UI.tga",
		'frames', point(3, 3),
		'light_softness', 1000,
		'no_depth_test', true,
		'outlines', {
			{
				point(328, 224),
				point(328, 1361),
				point(1028, 1361),
				point(1028, 148),
			},
			{
				point(1812, 424),
				point(1448, 1340),
				point(2348, 1340),
				point(2726, 272),
			},
			{
				point(3072, 1361),
				point(4092, 1361),
				point(3744, 460),
				point(2756, 416),
			},
			{
				point(4, 2668),
				point(1328, 2668),
				point(1112, 1369),
				point(520, 1369),
			},
			{
				point(1600, 2608),
				point(2724, 2708),
				point(2724, 1908),
				point(1600, 1768),
			},
			{
				point(2734, 2564),
				point(3916, 2564),
				point(3720, 1369),
				point(3120, 1369),
			},
			{
				point(184, 3940),
				point(1328, 3940),
				point(1328, 3232),
				point(100, 3164),
			},
			{
				point(1624, 3888),
				point(2676, 3888),
				point(2676, 3200),
				point(1624, 3200),
			},
			{
				point(2812, 3460),
				point(3296, 3952),
				point(4056, 3648),
				point(3524, 3108),
			},
		},
		'texture_hash', 5851726308050492952,
		'ui', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 497, 497),
			point(44, 1000, 1000),
			point(952, 1000, 1000),
			point(1000, 240, 240),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(303, -193, 245),
			point(666, -321, 379),
			point(1000, -500, 500),
		},
		'rpm_curve_range', range(-500, 500),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(103, 112, 125, 255),
		'start_intensity_min', 1200,
		'start_color_max', RGBA(83, 103, 100, 255),
		'start_intensity_max', 1200,
		'mid_color', RGBA(120, 141, 137, 255),
		'mid_intensity', 1200,
		'end_color', RGBA(119, 137, 140, 255),
		'end_intensity', 1200,
		'type', "One of four",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(264, 0, 0),
			point(679, 0, 0),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('Oscillate', {
		'x_period', 2000,
		'x_strength', range(200, 2000),
		'y_period', 2000,
		'y_strength', range(200, 2000),
		'z_strength', range(0, 0),
	}, nil, nil),
	PlaceObj('Oscillate', {
		'x_period', 3000,
		'x_strength', range(200, 2000),
		'y_period', 3000,
		'y_strength', range(200, 2000),
		'z_strength', range(0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(500, -1000, 0),
		'start_vel', 50000,
		'acceleration', 20000,
		'max_vel', 80000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(1000, 0, 0),
		'start_vel', 50000,
		'acceleration', 20000,
		'max_vel', 80000,
	}, nil, nil),
})


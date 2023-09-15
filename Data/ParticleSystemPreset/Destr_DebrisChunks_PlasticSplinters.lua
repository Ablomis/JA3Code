-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Destruction",
	id = "Destr_DebrisChunks_PlasticSplinters",
	particles_scale_with_object = true,
	presim_time = 100,
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Splinters",
		'bins', set( "A", "B" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 5,
		'parts_per_sec', 100000,
		'lifetime_min', 2000,
		'size_min', 80,
		'size_max', 350,
		'texture', "Textures/Particles/wood_splinters.tga",
		'normalmap', "Textures/Particles/wood_splinters.norm.tga",
		'frames', point(4, 3),
		'mat_metallic', 34,
		'receive_shadow', true,
		'outlines', {
			{
				point(4, 1361),
				point(1020, 1361),
				point(1020, 4),
				point(4, 4),
			},
			{
				point(1028, 1361),
				point(2044, 1361),
				point(2044, 4),
				point(1028, 4),
			},
			{
				point(2052, 1361),
				point(3068, 1361),
				point(3068, 4),
				point(2052, 4),
			},
			{
				point(3076, 1361),
				point(4092, 1361),
				point(4092, 4),
				point(3076, 4),
			},
			{
				point(4, 2726),
				point(1020, 2726),
				point(1020, 1369),
				point(4, 1369),
			},
			{
				point(1028, 2726),
				point(2044, 2726),
				point(2044, 1369),
				point(1028, 1369),
			},
			{
				point(2052, 2726),
				point(3068, 2726),
				point(3068, 1369),
				point(2052, 1369),
			},
			{
				point(3076, 2726),
				point(4092, 2726),
				point(4092, 1369),
				point(3076, 1369),
			},
			{
				point(4, 4092),
				point(1020, 4092),
				point(1020, 2734),
				point(4, 2734),
			},
			{
				point(1028, 4092),
				point(2044, 4092),
				point(2044, 2734),
				point(1028, 2734),
			},
			{
				point(2052, 4092),
				point(3068, 4092),
				point(3068, 2734),
				point(2052, 2734),
			},
			{
				point(3076, 4092),
				point(4092, 4092),
				point(4092, 2734),
				point(3076, 2734),
			},
		},
		'texture_hash', 5626097955630754890,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(106, 141, 115, 255),
		'start_intensity_min', 1200,
		'start_color_max', RGBA(111, 147, 112, 255),
		'start_intensity_max', 1200,
		'mid_color', RGBA(127, 168, 160, 255),
		'mid_intensity', 1200,
		'end_color', RGBA(109, 157, 126, 255),
		'end_intensity', 1200,
		'type', "One of four",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "B" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(185, 176, 1715),
			point(601, 358, 2545),
			point(1000, 509, 3000),
		},
		'rpm_curve_range', range(-90, 3000),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(333, 1000, 1000),
			point(794, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "C" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 1, 1),
			point(226, 1, 1),
			point(482, 1, 1),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(180, 181),
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set(),
		'normal', point(1000, 0, 0),
		'inner_radius', 100,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'label', "upward",
		'vel_max', 10000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(1000, 0, 500),
		'spread_angle', 9000,
		'vel_min', 100,
		'vel_max', 5000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'probability', 50,
		'direction', point(-1000, 0, 1000),
		'spread_angle', 9000,
		'vel_min', 100,
		'vel_max', 5000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'probability', 10,
		'direction', point(1000, 0, 1000),
		'spread_angle_min', 4500,
		'spread_angle', 12000,
		'vel_min', 2000,
		'vel_max', 6000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'probability', 10,
		'direction', point(-1000, 0, 0),
		'spread_angle_min', 4500,
		'spread_angle', 12000,
		'vel_min', 2000,
		'vel_max', 6000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'direction', point(0, 0, -1000),
		'acceleration', 20000,
		'max_vel', 90000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorCollision', {
		'time_start', 200,
		'friction', 200,
		'clearbins', set( "B" ),
		'setbins', set( "C" ),
	}, nil, nil),
})


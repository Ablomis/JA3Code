-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Environment",
	id = "Road_dust",
	ignore_game_object_age = true,
	presim_time = 5000,
	rand_start_time = 2500,
	speed_up = 2000,
	PlaceObj('DisplacerLine', {
		'label', "lenght",
		'bins', set( "C" ),
		'position1', point(-3000, 0, 0),
		'position2', point(3000, 0, 0),
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'label', "width",
		'bins', set( "C" ),
		'position1', point(0, -3000, 0),
		'position2', point(0, 3000, 0),
	}, nil, nil),
	PlaceObj('DisplacerTerrain', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "mist",
		'bins', set( "C" ),
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 50,
		'parts_per_sec', 10000,
		'lifetime_min', 10000,
		'lifetime_max', 20000,
		'angle', range(0, 360),
		'size_min', 500,
		'size_max', 5000,
		'shader', "Add Light",
		'texture', "Textures/Particles/Smoke_Cigarette_Thick.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(2, 2),
		'light_softness', 1000,
		'softness', 100,
		'alpha', range(105, 255),
		'outlines', {
			{
				point(8, 2040),
				point(1992, 2040),
				point(2040, 32),
				point(8, 32),
			},
			{
				point(2056, 120),
				point(2056, 2040),
				point(4072, 2040),
				point(3904, 32),
			},
			{
				point(48, 4032),
				point(1960, 4032),
				point(1928, 2056),
				point(48, 2056),
			},
			{
				point(2136, 4032),
				point(3912, 4032),
				point(4064, 2056),
				point(2136, 2056),
			},
		},
		'texture_hash', -4799164724382020498,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "mist",
		'bins', set( "C" ),
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 50,
		'parts_per_sec', 10000,
		'lifetime_min', 10000,
		'lifetime_max', 20000,
		'angle', range(0, 360),
		'size_min', 500,
		'size_max', 5000,
		'shader', "Add Light",
		'texture', "Textures/Particles/Clouds_1024.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(4, 4),
		'light_softness', 1000,
		'softness', 100,
		'alpha', range(105, 255),
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
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 8000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 384, 384),
			point(232, 389, 480),
			point(599, 389, 563),
			point(1000, 380, 686),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "C" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 6, 6),
			point(360, 9, 9),
			point(675, 13, 13),
			point(1000, 20, 20),
		},
		'rpm_curve_range', range(5, 20),
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "C" ),
		'start_color_min', RGBA(211, 170, 137, 255),
		'start_intensity_min', 1200,
		'start_color_max', RGBA(196, 160, 125, 255),
		'start_intensity_max', 1200,
		'mid_color', RGBA(206, 172, 136, 255),
		'mid_intensity', 1200,
		'end_color', RGBA(247, 201, 161, 255),
		'end_intensity', 1200,
		'type', "InterpolateByCurve",
		'color_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(264, 0, 0),
			point(679, 0, 0),
			point(1000, 2000, 2000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C" ),
		'spread_angle', 18000,
		'vel_min', 50,
		'vel_max', 50,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(196, 40, 148),
			point(524, 42, 122),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "C" ),
		'inner_radius', 1,
		'outer_radius', 3000,
		'distribution', 1,
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'bins', set( "C" ),
		'position1', point(0, -200, 100),
		'position2', point(0, 200, 200),
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "C" ),
		'wind_mode', "windfield_per_particle",
		'friction', 10000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "C" ),
		'probability', 20,
		'wind_mode', "windfield_per_particle",
		'multiplier', 2000,
	}, nil, nil),
})


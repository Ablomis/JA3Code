-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Impact",
	id = "Impact_BulletSpread",
	PlaceObj('ParticleEmitter', {
		'label', "Smoke Animation",
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 100000,
		'lifetime_min', 400,
		'lifetime_max', 2000,
		'texture', "Textures/Particles/clouds_2x2.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'frames', point(2, 2),
		'outlines', {
			{
				point(2, 2046),
				point(2046, 2046),
				point(2046, 2),
				point(2, 2),
			},
			{
				point(2050, 2046),
				point(4094, 2046),
				point(4094, 2),
				point(2050, 2),
			},
			{
				point(2, 4094),
				point(2046, 4094),
				point(2046, 2050),
				point(2, 2050),
			},
			{
				point(2050, 4094),
				point(4094, 4094),
				point(4094, 2050),
				point(2050, 2050),
			},
		},
		'texture_hash', -6207396961789587687,
	}, nil, nil),
	PlaceObj('DisplacerTerrainBirth', {
		'range_min', 400,
		'range_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 96, 96),
			point(255, 502, 502),
			point(638, 847, 847),
			point(1000, 1000, 1000),
		},
		'non_square_size', true,
		'max_size_2', 2000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 162, 162),
			point(42, 166, 166),
			point(102, 511, 511),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 0,
		'vel_min', 600,
		'vel_max', 600,
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'direction', point(0, 1000, 0),
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'inner_radius', 1,
		'outer_radius', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(39, 371, 371),
			point(756, 70, 70),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(223, 174, 147, 255),
		'start_color_max', RGBA(223, 174, 147, 255),
		'mid_color', RGBA(107, 94, 86, 255),
		'end_color', RGBA(67, 63, 61, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'probability', 50,
		'multiplier', 400,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Chunks",
		'bins', set( "B" ),
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 10,
		'parts_per_sec', 100000,
		'lifetime_min', 200,
		'lifetime_max', 800,
		'angle', range(0, 360),
		'texture', "Textures/Particles/ash.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'frames', point(2, 2),
		'outlines', {
			{
				point(224, 160),
				point(192, 1856),
				point(2016, 1792),
				point(1792, 32),
			},
			{
				point(2112, 2016),
				point(3680, 2016),
				point(3488, 224),
				point(2112, 32),
			},
			{
				point(32, 4032),
				point(1888, 3968),
				point(1824, 2208),
				point(192, 2208),
			},
			{
				point(2112, 4064),
				point(4000, 4064),
				point(4000, 2080),
				point(2304, 2080),
			},
		},
		'texture_hash', 2080515186152013236,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "B" ),
		'direction', point(0, 0, -1000),
		'start_vel', 1000,
	}, nil, nil),
	PlaceObj('Emanate', {
		'bins', set( "B" ),
		'copy_rot', false,
		'target_bins', set( "A" ),
	}, nil, nil),
	PlaceObj('DisplacerTerrainBirth', {
		'bins', set( "B" ),
		'range_min', 200,
		'range_max', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 600,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 96, 96),
			point(255, 502, 502),
			point(638, 847, 847),
			point(1000, 1000, 1000),
		},
		'max_size_2', 2000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 162, 162),
			point(42, 166, 166),
			point(102, 511, 511),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 0,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorDissolve', {
		'bins', set( "B" ),
		'mid_alpha_test', 34,
		'end_alpha_test', 100,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(109, 76, 61, 255),
		'start_color_max', RGBA(109, 76, 61, 255),
		'mid_color', RGBA(107, 94, 86, 255),
		'end_color', RGBA(67, 63, 61, 255),
		'type', "Start color range",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "B" ),
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 749, 749),
			point(339, 152, 152),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


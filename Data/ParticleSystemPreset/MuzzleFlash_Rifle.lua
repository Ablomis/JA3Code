-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Shooting",
	id = "MuzzleFlash_Rifle",
	particles_scale_with_object = true,
	speed_up = 800,
	PlaceObj('ParticleEmitter', {
		'label', "Flash",
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 500000,
		'lifetime_min', 200,
		'lifetime_max', 200,
		'position', point(-240, 0, 0),
		'angle', range(-90, -90),
		'size_min', 750,
		'size_max', 1000,
		'shader', "Add",
		'texture', "Textures/Particles/Muzzle_Rifle.tga",
		'self_illum', 200,
		'light_softness', 1000,
		'softness', 10,
		'outlines', {
			{
				point(804, 2072),
				point(1556, 2476),
				point(4092, 2148),
				point(708, 292),
			},
		},
		'texture_hash', -6257134451114506371,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "A", "C" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 882, 882),
			point(318, 624, 624),
			point(702, 210, 210),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 197, 114, 255),
		'start_color_max', RGBA(255, 197, 114, 255),
		'mid_color', RGBA(255, 133, 59, 255),
		'end_color', RGBA(143, 48, 19, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 1400,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 158, 158),
			point(134, 515, 777),
			point(735, 921, 921),
			point(1000, 1000, 1000),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 306, 306),
			point(174, 799, 978),
			point(671, 716, 716),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(355, 857, 949),
			point(690, 702, 830),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'direction', point(-1000, 0, 0),
		'spread_angle', 100,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 925, 925),
			point(179, 922, 922),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Smoke",
		'bins', set( "B" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 60,
		'parts_per_sec', 200000,
		'lifetime_min', 3000,
		'position', point(300, 0, 0),
		'angle', range(0, 360),
		'size_max', 5000,
		'shader', "Add Light",
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/ThickSmoke_04.norm.tga",
		'frames', point(2, 2),
		'softness', 25,
		'alpha', range(20, 255),
		'drawing_order', 10,
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
	PlaceObj('DisplacerCircle', {
		'bins', set( "B" ),
		'position', point(-450, 0, 0),
		'inner_radius', 1,
		'outer_radius', 1,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'bins', set( "B" ),
		'time_period', 1000,
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 0, 0),
			point(227, -79, 84),
			point(612, -153, 174),
			point(1000, -216, 247),
		},
		'rpm_curve_range', range(-500, 500),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(43, 43, 43, 255),
		'start_color_max', RGBA(61, 61, 61, 255),
		'mid_color', RGBA(58, 58, 58, 255),
		'end_color', RGBA(32, 32, 32, 255),
		'type', "One of four",
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 1500,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 89, 89),
			point(98, 140, 314),
			point(569, 454, 774),
			point(1000, 574, 989),
		},
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 53, 53),
			point(46, 253, 253),
			point(603, 458, 458),
			point(1000, 891, 891),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 205, 205),
			point(42, 354, 354),
			point(105, 393, 555),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'direction', point(-1000, 0, 0),
		'spread_angle', 6000,
		'vel_min', 200,
		'vel_max', 6000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 870, 920),
			point(501, 900, 900),
			point(511, 900, 900),
			point(1000, 856, 894),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "B" ),
		'wind_mode', "windfield_per_particle",
		'multiplier', 2000,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Sparks",
		'bins', set( "C" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 60,
		'max_live_count', 10,
		'parts_per_sec', 50000,
		'lifetime_min', 200,
		'lifetime_max', 600,
		'size_min', 50,
		'size_max', 500,
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'self_illum', 200,
		'alpha', range(195, 255),
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
		'bins', set( "C" ),
		'start_color_min', RGBA(250, 211, 137, 255),
		'start_color_max', RGBA(250, 211, 137, 255),
		'mid_color', RGBA(255, 131, 63, 255),
		'mid_intensity', 3582,
		'end_color', RGBA(142, 16, 16, 255),
		'middle_pos', 356,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "C" ),
		'direction', point(0, 0, -1000),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(365, 572, 572),
			point(666, 288, 288),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C" ),
		'direction', point(-1000, 0, 0),
		'spread_angle', 18000,
		'vel_max', 3000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResize', {
		'bins', set( "C" ),
		'start_size_min', 10,
		'start_size_max', 15,
		'end_size', 2,
		'non_square_size', true,
		'start_size2_min', 150,
		'start_size2_max', 250,
		'end_size2', 150,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'bins', set( "D" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 500000,
		'lifetime_min', 200,
		'lifetime_max', 200,
		'angle', range(-20, 20),
		'size_min', 750,
		'size_max', 1000,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'self_illum', 200,
		'light_softness', 1000,
		'softness', 10,
		'view_dependent_opacity', 100,
		'outlines', {
			{
				point(96, 3904),
				point(3904, 3904),
				point(3904, 128),
				point(224, 128),
			},
		},
		'texture_hash', 5044350849439443378,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "A", "D" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 672, 672),
			point(307, 546, 546),
			point(684, 205, 205),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "D" ),
		'start_color_min', RGBA(156, 96, 18, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D" ),
		'max_size', 1500,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 189, 189),
			point(213, 674, 674),
			point(667, 667, 667),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 268, 268),
			point(291, 1000, 1000),
			point(667, 667, 667),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Bullet",
		'bins', set( "E" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 50000,
		'lifetime_min', 200,
		'lifetime_max', 200,
		'size_min', 5000,
		'size_max', 5000,
		'shader', "Add",
		'texture', "Textures/Particles/Bullet.tga",
		'outlines', {
			{
				point(1904, 2080),
				point(1712, 3776),
				point(2384, 3776),
				point(2144, 2016),
			},
		},
		'texture_hash', -487854556171420195,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResize', {
		'bins', set( "E" ),
		'start_size_min', 400,
		'start_size_max', 400,
		'mid_size', 400,
		'end_size', 400,
		'non_square_size', true,
		'start_size2_min', 1000,
		'start_size2_max', 1000,
		'mid_size2', 2000,
		'end_size2', 3000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "E" ),
		'start_color_min', RGBA(254, 165, 61, 255),
		'start_color_max', RGBA(255, 169, 58, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "E" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "E" ),
		'direction', point(-1000, 0, 0),
		'spread_angle', 0,
		'vel_min', 40000,
		'vel_max', 40000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "E" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(317, 873, 873),
			point(464, 79, 79),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "E" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 279, 279),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Shooting",
	id = "MuzzleFlash_Pistol_UpwardFlash",
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 500000,
		'lifetime_min', 200,
		'lifetime_max', 200,
		'size_min', 750,
		'size_max', 1000,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'self_illum', 200,
		'light_softness', 1000,
		'softness', 10,
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
	PlaceObj('ParticleBehaviorResizeCurve', {
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 189, 189),
			point(71, 686, 686),
			point(667, 667, 667),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'max_size_2', 1000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 268, 268),
			point(251, 803, 803),
			point(669, 788, 788),
			point(1000, 759, 759),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 26, 26),
			point(46, 393, 393),
			point(235, 162, 162),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 170, 60, 255),
		'start_color_max', RGBA(255, 170, 60, 255),
		'mid_color', RGBA(255, 107, 17, 255),
		'end_color', RGBA(255, 107, 17, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 528, 528),
			point(268, 384, 384),
			point(648, 197, 197),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 100,
		'vel_min', 2000,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Flash",
		'bins', set( "B" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 500000,
		'lifetime_min', 200,
		'lifetime_max', 200,
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
		'bins', set( "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 882, 882),
			point(318, 624, 624),
			point(702, 210, 210),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(255, 197, 114, 255),
		'start_color_max', RGBA(255, 197, 114, 255),
		'mid_color', RGBA(255, 124, 59, 255),
		'end_color', RGBA(255, 76, 21, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 620, 1000),
			point(344, 511, 773),
			point(674, 288, 559),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 100,
		'vel_min', 2000,
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 891, 891),
			point(173, 909, 909),
			point(667, 900, 900),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "B" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 800,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 158, 158),
			point(112, 397, 581),
			point(745, 498, 498),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 468, 468),
			point(156, 777, 908),
			point(686, 153, 153),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Sparks",
		'bins', set( "F" ),
		'time_stop', 100,
		'world_space', true,
		'emit_detail_level', 60,
		'max_live_count', 10,
		'parts_per_sec', 50000,
		'lifetime_min', 50,
		'lifetime_max', 400,
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
		'bins', set( "F" ),
		'start_color_min', RGBA(255, 185, 86, 255),
		'start_color_max', RGBA(255, 185, 86, 255),
		'mid_color', RGBA(255, 131, 63, 255),
		'mid_intensity', 3582,
		'type', "Interpolate through mid",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "F" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 262, 262),
			point(42, 524, 524),
			point(502, 637, 637),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "F" ),
		'spread_angle', 18000,
		'vel_max', 3000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "F" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResize', {
		'bins', set( "F" ),
		'start_size_min', 10,
		'start_size_max', 15,
		'end_size', 2,
		'non_square_size', true,
		'start_size2_min', 100,
		'start_size2_max', 100,
		'mid_size2', 400,
		'end_size2', 20,
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "F" ),
		'position', point(-100, 0, 0),
		'normal', point(1000, 0, 0),
		'inner_radius', 10,
		'outer_radius', 20,
	}, nil, nil),
})

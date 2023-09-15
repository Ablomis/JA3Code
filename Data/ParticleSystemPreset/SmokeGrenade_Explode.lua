-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Grenade_Smoke",
	id = "SmokeGrenade_Explode",
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'time_stop', 100,
		'emit_detail_level', 60,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 200,
		'lifetime_max', 200,
		'angle', range(0, 360),
		'size_min', 400,
		'size_max', 600,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'far_softness', 100,
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
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(41, 559, 559),
			point(752, 175, 175),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(8, 441, 441),
			point(630, 114, 114),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(250, 158, 51, 255),
		'start_color_max', RGBA(250, 149, 51, 255),
		'mid_color', RGBA(255, 65, 0, 255),
		'end_color', RGBA(151, 25, 0, 255),
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 2000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(20, 485, 485),
			point(541, 738, 738),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Sparks Shrapnel",
		'bins', set( "B" ),
		'time_stop', 200,
		'randomize_period', 100,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 1000,
		'parts_per_sec', 4000,
		'lifetime_min', 200,
		'lifetime_max', 400,
		'size_min', 500,
		'size_max', 500,
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'normalmap', "Textures/Particles/blank.norm.tga",
		'self_illum', 200,
		'drawing_order', 4,
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
		'bins', set( "B" ),
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
		'bins', set( "B" ),
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
		'bins', set( "B" ),
		'max_size', 800,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(347, 52, 52),
			point(746, 74, 74),
			point(1000, 0, 0),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 63, 63),
			point(275, 91, 91),
			point(622, 450, 450),
			point(1000, 23, 23),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 245, 245),
			point(141, 987, 987),
			point(612, 507, 507),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 24000,
		'vel_min', 12000,
		'vel_max', 16000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 755, 755),
			point(326, 909, 909),
			point(654, 907, 907),
			point(1000, 912, 912),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Distortion",
		'bins', set( "C" ),
		'time_start', 50,
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 20000,
		'lifetime_min', 350,
		'lifetime_max', 350,
		'angle', range(0, 360),
		'size_min', 1500,
		'size_max', 3000,
		'shader', "Distortion",
		'texture', "Textures/Particles/ripple_1024.tga",
		'normalmap', "Textures/Particles/cloudy.norm.tga",
		'light_softness', 1000,
		'mat_roughness', 26,
		'softness', 100,
		'normal_to_distortion', true,
		'distortion_scale', -116,
		'distortion_scale_max', 503,
		'drawing_order', -5,
		'depth_offset', -1000,
		'outlines', {},
		'texture_hash', 2453457761379002527,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 768, 768),
			point(108, 258, 258),
			point(641, 100, 100),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(60, 321, 321),
			point(688, 600, 600),
			point(1000, 721, 721),
		},
	}, nil, nil),
})


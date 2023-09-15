-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Grenade_Molotov_Cocktail",
	id = "Molotov_Fire_1x1_Smoldering",
	presim_time = 1000,
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Fire Ring",
		'randomize_period', 50,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 3500,
		'lifetime_min', 1200,
		'lifetime_max', 1400,
		'angle', range(0, 360),
		'shader', "Add",
		'texture', "Textures/Particles/fire2x2.tga",
		'frames', point(2, 2),
		'self_illum', 30,
		'softness', 60,
		'outlines', {
			{
				point(544, 2016),
				point(1488, 2016),
				point(1680, 8),
				point(544, 8),
			},
			{
				point(2600, 1960),
				point(4080, 1960),
				point(4080, 8),
				point(2144, 8),
			},
			{
				point(88, 3984),
				point(2040, 3984),
				point(2040, 2112),
				point(88, 2112),
			},
			{
				point(2056, 2112),
				point(2056, 4088),
				point(4088, 4088),
				point(4088, 2112),
			},
		},
		'texture_hash', 7496109197729400096,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'probability', 80,
		'multiplier', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'probability', 40,
		'start_vel', 200,
		'acceleration', 2000,
		'max_vel', 400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 96, 96),
			point(298, 665, 665),
			point(778, 434, 434),
			point(1000, 267, 267),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(294, 795, 795),
			point(565, 563, 563),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 3000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 266, 266),
			point(344, 297, 297),
			point(657, 397, 397),
			point(1000, 511, 511),
		},
		'non_square_size', true,
		'max_size_2', 2000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(395, 310, 310),
			point(764, 489, 489),
			point(1000, 725, 725),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 865, 865),
			point(352, 899, 899),
			point(663, 988, 988),
			point(1000, 900, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('DisplacerCircle', {
		'inner_radius', 100,
		'outer_radius', 600,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(167, 73, 4, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(167, 73, 4, 255),
		'start_intensity_max', 3000,
		'mid_color', RGBA(255, 143, 44, 255),
		'mid_intensity', 2000,
		'end_color', RGBA(60, 23, 0, 255),
		'end_intensity', 2000,
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Small Embers",
		'bins', set( "B" ),
		'world_space', true,
		'emit_detail_level', 40,
		'max_live_count', 100,
		'parts_per_sec', 100,
		'lifetime_min', 2000,
		'lifetime_max', 4000,
		'size_min', 20,
		'size_max', 40,
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'self_illum', 100,
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
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "B" ),
		'probability', 60,
		'multiplier', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(325, 846, 846),
			point(755, 543, 543),
			point(1000, 267, 267),
		},
	}, nil, nil),
	PlaceObj('Oscillate', {
		'bins', set( "B" ),
		'size_scale', 2,
		'alpha_scale', 2,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 6000,
		'vel_min', 200,
		'vel_max', 2500,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(250, 158, 51, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(250, 158, 51, 255),
		'start_intensity_max', 2000,
		'mid_color', RGBA(241, 114, 45, 255),
		'end_color', RGBA(233, 84, 39, 255),
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(360, 914, 914),
			point(696, 651, 651),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Heat Haze",
		'bins', set( "C" ),
		'world_space', true,
		'emit_detail_level', 40,
		'enabled', false,
		'max_live_count', 14,
		'parts_per_sec', 200,
		'lifetime_max', 2000,
		'position', point(0, 0, 600),
		'angle', range(0, 360),
		'size_min', 2000,
		'shader', "Distortion",
		'texture', "Textures/Particles/white.tga",
		'normal_as_flow_map', true,
		'normalmap', "Textures/Particles/test2.norm.tga",
		'softness', 200,
		'alpha', range(175, 255),
		'normal_to_distortion', true,
		'distortion_mode', "Ping-Pong",
		'distortion_scale', 3,
		'distortion_scale_max', 10,
		'drawing_order', -3,
		'outlines', {},
		'texture_hash', 2617278910886611064,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "C" ),
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 326, 326),
			point(291, 380, 965),
			point(642, 376, 900),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 2000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 367, 367),
			point(313, 620, 620),
			point(669, 847, 847),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'bins', set( "D" ),
		'emit_detail_level', 60,
		'max_live_count', 10,
		'parts_per_sec', 200,
		'lifetime_min', 1200,
		'lifetime_max', 1400,
		'position', point(0, 0, 100),
		'shader', "Add",
		'texture', "Textures/Particles/white.tga",
		'softness', 100,
		'far_softness', 40,
		'near_softness', 300,
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
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "D" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(275, 306, 306),
			point(809, 140, 140),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "D" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(245, 755, 755),
			point(739, 445, 445),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "D" ),
		'start_color_min', RGBA(250, 158, 51, 255),
		'start_color_max', RGBA(250, 149, 51, 255),
		'mid_color', RGBA(255, 65, 0, 255),
		'end_color', RGBA(151, 25, 0, 255),
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "D" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D" ),
		'max_size', 2800,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(312, 502, 502),
			point(670, 821, 821),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
})

-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_SmokeChimney_Red",
	presim_time = 1000,
	PlaceObj('ParticleEmitter', {
		'label', "Smoke",
		'emit_detail_level', 60,
		'max_live_count', 50,
		'parts_per_sec', 600,
		'lifetime_min', 7000,
		'lifetime_max', 8000,
		'angle', range(0, 360),
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/mist.norm.tga",
		'frames', point(2, 2),
		'receive_shadow', true,
		'softness', 60,
		'alpha', range(0, 255),
		'sort', false,
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
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "A", "B" ),
		'spread_angle', 1000,
		'vel_min', 600,
		'vel_max', 1200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 176, 176),
			point(218, 457, 457),
			point(687, 190, 190),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, -3, -3),
			point(331, 10, 10),
			point(607, 12, 12),
			point(1000, 0, 0),
		},
		'rpm_curve_range', range(-100, 100),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 158, 158),
			point(208, 339, 339),
			point(730, 425, 425),
			point(1000, 507, 507),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(118, 52, 47, 255),
		'start_color_max', RGBA(118, 30, 23, 255),
		'mid_color', RGBA(89, 39, 35, 255),
		'end_color', RGBA(179, 114, 107, 255),
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'time_start', 4000,
		'time_stop', 8000,
		'time_period', 10000,
		'direction', point(-1000, 0, 0),
		'acceleration', 200,
		'max_vel', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'time_start', 8000,
		'time_stop', 12000,
		'time_period', 13000,
		'direction', point(1000, 1000, 0),
		'acceleration', 100,
		'max_vel', 4000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'multiplier', 600,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Heat Haze",
		'bins', set( "B" ),
		'world_space', true,
		'emit_detail_level', 40,
		'max_live_count', 14,
		'parts_per_sec', 700,
		'lifetime_max', 2000,
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
		'bins', set( "B" ),
		'vel_max', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(253, 112, 678),
			point(645, 232, 736),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 2000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 121, 121),
			point(320, 532, 532),
			point(669, 847, 847),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Fire",
		'bins', set( "C" ),
		'randomize_period', 50,
		'world_space', true,
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 2500,
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
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "C" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 104, 104),
			point(298, 665, 665),
			point(778, 434, 434),
			point(1000, 267, 267),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWell', {
		'bins', set( "C" ),
		'position', point(0, 0, 1000),
		'acceleration', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "C" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 600, 600),
			point(342, 943, 943),
			point(640, 1049, 1049),
			point(1000, 669, 669),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "C" ),
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 149, 149),
			point(418, 348, 348),
			point(745, 181, 181),
			point(1000, 104, 104),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 240, 240),
			point(327, 489, 489),
			point(665, 910, 910),
			point(1000, 701, 701),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "C" ),
		'inner_radius', 1,
		'outer_radius', 160,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "C" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(274, 995, 995),
			point(494, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "C" ),
		'probability', 40,
		'start_vel', 400,
		'acceleration', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "C" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "C" ),
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
	PlaceObj('Oscillate', {
		'bins', set( "C" ),
		'x_strength', range(0, 0),
		'y_strength', range(0, 0),
		'z_strength', range(0, 0),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Small Embers",
		'bins', set( "D" ),
		'world_space', true,
		'emit_detail_level', 40,
		'max_live_count', 100,
		'parts_per_sec', 400,
		'lifetime_min', 2000,
		'lifetime_max', 10000,
		'size_min', 20,
		'size_max', 30,
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
	PlaceObj('DisplacerCircle', {
		'bins', set( "D" ),
		'inner_radius', 1,
		'outer_radius', 400,
	}, nil, nil),
	PlaceObj('ParticleBehaviorWind', {
		'bins', set( "D" ),
		'multiplier', 600,
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "D" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(302, 900, 900),
			point(755, 543, 543),
			point(1000, 267, 267),
		},
	}, nil, nil),
	PlaceObj('Oscillate', {
		'bins', set( "D" ),
		'x_strength', range(0, 0),
		'y_strength', range(0, 0),
		'z_strength', range(0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorTornado', {
		'bins', set( "D" ),
		'probability', 60,
		'start_rpm', 0,
		'mid_rpm', 600,
		'end_rpm', 300,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "D" ),
		'vel_min', 200,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "D" ),
		'start_color_min', RGBA(250, 158, 51, 255),
		'start_intensity_min', 2000,
		'start_color_max', RGBA(250, 158, 51, 255),
		'start_intensity_max', 2000,
		'mid_color', RGBA(241, 114, 45, 255),
		'end_color', RGBA(233, 84, 39, 255),
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "D" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(360, 914, 914),
			point(696, 651, 651),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


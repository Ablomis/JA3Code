-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "AmbientLife",
	id = "anim_Pee",
	ignore_game_object_age = true,
	particles_scale_with_object = true,
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Puddle",
		'bins', set( "D" ),
		'time_start', 200,
		'time_stop', 300,
		'world_space', true,
		'emit_detail_level', 60,
		'max_live_count', 8,
		'parts_per_sec', 10000,
		'lifetime_min', 20000,
		'lifetime_max', 20000,
		'angle', range(0, 360),
		'size_max', 1000,
		'geometry_building', "Decal",
		'decal_depth', 200,
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/ThickSmoke_04.norm.tga",
		'frames', point(2, 2),
		'mat_roughness', 10,
		'mat_metallic', 76,
		'receive_shadow', true,
		'alpha', range(195, 255),
		'drawing_order', 2,
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
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "D" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(26, 196, 196),
			point(423, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D" ),
		'max_size', 1400,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(71, 331, 331),
			point(228, 537, 537),
			point(1000, 577, 577),
		},
	}, nil, nil),
	PlaceObj('DisplacerCircle', {
		'bins', set( "D" ),
		'position', point(400, 0, 0),
		'inner_radius', 100,
		'outer_radius', 200,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "D" ),
		'start_color_min', RGBA(176, 166, 17, 255),
		'start_color_max', RGBA(176, 166, 17, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('FaceTerrain', {
		'bins', set( "D" ),
	}, nil, nil),
	PlaceObj('DisplacerTerrain', {
		'bins', set( "D" ),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "stream_Distortion",
		'bins', set( "H" ),
		'time_start', 1000,
		'time_stop', 10000,
		'world_space', true,
		'emit_detail_level', 100,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'position', point(0, -20, 20),
		'angle', range(-15, 15),
		'size_min', 20,
		'size_max', 50,
		'shader', "Distortion",
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/ThickSmoke_04.norm.tga",
		'frames', point(2, 2),
		'light_softness', 191,
		'mat_metallic', 12,
		'softness', 20,
		'alpha', range(75, 205),
		'distortion_scale', -87,
		'distortion_scale_max', 572,
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
	PlaceObj('ParticleEmitter', {
		'label', "stream",
		'bins', set( "H" ),
		'time_start', 1000,
		'time_stop', 10000,
		'world_space', true,
		'emit_detail_level', 100,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'position', point(0, -20, 20),
		'size_min', 20,
		'size_max', 50,
		'texture', "Textures/Particles/ThickSmoke_04.tga",
		'normalmap', "Textures/Particles/ThickSmoke_04.norm.tga",
		'frames', point(2, 2),
		'self_illum', 34,
		'light_softness', 1000,
		'mat_roughness', 16,
		'receive_shadow', true,
		'softness', 20,
		'alpha', range(75, 205),
		'drawing_order', 2,
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
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "H" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "H" ),
		'start_color_min', RGBA(176, 166, 17, 255),
		'start_color_max', RGBA(176, 166, 17, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "H" ),
		'time_stop', 9000,
		'direction', point(1000, 0, -200),
		'spread_angle', 100,
		'vel_min', 600,
		'vel_max', 800,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "H" ),
		'time_start', 8000,
		'probability', 80,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 915, 1024),
			point(318, 919, 1036),
			point(686, 902, 1056),
			point(1000, 905, 1053),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "H" ),
		'time_start', 9000,
		'probability', 20,
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 810, 897),
			point(333, 804, 900),
			point(671, 804, 891),
			point(1000, 810, 900),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "H" ),
		'direction', point(0, 0, -1000),
		'acceleration', 4000,
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "H" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 521, 732),
			point(224, 673, 925),
			point(656, 302, 534),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 200,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 29, 63),
			point(320, 49, 157),
			point(651, 174, 454),
			point(1000, 343, 731),
		},
		'non_square_size', true,
		'max_size_2', 800,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 150, 228),
			point(261, 174, 328),
			point(657, 297, 515),
			point(1000, 569, 859),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'time_start', 10000,
		'max_size', 100,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 29, 63),
			point(320, 49, 157),
			point(651, 174, 454),
			point(1000, 343, 731),
		},
		'non_square_size', true,
		'max_size_2', 400,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 150, 228),
			point(261, 174, 328),
			point(657, 297, 515),
			point(1000, 569, 859),
		},
	}, nil, nil),
})

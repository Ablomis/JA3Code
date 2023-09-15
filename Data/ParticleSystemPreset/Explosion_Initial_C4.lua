-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	distance_bias = -20000,
	game_time_animated = true,
	group = "Explosive_C4",
	id = "Explosion_Initial_C4",
	particles_scale_with_object = true,
	speed_up = 800,
	PlaceObj('ParticleEmitter', {
		'label', "distortion",
		'bins', set( "H" ),
		'time_start', 200,
		'time_stop', 300,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 20000,
		'lifetime_min', 350,
		'lifetime_max', 450,
		'angle', range(0, 360),
		'size_min', 1500,
		'size_max', 3000,
		'shader', "Distortion",
		'texture', "Textures/Particles/shockwave_1024.tga",
		'normalmap', "Textures/Particles/shockwave_1024.norm.tga",
		'light_softness', 1000,
		'mat_roughness', 26,
		'softness', 100,
		'normal_to_distortion', true,
		'distortion_scale', -75,
		'distortion_scale_max', 87,
		'drawing_order', -5,
		'depth_offset', -1000,
		'outlines', {},
		'texture_hash', -3575605256292869222,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "H" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(145, 286, 522),
			point(594, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "H" ),
		'max_size', 6000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(77, 411, 411),
			point(605, 821, 821),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "distortion",
		'bins', set( "G" ),
		'time_start', 200,
		'time_stop', 300,
		'emit_detail_level', 100,
		'max_live_count', 3,
		'parts_per_sec', 20000,
		'lifetime_min', 450,
		'lifetime_max', 600,
		'position', point(0, 0, 200),
		'angle', range(0, 360),
		'size_min', 1500,
		'size_max', 3000,
		'shader', "Distortion",
		'texture', "Textures/Particles/shockwave_1024.tga",
		'normalmap', "Textures/Particles/shockwave_1024.norm.tga",
		'light_softness', 1000,
		'mat_roughness', 26,
		'softness', 100,
		'normal_to_distortion', true,
		'distortion_scale', -10,
		'distortion_scale_max', 10,
		'drawing_order', 10,
		'depth_offset', -1000,
		'outlines', {},
		'texture_hash', -3575605256292869222,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "G" ),
		'max_size', 6000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(77, 411, 411),
			point(605, 821, 821),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "G" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "G" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'bins', set( "D" ),
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 2000,
		'lifetime_max', 2000,
		'position', point(0, 0, 500),
		'angle', range(-360, 360),
		'size_min', 3000,
		'size_max', 3000,
		'texture', "Textures/Particles/bang_2x3.tga",
		'frames', point(2, 3),
		'self_illum', 200,
		'softness', 100,
		'drawing_order', -10,
		'depth_offset', -1000,
		'outlines', {
			{
				point(754, 860),
				point(1292, 860),
				point(1292, 502),
				point(754, 502),
			},
			{
				point(2226, 1122),
				point(3648, 1098),
				point(4076, 360),
				point(2226, 44),
			},
			{
				point(2, 1412),
				point(110, 2728),
				point(2046, 2728),
				point(2046, 1378),
			},
			{
				point(2048, 2728),
				point(4094, 2728),
				point(4094, 1364),
				point(2048, 1364),
			},
			{
				point(0, 4094),
				point(2046, 4094),
				point(2046, 2730),
				point(0, 2730),
			},
			{
				point(2048, 4094),
				point(4094, 4094),
				point(4094, 2730),
				point(2048, 2730),
			},
		},
		'texture_hash', -3272554351763170346,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'bins', set( "E" ),
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 2000,
		'lifetime_max', 2000,
		'position', point(0, 0, 250),
		'angle', range(-360, 360),
		'size_min', 3000,
		'size_max', 3000,
		'texture', "Textures/Particles/bang_2x3.tga",
		'frames', point(2, 3),
		'self_illum', 200,
		'softness', 100,
		'drawing_order', -10,
		'depth_offset', -1000,
		'outlines', {
			{
				point(754, 860),
				point(1292, 860),
				point(1292, 502),
				point(754, 502),
			},
			{
				point(2226, 1122),
				point(3648, 1098),
				point(4076, 360),
				point(2226, 44),
			},
			{
				point(2, 1412),
				point(110, 2728),
				point(2046, 2728),
				point(2046, 1378),
			},
			{
				point(2048, 2728),
				point(4094, 2728),
				point(4094, 1364),
				point(2048, 1364),
			},
			{
				point(0, 4094),
				point(2046, 4094),
				point(2046, 2730),
				point(0, 2730),
			},
			{
				point(2048, 4094),
				point(4094, 4094),
				point(4094, 2730),
				point(2048, 2730),
			},
		},
		'texture_hash', -3272554351763170346,
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "E" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'bins', set( "D", "E" ),
		'anim_type', "Cycle Once",
		'fps', 16,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 44, 44),
			point(277, 222, 222),
			point(744, 695, 695),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "D", "E" ),
		'max_size', 6000,
		'max_time', 3000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 217, 217),
			point(183, 586, 586),
			point(509, 842, 842),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "D", "E" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(134, 714, 714),
			point(229, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set( "D", "E" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(77, 877, 877),
			point(161, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


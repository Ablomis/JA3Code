-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	distance_bias = -35000,
	game_time_animated = true,
	group = "Explosion_CommonFX",
	id = "Explosion_InitialBang",
	particles_scale_with_object = true,
	presim_time = 100,
	speed_up = 800,
	PlaceObj('ParticleEmitter', {
		'bins', set( "D" ),
		'time_start', 100,
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 3000,
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
		'time_start', 100,
		'time_stop', 200,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 3000,
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
	PlaceObj('ParticleBehaviorEmissive', {
		'bins', set(),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(57, 0, 0),
			point(609, 0, 0),
			point(1000, 0, 0),
		},
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
		'max_size', 12000,
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
			point(0, 276, 276),
			point(95, 232, 232),
			point(229, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


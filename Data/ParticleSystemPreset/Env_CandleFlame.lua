-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Environment",
	id = "Env_CandleFlame",
	PlaceObj('ParticleEmitter', {
		'label', "CandleFlame",
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 0,
		'lifetime_max', 0,
		'size_min', 200,
		'size_max', 200,
		'shader', "Add",
		'texture', "Textures/Particles/CandleFlame.tga",
		'frames', point(2, 2),
		'outlines', {
			{
				point(496, 2032),
				point(1552, 2032),
				point(1344, 16),
				point(656, 16),
			},
			{
				point(2528, 2032),
				point(3664, 2032),
				point(3424, 16),
				point(2704, 16),
			},
			{
				point(480, 4080),
				point(1728, 4080),
				point(1344, 2064),
				point(608, 2064),
			},
			{
				point(2528, 4080),
				point(3792, 4080),
				point(3328, 2064),
				point(2608, 2064),
			},
		},
		'texture_hash', 5052636184448090697,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set(),
		'anim_type', "Cycle",
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 200,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 724, 724),
			point(381, 729, 729),
			point(749, 729, 729),
			point(1000, 751, 751),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 652, 652),
			point(294, 656, 656),
			point(687, 701, 701),
			point(1000, 787, 787),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorAnimate', {
		'fps', 14,
		'sequence_time_remap', {
			range_y = 10,
			scale = 1000,
			point(0, 23, 23),
			point(371, 321, 321),
			point(701, 643, 643),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 581, 581),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 566, 566),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 205, 157, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Halo",
		'bins', set( "B" ),
		'time_stop', 100,
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 100000,
		'lifetime_min', 0,
		'lifetime_max', 0,
		'position', point(0, 0, 20),
		'size_min', 400,
		'size_max', 400,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
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
		'bins', set( "B" ),
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 389, 389),
			point(333, 0, 0),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "B" ),
		'start_color_min', RGBA(255, 171, 96, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 113, 113),
			point(333, 1000, 1000),
			point(667, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
})

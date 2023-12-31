-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Grenade_Detonator",
	id = "Detonator_Activated",
	particles_scale_with_object = true,
	presim_time = 1000,
	rand_start_time = 2000,
	PlaceObj('ParticleEmitter', {
		'label', "Blinking Light",
		'emit_detail_level', 60,
		'max_live_count', 1,
		'parts_per_sec', 100000,
		'parts_per_meter', 100000,
		'lifetime_min', 400,
		'lifetime_max', 400,
		'size_min', 2000,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'softness', 100,
		'far_softness', 10,
		'near_softness', 300,
		'alpha', range(180, 180),
		'drawing_order', 1,
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
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(58, 555, 555),
			point(745, 319, 319),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 400,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(26, 459, 459),
			point(548, 764, 764),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(36, 1000, 1000),
			point(666, 541, 541),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B" ),
		'start_color_min', RGBA(255, 0, 0, 255),
		'start_color_max', RGBA(255, 0, 0, 255),
		'type', "Start color only",
		'middle_pos', 20,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Small Lamp",
		'bins', set( "B" ),
		'emit_detail_level', 60,
		'max_live_count', 1,
		'parts_per_sec', 100000,
		'parts_per_meter', 100000,
		'lifetime_max', 1000,
		'size_min', 40,
		'size_max', 40,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'softness', 100,
		'far_softness', 10,
		'near_softness', 300,
		'alpha', range(180, 180),
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
			point(0, 721, 721),
			point(256, 725, 725),
			point(764, 729, 729),
			point(1000, 725, 725),
		},
	}, nil, nil),
})


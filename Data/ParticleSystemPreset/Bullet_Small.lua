-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Shooting",
	id = "Bullet_Small",
	PlaceObj('ParticleEmitter', {
		'label', "Bullet",
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 50000,
		'lifetime_min', 0,
		'lifetime_max', 0,
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
		'start_size_min', 400,
		'start_size_max', 400,
		'mid_size', 400,
		'end_size', 400,
		'non_square_size', true,
		'start_size2_min', 3000,
		'start_size2_max', 3000,
		'mid_size2', 1000,
		'end_size2', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(254, 165, 61, 255),
		'start_color_max', RGBA(255, 169, 58, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('FaceAlongMovement', nil, nil, nil),
	PlaceObj('ParticleBehaviorEmissive', {
		'emissive_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 489, 489),
			point(290, 157, 157),
			point(667, 0, 0),
			point(1000, 0, 0),
		},
	}, nil, nil),
})


-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	game_time_animated = true,
	group = "Environment",
	id = "Env_LampGlow",
	presim_time = 1000,
	PlaceObj('ParticleEmitter', {
		'label', "Glowing Smoke",
		'emit_detail_level', 60,
		'max_live_count', 10,
		'parts_per_sec', 200,
		'lifetime_min', 8000,
		'lifetime_max', 12000,
		'angle', range(0, 360),
		'size_max', 1000,
		'shader', "Add",
		'texture', "Textures/Particles/mist.tga",
		'frames', point(2, 2),
		'softness', 100,
		'outlines', {
			{
				point(32, 32),
				point(32, 2016),
				point(2016, 2016),
				point(2016, 32),
			},
			{
				point(2080, 2016),
				point(3968, 2016),
				point(4064, 32),
				point(2080, 32),
			},
			{
				point(32, 4032),
				point(2016, 4032),
				point(2016, 2080),
				point(32, 2080),
			},
			{
				point(2080, 4032),
				point(4064, 4032),
				point(4064, 2080),
				point(2080, 2080),
			},
		},
		'texture_hash', 6609993512092536490,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(254, 222, 178, 255),
		'start_color_max', RGBA(254, 222, 178, 255),
		'mid_color', RGBA(254, 180, 126, 255),
		'end_color', RGBA(254, 140, 101, 255),
		'type', "Interpolate through mid",
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 4000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 192, 192),
			point(412, 419, 419),
			point(765, 729, 729),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', nil, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(287, 26, 26),
			point(594, 13, 13),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorRotate', {
		'rpm_curve', {
			range_y = 10,
			scale = 10,
			point(0, 22, 22),
			point(366, 14, 14),
			point(613, 9, 9),
			point(1000, 3, 3),
		},
		'rpm_curve_range', range(-100, 100),
	}, nil, nil),
})


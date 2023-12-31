-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Water",
	id = "Splashes_Raindrop_Dyn",
	ignore_game_object_age = true,
	speed_up = 4000,
	PlaceObj('ParticleParam', {
		'label', "area",
		'default_value', 1000000,
	}),
	PlaceObj('ParticleParam', {
		'label', "width",
		'default_value', 1000,
	}),
	PlaceObj('ParticleParam', {
		'label', "height",
		'default_value', 1000,
	}),
	PlaceObj('DisplacerRectArea', {
		'bins', set( "A", "B" ),
		'length_x', "width",
		'length_y', "height",
	}, nil, {
		length_x = 1000,
		length_y = 1000,
	}),
	PlaceObj('ParticleEmitter', {
		'label', "droplets",
		'emit_detail_level', 60,
		'max_live_count', 500,
		'parts_per_sec', 50000,
		'lifetime_max', 1000,
		'size_max', 1000,
		'shader', "Add",
		'texture', "Textures/Particles/raindrops.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(8, 4),
		'alpha', range(75, 205),
		'outlines', {
			{
				point(8, 1016),
				point(504, 1016),
				point(504, 8),
				point(8, 8),
			},
			{
				point(520, 1016),
				point(1016, 1016),
				point(1016, 8),
				point(520, 8),
			},
			{
				point(1032, 1016),
				point(1528, 1016),
				point(1528, 8),
				point(1032, 8),
			},
			{
				point(1544, 1016),
				point(2040, 1016),
				point(2040, 8),
				point(1544, 8),
			},
			{
				point(2056, 1016),
				point(2552, 1016),
				point(2552, 8),
				point(2056, 8),
			},
			{
				point(2568, 1016),
				point(3064, 1016),
				point(3064, 8),
				point(2568, 8),
			},
			{
				point(3080, 1016),
				point(3576, 1016),
				point(3576, 8),
				point(3080, 8),
			},
			{
				point(3592, 1016),
				point(4088, 1016),
				point(4088, 8),
				point(3592, 8),
			},
			{
				point(8, 2040),
				point(504, 2040),
				point(504, 1032),
				point(8, 1032),
			},
			{
				point(520, 2040),
				point(1016, 2040),
				point(1016, 1032),
				point(520, 1032),
			},
			{
				point(1032, 2040),
				point(1528, 2040),
				point(1528, 1032),
				point(1032, 1032),
			},
			{
				point(1544, 2040),
				point(2040, 2040),
				point(2040, 1032),
				point(1544, 1032),
			},
			{
				point(2056, 2040),
				point(2552, 2040),
				point(2552, 1032),
				point(2056, 1032),
			},
			{
				point(2568, 2040),
				point(3064, 2040),
				point(3064, 1032),
				point(2568, 1032),
			},
			{
				point(3080, 2040),
				point(3576, 2040),
				point(3576, 1032),
				point(3080, 1032),
			},
			{
				point(3592, 2040),
				point(4088, 2040),
				point(4088, 1032),
				point(3592, 1032),
			},
			{
				point(8, 3064),
				point(504, 3064),
				point(504, 2056),
				point(8, 2056),
			},
			{
				point(520, 3064),
				point(1016, 3064),
				point(1016, 2056),
				point(520, 2056),
			},
			{
				point(1032, 3064),
				point(1528, 3064),
				point(1528, 2056),
				point(1032, 2056),
			},
			{
				point(1544, 3064),
				point(2040, 3064),
				point(2040, 2056),
				point(1544, 2056),
			},
			{
				point(2056, 3064),
				point(2552, 3064),
				point(2552, 2056),
				point(2056, 2056),
			},
			{
				point(2568, 3064),
				point(3064, 3064),
				point(3064, 2056),
				point(2568, 2056),
			},
			{
				point(3080, 3064),
				point(3576, 3064),
				point(3576, 2056),
				point(3080, 2056),
			},
			{
				point(3592, 3064),
				point(4088, 3064),
				point(4088, 2056),
				point(3592, 2056),
			},
			{
				point(8, 4088),
				point(504, 4088),
				point(504, 3080),
				point(8, 3080),
			},
			{
				point(520, 4088),
				point(1016, 4088),
				point(1016, 3080),
				point(520, 3080),
			},
			{
				point(1032, 4088),
				point(1528, 4088),
				point(1528, 3080),
				point(1032, 3080),
			},
			{
				point(1544, 4088),
				point(2040, 4088),
				point(2040, 3080),
				point(1544, 3080),
			},
			{
				point(2056, 4088),
				point(2552, 4088),
				point(2552, 3080),
				point(2056, 3080),
			},
			{
				point(2568, 4088),
				point(3064, 4088),
				point(3064, 3080),
				point(2568, 3080),
			},
			{
				point(3080, 4088),
				point(3576, 4088),
				point(3576, 3080),
				point(3080, 3080),
			},
			{
				point(3592, 4088),
				point(4088, 4088),
				point(4088, 3080),
				point(3592, 3080),
			},
		},
		'texture_hash', -1700101463099401102,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "droplets",
		'bins', set( "B" ),
		'emit_detail_level', 60,
		'max_live_count', 500,
		'parts_per_sec', 50000,
		'lifetime_min', 500,
		'lifetime_max', 1000,
		'size_min', 100,
		'size_max', 100,
		'shader', "Add",
		'texture', "Textures/Particles/raindrops.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(8, 4),
		'alpha', range(75, 205),
		'outlines', {
			{
				point(8, 1016),
				point(504, 1016),
				point(504, 8),
				point(8, 8),
			},
			{
				point(520, 1016),
				point(1016, 1016),
				point(1016, 8),
				point(520, 8),
			},
			{
				point(1032, 1016),
				point(1528, 1016),
				point(1528, 8),
				point(1032, 8),
			},
			{
				point(1544, 1016),
				point(2040, 1016),
				point(2040, 8),
				point(1544, 8),
			},
			{
				point(2056, 1016),
				point(2552, 1016),
				point(2552, 8),
				point(2056, 8),
			},
			{
				point(2568, 1016),
				point(3064, 1016),
				point(3064, 8),
				point(2568, 8),
			},
			{
				point(3080, 1016),
				point(3576, 1016),
				point(3576, 8),
				point(3080, 8),
			},
			{
				point(3592, 1016),
				point(4088, 1016),
				point(4088, 8),
				point(3592, 8),
			},
			{
				point(8, 2040),
				point(504, 2040),
				point(504, 1032),
				point(8, 1032),
			},
			{
				point(520, 2040),
				point(1016, 2040),
				point(1016, 1032),
				point(520, 1032),
			},
			{
				point(1032, 2040),
				point(1528, 2040),
				point(1528, 1032),
				point(1032, 1032),
			},
			{
				point(1544, 2040),
				point(2040, 2040),
				point(2040, 1032),
				point(1544, 1032),
			},
			{
				point(2056, 2040),
				point(2552, 2040),
				point(2552, 1032),
				point(2056, 1032),
			},
			{
				point(2568, 2040),
				point(3064, 2040),
				point(3064, 1032),
				point(2568, 1032),
			},
			{
				point(3080, 2040),
				point(3576, 2040),
				point(3576, 1032),
				point(3080, 1032),
			},
			{
				point(3592, 2040),
				point(4088, 2040),
				point(4088, 1032),
				point(3592, 1032),
			},
			{
				point(8, 3064),
				point(504, 3064),
				point(504, 2056),
				point(8, 2056),
			},
			{
				point(520, 3064),
				point(1016, 3064),
				point(1016, 2056),
				point(520, 2056),
			},
			{
				point(1032, 3064),
				point(1528, 3064),
				point(1528, 2056),
				point(1032, 2056),
			},
			{
				point(1544, 3064),
				point(2040, 3064),
				point(2040, 2056),
				point(1544, 2056),
			},
			{
				point(2056, 3064),
				point(2552, 3064),
				point(2552, 2056),
				point(2056, 2056),
			},
			{
				point(2568, 3064),
				point(3064, 3064),
				point(3064, 2056),
				point(2568, 2056),
			},
			{
				point(3080, 3064),
				point(3576, 3064),
				point(3576, 2056),
				point(3080, 2056),
			},
			{
				point(3592, 3064),
				point(4088, 3064),
				point(4088, 2056),
				point(3592, 2056),
			},
			{
				point(8, 4088),
				point(504, 4088),
				point(504, 3080),
				point(8, 3080),
			},
			{
				point(520, 4088),
				point(1016, 4088),
				point(1016, 3080),
				point(520, 3080),
			},
			{
				point(1032, 4088),
				point(1528, 4088),
				point(1528, 3080),
				point(1032, 3080),
			},
			{
				point(1544, 4088),
				point(2040, 4088),
				point(2040, 3080),
				point(1544, 3080),
			},
			{
				point(2056, 4088),
				point(2552, 4088),
				point(2552, 3080),
				point(2056, 3080),
			},
			{
				point(2568, 4088),
				point(3064, 4088),
				point(3064, 3080),
				point(2568, 3080),
			},
			{
				point(3080, 4088),
				point(3576, 4088),
				point(3576, 3080),
				point(3080, 3080),
			},
			{
				point(3592, 4088),
				point(4088, 4088),
				point(4088, 3080),
				point(3592, 3080),
			},
		},
		'texture_hash', -1700101463099401102,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B" ),
		'start_color_min', RGBA(184, 184, 184, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorFadeInOut', {
		'bins', set( "A", "B" ),
		'fade_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 0, 0),
			point(142, 1000, 1000),
			point(766, 279, 279),
			point(1000, 0, 0),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 200,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 116, 116),
			point(329, 158, 158),
			point(644, 311, 311),
			point(1000, 511, 511),
		},
		'non_square_size', true,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 300, 300),
			point(298, 395, 395),
			point(684, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "A", "B" ),
		'direction', point(0, 0, -1000),
		'acceleration', 100,
		'max_vel', 2000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorFriction', {
		'bins', set( "A", "B" ),
		'friction', {
			range_y = 10,
			scale = 1000,
			point(0, 739, 739),
			point(339, 761, 761),
			point(687, 755, 755),
			point(1000, 755, 755),
		},
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "B" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'spread_angle', 6000,
		'vel_min', 100,
		'vel_max', 1000,
	}, nil, nil),
	PlaceObj('ParticleBehaviorRandomSpeedSpray', {
		'bins', set( "B" ),
		'spread_angle', 24000,
		'vel_min', 200,
		'vel_max', 750,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "B" ),
	}, nil, nil),
})


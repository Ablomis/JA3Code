-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Water",
	id = "Rain_Pouring",
	ignore_game_object_age = true,
	presim_time = 2000,
	rand_start_time = 1000,
	speed_up = 4000,
	PlaceObj('DisplacerLine', {
		'label', "lenght",
		'bins', set( "A", "B", "C" ),
		'position1', point(-600, 0, 0),
		'position2', point(600, 0, 0),
	}, nil, nil),
	PlaceObj('DisplacerLine', {
		'label', "width",
		'bins', set( "A", "B" ),
		'position1', point(0, -100, 0),
		'position2', point(0, 100, 0),
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "droplets",
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 20000,
		'lifetime_max', 2000,
		'size_min', 20,
		'size_max', 50,
		'shader', "Add",
		'texture', "Textures/Particles/raindrops.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(8, 4),
		'mat_roughness', 0,
		'alpha', range(75, 205),
		'outlines', {
			{
				point(0, 1016),
				point(504, 1016),
				point(504, 0),
				point(0, 0),
			},
			{
				point(512, 1016),
				point(1016, 1016),
				point(1016, 0),
				point(512, 0),
			},
			{
				point(1024, 1016),
				point(1528, 1016),
				point(1528, 0),
				point(1024, 0),
			},
			{
				point(1536, 1016),
				point(2040, 1016),
				point(2040, 0),
				point(1536, 0),
			},
			{
				point(2048, 1016),
				point(2552, 1016),
				point(2552, 0),
				point(2048, 0),
			},
			{
				point(2560, 1016),
				point(3064, 1016),
				point(3064, 0),
				point(2560, 0),
			},
			{
				point(3072, 1016),
				point(3576, 1016),
				point(3576, 0),
				point(3072, 0),
			},
			{
				point(3584, 1016),
				point(4088, 1016),
				point(4088, 0),
				point(3584, 0),
			},
			{
				point(0, 2040),
				point(504, 2040),
				point(504, 1024),
				point(0, 1024),
			},
			{
				point(512, 2040),
				point(1016, 2040),
				point(1016, 1024),
				point(512, 1024),
			},
			{
				point(1024, 2040),
				point(1528, 2040),
				point(1528, 1024),
				point(1024, 1024),
			},
			{
				point(1536, 2040),
				point(2040, 2040),
				point(2040, 1024),
				point(1536, 1024),
			},
			{
				point(2048, 2040),
				point(2552, 2040),
				point(2552, 1024),
				point(2048, 1024),
			},
			{
				point(2560, 2040),
				point(3064, 2040),
				point(3064, 1024),
				point(2560, 1024),
			},
			{
				point(3072, 2040),
				point(3576, 2040),
				point(3576, 1024),
				point(3072, 1024),
			},
			{
				point(3584, 2040),
				point(4088, 2040),
				point(4088, 1024),
				point(3584, 1024),
			},
			{
				point(0, 3064),
				point(504, 3064),
				point(504, 2048),
				point(0, 2048),
			},
			{
				point(512, 3064),
				point(1016, 3064),
				point(1016, 2048),
				point(512, 2048),
			},
			{
				point(1024, 3064),
				point(1528, 3064),
				point(1528, 2048),
				point(1024, 2048),
			},
			{
				point(1536, 3064),
				point(2040, 3064),
				point(2040, 2048),
				point(1536, 2048),
			},
			{
				point(2048, 3064),
				point(2552, 3064),
				point(2552, 2048),
				point(2048, 2048),
			},
			{
				point(2560, 3064),
				point(3064, 3064),
				point(3064, 2048),
				point(2560, 2048),
			},
			{
				point(3072, 3064),
				point(3576, 3064),
				point(3576, 2048),
				point(3072, 2048),
			},
			{
				point(3584, 3064),
				point(4088, 3064),
				point(4088, 2048),
				point(3584, 2048),
			},
			{
				point(0, 4088),
				point(504, 4088),
				point(504, 3072),
				point(0, 3072),
			},
			{
				point(512, 4088),
				point(1016, 4088),
				point(1016, 3072),
				point(512, 3072),
			},
			{
				point(1024, 4088),
				point(1528, 4088),
				point(1528, 3072),
				point(1024, 3072),
			},
			{
				point(1536, 4088),
				point(2040, 4088),
				point(2040, 3072),
				point(1536, 3072),
			},
			{
				point(2048, 4088),
				point(2552, 4088),
				point(2552, 3072),
				point(2048, 3072),
			},
			{
				point(2560, 4088),
				point(3064, 4088),
				point(3064, 3072),
				point(2560, 3072),
			},
			{
				point(3072, 4088),
				point(3576, 4088),
				point(3576, 3072),
				point(3072, 3072),
			},
			{
				point(3584, 4088),
				point(4088, 4088),
				point(4088, 3072),
				point(3584, 3072),
			},
		},
		'texture_hash', -1700101463099401102,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "droplets",
		'bins', set( "B" ),
		'emit_detail_level', 100,
		'max_live_count', 100,
		'parts_per_sec', 20000,
		'lifetime_max', 2500,
		'size_min', 20,
		'size_max', 50,
		'shader', "Add",
		'texture', "Textures/Particles/raindrops.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'frames', point(8, 4),
		'mat_roughness', 0,
		'alpha', range(75, 205),
		'outlines', {
			{
				point(0, 1016),
				point(504, 1016),
				point(504, 0),
				point(0, 0),
			},
			{
				point(512, 1016),
				point(1016, 1016),
				point(1016, 0),
				point(512, 0),
			},
			{
				point(1024, 1016),
				point(1528, 1016),
				point(1528, 0),
				point(1024, 0),
			},
			{
				point(1536, 1016),
				point(2040, 1016),
				point(2040, 0),
				point(1536, 0),
			},
			{
				point(2048, 1016),
				point(2552, 1016),
				point(2552, 0),
				point(2048, 0),
			},
			{
				point(2560, 1016),
				point(3064, 1016),
				point(3064, 0),
				point(2560, 0),
			},
			{
				point(3072, 1016),
				point(3576, 1016),
				point(3576, 0),
				point(3072, 0),
			},
			{
				point(3584, 1016),
				point(4088, 1016),
				point(4088, 0),
				point(3584, 0),
			},
			{
				point(0, 2040),
				point(504, 2040),
				point(504, 1024),
				point(0, 1024),
			},
			{
				point(512, 2040),
				point(1016, 2040),
				point(1016, 1024),
				point(512, 1024),
			},
			{
				point(1024, 2040),
				point(1528, 2040),
				point(1528, 1024),
				point(1024, 1024),
			},
			{
				point(1536, 2040),
				point(2040, 2040),
				point(2040, 1024),
				point(1536, 1024),
			},
			{
				point(2048, 2040),
				point(2552, 2040),
				point(2552, 1024),
				point(2048, 1024),
			},
			{
				point(2560, 2040),
				point(3064, 2040),
				point(3064, 1024),
				point(2560, 1024),
			},
			{
				point(3072, 2040),
				point(3576, 2040),
				point(3576, 1024),
				point(3072, 1024),
			},
			{
				point(3584, 2040),
				point(4088, 2040),
				point(4088, 1024),
				point(3584, 1024),
			},
			{
				point(0, 3064),
				point(504, 3064),
				point(504, 2048),
				point(0, 2048),
			},
			{
				point(512, 3064),
				point(1016, 3064),
				point(1016, 2048),
				point(512, 2048),
			},
			{
				point(1024, 3064),
				point(1528, 3064),
				point(1528, 2048),
				point(1024, 2048),
			},
			{
				point(1536, 3064),
				point(2040, 3064),
				point(2040, 2048),
				point(1536, 2048),
			},
			{
				point(2048, 3064),
				point(2552, 3064),
				point(2552, 2048),
				point(2048, 2048),
			},
			{
				point(2560, 3064),
				point(3064, 3064),
				point(3064, 2048),
				point(2560, 2048),
			},
			{
				point(3072, 3064),
				point(3576, 3064),
				point(3576, 2048),
				point(3072, 2048),
			},
			{
				point(3584, 3064),
				point(4088, 3064),
				point(4088, 2048),
				point(3584, 2048),
			},
			{
				point(0, 4088),
				point(504, 4088),
				point(504, 3072),
				point(0, 3072),
			},
			{
				point(512, 4088),
				point(1016, 4088),
				point(1016, 3072),
				point(512, 3072),
			},
			{
				point(1024, 4088),
				point(1528, 4088),
				point(1528, 3072),
				point(1024, 3072),
			},
			{
				point(1536, 4088),
				point(2040, 4088),
				point(2040, 3072),
				point(1536, 3072),
			},
			{
				point(2048, 4088),
				point(2552, 4088),
				point(2552, 3072),
				point(2048, 3072),
			},
			{
				point(2560, 4088),
				point(3064, 4088),
				point(3064, 3072),
				point(2560, 3072),
			},
			{
				point(3072, 4088),
				point(3576, 4088),
				point(3576, 3072),
				point(3072, 3072),
			},
			{
				point(3584, 4088),
				point(4088, 4088),
				point(4088, 3072),
				point(3584, 3072),
			},
		},
		'texture_hash', -1700101463099401102,
	}, nil, nil),
	PlaceObj('ParticleBehaviorPickFrame', {
		'bins', set( "A", "B" ),
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'bins', set( "A", "B" ),
		'start_color_min', RGBA(184, 184, 184, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('ParticleBehaviorGravityWind', {
		'bins', set( "A", "B" ),
		'direction', point(0, 0, -1000),
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "A", "B" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleBehaviorResize', {
		'bins', set( "A", "B" ),
		'start_size_min', 20,
		'start_size_max', 20,
		'mid_size', 20,
		'end_size', 20,
		'size_curve', PackCurveParams(0, 0, 1000, 0, 1000, 0, 255000, 0, 10),
		'non_square_size', true,
		'start_size2_min', 100,
		'start_size2_max', 100,
		'end_size2', 100,
	}, nil, nil),
})


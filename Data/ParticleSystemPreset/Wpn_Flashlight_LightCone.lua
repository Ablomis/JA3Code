-- ========== GENERATED BY ParticleSystemPreset Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('ParticleSystemPreset', {
	group = "Weapon_Attachments",
	id = "Wpn_Flashlight_LightCone",
	stable_cam_distance = true,
	PlaceObj('ParticleEmitter', {
		'label', "Light Cone",
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 500,
		'lifetime_max', 500,
		'position', point(1400, 0, 0),
		'size_min', 400,
		'size_max', 800,
		'shader', "Add",
		'texture', "Textures/Particles/Godray.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'self_illum', 50,
		'softness', 100,
		'far_softness', 100,
		'near_softness', 100,
		'alpha', range(15, 15),
		'outlines', {
			{
				point(672, 4064),
				point(3360, 4064),
				point(2688, 32),
				point(1504, 32),
			},
		},
		'texture_hash', -2896340146064740640,
	}, nil, nil),
	PlaceObj('ParticleBehaviorColorize', {
		'start_color_min', RGBA(255, 244, 216, 255),
		'type', "Start color only",
	}, nil, nil),
	PlaceObj('FaceAlongConstDir', {
		'direction', point(-1000, 0, 0),
	}, nil, nil),
	PlaceObj('ParticleBehaviorResizeCurve', {
		'max_size', 1000,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(299, 1000, 1000),
			point(605, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'non_square_size', true,
		'max_size_2', 3000,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(322, 1000, 1000),
			point(632, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Lines",
		'bins', set( "B" ),
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 500,
		'lifetime_max', 500,
		'position', point(50, 0, 0),
		'angle', range(60, 60),
		'size_min', 100,
		'size_max', 100,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'softness', 10,
		'far_softness', 100,
		'near_softness', 100,
		'alpha', range(25, 25),
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
	PlaceObj('ParticleEmitter', {
		'label', "Lines",
		'bins', set( "B" ),
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 500,
		'lifetime_max', 500,
		'position', point(50, 0, 0),
		'angle', range(120, 120),
		'size_min', 100,
		'size_max', 100,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'softness', 10,
		'far_softness', 100,
		'near_softness', 100,
		'alpha', range(25, 25),
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
	PlaceObj('ParticleBehaviorResizeCurve', {
		'bins', set( "B" ),
		'max_size', 50,
		'size_curve', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(299, 1000, 1000),
			point(605, 1000, 1000),
			point(1000, 1000, 1000),
		},
		'non_square_size', true,
		'max_size_2', 350,
		'size_curve_2', {
			range_y = 10,
			scale = 1000,
			point(0, 1000, 1000),
			point(322, 1000, 1000),
			point(632, 1000, 1000),
			point(1000, 1000, 1000),
		},
	}, nil, nil),
	PlaceObj('FaceAlongConstDir', {
		'bins', set(),
	}, nil, nil),
	PlaceObj('FaceAlongMovement', {
		'bins', set( "B" ),
		'rotate', true,
	}, nil, nil),
	PlaceObj('ParticleEmitter', {
		'label', "Glow",
		'bins', set( "G" ),
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 500,
		'lifetime_max', 500,
		'position', point(50, 0, 0),
		'size_min', 150,
		'size_max', 150,
		'shader', "Add",
		'texture', "Textures/Particles/White_Soft.tga",
		'alpha', range(55, 55),
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
	PlaceObj('ParticleEmitter', {
		'label', "Halo",
		'bins', set( "H" ),
		'emit_detail_level', 100,
		'max_live_count', 1,
		'parts_per_sec', 10000,
		'lifetime_min', 500,
		'lifetime_max', 500,
		'position', point(50, 0, 0),
		'size_min', 150,
		'size_max', 150,
		'shader', "Add",
		'texture', "Textures/Particles/Halo_Thin.tga",
		'normalmap', "Textures/Particles/flat.norm.tga",
		'alpha', range(75, 75),
		'outlines', {
			{
				point(224, 3856),
				point(3856, 3856),
				point(3856, 224),
				point(224, 224),
			},
		},
		'texture_hash', 2502804124047695963,
	}, nil, nil),
	PlaceObj('FaceDirection', {
		'bins', set( "G", "H" ),
		'direction', point(1000, 0, 0),
	}, nil, nil),
})


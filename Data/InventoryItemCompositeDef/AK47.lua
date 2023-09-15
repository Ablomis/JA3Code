-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryItemCompositeDef', {
	'Group', "Firearm - Assault",
	'Id', "AK47",
	'Comment', "tier 1 heavy",
	'object_class', "AssaultRifle",
	'RepairCost', 20,
	'Reliability', 95,
	'ScrapParts', 10,
	'Icon', "UI/Icons/Weapons/AK47",
	'DisplayName', T(101568253371, --[[InventoryItemCompositeDef AK47 DisplayName]] "AK-47"),
	'DisplayNamePlural', T(111814495795, --[[InventoryItemCompositeDef AK47 DisplayNamePlural]] "AK-47s"),
	'Description', T(588371049645, --[[InventoryItemCompositeDef AK47 Description]] "You should not be surprised to find an AK-47 anywhere there is conflict around the world. Simple to use, reliable and dirt cheap. Over 75 million are in circulation worldwide."),
	'AdditionalHint', T(973499072074, --[[InventoryItemCompositeDef AK47 AdditionalHint]] "<bullet_point> Slower Condition loss"),
	'LargeItem', true,
	'UnitStat', "Marksmanship",
	'Cost', 800,
	'Caliber', "762WP",
	'Damage', 20,
	'MagazineSize', 30,
	'PenetrationClass', 2,
	'WeaponRange', 24,
	'OverwatchAngle', 1440,
	'HandSlot', "TwoHanded",
	'Entity', "Weapon_AK47",
	'ComponentSlots', {
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Bipod",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"Bipod",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Grenadelauncher",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"AK47_Launcher",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Stock",
			'AvailableComponents', {
				"StockNormal",
				"StockLight",
			},
			'DefaultComponent', "StockNormal",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Magazine",
			'AvailableComponents', {
				"MagNormal",
				"MagLarge",
				"MagQuick",
			},
			'DefaultComponent', "MagNormal",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Handguard",
			'AvailableComponents', {
				"AK47_VerticalGrip",
				"AK47_Handguard_basic",
			},
			'DefaultComponent', "AK47_Handguard_basic",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Scope",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"LROptics",
				"ReflexSight",
				"ScopeCOG",
				"ThermalScope",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Muzzle",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"Compensator",
				"MuzzleBooster",
				"Suppressor",
			},
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Side",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"Flashlight",
				"FlashlightDot",
				"LaserDot",
			},
		}),
	},
	'HolsterSlot', "Shoulder",
	'AvailableAttacks', {
		"BurstFire",
		"AutoFire",
		"SingleShot",
		"CancelShot",
	},
	'ShootAP', 6000,
	'ReloadAP', 3000,
})


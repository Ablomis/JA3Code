-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryItemCompositeDef', {
	'Group', "Firearm - Rifle",
	'Id', "Gewehr98",
	'Comment', "tier 1",
	'object_class', "SniperRifle",
	'Reliability', 25,
	'ScrapParts', 8,
	'Icon', "UI/Icons/Weapons/Gewehr98",
	'DisplayName', T(622217392257, --[[InventoryItemCompositeDef Gewehr98 DisplayName]] "Gewehr 98"),
	'DisplayNamePlural', T(512124485855, --[[InventoryItemCompositeDef Gewehr98 DisplayNamePlural]] "Gewehr 98s"),
	'Description', T(688355440301, --[[InventoryItemCompositeDef Gewehr98 Description]] "It is said that this Mauser design is the grandpa of all bolt action rifles. Even the modern hunting or military sniper rifles started here. "),
	'AdditionalHint', T(885309778365, --[[InventoryItemCompositeDef Gewehr98 AdditionalHint]] "<bullet_point> Shorter range\n<bullet_point> Very noisy"),
	'LargeItem', true,
	'UnitStat', "Marksmanship",
	'Cost', 1250,
	'Caliber', "762NATO",
	'Damage', 36,
	'AimAccuracy', 5,
	'MagazineSize', 5,
	'PenetrationClass', 2,
	'WeaponRange', 32,
	'OverwatchAngle', 360,
	'Noise', 30,
	'HandSlot', "TwoHanded",
	'Entity', "Weapon_Gewehr98",
	'ComponentSlots', {
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Scope",
			'AvailableComponents', {
				"LROptics",
				"ReflexSight",
				"ScopeCOG",
				"GewehrDefaultSight",
				"ImprovedIronsight",
				"ReflexSightAdvanced",
				"ScopeCOGQuick",
				"ThermalScope",
			},
			'DefaultComponent', "GewehrDefaultSight",
		}),
		PlaceObj('WeaponComponentSlot', {
			'SlotType', "Muzzle",
			'CanBeEmpty', true,
			'AvailableComponents', {
				"ImprovisedSuppressor",
			},
		}),
	},
	'HolsterSlot', "Shoulder",
	'ModifyRightHandGrip', true,
	'PreparedAttackType', "Both",
	'AvailableAttacks', {
		"SingleShot",
		"CancelShot",
	},
	'ShootAP', 8000,
	'ReloadAP', 3000,
})


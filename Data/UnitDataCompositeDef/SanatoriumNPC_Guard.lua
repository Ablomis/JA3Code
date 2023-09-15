-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "Civilians",
	'Id', "SanatoriumNPC_Guard",
	'object_class', "UnitData",
	'Health', 81,
	'Agility', 35,
	'Dexterity', 27,
	'Strength', 50,
	'Wisdom', 39,
	'Leadership', 0,
	'Marksmanship', 22,
	'Mechanical', 0,
	'Explosives', 0,
	'Medical', 0,
	'Portrait', "UI/EnemiesPortraits/ArmySniper",
	'Name', T(602723992681, --[[UnitDataCompositeDef SanatoriumNPC_Guard Name]] "Sanatorium Guard"),
	'Randomization', true,
	'Affiliation', "Civilian",
	'neutral_retaliate', true,
	'MaxAttacks', 2,
	'RewardExperience', 0,
	'StartingPerks', {
		"AutoWeapons",
	},
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "GrandChien_Marksman",
			'Weight', 50,
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "GrandChien_Medic",
			'Weight', 50,
		}),
	},
	'Equipment', {
		"SanatoriumGuard",
	},
	'AdditionalGroups', {
		PlaceObj('AdditionalGroup', {
			'Name', "ArmyMale_1",
		}),
	},
	'pollyvoice', "Matthew",
	'gender', "Male",
})


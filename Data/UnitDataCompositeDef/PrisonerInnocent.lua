-- ========== GENERATED BY UnitDataCompositeDef Editor (Ctrl-Alt-M) DO NOT EDIT MANUALLY! ==========

PlaceObj('UnitDataCompositeDef', {
	'Group', "Civilians",
	'Id', "PrisonerInnocent",
	'Comment', "future slave",
	'object_class', "UnitData",
	'Health', 50,
	'Agility', 28,
	'Dexterity', 30,
	'Strength', 50,
	'Wisdom', 30,
	'Leadership', 20,
	'Marksmanship', 50,
	'Mechanical', 0,
	'Explosives', 0,
	'Medical', 0,
	'Portrait', "UI/EnemiesPortraits/ThugSoldier",
	'Name', T(984415407226, --[[UnitDataCompositeDef PrisonerInnocent Name]] "Prisoner"),
	'Randomization', true,
	'Affiliation', "Other",
	'role', "Soldier",
	'MaxAttacks', 2,
	'MaxHitPoints', 50,
	'AppearancesList', {
		PlaceObj('AppearanceWeight', {
			'Preset', "Prisoner_01",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Prisoner_02",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Prisoner_03",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Prisoner_04",
		}),
		PlaceObj('AppearanceWeight', {
			'Preset', "Prisoner_05",
		}),
	},
	'Equipment', {
		"Civilian_Unarmed",
	},
	'AdditionalGroups', {
		PlaceObj('AdditionalGroup', {
			'Name', "CivilianMale_3",
		}),
	},
	'pollyvoice', "Joey",
	'gender', "Male",
	'VoiceResponseId', "ThugGunner",
})


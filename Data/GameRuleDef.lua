-- ========== GENERATED BY GameRuleDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('GameRuleDef', {
	description = T(868043635005, --[[GameRuleDef ActivePause description]] "Allows pausing the game in Exploration mode. Actions can be ordered while in pause but any attack will unpause the game.<newline><newline><flavor>You can change this option at any time during gameplay.</flavor>"),
	display_name = T(693010818743, --[[GameRuleDef ActivePause display_name]] "Active Pause"),
	group = "Default",
	id = "ActivePause",
	init_as_active = true,
})

PlaceObj('GameRuleDef', {
	description = T(288197540232, --[[GameRuleDef DeadIsDead description]] "Progress is saved automatically, every death and every choice is final."),
	display_name = T(153750559123, --[[GameRuleDef DeadIsDead display_name]] "Dead is Dead"),
	group = "Default",
	id = "DeadIsDead",
})

PlaceObj('GameRuleDef', {
	Parameters = {
		PlaceObj('PresetParamNumber', {
			'Name', "DailyIncome",
			'Value', 1000,
			'Tag', "<DailyIncome>",
		}),
		PlaceObj('PresetParamNumber', {
			'Name', "MinStatBoost",
			'Value', 60,
			'Tag', "<MinStatBoost>",
		}),
		PlaceObj('PresetParamPercent', {
			'Name', "HealingProgressBoost",
			'Value', 25,
			'Tag', "<HealingProgressBoost>%",
		}),
	},
	description = T(885105596551, --[[GameRuleDef ForgivingMode description]] 'Lowers the impact of attrition and makes it easier to recover from bad situations (faster healing and repair, better income).<newline><newline><flavor>You cannot unlock the "Ironman" achievement while Forgiving mode is enabled.</flavor><newline><newline><flavor>You can change this option at any time during gameplay.</flavor>'),
	display_name = T(853662858218, --[[GameRuleDef ForgivingMode display_name]] "Forgiving mode"),
	group = "Default",
	id = "ForgivingMode",
})

PlaceObj('GameRuleDef', {
	description = T(271001134096, --[[GameRuleDef Ironman description]] "Saving the game progress during combat is forbidden."),
	display_name = T(755050070708, --[[GameRuleDef Ironman display_name]] "To the bitter end"),
	group = "Default",
	id = "Ironman",
})

PlaceObj('GameRuleDef', {
	description = T(815640484459, --[[GameRuleDef LethalWeapons description]] "No downed state. Mercs die when they are down to 0 HP."),
	display_name = T(280927933941, --[[GameRuleDef LethalWeapons display_name]] "Lethal Weapons"),
	group = "Default",
	id = "LethalWeapons",
})

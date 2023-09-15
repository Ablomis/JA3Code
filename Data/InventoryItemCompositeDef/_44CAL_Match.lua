-- ========== GENERATED BY InventoryItemCompositeDef Editor (Ctrl-Alt-Y) DO NOT EDIT MANUALLY! ==========

PlaceObj('InventoryItemCompositeDef', {
	'Group', "Ammo",
	'Id', "_44CAL_Match",
	'object_class', "Ammo",
	'Icon', "UI/Icons/Items/44_cal_bullets_match",
	'DisplayName', T(249943286285, --[[InventoryItemCompositeDef _44CAL_Match DisplayName]] ".44 Match"),
	'DisplayNamePlural', T(987921160651, --[[InventoryItemCompositeDef _44CAL_Match DisplayNamePlural]] ".44 Match"),
	'colorStyle', "AmmoMatchColor",
	'Description', T(888766429002, --[[InventoryItemCompositeDef _44CAL_Match Description]] ".44 Ammo for Revolvers and Rifles."),
	'AdditionalHint', T(898089454154, --[[InventoryItemCompositeDef _44CAL_Match AdditionalHint]] "<bullet_point> Increased bonus from Aiming"),
	'MaxStacks', 500,
	'Caliber', "44CAL",
	'Modifications', {
		PlaceObj('CaliberModification', {
			mod_add = 2,
			target_prop = "AimAccuracy",
		}),
	},
})

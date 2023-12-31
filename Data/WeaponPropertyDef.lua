-- ========== GENERATED BY WeaponPropertyDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return IsKindOfClasses(context, "MeleeWeapon", "Grenade","Ordnance")
	end,
	GetProp = function (self, item, unit_id)
		local dmg = item:GetProperty(self.bind_to)
		if unit_id and IsKindOfClasses(item, "Grenade", "Ordnance") then
			local ud = gv_UnitData[unit_id]
			local bonus = GetGrenadeDamageBonus(ud)
			return MulDivRound(dmg, 100 + bonus, 100)
		end
		return dmg
	end,
	Getbase_Prop = function (self, item,  unit_id)
		local dmg = item:GetProperty(self.bind_to)
		if unit_id and IsKindOfClasses(item, "Grenade", "Ordnance") then
			local ud = gv_UnitData[unit_id]
			local bonus = GetGrenadeDamageBonus(ud)
			return MulDivRound(dmg, 100 + bonus, 100)
		end
		return dmg
	end,
	SortKey = 1,
	bind_to = "BaseDamage",
	description = T(452423871333, --[[WeaponPropertyDef Default BaseDamage description]] "The amount of HP an unarmored target loses on hit."),
	display_name = T(287944595070, --[[WeaponPropertyDef Default BaseDamage display_name]] "Damage"),
	id = "BaseDamage",
	max_progress = 50,
	short_display_name = T(427133642406, --[[WeaponPropertyDef Default BaseDamage short_display_name]] "DMG"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon() and not IsKindOf(context, "MeleeWeapon")
	end,
	SortKey = 1,
	bind_to = "Damage",
	description = T(744064461259, --[[WeaponPropertyDef Default Damage description]] "The amount of HP an unarmored target loses on hit."),
	display_name = T(465743413978, --[[WeaponPropertyDef Default Damage display_name]] "Damage"),
	id = "Damage",
	max_progress = 50,
	short_display_name = T(170292350441, --[[WeaponPropertyDef Default Damage short_display_name]] "DMG"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return  IsKindOf(context, "Armor")
	end,
	SortKey = 1,
	bind_to = "DamageReduction",
	display_name = T(621803990977, --[[WeaponPropertyDef Default DamageReduction display_name]] "DR when penetrated"),
	id = "DamageReduction",
	max_progress = 50,
	short_display_name = T(983715301911, --[[WeaponPropertyDef Default DamageReduction short_display_name]] "DR when penetrated"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return  IsKindOf(context, "Armor")
	end,
	SortKey = 2,
	bind_to = "AdditionalReduction",
	display_name = T(297304771628, --[[WeaponPropertyDef Default AdditionalReduction display_name]] "Additional"),
	id = "AdditionalReduction",
	max_progress = 50,
	short_display_name = T(338328374105, --[[WeaponPropertyDef Default AdditionalReduction short_display_name]] "Additional"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return (context:IsWeapon() and not IsKindOf(context, "Firearm")) or  IsKindOfClasses(context, "Grenade", "Ordnance")
	end,
	SortKey = 2,
	bind_to = "AttackAP",
	description = T(928460529171, --[[WeaponPropertyDef Default AttackAP description]] "The AP required to make a Basic attack with the weapon."),
	display_name = T(305536559196, --[[WeaponPropertyDef Default AttackAP display_name]] "Attack Cost"),
	id = "AttackAP",
	max_progress = 10000,
	reverse_bar = true,
	short_display_name = T(932754284830, --[[WeaponPropertyDef Default AttackAP short_display_name]] "AP"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return  IsKindOfClasses(context, "Grenade")
	end,
	GetProp = function (self, item, unit_id)
		return item:GetMaxAimRange(gv_UnitData[unit_id])
	end,
	Getbase_Prop = function (self, item,  unit_id)
		return item:GetMaxAimRange(gv_UnitData[unit_id])
	end,
	SortKey = 2,
	bind_to = "BaseRange",
	description = T(708214125730, --[[WeaponPropertyDef Default BaseRange description]] "The distance at which the explosive can be thrown."),
	display_name = T(872287364642, --[[WeaponPropertyDef Default BaseRange display_name]] "Range"),
	id = "BaseRange",
	max_progress = 50,
	short_display_name = T(562929564500, --[[WeaponPropertyDef Default BaseRange short_display_name]] "Range"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return IsKindOf(context, "Firearm")
	end,
	GetProp = function (self, item, unit_id)
		local baseAttack = item:GetBaseAttack(false, "force")
		local baseAction = CombatActions[baseAttack]
		return (item.ShootAP + baseAction.ActionPointDelta)
	end,
	Getbase_Prop = function (self, item,  unit_id)
		local baseAttack = item:GetBaseAttack(false, "force")
		local baseAction = CombatActions[baseAttack]
		return (item.base_ShootAP + baseAction.ActionPointDelta)
	end,
	SortKey = 2,
	bind_to = "ShootAP",
	description = T(928460529171, --[[WeaponPropertyDef Default ShootAP description]] "The AP required to make a Basic attack with the weapon."),
	display_name = T(513814863316, --[[WeaponPropertyDef Default ShootAP display_name]] "Attack Cost"),
	id = "ShootAP",
	max_progress = 10000,
	reverse_bar = true,
	short_display_name = T(718309790507, --[[WeaponPropertyDef Default ShootAP short_display_name]] "AP"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return  IsKindOf(context, "Armor")
	end,
	SortKey = 2,
	bind_to = "SumDamageReduction",
	display_name = T(437576953829, --[[WeaponPropertyDef Default SumDamageReduction display_name]] "Damage Reduction"),
	id = "SumDamageReduction",
	max_progress = 50,
	short_display_name = T(416247958904, --[[WeaponPropertyDef Default SumDamageReduction short_display_name]] "Damage Reduction"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return IsKindOfClasses(context, "Grenade", "Ordnance")
	end,
	SortKey = 3,
	bind_to = "AreaOfEffect",
	display_name = T(471534179733, --[[WeaponPropertyDef Default AreaOfEffect display_name]] "AOE"),
	id = "AreaOfEffect",
	max_progress = 50,
	short_display_name = T(326447829288, --[[WeaponPropertyDef Default AreaOfEffect short_display_name]] "AOE"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon()
	end,
	SortKey = 3,
	bind_to = "BuckshotConeAngle",
	display_name = T(727224762171, --[[WeaponPropertyDef Default BuckshotConeAngle display_name]] "Buckshot Width"),
	id = "BuckshotConeAngle",
	short_display_name = T(988149814796, --[[WeaponPropertyDef Default BuckshotConeAngle short_display_name]] "Buckshot Width"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon()
	end,
	SortKey = 3,
	bind_to = "MaxAimActions",
	display_name = T(319910674493, --[[WeaponPropertyDef Default MaxAimActions display_name]] "Total Aim Levels"),
	id = "MaxAimActions",
	short_display_name = T(247776146774, --[[WeaponPropertyDef Default MaxAimActions short_display_name]] "Total Aim Levels"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon()
	end,
	SortKey = 3,
	bind_to = "OverwatchAngle",
	display_name = T(608975559432, --[[WeaponPropertyDef Default OverwatchAngle display_name]] "Overwatch Width"),
	id = "OverwatchAngle",
	short_display_name = T(848425852983, --[[WeaponPropertyDef Default OverwatchAngle short_display_name]] "Overwatch Width"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon()
	end,
	SortKey = 3,
	bind_to = "Reliability",
	display_name = T(754196064298, --[[WeaponPropertyDef Default Reliability display_name]] "Reliability"),
	id = "Reliability",
	short_display_name = T(668390787824, --[[WeaponPropertyDef Default Reliability short_display_name]] "Reliability"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return  context:IsWeapon() and not IsKindOf(context, "MeleeWeapon")
	end,
	SortKey = 3,
	bind_to = "WeaponRange",
	description = T(478217447038, --[[WeaponPropertyDef Default WeaponRange description]] "The distance at which the weapon can be aimed effectively."),
	display_name = T(353401714895, --[[WeaponPropertyDef Default WeaponRange display_name]] "Range"),
	id = "WeaponRange",
	max_progress = 50,
	short_display_name = T(753241021762, --[[WeaponPropertyDef Default WeaponRange short_display_name]] "Range"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return false
	end,
	SortKey = 4,
	bind_to = "PenetrationClass",
	description = T(947274599469, --[[WeaponPropertyDef Default PenetrationClass description]] "Attacks with this weapon penetrate Armor up to this class."),
	display_name = T(528512796972, --[[WeaponPropertyDef Default PenetrationClass display_name]] "Penetration"),
	id = "PenetrationClass",
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon() and not IsKindOf(context, "MeleeWeapon")
	end,
	SortKey = 5,
	bind_to = "AimAccuracy",
	description = T(780886598156, --[[WeaponPropertyDef Default AimAccuracy description]] "Accuracy gained from each Aim level."),
	display_name = T(126266115368, --[[WeaponPropertyDef Default AimAccuracy display_name]] "Aiming Bonus"),
	id = "AimAccuracy",
	max_progress = 10,
})

PlaceObj('WeaponPropertyDef', {
	GetProp = function (self, item, unit_id)
		local unitData = unit_id and gv_UnitData[unit_id]
		return UnitProperties.GetBaseCrit(unitData, item)
	end,
	Getbase_Prop = function (self, item,  unit_id)
		local unitData = unit_id and gv_UnitData[unit_id]
		return UnitProperties.Getbase_BaseCrit(unitData, item)
	end,
	SortKey = 6,
	bind_to = "CritChance",
	description = T(692513111301, --[[WeaponPropertyDef Default CritChance description]] "The chance to score a devastating hit. Depends on the wielder's Level."),
	display_name = T(711037452737, --[[WeaponPropertyDef Default CritChance display_name]] "Crit chance"),
	id = "CritChance",
	short_display_name = T(689767183866, --[[WeaponPropertyDef Default CritChance short_display_name]] "Crit"),
	show_in_inventory = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon() and not IsKindOf(context, "HeavyWeapon")
	end,
	SortKey = 6,
	bind_to = "CritChanceScaled",
	description = T(570127062101, --[[WeaponPropertyDef Default CriticalCumulative description]] "Chance to score a devastating hit. Depends on wielder's Level."),
	display_name = T(884578867822, --[[WeaponPropertyDef Default CriticalCumulative display_name]] "Crit"),
	id = "CriticalCumulative",
	max_progress = 30,
})

PlaceObj('WeaponPropertyDef', {
	GetProp = function (self, item, unit_id)
		return item.CritChance + item.CritChanceScaled
	end,
	Getbase_Prop = function (self, item,  unit_id)
		return item.CritChance + item.CritChanceScaled
	end,
	SortKey = 6,
	bind_to = "CritChance",
	description = T(663955933448, --[[WeaponPropertyDef Default MaxCritChance description]] "The maximum chance to score a devastating hit."),
	display_name = T(635488240640, --[[WeaponPropertyDef Default MaxCritChance display_name]] "Max Crit chance"),
	group = "Default",
	id = "MaxCritChance",
	short_display_name = T(581674878663, --[[WeaponPropertyDef Default MaxCritChance short_display_name]] "Max Crit"),
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return context:IsWeapon() and not IsKindOf(context, "MeleeWeapon")
	end,
	SortKey = 7,
	bind_to = "MagazineSize",
	description = T(588218710434, --[[WeaponPropertyDef Default MagazineSize description]] "How many shots can be fired without reloading."),
	display_name = T(455359913770, --[[WeaponPropertyDef Default MagazineSize display_name]] "Clip size"),
	id = "MagazineSize",
	max_progress = 300,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		 return IsKindOf(context, "Firearm")
	end,
	SortKey = 8,
	bind_to = "ReloadAP",
	description = T(649906879265, --[[WeaponPropertyDef Default ReloadAP description]] "The AP needed to reload the weapon."),
	display_name = T(227933109639, --[[WeaponPropertyDef Default ReloadAP display_name]] "Reload Cost"),
	id = "ReloadAP",
	max_progress = 10,
	reverse_bar = true,
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return false
	end,
	SortKey = 30,
	bind_to = "Caliber",
	description = T(166868854322, --[[WeaponPropertyDef Default Caliber description]] "Denotes the ammo type used by the weapon."),
	display_name = T(291254956734, --[[WeaponPropertyDef Default Caliber display_name]] "Caliber"),
	id = "Caliber",
})

PlaceObj('WeaponPropertyDef', {
	DisplayForContext = function (self, context)
		return false
	end,
	SortKey = 30,
	bind_to = "Condition",
	description = T(417699032472, --[[WeaponPropertyDef Default Condition description]] "Represents wear and tear, scaling risk of jamming and weapon performance."),
	display_name = T(353647441782, --[[WeaponPropertyDef Default Condition display_name]] "Condition"),
	id = "Condition",
})


-- ========== GENERATED BY ClassDef Editor (Ctrl-Alt-F3) DO NOT EDIT MANUALLY! ==========

PlaceObj('ClassDef', {
	group = "Inventory",
	id = "AmmoProperties",
	PlaceObj('PropertyDefCombo', {
		'category', "Caliber",
		'id', "Caliber",
		'template', true,
		'items', function (self) return PresetGroupCombo("Caliber", "Default") end,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "MaxStacks",
		'name', "Max Stacks",
		'help', "Ammo can stack up to that number.",
		'template', true,
		'default', 10,
		'slider', true,
		'min', 1,
		'max', 10000,
	}),
	PlaceObj('PropertyDefNestedList', {
		'id', "Modifications",
		'template', true,
		'base_class', "CaliberModification",
		'inclusive', true,
	}),
	PlaceObj('PropertyDefPresetIdList', {
		'category', "Combat",
		'id', "AppliedEffects",
		'name', "Applied Effects",
		'template', true,
		'preset_class', "CharacterEffectCompositeDef",
		'preset_group', "Default",
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "ArmorProperties",
	PlaceObj('PropertyDefCombo', {
		'id', "Slot",
		'template', true,
		'default', "Torso",
		'items', function (self) return {"Head", "Torso", "Legs"} end,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "PenetrationClass",
		'help', "",
		'template', true,
		'extra_code', 'name = function(self) return "Penetration Class: " .. (PenetrationClassIds[self.PenetrationClass] or "") end',
		'default', 1,
		'slider', true,
		'min', 1,
		'max', 5,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "DamageReduction",
		'name', "Damage Reduction (Base)",
		'help', "How much damage the armor absorbs when the attack lands in an area covered by the armor.",
		'template', true,
		'default', 10,
		'scale', "%",
		'slider', true,
		'min', 0,
		'max', 100,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "AdditionalReduction",
		'name', "Damage Reduction (Additional)",
		'help', "Additional damage reduction applied when the effective Penetration Class of the attack is lower than the Penetration Class of the armor protecting the hit body part.",
		'template', true,
		'default', 10,
		'scale', "%",
		'slider', true,
		'min', 0,
		'max', 100,
	}),
	PlaceObj('PropertyDefSet', {
		'category', "Combat",
		'id', "ProtectedBodyParts",
		'name', "Protected Body Parts",
		'template', true,
		'items', function (self) return PresetGroupCombo("TargetBodyPart", "Default") end,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Combat",
		'id', "Camouflage",
		'template', true,
	}),
})

PlaceObj('ClassDef', {
	group = "Inventory",
	id = "CapacityItemProperties",
	PlaceObj('PropertyDefNumber', {
		'id', "MaxCapacity",
		'name', "Max Capacity",
		'template', true,
		'default', 1000,
		'min', 0,
		'max', 10000,
	}),
	PlaceObj('PropertyDefNumber', {
		'id', "capacity",
		'name', "",
		'no_edit', true,
		'template', true,
		'min', 0,
		'max', 10000,
	}),
	PlaceObj('PropertyDefNumber', {
		'id', "deplete_progress",
		'name', "",
		'no_edit', true,
		'template', true,
		'default', 0,
		'min', 0,
		'max', 10000,
	}),
	PlaceObj('PropertyDefFunc', {
		'id', "Deplete",
		'dont_save', true,
		'no_edit', true,
		'params', "self, amount, holder",
		'default', function (self, amount, holder)
			self.capacity = self.capacity or self.MaxCapacity
			AddScaledProgress(self, "deplete_progress", "capacity", -amount)
			if self.capacity == 0 then
				local container_slot_name = GetContainerInventorySlotName(holder)
				local item = holder:RemoveItem(container_slot_name, self)
				if item then
					DoneObject(item)
					return true
				end
			end
		end,
	}),
	PlaceObj('PropertyDefFunc', {
		'id', "IsDepleted",
		'dont_save', true,
		'no_edit', true,
		'default', function (self)
			return (self.capacity or self.MaxCapacity) <= 0
		end,
	}),
})

PlaceObj('ClassDef', {
	group = "Inventory",
	id = "ExplosiveProperties",
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "CenterUnitDamageMod",
		'name', "Unit Damage Modifier (Center)",
		'help', "modifier applied to damage when damaging units in the central tile of the explosion",
		'template', true,
		'default', 100,
		'scale', "%",
		'min', 0,
		'max', 500,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "CenterObjDamageMod",
		'name', "Object Damage Modifier (Center)",
		'help', "modifier applied to damage when damaging objects in the central tile of the explosion",
		'template', true,
		'default', 100,
		'scale', "%",
		'min', 0,
		'max', 500,
	}),
	PlaceObj('PropertyDefPresetIdList', {
		'category', "Explosion",
		'id', "CenterAppliedEffects",
		'name', "Applied Effects (Center)",
		'help', "status effects applied in the central tile of the explosion",
		'template', true,
		'preset_class', "CharacterEffectCompositeDef",
		'preset_group', "Default",
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "AreaOfEffect",
		'name', "Area of Effect",
		'help', "the blast range (radius) in number of tiles",
		'template', true,
		'default', 3,
		'min', 0,
		'max', 20,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "CenterAreaOfEffect",
		'name', "Central Area of Effect",
		'help', "the central blast area radius in number of tiles",
		'template', true,
		'default', 1,
		'min', 1,
		'max', 20,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "AreaUnitDamageMod",
		'name', "Unit Damage Modifier (Area)",
		'help', "modifier applied to damage when damaging units outside the central tile of the explosion",
		'template', true,
		'default', 100,
		'scale', "%",
		'min', 0,
		'max', 500,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "AreaObjDamageMod",
		'name', "Object Damage Modifier (Area)",
		'help', "modifier applied to damage when damaging objects outside the central tile of the explosion",
		'template', true,
		'default', 100,
		'scale', "%",
		'min', 0,
		'max', 500,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefPresetIdList', {
		'category', "Explosion",
		'id', "AreaAppliedEffects",
		'name', "Applied Effects (Area)",
		'help', "status effects applied outside the central tile of the explosion",
		'template', true,
		'preset_class', "CharacterEffectCompositeDef",
		'preset_group', "Default",
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "PenetrationClass",
		'help', "",
		'template', true,
		'extra_code', 'name = function(self) return "Penetration Class: " .. (PenetrationClassIds[self.PenetrationClass] or "") end',
		'default', 5,
		'slider', true,
		'min', 1,
		'max', 5,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Explosion",
		'id', "coneShaped",
		'name', "Cone Shaped",
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Explosion",
		'id', "coneAngle",
		'name', "Cone Angle",
		'help', "The angle of the bigger cone arc",
		'no_edit', "expression",
		'no_edit_expression', function (self) return not self.coneShaped end,
		'template', true,
		'default', 30,
		'min', 1,
		'max', 360,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Explosion",
		'id', "BurnGround",
		'template', true,
		'default', true,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "Explosion",
		'id', "DeathType",
		'template', true,
		'default', "Normal",
		'items', function (self) return {"Normal", "BlowUp"} end,
	}),
	PlaceObj('PropertyDefButtons', {
		'id', "dbg_explosion_buttons",
		'buttons', {
			PlaceObj('PropertyDefPropButton', {
				'Name', "Set Debug Explosion Source",
				'FuncName', "DbgSetExplosionType",
			}),
		},
		'template', true,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "FirearmProperties",
	PlaceObj('PropertyDefCombo', {
		'category', "Caliber",
		'id', "Caliber",
		'template', true,
		'items', function (self) return PresetGroupCombo("Caliber", "Default") end,
	}),
	PlaceObj('PropertyDefButtons', {
		'category', "General",
		'id', "btnAddAmmo",
		'buttons', {
			PlaceObj('PropertyDefPropButton', {
				'Name', "Add Ammo To Current Unit",
				'FuncName', "UIPlaceInInventoryAmmo",
			}),
		},
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "Damage",
		'help', "Damage of the firearm",
		'template', true,
		'default', 0,
		'min', 0,
		'max', 1000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "ObjDamageMod",
		'name', "Objects damage modifier",
		'help', "Multiplicative damage modifier against objects (non-units)",
		'template', true,
		'default', 100,
		'scale', "%",
		'min', 0,
		'max', 1000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "AimAccuracy",
		'name', "Aim Accuracy",
		'help', "Base chance to hit increase per aim action",
		'template', true,
		'default', 2,
		'scale', "%",
		'min', 1,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "CritChance",
		'name', "Crit Chance",
		'help', "Base chance to cause a critical hit which deals more damage.",
		'template', true,
		'default', 0,
		'scale', "%",
		'slider', true,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "CritChanceScaled",
		'name', "Crit Chance (Scaled)",
		'help', "Additional chance to cause a critical hit (scaled by level, specified number is at merc level 10)",
		'template', true,
		'default', 10,
		'scale', "%",
		'slider', true,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "MagazineSize",
		'name', "Magazine Size",
		'help', "Number of bullets in a single clip",
		'template', true,
		'default', 1,
		'min', 1,
		'max', 1000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "PenetrationClass",
		'help', "",
		'template', true,
		'extra_code', 'name = function(self) return "Penetration Class: " .. (PenetrationClassIds[self.PenetrationClass] or "") end',
		'default', 1,
		'slider', true,
		'min', 1,
		'max', 5,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "IgnoreCoverReduction",
		'name', "Ignore Cover Reduction",
		'help', "If > 0 attacks with this weapon will ignore the damage reduction that would normally apply for targets in cover.",
		'template', true,
		'default', 0,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "WeaponRange",
		'name', "Range",
		'help', "Range at which the penalty of the gun is 100.",
		'template', true,
		'default', 20,
		'slider', true,
		'min', 1,
		'max', 200,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Caliber",
		'id', "PointBlankRange",
		'name', "Point Blank Range",
		'help', "attacks get bonus CTH in point-blank range",
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "OverwatchAngle",
		'name', "Overwatch Angle",
		'help', "overwatch area cone angle",
		'template', true,
		'extra_code', 'no_edit = function(self) return \n	(self.PreparedAttackType ~= "Overwatch" and self.PreparedAttackType ~= "Both" and self.PreparedAttackType ~= "Machine Gun")\nend',
		'default', 2400,
		'scale', "deg",
		'slider', true,
		'min', 1,
		'max', 5400,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "BuckshotConeAngle",
		'name', "Buckshot Cone Angle",
		'template', true,
		'extra_code', 'no_edit = function(self) return not table.find(self.AvailableAttacks, "Buckshot") end',
		'default', 1600,
		'scale', "deg",
		'min', 60,
		'max', 7200,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "BuckshotFalloffDamage",
		'name', "Buckshot Falloff Damage",
		'help', "what percent of nominal damage is the attack dealing at max range (cone length)",
		'template', true,
		'extra_code', 'no_edit = function(self) return not table.find(self.AvailableAttacks, "Buckshot") end',
		'default', 25,
		'scale', "%",
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "BuckshotFalloffStart",
		'name', "Buckshot Falloff Start",
		'help', "at what percent of the max distance (cone length) does the damage falloff start",
		'template', true,
		'extra_code', 'no_edit = function(self) return not table.find(self.AvailableAttacks, "Buckshot") end',
		'default', 50,
		'scale', "%",
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "Noise",
		'name', "Noise Range",
		'help', "Range (in tiles) in which the weapon alerts unaware enemies when firing.",
		'template', true,
		'default', 20,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefAccuracyChart', {
		'category', "Caliber",
		'id', "RangePenalty",
		'name', "Range Penalty",
		'dont_save', true,
		'template', true,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "General",
		'id', "HandSlot",
		'help', "One-haneded or two-handed weapon.",
		'template', true,
		'default', "OneHanded",
		'items', function (self) return { "OneHanded", "TwoHanded" } end,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "Entity",
		'template', true,
		'items', function (self) return GetWeaponEntities end,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "fxClass",
		'name', "FX Class",
		'help', "use to override the default fx class of this weapon",
		'template', true,
		'default', "",
		'items', function (self) return ItemTemplatesCombo("FirearmProperties") end,
	}),
	PlaceObj('PropertyDefNestedList', {
		'category', "Body & Components",
		'id', "ComponentSlots",
		'template', true,
		'base_class', "WeaponComponentSlot",
		'inclusive', true,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "Color",
		'template', true,
		'default', "Olive",
		'items', function (self) return Presets.WeaponColor.Default end,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Body & Components",
		'id', "BaseDifficulty",
		'help', 'Base difficulty value compared against the "Mechanical" skill.',
		'template', true,
		'min', 0,
		'max', 10000000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "HolsterSlot",
		'help', "By default Two Handed weapons go on shoulders, One Handed go to legs",
		'template', true,
		'default', "",
		'items', function (self) return { "", "Shoulder", "Leg" } end,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Body & Components",
		'id', "ModifyRightHandGrip",
		'template', true,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "General",
		'id', "PreparedAttackType",
		'name', "Prepared Attack Type",
		'template', true,
		'default', "Overwatch",
		'items', function (self) return { "Overwatch", "Pin Down", "None", "Both", "Machine Gun" } end,
	}),
	PlaceObj('PropertyDefPresetIdList', {
		'category', "General",
		'id', "AvailableAttacks",
		'name', "Available Attacks",
		'template', true,
		'preset_class', "CombatAction",
		'preset_group', "WeaponAttacks",
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "ActionPoints",
		'id', "ShootAP",
		'name', "Shoot",
		'help', "Action points needed to shoot a single shot",
		'template', true,
		'default', 1000,
		'scale', "AP",
		'min', 1000,
		'max', 50000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "ActionPoints",
		'id', "ReloadAP",
		'name', "Reload",
		'help', "Action points needed to reload the gun",
		'template', true,
		'default', 1000,
		'scale', "AP",
		'min', 1000,
		'max', 50000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "ActionPoints",
		'id', "MaxAimActions",
		'name', "Max Aim Actions",
		'help', "Max number of aim actions allowed",
		'default', 3,
		'min', 0,
		'max', 5,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Debug",
		'id', "SetRange",
		'name', "Range",
		'dont_save', true,
		'template', true,
		'default', 10,
		'slider', true,
		'min', 0,
		'max', 50,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Debug",
		'id', "DPS",
		'dont_save', true,
		'read_only', true,
		'template', true,
		'min', 0,
		'max', 1000,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetDPS",
		'code', function (self)
			return self:GetProperty("Damage") * Max(0, GetRangeAccuracy(self, self:GetProperty("SetRange")*const.SlabSizeX)) / 100
		end,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
		"MishapProperties",
		"ExplosiveProperties",
	},
	group = "Inventory",
	id = "GrenadeProperties",
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "BaseDamage",
		'name', "Base Damage",
		'template', true,
		'default', 20,
		'min', 0,
		'max', 200,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "Scatter",
		'help', "area in which the grenade may scatter defined as a radius in tiles.",
		'template', true,
		'default', 3,
		'min', 0,
		'max', 20,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "AttackAP",
		'name', "Attack AP",
		'help', "AP to throw the greanade",
		'template', true,
		'default', 6000,
		'scale', "AP",
		'step', 1000,
		'slider', true,
		'min', 1000,
		'max', 15000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "BaseRange",
		'name', "Throw Range (Min)",
		'help', "Number of tiles that this grenade can be thrown by a unit with 0 Strength.",
		'template', true,
		'default', 5,
		'min', -10,
		'max', 30,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "ThrowMaxRange",
		'name', "Throw Range (Max)",
		'help', "Number of tiles that this grenade can be thrown by a unit with 100 Strength.",
		'template', true,
		'default', 15,
		'min', -10,
		'max', 30,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Combat",
		'id', "CanBounce",
		'template', true,
		'default', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "InaccurateMinOffset",
		'name', "Min Offset (Inaccurate Throw)",
		'help', "Minimum distance to the target point for inaccurate throws, at 10 tiles",
		'template', true,
		'default', 1000,
		'scale', "m",
		'min', 1,
		'max', 20000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "InaccurateMaxOffset",
		'name', "Max Offset (Inaccurate Throw)",
		'help', "Maximum distance to the target point for inaccurate throws, at 10 tiles",
		'template', true,
		'default', 5000,
		'scale', "m",
		'min', 1,
		'max', 20000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "IgnoreCoverReduction",
		'name', "Ignore Cover Reduction",
		'help', "If > 0 attacks with this weapon will ignore the damage reduction that would normally apply for targets in cover.",
		'template', true,
		'default', 0,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "Noise",
		'name', "Noise",
		'help', "Range (in tiles) in which the explosion alerts unaware enemies.",
		'template', true,
		'default', 20,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "ThrowNoise",
		'name', "Throw Noise",
		'help', "Range (in tiles) in which items that do not explode immediately can still alert enemies when they land.",
		'template', true,
		'default', 3,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "Combat",
		'id', "aoeType",
		'name', "AOE Type",
		'help', "additional effect that happens after the explosion (optional)",
		'template', true,
		'default', "none",
		'items', function (self) return {"none", "fire", "smoke", "teargas", "toxicgas"} end,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "General",
		'id', "Entity",
		'read_only', true,
		'no_edit', true,
		'template', true,
		'items', function (self) return ClassDescendantsCombo("GrenadeVisual") end,
	}),
	PlaceObj('PropertyDefUIImage', {
		'category', "General",
		'id', "ActionIcon",
		'name', "Throw Action Icon",
		'template', true,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
		"MishapProperties",
	},
	group = "Inventory",
	id = "HeavyWeaponProperties",
	PlaceObj('PropertyDefCombo', {
		'category', "Caliber",
		'id', "Caliber",
		'template', true,
		'items', function (self) return PresetGroupCombo("Caliber", "Default") end,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "AttackAP",
		'name', "Attack AP",
		'help', "AP to throw the greanade",
		'template', true,
		'default', 6000,
		'scale', "AP",
		'step', 1000,
		'slider', true,
		'min', 1000,
		'max', 15000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "BombardRadius",
		'help', "defines the radius (in tiles) of the zone where the bombard ordnance can fall",
		'template', true,
		'default', 4,
		'min', 0,
		'max', 10,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNestedList', {
		'category', "Body & Components",
		'id', "ComponentSlots",
		'template', true,
		'base_class', "WeaponComponentSlot",
		'inclusive', true,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "Entity",
		'template', true,
		'items', function (self) return GetWeaponEntities end,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "InventoryItemProperties",
	PlaceObj('PropertyDefUIImage', {
		'category', "General",
		'id', "Icon",
		'template', true,
		'default', "",
		'image_preview_size', 400,
	}),
	PlaceObj('PropertyDefUIImage', {
		'category', "General",
		'id', "SubIcon",
		'help', "A small icon on the bootom left side of the item's icon",
		'template', true,
		'default', "",
		'image_preview_size', 30,
	}),
	PlaceObj('PropertyDefPresetId', {
		'category', "General",
		'id', "ItemType",
		'template', true,
		'preset_class', "WeaponType",
	}),
	PlaceObj('PropertyDefText', {
		'category', "General",
		'id', "DisplayName",
		'name', "Display Name",
		'template', true,
	}),
	PlaceObj('PropertyDefText', {
		'category', "General",
		'id', "DisplayNamePlural",
		'name', "Display Name Plural",
		'template', true,
	}),
	PlaceObj('PropertyDefPresetId', {
		'category', "General",
		'id', "colorStyle",
		'name', "Color Style",
		'template', true,
		'preset_class', "TextStyle",
	}),
	PlaceObj('PropertyDefText', {
		'category', "General",
		'id', "Description",
		'template', true,
		'lines', 1,
		'max_lines', 3,
	}),
	PlaceObj('PropertyDefText', {
		'category', "General",
		'id', "AdditionalHint",
		'name', "Additional Hint",
		'help', "Additional keywords text to add to item's rollover hint. Added after the autogenerated keyswors for weapons.",
		'template', true,
		'lines', 1,
		'max_lines', 10,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "General",
		'id', "LargeItem",
		'name', "Large",
		'template', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "General",
		'id', "Cumbersome",
		'template', true,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "General",
		'id', "UnitStat",
		'name', "Unit Stat",
		'help', "Unit Properties stat.",
		'template', true,
		'items', function (self) return GetUnitStatsCombo() end,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "General",
		'id', "is_valuable",
		'name', "Valuable Item (for VR only)",
		'help', "Will check whether to play the ValuableItemFound VR",
		'template', true,
	}),
	PlaceObj('PropertyDefButtons', {
		'category', "General",
		'id', "btnAddItem",
		'buttons', {
			PlaceObj('PropertyDefPropButton', {
				'Name', "Add To Current Unit",
				'FuncName', "UIPlaceInInventory",
			}),
		},
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "General",
		'id', "Cost",
		'help', "How much this item costs to buy in $",
		'template', true,
		'default', 1000,
		'min', 0,
		'max', 10000000,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefPresetId', {
		'category', "General",
		'id', "loot_def",
		'name', "LootDef",
		'help', "Loot def for the items ValuableItemContainer contains",
		'no_edit', "expression",
		'no_edit_expression', function (self) return self.object_class ~= "ValuableItemContainer" end,
		'template', true,
		'preset_class', "LootDef",
	}),
	PlaceObj('PropertyDefBool', {
		'category', "General",
		'id', "locked",
		'name', "Locked",
		'help', "Locked items cannot be moved from their slot. They also disappear when the bearer dies.",
		'template', true,
	}),
	PlaceObj('PropertyDefText', {
		'id', "owner",
		'name', "Owner",
		'help', "The item owner if any.",
		'translate', false,
	}),
	PlaceObj('PropertyDefText', {
		'id', "extra_tag",
		'help', "Extra data to identify unique items. Note that for stacking items this will be wiped when they're stacked.",
		'translate', false,
	}),
	PlaceObj('PropertyDefNumber', {
		'id', "base_drop_chance",
		'read_only', true,
		'no_edit', true,
		'default', 5,
	}),
	PlaceObj('PropertyDefNumber', {
		'id', "drop_chance",
		'read_only', true,
		'no_edit', true,
		'default', 0,
	}),
	PlaceObj('PropertyDefBool', {
		'id', "guaranteed_drop",
		'read_only', true,
		'no_edit', true,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetColoredName",
		'params', "plural",
		'code', function (self, plural)
			local style = TextStyles[self.colorStyle]
			if style then
				local r, g, b = GetRGB(style.TextColor)
				local colorTag = string.format("<color %i %i %i>", r, g, b)
				return T{236471449642, "<colorTag><name></color>", colorTag = colorTag, name = plural and self.DisplayNamePlural or self.DisplayName }
			else
				return plural and self.DisplayNamePlural or self.DisplayName
			end
		end,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetEquipCost",
		'code', function (self)
			return const["Action Point Costs"].EquipItem
		end,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetUIWidth",
		'code', function (self)
			return self.LargeItem and 2 or 1
		end,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetUIHeight",
		'code', function (self)
			return 1
		end,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetRolloverType",
		'code', function (self)
			return self.ItemType
		end,
	}),
})

PlaceObj('ClassDef', {
	group = "Inventory",
	id = "ItemUpgradeProperties",
	PlaceObj('PropertyDefCombo', {
		'id', "Slot",
		'template', true,
		'default', "Modification",
		'items', function (self) return {"Underslung", "Muzzle", "Sights", "Magazine", "Modification"} end,
	}),
})

PlaceObj('ClassDef', {
	group = "Inventory",
	id = "ItemWithCondition",
	PlaceObj('PropertyDefNumber', {
		'category', "Condition",
		'id', "Condition",
		'help', "The overall condition of the item which is lowered when the item is fired/hit",
		'template', true,
		'default', 100,
		'min', 0,
		'max', 10000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Condition",
		'id', "RepairCost",
		'name', "Repair Cost",
		'help', "How long it takes to repair the item using Mechanical skill. Each hour a mechanic contributes his/her skill towards repair. To increase Condition by 1 point the merc has to contribute this much points.",
		'template', true,
		'default', 80,
		'min', 0,
		'max', 1000,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Condition",
		'id', "Repairable",
		'name', "Repairable",
		'help', "Whether the item can be repaired",
		'template', true,
		'default', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Condition",
		'id', "Reliability",
		'help', "For guns. Percentage. How fast or slowly condition is lost when the gun is fired. High percentage means that the gun is more reliable.",
		'template', true,
		'extra_code', 'no_edit = function(self) local class = g_Classes[self.object_class or false]\nreturn not IsKindOf(class, "FirearmBase") end',
		'default', 40,
		'slider', true,
		'min', 0,
		'max', 98,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Condition",
		'id', "Degradation",
		'help', "For armors. When the armor is hit how much of the damage is transfered as condition loss.",
		'template', true,
		'extra_code', 'no_edit = function(self) local class = g_Classes[self.object_class or false]\nreturn not IsKindOf(class, "Armor") end',
		'default', 50,
		'slider', true,
		'min', 0,
		'max', 100,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Condition",
		'id', "repair_progress",
		'no_edit', true,
		'template', true,
		'default', 0,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Condition",
		'id', "ScrapParts",
		'name', "Scrap Parts",
		'help', "The number for Parts that are given to the player when its scraped",
		'template', true,
		'default', 0,
		'min', 0,
		'max', 1000,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "GetScrapParts",
		'code', function (self)
			return self.ScrapParts
		end,
	}),
	PlaceObj('ClassMethodDef', {
		'name', "AmountOfScrapPartsFromItem",
		'code', function (self)
			local parts = self:GetScrapParts()
			if self.Condition and self.Condition < 50 then
				parts = parts / 2
			end
			return parts
		end,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "MeleeWeaponProperties",
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "BaseChanceToHit",
		'name', "Base Chance To Hit",
		'help', "Multiplies chance to hit finaly. Used to define differently accurate weapon types.",
		'template', true,
		'default', 90,
		'slider', true,
		'min', 0,
		'max', 100,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "CritChance",
		'name', "Crit Chance",
		'help', "Base chance to cause a critical hit which deals more damage.",
		'template', true,
		'default', 0,
		'scale', "%",
		'slider', true,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "CritChanceScaled",
		'name', "Crit Chance (Scaled)",
		'help', "Additional chance to cause a critical hit (scaled by level, specified number is at merc level 10)",
		'template', true,
		'default', 10,
		'scale', "%",
		'slider', true,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "BaseDamage",
		'name', "Base Damage",
		'help', "Melee weapon damage scales based on damage. This property defines the base cost.",
		'template', true,
		'default', 10,
		'min', 0,
		'max', 200,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "AimAccuracy",
		'name', "Aim Accuracy",
		'help', "Base chance to hit increase per aim action",
		'template', true,
		'default', 2,
		'scale', "%",
		'min', 1,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "PenetrationClass",
		'help', "",
		'template', true,
		'extra_code', 'name = function(self) return "Penetration Class: " .. (PenetrationClassIds[self.PenetrationClass] or "") end',
		'default', 1,
		'slider', true,
		'min', 1,
		'max', 5,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "DamageMultiplier",
		'name', "Damage Multiplier",
		'help', "In %. Strength stat is multiplied by this percentage when multiplying melee damage",
		'template', true,
		'default', 200,
		'scale', "%",
		'min', 0,
		'max', 1000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "IgnoreCoverReduction",
		'name', "Ignore Cover Reduction",
		'help', "If > 0 attacks with this weapon will ignore the damage reduction that would normally apply for targets in cover.",
		'template', true,
		'default', 0,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Combat",
		'id', "CanThrow",
		'name', "Can Throw",
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "WeaponRange",
		'name', "Range",
		'help', "Range at which the penalty of the gun is 100.",
		'template', true,
		'extra_code', "no_edit = function(self) return not self.CanThrow end",
		'default', 8,
		'slider', true,
		'min', 1,
		'max', 20,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Combat",
		'id', "Charge",
		'template', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Combat",
		'id', "IsUnarmed",
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Action Points",
		'id', "AttackAP",
		'name', "Attack",
		'help', "Action Points needed to make a basic attack.",
		'template', true,
		'default', 5000,
		'scale', "AP",
		'min', 0,
		'max', 30000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Action Points",
		'id', "MaxAimActions",
		'name', "Max Aim Actions",
		'help', "Max number of allowed aim actions.",
		'template', true,
		'default', 2,
		'min', 0,
		'max', 4,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Melee Weapon",
		'id', "Noise",
		'help', "How much noise the weapon makes when attacking.",
		'template', true,
		'default', 100,
		'min', 0,
		'max', 1000,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "Melee Weapon",
		'id', "NeckAttackType",
		'template', true,
		'default', "bleed",
		'items', function (self) return {"choke", "bleed", "lethal"} end,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "Entity",
		'template', true,
		'items', function (self) return GetWeaponEntities end,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "fxClass",
		'name', "FX Class",
		'help', "use to override the default fx class of this weapon",
		'template', true,
		'default', "",
		'items', function (self) return ItemTemplatesCombo("MeleeWeaponProperties") end,
	}),
	PlaceObj('PropertyDefCombo', {
		'category', "Body & Components",
		'id', "HolsterSlot",
		'help', "By default Two Handed weapons go on shoulders, One Handed go to legs",
		'template', true,
		'default', "",
		'items', function (self) return { "", "Shoulder", "Leg" } end,
	}),
})

PlaceObj('ClassDef', {
	Comment = "On use/pickup effects",
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "MiscItemProperties",
	PlaceObj('PropertyDefChoice', {
		'category', "Execution",
		'id', "effect_moment",
		'name', "Effect moment",
		'template', true,
		'items', function (self) return InventoryItemEffectMoments end,
	}),
	PlaceObj('PropertyDefNestedList', {
		'category', "Execution",
		'id', "Effects",
		'help', "Effects that are executed when consuming an item.",
		'template', true,
		'base_class', "Effect",
	}),
	PlaceObj('PropertyDefText', {
		'category', "Execution",
		'id', "action_name",
		'name', "Name",
		'help', "Action name",
		'template', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Execution",
		'id', "destroy_item",
		'name', "Destroy item",
		'help', "Destroy item after execution.",
		'template', true,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Execution",
		'id', "onlyOnMap",
		'name', "Only on Map",
		'help', "Can be used only when the unit is on a loaded map.",
		'template', true,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Execution",
		'id', "APCost",
		'name', "AP Cost",
		'help', "How much does the item cost to use while in combat.",
		'template', true,
		'default', 2,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ExplosiveProperties",
	},
	group = "Inventory",
	id = "OrdnanceProperties",
	PlaceObj('PropertyDefCombo', {
		'category', "Caliber",
		'id', "Caliber",
		'template', true,
		'items', function (self) return PresetGroupCombo("Caliber", "Default") end,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Caliber",
		'id', "MaxStacks",
		'name', "Max Stacks",
		'help', "Ammo can stack up to that number.",
		'template', true,
		'default', 10,
		'slider', true,
		'min', 1,
		'max', 10000,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "BaseDamage",
		'name', "Base Damage",
		'template', true,
		'default', 20,
		'min', 0,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Combat",
		'id', "Noise",
		'name', "Noise",
		'help', "Range (in tiles) in which the explosion alerts unaware enemies.",
		'template', true,
		'default', 20,
		'min', 0,
		'max', 100,
		'modifiable', true,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "Combat",
		'id', "aoeType",
		'name', "AOE Type",
		'help', "additional effect that happens after the explosion (optional)",
		'template', true,
		'default', "none",
		'items', function (self) return {"none", "fire", "smoke", "teargas", "toxicgas"} end,
	}),
	PlaceObj('PropertyDefBool', {
		'category', "Combat",
		'id', "CanBounce",
		'template', true,
	}),
	PlaceObj('PropertyDefChoice', {
		'category', "General",
		'id', "Entity",
		'read_only', true,
		'no_edit', true,
		'template', true,
		'items', function (self) return ClassDescendantsCombo("GrenadeVisual") end,
	}),
})

PlaceObj('ClassDef', {
	group = "Inventory",
	id = "QuestItemProperties",
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "StatBoostItemProperties",
	PlaceObj('PropertyDefChoice', {
		'category', "Stat boost item",
		'id', "stat",
		'name', "Stat",
		'template', true,
		'items', function (self) return GetUnitStatsCombo end,
	}),
	PlaceObj('PropertyDefNumber', {
		'category', "Stat boost item",
		'id', "boost",
		'name', "Boost value",
		'template', true,
	}),
})

PlaceObj('ClassDef', {
	DefParentClassList = {
		"ItemWithCondition",
	},
	group = "Inventory",
	id = "TransmutedItemProperties",
	PlaceObj('PropertyDefPresetId', {
		'id', "OriginalItemId",
		'preset_class', "InventoryItemCompositeDef",
	}),
	PlaceObj('PropertyDefCombo', {
		'id', "RevertCondition",
		'items', function (self) return {"attacks", "damage"} end,
	}),
	PlaceObj('PropertyDefNumber', {
		'id', "RevertConditionCounter",
	}),
	PlaceObj('ClassMethodDef', {
		'name', "MakeTransmutation",
		'params', "fromitem",
		'code', function (self, fromitem)
			local new_item, prev_item
			if fromitem =="revert" then
				new_item = PlaceInventoryItem(self.OriginalItemId)
				prev_item = self
			else
				new_item = self
				prev_item = fromitem
			end
			new_item.Condition = prev_item.Condition
			return new_item, prev_item
		end,
	}),
})


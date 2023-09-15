-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Strength",
	'Id', "BloodlustPerk",
	'SortKey', 3,
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "Str_to_bonus_dmg_conversion",
			'Value', 50,
			'Tag', "<Str_to_bonus_dmg_conversion>",
		}),
	},
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "UnitBeginTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitBeginTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				unit:SetEffectValue("bloodlust_last_target", nil)
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(unit, "StatusEffectObject") and unit:HasStatusEffect(id) then
						exec(self, unit)
					end
				else
					exec(self, unit)
				end
				
			end,
			HandlerCode = function (self, unit)
				unit:SetEffectValue("bloodlust_last_target", nil)
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "OnAttack",
			Handler = function (self, attacker, action, target, results, attack_args)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnAttack")
				if not reaction_idx then return end
				
				local function exec(self, attacker, action, target, results, attack_args)
				if action.ActionType ~= "Melee Attack" or not IsValid(target) or not IsKindOf(target, "Unit") then
					attacker:SetEffectValue("bloodlust_last_target", nil)
					return
				end
				attacker:SetEffectValue("bloodlust_last_target", target.handle)
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, action, target, results, attack_args)
					end
				else
					exec(self, attacker, action, target, results, attack_args)
				end
				
			end,
			HandlerCode = function (self, attacker, action, target, results, attack_args)
				if action.ActionType ~= "Melee Attack" or not IsValid(target) or not IsKindOf(target, "Unit") then
					attacker:SetEffectValue("bloodlust_last_target", nil)
					return
				end
				attacker:SetEffectValue("bloodlust_last_target", target.handle)
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "GatherDamageModifications",
			Handler = function (self, attacker, target, attack_args, hit_descr, mod_data)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "GatherDamageModifications")
				if not reaction_idx then return end
				
				local function exec(self, attacker, target, attack_args, hit_descr, mod_data)
				local last_target = attacker:GetEffectValue("bloodlust_last_target")
				local action = CombatActions[mod_data.action_id or false]
				if action and action.ActionType == "Melee Attack" and last_target and IsKindOf(target, "Unit") and target.handle ~= last_target then
					local bonus = MulDivRound(attacker.Strength, BloodlustPerk:ResolveValue("Str_to_bonus_dmg_conversion"), 100)
					mod_data.base_damage = MulDivRound(mod_data.base_damage, 100 + bonus, 100)
					mod_data.breakdown[#mod_data.breakdown + 1] = { name = self.DisplayName, value = bonus }
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, target, attack_args, hit_descr, mod_data)
					end
				else
					exec(self, attacker, target, attack_args, hit_descr, mod_data)
				end
				
			end,
			HandlerCode = function (self, attacker, target, attack_args, hit_descr, mod_data)
				local last_target = attacker:GetEffectValue("bloodlust_last_target")
				local action = CombatActions[mod_data.action_id or false]
				if action and action.ActionType == "Melee Attack" and last_target and IsKindOf(target, "Unit") and target.handle ~= last_target then
					local bonus = MulDivRound(attacker.Strength, BloodlustPerk:ResolveValue("Str_to_bonus_dmg_conversion"), 100)
					mod_data.base_damage = MulDivRound(mod_data.base_damage, 100 + bonus, 100)
					mod_data.breakdown[#mod_data.breakdown + 1] = { name = self.DisplayName, value = bonus }
				end
			end,
		}),
	},
	'DisplayName', T(700118302261, --[[CharacterEffectCompositeDef BloodlustPerk DisplayName]] "Killing Spree"),
	'Description', T(419165368911, --[[CharacterEffectCompositeDef BloodlustPerk Description]] "Subsequent <em>Melee Attacks</em> against <em>different targets</em> during the same turn deal <em><percent(StatPercent('Strength', Str_to_bonus_dmg_conversion))></em> extra <em>Damage</em> (based on Strength)."),
	'Icon', "UI/Icons/Perks/BloodlustPerk",
	'Tier', "Bronze",
	'Stat', "Strength",
	'StatValue', 70,
})


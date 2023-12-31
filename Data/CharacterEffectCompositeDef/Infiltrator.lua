-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Dexterity",
	'Id', "Infiltrator",
	'SortKey', 6,
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "stealthkill_chance",
			'Value', 10,
			'Tag', "<stealthkill_chance>%",
		}),
	},
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "OnAttack",
			Handler = function (self, attacker, action, target, results, attack_args)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnAttack")
				if not reaction_idx then return end
				
				local function exec(self, attacker, action, target, results, attack_args)
				if IsValidTarget(target) and results.stealth_attack and not results.miss then
					target:AddStatusEffect("Suppressed")
				end
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
				if IsValidTarget(target) and results.stealth_attack and not results.miss then
					target:AddStatusEffect("Suppressed")
				end
			end,
		}),
	},
	'DisplayName', T(678452815319, --[[CharacterEffectCompositeDef Infiltrator DisplayName]] "Ambusher"),
	'Description', T(641597085720, --[[CharacterEffectCompositeDef Infiltrator Description]] "Gain slightly increased chance for extra <GameTerm('StealthKills')> while <GameTerm('Sneaking')>.\n\nEnemies surviving from <GameTerm('StealthKills')> are <GameTerm('Suppressed')>."),
	'Icon', "UI/Icons/Perks/Infiltrator",
	'Tier', "Silver",
	'Stat', "Dexterity",
	'StatValue', 80,
})


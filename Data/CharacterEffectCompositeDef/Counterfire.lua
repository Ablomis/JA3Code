-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Dexterity",
	'Id', "Counterfire",
	'SortKey', 4,
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "hitsRequired",
			'Value', 2,
			'Tag', "<hitsRequired>",
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
				if attack_args and attack_args.opportunity_attack_type == "Overwatch" and not results.miss then
					attacker:AddStatusEffect("CounterfireCounter")
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
				if attack_args and attack_args.opportunity_attack_type == "Overwatch" and not results.miss then
					attacker:AddStatusEffect("CounterfireCounter")
				end
			end,
		}),
	},
	'DisplayName', T(680739063564, --[[CharacterEffectCompositeDef Counterfire DisplayName]] "Fire Routine"),
	'Description', T(857967049165, --[[CharacterEffectCompositeDef Counterfire Description]] "Become <GameTerm('Inspired')> after you land <em><hitsRequired> hits</em> while in <GameTerm('Overwatch')>."),
	'Icon', "UI/Icons/Perks/Counterfire",
	'Tier', "Silver",
	'Stat', "Dexterity",
	'StatValue', 80,
})


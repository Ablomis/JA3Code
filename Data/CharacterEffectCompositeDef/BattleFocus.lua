-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Health",
	'Id', "BattleFocus",
	'SortKey', 9,
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "battleFocusAP",
			'Value', 2,
			'Tag', "<battleFocusAP>",
		}),
	},
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "DamageTaken",
			Handler = function (self, attacker, target, dmg, hit_descr)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "DamageTaken")
				if not reaction_idx then return end
				
				local function exec(self, attacker, target, dmg, hit_descr)
				target:AddStatusEffect("BattleFocusBuff")
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(target, "StatusEffectObject") and target:HasStatusEffect(id) then
						exec(self, attacker, target, dmg, hit_descr)
					end
				else
					exec(self, attacker, target, dmg, hit_descr)
				end
				
			end,
			HandlerCode = function (self, attacker, target, dmg, hit_descr)
				target:AddStatusEffect("BattleFocusBuff")
			end,
		}),
	},
	'DisplayName', T(822626767198, --[[CharacterEffectCompositeDef BattleFocus DisplayName]] "Battle Focus"),
	'Description', T(235322784555, --[[CharacterEffectCompositeDef BattleFocus Description]] "Gain <em><battleFocusAP></em> <em>AP</em> when <em>hit</em> by an enemy for the <em>first</em> time.\n\nEnds at the end of combat."),
	'Icon', "UI/Icons/Perks/BattleFocus",
	'Tier', "Gold",
	'Stat', "Health",
	'StatValue', 90,
})

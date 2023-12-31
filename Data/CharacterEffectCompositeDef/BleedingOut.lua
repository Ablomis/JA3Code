-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "BleedingOut",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "add_penalty",
			'Value', -20,
			'Tag', "<add_penalty>",
		}),
	},
	'Comment', "replaces Downed if not treated",
	'object_class', "CharacterEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "UnitEndTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitEndTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				if not IsInCombat() then return end
				if not RollSkillCheck(unit, "Health", nil, unit.downed_check_penalty) then
					CombatLog("important", T{290150299208, "<em><LogName></em> has <em>bled out</em>", unit})
					unit:TakeDirectDamage(unit:GetTotalHitPoints())
				else
					unit.downed_check_penalty = unit.downed_check_penalty + self:ResolveValue("add_penalty")
					CombatLog("short", T{333799512710, "<em><LogName></em> is <em>bleeding</em>", unit})
				end
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
				if not IsInCombat() then return end
				if not RollSkillCheck(unit, "Health", nil, unit.downed_check_penalty) then
					CombatLog("important", T{290150299208, "<em><LogName></em> has <em>bled out</em>", unit})
					unit:TakeDirectDamage(unit:GetTotalHitPoints())
				else
					unit.downed_check_penalty = unit.downed_check_penalty + self:ResolveValue("add_penalty")
					CombatLog("short", T{333799512710, "<em><LogName></em> is <em>bleeding</em>", unit})
				end
			end,
		}),
	},
	'Conditions', {
		PlaceObj('CombatIsActive', {}),
	},
	'DisplayName', T(833314215129, --[[CharacterEffectCompositeDef BleedingOut DisplayName]] "Downed"),
	'Description', T(588355193847, --[[CharacterEffectCompositeDef BleedingOut Description]] "This character is in <em>Critical condition</em> and will bleed out unless treated with the <em>Bandage</em> action. The character remains alive if a successful check against Health is made next turn."),
	'Icon', "UI/Hud/Status effects/bleedingout",
	'Shown', true,
})


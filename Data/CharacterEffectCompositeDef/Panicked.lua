-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "Panicked",
	'SortKey', 100,
	'Comment', "morale effect",
	'object_class', "CharacterEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "StatusEffectAdded",
			Handler = function (self, obj, id, stacks)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectAdded")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks)
				obj:RemoveStatusEffect("Berserk")
				if IsKindOf(obj, "Unit") then
					obj:InterruptPreparedAttack()
					if g_Teams[g_CurrentTeam] == obj.team then
						ScheduleMoraleActions()
					end
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks) end
				
			end,
			HandlerCode = function (self, obj, id, stacks)
				obj:RemoveStatusEffect("Berserk")
				if IsKindOf(obj, "Unit") then
					obj:InterruptPreparedAttack()
					if g_Teams[g_CurrentTeam] == obj.team then
						ScheduleMoraleActions()
					end
				end
			end,
		}),
	},
	'Conditions', {
		PlaceObj('CombatIsActive', {}),
	},
	'DisplayName', T(179133370621, --[[CharacterEffectCompositeDef Panicked DisplayName]] "Panicked"),
	'Description', T(583680307590, --[[CharacterEffectCompositeDef Panicked Description]] "Uncontrollable. Runs away from the enemies."),
	'AddEffectText', T(629484886928, --[[CharacterEffectCompositeDef Panicked AddEffectText]] "<em><DisplayName></em> panicked"),
	'RemoveEffectText', T(633681873712, --[[CharacterEffectCompositeDef Panicked RemoveEffectText]] "<em><DisplayName></em> calmed down from the Panic"),
	'lifetime', "Until End of Next Turn",
	'Icon', "UI/Hud/Status effects/panic",
	'RemoveOnEndCombat', true,
	'Shown', true,
	'HasFloatingText', true,
})


-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "Darkness",
	'object_class', "CharacterEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "StatusEffectAdded",
			Handler = function (self, obj, id, stacks)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectAdded")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks)
				if IsKindOf(obj, "Unit") then
					--obj:ClearHierarchyGameFlags(const.gofUnitLighting)
					obj:SetHighlightReason("darkness", true)
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks) end
				
			end,
			HandlerCode = function (self, obj, id, stacks)
				if IsKindOf(obj, "Unit") then
					--obj:ClearHierarchyGameFlags(const.gofUnitLighting)
					obj:SetHighlightReason("darkness", true)
				end
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "StatusEffectRemoved",
			Handler = function (self, obj, id, stacks, reason)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectRemoved")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks, reason)
				if IsKindOf(obj, "Unit") then
					obj:SetHighlightReason("darkness", nil)
					--obj:SetHierarchyGameFlags(const.gofUnitLighting)
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks, reason) end
				
			end,
			HandlerCode = function (self, obj, id, stacks, reason)
				if IsKindOf(obj, "Unit") then
					obj:SetHighlightReason("darkness", nil)
					--obj:SetHierarchyGameFlags(const.gofUnitLighting)
				end
			end,
		}),
		PlaceObj('MsgReactionEffects', {
			Effects = {
				PlaceObj('ConditionalEffect', {
					'Effects', {
						PlaceObj('ExecuteCode', {
							Code = function (self, obj)
								if IsKindOf(obj, "Unit") then
									obj:SetHighlightReason("darkness", true)
								end
							end,
							SaveAsText = false,
						}),
					},
				}),
			},
			Event = "EnterSector",
			Handler = function (self, game_start, load_game)
				CE_ExecReactionEffects(self, "EnterSector")
			end,
		}),
	},
	'DisplayName', T(770333565093, --[[CharacterEffectCompositeDef Darkness DisplayName]] "In Darkness"),
	'Description', "",
	'Icon', "UI/Hud/Status effects/darkness",
})


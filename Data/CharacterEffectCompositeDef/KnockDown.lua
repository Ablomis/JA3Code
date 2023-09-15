-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "System",
	'Id', "KnockDown",
	'object_class', "CharacterEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "StatusEffectAdded",
			Handler = function (self, obj, id, stacks)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectAdded")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks)
				if not IsKindOf(obj, "Unit") then return end
				if CurrentThread() == obj.command_thread then
					obj:KnockDown()
				else
					obj:SetCommand("KnockDown")
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks) end
				
			end,
			HandlerCode = function (self, obj, id, stacks)
				if not IsKindOf(obj, "Unit") then return end
				if CurrentThread() == obj.command_thread then
					obj:KnockDown()
				else
					obj:SetCommand("KnockDown")
				end
			end,
		}),
	},
	'lifetime', "Until End of Turn",
	'RemoveOnEndCombat', true,
})


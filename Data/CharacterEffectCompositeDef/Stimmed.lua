-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Id', "Stimmed",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "apGain",
			'Value', 4,
			'Tag', "<apGain>",
		}),
	},
	'object_class', "CharacterEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "StatusEffectAdded",
			Handler = function (self, obj, id, stacks)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectAdded")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks)
				obj:GainAP(self:ResolveValue("apGain") * const.Scale.AP)
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks) end
				
			end,
			HandlerCode = function (self, obj, id, stacks)
				obj:GainAP(self:ResolveValue("apGain") * const.Scale.AP)
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "StatusEffectRemoved",
			Handler = function (self, obj, id, stacks, reason)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectRemoved")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks, reason)
				obj:ChangeTired(1)
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks, reason) end
				
			end,
			HandlerCode = function (self, obj, id, stacks, reason)
				obj:ChangeTired(1)
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "UnitBeginTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitBeginTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				unit:GainAP(self:ResolveValue("apGain") * const.Scale.AP)
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
				unit:GainAP(self:ResolveValue("apGain") * const.Scale.AP)
			end,
		}),
	},
	'DisplayName', T(956639952366, --[[CharacterEffectCompositeDef Stimmed DisplayName]] "Stimmed"),
	'Description', T(492247339724, --[[CharacterEffectCompositeDef Stimmed Description]] "Gain <em><apGain> AP</em>. Lose <GameTerm('Energy')> after the effect wears off."),
	'lifetime', "Until End of Next Turn",
	'Icon', "UI/Hud/Status effects/stimmed",
	'RemoveOnEndCombat', true,
	'Shown', true,
	'HasFloatingText', true,
})


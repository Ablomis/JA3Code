-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "ShoulderToShoulder",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "tempHp",
			'Value', 15,
			'Tag', "<tempHp>",
		}),
	},
	'Comment', "Scully - Grit when next to an ally",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "UnitEndTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitEndTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				local proc = false
				local obj = unit
				for _, unit in ipairs(g_Units) do
					if obj.session_id ~= unit.session_id and obj:IsAdjacentTo(unit) and obj.team:IsAllySide(unit.team) then
						unit:ApplyTempHitPoints(self:ResolveValue("tempHp"))
						proc = true
					end
				end
				if proc then
					obj:ApplyTempHitPoints(self:ResolveValue("tempHp"))
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
				local proc = false
				local obj = unit
				for _, unit in ipairs(g_Units) do
					if obj.session_id ~= unit.session_id and obj:IsAdjacentTo(unit) and obj.team:IsAllySide(unit.team) then
						unit:ApplyTempHitPoints(self:ResolveValue("tempHp"))
						proc = true
					end
				end
				if proc then
					obj:ApplyTempHitPoints(self:ResolveValue("tempHp"))
				end
			end,
		}),
	},
	'DisplayName', T(157949271296, --[[CharacterEffectCompositeDef ShoulderToShoulder DisplayName]] "Shoulder to Shoulder"),
	'Description', T(653169257176, --[[CharacterEffectCompositeDef ShoulderToShoulder Description]] "Ending a turn <em>adjacent</em> to an <em>ally</em> grants <em><tempHp></em> <GameTerm('Grit')> to both Scully and the ally."),
	'Icon', "UI/Icons/Perks/ShoulderToShoulder",
	'Tier', "Personal",
})

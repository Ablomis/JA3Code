-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "TagTeam",
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "accuracyBonus",
			'Value', 15,
			'Tag', "<accuracyBonus>%",
		}),
	},
	'Comment', "Raider - Bonus against enemies in Overwatch cone of ally",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "GatherCTHModifications",
			Handler = function (self, attacker, cth_id, data)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "GatherCTHModifications")
				if not reaction_idx then return end
				
				local function exec(self, attacker, cth_id, data)
				if cth_id == self.id and IsKindOf(data.target, "Unit") and data.target:IsThreatened(GetAllEnemyUnits(data.target), "overwatch") then
					data.mod_add = data.mod_add + self:ResolveValue("accuracyBonus")
					data.display_name = T{776394275735, "Perk: <name>", name = self.DisplayName}
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, cth_id, data)
					end
				else
					exec(self, attacker, cth_id, data)
				end
				
			end,
			HandlerCode = function (self, attacker, cth_id, data)
				if cth_id == self.id and IsKindOf(data.target, "Unit") and data.target:IsThreatened(GetAllEnemyUnits(data.target), "overwatch") then
					data.mod_add = data.mod_add + self:ResolveValue("accuracyBonus")
					data.display_name = T{776394275735, "Perk: <name>", name = self.DisplayName}
				end
			end,
		}),
	},
	'DisplayName', T(786595073425, --[[CharacterEffectCompositeDef TagTeam DisplayName]] "Tag Team"),
	'Description', T(804189996555, --[[CharacterEffectCompositeDef TagTeam Description]] "Bonus <em>Accuracy</em> against enemies within the <GameTerm('Overwatch')> area of an ally."),
	'Icon', "UI/Icons/Perks/TagTeam",
	'Tier', "Personal",
})


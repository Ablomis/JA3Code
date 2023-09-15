-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Specialization",
	'Id', "AutoWeapons",
	'SortKey', 100,
	'Parameters', {
		PlaceObj('PresetParamPercent', {
			'Name', "automatics_penalty_reduction",
			'Value', 50,
			'Tag', "<automatics_penalty_reduction>%",
		}),
	},
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "GatherCTHModifications",
			Handler = function (self, attacker, cth_id, data)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "GatherCTHModifications")
				if not reaction_idx then return end
				
				local function exec(self, attacker, cth_id, data)
				if cth_id == "Autofire" then
					data.meta_text[#data.meta_text+1] = T{776394275735, "Perk: <name>", name = self.DisplayName}
					data.mod_mul = AutoWeapons:ResolveValue("automatics_penalty_reduction")
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
				if cth_id == "Autofire" then
					data.meta_text[#data.meta_text+1] = T{776394275735, "Perk: <name>", name = self.DisplayName}
					data.mod_mul = AutoWeapons:ResolveValue("automatics_penalty_reduction")
				end
			end,
		}),
	},
	'DisplayName', T(971350457853, --[[CharacterEffectCompositeDef AutoWeapons DisplayName]] "Auto Weapons"),
	'Description', T(938747433410, --[[CharacterEffectCompositeDef AutoWeapons Description]] "Reduced <em>Accuracy</em> penalty when using <em>Burst Fire</em> or <em>Full Auto</em>."),
	'Icon', "UI/Icons/Perks/AutoWeapons",
	'Tier', "Specialization",
})


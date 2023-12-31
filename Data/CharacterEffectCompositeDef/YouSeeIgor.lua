-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Group', "Perk-Personal",
	'Id', "YouSeeIgor",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "APRestore",
			'Value', 3,
			'Tag', "<APRestore>",
		}),
	},
	'Comment', "Ivan - 3 AP restored on Kill",
	'object_class', "Perk",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "OnKill",
			Handler = function (self, attacker, killedUnits)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnKill")
				if not reaction_idx then return end
				
				local function exec(self, attacker, killedUnits)
				if HasPerk(attacker, self.id) then
					local ap = self:ResolveValue("APRestore") * #killedUnits * const.Scale.AP
					attacker:GainAP(ap)
				end
				end
				local id = GetCharacterEffectId(self)
				
				if id then
					if IsKindOf(attacker, "StatusEffectObject") and attacker:HasStatusEffect(id) then
						exec(self, attacker, killedUnits)
					end
				else
					exec(self, attacker, killedUnits)
				end
				
			end,
			HandlerCode = function (self, attacker, killedUnits)
				if HasPerk(attacker, self.id) then
					local ap = self:ResolveValue("APRestore") * #killedUnits * const.Scale.AP
					attacker:GainAP(ap)
				end
			end,
		}),
	},
	'DisplayName', T(532826806041, --[[CharacterEffectCompositeDef YouSeeIgor DisplayName]] "You see, Igor..."),
	'Description', T(364645895305, --[[CharacterEffectCompositeDef YouSeeIgor Description]] "Regain <em><APRestore> AP</em> after each <em>kill</em>."),
	'Icon', "UI/Icons/Perks/YouSeeIgor",
	'Tier', "Personal",
})


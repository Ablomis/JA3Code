-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Id', "Conscience_Proud",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "days",
			'Value', 1,
			'Tag', "<days>",
		}),
		PlaceObj('PresetParamPercent', {
			'Name', "increase",
			'Value', 15,
			'Tag', "<increase>%",
		}),
	},
	'Comment', "conversations related",
	'object_class', "StatusEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "StatusEffectAdded",
			Handler = function (self, obj, id, stacks)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectAdded")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks)
				if IsKindOf(obj, "Unit") then
					local effect = obj:GetStatusEffect(self.id)
					effect:SetParameter("proud_start_time", Game.CampaignTime)
					
					--local procentCalc = 1000+self:ResolveValue("increase")*10
					--local stats = UnitPropertiesStats:GetProperties()
					--for i, stat in ipairs(stats) do
						--obj:AddModifier("proud_" .. stat.id, stat.id, procentCalc)
					--end
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks) end
				
			end,
			HandlerCode = function (self, obj, id, stacks)
				if IsKindOf(obj, "Unit") then
					local effect = obj:GetStatusEffect(self.id)
					effect:SetParameter("proud_start_time", Game.CampaignTime)
					
					--local procentCalc = 1000+self:ResolveValue("increase")*10
					--local stats = UnitPropertiesStats:GetProperties()
					--for i, stat in ipairs(stats) do
						--obj:AddModifier("proud_" .. stat.id, stat.id, procentCalc)
					--end
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
					obj:SetEffectValue("proud_start_time", false)
					
					--local stats = UnitPropertiesStats:GetProperties()
					--for i, stat in ipairs(stats) do
						--obj:RemoveModifier("proud_" .. stat.id, stat.id)
					--end
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks, reason) end
				
			end,
			HandlerCode = function (self, obj, id, stacks, reason)
				if IsKindOf(obj, "Unit") then
					obj:SetEffectValue("proud_start_time", false)
					
					--local stats = UnitPropertiesStats:GetProperties()
					--for i, stat in ipairs(stats) do
						--obj:RemoveModifier("proud_" .. stat.id, stat.id)
					--end
				end
			end,
		}),
		PlaceObj('MsgReactionEffects', {
			Effects = {
				PlaceObj('ConditionalEffect', {
					'Effects', {
						PlaceObj('ExecuteCode', {
							Code = function (self, obj)
								local effect = obj:GetStatusEffect("Conscience_Proud")
								local duration = effect:ResolveValue("days")
								local startTime = effect:ResolveValue("proud_start_time") or 0
								
								local dayStarted = GetTimeAsTable(startTime)
								dayStarted = dayStarted and dayStarted.day
								
								local dayNow = GetTimeAsTable(Game.CampaignTime)
								dayNow = dayNow and dayNow.day
								
								-- Intentionally check if days have passed calendar, and not time wise.
								if dayNow - dayStarted >= duration then
									obj:RemoveStatusEffect("Conscience_Proud")
								end
							end,
							FuncCode = 'local effect = obj:GetStatusEffect("Conscience_Proud")\nlocal duration = effect:ResolveValue("days")\nlocal startTime = effect:ResolveValue("proud_start_time") or 0\n\nlocal dayStarted = GetTimeAsTable(startTime)\ndayStarted = dayStarted and dayStarted.day\n\nlocal dayNow = GetTimeAsTable(Game.CampaignTime)\ndayNow = dayNow and dayNow.day\n\n-- Intentionally check if days have passed calendar, and not time wise.\nif dayNow - dayStarted >= duration then\n	obj:RemoveStatusEffect("Conscience_Proud")\nend',
							SaveAsText = false,
						}),
					},
				}),
			},
			Event = "SatelliteTick",
			Handler = function (self)
				CE_ExecReactionEffects(self, "SatelliteTick")
			end,
		}),
	},
	'DisplayName', T(890779283521, --[[CharacterEffectCompositeDef Conscience_Proud DisplayName]] "Proud"),
	'Description', T(106460359100, --[[CharacterEffectCompositeDef Conscience_Proud Description]] "Gained 1 Morale for a day."),
	'AddEffectText', T(661568993220, --[[CharacterEffectCompositeDef Conscience_Proud AddEffectText]] "<em><DisplayName></em> is feeling proud and gained Morale"),
	'type', "Buff",
	'Icon', "UI/Hud/Status effects/well_rested",
	'HasFloatingText', true,
})

-- ========== GENERATED BY CharacterEffectCompositeDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('CharacterEffectCompositeDef', {
	'Id', "Choking",
	'Parameters', {
		PlaceObj('PresetParamNumber', {
			'Name', "damage",
			'Value', 30,
			'Tag', "<damage>",
		}),
	},
	'Comment', "environmental effect (toxic gas)",
	'object_class', "CharacterEffect",
	'msg_reactions', {
		PlaceObj('MsgReaction', {
			Event = "StatusEffectAdded",
			Handler = function (self, obj, id, stacks)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "StatusEffectAdded")
				if not reaction_idx then return end
				
				local function exec(self, obj, id, stacks)
				if IsKindOf(obj, "Unit") then
					obj:SetEffectValue("choking_start_time", GameTime())
					ObjModified(obj)
				
					if obj:IsMerc() then
						PlayVoiceResponse(obj, "GasAreaSelection")
					else
						PlayVoiceResponse(obj, "AIGasAreaSelection")
					end
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks) end
				
			end,
			HandlerCode = function (self, obj, id, stacks)
				if IsKindOf(obj, "Unit") then
					obj:SetEffectValue("choking_start_time", GameTime())
					ObjModified(obj)
				
					if obj:IsMerc() then
						PlayVoiceResponse(obj, "GasAreaSelection")
					else
						PlayVoiceResponse(obj, "AIGasAreaSelection")
					end
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
					obj:SetEffectValue("choking_start_time") 
					ObjModified(obj)
				end
				end
				local _id = GetCharacterEffectId(self)
				if _id == id then exec(self, obj, id, stacks, reason) end
				
			end,
			HandlerCode = function (self, obj, id, stacks, reason)
				if IsKindOf(obj, "Unit") then
					obj:SetEffectValue("choking_start_time") 
					ObjModified(obj)
				end
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "UnitBeginTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitBeginTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				if unit:IsMerc() then
					PlayVoiceResponse(unit, "GasAreaSelection")
				else
					PlayVoiceResponse(unit, "AIGasAreaSelection")
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
				if unit:IsMerc() then
					PlayVoiceResponse(unit, "GasAreaSelection")
				else
					PlayVoiceResponse(unit, "AIGasAreaSelection")
				end
			end,
		}),
		PlaceObj('MsgReaction', {
			Event = "UnitEndTurn",
			Handler = function (self, unit)
				local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitEndTurn")
				if not reaction_idx then return end
				
				local function exec(self, unit)
				if not unit:IsDead() then
					EnvEffectToxicGasTick(unit, nil, "end turn")
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
				if not unit:IsDead() then
					EnvEffectToxicGasTick(unit, nil, "end turn")
				end
			end,
		}),
	},
	'DisplayName', T(720153419307, --[[CharacterEffectCompositeDef Choking DisplayName]] "Choking"),
	'Description', T(120652127957, --[[CharacterEffectCompositeDef Choking Description]] "This character will <em>take <damage> damage</em> at the end of their turn. The character also <em>loses Energy</em>."),
	'AddEffectText', T(478064574365, --[[CharacterEffectCompositeDef Choking AddEffectText]] "<em><DisplayName></em> is choking"),
	'type', "Debuff",
	'Icon', "UI/Hud/Status effects/choking",
	'RemoveOnEndCombat', true,
	'RemoveOnSatViewTravel', true,
	'RemoveOnCampaignTimeAdvance', true,
	'Shown', true,
	'HasFloatingText', true,
})

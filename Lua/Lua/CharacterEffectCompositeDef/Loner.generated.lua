UndefineClass("Loner")
DefineClass.Loner = {
  __parents = {"Perk"},
  __generated_by_class = "CharacterEffectCompositeDef",
  object_class = "Perk",
  msg_reactions = {
    PlaceObj("MsgReaction", {
      Event = "UnitBeginTurn",
      Handler = function(self, unit)
        local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "UnitBeginTurn")
        if not reaction_idx then
          return
        end
        local exec = function(self, unit)
          local proc = true
          for _, other in ipairs(unit.team.units) do
            if unit ~= other and DivRound(unit:GetDist(other), const.SlabSizeX) <= self:ResolveValue("loner_radius") then
              proc = false
              break
            end
          end
          if proc then
            unit:AddStatusEffect("Inspired")
            PlayVoiceResponse(unit, "Loner")
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
      HandlerCode = function(self, unit)
        local proc = true
        for _, other in ipairs(unit.team.units) do
          if unit ~= other and DivRound(unit:GetDist(other), const.SlabSizeX) <= self:ResolveValue("loner_radius") then
            proc = false
            break
          end
        end
        if proc then
          unit:AddStatusEffect("Inspired")
          PlayVoiceResponse(unit, "Loner")
        end
      end,
      param_bindings = false
    })
  },
  DisplayName = T(487342591563, "Loner"),
  Description = T(124325843871, "Become <GameTerm('Inspired')> when there are no teammates <em>in your vicinity</em> at turn start."),
  Icon = "UI/Icons/Perks/Loner",
  Tier = "Quirk"
}


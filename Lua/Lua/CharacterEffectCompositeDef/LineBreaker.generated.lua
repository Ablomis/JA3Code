UndefineClass("LineBreaker")
DefineClass.LineBreaker = {
  __parents = {"Perk"},
  __generated_by_class = "CharacterEffectCompositeDef",
  object_class = "Perk",
  msg_reactions = {
    PlaceObj("MsgReaction", {
      Event = "OnKill",
      Handler = function(self, attacker, killedUnits)
        local reaction_idx = table.find(self.msg_reactions or empty_table, "Event", "OnKill")
        if not reaction_idx then
          return
        end
        local exec = function(self, attacker, killedUnits)
          if HasPerk(attacker, self.id) then
            for _, unit in ipairs(killedUnits) do
              if attacker:IsPointBlankRange(unit) then
                attacker:AddStatusEffect("Inspired")
                break
              end
            end
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
      HandlerCode = function(self, attacker, killedUnits)
        if HasPerk(attacker, self.id) then
          for _, unit in ipairs(killedUnits) do
            if attacker:IsPointBlankRange(unit) then
              attacker:AddStatusEffect("Inspired")
              break
            end
          end
        end
      end,
      param_bindings = false
    })
  },
  DisplayName = T(417989494365, "Line Breaker"),
  Description = T(244850628945, "Become <GameTerm('Inspired')> after a kill in <GameTerm('PointBlankRange')>."),
  Icon = "UI/Icons/Perks/LineBreaker",
  Tier = "Gold",
  Stat = "Strength",
  StatValue = 90
}


DefineClass.AL_Carry = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "civ_Walk_Carry_Start",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Walk_Carry",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "civ_Walk_Carry_End",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "MoveStyle",
      name = "Move Style",
      editor = "combo",
      default = false,
      items = function(self)
        return GetAnimationStyleCombo()
      end
    },
    {
      category = "Ambient Life",
      id = "CarryDestination",
      name = "Destination",
      help = "Where the load needs to be carry to",
      editor = "point",
      default = false,
      buttons = {
        {
          name = "View",
          func = function(self)
            ViewPos(self.CarryDestination)
          end
        }
      },
      helper = "absolute_pos"
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    }
  },
  VisitPose = 1912,
  Appearance = "Legion_Jose",
  ToolEntity = "Shanty_CardboardBox_Carry"
}
function AL_Carry:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos
  return {
    self,
    pos,
    lookat
  }
end
function AL_Carry:GameInit()
  local valid = IsValidEntity(self.ToolEntity)
  if valid then
    if HasCollisions(self.ToolEntity) then
      StoreWarningSource(self, string.format("Spawn Tool '%s' has collision surfaces(or passability colliders) - they will bug the PF!", self.ToolEntity))
    end
    self:AttachCarryItem()
  else
    StoreErrorSource(self, string.format("Invalid ToolEntity '%s'!", self.ToolEntity))
  end
end
function AL_Carry:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "ToolEntity" or prop_id == "ToolAttachOffset" or prop_id == "ToolColors" then
    self:AttachCarryItem()
  end
end
function AL_Carry:AttachCarryItem()
  if not IsValidEntity(self.ToolEntity) then
    return
  end
  if self.tool_attached then
    self:DestroyAttaches(self.tool_attached.class)
  end
  local marker_attach = PlaceObject(self.ToolEntity)
  if self.ToolColors then
    marker_attach:SetColorization(self.ToolColors)
  end
  self:Attach(marker_attach, self:GetSpotBeginIndex(self.ToolSpot))
  if self.ToolAttachOffset then
    marker_attach:SetAttachOffset(self.ToolAttachOffset)
  end
  DoneObject(self.tool_attached)
  self.tool_attached = PlaceObject(self.ToolEntity)
  if self.ToolColors then
    self.tool_attached:SetColorization(self.ToolColors)
  end
  if self.ToolAutoAttachMode then
    self.tool_attached:SetAutoAttachMode(self.ToolAutoAttachMode)
  end
  self.tool_attached:SetPos(self:GetPos())
end
function AL_Carry:CanVisit(unit, for_perpetual, dont_check_dist)
  if self:IsToolDestroyed() then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
function AL_Carry:EditorGetText()
  local texts = AmbientLifeMarker.EditorGetText(self)
  if self:IsToolDestroyed() then
    texts = (texts and texts .. "\n" or "") .. "Carry Item is destroyed!"
  end
  return texts
end
function AL_Carry:EditorGetTextColor()
  return self:IsToolDestroyed() and const.clrRed or AmbientLifeMarker.EditorGetTextColor(self)
end
DefineClass.AL_Cower = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Standing_Fear",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      help = "Map states requirements for the AL marker to be active.",
      editor = "set",
      default = set("Conflict"),
      three_state = true,
      items = function(self)
        return GetGameStateFilter()
      end
    }
  },
  VisitPose = 1424,
  VisitVariation = true,
  Appearance = "VillagerMale_01"
}
function AL_Cower:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
function AL_Cower:CanVisit(unit, for_perpetual, dont_check_dist)
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
DefineClass.AL_Defender_PlayAnimVariation = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "nw_Standing_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "AllowAL",
      name = "Allow AL",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set(),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    },
    {
      category = "Ambient Life",
      id = "Groups",
      name = "Groups",
      editor = "string_list",
      default = {
        "AL_Defender"
      },
      item_default = "AL_Defender",
      items = function(self)
        local items = table.keys2(Groups or empty_table, "sorted")
        table.insert(items, 1, "Closest AmbientZoneMarker")
        return items
      end,
      arbitrary_value = true
    }
  },
  VisitPose = 1912,
  VisitVariation = true,
  Appearance = "Commando_Foreign_01"
}
function AL_Defender_PlayAnimVariation:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_Football = {
  __parents = {
    "AmbientLifeMarker",
    "GameDynamicDataObject"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Ambient_PlayFootball",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "PartnerUnitDataDef",
      name = "Partner's Unit Data Def",
      editor = "combo",
      default = false,
      items = function(self)
        return table.keys(UnitDataDefs, "sorted")
      end
    },
    {
      category = "Ambient Life",
      id = "PartnerLocation",
      name = "Partner Location",
      help = "The other player to pass to",
      editor = "point",
      default = false,
      buttons = {
        {
          name = "View",
          func = function(self)
            ViewPos(self.Partner)
          end
        }
      },
      helper = "absolute_pos",
      helper_class = "PropertyHelper_AppearanceObjectAbsolutePos",
      use_object = true
    },
    {
      category = "Ambient Life",
      id = "BallSpeedMin",
      name = "Ball Speed Min",
      help = "Minimum speed of the ball",
      editor = "number",
      default = 3000,
      scale = "m"
    },
    {
      category = "Ambient Life",
      id = "BallSpeedMax",
      name = "Ball Speed Max",
      help = "Maximum speed of the ball",
      editor = "number",
      default = 6000,
      scale = "m"
    },
    {
      category = "Ambient Life",
      id = "BallRPMMin",
      name = "Ball RPM Min",
      help = "Minimum RPM of the ball",
      editor = "number",
      default = 30
    },
    {
      category = "Ambient Life",
      id = "BallRPMMax",
      name = "Ball RPM Max",
      help = "Maximum RPM of the ball",
      editor = "number",
      default = 80
    },
    {
      category = "Ambient Life",
      id = "unit",
      name = "Unit",
      help = "the visitor",
      editor = "object",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "Object",
      format_func = function(gameobj)
        if gameobj and IsValid(gameobj) then
          local x, y = gameobj:GetPos():xy()
          local label = gameobj:GetProperty("EditorLabel") or gameobj.class
          return string.format("%s x:%d y:%d", label, x, y)
        else
          return ""
        end
      end
    },
    {
      category = "Ambient Life",
      id = "partner",
      name = "Partner",
      help = "the actual unit - cloned from the visitor",
      editor = "object",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "Object",
      format_func = function(gameobj)
        if gameobj and IsValid(gameobj) then
          local x, y = gameobj:GetPos():xy()
          local label = gameobj:GetProperty("EditorLabel") or gameobj.class
          return string.format("%s x:%d y:%d", label, x, y)
        else
          return ""
        end
      end
    },
    {
      category = "Ambient Life",
      id = "ball",
      name = "Ball",
      help = "the ball - passed between the units",
      editor = "object",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "Object",
      format_func = function(gameobj)
        if gameobj and IsValid(gameobj) then
          local x, y = gameobj:GetPos():xy()
          local label = gameobj:GetProperty("EditorLabel") or gameobj.class
          return string.format("%s x:%d y:%d", label, x, y)
        else
          return ""
        end
      end
    },
    {
      category = "Ambient Life",
      id = "player_killed",
      name = "Player Killed",
      help = "the ball - passed between the units",
      editor = "object",
      default = false,
      dont_save = true,
      no_edit = true,
      base_class = "Object",
      format_func = function(gameobj)
        if gameobj and IsValid(gameobj) then
          local x, y = gameobj:GetPos():xy()
          local label = gameobj:GetProperty("EditorLabel") or gameobj.class
          return string.format("%s x:%d y:%d", label, x, y)
        else
          return ""
        end
      end
    }
  },
  Appearance = "Smiley",
  VisitPose = 2020
}
function AL_Football:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
function AL_Football:Despawn()
  if IsValid(self.unit) then
    self.unit:SetBehavior()
    self.unit:SetCommand("Idle")
  end
  if IsValid(self.partner) then
    DoneObject(self.partner)
    self.partner = false
  end
  if IsValid(self.ball) then
    DoneObject(self.ball)
    self.ball = false
  end
  AmbientLifeMarker.Despawn(self)
end
function AL_Football:StartVisit(unit)
  self:SpawnTool(unit)
  self.ball = PlaceObject("Shanty_Ball_01")
  unit:Attach(self.ball, unit:GetSpotBeginIndex("Ball1"))
  self.unit = unit
  self:SpawnPartner()
  self.partner:Face(unit)
  unit:Face(self.partner)
  self:SetVisitAnimation(unit)
  if unit.perpetual_marker then
    local phase = self:Random(unit:TimeToMoment(1, "hit"))
    unit:SetPhaseHighLevel(phase)
  end
end
function AL_Football:SpawnPartner(unit)
  if IsValid(self.partner) then
    return
  end
  local unit_def = UnitDataDefs[self.PartnerUnitDataDef]
  local pers_session_id = unit_def and (unit_def.PersistentSessionId or "") ~= "" and unit_def.PersistentSessionId
  local session_id = pers_session_id or GenerateUniqueUnitDataId("AmbientSpawnDef", gv_CurrentSectorId or "A1", "ClonedFootballPartner")
  local unitdatadef_id = unit_def and unit_def.id or self.unit.unitdatadef_id
  self.partner = SpawnUnit(unitdatadef_id, session_id)
  CheckUniqueSessionId(self.partner)
  self.partner.zone = self
  self.partner:SetSide("neutral")
  self.partner.routine_spawner = self.unit.routine_spawner
  local appearance = ChooseUnitAppearance(unitdatadef_id, self.partner.handle)
  self.partner:ApplyAppearance(appearance)
  self.partner:SetState("civ_Standing_Idle")
  self.partner:SetPos(self.PartnerLocation)
  self.partner:SetCommand(false)
  self.partner.SetCommand = empty_func
end
function AL_Football:SetDynamicData(data)
  self.partner = data.partner and HandleToObject[data.partner] or false
  if not IsKindOf(self.partner, "Unit") then
    self.partner = false
  end
  if self.partner and not self:IsPartnerDead() then
    self.partner:SetCommand(false)
    self.partner.SetCommand = empty_func
  end
  self.player_killed = data.player_killed or false
end
function AL_Football:GetDynamicData(data)
  data.partner = self.partner and self.partner.handle or nil
  data.player_killed = self.player_killed or nil
end
function AL_Football:Visit(unit, dest, lookat)
  dest = dest or self:GetPos()
  if not self:GotoEnterSpot(unit, dest) then
    return
  end
  local tool
  unit:PushDestructor(function()
    if self.perpetual_unit then
      self.perpetual_unit = false
    end
    unit:FreeVisitable()
    if not IsValid(unit) then
      return
    end
    self:ExitVisit(unit)
    if not self:IsPartnerDead() then
      DoneObject(self.partner)
      self.partner = false
    end
    DoneObject(self.ball)
    self.ball = false
  end)
  local start_time = GameTime()
  self:Enter(unit, dest, lookat)
  local visit_duration = GameTime() - start_time
  if self.VisitMinDuration and visit_duration >= self.VisitMinDuration then
    return
  end
  self:StartVisit(unit)
  repeat
    local start_time = GameTime()
    if IsValid(unit) and not self:IsPartnerDead() then
      local _, ball_spot_index = unit:GetRandomAnim(self.VisitIdle)
      self:PlayBall(unit, self.partner, ball_spot_index)
    end
    if IsValid(unit) and not self:IsPartnerDead() then
      local _, ball_spot_index = self.partner:GetRandomAnim(self.VisitIdle)
      self:PlayBall(self.partner, unit, ball_spot_index)
    end
    Sleep(50 + self:Random(50))
    visit_duration = visit_duration + (GameTime() - start_time)
  until self:IsPartnerDead() or self.perpetual_unit and self.perpetual_unit ~= unit or self.VisitMinDuration and visit_duration >= self.VisitMinDuration
  unit:PopAndCallDestructor()
end
function AL_Football:PlayBall(unit, partner, ball_spot_index)
  Sleep(unit:TimeToMoment(1, "hit") or 0)
  self.ball:Detach()
  if not self:IsPartnerDead() then
    self:ShootBall(partner, ball_spot_index, unit, unit:TimeToAnimEnd())
  end
end
function AL_Football:IsPartnerDead()
  return IsValid(self.partner) and self.partner:IsDead()
end
function AL_Football:EditorGetText()
  if self.player_killed then
    return "AL CAN'T Visit(Inactive do the dead player)"
  end
  return AmbientLifeMarker.EditorGetText(self)
end
function AL_Football:EditorGetTextColor()
  if self.player_killed then
    return const.clrRed
  end
  return AmbientLifeMarker.EditorGetTextColor(self)
end
function AL_Football:CanVisit(unit, for_perpetual, dont_check_dist)
  if self.player_killed or not IsValid(self.partner) then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
function AL_Football:ShootBall(target, ball_spot_index, ball_dest, kicker, kicker_time_end)
  if target:GetEnumFlags(const.efVisible) ~= 0 then
    self.ball:SetEnumFlags(const.efVisible)
  else
    self.ball:ClearEnumFlags(const.efVisible)
  end
  local target_spot = "Ball" .. ball_spot_index
  local ball_spot = target:GetSpotBeginIndex(target_spot)
  local ball_dest = target:GetSpotPos(ball_spot)
  local ball_start = self.ball:GetPos()
  local ball_dir = ball_dest - ball_start
  local ball_speed = self.BallSpeedMin + self:Random(self.BallSpeedMax - self.BallSpeedMin)
  local ball_travel_time = MulDivTrunc(ball_dir:Len(), 1000, ball_speed)
  local rpm = self.BallRPMMin * 360 + self:Random((self.BallRPMMax - self.BallRPMMin) * 360)
  local angle = MulDivTrunc(rpm, ball_travel_time, 1000)
  local axis = Rotate(ball_dir, 5400)
  self.ball:SetAxis(axis)
  self.ball:SetPos(ball_dest, ball_travel_time)
  local suffix = ball_spot_index == 1 and "" or tostring(ball_spot_index)
  local target_football_anim = self.VisitIdle .. suffix
  local recieve_moment = target:GetAnimMoment(target_football_anim, "start")
  ball_travel_time = ball_travel_time < recieve_moment and recieve_moment or ball_travel_time
  local target_time_recieve = ball_travel_time - recieve_moment
  local time, dt_sleep = 0, 10
  while not self:IsPartnerDead() and ball_travel_time > time do
    local dt = Min(dt_sleep, ball_travel_time - time)
    dt = kicker_time_end and Min(dt, kicker_time_end - time) or dt
    dt = target_time_recieve and Min(dt, target_time_recieve - time) or dt
    self.ball:SetAngle(self.ball:GetAngle() + MulDivTrunc(dt, angle, ball_travel_time))
    Sleep(dt)
    time = time + dt
    if kicker_time_end and kicker_time_end <= time then
      local idle_base = self:Random(100) < 50 and "civ_Standing_Idle" or "civ_Standing_IdlePassive"
      local idle_anim = kicker:GetNearbyUniqueRandomAnim(idle_base)
      kicker:SetState(idle_anim)
      kicker_time_end = false
    end
    if target_time_recieve and target_time_recieve <= time then
      target:SetState(target_football_anim)
      target_time_recieve = false
    end
  end
  self.ball:SetAxis(axis_z)
  self.ball:SetPos(ball_dest)
end
function AL_Football:OnHelperCreated(helper)
  helper:ApplyAppearance(self.Appearance)
end
DefineClass.AL_Maraud = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Ambient_FindSomething",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      id = "corspe",
      name = "Corspe",
      editor = "object",
      default = false,
      dont_save = true,
      read_only = true,
      base_class = "Object",
      format_func = function(gameobj)
        if gameobj and IsValid(gameobj) then
          local x, y = gameobj:GetPos():xy()
          local label = gameobj:GetProperty("EditorLabel") or gameobj.class
          return string.format("%s x:%d y:%d", label, x, y)
        else
          return ""
        end
      end
    }
  },
  VisitPose = 912,
  VisitVariation = true,
  IgnoreGroupsMatch = true
}
function AL_Maraud:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
function AL_Maraud:CanVisit(unit, for_perpetual, dont_check_dist)
  if unit.ImportantNPC then
    return false
  end
  if self.corpse and unit:GetSide() == "neutral" then
    if not IsKindOf(self.corpse, "Unit") then
      return false
    end
    local side = self.corpse:GetSide()
    if side ~= "enemy1" and side ~= "enemy2" and side ~= "player1" and side ~= "player2" then
      return false
    end
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
function AL_Maraud:EditorGetText()
  if not IsValid(self.corpse) then
    return "AL CAN'T Visit(Corpse is missing)"
  end
  if not IsKindOf(self.corpse, "Unit") then
    return "AL CAN'T Visit(Corpse is not Unit?!?)"
  end
  return AmbientLifeMarker.EditorGetText(self)
end
function AL_Maraud:EditorGetTextColor()
  if not IsValid(self.corpse) or not IsKindOf(self.corpse, "Unit") then
    return const.clrRed
  end
  return AmbientLifeMarker.EditorGetTextColor(self)
end
function AL_Maraud:GetDynamicData(data)
  data.corpse = self.corpse and self.corpse.handle or false
end
function AL_Maraud:SetDynamicData(data)
  self.corpse = data.corpse and HandleToObject[data.corpse] or false
end
function AL_Maraud:OnVisitAnimEnded(unit)
  local steal = false
  self.corpse:ForEachItemInSlot("InventoryDead", "Valuables", function(item, slot_name)
    if self:Random(100) >= item.drop_chance then
      self.corpse:RemoveItem("InventoryDead", item)
      unit:AddItem("Inventory", item)
      steal = true
      return "break"
    end
  end)
  if not steal then
    self.corpse:ForEachItemInSlot("InventoryDead", false, function(item, slot_name)
      if not IsKindOf(item, "Valuables") and self:Random(100) >= item.drop_chance then
        self.corpse:RemoveItem("InventoryDead", item)
        unit:AddItem("Inventory", item)
        steal = true
        return "break"
      end
    end)
  end
  if steal then
    CreateFloatingText(unit:GetVisualPos(), T(911186423849, "Picked up something"))
  end
end
DefineClass.AL_MineWorkPick = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Work_Pick",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  ToolEntity = "Mine_PickAxe",
  VisitPose = 1912
}
function AL_MineWorkPick:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_MineWorkShovel = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Work_Shovel",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  ToolEntity = "Mine_Shovel",
  VisitPose = 8154
}
function AL_MineWorkShovel:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_MineWorkSift = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Work_Sift",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  ToolEntity = "Mine_WoodenTray",
  VisitPose = 8154
}
function AL_MineWorkSift:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_Mourn = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Ambient_SadCrying",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      id = "corspe",
      name = "Corspse",
      editor = "object",
      default = false,
      dont_save = true,
      read_only = true,
      base_class = "Object",
      format_func = function(gameobj)
        if gameobj and IsValid(gameobj) then
          local x, y = gameobj:GetPos():xy()
          local label = gameobj:GetProperty("EditorLabel") or gameobj.class
          return string.format("%s x:%d y:%d", label, x, y)
        else
          return ""
        end
      end
    }
  },
  VisitPose = 1312,
  VisitVariation = true,
  IgnoreGroupsMatch = true
}
function AL_Mourn:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
function AL_Mourn:CanVisit(unit, for_perpetual, dont_check_dist)
  if unit.ImportantNPC then
    return false
  end
  if self.corpse and unit:GetSide() == "neutral" then
    if not IsKindOf(self.corpse, "Unit") then
      return false
    end
    local side = self.corpse:GetSide()
    if side == "enemy1" or side == "enemy2" or side == "neutral" then
      return false
    end
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
function AL_Mourn:EditorGetText()
  if not IsValid(self.corpse) then
    return "AL CAN'T Visit(Corpse is missing)"
  end
  if not IsKindOf(self.corpse, "Unit") then
    return "AL CAN'T Visit(Corpse is not Unit?!?)"
  end
  return AmbientLifeMarker.EditorGetText(self)
end
function AL_Mourn:EditorGetTextColor()
  if not IsValid(self.corpse) or not IsKindOf(self.corpse, "Unit") then
    return const.clrRed
  end
  return AmbientLifeMarker.EditorGetTextColor(self)
end
function AL_Mourn:GetDynamicData(data)
  data.corpse = self.corpse and self.corpse.handle or false
end
function AL_Mourn:SetDynamicData(data)
  self.corpse = data.corpse and HandleToObject[data.corpse] or false
end
DefineClass.AL_PlayAnimVariation = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "nw_Standing_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    }
  },
  VisitPose = 1912,
  VisitVariation = true,
  Appearance = "Legion_Jose"
}
function AL_PlayAnimVariation:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_Prostitute_Idle = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Seduce_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 1912,
  VisitVariation = true,
  Appearance = "VillagerFemale_01"
}
function AL_Prostitute_Idle:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
function AL_Prostitute_Idle:CanVisit(unit, for_perpetual, dont_check_dist)
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist) and unit:IsProstitute()
end
DefineClass.AL_Prostitute_Parade = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Seduce_Parade",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 11477,
  VisitVariation = true,
  Appearance = "VillagerFemale_01"
}
function AL_Prostitute_Parade:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
function AL_Prostitute_Parade:CanVisit(unit, for_perpetual, dont_check_dist)
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist) and unit:IsProstitute()
end
DefineClass.AL_Roam = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Standing_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "DontReorient",
      name = "Don't Reorient",
      help = "Does not reorient the unit to marker position",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    }
  },
  VisitPose = 1912,
  VisitVariation = true,
  Appearance = "VillagerFemale_01"
}
function AL_Roam:ApplyAppearance(appearance, force)
  AppearanceObject.ApplyAppearance(self, appearance, force)
  local clr = const.clrGreen
  self:SetColorModifier(clr)
  for _, part in ipairs(self.parts) do
    part:SetColorModifier(clr)
  end
end
DefineClass.AL_SitChair = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "civ_Sit_Start",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Sit_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "civ_Sit_End",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    },
    {
      category = "Ambient Life",
      id = "EditorMarkerVisitAnim",
      name = "Editor Marker Visit Anim",
      editor = "combo",
      default = "editorMarkerAnim_Sit",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 16,
  Appearance = "Legion_Jose",
  VisitSupportCollectionVME = true
}
function AL_SitChair:CanVisit(unit, for_perpetual, dont_check_dist)
  local enemy, dist = GetNearestEnemy(unit, "ignore awareness")
  if enemy and dist <= const.AmbientLife.ForbidSitChairEnemyDist then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
DefineClass.AL_SitChair_SleepingAtTable = {
  __parents = {
    "AL_SitChair"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "civ_Ambient_SleepingAtTable_Start",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Ambient_SleepingAtTable",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "civ_Ambient_SleepingAtTable_End",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    },
    {
      category = "Ambient Life",
      id = "EditorMarkerVisitAnim",
      name = "Editor Marker Visit Anim",
      editor = "combo",
      default = "editorMarkerAnim_Sit",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 16,
  Appearance = "Legion_Jose",
  VisitSupportCollectionVME = true
}
function AL_SitChair_SleepingAtTable:CanVisit(unit, for_perpetual, dont_check_dist)
  local enemy, dist = GetNearestEnemy(unit, "ignore awareness", dont_check_dist)
  if enemy and dist <= const.AmbientLife.ForbidSitChairEnemyDist then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
DefineClass.AL_Talk = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "nw_Standing_IdlePassive",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitAlternate",
      name = "During Visit Alternate",
      help = "There is some chance to play this animation instead of the original \"During Visit\" one",
      editor = "combo",
      default = "civ_Talking",
      no_edit = function(self)
        return self.VisitAlternateChance == 0
      end,
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 8866,
  VisitVariation = true,
  VisitAlternateVariation = true,
  VisitAlternateChance = 50,
  EmotionChance = 10,
  Appearance = "VillagerMale_02"
}
function AL_Talk:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_WallLean = {
  __parents = {
    "AmbientLifeMarker",
    "GroundAlignedObj"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "civ_Wall_Start",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Wall_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "civ_Wall_End",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    },
    {
      category = "Ambient Life",
      id = "EditorMarkerVisitAnim",
      name = "Editor Marker Visit Anim",
      editor = "combo",
      default = "editorMarkerAnim_Wall",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 16,
  Appearance = "Legion_Jose",
  VisitSupportCollectionVME = true
}
function AL_WallLean:CanVisit(unit, for_perpetual, dont_check_dist)
  local enemy, dist = GetNearestEnemy(unit, "ignore awareness")
  if enemy and dist <= const.AmbientLife.ForbidWallLeanEnemyDist then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
function AL_WallLean:EditorCallbackPlace(...)
  AlignedObj.EditorCallbackPlace(self, ...)
  AmbientLifeMarker.EditorCallbackPlace(self, ...)
end
function AL_WallLean:EditorCallbackRotate(...)
  AlignedObj.EditorCallbackRotate(self, ...)
  AmbientLifeMarker.EditorCallbackRotate(self, ...)
end
function AL_WallLean:EditorCallbackScale(...)
  AlignedObj.EditorCallbackScale(self, ...)
  AmbientLifeMarker.EditorCallbackScale(self, ...)
end
function AL_WallLean:EditorCallbackMove(...)
  AlignedObj.EditorCallbackMove(self, ...)
  AmbientLifeMarker.EditorCallbackMove(self, ...)
end
DefineClass.AL_WallLean_NoSnap = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "civ_Wall_Start",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Wall_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "civ_Wall_End",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Teleport",
      name = "Teleport",
      editor = "bool",
      default = false
    },
    {
      category = "Ambient Life",
      id = "GameStatesFilter",
      name = "States Required for Activation",
      editor = "set",
      default = set({Conflict = false}),
      three_state = true,
      items = function(self)
        return GetGameStateFilter
      end
    },
    {
      category = "Ambient Life",
      id = "EditorMarkerVisitAnim",
      name = "Editor Marker Visit Anim",
      editor = "combo",
      default = "editorMarkerAnim_Wall",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 16,
  Appearance = "Legion_Jose",
  VisitSupportCollectionVME = true
}
function AL_WallLean_NoSnap:CanVisit(unit, for_perpetual, dont_check_dist)
  local enemy, dist = GetNearestEnemy(unit, "ignore awareness")
  if enemy and dist <= const.AmbientLife.ForbidWallLeanEnemyDist then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
DefineClass.AL_WallLean_Prostitute = {
  __parents = {
    "AmbientLifeMarker",
    "GroundAlignedObj"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "civ_Seduce_Wall",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    }
  },
  VisitPose = 3267,
  VisitVariation = true,
  Appearance = "VillagerFemale_01",
  VisitSupportCollectionVME = true
}
function AL_WallLean_Prostitute:CanVisit(unit, for_perpetual, dont_check_dist)
  if not unit:IsProstitute() then
    return false
  end
  local enemy, dist = GetNearestEnemy(unit, "ignore awareness")
  if enemy and dist <= const.AmbientLife.ForbidWallLeanEnemyDist then
    return false
  end
  return AmbientLifeMarker.CanVisit(self, unit, for_perpetual, dont_check_dist)
end
function AL_WallLean_Prostitute:EditorCallbackPlace(...)
  AlignedObj.EditorCallbackPlace(self, ...)
  AmbientLifeMarker.EditorCallbackPlace(self, ...)
end
function AL_WallLean_Prostitute:EditorCallbackRotate(...)
  AlignedObj.EditorCallbackRotate(self, ...)
  AmbientLifeMarker.EditorCallbackRotate(self, ...)
end
function AL_WallLean_Prostitute:EditorCallbackScale(...)
  AlignedObj.EditorCallbackScale(self, ...)
  AmbientLifeMarker.EditorCallbackScale(self, ...)
end
function AL_WallLean_Prostitute:EditorCallbackMove(...)
  AlignedObj.EditorCallbackMove(self, ...)
  AmbientLifeMarker.EditorCallbackMove(self, ...)
end
DefineClass.AL_WeaponAim = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "ar_Standing_Aim",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Weapon",
      name = "Weapon",
      editor = "combo",
      default = "DoubleBarrelShotgun",
      items = function(self)
        return InventoryItemWeaponsCombo
      end
    }
  },
  VisitPose = 1912,
  VisitVariation = true
}
function AL_WeaponAim:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end
DefineClass.AL_WeaponIdle = {
  __parents = {
    "AmbientLifeMarker"
  },
  __generated_by_class = "ClassDef",
  properties = {
    {
      category = "Ambient Life",
      id = "VisitEnter",
      name = "Entering Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitIdle",
      name = "During Visit",
      editor = "combo",
      default = "ar_Standing_Idle",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "VisitExit",
      name = "Exit Visit",
      editor = "combo",
      default = "",
      items = function(self)
        return GetStates("Male")
      end
    },
    {
      category = "Ambient Life",
      id = "Weapon",
      name = "Weapon",
      editor = "combo",
      default = "DoubleBarrelShotgun",
      items = function(self)
        return InventoryItemWeaponsCombo
      end
    }
  },
  VisitPose = 1912,
  VisitVariation = true
}
function AL_WeaponIdle:GenerateVisitable()
  local pos = self:GetPos()
  local lookat = pos + Rotate(point(const.SlabSizeX, 0), self:GetAngle())
  return {
    self,
    pos,
    lookat
  }
end


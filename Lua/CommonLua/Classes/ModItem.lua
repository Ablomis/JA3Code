if not config.Mods then
  DefineModItemPreset = empty_func
  g_FontReplaceMap = false
  return
end
DefineClass.ModItemCode = {
  __parents = {"ModItem"},
  properties = {
    {
      category = "Mod",
      id = "name",
      name = "Name",
      default = "Script",
      editor = "text",
      validate = function(self, value)
        value = value:trim_spaces()
        if value == "" then
          return "Please enter a valid name"
        end
        for _, item in ipairs(self.mod.items) do
          if item.class == "ModItemCode" and item ~= self and item.name == value then
            return "A code item with that name already exists"
          end
        end
      end
    },
    {
      category = "Code",
      id = "CodeFileName",
      name = "File name",
      default = "",
      editor = "text",
      read_only = true,
      buttons = {
        {
          name = "Open",
          func = "OpenCodeFile"
        }
      }
    },
    {
      category = "Code",
      id = "CodeError",
      name = "Error",
      default = "",
      editor = "text",
      lines = 1,
      max_lines = 3,
      read_only = true,
      dont_save = true,
      translate = false,
      code = true
    },
    {
      category = "Code",
      id = "Preview",
      name = "Preview",
      default = "",
      editor = "text",
      lines = 10,
      max_lines = 30,
      wordwrap = false,
      read_only = true,
      dont_save = true,
      translate = false,
      code = true
    }
  },
  EditorName = "Code",
  EditorSubmenu = "Assets",
  preview = ""
}
function ModItemCode:OnEditorNew(mod, ged, is_paste)
  self.name = self:FindFreeFilename(self.name)
  AsyncCreatePath(self.mod.content_path .. "Code/")
  AsyncStringToFile(self:GetCodeFilePath(), "")
  return ModItem.OnEditorNew(self, mod, ged, is_paste)
end
function ModItemCode:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "name" then
    local old_file_name = self:GetCodeFilePath(old_value)
    local new_file_name = self:GetCodeFilePath()
    AsyncCreatePath(self.mod.content_path .. "Code/")
    local err
    if io.exists(old_file_name) then
      local data
      err, data = AsyncFileToString(old_file_name)
      err = err or AsyncStringToFile(new_file_name, data)
      if err then
        ged:ShowMessage("Error", string.format("Error creating %s", new_file_name))
        self.name = old_value
        ObjModified(self)
        return
      end
      AsyncFileDelete(old_file_name)
    elseif not io.exists(new_file_name) then
      err = AsyncStringToFile(new_file_name, "")
    end
  end
end
function ModItemCode:GetCodeFileName(name)
  name = name or self.name or ""
  if name == "" then
    return
  end
  return string.format("Code/%s.lua", name:gsub("[/?<>\\:*|\"]", "_"))
end
function ModItemCode:OpenCodeFile()
  local file_path = self:GetCodeFilePath()
  if file_path ~= "" and io.exists(file_path) then
    CreateRealTimeThread(AsyncExec, "explorer " .. ConvertToOSPath(file_path))
  end
end
function ModItemCode:GetPreview()
  local err, code = AsyncFileToString(self:GetCodeFilePath())
  self.preview = code
  return code or ""
end
function ModItemCode:GetCodeError()
  local env = table.get(self, "mod", "env") or _ENV
  local func, err = load(self.preview, nil, nil, env)
  return err or ""
end
function ModItemCode:TestModItem(ged)
  if self.mod:UpdateCode() then
    ReloadLua()
  end
  ObjModified(self)
  ged:ShowMessage("Information", "Your code has been loaded and is currently active in the game.")
end
function OnMsg.ModCodeChanged(file, change)
  for i, mod in ipairs(ModsLoaded) do
    if not mod.packed then
      for _, item in ipairs(mod.items) do
        if item:IsKindOf("ModItemCode") and string.find_lower(file, item.name) then
          ObjModified(item)
          break
        end
      end
    end
  end
end
local function DuplicateT(v)
  if getmetatable(v) == TConcatMeta then
    local ret = {}
    for _, t in ipairs(v) do
      table.insert(ret, DuplicateT(t))
    end
    return setmetatable(ret, TConcatMeta)
  end
  v = _InternalTranslate(v, false, false)
  return T({
    RandomLocId(),
    v
  })
end
local function DuplicateTs(obj, visited)
  visited = visited or {}
  for key, value in pairs(obj) do
    if value ~= "" and IsT(value) then
      obj[key] = DuplicateT(value)
    elseif type(value) == "table" and not visited[value] then
      visited[value] = true
      DuplicateTs(value, visited)
    end
  end
end
function DefineModItemPreset(preset, class)
  local parent_class = g_Classes[preset]
  class = class or {}
  class.GedEditor = false
  class.ModdedPresetClass = preset
  if parent_class and parent_class.PresetClass == preset then
    class.PresetClass = "ModItem" .. preset
  else
    class.PresetClass = nil
  end
  class.EditorMenubarName = false
  class.EditorView = ModItem.EditorView
  class.__parents = {
    "ModItemPreset",
    preset
  }
  class.GetError = ModItemPreset.GetError
  if (class.EditorName or "") == "" then
    class.EditorName = preset
  end
  local properties = class.properties or {}
  local id_prop = table.copy(table.find_value(Preset.properties, "id", "Id"))
  local group_prop = table.copy(table.find_value(Preset.properties, "id", "Group"))
  id_prop.category = "Mod"
  group_prop.category = "Mod"
  table.insert(properties, id_prop)
  table.insert(properties, group_prop)
  table.insert(properties, {id = "Comment", no_edit = true})
  table.insert(properties, {id = "new_in", editor = false})
  class.properties = properties
  UndefineClass("ModItem" .. preset)
  DefineClass("ModItem" .. preset, class)
  return class
end
function DefineModItemCompositeObject(preset, class)
  local class = DefineModItemPreset(preset, class)
  class.__parents = {
    "ModItemCompositeObject",
    preset
  }
  function class.new(class, obj)
    obj = CompositeDef.new(class, obj)
    obj = ModItemPreset.new(class, obj)
    return obj
  end
  function class:__toluacode(...)
    local mod = self.mod
    self.mod = nil
    local code = CompositeDef.__toluacode(self, ...)
    self.mod = mod
    return code
  end
  class.GetProperties = ModItemCompositeObject.GetProperties
  return class
end
DefineClass.ModItemCompositeObject = {
  __parents = {
    "ModItemPreset"
  },
  mod_properties_cache = false
}
DefineClass.ModItemPreset = {
  __parents = {"Preset", "ModItem"},
  properties = {
    {
      category = "Mod",
      id = "__copy_group",
      name = "Copy from group",
      default = "Default",
      editor = "combo",
      items = function(obj)
        local groups = PresetGroupsCombo(obj.PresetClass or obj.class)()
        table.remove_entry(groups, "Obsolete")
        return groups
      end,
      no_edit = function(obj)
        return not obj.HasGroups
      end,
      dont_save = true
    },
    {
      category = "Mod",
      id = "__copy",
      name = "Copy from",
      default = "",
      editor = "combo",
      items = function(obj)
        return PresetsCombo(obj.PresetClass or obj.class, not (obj.PresetClass == obj.ModdedPresetClass or obj.HasGroups) and obj.ModdedPresetClass or obj.__copy_group, nil, function(preset)
          return preset ~= obj and not preset.Obsolete
        end)
      end,
      dont_save = true
    },
    {id = "SaveIn", editor = false},
    {id = "name", editor = false},
    {id = "TODO", editor = false},
    {id = "Obsolete", editor = false}
  },
  EditorView = ModItem.EditorView,
  GedEditor = false,
  ModItemDescription = T(159662765679, "<u(id)>"),
  ModdedPresetClass = false,
  save_in = "none"
}
function ModItemPreset:SetSaveIn()
end
function ModItemPreset:GetSaveIn()
  return "none"
end
function ModItemPreset:GetSaveFolder()
  return nil
end
function ModItemPreset:GetSavePath()
  return nil
end
function ModItemPreset:Getname()
  return self.id
end
function ModItemPreset:GetSaveLocationType()
  return "mod"
end
function ModItemPreset:delete()
  Preset.delete(self)
  InitDone.delete(self)
end
function ModItemPreset:__toluacode(indent, code)
  local mod = self.mod
  self.mod = nil
  code = Preset.__toluacode(self, indent, code)
  self.mod = mod
  return code
end
function ModItemPreset:GetCodeFileName(name)
  if self.HasCompanionFile or self.GetCompanionFilesList ~= Preset.GetCompanionFilesList then
    name = name or self.id
    local sub_folder = IsKindOf(self, "CompositeDef") and self.ObjectBaseClass or self.PresetClass
    return name and name ~= "" and string.format("%s/%s.lua", sub_folder, name:gsub("[/?<>\\:*|\"]", "_"))
  end
end
function ModItemPreset:PreSave()
  self:OnPreSave()
  return ModItem.PreSave(self)
end
function ModItemPreset:PostSave()
  Msg("PresetSave", self.class)
  if self:GetCodeFileName() then
    local code = pstr("", 8192)
    self:GenerateCompanionFileCode(code)
    local path = self:GetCodeFilePath()
    local folder = SplitPath(path)
    AsyncCreatePath(folder)
    AsyncStringToFile(path, code)
  end
  return ModItem.PostSave(self)
end
function ModItemPreset:OnEditorSetProperty(prop_id, old_value, ged)
  Preset.OnEditorSetProperty(self, prop_id, old_value, ged)
  if prop_id == "Id" then
    if self:GetCodeFileName() then
      AsyncFileDelete(self:GetCodeFilePath(old_value))
    end
  elseif prop_id == "__copy" then
    local preset_class = self.PresetClass or self.class
    local preset_group = not (self.PresetClass == self.ModdedPresetClass or self.HasGroups) and self.ModdedPresetClass or self.__copy_group
    local id = self.__copy
    local preset
    ForEachPresetExtended(preset_class, function(obj)
      if obj.group == preset_group and obj.id == id and obj ~= self then
        preset = obj
        return "break"
      end
    end)
    if not preset then
      return
    end
    local do_copy = function()
      local blacklist = {
        "Id",
        "Group",
        "comment",
        "__copy"
      }
      CopyPropertiesBlacklisted(preset, self, blacklist)
      local presetProps = preset:GetProperties()
      for _, prop in ipairs(presetProps) do
        local propId = prop.id
        if not table.find(blacklist, propId) and preset:IsPropertyDefault(propId, prop) then
          self[propId] = nil
        end
      end
      table.iclear(self)
      local count = 0
      for _, value in ipairs(preset) do
        local err, copy = CopyValue(value)
        if not err then
          count = count + 1
          self[count] = copy
        end
      end
      PopulateParentTableCache(self)
      DuplicateTs(self)
      for _, sub_obj in ipairs(self) do
        if IsKindOf(sub_obj, "ParticleEmitter") then
          self:OverrideEmitterFuncs(sub_obj)
        end
        if IsKindOf(sub_obj, "Sample") then
          self:OverrideSampleFuncs(sub_obj)
        end
      end
      ObjModified(ged:ResolveObj("root"))
      ObjModified(self)
    end
    self.__copy = nil
    ObjModified(self)
    if ged then
      CreateRealTimeThread(function()
        local fmt = "Do you want to copy all properties from %s.%s? The current values of the ModItem properties will be lost."
        local msg = string.format(fmt, preset_group, id)
        if ged:WaitQuestion("Warning!", msg) ~= "ok" then
          return
        end
        do_copy()
      end)
    else
      do_copy()
    end
  end
end
function ModItemPreset:TestModItem(ged)
  self:PostLoad()
  if self:GetCodeFileName() then
    self:PostSave()
    if self.mod:UpdateCode() then
      ReloadLua()
    end
    ged:ShowMessage("Information", "The new Lua code has been loaded and is currently active in the game.")
  end
end
function ModItemPreset:OnModLoad()
  ModItem.OnModLoad(self)
  self:PostLoad()
end
function ModItemPreset:GetWarning()
  local warning = g_Classes[self.ModdedPresetClass].GetWarning(self)
  return warning or self:IsDirty() and self:GetCodeFileName() and "Use the Test button or save the mod to test your changes."
end
function ModItemPreset:GetError()
  if self.id == "" then
    return "Please specify mod item Id."
  end
  return g_Classes[self.ModdedPresetClass].GetError(self)
end
function OnMsg.ClassesPostprocess()
  ClassDescendantsList("ModItemPreset", function(name, class)
    class.PresetClass = class.PresetClass or class.ModdedPresetClass
  end)
end
function OnMsg.ModsReloaded()
  for class, presets in pairs(Presets) do
    _G[class]:SortPresets()
  end
end
DefineModItemPreset("LightmodelPreset", {
  EditorName = "Lightmodel",
  properties = {
    {
      id = "cubemap_capture_preview"
    },
    {
      id = "exterior_envmap"
    },
    {
      id = "ext_env_exposure"
    },
    {
      id = "ExteriorEnvmapImage"
    },
    {
      id = "interior_envmap"
    },
    {
      id = "int_env_exposure"
    },
    {
      id = "InteriorEnvmapImage"
    },
    {
      id = "env_exterior_capture_sky_exp"
    },
    {
      id = "env_exterior_capture_sun_int"
    },
    {
      id = "env_exterior_capture_pos"
    },
    {
      id = "env_interior_capture_sky_exp"
    },
    {
      id = "env_interior_capture_sun_int"
    },
    {
      id = "env_interior_capture_pos"
    },
    {
      id = "env_capture_map"
    },
    {
      id = "env_capture"
    },
    {
      id = "env_view_site"
    },
    {id = "hdr_pano"},
    {id = "lm_capture"},
    {id = "__"}
  }
})
function ModItemLightmodelPreset:GetCubemapWarning()
end
function ModItemLightmodelPreset:TestModItem(ged)
  SetLightmodelOverride(1, LightmodelOverride ~= self and self)
end
function ModItemLightmodelPreset:OnEditorSelect(...)
  ModItemPreset.OnEditorSelect(self, ...)
  LightmodelPreset.OnEditorSelect(self, ...)
end
ModEntityClassesCombo = {
  "",
  "AnimatedTextureObject",
  "AutoAttachObject",
  "Deposition",
  "Decal",
  "FloorAlignedObj",
  "Mirrorable"
}
DefineClass.ModItemEntity = {
  __parents = {
    "ModItem",
    "EntitySpecProperties"
  },
  EditorName = "Entity",
  EditorSubmenu = "Assets",
  properties = {
    {
      category = "Mod",
      id = "name",
      name = "Name",
      default = "",
      editor = "text",
      untranslated = true
    },
    {
      category = "Mod",
      id = "entity_name",
      name = "Entity Name",
      default = "",
      editor = "text",
      read_only = true,
      untranslated = true
    },
    {
      category = "Mod",
      id = "import",
      name = "Import",
      editor = "browse",
      os_path = true,
      filter = "Entity files|*.ent",
      default = "",
      dont_save = true
    },
    {
      category = "Mod",
      id = "reload",
      editor = "buttons",
      default = false,
      buttons = {
        {
          name = "Import Entity Files",
          func = "Import"
        },
        {
          name = "Reload entities (slow)",
          func = "ReloadEntities"
        }
      },
      untranslated = true
    },
    {
      category = "Misc",
      id = "class_parent",
      name = "Class",
      editor = "combo",
      items = ModEntityClassesCombo,
      default = "",
      entitydata = true
    }
  }
}
if Platform.developer then
  g_HgnvCompressPath = "svnSrc/Tools/hgnvcompress/Bin/hgnvcompress.exe"
  g_HgimgcvtPath = "svnSrc/Tools/hgimgcvt/Bin/hgimgcvt.exe"
  g_OpusCvtPath = "svnSrc/ExternalTools/opusenc.exe"
else
  g_HgnvCompressPath = "ModTools/AssetsProcessor/hgnvcompress.exe"
  g_HgimgcvtPath = "ModTools/hgimgcvt.exe"
  g_OpusCvtPath = "ModTools/opusenc.exe"
end
function ParseEntity(root, name)
  local filename = root .. name .. ".ent"
  local err, xml = AsyncFileToString(filename)
  if err then
    return err
  end
  local entity = {
    materials = {},
    meshes = {},
    animations = {},
    textures = {}
  }
  for asset in string.gmatch(xml, "<material file=\"(.-)%.mtl\"") do
    entity.materials[#entity.materials + 1] = asset
  end
  for asset in string.gmatch(xml, "<anim file=\"(.-)%.hgac?l?\"") do
    entity.animations[#entity.animations + 1] = asset
  end
  for asset in string.gmatch(xml, "<mesh file=\"(.-)%.hgm\"") do
    entity.meshes[#entity.meshes + 1] = asset
  end
  for _, material in ipairs(entity.materials) do
    local err, mtl = AsyncFileToString(root .. material .. ".mtl")
    for map in string.gmatch(mtl, "Map Name=\"(.-)%.dds") do
      entity.textures[#entity.textures + 1] = map
    end
  end
  return nil, entity
end
function ModItemEntity:Import(root, prop_id, socket, btn_param, idx)
  local import_root, entity_name, ext = SplitPath(self.import)
  if not entity_name then
    ModLogF(true, "Invalid entity filename")
    return
  end
  local entity_root = self.mod.content_path .. "Entities/"
  local err = AsyncCreatePath(entity_root)
  if err then
    ModLogF(true, "Failed to create path %s: %s", entity_root, err)
  end
  ModLogF("Importing entity %s", entity_name)
  local dest_path = entity_root .. entity_name .. ext
  err = AsyncCopyFile(self.import, dest_path)
  if err then
    ModLogF(true, "Failed to copy entity %s to %s: %s", entity_name, dest_path, err)
    return
  end
  local err, entity = ParseEntity(import_root, entity_name)
  if err then
    ModLogF(true, "Failed to open entity file %s: %s", dest_path, err)
    return
  end
  local CopyAssetType = function(folder, tbl, exts, asset_type)
    local dest_path = entity_root .. folder
    for _, asset in ipairs(entity[tbl]) do
      local err = AsyncCreatePath(dest_path)
      if err then
        ModLogF(true, "Failed to create path %s: %s", dest_path, err)
        break
      end
      local matched = false
      for _, ext in ipairs(type(exts) == "table" and exts or {exts}) do
        local src_filename
        if string.starts_with(asset, folder) then
          src_filename = import_root .. asset .. ext
        else
          src_filename = import_root .. folder .. asset .. ext
        end
        if io.exists(src_filename) then
          local dest_filename
          if string.starts_with(asset, folder) then
            dest_filename = entity_root .. asset .. ext
          else
            dest_filename = entity_root .. folder .. asset .. ext
          end
          err = AsyncCopyFile(src_filename, dest_filename)
          if err then
            ModLogF(true, "Failed to copy %s to %s: %s", src_filename, dest_filename, err)
          else
            ModLogF("Importing %s %s", asset_type, asset)
          end
          matched = true
        end
      end
      if not matched then
        ModLogF(true, "Missing file %s referenced in entity", asset)
      end
    end
  end
  CopyAssetType("Meshes/", "meshes", ".hgm", "mesh")
  CopyAssetType("Animations/", "animations", {".hga", ".hgacl"}, "animation")
  CopyAssetType("Materials/", "materials", ".mtl", "material")
  CopyAssetType("Textures/", "textures", ".dds", "texture")
  local dest_path = entity_root .. "Textures/Fallbacks/"
  for _, asset in ipairs(entity.textures) do
    local err = AsyncCreatePath(dest_path)
    if err then
      ModLogF(true, "Failed to create path %s: %s", dest_path, err)
      break
    end
    local src_filename = entity_root .. "Textures/" .. asset .. ".dds"
    local dest_filename = dest_path .. asset .. ".dds"
    local cmdline = string.format("\"%s\" \"%s\" \"%s\" --truncate %d", ConvertToOSPath(g_HgimgcvtPath), ConvertToOSPath(src_filename), ConvertToOSPath(dest_filename), 64)
    local err = AsyncExec(cmdline, ".", true)
    if err then
      ModLogF(true, "Failed to generate backup for <%s: %s", asset, err)
    end
  end
  if self.name == "" then
    self.name = entity_name
  end
  self.entity_name = entity_name
  self:StoreImportPath()
  ObjModified(self)
end
function ModItemEntity:ReloadEntities(root, prop_id, socket, btn_param, idx)
  ChangeMap("")
  ModsLoadAssets()
  ChangeMap(ModEditorMapName)
end
function ModItemEntity:PostSave()
  ModItem.PostSave(self)
  if not self.entity_name then
    return
  end
  local data = self:ExportEntityDataForSelf()
  if not next(data) then
    return
  end
  local code = string.format("EntityData[\"%s\"] = %s", self.entity_name, ValueToLuaCode(data))
  local path = self:GetCodeFilePath()
  local folder = SplitPath(path)
  AsyncCreatePath(folder)
  AsyncStringToFile(path, code)
end
function ModItemEntity:GetCodeFileName()
  if not self.entity_name then
    return
  end
  local data = self:ExportEntityDataForSelf()
  if not next(data) then
    return
  end
  return string.format("Entities/%s.lua", self.entity_name)
end
if FirstLoad then
  EntityLoadEntities = {}
end
function DelayedLoadEntity(mod, entity, entity_filename)
  EntityLoadEntities[#EntityLoadEntities + 1] = {
    mod,
    entity,
    entity_filename
  }
end
function WaitDelayedLoadEntities()
  if #EntityLoadEntities > 0 then
    local list = EntityLoadEntities
    EntityLoadEntities = {}
    AsyncLoadAdditionalEntities(table.map(list, 3))
    Msg("EntitiesLoaded")
    for i, data in ipairs(list) do
      if not IsValidEntity(data[2]) then
        ModLogF(true, "Mod %s failed to load %s", data[1]:GetModLabel(), data[2])
      end
    end
  end
end
function ModItemEntity:StoreImportPath()
  if not self.mod or (self.entity_name or "") == "" then
    return
  end
  local key = string.format("%s_%s", self.mod.id, self.entity_name)
  table.set(LocalStorage, "EntityModImportPaths", key, self.import)
  SaveLocalStorageDelayed()
end
function ModItemEntity:RestoreImportPath()
  if not self.mod or (self.entity_name or "") == "" then
    return
  end
  local key = string.format("%s_%s", self.mod.id, self.entity_name)
  self.import = table.get(LocalStorage, "EntityModImportPaths", key) or self.import or ""
end
function ModItemEntity:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "import" then
    self:StoreImportPath()
  end
  return ModItemPreset.OnEditorSetProperty(self, prop_id, old_value, ged)
end
function ModItemEntity:OnModLoad()
  ModItem.OnModLoad(self)
  self:RestoreImportPath()
  local entity_filename = self.mod.content_path .. "Entities/" .. self.entity_name .. ".ent"
  if not io.exists(entity_filename) then
    ModLogF(true, "Failed to open entity file %s", entity_filename)
    return
  end
  DelayedLoadEntity(self.mod, self.entity_name, entity_filename)
end
function ModItemEntity:TestModItem(ged)
  self.mod:UpdateCode()
  self:OnModLoad()
  WaitDelayedLoadEntities()
  Msg("BinAssetsLoaded")
  ReloadLua()
  if GetMap() == "" then
    ModLogF("Entity testing only possible when a map is loaded")
    return
  end
  local obj = PlaceObject("Shapeshifter")
  obj:ChangeEntity(self.entity_name)
  obj:SetPos(GetTerrainCursorXY(UIL.GetScreenSize() / 2))
  if IsEditorActive() then
    EditorViewMapObject(obj, nil, true)
  else
    ViewObject(obj)
  end
end
local DeleteIfEmpty = function(path)
  local err, files = AsyncListFiles(path, "*", "recursive")
  local err, folders = AsyncListFiles(path, "*", "recursive,folders")
  if #files == 0 and #folders == 0 then
    AsyncDeletePath(path)
  end
end
local DeleteEntity = function(entity_root, entity_name)
  local err, entity = ParseEntity(entity_root, entity_name)
  if err then
    return
  end
  for _, name in ipairs(entity.meshes) do
    AsyncFileDelete(entity_root .. "Meshes/" .. name .. ".hgm")
  end
  for _, name in ipairs(entity.animations) do
    if io.exists(entity_root .. "Animations/" .. name .. ".hga") then
      AsyncFileDelete(entity_root .. "Animations/" .. name .. ".hga")
    else
      AsyncFileDelete(entity_root .. "Animations/" .. name .. ".hgacl")
    end
  end
  for _, name in ipairs(entity.materials) do
    AsyncFileDelete(entity_root .. "Materials/" .. name .. ".mtl")
  end
  for _, name in ipairs(entity.textures) do
    AsyncFileDelete(entity_root .. "Textures/" .. name .. ".dds")
    AsyncFileDelete(entity_root .. "Textures/Fallbacks/" .. name .. ".dds")
  end
  AsyncFileDelete(entity_root .. entity_name .. ".ent")
  DeleteIfEmpty(entity_root .. "Meshes/")
  DeleteIfEmpty(entity_root .. "Animations/")
  DeleteIfEmpty(entity_root .. "Materials/")
  DeleteIfEmpty(entity_root .. "Textures/Fallbacks/")
  DeleteIfEmpty(entity_root .. "Textures/")
  DeleteIfEmpty(entity_root)
end
function ModItemEntity:OnEditorDelete(mod, ged)
  local entity_root = self.mod.content_path .. "Entities/"
  DeleteEntity(entity_root, self.entity_name)
end
function GetModEntities(typ)
  local results = {}
  for _, mod in ipairs(ModsLoaded or empty_table) do
    for _, mc in ipairs(mod.items) do
      if IsKindOf(mc, "ModItemEntity") or IsKindOf(mc, "ModItemDecalEntity") then
        results[#results + 1] = mc.entity_name
      end
    end
  end
  table.sort(results)
  return results
end
if FirstLoad then
  g_FontReplaceMap = {}
end
DefineClass.FontAsset = {
  __parents = {"InitDone"},
  properties = {
    {
      id = "FontPath",
      name = "Font path",
      editor = "browse",
      default = false,
      filter = "Font files|*.ttf;*.otf",
      mod_dst = function()
        return GetModAssetDestFolder("Font")
      end
    }
  }
}
function FontAsset:Done()
  if self.FontPath then
    AsyncDeletePath(self.FontPath)
  end
end
function FontAsset:LoadFont(font_path)
  local file_list = {}
  table.insert(file_list, font_path)
  return UIL.LoadFontFileList(file_list)
end
function FontAsset:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "FontPath" then
    GedSetUiStatus("mod_import_font_asset", "Importing font...")
    if old_value then
      AsyncDeletePath(old_value)
    end
    if self.FontPath then
      local ok = self:LoadFont(self.FontPath)
      if not ok then
        ged:ShowMessage("Failed importing font", [[
The font file could not be processed correctly. Please try another font file or format. 
Read the mod item font documentation for more details on supported formats.]])
        AsyncDeletePath(self.FontPath)
        self.FontPath = nil
      else
        ged:ShowMessage("Success", "Font loaded successfully.")
      end
    end
    GedSetUiStatus("mod_import_font_asset")
  end
  ModItem.OnEditorSetProperty(self, prop_id, old_value, ged)
end
local font_items = function()
  return UIL.GetAllFontNames()
end
DefineClass.FontReplaceMapping = {
  __parents = {"InitDone"},
  properties = {
    {
      id = "Replace",
      name = "Replace",
      editor = "choice",
      default = false,
      items = font_items
    },
    {
      id = "With",
      name = "With",
      editor = "choice",
      default = false,
      items = font_items
    }
  }
}
function FontReplaceMapping:Done()
  if self.Replace and g_FontReplaceMap then
    g_FontReplaceMap[self.Replace] = nil
  end
end
function FontReplaceMapping:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "Replace" and old_value and g_FontReplaceMap then
    g_FontReplaceMap[old_value] = nil
  end
  if self.Replace and self.With and g_FontReplaceMap then
    g_FontReplaceMap[self.Replace] = self.With
    Msg("TranslationChanged")
  end
  ModItem.OnEditorSetProperty(self, prop_id, old_value, ged)
end
DefineClass.ModItemFont = {
  __parents = {"ModItem"},
  properties = {
    {
      category = "Font assets",
      id = "AssetFiles",
      name = "Font asset files",
      editor = "nested_list",
      default = false,
      base_class = "FontAsset",
      auto_expand = true,
      help = "Import TTF and OTF font files to be loaded into the game"
    },
    {
      category = "Font replace mapping",
      id = "ReplaceMappings",
      name = "Font replace mappings",
      editor = "nested_list",
      default = false,
      base_class = "FontReplaceMapping",
      auto_expand = true,
      help = "Choose fonts to replace and which fonts to replace them with"
    },
    {
      category = "Font replace mapping",
      id = "TextStylesHelp",
      name = "TextStyles help",
      editor = "help",
      default = false,
      help = "You can also replace individual text styles by adding \"TextStyle\" mod items."
    }
  },
  EditorName = "Font",
  EditorSubmenu = "Assets"
}
function ModItemFont:GetFontTargetPath()
  return SlashTerminate(self.mod.content_path) .. "Fonts"
end
function ModItemFont:OnModLoad()
  self:LoadFonts()
  self:ApplyFontReplaceMapping()
  Msg("TranslationChanged")
  ModItem.OnModLoad(self)
end
function ModItemFont:OnModUnload()
  self:RemoveFontReplaceMapping()
  Msg("TranslationChanged")
  ModItem.OnModUnload(self)
end
function ModItemFont:LoadFonts()
  if not self.AssetFiles then
    return false
  end
  local file_list = {}
  for _, font_asset in ipairs(self.AssetFiles) do
    if font_asset.FontPath then
      table.insert(file_list, font_asset.FontPath)
    end
  end
  return UIL.LoadFontFileList(file_list)
end
function ModItemFont:ApplyFontReplaceMapping()
  if not self.ReplaceMappings or not g_FontReplaceMap then
    return false
  end
  for _, mapping in ipairs(self.ReplaceMappings) do
    if mapping.Replace and mapping.With then
      g_FontReplaceMap[mapping.Replace] = mapping.With
    end
  end
end
function ModItemFont:RemoveFontReplaceMapping()
  if not self.ReplaceMappings or not g_FontReplaceMap then
    return false
  end
  for _, mapping in ipairs(self.ReplaceMappings) do
    if mapping.Replace then
      g_FontReplaceMap[mapping.Replace] = nil
    end
  end
end
local size_items = {
  {
    id = "Small",
    name = "Small (10cm x 10cm)"
  },
  {
    id = "Medium",
    name = "Medium (1m x 1m)"
  },
  {
    id = "Large",
    name = "Large (10m x 10m)"
  }
}
local decal_group_items = {
  "Default",
  "Terrain",
  "TerrainOnly",
  "Unit"
}
DefineClass.ModItemDecalEntity = {
  __parents = {"ModItem"},
  EditorName = "Decal",
  EditorSubmenu = "Assets",
  properties = {
    {
      category = "Decal",
      id = "entity_name",
      name = "Entity name",
      editor = "text",
      default = ""
    },
    {
      category = "Decal",
      id = "size",
      name = "Size",
      editor = "choice",
      default = "Small",
      items = size_items
    },
    {
      category = "Decal",
      id = "BaseColorMap",
      name = "Basecolor map",
      editor = "browse",
      os_path = true,
      filter = "Image files|*.png;*.tga",
      default = "",
      mtl_map = "BaseColorDecal"
    },
    {
      category = "Decal",
      id = "NormalMap",
      name = "Normal map",
      editor = "browse",
      os_path = true,
      filter = "Image files|*.png;*.tga",
      default = "",
      mtl_map = "NormalMapDecal"
    },
    {
      category = "Decal",
      id = "RMMap",
      name = "Roughness/metallic map",
      editor = "browse",
      os_path = true,
      filter = "Image files|*.png;*.tga",
      default = "",
      mtl_map = "RMDecal"
    },
    {
      category = "Decal",
      id = "AOMap",
      name = "Ambient occlusion map",
      editor = "browse",
      os_path = true,
      filter = "Image files|*.png;*.tga",
      default = "",
      mtl_map = "AODecal"
    },
    {
      category = "Decal",
      id = "TriplanarDecal",
      name = "Triplanar",
      editor = "bool",
      default = false,
      mtl_prop = true,
      help = "When toggled the decal is projected along every axis, not only forward."
    },
    {
      category = "Decal",
      id = "DoubleSidedDecal",
      name = "Double sided",
      editor = "bool",
      default = true,
      mtl_prop = true,
      help = "When toggled the decal can be seen from the backside as well. This is useful for objects that can be hidden, like wall slabs."
    },
    {
      category = "Decal",
      id = "DecalGroup",
      name = "Group",
      editor = "choice",
      default = "Default",
      items = decal_group_items,
      mtl_prop = true,
      help = [[
Determines what objects will have the decal projected onto.

Default - everything
Terrain - the terrain, slabs and small terrain objects like grass, rocks and others
TerrainOnly - only the terrain
Unit - only units]]
    },
    {
      category = "Decal",
      id = "import",
      editor = "buttons",
      buttons = {
        {
          name = "Import Decal Entity",
          func = "Import"
        }
      },
      default = ""
    }
  }
}
function ModItemDecalEntity:Import(root, prop_id, ged_socket)
  GedSetUiStatus("mod_import_decal", "Importing...")
  local success = self:DoImport(root, prop_id, ged_socket)
  if not success then
    GedSetUiStatus("mod_import_decal")
    return
  end
  self:OnModLoad()
  WaitDelayedLoadEntities()
  Msg("BinAssetsLoaded")
  GedSetUiStatus("mod_import_decal")
  ged_socket:ShowMessage("Success", "Decal imported successfully!")
end
function ModItemDecalEntity:DoImport(root, prop_id, ged_socket)
  local output_dir = ConvertToOSPath(self.mod.content_path)
  local ent_dir = output_dir .. "Entities/"
  local mesh_dir = ent_dir .. "Meshes/"
  local mtl_dir = ent_dir .. "Materials/"
  local texture_dir = ent_dir .. "Textures/"
  local fallback_dir = texture_dir .. "Fallbacks/"
  if not self:CreateDirectory(ged_socket, ent_dir, "Entities") then
    return
  end
  if not self:CreateDirectory(ged_socket, mesh_dir, "Meshes") then
    return
  end
  if not self:CreateDirectory(ged_socket, mtl_dir, "Materials") then
    return
  end
  if not self:CreateDirectory(ged_socket, texture_dir, "Textures") then
    return
  end
  if not self:CreateDirectory(ged_socket, fallback_dir, "Fallbacks") then
    return
  end
  for i, prop_meta in ipairs(self:GetProperties()) do
    if prop_meta.mtl_map then
      local path = self:GetProperty(prop_meta.id)
      if path ~= "" and not self:ImportImage(ged_socket, prop_meta.id, texture_dir, fallback_dir) then
        return
      end
    end
  end
  local ent_file = self.entity_name .. ".ent"
  local ent_output = ent_dir .. ent_file
  local mtl_file = self.entity_name .. "_mesh.mtl"
  local mtl_output = mtl_dir .. mtl_file
  local mesh_file = self.entity_name .. "_mesh.hgm"
  local mesh_output = mesh_dir .. mesh_file
  if not self:CreateEntityFile(ged_socket, ent_output, mesh_file, mtl_file) then
    return
  end
  if not self:CreateMtlFile(ged_socket, mtl_output) then
    return
  end
  if not self:CreateMeshFile(ged_socket, mesh_output) then
    return
  end
  return true
end
function ModItemDecalEntity:CreateDirectory(ged_socket, path, name)
  local err = AsyncCreatePath(path)
  if err then
    ged_socket:ShowMessage("Failed importing decal", string.format("Failed creating %s directory: %s.", name, err))
    return
  end
  return true
end
function ModItemDecalEntity:GetTextureFileName(prop_id, extension)
  return string.format("mod_%s_%s%s", prop_id, self.entity_name, extension)
end
function ModItemDecalEntity:ValidateImage(prop_id, ged_socket)
  local path = self:GetProperty(prop_id)
  if not io.exists(path) then
    local prop_name = self:GetPropertyMetadata(prop_id).name
    ged_socket:ShowMessage("Failed importing decal", string.format("Import failed - the %s image was not found.", prop_name))
    return
  end
  local w, h = UIL.MeasureImage(path)
  if w ~= h then
    local prop_name = self:GetPropertyMetadata(prop_id).name
    ged_socket:ShowMessage("Failed importing decal", string.format("The import failed because the %s image width and height are wrong. Image must be a square and pixel width and height must be power of two (e.g. 1024, 2048, 4096, etc.).", prop_name))
    return
  end
  if w <= 0 or band(w, w - 1) ~= 0 then
    local prop_name = self:GetPropertyMetadata(prop_id).name
    ged_socket:ShowMessage("Failed importing decal", string.format("The import failed because the %s image width and height are wrong. Image must be a square and pixel width and height must be power of two (e.g. 1024, 2048, 4096, etc.).", prop_name))
    return
  end
  return true
end
function ModItemDecalEntity:ImportImage(ged_socket, prop_id, texture_dir, fallback_dir)
  if not self:ValidateImage(prop_id, ged_socket) then
    return
  end
  local path = self:GetProperty(prop_id)
  local texture_name = self:GetTextureFileName(prop_id, ".dds")
  local texture_output = texture_dir .. texture_name
  local cmdline = string.format("\"%s\" -dds10 -24 bc1 -32 bc3 -srgb \"%s\" \"%s\"", ConvertToOSPath(g_HgnvCompressPath), path, texture_output)
  local err = AsyncExec(cmdline, "", true, false)
  if err then
    ged_socket:ShowMessage("Failed importing decal", string.format("Failed creating compressed image: <u(err)>.", err))
    return
  end
  local fallback_output = fallback_dir .. texture_name
  cmdline = string.format("\"%s\" \"%s\" \"%s\" --truncate %d", ConvertToOSPath(g_HgimgcvtPath), texture_output, fallback_output, const.FallbackSize)
  local err = AsyncExec(cmdline, "", true, false)
  if err then
    ged_socket:ShowMessage("Failed importing decal", string.format("Failed creating fallback image: %s.", err))
    return
  end
  return true
end
function ModItemDecalEntity:CreateEntityFile(ged_socket, ent_path, mesh_file, mtl_file)
  local placeholder_entity = string.format("DecMod_%s", self.size)
  local bbox = GetEntityBoundingBox(placeholder_entity)
  local bbox_min_str = string.format("%d,%d,%d", bbox:minxyz())
  local bbox_max_str = string.format("%d,%d,%d", bbox:maxxyz())
  local bcenter, bradius = GetEntityBoundingSphere(placeholder_entity)
  local bcenter_str = string.format("%d,%d,%d", bcenter:xyz())
  local lines = {
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>",
    "<entity path=\"\">",
    "\t<state id=\"idle\">",
    "\t\t<mesh_ref ref=\"mesh\"/>",
    "\t</state>",
    "\t<mesh_description id=\"mesh\">",
    "\t\t<src file=\"\"/>",
    string.format("\t\t<mesh file=\"Meshes/%s\"/>", mesh_file),
    string.format("\t\t<material file=\"Materials/%s\"/>", mtl_file),
    string.format("\t\t<bsphere value=\"%s,%d\"/>", bcenter_str, bradius),
    string.format("\t\t<box min=\"%s\" max=\"%s\"/>", bbox_min_str, bbox_max_str),
    "\t</mesh_description>",
    "</entity>"
  }
  local content = table.concat(lines, "\n")
  local err = AsyncStringToFile(ent_path, content)
  if err then
    ged_socket:ShowMessage("Failed importing decal", string.format("Failed creating entity file: %s.", err))
    return
  end
  return true
end
function ModItemDecalEntity:CreateMtlFile(ged_socket, mtl_path)
  local mtl_props = {
    AlphaTestValue = 128,
    BlendType = "Blend",
    CastShadow = false,
    SpecialType = "Decal",
    Deposition = false,
    TerrainDistortedMesh = false
  }
  for i, prop_meta in ipairs(self:GetProperties()) do
    local id = prop_meta.id
    if prop_meta.mtl_map then
      local path = self:GetProperty(id)
      mtl_props[prop_meta.mtl_map] = io.exists(path)
    elseif prop_meta.mtl_prop then
      mtl_props[id] = self:GetProperty(id)
    end
  end
  local lines = {
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>",
    "<Materials>",
    "\t<Material>"
  }
  for i, prop_meta in ipairs(self:GetProperties()) do
    local id = prop_meta.id
    if prop_meta.mtl_map and mtl_props[prop_meta.mtl_map] then
      local path = self:GetTextureFileName(id, ".dds")
      table.insert(lines, string.format("\t\t<%s Name=\"%s\" mc=\"0\"/>", id, path))
    end
  end
  for id, value in sorted_pairs(mtl_props) do
    local value_type, value_str = type(value), ""
    if value_type == "boolean" then
      value_str = value and "1" or "0"
    else
      value_str = tostring(value)
    end
    table.insert(lines, string.format("\t\t<Property %s=\"%s\"/>", id, value_str))
  end
  table.insert(lines, "\t</Material>")
  table.insert(lines, "</Materials>")
  local content = table.concat(lines, "\n")
  local err = AsyncStringToFile(mtl_path, content)
  if err then
    ged_socket:ShowMessage("Failed importing decal", string.format("Failed creating material file: <u(err)>.", err))
    return
  end
  return true
end
function ModItemDecalEntity:CreateMeshFile(ged_socket, hgm_path)
  local placeholder_entity = string.format("DecMod_%s", self.size)
  local placeholder_file = placeholder_entity .. "_mesh.hgm"
  local placeholder_path = "Meshes/" .. placeholder_file
  local err = AsyncCopyFile(placeholder_path, hgm_path)
  if err then
    ged_socket:ShowMessage("Failed importing decal", string.format("Could not create a mesh file: %s.", err))
    return
  end
  return true
end
function ModItemDecalEntity:OnModLoad()
  ModItem.OnModLoad(self)
  local entity_filename = self.mod.content_path .. "Entities/" .. self.entity_name .. ".ent"
  if not io.exists(entity_filename) then
    ModLogF("Failed to open decal entity file %s>", entity_filename)
    return
  end
  DelayedLoadEntity(self.mod, self.entity_name, entity_filename)
end
function ModItemDecalEntity:TestModItem(ged)
  self:OnModLoad()
  WaitDelayedLoadEntities()
  Msg("BinAssetsLoaded")
  if GetMap() == "" then
    ModLogF("Entity testing only possible when a map is loaded")
    return
  end
  local obj = PlaceObject("Shapeshifter")
  obj:ChangeEntity(self.entity_name)
  obj:SetPos(GetTerrainCursorXY(UIL.GetScreenSize() / 2))
  if IsEditorActive() then
    EditorViewMapObject(obj, nil, true)
  else
    ViewObject(obj)
  end
end
function ModItemDecalEntity:OnEditorDelete(mod, ged)
  local entity_root = self.mod.content_path .. "Entities/"
  DeleteEntity(entity_root, self.entity_name)
end
DefineClass.ModItemGameValue = {
  __parents = {"ModItem"},
  properties = {
    {id = "name", editor = false},
    {
      category = "GameValue",
      id = "category",
      name = "Category",
      default = "Gameplay",
      editor = "choice",
      items = ClassCategoriesCombo("Consts")
    },
    {
      category = "GameValue",
      id = "id",
      name = "ID",
      default = "",
      editor = "choice",
      items = ClassPropertiesCombo("Consts", "category", "")
    },
    {
      category = "GameValue",
      id = "const_name",
      name = "Name",
      default = "",
      editor = "text",
      read_only = true,
      dont_save = true
    },
    {
      category = "GameValue",
      id = "help",
      name = "Help",
      default = "",
      editor = "text",
      read_only = true,
      dont_save = true
    },
    {
      category = "GameValue",
      id = "default_value",
      name = "Default value",
      default = 0,
      editor = "number",
      read_only = true,
      dont_save = true
    },
    {
      category = "GameValue",
      id = "percent",
      name = "Percent",
      default = 0,
      editor = "number"
    },
    {
      category = "GameValue",
      id = "amount",
      name = "Amount",
      default = 0,
      editor = "number"
    },
    {
      category = "GameValue",
      id = "modified_value",
      name = "Modified value",
      default = 0,
      editor = "number",
      read_only = true,
      dont_save = true
    }
  },
  EditorName = "Game value",
  EditorSubmenu = "Gameplay"
}
function ModItemGameValue:Getconst_name()
  local metadata = Consts:GetPropertyMetadata(self.id)
  return _InternalTranslate(metadata and metadata.name or "")
end
function ModItemGameValue:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "category" then
    self.id = ""
  end
  ModItem.OnEditorSetProperty(self, prop_id, old_value, ged)
end
function ModItemGameValue:GetProperties()
  local properties = {}
  for _, prop_meta in ipairs(self.properties) do
    local prop_id = prop_meta.id
    if prop_id == "default_value" or prop_id == "amount" or prop_id == "modified_value" then
      local const_meta = Consts:GetPropertyMetadata(self.id)
      if const_meta then
        prop_meta = table.copy(prop_meta)
        prop_meta.scale = const_meta.scale
      end
    end
    properties[#properties + 1] = prop_meta
  end
  return properties
end
function ModItemGameValue:Gethelp()
  local metadata = Consts:GetPropertyMetadata(self.id)
  return _InternalTranslate(metadata and metadata.help or "")
end
function ModItemGameValue:Getdefault_value()
  return Consts:GetDefaultPropertyValue(self.id) or 0
end
function ModItemGameValue:Getmodified_value()
  local default_value = Consts:GetDefaultPropertyValue(self.id) or 0
  return MulDivRound(default_value, self.percent + 100, 100) + self.amount
end
function ModItemGameValue:ResetProperties()
  self.id = self:GetDefaultPropertyValue("id")
  self.const_name = self:GetDefaultPropertyValue("const_name")
  self.help = self:GetDefaultPropertyValue("help")
  self.default_value = self:GetDefaultPropertyValue("default_value")
  self.modified_value = self:GetDefaultPropertyValue("modified_value")
end
function ModItemGameValue:GetModItemDescription()
  if self.id == "" then
    return ""
  end
  local pct = self.percent ~= 0 and string.format(" %+d%%", self.percent) or ""
  local const_meta = Consts:GetPropertyMetadata(self.id)
  local prefix = 0 < self.amount and "+" or ""
  local amount = self.amount ~= 0 and prefix .. FormatNumberProp(self.amount, const_meta.scale) or ""
  return Untranslated(string.format("%s.%s %s %s", self.category, self.id, pct, amount))
end
function GenerateGameValueDoc()
  if not g_Classes.Consts then
    return
  end
  local output = {}
  local categories = ClassCategoriesCombo("Consts")()
  local out = function(...)
    output[#output + 1] = string.format(...)
  end
  local props = Consts:GetProperties()
  for _, category in ipairs(categories) do
    out("## %s", category)
    for _, prop in ipairs(props) do
      if prop.category == category then
        out([[
%s
:	*g_Consts.%s*<br>
	%s
]], _InternalTranslate(prop.name), prop.id, _InternalTranslate(prop.help or prop.name))
      end
    end
  end
  local err, suffix = AsyncFileToString("svnProject/Docs/ModTools/empty.md.html")
  if err then
    return err
  end
  output[#output + 1] = suffix
  AsyncStringToFile("svnProject/Docs/ModTools/ModItemGameValue_list.md.html", table.concat(output, "\n"))
end
function GenerateObjectDocs(base_class)
  local list = ClassDescendantsList(base_class)
  local output = {
    string.format("# Documentation for *%s objects*\n", base_class)
  }
  local base_props = g_Classes[base_class]:GetProperties()
  local hidden_dlc_list = {}
  ForEachPreset("DLCConfig", function(p)
    if not p.public then
      hidden_dlc_list[p.id] = true
    end
  end)
  local hidden_classdef_list = {}
  ForEachPreset(base_class .. "Def", function(p)
    local save_in = p:HasMember("save_in") and p.save_in or nil
    if save_in and hidden_dlc_list[save_in] then
      hidden_classdef_list[p.id] = p.save_in
    end
  end)
  for _, name in ipairs(list) do
    local class = g_Classes[name]
    if class:HasMember("Documentation") and not hidden_classdef_list[name] then
      output[#output + 1] = string.format("## %s\n", name)
      output[#output + 1] = class.Documentation
      for _, prop in ipairs(class:GetProperties()) do
        if not table.find(base_props, "id", prop.id) and prop.help and prop.help ~= "" then
          output[#output + 1] = string.format([[
%s
: %s
]], prop.name or prop.id, prop.help)
        else
        end
      end
    else
    end
  end
  OutputDocsFile(string.format("Lua%sDoc.md.html", base_class), output)
end
function OnMsg.PresetSave(class)
  if class == "ClassDef" then
    GenerateObjectDocs("Effect")
    GenerateObjectDocs("Condition")
  elseif class == "ConstDef" then
    GenerateGameValueDoc()
  end
end
function GetAllLanguages()
  local languages = table.copy(AllLanguages, "deep")
  table.insert(languages, 1, {
    value = "Any",
    text = "Any",
    iso_639_1 = "en"
  })
  return languages
end
DefineClass.ModItemLocTable = {
  __parents = {"ModItem"},
  properties = {
    {id = "name", editor = false},
    {
      category = "Mod",
      id = "language",
      name = "Language",
      default = "",
      editor = "dropdownlist",
      items = GetAllLanguages()
    },
    {
      category = "Mod",
      id = "filename",
      name = "Filename",
      editor = "browse",
      filter = "Comma separated values (*.csv)|*.csv",
      default = ""
    }
  },
  EditorName = "Localization",
  EditorSubmenu = "Assets",
  ModItemDescription = T(677060079613, "<u(language)>")
}
function ModItemLocTable:OnModLoad()
  ModItem.OnModLoad(self)
  if (self.language == GetLanguage() or self.language == "Any") and io.exists(self.filename) then
    LoadTranslationTableFile(self.filename)
    Msg("TranslationChanged")
  end
end
function ModItemLocTable:TestModItem()
  if io.exists(self.filename) then
    LoadTranslationTableFile(self.filename)
    Msg("TranslationChanged")
  end
end
DefineModItemPreset("XTemplate", {
  GetSaveFolder = function()
  end,
  EditorName = "XTemplate"
})
function ModItemXTemplate:TestModItem(ged)
  GedOpPreviewXTemplate(ged, self, false)
end
function ModItemXTemplate:GetSaveFolder(...)
  return ModItemPreset.GetSaveFolder(self, ...)
end
function ModItemXTemplate:GetSavePath(...)
  return ModItemPreset.GetSavePath(self, ...)
end
DefineModItemPreset("SoundPreset", {EditorName = "Sound", EditorSubmenu = "Other"})
function ModItemSoundPreset:GetSoundFiles()
  local file_paths = SoundPreset.GetSoundFiles(self)
  for _, sound_file in ipairs(self) do
    local sound_path = sound_file:Getpath()
    if io.exists(sound_path) then
      file_paths[sound_path] = true
    end
  end
  return file_paths
end
function ModItemSoundPreset:OnEditorNew(...)
  SoundPreset.OnEditorNew(self, ...)
  ModItemPreset.OnEditorNew(self, ...)
end
function ModItemSoundPreset:OverrideSampleFuncs(sample)
  function sample.GetFileFilter()
    return "Sample File|*.opus;*.wav"
  end
  function sample.Setpath(obj, path)
    sample.file = path
  end
  function sample.Getpath()
    if sample.file == "" then
      return ".opus"
    elseif string.ends_with(sample.file, ".opus") or string.ends_with(sample.file, ".wav") then
      return sample.file
    else
      return sample.file .. ".wav"
    end
  end
  function sample.GetFileExt()
    return "opus"
  end
end
function ModItemSoundPreset:OnModLoad()
  for _, sample in ipairs(self or empty_table) do
    if IsKindOf(sample, "Sample") then
      self:OverrideSampleFuncs(sample)
    end
  end
  ModItemPreset.OnModLoad(self)
  LoadSoundBank(self)
end
function ModItemSoundPreset:TestModItem(ged)
  LoadSoundBank(self)
  GedPlaySoundPreset(ged)
end
function ModItemSoundPreset:GenerateUniquePresetId()
  return SoundPreset.GenerateUniquePresetId(self, "Sound")
end
local GenerateUniqueActionFXHandle = function(mod_item)
  local mod_id = mod_item.mod.id
  local index = table.find(mod_item.mod.items, mod_item)
  while true do
    local handle = string.format("%s_%d", mod_id, index)
    local any_collisions
    for i, other_item in ipairs(mod_item.mod.items) do
      if other_item ~= mod_item and IsKindOf(other_item, "ActionFX") and other_item.handle == handle then
        any_collisions = true
        break
      end
    end
    if not any_collisions then
      return handle
    else
      index = index + 1
    end
  end
end
local DefineModItemActionFX = function(preset, editor_name)
  local actionfx_mod_class = DefineModItemPreset(preset, {
    EditorName = editor_name,
    EditorSubmenu = "ActionFX",
    EditorShortcut = false
  })
  function actionfx_mod_class:OnEditorNew(...)
    g_Classes[self.ModdedPresetClass].OnEditorNew(self, ...)
    return ModItemPreset.OnEditorNew(self, ...)
  end
  function actionfx_mod_class:SetId(id)
    self.handle = id
    return Preset.SetId(self, id)
  end
  function actionfx_mod_class:GetSavePath(...)
    return ModItemPreset.GetSavePath(self, ...)
  end
  function actionfx_mod_class:delete()
    return g_Classes[self.ModdedPresetClass].delete(self)
  end
  function actionfx_mod_class:TestModItem(ged)
    PlayFX(self.Action, self.Moment, SelectedObj, SelectedObj)
  end
  function actionfx_mod_class:PreSave()
    if not self.handle and self.mod then
      if self.id == "" then
        self:SetId(self.mod:GenerateModItemId(self))
      end
      self.handle = self.id
    end
    return ModItemPreset.PreSave(self)
  end
  local properties = actionfx_mod_class.properties or {}
  table.iappend(properties, {
    {
      id = "__copy_group"
    },
    {id = "__copy"}
  })
end
DefineModItemActionFX("ActionFXSound", "Sound")
DefineModItemActionFX("ActionFXObject", "Object")
DefineModItemActionFX("ActionFXDecal", "Decal")
DefineModItemActionFX("ActionFXLight", "Light")
DefineModItemActionFX("ActionFXColorization", "Colorization")
DefineModItemActionFX("ActionFXParticles", "Particles")
DefineModItemActionFX("ActionFXRemove", "Remove")
function OnMsg.ModsReloaded()
  RebuildFXRules()
end
DefineClass.ModItemParticleTexture = {
  __parents = {"ModItem"},
  properties = {
    {
      category = "Texture",
      id = "import",
      name = "Import",
      editor = "browse",
      os_path = true,
      filter = "Image files|*.png;*.tga",
      default = "",
      dont_save = true
    },
    {
      category = "Texture",
      id = "btn",
      editor = "buttons",
      default = false,
      buttons = {
        {
          name = "Import Particle Texture",
          func = "Import"
        }
      },
      untranslated = true
    }
  }
}
function ModItemParticleTexture:Import(root, prop_id, ged_socket)
  GedSetUiStatus("mod_import_particle_texture", "Importing...")
  local output_dir = ConvertToOSPath(self.mod.content_path)
  local w, h = UIL.MeasureImage(self.import)
  if w ~= h then
    ged_socket:ShowMessage("Failed importing texture", "The import failed because the image width and height are wrong. Image must be a square and pixel width and height must be power of two (e.g. 1024, 2048, 4096, etc.).")
    GedSetUiStatus("mod_import_particle_texture")
    return
  end
  if w <= 0 or band(w, w - 1) ~= 0 then
    ged_socket:ShowMessage("Failed importing texture", "The import failed because the image width and height are wrong. Image must be a square and pixel width and height must be power of two (e.g. 1024, 2048, 4096, etc.).")
    GedSetUiStatus("mod_import_particle_texture")
    return
  end
  local dir, name, ext = SplitPath(self.import)
  local texture_name = name .. ".dds"
  local texture_dir = output_dir .. GetModAssetDestFolder("Particle Texture")
  local texture_output = texture_dir .. "/" .. texture_name
  local fallback_dir = texture_dir .. "Fallbacks/"
  local fallback_output = fallback_dir .. texture_name
  local err = AsyncCreatePath(texture_dir)
  if err then
    ged_socket:ShowMessage("Failed importing texture", string.format("Failed creating %s directory: %s.", "Textures", err))
    GedSetUiStatus("mod_import_particle_texture")
    return
  end
  err = AsyncCreatePath(fallback_dir)
  if err then
    ged_socket:ShowMessage("Failed importing texture", string.format("Failed creating %s directory: %s.", "Fallbacks", err))
    GedSetUiStatus("mod_import_particle_texture")
    return
  end
  local cmdline = string.format("\"%s\" -dds10 -24 bc1 -32 bc3 -srgb \"%s\" \"%s\"", ConvertToOSPath(g_HgnvCompressPath), self.import, texture_output)
  local err, out = AsyncExec(cmdline, "", true, false)
  if err then
    ged_socket:ShowMessage("Failed importing texture", string.format("Failed creating compressed image: %s.", err))
    GedSetUiStatus("mod_import_particle_texture")
    return
  end
  cmdline = string.format("\"%s\" \"%s\" \"%s\" --truncate %d", ConvertToOSPath(g_HgimgcvtPath), texture_output, fallback_output, const.FallbackSize)
  err = AsyncExec(cmdline, "", true, false)
  if err then
    ged_socket:ShowMessage("Failed importing texture", string.format("Failed creating fallback image: %s.", err))
    GedSetUiStatus("mod_import_particle_texture")
    return
  end
  self:OnModLoad()
  GedSetUiStatus("mod_import_particle_texture")
  ged_socket:ShowMessage("Success", "Texture imported successfully!")
end
DefineModItemPreset("ParticleSystemPreset", {
  properties = {
    {
      id = "ui",
      name = "UI Particle System",
      editor = "bool",
      default = false,
      no_edit = true
    },
    {
      id = "saving",
      editor = "bool",
      default = false,
      dont_save = true,
      no_edit = true
    }
  },
  EditorName = "Particle system"
})
function ModItemParticleSystemPreset:GetTextureBasePath()
  return ""
end
function ModItemParticleSystemPreset:GetTextureTargetPath()
  return ""
end
function ModItemParticleSystemPreset:GetTextureTargetGamePath()
  return ""
end
function ModItemParticleSystemPreset:OnEditorNew(...)
  ParticleSystemPreset.OnEditorNew(self, ...)
  ModItemPreset.OnEditorNew(self, ...)
end
function ModItemParticleSystemPreset:OnEditorSelect(...)
  ParticleSystemPreset.OnEditorSelect(self, ...)
end
function ModItemParticleSystemPreset:IsDirty()
  return ModItemPreset.IsDirty(self)
end
function ModItemParticleSystemPreset:PreSave()
  self.saving = true
  ModItem.PreSave(self)
end
function ModItemParticleSystemPreset:PostSave()
  self.saving = false
  ModItem.PostSave(self)
  ParticlesReload(self:GetId())
end
function ModItemParticleSystemPreset:PostLoad()
  ParticleSystemPreset.PostLoad(self)
  ParticlesReload(self:GetId())
end
function ModItemParticleSystemPreset:OverrideEmitterFuncs(emitter)
  function emitter.GetTextureFilter()
    return "Texture (*.dds)|*.dds"
  end
  function emitter.GetNormalmapFilter()
    return "Texture (*.dds)|*.dds"
  end
  function emitter.ShouldNormalizeTexturePath()
    return not self.saving
  end
end
function ModItemParticleSystemPreset:GetTextureFolders()
  return {
    "Textures/Particles"
  }
end
function ModItemParticleSystemPreset:OnModLoad()
  self.saving = nil
  for _, child in ipairs(self) do
    if IsKindOf(child, "ParticleEmitter") then
      self:OverrideEmitterFuncs(child)
    end
  end
  ModItemPreset.OnModLoad(self)
end
function ModItemParticleSystemPreset:Getname()
  return ModItemPreset.Getname(self)
end
function ModItemParticleSystemPreset:EditorItemsMenu()
  local items = Preset.EditorItemsMenu(self)
  local idx = table.find(items, 1, "ParticleParam")
  if idx then
    table.remove(items, idx)
  end
  return items
end
DefineModItemPreset("ConstDef", {EditorName = "Constant", EditorSubmenu = "Gameplay"})
function OnMsg.ClassesPostprocess()
  local idx = table.find(ModItemConstDef.properties, "id", "Group")
  local prop = table.copy(ModItemConstDef.properties[idx])
  prop.name = "group"
  prop.category = nil
  table.remove(ModItemConstDef.properties, idx)
  table.insert(ModItemConstDef.properties, table.find(ModItemConstDef.properties, "id", "type"), prop)
end
ModItemConstDef.GetSavePath = ModItemPreset.GetSavePath
ModItemConstDef.GetSaveData = ModItemPreset.GetSaveData
function ModItemConstDef:AssignToConsts()
  local self_group = self.group or "Default"
  local const_group = self_group == "Default" and const or const[self_group]
  if not const_group then
    const_group = {}
    const[self_group] = const_group
  end
  local value = self.value
  if value == nil then
    value = ConstDef:GetDefaultValueOf(self.type)
  end
  local id = self.id or ""
  if id == "" then
    const_group[#const_group + 1] = value
  else
    const_group[id] = value
  end
end
function ModItemConstDef:PostSave()
  self:AssignToConsts()
  return ModItemPreset.PostSave(self)
end
function ModItemConstDef:OnModLoad()
  ModItemPreset.OnModLoad(self)
  self:AssignToConsts()
end
function TryGetModDefFromObj(obj)
  if IsKindOf(obj, "ModDef") then
    return obj
  elseif IsKindOf(obj, "ModItem") then
    return obj.mod
  else
    local mod_item_parent = GetParentTableOfKindNoCheck(obj, "ModItem")
    return mod_item_parent and mod_item_parent.mod
  end
end
local forbidden_classes = {
  Achievement = true,
  PlayStationActivities = true,
  RichPresence = true,
  TrophyGroup = true
}
local GlobalPresetClasses = function(self)
  local items = {}
  local classes = g_Classes
  for name in pairs(Presets) do
    if not forbidden_classes[name] then
      local classdef = classes[name]
      if classdef and classdef.GlobalMap then
        items[#items + 1] = name
      end
    end
  end
  table.sort(items)
  table.insert(items, 1, "")
  return items
end
local forbidden_props = {
  Id = true,
  Group = true,
  Comment = true,
  TODO = true,
  SaveIn = true
}
local PresetPropsCombo = function(self)
  local preset = self:ResolveTargetPreset()
  local props = preset and preset:GetProperties()
  local items = {}
  for _, prop in ipairs(props) do
    if not prop.dont_save and not prop.no_edit and not prop.read_only and not forbidden_props[prop.id] then
      items[#items + 1] = prop.id
    end
  end
  table.sort(items)
  table.insert(items, 1, "")
  return items
end
if FirstLoad then
  ModItemChangeProp_OrigValues = {}
end
local orig_values = ModItemChangeProp_OrigValues
local TargetFuncDefault = function(self, value, default)
  return value
end
local CanAppendToTableListProps = {
  dropdownlist = true,
  string_list = true,
  preset_id_list = true,
  number_list = true,
  point_list = true,
  T_list = true,
  nested_list = true,
  property_array = true
}
local CanAppendToTable = function(prop)
  return CanAppendToTableListProps[prop.editor]
end
DefineClass.ModItemChangePropBase = {
  __parents = {"ModItem"},
  properties = {
    {
      category = "Mod",
      id = "help",
      default = false,
      editor = "help",
      help = [[
Changes a specific preset property value. Clicking the test button will apply the change.
If more than one mod changes the same preset property, the one that has loaded last will decide the final value. Defining the dependency list for a mod will ensure the load order of given mods and allow for some control over this problem.]]
    },
    {
      category = "Mod",
      id = "TargetClass",
      name = "Class",
      default = "",
      editor = "choice",
      items = GlobalPresetClasses,
      reapply = true
    },
    {
      category = "Mod",
      id = "TargetId",
      name = "Preset",
      default = "",
      editor = "choice",
      items = function(self, prop_meta)
        return PresetsCombo(self.TargetClass)(self, prop_meta)
      end,
      no_edit = function(self)
        return not self:ResolveTargetMap()
      end,
      reapply = true
    },
    {
      category = "Mod",
      id = "TargetProp",
      name = "Property",
      default = "",
      editor = "choice",
      items = PresetPropsCombo,
      no_edit = function(self)
        return not self:ResolveTargetPreset()
      end,
      reapply = true
    },
    {
      category = "Mod",
      id = "OriginalValue",
      name = "Original Value",
      default = false,
      editor = "bool",
      no_edit = function(self)
        return not self:ResolvePropTarget()
      end,
      dont_save = true,
      read_only = true,
      untranslated = true
    },
    {
      category = "Mod",
      id = "EditType",
      name = "Edit Type",
      default = "Replace",
      editor = "dropdownlist",
      no_edit = function(self)
        return not self:ResolvePropTarget()
      end,
      help = Untranslated([[
<em>Replace:</em> completely overwrites property.
<em>Append To Table:</em> adds new entries while keeping existing ones.
<em>Code:</em> modifies the value by using code. Requires Lua knowledge.]]),
      reapply = true,
      items = function(self)
        local options = {"Replace", "Code"}
        local propTarget = self:ResolvePropTarget()
        if CanAppendToTable(propTarget) then
          table.insert(options, "Append To Table")
        end
        return options
      end
    },
    {
      category = "Mod",
      id = "TargetValue",
      name = "Value",
      default = false,
      editor = "bool",
      no_edit = function(self)
        return not self:ResolvePropTarget() or self.EditType == "Code"
      end,
      dont_save = function(self)
        return self.EditType == "Code"
      end,
      untranslated = true
    },
    {
      category = "Mod",
      id = "TargetFunc",
      name = "Change",
      default = TargetFuncDefault,
      editor = "func",
      params = "self, value, default",
      no_edit = function(self)
        return not self:ResolvePropTarget() or self.EditType ~= "Code"
      end,
      help = "Property change code. The expression parameters are the mod item, the current property value and the original property value. The current property value may differ from the original one in the presence of other mods, tweaking the same property."
    }
  },
  EditorName = "Change property",
  EditorSubmenu = "Gameplay",
  tweaked_values = false
}
DefineClass("ModItemChangeProp", "ModItemChangePropBase")
function ModItemChangePropBase:GetModItemDescription()
  if self.name == "" then
    return Untranslated("<u(TargetId)>.<u(TargetProp)>")
  end
  return self.ModItemDescription
end
function ModItemChangePropBase:ResolveTargetMap()
  local classdef = g_Classes[self.TargetClass]
  local name = classdef and classdef.GlobalMap
  return name and _G[name]
end
function ModItemChangePropBase:ResolveTargetPreset()
  local map = self:ResolveTargetMap()
  return map and map[self.TargetId]
end
function ModItemChangePropBase:ResolvePropTarget()
  local preset = self:ResolveTargetPreset()
  local props = preset and preset:GetProperties()
  return props and table.find_value(props, "id", self.TargetProp)
end
function ModItemChangePropBase:SetTargetValue(value)
  self.tweaked_values = self.tweaked_values or {}
  table.set(self.tweaked_values, self.TargetClass, self.TargetId, self.TargetProp, value)
end
function ModItemChangePropBase:GetChangedValue()
  return table.get(self.tweaked_values, self.TargetClass, self.TargetId, self.TargetProp)
end
function ModItemChangePropBase:GetPropValue()
  local preset = self:ResolveTargetPreset()
  local prop = preset and self:ResolvePropTarget()
  if prop then
    local value = preset:GetProperty(self.TargetProp)
    return preset:ClonePropertyValue(value, prop)
  end
end
function ModItemChangePropBase:GetTargetValue()
  local value = self:GetChangedValue()
  if value ~= nil then
    return value
  end
  if self.EditType == "Append To Table" then
    return false
  end
  return self:GetPropValue()
end
function ModItemChangePropBase:GetOriginalValue()
  local orig_value = table.get(orig_values, self.TargetClass, self.TargetId, self.TargetProp)
  if orig_value ~= nil then
    return orig_value
  end
  return self:GetPropValue()
end
function ModItemChangePropBase:OverwriteProp(prop_id, props, prop)
  local my_prop = table.find_value(props, "id", prop_id)
  local keep = {
    id = my_prop.id,
    name = my_prop.name,
    category = my_prop.category,
    no_edit = my_prop.no_edit,
    dont_save = my_prop.dont_save,
    read_only = my_prop.read_only,
    os_path = my_prop.os_path
  }
  table.clear(my_prop)
  table.overwrite(my_prop, prop)
  table.overwrite(my_prop, keep)
end
function ModItemChangePropBase:GetProperties()
  local props = ModItem.GetProperties(self)
  local prop = self:ResolvePropTarget()
  if prop then
    self:OverwriteProp("TargetValue", props, prop)
    self:OverwriteProp("OriginalValue", props, prop)
  end
  return props
end
function ModItemChangePropBase:ApplyChange(apply)
  local preset = self:ResolveTargetPreset()
  if not preset then
    return
  end
  local orig_value = table.get(orig_values, self.TargetClass, self.TargetId, self.TargetProp)
  local final_value
  if apply then
    local current_value = self:GetPropValue()
    local new_value
    if self.EditType == "Code" then
      local ok, res = procall(self.TargetFunc, self, current_value, orig_value or current_value)
      if ok then
        new_value = res
      else
        ModLogF("%s %s: %s", self.class, self.mod.title, res)
      end
    else
      new_value = self:GetChangedValue()
    end
    if new_value == nil then
      return
    end
    if orig_value == nil then
      orig_value = current_value
      table.set(orig_values, self.TargetClass, self.TargetId, self.TargetProp, orig_value)
    end
    if self.EditType == "Append To Table" then
      local temp = table.icopy(current_value)
      table.iappend(temp, new_value)
      new_value = temp
    end
    final_value = new_value
  elseif orig_value ~= nil then
    final_value = orig_value
    table.set(orig_values, self.TargetClass, self.TargetId, self.TargetProp, nil)
  end
  if final_value ~= nil then
    self:AssignValue(preset, final_value)
  end
end
function ModItemChangePropBase:AssignValue(preset, value)
  preset:SetProperty(self.TargetProp, value)
  local target_class = g_Classes[self.TargetId]
  if target_class and target_class.__generated_by_class == preset.class then
    rawset(target_class, self.TargetProp, value)
  end
  ModLogF("%s %s: %s.%s = %s", self.class, self.mod.title, self.TargetId, self.TargetProp, ValueToStr(value))
end
function ModItemChangePropBase:OnEditorSetProperty(prop_id, old_value, ged)
  if self:GetPropertyMetadata(prop_id).reapply then
    local new_value = self.prop_id
    self.prop_id = old_value
    self:ApplyChange(false)
    self.prop_id = new_value
    self.tweaked_values = {}
  end
  local propTarget = self:ResolvePropTarget()
  if self.EditType == "Append To Table" and not CanAppendToTable(propTarget) then
    self.EditType = "Replace"
  end
  ModItem.OnEditorSetProperty(self, prop_id, old_value, ged)
end
function ModItemChangePropBase:OnModLoad()
  ModItem.OnModLoad(self)
  self:ApplyChange(true)
end
function ModItemChangePropBase:OnModUnload()
  ModItem.OnModUnload(self)
  self:ApplyChange(false)
end
function ModItemChangePropBase:TestModItem()
  self:ApplyChange(false)
  self:ApplyChange(true)
end
function ModItemChangePropBase:delete()
  self:ApplyChange(false)
end
local DoModItemChangePropTargetSameProp = function(mod1, mod2)
  return mod1.TargetClass == mod2.TargetClass and mod1.TargetId == mod2.TargetId and mod1.TargetProp == mod2.TargetProp
end
function ModItemChangePropBase:GetWarning()
  local target_preset = self:ResolveTargetPreset()
  if target_preset and IsKindOf(target_preset, "ModItem") then
    return string.format("Changing the property '%s' of mod item '%s' is suggested to be done inside the mod item itself.", self.TargetProp, target_preset.id)
  end
  for _, mod_item in ipairs(self.mod.items) do
    if IsKindOf(mod_item, "ModItemChangePropBase") and mod_item ~= self and DoModItemChangePropTargetSameProp(self, mod_item) then
      return string.format("The property '%s' is already modified in mod item '%s'", self.TargetProp, mod_item.name and mod_item.name ~= "" and mod_item.name or mod_item.TargetId .. "." .. mod_item.TargetProp)
    end
  end
  for _, mod in ipairs(ModsLoaded) do
    if mod:ItemsLoaded() then
      for _, mod_item in ipairs(mod.items) do
        if IsKindOf(mod_item, "ModItemChangePropBase") and mod.id ~= self.mod.id and DoModItemChangePropTargetSameProp(self, mod_item) then
          return string.format("The property '%s' is already modified in loaded mod '%s'/'%s'", self.TargetProp, mod.id, mod_item.name and mod_item.name ~= "" and mod_item.name or mod_item.TargetId .. "." .. mod_item.TargetProp)
        end
      end
    end
  end
end
function OnMsg.ClassesPostprocess()
  for _, mod in ipairs(ModsLoaded) do
    if mod:ItemsLoaded() then
      for _, mod_item in ipairs(mod.items) do
        if IsKindOf(mod_item, "ModItemChangePropBase") and mod_item.TargetProp ~= "__children" then
          local preset = mod_item:ResolveTargetPreset()
          local class = g_Classes[mod_item.TargetId]
          if class and preset and class.__generated_by_class == preset.class then
            rawset(class, mod_item.TargetProp, preset[mod_item.TargetProp])
          end
        end
      end
    end
  end
end
local UIImageImport = function(srcFolder, destFolder, assetTypeInfo, ged_socket)
  local err, assetsForImport = AsyncListFiles(srcFolder)
  local partialSuccess
  if err then
    return {
      string.format("Failed reading files in source folder: %s", srcFolder)
    }
  end
  err = AsyncCreatePath(destFolder)
  if err then
    return {
      string.format("Failed creating '%s' directory: %s.", assetTypeInfo.folder, err)
    }
  end
  err = {}
  for _, fileName in ipairs(assetsForImport) do
    local dir, name, ext = SplitPath(fileName)
    if next(assetTypeInfo.ext) and not table.find(assetTypeInfo.ext, ext) then
      table.insert(err, string.format("Failed importing file '%s' : file type '%s' not supported", name, ext))
    else
      local imageName = name .. ".dds"
      local textureOutput = destFolder .. "/" .. imageName
      local cmdline = string.format("\"%s\" \"%s\" \"%s\" --mips 0 --compression BC7 --profile slow", ConvertToOSPath(g_HgimgcvtPath), fileName, textureOutput)
      local comprErr, out = AsyncExec(cmdline, "", true, false)
      if comprErr then
        table.insert(err, string.format("Failed creating compressed image for '%s': %s.", fileName, comprErr))
        goto lbl_99
      else
        partialSuccess = true
      end
    end
    ::lbl_99::
  end
  return err, partialSuccess
end
local SoundImport = function(srcFolder, destFolder, assetTypeInfo, ged_socket)
  local err, assetsForImport = AsyncListFiles(srcFolder)
  local partialSuccess
  if err then
    return {
      string.format("Failed reading files in source folder: %s", srcFolder)
    }
  end
  err = AsyncCreatePath(destFolder)
  if err then
    return {
      string.format("Failed creating '%s' directory: %s.", assetTypeInfo.folder, err)
    }
  end
  err = {}
  for _, fileName in ipairs(assetsForImport) do
    local dir, name, ext = SplitPath(fileName)
    if next(assetTypeInfo.ext) and not table.find(assetTypeInfo.ext, ext) then
      table.insert(err, string.format("Failed importing file '%s' : file type '%s' not supported", name, ext))
    else
      local soundName = name .. ".opus"
      local soundOutput = destFolder .. "/" .. soundName
      local cmdline = string.format("\"%s\" --serial 0 \"%s\" \"%s\"", ConvertToOSPath(g_OpusCvtPath), fileName, soundOutput)
      local comprErr, out = AsyncExec(cmdline, "", true, false)
      if comprErr then
        table.insert(err, string.format("Failed creating compressed sound for '%s': %s.", fileName, comprErr))
        goto lbl_99
      else
        partialSuccess = true
      end
    end
    ::lbl_99::
  end
  return err, partialSuccess
end
local ParticleTexturesImport = function(srcFolder, destFolder, assetTypeInfo, ged_socket)
  local err, assetsForImport = AsyncListFiles(srcFolder)
  local partialSuccess
  if err then
    return {
      string.format("Failed reading files in source folder: %s", srcFolder)
    }
  end
  local fallbackDir = destFolder .. "/Fallbacks/"
  err = AsyncCreatePath(destFolder)
  if err then
    return {
      string.format("Failed creating '%s' directory: %s.", assetTypeInfo.folder, err)
    }
  end
  err = AsyncCreatePath(fallbackDir)
  if err then
    return string.format("Failed creating 'Fallbacks' directory: %s.", err)
  end
  err = {}
  for _, fileName in ipairs(assetsForImport) do
    local dir, name, ext = SplitPath(fileName)
    if next(assetTypeInfo.ext) and not table.find(assetTypeInfo.ext, ext) then
      table.insert(err, string.format("Failed importing file '%s' : file type '%s' not supported", name, ext))
    else
      local w, h = UIL.MeasureImage(fileName)
      local errMsg = string.format("The import of '%s' failed because the image width and height are wrong. Image must be a square and pixel width and height must be power of two (e.g. 1024, 2048, 4096, etc.).", fileName)
      if w ~= h then
        table.insert(err, errMsg)
      elseif w <= 0 or band(w, w - 1) ~= 0 then
        table.insert(err, errMsg)
      else
        local textureName = name .. ".dds"
        local textureOutput = destFolder .. "/" .. textureName
        local fallbackOutput = fallbackDir .. textureName
        local cmdline = string.format("\"%s\" -dds10 -24 bc1 -32 bc3 -srgb \"%s\" \"%s\"", ConvertToOSPath(g_HgnvCompressPath), fileName, textureOutput)
        local comprErr, out = AsyncExec(cmdline, "", true, false)
        if comprErr then
          table.insert(err, string.format("Failed creating compressed image for '%s': %s.", fileName, comprErr))
        else
          cmdline = string.format("\"%s\" \"%s\" \"%s\" --truncate %d", ConvertToOSPath(g_HgimgcvtPath), textureOutput, fallbackOutput, const.FallbackSize)
          local fallbackErr = AsyncExec(cmdline, "", true, false)
          if fallbackErr then
            table.insert(err, string.format("Failed creating fallback image for '%s': %s.", fileName, fallbackErr))
            goto lbl_179
          else
            partialSuccess = true
          end
        end
      end
    end
    ::lbl_179::
  end
  return err
end
if FirstLoad then
  ModAssetTypeInfo = {
    ["UI image"] = {
      folder = "Images",
      ext = {
        ".png",
        ".jpg",
        ".tga"
      },
      importFunc = UIImageImport
    },
    ["Particle Texture"] = {
      folder = "ParticleTextures",
      ext = {
        ".png",
        ".jpg",
        ".tga"
      },
      importFunc = ParticleTexturesImport
    },
    Sound = {
      folder = "Sounds",
      ext = {".wav"},
      importFunc = SoundImport
    },
    Font = {folder = "Fonts"}
  }
end
function GetModAssetDestFolder(assetType)
  return ModAssetTypeInfo[assetType].folder
end
DefineClass.ModItemConvertAsset = {
  __parents = {"ModItem"},
  EditorName = "Convert & Import Assets",
  EditorSubmenu = "Assets",
  properties = {
    {
      id = "_",
      default = false,
      editor = "help",
      help = Untranslated([[
The <em>Convert & Import Assets</em> mod item allows for a way to import your <em>ui image, particle texture and sound assets</em> into the mod folder. This copies them inside the mod folder and converts them to the specific format that the engine uses.
<em>Note</em>: You need only one of these per asset type. The import will <em>always first delete the destination folder</em> before executing on all files in the Source Folder.]])
    },
    {
      id = "assetType",
      name = "Asset Type",
      editor = "dropdownlist",
      default = "UI image",
      help = Untranslated("Depending on this choice the import will convert the source files to the correct format for the game engine."),
      items = {
        "UI image",
        "Particle Texture",
        "Sound"
      },
      arbitrary_value = false
    },
    {
      id = "allowedExt",
      name = "Allowed Extensions",
      read_only = true,
      editor = "text",
      default = ""
    },
    {
      id = "srcFolder",
      name = "Source Folder",
      editor = "browse",
      os_path = true,
      filter = "folder",
      default = "",
      dont_save = true,
      help = Untranslated([[
The folder from which ALL assets of the selected type will be imported.
<em>Note:</em> Do not give a path inside the mod itself as the import will already copy the files in the mod.]])
    },
    {
      id = "destFolder",
      name = "Destination Folder",
      editor = "browse",
      filter = "folder",
      default = "",
      help = Untranslated("The folder inside the mod in which the imported assets will be placed.")
    },
    {
      id = "btn",
      editor = "buttons",
      default = false,
      buttons = {
        {
          name = "Convert & Import Files From Source Folder",
          func = "Import"
        }
      },
      untranslated = true
    }
  }
}
function ModItemConvertAsset:Import(root, prop_id, ged_socket)
  CreateRealTimeThread(function()
    if self:GetError() then
      ged_socket:ShowMessage(Untranslated("Fail"), Untranslated("Cannot import assets while having errors!"))
      return
    end
    local assetType = self.assetType
    local srcFolderOs = self.srcFolder
    local destFolderOS = ConvertToOSPath(self.destFolder)
    if ged_socket:WaitQuestion("Warning!", Untranslated(string.format([[
Before the import, this will <em>DELETE</em> all content in the Destination Folder: <em>%s</em>
Are you sure you want to continue?]], destFolderOS))) ~= "ok" then
      return
    end
    GedSetUiStatus("importAssets", "Importing...")
    AsyncDeletePath(destFolderOS)
    local err, partialSuccess = ModAssetTypeInfo[assetType].importFunc(srcFolderOs, destFolderOS, ModAssetTypeInfo[assetType], ged_socket)
    if not next(err) then
      ged_socket:ShowMessage("Success", "Files imported successfully!")
    else
      local allErrors = table.concat(err, "\n")
      if partialSuccess then
        ged_socket:ShowMessage("Partial Success", string.format([[
Couldn't import all assets:

%s]], allErrors))
      else
        ged_socket:ShowMessage("Fail", string.format([[
Couldn't import assets:

%s]], allErrors))
      end
    end
    self:OnModLoad()
    GedSetUiStatus("importAssets")
  end)
end
function ModItemConvertAsset:StoreImportPath()
  if not self.mod or (self.name or "") == "" then
    return
  end
  local key = string.format("%s_%s", self.mod.id, self.name)
  table.set(LocalStorage, "AssetImportSrcFolder", key, self.srcFolder)
  SaveLocalStorageDelayed()
end
function ModItemConvertAsset:RestoreImportPath()
  if not self.mod or (self.name or "") == "" then
    return
  end
  local key = string.format("%s_%s", self.mod.id, self.name)
  self.srcFolder = table.get(LocalStorage, "AssetImportSrcFolder", key) or self.srcFolder or ""
end
function ModItemConvertAsset:OnEditorSetProperty(prop_id, old_value, ged)
  if prop_id == "assetType" and self.assetType then
    self.destFolder = self.mod.content_path .. ModAssetTypeInfo[self.assetType].folder
    self.allowedExt = table.concat(ModAssetTypeInfo[self.assetType].ext, " | ")
  end
  if not self.assetType then
    self.allowedExt = ""
  end
  if prop_id == "srcFolder" or prop_id == "name" then
    self:StoreImportPath()
  end
  return ModItemPreset.OnEditorSetProperty(self, prop_id, old_value, ged)
end
function ModItemConvertAsset:OnModLoad()
  ModItem.OnModLoad(self)
  self:RestoreImportPath()
end
function ModItemConvertAsset:OnEditorNew(mod, ged, is_paste)
  self.destFolder = self.mod.content_path .. ModAssetTypeInfo[self.assetType].folder
  self.allowedExt = table.concat(ModAssetTypeInfo[self.assetType].ext, " | ")
  return ModItem.OnEditorNew(self, mod, ged, is_paste)
end
function ModItemConvertAsset:GetEditorView()
  if self.assetType and self.assetType ~= "" then
    return "<color 128 128 128>Convert & Import Assets - " .. self.assetType .. "</color> " .. self.name
  else
    return "Convert & Import Assets " .. self.name
  end
end
function ModItemConvertAsset:GetWarning()
  if self.srcFolder ~= "" then
    local srcFolderFullPath = ConvertToOSPath(self.srcFolder)
    local modFolderFullPath = ConvertToOSPath(self.mod.content_path)
    if string.starts_with(srcFolderFullPath, modFolderFullPath, true) then
      return "Source Folder should not point to a location inside the mod itself."
    end
  end
  local modItems = self.mod and self.mod.items
  for _, item in ipairs(modItems) do
    if item ~= self and IsKindOf(item, "ModItemConvertAsset") and self.assetType == item.assetType then
      return "Having more than one Convert Asset mod item for the same asset type is not recommended as both overwrite the destination folder."
    end
  end
end
function ModItemConvertAsset:GetError()
  if not self.name or self.name == "" then
    return "Set a name for the mod item."
  end
  if self.name then
    local items = self.mod and self.mod.items
    for _, item in ipairs(items) do
      if IsKindOf(item, "ModItemConvertAsset") and item ~= self and item.name == self.name then
        return string.format("The name of the mod item '%s' must be unique!", self.name)
      end
    end
  end
  if not self.assetType then
    return "Pick an asset type."
  end
  if not self.srcFolder or self.srcFolder == "" then
    return "Pick source folder path."
  end
  if not io.exists(self.srcFolder) then
    return "Source folder does not exist."
  end
end


if FirstLoad then
  MapData = {}
  mapdata = false
  ChangingMap = false
  CurrentMap = ""
  CurrentMapFolder = ""
  MapPackfile = {}
end
PersistableGlobals.CurrentMap = true
PersistableGlobals.CurrentMapFolder = true
PersistableGlobals.mapdata = true
local published_revisions = const.PublishedAssetsRevisions or {}
table.sort(published_revisions)
const.PublishedAssetsRevisions = published_revisions
const.LastPublishedAssetsRevision = published_revisions[#published_revisions] or 0
function IsChangingMap()
  return not not ChangingMap
end
function ListMaps()
  return table.keys2(MapData, true)
end
function GetMapName(folder)
  if not folder then
    return CurrentMap
  end
  local ret = folder:gsub("[mM]aps/", ""):gsub("/", "")
  return ret
end
function GetMapFolder(map)
  if not map then
    return CurrentMapFolder
  end
  if map == "" then
    return ""
  end
  return string.format("Maps/%s/", map)
end
function WaitLoadBinAssets(map_folder)
  if not ModsLoaded then
    ModsReloadItems(map_folder)
  end
  LoadBinAssets(map_folder)
  while AreBinAssetsLoading() do
    Sleep(1)
  end
  UnmountBinAssets()
  Msg("BinAssetsLoaded")
end
function OnMsg.BinAssetsLoaded()
  Msg("EntitiesLoaded")
end
function WaitResourceManagerRequests(timeout, frames)
  timeout = timeout or 3000
  frames = frames or 3
  local start = RealTime()
  WaitNextFrame(frames)
  local last_time_with_reads = start
  while timeout > RealTime() - start do
    WaitNextFrame()
    if not ResourceManager.HasRunningRequests() then
      if RealTime() - last_time_with_reads > 300 then
        break
      end
    else
      last_time_with_reads = RealTime()
    end
  end
  return RealTime() - start
end
function DoneMap()
  if CurrentMap ~= "" then
    Msg("DoneMap")
    Msg("PostDoneMap")
  end
  if CurrentMapFolder ~= "" then
    UnmountByPath(CurrentMapFolder)
  end
  collectgarbage("collect")
end
function PreloadMap(map, folder)
  folder = folder or GetMapFolder(map)
  if map and map ~= "" then
    if not IsFSUnpacked() then
      local map_pack = MapPackfile[map] or string.format("Packs/Maps/%s.hpk", map)
      local err = AsyncMountPack(folder, map_pack, "seethrough")
      if err then
        return err
      end
    elseif not io.exists(folder) then
      return "Path Not Found"
    end
  end
  WaitLoadBinAssets(folder)
end
function OpenMapLoadingScreen(map)
  LoadingScreenOpen("idLoadingScreen", "ChangeMap")
end
function CloseMapLoadingScreen(map)
  if map ~= "" then
    WaitResourceManagerRequests(2000)
  end
  LoadingScreenClose("idLoadingScreen", "ChangeMap")
end
function DoChangeMap(map, mapdata, silent)
  PauseGame(4)
  OpenMapLoadingScreen(map)
  WaitRenderMode("ui")
  WaitInitialDlcLoad()
  DoneMap()
  SetAllVolumesReason("ChangeMap", 0, 300)
  local folder = GetMapFolder(map)
  local err = PreloadMap(map, folder)
  Msg("MapFolderMounted", map, mapdata)
  if not err then
    CurrentMap = map
    CurrentMapFolder = folder
    _G.mapdata = mapdata
    config.NoPassability = mapdata.NoTerrain and 1 or mapdata.DisablePassability and 1 or 0
    hr.RenderTerrain = mapdata.NoTerrain and 0 or 1
    EngineChangeMap(CurrentMapFolder, mapdata)
    if map ~= "" then
      LoadMap(map, mapdata, silent)
      WaitRenderMode("scene")
      PrepareMinimap()
    end
  end
  CloseMapLoadingScreen(map)
  ResumeGame(4)
  SetAllVolumesReason("ChangeMap", nil, 300)
  return err
end
function ChangeMap(map, save_as_last, mapdata, silent)
  if not IsRealTimeThread() then
    return
  end
  local success, err = sprocall(_ChangeMap, map, mapdata, silent)
  ChangingMap = false
  if not success or err then
    return err
  end
  if rawget(_G, "PlaceAndInitPromotedCObjects") then
    for obj, _ in pairs(PlaceAndInitPromotedCObjects) do
      obj:RegenerateHandle()
    end
    print("CObjects promoted to Objects had their handles regenerated, map should be re-saved.")
    PlaceAndInitPromotedCObjects = nil
  end
  if save_as_last then
    LocalStorage.last_map = map
    SaveLocalStorage()
  end
end
function RemapMapName(map)
  local remapping = const.MapNameRemapping or empty_table
  while remapping[map] do
    map = remapping[map]
  end
  return map
end
function _ChangeMap(map, mapdata, silent)
  local start_time = GetPreciseTicks()
  WaitChangeMapDone()
  WaitSaveGameDone()
  map = RemapMapName(map)
  map = map or ""
  if map == "" and CurrentMap == "" then
    return
  end
  ChangingMap = map
  mapdata = mapdata or MapData[map] or MapDataPreset:new({})
  if mapdata.MapType == "system" then
    mapdata.GameLogic = false
  end
  Msg("ChangeMap", map, mapdata)
  local err = DoChangeMap(map, mapdata, silent)
  if err then
    return err
  end
  ChangingMap = false
  Msg("ChangeMapDone", map)
  if map ~= "" then
    DebugPrint(string.format("Map changed to \"%s\" in %d ms.\n", tostring(map), GetPreciseTicks() - start_time))
  end
end
function WaitChangeMapDone()
  while ChangingMap do
    WaitMsg("ChangeMapDone")
  end
end
MapVar("GameTimeStarted", false)
function WaitGameTimeStart()
  if not GameTimeStarted then
    WaitMsg("GameTimeStart")
  end
end
MapVar("MapPassable", false)
function WaitMapPassable()
  if not MapPassable then
    WaitMsg("NewMapPassable")
  end
end
function LoadMap(map, mapdata, silent)
  PauseInfiniteLoopDetection("LoadMap")
  Msg("PreNewMap", map, mapdata)
  CreateGameTimeThread(function()
    PauseInfiniteLoopDetection("GameTimeStart")
    GameTimeStarted = true
    Msg("GameTimeStart")
    ResumeInfiniteLoopDetection("GameTimeStart")
  end)
  Msg("NewMap", map, mapdata)
  InterruptAdvance()
  InterruptAdvance()
  collectgarbage("stop")
  config.PartialPassEdits = false
  SuspendPassEdits("LoadMap", true)
  if io.exists(GetMap() .. "objects.lua") then
    LoadObjects(GetMap() .. "objects.lua")
    InterruptAdvance()
  end
  InterruptAdvance()
  if io.exists(GetMap() .. "autorun.lua") then
    dofile(GetMap() .. "autorun.lua")
  end
  MapForEach("map", "Template", function(o)
    if o.autospawn then
      o:Spawn()
    end
  end)
  Msg("NewMapLoaded")
  collectgarbage("collect")
  collectgarbage("restart")
  ResumePassEdits("LoadMap")
  config.PartialPassEdits = true
  MapPassable = true
  Msg("NewMapPassable")
  SuspendPassEdits("GameInit")
  AdvanceGameTime(0)
  ResumePassEdits("GameInit")
  Msg("PostNewMapLoaded", silent)
  ResumeInfiniteLoopDetection("LoadMap")
  ResumeAnim()
end
function LoadObjects(filename)
  local postload = {}
  local gofPermanent = const.gofPermanent
  local origPersistFlagState = config.PersistLuaFlagsLoaded
  local SetGameFlags = CObject.SetGameFlags
  local fenv = LuaValueEnv({
    SetNextSyncHandle = function(h)
      NextSyncHandle = h
    end,
    PlaceObj = function(class, props, arr, handle)
      local obj = PlaceObj(class, props, arr, handle)
      local ancestors = obj and obj.__ancestors
      if ancestors and ancestors.CObject then
        SetGameFlags(obj, gofPermanent)
        if ancestors.Object then
          postload[1 + #postload] = obj
        end
      end
      return obj
    end,
    o = ResolveHandle,
    PlaceAndInit4 = PlaceAndInit4,
    PlaceAndInit_v2 = PlaceAndInit_v2,
    PlaceAndInit_v3 = PlaceAndInit_v3,
    PlaceAndInit_v4 = PlaceAndInit_v4,
    LoadPersistFlagTables = LoadPersistFlagTables,
    LoadGrid16 = function(str)
      return LoadGrid(Decode16(str))
    end,
    LoadGrid = function(str)
      return LoadGrid(str)
    end,
    GridReadStr = GridReadStr,
    T = T,
    DisablePersistFlagOverrides = function()
      config.PersistLuaFlagsLoaded = false
    end,
    RestorePersistFlagOverrides = function()
      config.PersistLuaFlagsLoaded = origPersistFlagState
    end
  })
  local func, err = loadfile(filename, nil, fenv)
  if func then
    func()
    for i = 1, #postload do
      postload[i]:PostLoad()
    end
  end
end
if FirstLoad then
  s_SuspendPassEditsReasons = {}
  engineSuspendPassEdits = SuspendPassEdits
  engineResumePassEdits = ResumePassEdits
end
function SuspendPassEdits(reason, bSurfaces, ignore_errors)
  if next(s_SuspendPassEditsReasons) == nil or bSurfaces then
    engineSuspendPassEdits(bSurfaces)
    Msg("SuspendPassEdits", ignore_errors)
  end
  s_SuspendPassEditsReasons[reason] = GameTime()
end
function OnMsg.ChangeMap()
  s_SuspendPassEditsReasons = {}
end
function ResumePassEdits(reason, ignore_errors)
  if not s_SuspendPassEditsReasons[reason] then
    return
  end
  s_SuspendPassEditsReasons[reason] = nil
  if next(s_SuspendPassEditsReasons) == nil then
    engineResumePassEdits()
    Msg("ResumePassEdits", ignore_errors)
  end
end
function ApplyPassEdits(reason)
  local suspended, surfaces = IsPassEditSuspended()
  if not suspended then
    return
  end
  if reason == nil then
    engineResumePassEdits()
    engineSuspendPassEdits(surfaces)
  elseif s_SuspendPassEditsReasons[reason] then
    ResumePassEdits(reason)
    SuspendPassEdits(reason, surfaces)
  end
end
function WaitResumePassEdits()
  if IsPassEditSuspended() then
    WaitMsg("ResumePassEdits")
  end
end
function _PrintSuspendPassEditsReasons(print_func)
  print_func = print_func or print
  for reason in pairs(s_SuspendPassEditsReasons) do
    if type(reason) == "table" then
      print_func("\t" .. (reason.class or ValueToLuaCode(reason)))
    else
      print_func("\t" .. tostring(reason))
    end
  end
end
function OnMsg.BugReportStart(print_func)
  if next(s_SuspendPassEditsReasons) ~= nil then
    print_func("Active suspend pass edits reasons:")
    _PrintSuspendPassEditsReasons(print_func)
    print_func("")
  end
end
function CheckPassEditsNotSuspended()
  if not IsPassEditSuspended() then
    return true
  end
  local reason = next(s_SuspendPassEditsReasons)
  reason = ObjectClass(reason) and reason.class or tostring(reason)
  return false, "Pass edits suspended: " .. reason
end
if Platform.developer then
  function SetOpacityToAllObjects(opacity)
    MapForEach("map", "CObject", function(obj)
      if obj:GetOpacity() ~= opacity then
        obj:SetOpacity(opacity)
      end
    end)
  end
end
if FirstLoad then
  MapReloadInProgress = false
end
function ReloadMap(restore_camera)
  local camera = restore_camera and {
    GetCamera()
  }
  local ineditor = Platform.editor and IsEditorActive()
  XShortcutsSetMode("Game")
  if ineditor then
    Pause("ReloadMap")
  end
  LoadingScreenOpen("idLoadingScreen", "reload map")
  MapReloadInProgress = true
  ChangeMap(GetMapName())
  MapReloadInProgress = false
  if ineditor then
    EditorActivate()
    Resume("ReloadMap")
  end
  if camera then
    SetCamera(table.unpack(camera))
  end
  LoadingScreenClose("idLoadingScreen", "reload map")
end
function GetMapBoxesCover(parts, rand)
  local width, height = terrain.GetMapSize()
  local slice_width = (width + parts - 1) / parts
  local slice_height = (height + parts - 1) / parts
  local boxes = {}
  for y = 1, parts do
    for x = 1, parts do
      boxes[#boxes + 1] = box((x - 1) * slice_width, (y - 1) * slice_height, x * slice_width, y * slice_height)
    end
  end
  if rand then
    table.shuffle(boxes, rand)
  end
  return boxes
end
function GameMapFilter(id, map_data)
  if IsTestMap(id) or IsModEditorMap(id) then
    return
  end
  map_data = map_data or MapData[id]
  return map_data.GameLogic
end
function GetAllGameMaps()
  local maps = {}
  for id, map_data in pairs(MapData) do
    if GameMapFilter(id, map_data) then
      maps[#maps + 1] = id
    end
  end
  table.sort(maps)
  return maps
end
function IsTestMap(map_name)
  return map_name:starts_with("__")
end
function IsOldMap(map_name)
  return map_name:find("_old", 1, true)
end
function IsPrefabMap(map_name, map_data)
  map_data = map_data or MapData[map_name]
  return map_data and map_data.IsPrefabMap
end
function GetOrigMapName(map_name)
  map_name = map_name or GetMapName()
  local idx = IsOldMap(map_name)
  return not idx and map_name or string.sub(map_name, 1, idx - 1)
end
function GetMapdataPath(map)
  return GetMapFolder(map) .. "mapdata.lua"
end
function QueryMapRevision(map)
  local _, svn_info = GetSvnInfo(GetMapdataPath(map))
  return svn_info and svn_info.last_revision or 0
end
if Platform.asserts then
  function OnMsg.GatherGameMetadata(metadata)
    metadata.pass_hash = terrain.HashPassability()
  end
  function OnMsg.GameMetadataLoaded(meta)
    if meta.lua_revision == LuaRevision and meta.assets_revision == AssetsRevision and meta.pass_hash and meta.pass_hash ~= terrain.HashPassability() then
      print("Savegame passability hash mismatch!")
    end
  end
end


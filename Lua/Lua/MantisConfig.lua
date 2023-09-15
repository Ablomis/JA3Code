local mantisZuluInternal = "36"
local mantisZuluExternal = "42"
local mantisZuluPublic = "44"
config.BugReporterXTemplateID = "BugReport"
const.MantisCopyUrlButton = true
config.IncludeDesyncReports = true
if Platform.steam then
  local steam_beta, steam_branch = SteamGetCurrentBetaName()
  if not (not Platform.demo and steam_beta) or steam_branch == "" or steam_branch == "public" or THQSteamWrapperGetPlatform() ~= "steam" then
    const.MantisProjectID = mantisZuluPublic
    const.MantisCopyUrlButton = false
    config.ForceIncludeExtraInfo = true
    config.IncludeDesyncReports = false
  elseif Platform.developer or insideHG() then
    const.MantisProjectID = mantisZuluInternal
  else
    const.MantisProjectID = mantisZuluExternal
  end
elseif Platform.developer or insideHG() or Platform.cheats then
  const.MantisProjectID = mantisZuluInternal
else
  const.MantisProjectID = mantisZuluPublic
  const.MantisCopyUrlButton = false
  config.ForceIncludeExtraInfo = true
  config.IncludeDesyncReports = false
end
if const.MantisProjectID == mantisZuluPublic then
  config.BugReporterXTemplateID = "BugReportZulu"
  config.CustomAttachSavegameText = T(976841387804, "ATTACH A SAVE OF THE CURRENT GAME")
  config.ForceIncludeScreenshot = true
end
const.Categories = {
  "Art",
  "Code",
  "Design",
  "Maps"
}
const.DefaultReporter = 81
const.DefaultCategory = 2
const.TargetVersions = {
  "23.2 Modding Tools / 10 Aug 2023",
  "23.3 Balance Patch 1.03 / 2 Aug 2023",
  "24. Console Cert ver / 10 Aug 2023",
  "25. Console Gold Master / 3 Oct 2023",
  "26. Modding Maps / 1 Nov 2023"
}
const.DefaultTargetVersion = ""


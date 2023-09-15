local filename_chars = {
  ["\""] = "'",
  ["\\"] = "_",
  ["/"] = "_",
  [":"] = "-",
  ["*"] = "+",
  ["?"] = "_",
  ["<"] = "(",
  [">"] = ")",
  ["|"] = "-"
}
local escape_symbols = {
  ["%%"] = "%%%%",
  ["%("] = "%%(",
  ["%)"] = "%%)",
  ["%]"] = "%%]",
  ["%["] = "%%[",
  ["%-"] = "%%-",
  ["%+"] = "%%+",
  ["%*"] = "%%*",
  ["%?"] = "%%?",
  ["%$"] = "%%$",
  ["%."] = "%%.",
  ["%^"] = "%%^"
}
local filter = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ()_+-'"
local filename_strings = {
  A = {
    "\195\128",
    "\195\129",
    "\195\130",
    "\195\131",
    "\195\132",
    "\195\133",
    "\195\134",
    "\196\128",
    "\196\130",
    "\196\132",
    "\199\158",
    "\199\159",
    "\199\160",
    "\199\161",
    "\199\162",
    "\199\163",
    "\199\187",
    "\199\188",
    "\199\189",
    "\200\128",
    "\200\129",
    "\200\130",
    "\200\131"
  },
  a = {
    "\195\160",
    "\195\161",
    "\195\162",
    "\195\163",
    "\195\164",
    "\195\165",
    "\195\166",
    "\196\129",
    "\196\131",
    "\196\133"
  },
  C = {"\195\135"},
  c = {"\195\167"},
  D = {
    "\196\142",
    "\196\144",
    "\195\144"
  },
  d = {
    "\196\143",
    "\196\145",
    "\195\176"
  },
  E = {
    "\195\136",
    "\195\137",
    "\195\138",
    "\195\139",
    "\196\148",
    "\196\150",
    "\196\152",
    "\196\154"
  },
  e = {
    "\196\151",
    "\196\153",
    "\196\149",
    "\196\155",
    "\195\168",
    "\195\169",
    "\195\170",
    "\195\171"
  },
  G = {
    "\196\156",
    "\196\160",
    "\196\158",
    "\196\162"
  },
  g = {
    "\196\159",
    "\196\157",
    "\196\161",
    "\196\163"
  },
  H = {"\196\164", "\196\166"},
  h = {"\196\165", "\196\167"},
  I = {
    "\195\140",
    "\195\141",
    "\195\142",
    "\195\143",
    "\196\174",
    "\196\172",
    "\196\170",
    "\196\168",
    "\196\178",
    "\196\176"
  },
  i = {
    "\196\177",
    "\196\179",
    "\196\169",
    "\196\171",
    "\196\173",
    "\196\175",
    "\195\172",
    "\195\173",
    "\195\174",
    "\195\175"
  },
  J = {
    "\196\181",
    "\196\181",
    "\196\181"
  },
  K = {"\196\182"},
  k = {"\196\183", "\196\184"},
  L = {
    "\197\129",
    "\196\191",
    "\196\189",
    "\196\185",
    "\196\187"
  },
  l = {
    "\196\188",
    "\196\186",
    "\196\190",
    "\197\128",
    "\197\130"
  },
  N = {
    "\197\133",
    "\197\131",
    "\197\135",
    "\197\138",
    "\195\145"
  },
  n = {
    "\195\177",
    "\197\139",
    "\197\136",
    "\197\132",
    "\197\134",
    "\197\137"
  },
  O = {
    "\195\146",
    "\195\147",
    "\195\148",
    "\195\149",
    "\195\149",
    "\195\150",
    "\195\152",
    "\197\140",
    "\197\142",
    "\197\142",
    "\197\144",
    "\197\146"
  },
  o = {
    "\195\178",
    "\195\179",
    "\195\180",
    "\195\181",
    "\195\182",
    "\195\184",
    "\197\141",
    "\197\145",
    "\197\147"
  },
  R = {
    "\197\148",
    "\197\150",
    "\197\152"
  },
  r = {
    "\197\153",
    "\197\151",
    "\197\149"
  },
  S = {
    "\197\154",
    "\197\156",
    "\197\158",
    "\197\160"
  },
  s = {
    "\195\159",
    "\197\155",
    "\197\157",
    "\197\157",
    "\197\159",
    "\197\161"
  },
  T = {
    "\195\158",
    "\197\162",
    "\197\164",
    "\197\166"
  },
  t = {
    "\195\190",
    "\197\163",
    "\197\165",
    "\197\167"
  },
  U = {
    "\197\168",
    "\197\170",
    "\197\172",
    "\197\174",
    "\197\178",
    "\197\176",
    "\195\153",
    "\195\154",
    "\195\155",
    "\195\156"
  },
  u = {
    "\195\185",
    "\195\186",
    "\195\187",
    "\195\188",
    "\197\177",
    "\197\179",
    "\197\175",
    "\197\173",
    "\197\171",
    "\197\169"
  },
  W = {"\197\180"},
  w = {"\197\181"},
  Y = {
    "\195\157",
    "\197\182",
    "\197\184"
  },
  y = {
    "\195\189",
    "\195\191",
    "\197\183"
  },
  Z = {
    "\197\185",
    "\197\187",
    "\197\189"
  },
  z = {
    "\197\188",
    "\197\186",
    "\197\190"
  },
  ["'"] = {"\226\128\156", "\226\128\157"}
}
function CanonizeSaveGameName(name)
  if not name then
    return
  end
  name = name:gsub("(.)", filename_chars)
  for k, v in pairs(filename_strings) do
    if type(v) == "string" then
      name = name:gsub(v, k)
    elseif type(v) == "table" then
      for i = 1, #v do
        name = name:gsub(v[i], k)
      end
    end
  end
  return name
end
function EscapePatternMatchingMagicSymbols(name)
  for k, v in sorted_pairs(escape_symbols) do
    name = name:gsub(k, v)
  end
  return name
end


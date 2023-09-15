function GetEnglishNounsTable()
  local EnglishNouns = {
    "ABROAD",
    "ACCESS",
    "ACT",
    "ACTION",
    "ACTIVE",
    "ACTOR",
    "ADVICE",
    "AFFAIR",
    "AFFECT",
    "AGE",
    "AGENCY",
    "AGENT",
    "AIR",
    "ALARM",
    "AMOUNT",
    "ANGER",
    "ANGLE",
    "ANIMAL",
    "ANNUAL",
    "ANSWER",
    "APPEAL",
    "APPLE",
    "AREA",
    "ARM",
    "ARMY",
    "ART",
    "ASIDE",
    "ASK",
    "ASPECT",
    "ASSIST",
    "AUTHOR",
    "AWARD",
    "BACK",
    "BAD",
    "BAG",
    "BAKE",
    "BALL",
    "BAND",
    "BANK",
    "BAR",
    "BASE",
    "BASIS",
    "BASKET",
    "BAT",
    "BATH",
    "BATTLE",
    "BEACH",
    "BEAR",
    "BED",
    "BEER",
    "BEING",
    "BELL",
    "BELT",
    "BENCH",
    "BEND",
    "BET",
    "BEYOND",
    "BID",
    "BIG",
    "BIKE",
    "BILL",
    "BIRD",
    "BIRTH",
    "BIT",
    "BITE",
    "BITTER",
    "BLAME",
    "BLANK",
    "BLOCK",
    "BLUE",
    "BOARD",
    "BOAT",
    "BONE",
    "BONUS",
    "BOOK",
    "BOOT",
    "BORDER",
    "BOSS",
    "BOTHER",
    "BOTTLE",
    "BOTTOM",
    "BOWL",
    "BOX",
    "BRAIN",
    "BRANCH",
    "BRAVE",
    "BREAD",
    "BREAK",
    "BREATH",
    "BRICK",
    "BRIDGE",
    "BRIEF",
    "BROAD",
    "BROWN",
    "BRUSH",
    "BUDDY",
    "BUDGET",
    "BUG",
    "BUNCH",
    "BUS",
    "BUTTON",
    "BUY",
    "BUYER",
    "CABLE",
    "CAKE",
    "CALL",
    "CALM",
    "CAMERA",
    "CAMP",
    "CAN",
    "CANCEL",
    "CANDLE",
    "CANDY",
    "CAP",
    "CAR",
    "CARD",
    "CARE",
    "CAREER",
    "CARPET",
    "CARRY",
    "CASE",
    "CASH",
    "CAT",
    "CATCH",
    "CAUSE",
    "CELL",
    "CHAIN",
    "CHAIR",
    "CHANCE",
    "CHANGE",
    "CHARGE",
    "CHART",
    "CHECK",
    "CHEEK",
    "CHEST",
    "CHIP",
    "CHOICE",
    "CITY",
    "CLAIM",
    "CLASS",
    "CLERK",
    "CLICK",
    "CLIENT",
    "CLOCK",
    "CLOSET",
    "CLOUD",
    "CLUB",
    "CLUE",
    "COACH",
    "COAST",
    "COAT",
    "CODE",
    "COFFEE",
    "COLD",
    "COLLAR",
    "COMMON",
    "COOK",
    "COOKIE",
    "COPY",
    "CORNER",
    "COST",
    "COUNT",
    "COUNTY",
    "COURSE",
    "COURT",
    "COVER",
    "COW",
    "CRAFT",
    "CRAZY",
    "CREAM",
    "CREDIT",
    "CREW",
    "CRY",
    "CUP",
    "CURVE",
    "CUT",
    "CYCLE",
    "DAMAGE",
    "DANCE",
    "DARE",
    "DARK",
    "DATA",
    "DATE",
    "DAY",
    "DEAL",
    "DEAR",
    "DEBATE",
    "DEEP",
    "DEGREE",
    "DELAY",
    "DEMAND",
    "DEPTH",
    "DESIGN",
    "DESK",
    "DETAIL",
    "DEVICE",
    "DIET",
    "DIG",
    "DINNER",
    "DIRT",
    "DISH",
    "DISK",
    "DIVIDE",
    "DOCTOR",
    "DOG",
    "DOOR",
    "DOT",
    "DOUBLE",
    "DOUBT",
    "DRAFT",
    "DRAG",
    "DRAMA",
    "DRAW",
    "DRAWER",
    "DREAM",
    "DRESS",
    "DRINK",
    "DRIVE",
    "DRIVER",
    "DROP",
    "DUE",
    "DUMP",
    "DUST",
    "DUTY",
    "EAR",
    "EARTH",
    "EASE",
    "EAST",
    "EAT",
    "EDGE",
    "EDITOR",
    "EFFECT",
    "EFFORT",
    "EGG",
    "EMPLOY",
    "END",
    "ENERGY",
    "ENGINE",
    "ENTRY",
    "EQUAL",
    "ERROR",
    "ESCAPE",
    "ESSAY",
    "ESTATE",
    "EVENT",
    "EXAM",
    "EXCUSE",
    "EXIT",
    "EXPERT",
    "EXTENT",
    "EYE",
    "FACE",
    "FACT",
    "FACTOR",
    "FAIL",
    "FALL",
    "FAN",
    "FARM",
    "FARMER",
    "FAULT",
    "FEE",
    "FEED",
    "FEEL",
    "FEW",
    "FIELD",
    "FIGURE",
    "FILE",
    "FILL",
    "FILM",
    "FINAL",
    "FINISH",
    "FISH",
    "FIX",
    "FLIGHT",
    "FLOOR",
    "FLOW",
    "FLOWER",
    "FLY",
    "FOCUS",
    "FOLD",
    "FOOD",
    "FOOT",
    "FORCE",
    "FORM",
    "FORMAL",
    "FRAME",
    "FRONT",
    "FRUIT",
    "FUEL",
    "FUN",
    "FUNNY",
    "FUTURE",
    "GAIN",
    "GAME",
    "GAP",
    "GARAGE",
    "GARDEN",
    "GAS",
    "GATE",
    "GATHER",
    "GEAR",
    "GENE",
    "GIFT",
    "GIVE",
    "GLAD",
    "GLASS",
    "GLOVE",
    "GOAL",
    "GOLD",
    "GOLF",
    "GOOD",
    "GRAB",
    "GRADE",
    "GRAND",
    "GRASS",
    "GREAT",
    "GREEN",
    "GROUND",
    "GROUP",
    "GROWTH",
    "GUARD",
    "GUESS",
    "GUEST",
    "GUIDE",
    "GUITAR",
    "HABIT",
    "HAIR",
    "HALF",
    "HALL",
    "HAND",
    "HANDLE",
    "HANG",
    "HAT",
    "HEAD",
    "HEALTH",
    "HEART",
    "HEAT",
    "HEAVY",
    "HEIGHT",
    "HELLO",
    "HELP",
    "HIDE",
    "HIGH",
    "HIRE",
    "HIT",
    "HOLD",
    "HOME",
    "HONEY",
    "HOPE",
    "HORROR",
    "HORSE",
    "HOST",
    "HOTEL",
    "HOUR",
    "HOUSE",
    "HUNT",
    "HURRY",
    "ICE",
    "IDEA",
    "IDEAL",
    "IMAGE",
    "IMPACT",
    "INCOME",
    "INSECT",
    "INSIDE",
    "INVITE",
    "IRON",
    "ISLAND",
    "ISSUE",
    "ITEM",
    "JACKET",
    "JOB",
    "JOIN",
    "JOKE",
    "JUDGE",
    "JUICE",
    "JUMP",
    "JUNIOR",
    "JURY",
    "KEEP",
    "KEY",
    "KICK",
    "KIND",
    "KING",
    "KISS",
    "KNEE",
    "LAB",
    "LACK",
    "LADDER",
    "LAKE",
    "LAND",
    "LAUGH",
    "LAW",
    "LAWYER",
    "LAY",
    "LAYER",
    "LEAD",
    "LEADER",
    "LEAGUE",
    "LEAVE",
    "LEG",
    "LENGTH",
    "LESSON",
    "LET",
    "LETTER",
    "LEVEL",
    "LIE",
    "LIFE",
    "LIFT",
    "LIGHT",
    "LIMIT",
    "LINE",
    "LINK",
    "LIP",
    "LIST",
    "LISTEN",
    "LIVING",
    "LOAD",
    "LOCAL",
    "LOCK",
    "LOG",
    "LONG",
    "LOOK",
    "LOSS",
    "LOVE",
    "LOW",
    "LUCK",
    "LUNCH",
    "MAIL",
    "MAIN",
    "MAJOR",
    "MAKE",
    "MALL",
    "MANNER",
    "MANY",
    "MAP",
    "MARCH",
    "MARK",
    "MARKET",
    "MASTER",
    "MATCH",
    "MATH",
    "MATTER",
    "MAYBE",
    "MEAL",
    "MEAT",
    "MEDIA",
    "MEDIUM",
    "MEET",
    "MEMORY",
    "MENU",
    "MESS",
    "METAL",
    "METHOD",
    "MIDDLE",
    "MIGHT",
    "MILK",
    "MIND",
    "MINE",
    "MINOR",
    "MINUTE",
    "MIRROR",
    "MISS",
    "MIX",
    "MOBILE",
    "MODE",
    "MODEL",
    "MOMENT",
    "MONEY",
    "MONTH",
    "MOOD",
    "MOST",
    "MOTOR",
    "MOUSE",
    "MOVE",
    "MOVIE",
    "MUD",
    "MUSCLE",
    "MUSIC",
    "NAIL",
    "NAME",
    "NATION",
    "NATIVE",
    "NATURE",
    "NEAT",
    "NECK",
    "NERVE",
    "NET",
    "NEWS",
    "NIGHT",
    "NOBODY",
    "NOISE",
    "NORMAL",
    "NORTH",
    "NOSE",
    "NOTE",
    "NOTICE",
    "NOVEL",
    "NUMBER",
    "NURSE",
    "OBJECT",
    "OFFER",
    "OFFICE",
    "OIL",
    "ONE",
    "OPTION",
    "ORANGE",
    "ORDER",
    "OTHER",
    "OVEN",
    "OWNER",
    "PACE",
    "PACK",
    "PAGE",
    "PAINT",
    "PAIR",
    "PANIC",
    "PAPER",
    "PARK",
    "PART",
    "PARTY",
    "PASS",
    "PAST",
    "PATH",
    "PAUSE",
    "PAY",
    "PEACE",
    "PEAK",
    "PEN",
    "PERMIT",
    "PHASE",
    "PHONE",
    "PHOTO",
    "PHRASE",
    "PIANO",
    "PICK",
    "PIE",
    "PIECE",
    "PIN",
    "PIPE",
    "PITCH",
    "PIZZA",
    "PLACE",
    "PLAN",
    "PLANE",
    "PLANT",
    "PLATE",
    "PLAY",
    "PLAYER",
    "PLENTY",
    "POEM",
    "POET",
    "POETRY",
    "POINT",
    "POLICE",
    "POLICY",
    "POOL",
    "POP",
    "POST",
    "POTATO",
    "POUND",
    "POWER",
    "PRESS",
    "PRICE",
    "PRIDE",
    "PRIEST",
    "PRINT",
    "PRIOR",
    "PRIZE",
    "PROFIT",
    "PROMPT",
    "PROOF",
    "PUBLIC",
    "PULL",
    "PUNCH",
    "PURPLE",
    "PUSH",
    "PUT",
    "QUEEN",
    "QUIET",
    "QUIT",
    "QUOTE",
    "RACE",
    "RADIO",
    "RAIN",
    "RAISE",
    "RANGE",
    "RATE",
    "RATIO",
    "RAW",
    "REACH",
    "READ",
    "REASON",
    "RECIPE",
    "RECORD",
    "RED",
    "REFUSE",
    "REGION",
    "REGRET",
    "RELIEF",
    "REMOTE",
    "REMOVE",
    "RENT",
    "REPAIR",
    "REPEAT",
    "REPLY",
    "REPORT",
    "RESIST",
    "RESORT",
    "REST",
    "RESULT",
    "RETURN",
    "REVEAL",
    "REVIEW",
    "REWARD",
    "RICE",
    "RICH",
    "RIDE",
    "RING",
    "RISE",
    "RISK",
    "RIVER",
    "ROAD",
    "ROCK",
    "ROLE",
    "ROLL",
    "ROOF",
    "ROOM",
    "ROPE",
    "ROUGH",
    "ROUND",
    "ROW",
    "ROYAL",
    "RUB",
    "RUIN",
    "RULE",
    "RUN",
    "RUSH",
    "SAFE",
    "SAFETY",
    "SAIL",
    "SALAD",
    "SALARY",
    "SALE",
    "SALT",
    "SAMPLE",
    "SAND",
    "SAVE",
    "SCALE",
    "SCENE",
    "SCHEME",
    "SCHOOL",
    "SCORE",
    "SCREEN",
    "SCRIPT",
    "SEA",
    "SEARCH",
    "SEASON",
    "SEAT",
    "SECOND",
    "SECRET",
    "SECTOR",
    "SELF",
    "SELL",
    "SENIOR",
    "SENSE",
    "SERIES",
    "SERVE",
    "SET",
    "SHAKE",
    "SHAME",
    "SHAPE",
    "SHARE",
    "SHIFT",
    "SHINE",
    "SHIP",
    "SHIRT",
    "SHOCK",
    "SHOE",
    "SHOP",
    "SHOT",
    "SHOW",
    "SHOWER",
    "SIDE",
    "SIGN",
    "SIGNAL",
    "SILLY",
    "SILVER",
    "SIMPLE",
    "SING",
    "SINGER",
    "SINGLE",
    "SINK",
    "SIR",
    "SITE",
    "SIZE",
    "SKILL",
    "SKIRT",
    "SKY",
    "SLEEP",
    "SLICE",
    "SLIDE",
    "SLIP",
    "SMELL",
    "SMILE",
    "SMOKE",
    "SNOW",
    "SOCK",
    "SOFT",
    "SOIL",
    "SOLID",
    "SONG",
    "SORT",
    "SOUND",
    "SOUP",
    "SOURCE",
    "SOUTH",
    "SPACE",
    "SPARE",
    "SPEECH",
    "SPEED",
    "SPELL",
    "SPEND",
    "SPIRIT",
    "SPITE",
    "SPLIT",
    "SPORT",
    "SPOT",
    "SPRAY",
    "SPREAD",
    "SPRING",
    "SQUARE",
    "STABLE",
    "STAFF",
    "STAGE",
    "STAND",
    "STAR",
    "START",
    "STATE",
    "STATUS",
    "STAY",
    "STEAK",
    "STEP",
    "STICK",
    "STILL",
    "STOCK",
    "STOP",
    "STORE",
    "STORM",
    "STORY",
    "STRAIN",
    "STREET",
    "STRESS",
    "STRIKE",
    "STRING",
    "STUDIO",
    "STUDY",
    "STUFF",
    "STYLE",
    "SUGAR",
    "SUIT",
    "SUMMER",
    "SUN",
    "SURVEY",
    "SWEET",
    "SWIM",
    "SWING",
    "SWITCH",
    "SYSTEM",
    "TABLE",
    "TACKLE",
    "TALE",
    "TALK",
    "TANK",
    "TAP",
    "TARGET",
    "TASK",
    "TASTE",
    "TAX",
    "TEA",
    "TEACH",
    "TEAM",
    "TEAR",
    "TELL",
    "TENNIS",
    "TERM",
    "TEST",
    "TEXT",
    "THANKS",
    "THEME",
    "THEORY",
    "THING",
    "THROAT",
    "TICKET",
    "TIE",
    "TILL",
    "TIME",
    "TIP",
    "TITLE",
    "TODAY",
    "TOE",
    "TONE",
    "TOOL",
    "TOOTH",
    "TOP",
    "TOPIC",
    "TOTAL",
    "TOUCH",
    "TOUGH",
    "TOUR",
    "TOWEL",
    "TOWER",
    "TOWN",
    "TRACK",
    "TRADE",
    "TRAIN",
    "TRASH",
    "TRAVEL",
    "TREAT",
    "TREE",
    "TRICK",
    "TRIP",
    "TRUCK",
    "TRUST",
    "TRUTH",
    "TRY",
    "TUNE",
    "TURN",
    "TWIST",
    "TWO",
    "TYPE",
    "UNION",
    "UNIQUE",
    "UNIT",
    "UPPER",
    "USE",
    "USER",
    "USUAL",
    "VALUE",
    "VAST",
    "VIDEO",
    "VIEW",
    "VIRUS",
    "VISIT",
    "VISUAL",
    "VOICE",
    "VOLUME",
    "WAIT",
    "WAKE",
    "WALK",
    "WALL",
    "WAR",
    "WASH",
    "WATCH",
    "WATER",
    "WAVE",
    "WAY",
    "WEALTH",
    "WEAR",
    "WEB",
    "WEEK",
    "WEIGHT",
    "WEIRD",
    "WEST",
    "WHEEL",
    "WHILE",
    "WHOLE",
    "WILL",
    "WIN",
    "WIND",
    "WINDOW",
    "WINE",
    "WING",
    "WINNER",
    "WINTER",
    "WISH",
    "WONDER",
    "WOOD",
    "WORD",
    "WORK",
    "WORKER",
    "WORLD",
    "WORRY",
    "WORTH",
    "WRAP",
    "WRITER",
    "YARD",
    "YEAR",
    "YELLOW",
    "YOUNG",
    "YOUTH",
    "ZONE"
  }
  return EnglishNouns
end


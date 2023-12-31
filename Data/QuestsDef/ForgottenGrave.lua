-- ========== GENERATED BY QuestsDef Editor (Ctrl-Alt-Q) DO NOT EDIT MANUALLY! ==========

PlaceObj('QuestsDef', {
	Author = "Radomir",
	DevNotes = "All scripting is in CursedForestSideQuests.",
	DisplayName = T(979412978401, --[[QuestsDef ForgottenGrave DisplayName]] "Forgotten Grave"),
	KillTCEsConditions = {
		PlaceObj('QuestKillTCEsOnCompleted', {}),
	},
	NoteDefs = {
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					BadgeUnit = "GloomyVillager",
					Sector = "D16",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveFound", "GraveGiven", "GraveReported" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveFound or quest.GraveGiven or quest.GraveReported
					end,
				}),
			},
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "CursedForestSideQuests",
					Vars = set({
	GraveBushesCut = true,
	GraveGiven = false,
}),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveBushesCut and not quest.GraveGiven
					end,
				}),
			},
			Text = T(298814817829, --[[QuestsDef ForgottenGrave Text]] "Found a forgotten <em>grave</em> in the woods"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					Sector = "D13",
				}),
				PlaceObj('QuestBadgePlacement', {
					Sector = "E13",
				}),
				PlaceObj('QuestBadgePlacement', {
					Sector = "D19",
				}),
			},
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveBushesCut", "GraveFound", "GraveReported" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveBushesCut or quest.GraveFound or quest.GraveReported
					end,
				}),
			},
			Idx = 2,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveGiven" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveGiven
					end,
				}),
			},
			Text = T(469635824780, --[[QuestsDef ForgottenGrave Text]] "<em>Francis</em> is looking for his father's <em>grave</em> that is somewhere along the river in the Cursed Forest"),
		}),
		PlaceObj('QuestNote', {
			Badges = {
				PlaceObj('QuestBadgePlacement', {
					BadgeUnit = "GloomyVillager",
					Sector = "D16",
				}),
			},
			HideConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveReported" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveReported
					end,
				}),
			},
			Idx = 3,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveGiven" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveGiven
					end,
				}),
				PlaceObj('QuestIsVariableBool', {
					Condition = "or",
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveBushesCut", "GraveFound" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveBushesCut or quest.GraveFound
					end,
				}),
			},
			Text = T(811574170901, --[[QuestsDef ForgottenGrave Text]] "<em>Francis</em> would want to know the location of his father's <em>grave</em>"),
		}),
		PlaceObj('QuestNote', {
			CompletionConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveDone" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveDone
					end,
				}),
			},
			Idx = 4,
			ShowConditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "CursedForestSideQuests",
					Vars = set( "GraveReported" ),
					__eval = function ()
						local quest = gv_Quests['CursedForestSideQuests'] or QuestGetState('CursedForestSideQuests')
						return quest.GraveReported
					end,
				}),
			},
			Text = T(570557226384, --[[QuestsDef ForgottenGrave Text]] "<em>Outcome:</em> The parents of <em>Francis</em> will rest in peace"),
		}),
	},
	QuestGroup = "Jungle",
	Variables = {
		PlaceObj('QuestVarBool', {
			Name = "Completed",
		}),
		PlaceObj('QuestVarBool', {
			Name = "Given",
		}),
		PlaceObj('QuestVarBool', {
			Name = "Failed",
		}),
		PlaceObj('QuestVarBool', {
			Name = "NotStarted",
			Value = true,
		}),
	},
	group = "CursedForest",
	id = "ForgottenGrave",
})


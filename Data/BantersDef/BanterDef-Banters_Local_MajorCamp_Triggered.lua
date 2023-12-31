-- ========== GENERATED BY BanterDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "(sounds of struggle in the end)",
			'Character', "President",
			'Text', T(708818534171, --[[BanterDef Major01_StartBattle_Radio Text section:Banters_Local_MajorCamp_Triggered/Major01_StartBattle_Radio (sounds of struggle in the end) voice:President]] "Attention, soldiers! This is <em>President LaFontaine</em>. I am being kept in the Major's tent on the top of the..."),
			'useSnype', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Annotation', "(sounds of struggle in the end)",
			'Character', "TheMajor",
			'Text', T(346714072761, --[[BanterDef Major01_StartBattle_Radio Text section:Banters_Local_MajorCamp_Triggered/Major01_StartBattle_Radio (sounds of struggle in the end) voice:TheMajor]] "Well, well, the old rascal has quick hands. He may lose them later. In the mean time - Legion, we are under attack! Time to prove your worth!"),
			'useSnype', true,
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "Major01_StartBattle_Radio",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "TheMajor",
			'Text', T(100561469628, --[[BanterDef Major02_ShootingOrder_Radio Text section:Banters_Local_MajorCamp_Triggered/Major02_ShootingOrder_Radio voice:TheMajor]] "Those mercs are coming up fast. Legion troops: execute the prisoner! I repeat, <em>President LaFontaine</em> is to be executed immediately. Take away their hope and reclaim your country!"),
			'useSnype', true,
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "Major02_ShootingOrder_Radio",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "TheMajor",
			'Text', T(294838463915, --[[BanterDef Major03_Defeated_Approach Text section:Banters_Local_MajorCamp_Triggered/Major03_Defeated_Approach voice:TheMajor]] "Damn, boys, you're better than I expected! Alright, don't shoot, I'm laying down my weapon. You can shoot me later, if you want, but let's have a chat first. There are some things you should know..."),
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "05_TakeDownMajor",
			Vars = set( "CombatFinished" ),
			__eval = function ()
				local quest = gv_Quests['05_TakeDownMajor'] or QuestGetState('05_TakeDownMajor')
				return quest.CombatFinished
			end,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "Major03_Defeated_Approach",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(875225312742, --[[BanterDef MajorCampInteractable_GoldenEagle_failure Text]] "<wisdom-f>\nThe true worth of this statue is unclear and it appears too massive to transport."),
			'Voiced', false,
			'FloatUp', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "MajorCampInteractable_GoldenEagle_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(644842987952, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text]] "<wisdom-s>\nThe gold eagle is a hollow ornament glued on to an authentic, and quite valuable, statuette of ancient origins."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Grunty",
					'Text', T(564487868301, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_GoldenEagle_success voice:Grunty]] "I would categorize this piece as neo-classlessism."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Gus",
					'Text', T(530211021433, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_GoldenEagle_success voice:Gus]] "That dang thing should be glued onto a monster truck, not a statue!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "MD",
					'Text', T(929341357059, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_GoldenEagle_success voice:MD]] "Well, at least the glue doesn't seem to have caused much damage."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "DrQ",
					'Text', T(845879625552, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_GoldenEagle_success voice:DrQ]] "A rather extreme metaphor for colonialism."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Scully",
					'Text', T(252399095101, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_GoldenEagle_success voice:Scully]] "I'm no art critic, but this seems bloody tasteless."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Thor",
					'Text', T(557064408352, --[[BanterDef MajorCampInteractable_GoldenEagle_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_GoldenEagle_success voice:Thor]] "It's wonderful to find self-expression through art, except in this case."),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "MajorCampInteractable_GoldenEagle_success",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(240425788228, --[[BanterDef MajorCampInteractable_MoneyPile Text]] "This is a huge pile of Grand Chien currency, worth only a bit more than the paper it is printed on."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Grunty",
					'Text', T(336526126459, --[[BanterDef MajorCampInteractable_MoneyPile Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_MoneyPile voice:Grunty]] "We could use this to stuff pillow cases or maybe make fun party hats."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Tex",
					'Text', T(414852305253, --[[BanterDef MajorCampInteractable_MoneyPile Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_MoneyPile voice:Tex]] "This a lot more than just fistful of dollars!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Sidney",
					'Text', T(860259569086, --[[BanterDef MajorCampInteractable_MoneyPile Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_MoneyPile voice:Sidney]] "Rather untidy, wouldn't you say?"),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "MajorCampInteractable_MoneyPile",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(334273705255, --[[BanterDef MajorCampInteractable_Radar_failure Text]] "<wisdom-f>\nThe disk seems to be full of everything but data from the radar."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'Text', "",
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Fox",
					'Text', T(667529741972, --[[BanterDef MajorCampInteractable_Radar_failure Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_failure voice:Fox]] "There's a folder marked \"private\"... Yep! Those are definitely someone's privates!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Grunty",
					'Text', T(634131126103, --[[BanterDef MajorCampInteractable_Radar_failure Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_failure voice:Grunty]] "There are several dog-training videos on here. Oh... That is just a person dressed as a dog."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Sidney",
					'Text', T(935148104056, --[[BanterDef MajorCampInteractable_Radar_failure Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_failure voice:Sidney]] "Hmmm... the conspiracy grows. Seems some Nigerian Prince has been using this thing to collect email addresses."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Tex",
					'Text', T(516216889563, --[[BanterDef MajorCampInteractable_Radar_failure Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_failure voice:Tex]] 'This video file is "Much Dust, Many Bullets"! How that get here?!'),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "MajorCampInteractable_Radar_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(506354060137, --[[BanterDef MajorCampInteractable_Radar_success Text]] "<wisdom-s>\nThere is radar footage in video files carefully hidden in a folder with adult content and pirated movies."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'Text', "",
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Livewire",
					'Text', T(364000223689, --[[BanterDef MajorCampInteractable_Radar_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_success voice:Livewire]] 'This operating system is from the Stone Age! Okay, let me see. My computer, View, Folder Options, View, Hidden Files, Show all files. See? The radar input is right here in the "Private" folder.'),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Barry",
					'Text', T(302687317228, --[[BanterDef MajorCampInteractable_Radar_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_success voice:Barry]] "I hide files in same place on home computer. Errr... same directory, not same folder with such other unmentionable things."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Buns",
					'Text', T(848651078941, --[[BanterDef MajorCampInteractable_Radar_success Text section:Banters_Local_MajorCamp_Triggered/MajorCampInteractable_Radar_success voice:Buns]] "I feel like I should be wearing gloves sorting through these files."),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "MajorCampInteractable_Radar_success",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Len",
					'Text', T(617418823435, --[[BanterDef Major_Execute Text section:Banters_Local_MajorCamp_Triggered/Major_Execute voice:Len]] "I wish it didn't have to be this way, old buddy, but I can't see that you left me much choice."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Igor",
					'Text', T(312207973883, --[[BanterDef Major_Execute Text section:Banters_Local_MajorCamp_Triggered/Major_Execute voice:Igor]] "Da. In acceptance speech for meritorious medal of brave valor, I will say you died like soldier."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Tex",
					'Text', T(636281348786, --[[BanterDef Major_Execute Text section:Banters_Local_MajorCamp_Triggered/Major_Execute voice:Tex]] "Final death scene, partner. Adios."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "MD",
					'Text', T(942936099519, --[[BanterDef Major_Execute Text section:Banters_Local_MajorCamp_Triggered/Major_Execute voice:MD]] "I took an oath not to do any harm, but I guess in your case I can make an exception."),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "Major_Execute",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Len",
					'Text', T(310814475539, --[[BanterDef Major_ExecuteCompassion Text section:Banters_Local_MajorCamp_Triggered/Major_ExecuteCompassion voice:Len]] "I suppose this is the last favor I can do for you, old friend."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Gus",
					'Text', T(538833320107, --[[BanterDef Major_ExecuteCompassion Text section:Banters_Local_MajorCamp_Triggered/Major_ExecuteCompassion voice:Gus]] "Dismissed, soldier."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Ivan",
					'Text', T(561807263170, --[[BanterDef Major_ExecuteCompassion Text section:Banters_Local_MajorCamp_Triggered/Major_ExecuteCompassion voice:Ivan]] "Это лучшая смерть для тебя, майор Скалион."),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "Major_ExecuteCompassion",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "President",
			'Text', T(381725692739, --[[BanterDef President01_Combat_Approach Text section:Banters_Local_MajorCamp_Triggered/President01_Combat_Approach voice:President]] "Keep going, soldiers! Don't worry about me, I'll take cover. Fight on, you're doing great!"),
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('CombatIsActive', {}),
		PlaceObj('QuestIsVariableBool', {
			QuestId = "05_TakeDownMajor",
			Vars = set({
	CombatFinished = false,
}),
			__eval = function ()
				local quest = gv_Quests['05_TakeDownMajor'] or QuestGetState('05_TakeDownMajor')
				return not quest.CombatFinished
			end,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "President01_Combat_Approach",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "President",
			'Text', T(880565514166, --[[BanterDef President02_Saved_Approach Text section:Banters_Local_MajorCamp_Triggered/President02_Saved_Approach voice:President]] "Thank you, soldiers. That was an amazing display of tactical skill and courage."),
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('BanterHasPlayed', {
			Banters = {
				"Major03_Defeated_Approach",
			},
			WaitOver = true,
		}),
		PlaceObj('QuestIsVariableBool', {
			QuestId = "05_TakeDownMajor",
			Vars = set( "CombatFinished" ),
			__eval = function ()
				local quest = gv_Quests['05_TakeDownMajor'] or QuestGetState('05_TakeDownMajor')
				return quest.CombatFinished
			end,
		}),
	},
	group = "Banters_Local_MajorCamp_Triggered",
	id = "President02_Saved_Approach",
})


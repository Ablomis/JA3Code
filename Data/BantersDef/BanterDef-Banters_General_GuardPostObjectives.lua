-- ========== GENERATED BY BanterDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "any merc",
			'Text', T(119452326470, --[[BanterDef BarrierCamp_GuardpostObjective_Boat Text]] "The boat is full of <em>explosives</em>. If someone were to push it upstream, it would do a lot of damage to the Legion blockade at <em>Camp La Barrière</em>."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Red",
					'Text', T(115122805992, --[[BanterDef BarrierCamp_GuardpostObjective_Boat Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Boat voice:Red]] "If life gives ye a boat of explosives, just give it a push!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Fidel",
					'Text', T(129375606682, --[[BanterDef BarrierCamp_GuardpostObjective_Boat Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Boat voice:Fidel]] "Fidel is feeling like it is good time for a boat ride!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Nails",
					'Text', T(986495138560, --[[BanterDef BarrierCamp_GuardpostObjective_Boat Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Boat voice:Nails]] 'You can call this little boat "The Minnow" because it\'s about to be lost.'),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "BarrierCamp_GuardpostObjective_Boat",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "any merc",
			'Text', T(323712946552, --[[BanterDef BarrierCamp_GuardpostObjective_Poison Text]] 'The barrels are labelled "BOOZ FOR CAMP LA BAREER. NO DRINK OR WE KILL U!!!". However, it doesn\'t say anything about not adding laxatives.'),
			'Voiced', false,
			'FloatUp', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "BarrierCamp_GuardpostObjective_Poison",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "VillagerMale",
			'Text', T(578432220761, --[[BanterDef BarrierCamp_GuardpostObjective_PoisonWorker01 Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_PoisonWorker01 voice:VillagerMale]] "Please don't drink the moonshine. Those assholes from <em>Camp La Barrière</em> will kill me if I don't deliver it."),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Igor",
					'Text', T(136264460440, --[[BanterDef BarrierCamp_GuardpostObjective_PoisonWorker01 Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_PoisonWorker01 voice:Igor]] "Me? Never!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Larry_Clean",
					'Text', T(209678016264, --[[BanterDef BarrierCamp_GuardpostObjective_PoisonWorker01 Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_PoisonWorker01 voice:Larry_Clean]] "Don't drink. Got it... Don't drink, don't drink, don't drink..."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Larry",
					'Text', T(639964526078, --[[BanterDef BarrierCamp_GuardpostObjective_PoisonWorker01 Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_PoisonWorker01 voice:Larry]] "You hear that, Ted? If we can drink all the moonshine, they'll NEVER believe he drank it!"),
				}),
			},
			'playOnce', true,
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "ReduceBarrierCampStrength",
			Vars = set({
	ShipmentPoisoned = false,
}),
			__eval = function ()
				local quest = gv_Quests['ReduceBarrierCampStrength'] or QuestGetState('ReduceBarrierCampStrength')
				return not quest.ShipmentPoisoned
			end,
		}),
		PlaceObj('GuardpostObjectiveDone', {
			GuardpostObjective = "Poison",
			Negate = true,
		}),
		PlaceObj('SectorCheckOwner', {
			Negate = true,
			sector_id = "G10",
		}),
		PlaceObj('CombatIsActive', {
			Negate = true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_General_GuardPostObjectives",
	id = "BarrierCamp_GuardpostObjective_PoisonWorker01",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "any merc",
			'Text', T(521322694470, --[[BanterDef BarrierCamp_GuardpostObjective_Poison_Success Text]] 'Thanks to the addition of copious amounts of laxatives, drinking the <em>moonshine</em> will cause many Legion soldiers at <em>Camp La Barrière</em> to be "indisposed".'),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfTheseCount', 2,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Igor",
					'Text', T(855790068107, --[[BanterDef BarrierCamp_GuardpostObjective_Poison_Success Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Poison_Success voice:Igor]] "This is shame. Forgive me, drink! I do it for medal."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Hitman",
					'Text', T(897921100285, --[[BanterDef BarrierCamp_GuardpostObjective_Poison_Success Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Poison_Success voice:Hitman]] "Shame we won't be able to watch what happens after they drink it, he-he."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Meltdown",
					'Text', T(366633487523, --[[BanterDef BarrierCamp_GuardpostObjective_Poison_Success Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Poison_Success voice:Meltdown]] 'Hey, we just made a new drink! "The Grand Chien Mudslide"!'),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "MD",
					'Text', T(527050906157, --[[BanterDef BarrierCamp_GuardpostObjective_Poison_Success Text section:Banters_General_GuardPostObjectives/BarrierCamp_GuardpostObjective_Poison_Success voice:MD]] "Ugh... My stomach's gurgling just thinking about what's about to happen."),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "BarrierCamp_GuardpostObjective_Poison_Success",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Defector",
			'Text', T(971481587075, --[[BanterDef CampBienChien_Defector_AfterBribe Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_AfterBribe voice:Defector]] "Thank you, boss. I'll go and tell them to pack their stuff. We will start a new life, I promise!"),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "ReduceBienChienCampStrength",
			Vars = set( "DefectorBribed" ),
			__eval = function ()
				local quest = gv_Quests['ReduceBienChienCampStrength'] or QuestGetState('ReduceBienChienCampStrength')
				return quest.DefectorBribed
			end,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampBienChien_Defector_AfterBribe",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Defector",
			'Text', T(552671200649, --[[BanterDef CampBienChien_Defector_Approach Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_Approach voice:Defector]] "Don't shoot, don't shoot, boss! I don't want to fight for those fucking slavers. Just don't shoot me, okay?"),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "ReduceBienChienCampStrength",
			Vars = set({
	DefectorBribed = false,
}),
			__eval = function ()
				local quest = gv_Quests['ReduceBienChienCampStrength'] or QuestGetState('ReduceBienChienCampStrength')
				return not quest.DefectorBribed
			end,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampBienChien_Defector_Approach",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Defector",
			'Text', T(753606465531, --[[BanterDef CampBienChien_Defector_Initial Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_Initial voice:Defector]] "Look, I know you mean business, but a few of the guys are not that bad. We are just looking for a way out of this merde! "),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "PierreMerc",
					'Text', T(517518476092, --[[BanterDef CampBienChien_Defector_Initial Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_Initial voice:PierreMerc]] "If you are brave enough, you can always choose to walk a new path."),
				}),
			},
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "Defector",
			'Text', T(476465522942, --[[BanterDef CampBienChien_Defector_Initial Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_Initial voice:Defector]] "It's easy to convince them to slip away from <em>Camp Bien Chien</em>, but we'll need cash to hide our tracks. Le Major's officers are really nasty to anyone deserting the Legion."),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Spike",
					'Text', T(633864639531, --[[BanterDef CampBienChien_Defector_Initial Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_Initial voice:Spike]] "As they should be."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Raven",
					'Text', T(210317081597, --[[BanterDef CampBienChien_Defector_Initial Text section:Banters_General_GuardPostObjectives/CampBienChien_Defector_Initial voice:Raven]] "You mean to tell me there are people they AREN'T nasty to?"),
				}),
			},
			'playOnce', true,
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "ReduceBienChienCampStrength",
			Vars = set({
	DefectorBribed = false,
}),
			__eval = function ()
				local quest = gv_Quests['ReduceBienChienCampStrength'] or QuestGetState('ReduceBienChienCampStrength')
				return not quest.DefectorBribed
			end,
		}),
		PlaceObj('SectorCheckOwner', {
			Negate = true,
			sector_id = "F19",
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampBienChien_Defector_Initial",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Prisoners",
			'Text', T(363272555315, --[[BanterDef CampBienChien_EscortedPrisoner_Freed Text section:Banters_General_GuardPostObjectives/CampBienChien_EscortedPrisoner_Freed voice:Prisoners]] "You are not going to take us to the mines, right? You set us free... for free?!"),
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Ice",
					'Text', T(935309645125, --[[BanterDef CampBienChien_EscortedPrisoner_Freed Text section:Banters_General_GuardPostObjectives/CampBienChien_EscortedPrisoner_Freed voice:Ice]] "That's right. Now get your punk asses out of here before I change my mind."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Grizzly",
					'Text', T(426108658678, --[[BanterDef CampBienChien_EscortedPrisoner_Freed Text section:Banters_General_GuardPostObjectives/CampBienChien_EscortedPrisoner_Freed voice:Grizzly]] "Hey, freedom isn't free. Okay? You're gonna have to earn it every day for the rest of your lives."),
				}),
			},
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "Prisoners",
			'Text', T(982147073228, --[[BanterDef CampBienChien_EscortedPrisoner_Freed Text section:Banters_General_GuardPostObjectives/CampBienChien_EscortedPrisoner_Freed voice:Prisoners]] "May the spirits bless you for your kindness!"),
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('PlayerIsInSectors', {
			Sectors = {
				"E20",
			},
		}),
		PlaceObj('SectorIsInConflict', {
			Negate = true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_General_GuardPostObjectives",
	id = "CampBienChien_EscortedPrisoner_Freed",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Wanda",
			'Text', T(534565094417, --[[BanterDef CampDuCrocodile_PlantBorassus_01 Text section:Banters_General_GuardPostObjectives/CampDuCrocodile_PlantBorassus_01 voice:Wanda]] "Yes! I feel the Old Ones approve."),
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampDuCrocodile_PlantBorassus_01",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Wanda",
			'Text', T(509822629575, --[[BanterDef CampDuCrocodile_PlantBorassus_02 Text section:Banters_General_GuardPostObjectives/CampDuCrocodile_PlantBorassus_02 voice:Wanda]] "At night, we shall dance. May we all share the dream of the Old Ones."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "ReduceCrocodileCampStrength",
			Vars = set( "BorassusPlanted" ),
			__eval = function ()
				local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
				return quest.BorassusPlanted
			end,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampDuCrocodile_PlantBorassus_02",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(971230272738, --[[BanterDef CampDuCrocodile_PlantBorassus_03 Text]] "Borassus root planted."),
			'Voiced', false,
			'FloatUp', true,
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "ReduceCrocodileCampStrength",
			Vars = set( "BorassusPlanted" ),
			__eval = function ()
				local quest = gv_Quests['ReduceCrocodileCampStrength'] or QuestGetState('ReduceCrocodileCampStrength')
				return quest.BorassusPlanted
			end,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampDuCrocodile_PlantBorassus_03",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(147532522426, --[[BanterDef CampDuCrocodile_ReleaseInfected_01_Intro Text]] "The truck is hopelessly stuck in the mud and loaded with... dead bodies?"),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Shadow",
					'Text', T(916042910221, --[[BanterDef CampDuCrocodile_ReleaseInfected_01_Intro Text section:Banters_General_GuardPostObjectives/CampDuCrocodile_ReleaseInfected_01_Intro voice:Shadow]] "Totally not a trap."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Larry",
					'Text', T(130658817431, --[[BanterDef CampDuCrocodile_ReleaseInfected_01_Intro Text section:Banters_General_GuardPostObjectives/CampDuCrocodile_ReleaseInfected_01_Intro voice:Larry]] "Oh no, I know where this is going. Zombies, man!"),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampDuCrocodile_ReleaseInfected_01_Intro",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(694330767698, --[[BanterDef CampDuCrocodile_ReleaseInfected_02_Release Text]] "There is movement under the cover!"),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Larry",
					'Text', T(132806431629, --[[BanterDef CampDuCrocodile_ReleaseInfected_02_Release Text section:Banters_General_GuardPostObjectives/CampDuCrocodile_ReleaseInfected_02_Release voice:Larry]] "Aaaargh! They want my brains!... Wait, where are they going?!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Tex",
					'Text', T(305754612132, --[[BanterDef CampDuCrocodile_ReleaseInfected_02_Release Text section:Banters_General_GuardPostObjectives/CampDuCrocodile_ReleaseInfected_02_Release voice:Tex]] "Uh... I really hope these are extras from horror movie!"),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CampDuCrocodile_ReleaseInfected_02_Release",
})

PlaceObj('BanterDef', {
	Comment = "sat. map radio",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "LegionRaider",
			'Text', T(118065529491, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames sat. map radio voice:LegionRaider radio]] "Come on man. Deal the damn cards. We have to head off to the camp soon."),
			'useSnype', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionGoon",
			'Text', T(569368135680, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames sat. map radio voice:LegionGoon radio]] "Ah, putain. Enough with your whining. Just play the damned game."),
			'useSnype', true,
		}),
	},
	Once = true,
	group = "Banters_General_GuardPostObjectives",
	id = "CrossroadsCamp_GuardpostObjective_CardGames",
	isRadio = true,
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(121879584614, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Examine Text]] "There are playing cards scattered on the table. Someone was here recently."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Magic",
					'Text', T(934799218172, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Examine Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Examine voice:Magic]] "Hey! I love Texas Hold'em... But these guys obviously don't know a thing about poker."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Red",
					'Text', T(806791110559, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Examine Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Examine voice:Red]] "Pfff. Cards are a waste of time! Now, Rugby - there's a game that separates the wee bairns from the men!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Sidney",
					'Text', T(849323722715, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Examine Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Examine voice:Sidney]] "What were they playing? Poker? Well, that's disappointing. Why is it that no one ever plays Bridge anymore?"),
				}),
			},
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CrossroadsCamp_GuardpostObjective_CardGames_Examine",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "LegionMale_1",
			'Text', T(590756786182, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard voice:LegionMale_1]] "Have you heard about <em>Molotov</em>?"),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_2",
			'Text', T(563051510056, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard voice:LegionMale_2]] "I can't stand that guy. Please, tell me he's dead."),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_1",
			'Text', T(249311175282, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard voice:LegionMale_1]] "No, dumbass. I heard he and his gang stumbled on something big."),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_2",
			'Text', T(410903304614, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard voice:LegionMale_2]] "How big? Like your momma's ass?"),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_1",
			'Text', T(773660114080, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard voice:LegionMale_1]] "Shut up, moron. I'm serious. They say <em>Siegfried</em> has been doing something with the <em>Diesel</em> he buys from us."),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_2",
			'Text', T(410881152808, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard voice:LegionMale_2]] "Doing what? A week-long bender? I'm not surprised, based on the quantity he's buying."),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Annotation', "whispering in the end",
			'Character', "LegionMale_1",
			'Text', T(642145449886, --[[BanterDef CrossroadsCamp_GuardpostObjective_CardGames_Overheard Text section:Banters_General_GuardPostObjectives/CrossroadsCamp_GuardpostObjective_CardGames_Overheard whispering in the end voice:LegionMale_1]] "You're impossible. I mean they are using it for something else... Hey... Quiet. I think I heard something."),
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "CrossroadsCamp_GuardpostObjective_CardGames_Overheard",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(906228126218, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy Text]] "If someone built an <em>effigy</em> this close to <em>Camp Chien Sauvage</em>, it may lure some Legion soldiers out to investigate."),
			'Voiced', false,
			'FloatUp', true,
		}),
	},
	Once = true,
	group = "Banters_General_GuardPostObjectives",
	id = "RiverCamp_GuardpostObjective_BeastEffigy",
})

PlaceObj('BanterDef', {
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "LegionMale_1_Effigy",
			'Text', T(263451799901, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy_Legion Text section:Banters_General_GuardPostObjectives/RiverCamp_GuardpostObjective_BeastEffigy_Legion voice:LegionMale_1_Effigy]] "That's it, enough with this merde. That fucking Beast has crossed the line."),
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_2_Effigy",
			'Text', T(307630474903, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy_Legion Text section:Banters_General_GuardPostObjectives/RiverCamp_GuardpostObjective_BeastEffigy_Legion voice:LegionMale_2_Effigy]] "This is too far for the Beast to roam. Someone is just playing a sick joke... right?"),
		}),
		PlaceObj('BanterLine', {
			'Annotation', "sounds scared",
			'Character', "LegionMale_3_Effigy",
			'Text', T(307287329881, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy_Legion Text section:Banters_General_GuardPostObjectives/RiverCamp_GuardpostObjective_BeastEffigy_Legion sounds scared voice:LegionMale_3_Effigy]] "M-maybe it's gone already, eh? Do you think it's still around here, lurking in the shadows and... waiting for us?"),
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_1_Effigy",
			'Text', T(705351792501, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy_Legion Text section:Banters_General_GuardPostObjectives/RiverCamp_GuardpostObjective_BeastEffigy_Legion voice:LegionMale_1_Effigy]] "That's the whole point, man! Get your merde together!"),
		}),
		PlaceObj('BanterLine', {
			'Annotation', "scared",
			'Character', "LegionMale_3_Effigy",
			'Text', T(327002386709, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy_Legion Text section:Banters_General_GuardPostObjectives/RiverCamp_GuardpostObjective_BeastEffigy_Legion scared voice:LegionMale_3_Effigy]] "It's just that these effigies give me the goosebumps..."),
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionMale_1_Effigy",
			'Text', T(577665817114, --[[BanterDef RiverCamp_GuardpostObjective_BeastEffigy_Legion Text section:Banters_General_GuardPostObjectives/RiverCamp_GuardpostObjective_BeastEffigy_Legion voice:LegionMale_1_Effigy]] "I ain't afraid of no <em>Beast</em>!"),
		}),
	},
	Once = true,
	group = "Banters_General_GuardPostObjectives",
	id = "RiverCamp_GuardpostObjective_BeastEffigy_Legion",
})

PlaceObj('BanterDef', {
	Comment = "sat. map radio",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "LegionRaider",
			'Text', T(989386777119, --[[BanterDef SavannaCamp_GuardpostObjective_RadioSavannaFire Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioSavannaFire sat. map radio voice:LegionRaider radio]] "Goddammit, assholes, who set the fucking place on fire again? Joseph, how many times have I told you to be careful where you smoke your shit?!"),
			'useSnype', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionRaider",
			'Text', T(427497990126, --[[BanterDef SavannaCamp_GuardpostObjective_RadioSavannaFire Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioSavannaFire sat. map radio voice:LegionRaider radio]] "I don't need your excuses, just take some of your fuckers and go check it out."),
			'useSnype', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "Shadow",
			'Text', T(291857547855, --[[BanterDef SavannaCamp_GuardpostObjective_RadioSavannaFire Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioSavannaFire sat. map radio voice:Shadow radio]] "If a body meets a body coming through the grass... if a body killed a body, someone kicked his ass."),
			'Optional', true,
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "SavannaCamp_GuardpostObjective_RadioSavannaFire",
	isRadio = true,
})

PlaceObj('BanterDef', {
	Comment = "sat. map radio",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "LegionRaider",
			'Text', T(273084854258, --[[BanterDef SavannaCamp_GuardpostObjective_RadioWaterWell Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioWaterWell sat. map radio voice:LegionRaider radio]] "Okay, boss, we're at the well..."),
			'useSnype', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionRaider",
			'Text', T(141450682147, --[[BanterDef SavannaCamp_GuardpostObjective_RadioWaterWell Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioWaterWell sat. map radio voice:LegionRaider radio]] "...No, boss, we won't be smoking anything..."),
			'useSnype', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionRaider",
			'Text', T(454935056246, --[[BanterDef SavannaCamp_GuardpostObjective_RadioWaterWell Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioWaterWell sat. map radio voice:LegionRaider radio]] "Yes, boss, we'll just pump water and come right back."),
			'useSnype', true,
		}),
		PlaceObj('BanterLine', {
			'Annotation', "(lower voice)",
			'Character', "LegionRaider",
			'Text', T(407528140618, --[[BanterDef SavannaCamp_GuardpostObjective_RadioWaterWell Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_RadioWaterWell (lower voice) sat. map radio voice:LegionRaider radio]] "...Fucker."),
			'useSnype', true,
		}),
	},
	Once = true,
	group = "Banters_General_GuardPostObjectives",
	id = "SavannaCamp_GuardpostObjective_RadioWaterWell",
	isRadio = true,
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(988593627068, --[[BanterDef SavannaCamp_GuardpostObjective_WaterWell Text]] "There are muddy footsteps in the grass. Someone was carrying water last <em>evening</em> towards Camp Savane. Maybe someone could ambush them here next time?"),
			'Voiced', false,
			'FloatUp', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "SavannaCamp_GuardpostObjective_WaterWell",
})

PlaceObj('BanterDef', {
	Comment = "G6 Water Well banters",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "LegionSmoker2",
			'Text', T(856345771065, --[[BanterDef SavannaCamp_GuardpostObjective_WaterWell_Legion Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_WaterWell_Legion G6 Water Well banters voice:LegionSmoker2]] "Careful, you fucker, you got my smokes wet!"),
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionSmoker1",
			'Text', T(863767723247, --[[BanterDef SavannaCamp_GuardpostObjective_WaterWell_Legion Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_WaterWell_Legion G6 Water Well banters voice:LegionSmoker1]] "A bath will do you good, I can smell you from here. Now stop smoking and give me a hand."),
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "LegionSmoker2",
			'Text', T(760804519719, --[[BanterDef SavannaCamp_GuardpostObjective_WaterWell_Legion Text section:Banters_General_GuardPostObjectives/SavannaCamp_GuardpostObjective_WaterWell_Legion G6 Water Well banters voice:LegionSmoker2]] "I can't, I am allergic to water."),
			'playOnce', true,
		}),
	},
	group = "Banters_General_GuardPostObjectives",
	id = "SavannaCamp_GuardpostObjective_WaterWell_Legion",
})

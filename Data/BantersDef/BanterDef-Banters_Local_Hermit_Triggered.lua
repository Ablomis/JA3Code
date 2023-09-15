-- ========== GENERATED BY BanterDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('BanterDef', {
	Comment = "Mike is joyfully praising the good effects of natural drugs",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(450569102739, --[[BanterDef Hermit01_approach Text section:Banters_Local_Hermit_Triggered/Hermit01_approach Mike is joyfully praising the good effects of natural drugs voice:MikeDitch]] "...As you can see from the charts, living in harmony with nature and eating only healthy food like those tasty <em>mushrooms</em> you have just tried will increase your life expectancy by up to sixty-two percent!"),
			'playOnce', true,
		}),
	},
	conditions = {
		PlaceObj('CombatIsActive', {
			Negate = true,
		}),
	},
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit01_approach",
})

PlaceObj('BanterDef', {
	Comment = "Mike is preaching you",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(578325940035, --[[BanterDef Hermit03_approach Text section:Banters_Local_Hermit_Triggered/Hermit03_approach Mike is preaching you voice:MikeDitch]] "Now let us circle back to your life fulfillment goals. You need to go deeper and leave your comfort zone in order to synergize with nature, adopt the most useful mindset to achieve your goals and master your true self."),
		}),
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(202923315834, --[[BanterDef Hermit03_approach Text section:Banters_Local_Hermit_Triggered/Hermit03_approach Mike is preaching you voice:MikeDitch]] "And if you have the growing suspicion that all these buzzwords are just some bullshit that I pulled off to trick you into giving me money just because you are lonely or confused, then don't forget that anything can be a valuable learning opportunity!"),
		}),
	},
	conditions = {
		PlaceObj('CombatIsActive', {
			Negate = true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit03_approach",
})

PlaceObj('BanterDef', {
	Comment = "Mike is preaching you",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(317175395403, --[[BanterDef Hermit04_approach Text section:Banters_Local_Hermit_Triggered/Hermit04_approach Mike is preaching you voice:MikeDitch]] "As a life coach, my job is to challenge you to get specific on what you want for your future, set up your life goals, and develop the right strategies to achieve them. "),
		}),
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(958532652450, --[[BanterDef Hermit04_approach Text section:Banters_Local_Hermit_Triggered/Hermit04_approach Mike is preaching you voice:MikeDitch]] "That is because life makes perfect sense and you just need a stranger to explain it to you, and then tell you how to live it."),
		}),
	},
	conditions = {
		PlaceObj('CombatIsActive', {
			Negate = true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit04_approach",
})

PlaceObj('BanterDef', {
	Comment = "Mike is preaching you",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(500770346730, --[[BanterDef Hermit05_approach Text section:Banters_Local_Hermit_Triggered/Hermit05_approach Mike is preaching you voice:MikeDitch]] "With my help, you will find a greater sense of purpose and meaning. You just need to believe in yourself, and moreover, to invest in yourself - and what better investment than life coaching?"),
		}),
		PlaceObj('BanterLine', {
			'Character', "MikeDitch",
			'Text', T(572458007943, --[[BanterDef Hermit05_approach Text section:Banters_Local_Hermit_Triggered/Hermit05_approach Mike is preaching you voice:MikeDitch]] "The outcomes of coaching can be life-changing. Trust me and you will feel as successful and content as all of my past clients, such as <em>Mr. Pangloom</em> from Bien Chien who achieved inner peace and utmost fulfillment of his life goals."),
		}),
	},
	conditions = {
		PlaceObj('CombatIsActive', {
			Negate = true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit05_approach",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Butler",
			'Text', T(485989604595, --[[BanterDef Hermit_Butler01 Text section:Banters_Local_Hermit_Triggered/Hermit_Butler01 voice:Butler]] "I'm so glad that <em>Mr. Ditch</em> is still alive. Thank you once again for helping us find each other. We won't be alone anymore."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Hermit",
			Vars = set( "HermitReunionDone" ),
			__eval = function ()
				local quest = gv_Quests['Hermit'] or QuestGetState('Hermit')
				return quest.HermitReunionDone
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_Butler01",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Butler",
			'Text', T(907770301301, --[[BanterDef Hermit_Butler02 Text section:Banters_Local_Hermit_Triggered/Hermit_Butler02 voice:Butler]] "This shack requires a lot of repairs. <em>Mr. Ditch</em> is a genius when it comes to mushrooms and herbs, but he needs my help to live like a civilized person."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Hermit",
			Vars = set( "HermitReunionDone" ),
			__eval = function ()
				local quest = gv_Quests['Hermit'] or QuestGetState('Hermit')
				return quest.HermitReunionDone
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_Butler02",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "Butler",
			'Text', T(125732603002, --[[BanterDef Hermit_Butler03 Text section:Banters_Local_Hermit_Triggered/Hermit_Butler03 voice:Butler]] "Those bandits don't bother us much lately, not since we're together. I guess the rumor about the couple of evil old men has spread along the Adjani."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Hermit",
			Vars = set( "HermitReunionDone" ),
			__eval = function ()
				local quest = gv_Quests['Hermit'] or QuestGetState('Hermit')
				return quest.HermitReunionDone
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_Butler03",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(465732338724, --[[BanterDef Hermit_interactable_board_failure Text]] "<wisdom-f>\nIt is hard to determine what the chart is about."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Scully",
					'Text', T(851955627228, --[[BanterDef Hermit_interactable_board_failure Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_board_failure voice:Scully]] "I don't get this, mate. Seems like the chart shows \"fungible\" and \"non-fungible\" something, whatever the hell that is."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Hitman",
					'Text', T(110632334189, --[[BanterDef Hermit_interactable_board_failure Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_board_failure voice:Hitman]] "This makes about as much sense as selling sun block in a rainstorm."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Nails",
					'Text', T(314603246759, --[[BanterDef Hermit_interactable_board_failure Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_board_failure voice:Nails]] "Fungible? Non-fungible? That's some bullshit, I don't get it."),
				}),
			},
			'playOnce', true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_board_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(449694709063, --[[BanterDef Hermit_interactable_board_success Text]] "<wisdom-s>\nThe data points on the chart seem to actually represent body count."),
			'Voiced', false,
			'FloatUp', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Buns",
					'Text', T(378613524076, --[[BanterDef Hermit_interactable_board_success Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_board_success voice:Buns]] 'I am rather convinced that the "fungible" data points show how many he has poisoned, and the "non-fungible" must be those who were not susceptible to food poisoning.'),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Livewire",
					'Text', T(440974790206, --[[BanterDef Hermit_interactable_board_success Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_board_success voice:Livewire]] 'See, the "fungible" chart represents those who he poisoned with mushrooms, and the "non-fungible" ones are probably those who just got the axe.'),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Gus",
					'Text', T(759759775856, --[[BanterDef Hermit_interactable_board_success Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_board_success voice:Gus]] "This guy's got some guts, Woody - he's been showing off how many jerks he's poisoned right in front of the ones he's about to poison! Dang!"),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_board_success",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(761268092716, --[[BanterDef Hermit_interactable_bodies Text]] "Dead bodies of several Legion soldiers. Most of them have no visible injuries, but there is one with his head bashed in."),
			'Voiced', false,
			'FloatUp', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Nails",
					'Text', T(683258582857, --[[BanterDef Hermit_interactable_bodies Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_bodies voice:Nails]] "This is what happens when you don't eat your 'shrooms!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Meltdown",
					'Text', T(711105327626, --[[BanterDef Hermit_interactable_bodies Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_bodies voice:Meltdown]] "Someone didn't eat their mushrooms and got the axe."),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "Livewire",
			'Text', T(167124210702, --[[BanterDef Hermit_interactable_bodies Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_bodies voice:Livewire]] "I can count at least five fungibles and just one non-fungible."),
			'Optional', true,
			'playOnce', true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_bodies",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(682200466021, --[[BanterDef Hermit_interactable_herbs_failure Text]] "<wisdom-f>\nSome of the herbs have healing properties while others are poisonous. Trial and error is not a wise way to find out which is which."),
			'Voiced', false,
			'FloatUp', true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_herbs_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(585677864186, --[[BanterDef Hermit_interactable_herbs_success Text]] "<wisdom-s>\nSome of the herbs have healing properties while others are poisonous. It is important to know which is which."),
			'Voiced', false,
			'FloatUp', true,
			'playOnce', true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_herbs_success",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(392123824323, --[[BanterDef Hermit_interactable_mandalas Text]] "Mandalas are key to achieving inner peace, especially when your job is to life coach people you have just poisoned to death."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'Character', "Thor",
			'Text', T(373218681139, --[[BanterDef Hermit_interactable_mandalas Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_mandalas voice:Thor]] "The positive vibes of the mandalas make me feel like I can improve other people's lives."),
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "DrQ",
					'Text', T(506805415170, --[[BanterDef Hermit_interactable_mandalas Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_mandalas voice:DrQ]] "Interesting designs. There is a sense of harmony with nature here."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Kalyna",
					'Text', T(252513185703, --[[BanterDef Hermit_interactable_mandalas Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_mandalas voice:Kalyna]] "Pretty! I wonder if they are magical?"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Scope",
					'Text', T(616367277817, --[[BanterDef Hermit_interactable_mandalas Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_mandalas voice:Scope]] "I had a carpet with this same design until my youngest spilled juice all over it."),
				}),
			},
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_mandalas",
})

PlaceObj('BanterDef', {
	Lines = {
		PlaceObj('BanterLine', {
			'Text', T(930368386032, --[[BanterDef Hermit_interactable_stump Text]] "There is blood on the axe, but not on the stump."),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Raider",
					'Text', T(710458302906, --[[BanterDef Hermit_interactable_stump Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_stump voice:Raider]] "This axe was used somewhere else, and then just placed back on the stump."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Livewire",
					'Text', T(869022263071, --[[BanterDef Hermit_interactable_stump Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_stump voice:Livewire]] "Someone was life coached with this axe."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Meltdown",
					'Text', T(593295009459, --[[BanterDef Hermit_interactable_stump Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_stump voice:Meltdown]] "Life coach with an axe - that's what I'm talking about!"),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Fox",
					'Text', T(280966136128, --[[BanterDef Hermit_interactable_stump Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_stump voice:Fox]] "Someone must have refused to eat the mushrooms."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Blood",
					'Text', T(132632385802, --[[BanterDef Hermit_interactable_stump Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_stump voice:Blood]] "That's what you get when you don't eat your mushrooms."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Raven",
					'Text', T(924168732430, --[[BanterDef Hermit_interactable_stump Text section:Banters_Local_Hermit_Triggered/Hermit_interactable_stump voice:Raven]] "Looks like sometimes life coaching teaches some hard lessons."),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Hermit_Triggered",
	id = "Hermit_interactable_stump",
})


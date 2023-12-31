-- ========== GENERATED BY Conversation Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('Conversation', {
	AssignToGroup = "Luigi",
	Comment = "in prison",
	Conditions = {
		PlaceObj('PlayerIsInSectors', {
			Sectors = {
				"L6_Underground",
			},
		}),
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Luigi",
			Vars = set( "LuigiCellUnlocked" ),
			__eval = function ()
				local quest = gv_Quests['Luigi'] or QuestGetState('Luigi')
				return quest.LuigiCellUnlocked
			end,
		}),
	},
	DefaultActor = "Luigi",
	disabledInConflict = true,
	group = "Jungle",
	id = "Luigi_1",
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Comment = "guards not killed >> prison riot",
		Keyword = "Greeting",
		KeywordT = T(774381032385, --[[Conversation Luigi_1 KeywordT]] "Greeting"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(890810527098, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Greeting2]] "Splendido! Now, how many kisses do I owe each one of you beautiful people for springing me?"),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(603141050096, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Greeting2]] "I could kiss them for you, Boss."),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(421065993251, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Greeting2]] "It, uh... doesn't work that way, Joseph."),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(199353747182, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Greeting2]] "Oh... Should I take out the <em>Thing</em>, Boss?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(528278114316, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Greeting2]] "Not yet. Just wait a bit, bambino."),
			}),
		},
		id = "Greeting2",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Luigi_1",
				PhraseId = "Isitadishthatisbestservedcold",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Luigi_1",
				PhraseId = "Whyareyouinhere",
			}),
		},
		Keyword = "Who are you?",
		KeywordT = T(860517763452, --[[Conversation Luigi_1 KeywordT]] "Who are you?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(706570297143, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Who are you?]] "Just call me Luigi. I'm a simple Italian cook! Right, Joseph?"),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(363787273364, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Who are you?]] "You mean when you killed a guy with a spoon?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(967304349720, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Who are you?]] "Err... Hehe. Well, you can't make pasta without breaking some heads, right?"),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(390375804089, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Who are you?]] "If you say so, Boss."),
			}),
			PlaceObj('ConversationLine', {
				Annotation = "Friendly tone that turns dark, menacing at end",
				Character = "Luigi",
				Text = T(558526519297, --[[Conversation Luigi_1 Text Friendly tone that turns dark, menacing at end voice:Luigi section:Luigi_1 keyword:Who are you?]] "Anyway, thanks for getting me out of that cell, ragazzi. Now, I have some business to attend to... I've got to serve a dish to someone special."),
			}),
		},
		id = "Whoareyou",
	}),
	PlaceObj('ConversationPhrase', {
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				HasStat = "Wisdom",
				StatValue = 85,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiPlans",
				QuestId = "Luigi",
			}),
		},
		Enabled = false,
		Keyword = "Is it a dish that is best served cold?",
		KeywordT = T(888140285701, --[[Conversation Luigi_1 KeywordT]] "Is it a dish that is best served cold?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(372182770110, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Is it a dish that is best served cold?]] "You seem to know something about cooking, eh, ragazzi? Oh, yes, I mean to serve some cold, cold dishes on a plate that is six feet deep."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Gus",
								Text = T(616435328566, --[[Conversation Luigi_1 Text voice:Gus section:Luigi_1 keyword:Is it a dish that is best served cold?]] "Sounds like you got a score to settle, Woodburn."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "DrQ",
								Text = T(930025629503, --[[Conversation Luigi_1 Text voice:DrQ section:Luigi_1 keyword:Is it a dish that is best served cold?]] "The nutritional value of revenge is quite low. In fact, it's more like poison, one that only acts on the cook's soul."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Thor",
								Text = T(840261811479, --[[Conversation Luigi_1 Text voice:Thor section:Luigi_1 keyword:Is it a dish that is best served cold?]] "Seeking vengeance will only twist your soul into a knot and cause a lot of bloating and constipation."),
							}),
						},
					}),
				},
			}),
		},
		id = "Isitadishthatisbestservedcold",
	}),
	PlaceObj('ConversationPhrase', {
		Enabled = false,
		Keyword = "Why are you in here?",
		KeywordT = T(881927789376, --[[Conversation Luigi_1 KeywordT]] "Why are you in here?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(950955836148, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Why are you in here?]] "I'm doing a favor for someone very special to me. I'm innocent, but I'm loyal, capiche?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Shadow",
								Text = T(611023643704, --[[Conversation Luigi_1 Text voice:Shadow section:Luigi_1 keyword:Why are you in here?]] "Taking the rap for someone in a place like this? That's one hell of a favor."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raider",
								Text = T(334959751850, --[[Conversation Luigi_1 Text voice:Raider section:Luigi_1 keyword:Why are you in here?]] "Oh, I capiche all right. You take the rap here, while someone else takes the rap for you somewhere else. I've seen it a hundred times."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Flay",
								Text = T(845038069028, --[[Conversation Luigi_1 Text voice:Flay section:Luigi_1 keyword:Why are you in here?]] "Loyalty is for defenseless herd animals."),
							}),
						},
					}),
				},
			}),
		},
		id = "Whyareyouinhere",
	}),
	PlaceObj('ConversationPhrase', {
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiMentionBoss",
				QuestId = "Luigi",
			}),
		},
		Keyword = "What are you planning to do now?",
		KeywordT = T(319913500198, --[[Conversation Luigi_1 KeywordT]] "What are you planning to do now?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(381534919581, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What are you planning to do now?]] "I'm gonna walk around. I'm gonna breathe free air. I'm gonna go see... an old friend."),
			}),
			PlaceObj('ConversationLine', {
				Character = "PrisonerJoseph",
				Text = T(570748167629, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:What are you planning to do now?]] "<em>Boss Blaubert</em> is our friend now?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(897874760921, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What are you planning to do now?]] "He's more than a friend, he's family."),
			}),
			PlaceObj('ConversationLine', {
				Character = "PrisonerJoseph",
				Text = T(817350809318, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:What are you planning to do now?]] "Oh... Like that guy you told me to drop the <em>Thing</em> on, your cousin Mario?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(945591608490, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What are you planning to do now?]] "Shush, bambino. What happens in the family, stays in the family."),
			}),
		},
		id = "Whatareyourplanswhenyougetoutofprison",
	}),
	PlaceObj('ConversationPhrase', {
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Luigi_1",
				PhraseId = "HelpUsTakeThePrison",
			}),
		},
		Keyword = "What is the Thing?",
		KeywordT = T(283346290226, --[[Conversation Luigi_1 KeywordT]] "What is the Thing?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(257725710900, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What is the Thing?]] "It's just a <em>Thing</em> that Joseph made in the prison workshop. He made it as a form of, uh... artistic expression, capiche?"),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(991613097412, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:What is the Thing?]] "I did a good <em>Thing</em>."),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(911409562619, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What is the Thing?]] "You sure did, bambino! The guard in the workshop didn't like it at first, but he soon got into the swing of things and liked it so much he let Joseph take it back to his cell."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raven",
								Text = T(444891717579, --[[Conversation Luigi_1 Text voice:Raven section:Luigi_1 keyword:What is the Thing?]] "Oh, I get it. It's a weapon. You criminals can't ever stop speaking in code, can you?"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Nails",
								Text = T(354660624905, --[[Conversation Luigi_1 Text voice:Nails section:Luigi_1 keyword:What is the Thing?]] "So you made the Grand Daddy of all shivs. Big fuckin' deal."),
							}),
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(472958269561, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What is the Thing?]] "Everybody's a critic."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Hitman",
								Text = T(551795406711, --[[Conversation Luigi_1 Text voice:Hitman section:Luigi_1 keyword:What is the Thing?]] "Sometimes you need to be beat over the head with art before you can understand it."),
							}),
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(791651059102, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:What is the Thing?]] "That is beautiful! I'm gonna put those words on a plaque and mount it over my fireplace."),
							}),
						},
					}),
				},
			}),
		},
		id = "WhatistheThing",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "Smiley",
				Vars = set( "BossDead" ),
				__eval = function ()
					local quest = gv_Quests['Smiley'] or QuestGetState('Smiley')
					return quest.BossDead
				end,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "Luigi",
				Vars = set( "LuigiMentionBoss" ),
				__eval = function ()
					local quest = gv_Quests['Luigi'] or QuestGetState('Luigi')
					return quest.LuigiMentionBoss
				end,
			}),
		},
		GoTo = "LeaveRedirect",
		Keyword = "We killed Boss Blaubert",
		KeywordT = T(862788814726, --[[Conversation Luigi_1 KeywordT]] "We killed Boss Blaubert"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(782358031501, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:We killed Boss Blaubert]] "You... killed him? You killed Boss Blaubert? Huh... Well, that is some real good news, ragazzi. You spared me a whole lot of cooking, eh? How did he die? I hope he didn't suffer much. He was a good man, all things considered."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raven",
								Text = T(761839208204, --[[Conversation Luigi_1 Text voice:Raven section:Luigi_1 keyword:We killed Boss Blaubert]] "He was a crime boss and he paid for it with his life. That's what crime gets you."),
							}),
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(874998265979, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:We killed Boss Blaubert]] "Easy there, pretty lady. You're starting to scare me."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Reaper",
								Text = T(796826122212, --[[Conversation Luigi_1 Text voice:Reaper section:Luigi_1 keyword:We killed Boss Blaubert]] "He died the way all mortal creatures do. His final breath of life was agony, his first breath of death was of an ecstasy unknowable to living creatures."),
							}),
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(419745839805, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:We killed Boss Blaubert]] "Riiiiight... Hey, do me a favor and let me know the next time you're gonna say something so I can be somewhere else."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(894011081833, --[[Conversation Luigi_1 Text voice:Fidel section:Luigi_1 keyword:We killed Boss Blaubert]] "Fidel will show you how he died. I drew pictures. Come, look. Mira."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(227040235377, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:We killed Boss Blaubert]] "Poor Boss Blaubert. He was good to me."),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(486975348802, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:We killed Boss Blaubert]] "Well, anyway, I guess I should be making my way back to <em>Rimville</em> to get all his affairs in order. Come visit me when you get the chance! I'll give you some warm Italian hospitality. And, uh, don't worry... I don't mean the kind that involves cement boots."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Ice",
								Text = T(962299629507, --[[Conversation Luigi_1 Text voice:Ice section:Luigi_1 keyword:We killed Boss Blaubert]] "Sure, just don't be busting out no mattresses, neither."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Blood",
								Text = T(354286161786, --[[Conversation Luigi_1 Text voice:Blood section:Luigi_1 keyword:We killed Boss Blaubert]] "Oh, my mouth is already watering for some home-cooked Italian food!"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Tex",
								Text = T(673489126360, --[[Conversation Luigi_1 Text voice:Tex section:Luigi_1 keyword:We killed Boss Blaubert]] "Glad to hear that! Cement boots no good for riding horse."),
							}),
						},
					}),
				},
			}),
		},
		PlayGoToPhrase = true,
		StoryBranchIcon = "conversation_arrow",
		id = "WekilledBossBlaubert",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Comment = "have quest, Boss alive",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "Luigi",
				Vars = set( "Given" ),
				__eval = function ()
					local quest = gv_Quests['Luigi'] or QuestGetState('Luigi')
					return quest.Given
				end,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "Smiley",
				Vars = set({
	BossDead = false,
}),
				__eval = function ()
					local quest = gv_Quests['Smiley'] or QuestGetState('Smiley')
					return not quest.BossDead
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiMentionBoss",
				QuestId = "Luigi",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Luigi_1",
				PhraseId = "YoureComingWithUs",
			}),
		},
		Keyword = "Boss Blaubert sent us",
		KeywordT = T(810208157172, --[[Conversation Luigi_1 KeywordT]] "Boss Blaubert sent us"),
		Lines = {
			PlaceObj('ConversationLine', {
				Annotation = '"take care of" = mafia expression meaning "to kill"',
				Character = "Luigi",
				Text = T(978603263579, --[[Conversation Luigi_1 Text "take care of" = mafia expression meaning "to kill" voice:Luigi section:Luigi_1 keyword:Boss Blaubert sent us]] "The Boss sent you to take care of me, eh? Well, well... You see, Joseph? He remembers his favorite cook after all!"),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(873262369256, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Boss Blaubert sent us]] "The Boss doesn't forget, Boss."),
			}),
			PlaceObj('ConversationLine', {
				Annotation = "",
				Character = "Luigi",
				Text = T(994045264753, --[[Conversation Luigi_1 Text  voice:Luigi section:Luigi_1 keyword:Boss Blaubert sent us]] "And here I thought the old man was going soft. Alright, ragaz-... mercenaries. If you're gonna take care of me, why don't you just do it already, eh?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Nails",
								Text = T(124662010349, --[[Conversation Luigi_1 Text voice:Nails section:Luigi_1 keyword:Boss Blaubert sent us]] "I've been asking myself the same question."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Annotation = 'This character is not familiar with "take care of" mob expression',
								Character = "Barry",
								Text = T(592888474914, --[[Conversation Luigi_1 Text This character is not familiar with "take care of" mob expression voice:Barry section:Luigi_1 keyword:Boss Blaubert sent us]] "I am thinking perhaps my understanding of this expression is not of adequacy. Is rescuing someone not taking care of them?"),
							}),
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(677865385129, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Boss Blaubert sent us]] "What, are you from another planet?"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Annotation = 'This character is not familiar with "take care of" mob expression',
								Character = "Fauda",
								Text = T(639251965999, --[[Conversation Luigi_1 Text This character is not familiar with "take care of" mob expression voice:Fauda section:Luigi_1 keyword:Boss Blaubert sent us]] "We have freed you... is this not taking care of you? Do you require us to feed and clothe you as well?"),
							}),
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(988217857983, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Boss Blaubert sent us]] "Are you for real? You don't know what I'm talking about? Have you been living in the desert your whole life?"),
							}),
							PlaceObj('ConversationLine', {
								Character = "Fauda",
								Text = T(757873181717, --[[Conversation Luigi_1 Text voice:Fauda section:Luigi_1 keyword:Boss Blaubert sent us]] "Very near to it, yes."),
							}),
						},
					}),
				},
			}),
		},
		StoryBranchIcon = "conversation_arrow",
		id = "BossBlaubertsendsus",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Enabled = false,
		GoTo = "LeaveRedirect",
		Keyword = "Blaubert wants to see you",
		KeywordT = T(528440636270, --[[Conversation Luigi_1 KeywordT]] "Blaubert wants to see you"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(186769145909, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Blaubert wants to see you]] "What? He sent you down here just to free me? Huh... Oh, I get it. I see his play here. He thinks I'm gonna walk back to him all innocent and grateful and apologetic and crap."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Shadow",
								Text = T(931665469111, --[[Conversation Luigi_1 Text voice:Shadow section:Luigi_1 keyword:Blaubert wants to see you]] "If you want to surprise him, that's a great way to sneak in through the front door."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Magic",
								Text = T(703208201462, --[[Conversation Luigi_1 Text voice:Magic section:Luigi_1 keyword:Blaubert wants to see you]] "You show him what he expects to see, he's got no chance to see anything else."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Mouse",
								Text = T(871776281999, --[[Conversation Luigi_1 Text voice:Mouse section:Luigi_1 keyword:Blaubert wants to see you]] "I know a mime trick you could use to make it look like you're crying!"),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(183007929932, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Blaubert wants to see you]] "Yeah... Alright, I guess that works for me just fine. Once me and Joseph get past whichever guards you haven't iced yet, we'll be on our way back to <em>Rimville</em>. Right, Joseph?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "PrisonerJoseph",
				Text = T(361429697522, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Blaubert wants to see you]] "Whatever you say, Boss."),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(639273577783, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Blaubert wants to see you]] "You see? Don't you worry, ragazzi. I won't start anything without you. I'd like you to watch me and Boss Blaubert resolve our, uh... differences of opinion on certain matters. Who knows, you might even take my side, eh?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raven",
								Text = T(166760082108, --[[Conversation Luigi_1 Text voice:Raven section:Luigi_1 keyword:Blaubert wants to see you]] "I wouldn't hold my breath if I were you."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Scully",
								Text = T(161649148798, --[[Conversation Luigi_1 Text voice:Scully section:Luigi_1 keyword:Blaubert wants to see you]] "Not likely, mate. I don't like to get involved in other people's family drama. I got enough of my own."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Len",
								Text = T(180313134397, --[[Conversation Luigi_1 Text voice:Len section:Luigi_1 keyword:Blaubert wants to see you]] "If it suits our objectives... we'll consider it."),
							}),
						},
					}),
				},
			}),
		},
		PlayGoToPhrase = true,
		StoryBranchIcon = "conversation_threaten",
		id = "YoureComingWithUs",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Luigi_1",
				PhraseId = "HelpUsTakeThePrison",
			}),
		},
		Enabled = false,
		Keyword = "LeaveRedirect",
		KeywordT = T(383640198840, --[[Conversation Luigi_1 KeywordT]] "LeaveRedirect"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(877356762448, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:LeaveRedirect]] "Alright, we're ready. Before we go, you want that we should help you take out the rest of the prison guards? Me and Joseph, we got a <em>Thing</em> or two to tell 'em."),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(360525455200, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:LeaveRedirect]] "We sure do, Boss, starting with this <em>Thing</em> right here."),
			}),
		},
		id = "LeaveRedirect",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Comment = "Start combat",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				Condition = "or",
				QuestId = "Luigi",
				Vars = set( "LuigiMentionBoss" ),
				__eval = function ()
					local quest = gv_Quests['Luigi'] or QuestGetState('Luigi')
					return quest.LuigiMentionBoss
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiCombat",
				QuestId = "Luigi",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "You aren't going anywhere",
		KeywordT = T(618257399617, --[[Conversation Luigi_1 KeywordT]] "You aren't going anywhere"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(674693904528, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:You aren't going anywhere]] "Good boys stay where they're told to stay, bad boys go wherever they want. Isn't that right, Joseph?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "PrisonerJoseph",
				Text = T(822374022776, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:You aren't going anywhere]] "I... I kinda like it here, Boss. So... does that make me a good boy?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(908153143040, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:You aren't going anywhere]] "You're the best boy, bambino! Don't worry about it. Now, be a good boy and get the <em>Thing</em> ready."),
			}),
			PlaceObj('ConversationLine', {
				Character = "PrisonerJoseph",
				Text = T(636708819797, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:You aren't going anywhere]] "Okay, boss."),
			}),
		},
		StoryBranchIcon = "conversation_attack",
		id = "Youllstayinprison",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "Luigi",
				Vars = set({
	Given = false,
}),
				__eval = function ()
					local quest = gv_Quests['Luigi'] or QuestGetState('Luigi')
					return not quest.Given
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiSaved",
				QuestId = "Luigi",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "You may go",
		KeywordT = T(725537503858, --[[Conversation Luigi_1 KeywordT]] "You may go"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(410118351612, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:You may go]] "Gonna be forever grateful and so on. See you in <em>Rimville</em>, ragazzi! Ciao!"),
			}),
		},
		StoryBranchIcon = "conversation_goodbye",
		id = "Goodbye",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Comment = "Leave",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "Luigi",
				Vars = set( "Given" ),
				__eval = function ()
					local quest = gv_Quests['Luigi'] or QuestGetState('Luigi')
					return quest.Given
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiSaved",
				QuestId = "Luigi",
			}),
			PlaceObj('CityGrantLoyalty', {
				Amount = 10,
				City = "Fleatown",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "We’ll meet you in Rimville",
		KeywordT = T(370355841095, --[[Conversation Luigi_1 KeywordT]] "We’ll meet you in Rimville"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(679484613579, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:We’ll meet you in Rimville]] "You know what? I really hope you do. Maybe you'll see how a real Boss operates, especially one that knows how to reward loyalty. Come on, Joseph, let's go gather the ragazzi! We're leaving this good place."),
			}),
			PlaceObj('ConversationLine', {
				Annotation = "in a dramatic tone",
				Character = "PrisonerJoseph",
				Text = T(346170405011, --[[Conversation Luigi_1 Text in a dramatic tone voice:PrisonerJoseph section:Luigi_1 keyword:We’ll meet you in Rimville]] "Okay. I'm glad we can take our new prison friends with us, Boss."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Conditions = {
							PlaceObj('QuestIsVariableBool', {
								QuestId = "Smiley",
								Vars = set({
	BossDead = false,
}),
								__eval = function ()
									local quest = gv_Quests['Smiley'] or QuestGetState('Smiley')
									return not quest.BossDead
								end,
							}),
						},
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Luigi",
								Text = T(291368908999, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:We’ll meet you in Rimville]] "Me, too. I think they'll like <em>Rimville</em>... and I can't wait for <em>Boss Blaubert</em> to meet them. Hehehe."),
							}),
						},
					}),
				},
			}),
		},
		StoryBranchIcon = "conversation_goodbye",
		id = "WellMeetYouInRimville",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				HasStat = "Leadership",
				StatValue = 40,
			}),
			PlaceObj('SectorCheckOwner', {
				Negate = true,
				sector_id = "L6",
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LuigiSaved",
				QuestId = "Luigi",
			}),
			PlaceObj('QuestSetVariableNum', {
				Amount = 4,
				Prop = "PrisonersReleased",
				QuestId = "TheGoodPlace",
				RandomRangeMax = 6,
			}),
		},
		Enabled = false,
		GoTo = "<end conversation>",
		Keyword = "Help us take the prison",
		KeywordT = T(643120129313, --[[Conversation Luigi_1 KeywordT]] "Help us take the prison"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(642865466618, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Help us take the prison]] "Hey, it's the least we can do for our new friends. Once we're finished with the guards, Joseph and me will head back to <em>Rimville</em> and get prepared. Next time you visit, you'll see how a real Boss should operate."),
			}),
			PlaceObj('ConversationLine', {
				AlwaysInterject = true,
				Character = "PrisonerJoseph",
				Text = T(266879909363, --[[Conversation Luigi_1 Text voice:PrisonerJoseph section:Luigi_1 keyword:Help us take the prison]] "Hey, Boss, you want I should get our prison friends to help?"),
			}),
			PlaceObj('ConversationLine', {
				Character = "Luigi",
				Text = T(176215508191, --[[Conversation Luigi_1 Text voice:Luigi section:Luigi_1 keyword:Help us take the prison]] "Joseph, bambino! Look at you thinking with more than just your <em>Thing</em>. Yeah, go get the boys. Tell them it's payback time."),
			}),
		},
		StoryBranchIcon = "conversation_goodbye",
		id = "HelpUsTakeThePrison",
	}),
})


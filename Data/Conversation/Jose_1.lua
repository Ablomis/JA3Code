-- ========== GENERATED BY Conversation Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('Conversation', {
	AssignToGroup = "LegionRaider_Jose",
	Comment = "(Bastien) - initial",
	Conditions = {
		PlaceObj('PlayerIsInSectors', {
			Sectors = {
				"I1",
			},
		}),
	},
	DefaultActor = "LegionRaider_Jose",
	Parameters = {
		PlaceObj('PresetParamNumber', {
			'Name', "DiamondsGain",
			'Value', 3,
			'Tag', "<DiamondsGain>",
		}),
	},
	group = "Ernie",
	id = "Jose_1",
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "BastienMet",
				QuestId = "JoseFamily",
			}),
		},
		GiveQuests = {
			"JoseFamily",
		},
		Keyword = "Greeting",
		KeywordT = T(774381032385, --[[Conversation Jose_1 KeywordT]] "Greeting"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(177981455531, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Greeting]] "Oh la la! Don't shoot! I'm just a bystander here. An innocent civilian! I heard some shots fired up the hill. I came to take a look and I saw the <em>Legion</em> getting their asses kicked."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raven",
								Text = T(934603064041, --[[Conversation Jose_1 Text voice:Raven section:Jose_1 keyword:Greeting]] "Exactly what an innocent civilian would do."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Omryn",
								Text = T(981381740319, --[[Conversation Jose_1 Text voice:Omryn section:Jose_1 keyword:Greeting]] "Makes sense to me. Better to watch a fight than be in one."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Livewire",
								Text = T(564648221278, --[[Conversation Jose_1 Text voice:Livewire section:Jose_1 keyword:Greeting]] "I want you to know that I completely believe you, but I really don't think anyone else does."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(214036121306, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Greeting]] "But I'm not with them! I was just... umm... doing a bit of scavenging on the beach. Yeah, that's how I provide for my <em>family</em>!"),
			}),
		},
		NoBackOption = true,
		id = "Greeting",
		PlaceObj('ConversationPhrase', {
			Align = "right",
			AutoRemove = true,
			GoTo = "<root>",
			Keyword = "Don't worry",
			KeywordT = T(148546070726, --[[Conversation Jose_1 KeywordT]] "Don't worry"),
			Lines = {
				PlaceObj('ConversationInterjectionList', {
					Interjections = {
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Raven",
									Text = T(635727490710, --[[Conversation Jose_1 Text voice:Raven section:Jose_1 keyword:Don't worry]] "Take it easy, mister. We don't shoot civilians... generally."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Buns",
									Text = T(126318722694, --[[Conversation Jose_1 Text voice:Buns section:Jose_1 keyword:Don't worry]] "That's all right, dear. We don't shoot civilians... generally."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "MD",
									Text = T(774211252033, --[[Conversation Jose_1 Text voice:MD section:Jose_1 keyword:Don't worry]] "Oh, we don't shoot civilians! I mean, sometimes we do. I do. By accident, though. Not on purpose."),
								}),
							},
						}),
					},
				}),
				PlaceObj('ConversationLine', {
					Character = "LegionRaider_Jose",
					Text = T(720507828662, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Don't worry]] "Oh, thank you! Maybe you just let me go on my way now, eh?"),
				}),
			},
			StoryBranchIcon = "conversation_friendly",
			id = "Friendly",
		}),
		PlaceObj('ConversationPhrase', {
			Align = "right",
			AutoRemove = true,
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "UnderSuspicion",
					QuestId = "JoseFamily",
				}),
			},
			GoTo = "<root>",
			Keyword = "Civilian? Oh really?",
			KeywordT = T(240336019316, --[[Conversation Jose_1 KeywordT]] "Civilian? Oh really?"),
			Lines = {
				PlaceObj('ConversationInterjectionList', {
					Interjections = {
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Meltdown",
									Text = T(227943237719, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:Civilian? Oh really?]] "Yeah, and I'm the fucking tooth fairy."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Raider",
									Text = T(294244076370, --[[Conversation Jose_1 Text voice:Raider section:Jose_1 keyword:Civilian? Oh really?]] "A well armed civilian, I see."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Grizzly",
									Text = T(588034929881, --[[Conversation Jose_1 Text voice:Grizzly section:Jose_1 keyword:Civilian? Oh really?]] "That gun just for shooting squirrels then?"),
								}),
							},
						}),
					},
				}),
				PlaceObj('ConversationLine', {
					Character = "LegionRaider_Jose",
					Text = T(755919150765, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Civilian? Oh really?]] "Oh, you mean this gun here? It's just, eh, heh-heh... iiiit's just for protection, boss. These are dangerous times on the island."),
				}),
			},
			StoryBranchIcon = "conversation_sarcastic",
			id = "Sarcastic",
		}),
		PlaceObj('ConversationPhrase', {
			Align = "right",
			AutoRemove = true,
			Comment = "Gain variable: Scared",
			Conditions = {
				PlaceObj('UnitSquadHasMerc', {
					HasPerk = "Psycho",
				}),
			},
			Effects = {
				PlaceObj('QuestSetVariableBool', {
					Prop = "Scared",
					QuestId = "JoseFamily",
				}),
			},
			GoTo = "<root>",
			Keyword = "Why not just shoot you",
			KeywordT = T(534366002207, --[[Conversation Jose_1 KeywordT]] "Why not just shoot you"),
			Lines = {
				PlaceObj('ConversationInterjectionList', {
					Interjections = {
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Fidel",
									Text = T(594818594730, --[[Conversation Jose_1 Text voice:Fidel section:Jose_1 keyword:Why not just shoot you]] "One thing Fidel always say: no such thing as innocent bystander. When shooting start, you run and hide or stay and shoot."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Meltdown",
									Text = T(112995705878, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:Why not just shoot you]] "Don't bullshit me, boy. I shot the kneecaps off the last dumbass who tried that."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Nails",
									Text = T(631597366042, --[[Conversation Jose_1 Text voice:Nails section:Jose_1 keyword:Why not just shoot you]] "Innocent bystanders are just people who haven't gotten a chance to shoot at me yet."),
								}),
							},
						}),
					},
				}),
				PlaceObj('ConversationLine', {
					Character = "LegionRaider_Jose",
					Text = T(837926788822, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Why not just shoot you]] "Please, boss, I... I don't want any trouble! I have a <em>family</em>. You won't snuff out a family man, right?"),
				}),
				PlaceObj('ConversationInterjectionList', {
					Interjections = {
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Fidel",
									Text = T(301882344056, --[[Conversation Jose_1 Text voice:Fidel section:Jose_1 keyword:Why not just shoot you]] "This is good point. I like it better when family is here to watch."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Meltdown",
									Text = T(717490531891, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:Why not just shoot you]] "Depends on how cranky I am. And just so you know, I ain't pooped yet today."),
								}),
							},
						}),
						PlaceObj('ConversationInterjection', {
							Lines = {
								PlaceObj('ConversationLine', {
									Character = "Nails",
									Text = T(197496099895, --[[Conversation Jose_1 Text voice:Nails section:Jose_1 keyword:Why not just shoot you]] "Hell, everybody's got a family. That don't bother me one bit."),
								}),
							},
						}),
					},
				}),
			},
			StoryBranchIcon = "conversation_threaten",
			id = "Psycho",
		}),
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Effects = {
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				PhraseId = "WhatDoYouKnowAboutEmma",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				PhraseId = "YourewiththeLegion",
			}),
		},
		Keyword = 'Tell us about that "Legion"',
		KeywordT = T(428534945433, --[[Conversation Jose_1 KeywordT]] 'Tell us about that "Legion"'),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(964208183887, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Tell us about that "Legion"]] "Well, that's the Patriotic Legion of Grand Chien! Quite a gang, they are. I think some of them were trying to snatch that <em>Emma</em> girl, the President's daughter, but I guess it didn't work out."),
			}),
		},
		id = "Legion",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "MentionedMajor",
				QuestId = "JoseFamily",
			}),
		},
		Enabled = false,
		Keyword = "What do you know about Emma?",
		KeywordT = T(323700809045, --[[Conversation Jose_1 KeywordT]] "What do you know about Emma?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(140695646710, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:What do you know about Emma?]] "Don't know nothing, boss! I've just heard that the <em>Major</em> wants the girl. I guess he wishes to complete the set with her <em>father</em>, he-he."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Ice",
								Text = T(206424046193, --[[Conversation Jose_1 Text voice:Ice section:Jose_1 keyword:What do you know about Emma?]] "That dude got kidnapped and that's his daughter you're talkin' about. Put some respect in your mouth."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raven",
								Text = T(865713424221, --[[Conversation Jose_1 Text voice:Raven section:Jose_1 keyword:What do you know about Emma?]] "I can tell how upset you are about it."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Barry",
								Text = T(628310807167, --[[Conversation Jose_1 Text voice:Barry section:Jose_1 keyword:What do you know about Emma?]] "What is wrong with you? Where is your compassion?"),
							}),
							PlaceObj('ConversationLine', {
								Character = "LegionRaider_Jose",
								Text = T(861880871058, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:What do you know about Emma?]] "Oh, sorry, boss. I guess I dropped it."),
							}),
						},
					}),
				},
			}),
		},
		id = "WhatDoYouKnowAboutEmma",
	}),
	PlaceObj('ConversationPhrase', {
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					MentionedMajor = true,
					UnderSuspicion = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.MentionedMajor and not quest.UnderSuspicion
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LeadMajor",
				QuestId = "JoseFamily",
			}),
			PlaceObj('PhraseSetSeen', {
				Conversation = "Jose_1",
				PhraseId = "Major2",
				Seen = true,
			}),
		},
		Keyword = "Who's the Major?",
		KeywordT = T(134661127794, --[[Conversation Jose_1 KeywordT]] "Who's the Major?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(107928525214, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Who's the Major?]] "Oh, well, he's the leader of the <em>Legion</em>, of course! No one really seems to know him at all. They say he operates from a secret base up there in the <em>Highlands</em>..."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Tex",
								Text = T(803956718064, --[[Conversation Jose_1 Text voice:Tex section:Jose_1 keyword:Who's the Major?]] "Sounds like he got a real hole-in-the-wall gang. How we get there? "),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Red",
								Text = T(397572941722, --[[Conversation Jose_1 Text voice:Red section:Jose_1 keyword:Who's the Major?]] "Speakin' as a Highlander, can ye be more specific? Highlands can be damn tricky terrain."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Mouse",
								Text = T(935266069317, --[[Conversation Jose_1 Text voice:Mouse section:Jose_1 keyword:Who's the Major?]] "I love secrets! Can you tell me? I'm a mime, so you know I won't tell anyone."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(961613359310, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Who's the Major?]] "Well I don't know for sure. It wouldn't be much of a secret if I knew it, right?"),
			}),
		},
		id = "Major",
	}),
	PlaceObj('ConversationPhrase', {
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					MentionedMajor = true,
					UnderSuspicion = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.MentionedMajor and quest.UnderSuspicion
				end,
			}),
		},
		Keyword = "Who's the Major?",
		KeywordT = T(134661127794, --[[Conversation Jose_1 KeywordT]] "Who's the Major?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(374686359258, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Who's the Major?]] "Oh, well, he's the leader of the <em>Legion</em>, of course! No one really seems to know him at all. Very mysterious figure. Very dangerous. May I go now? Please?"),
			}),
		},
		id = "Major2",
	}),
	PlaceObj('ConversationPhrase', {
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					MentionedMajor = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.MentionedMajor
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "UnderSuspicion",
				QuestId = "JoseFamily",
			}),
		},
		Keyword = "Emma's father - you mean the President?",
		KeywordT = T(786851655348, --[[Conversation Jose_1 KeywordT]] "Emma's father - you mean the President?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(252734673052, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Emma's father - you mean the President?]] "You know, you're right. I think I heard something about that. But I don't know anything! I don't want to be involved in any of this, you know. Can I just go back to my <em>family</em>?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Raider",
								Text = T(974953304222, --[[Conversation Jose_1 Text voice:Raider section:Jose_1 keyword:Emma's father - you mean the President?]] "You seem to know a lot for someone who's not involved, don't you?"),
							}),
							PlaceObj('ConversationLine', {
								Character = "LegionRaider_Jose",
								Text = T(343605753409, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Emma's father - you mean the President?]] "Don't know what you're talking about, boss."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Meltdown",
								Text = T(627309243002, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:Emma's father - you mean the President?]] "Jeez, you're shadier than my ass crack."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Grizzly",
								Text = T(335222742303, --[[Conversation Jose_1 Text voice:Grizzly section:Jose_1 keyword:Emma's father - you mean the President?]] "Something stinks here, and I'm not talking about my armpits."),
							}),
						},
					}),
				},
			}),
		},
		id = "YoumeanthePresident",
	}),
	PlaceObj('ConversationPhrase', {
		AutoRemove = true,
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "LeadFamily",
				QuestId = "JoseFamily",
			}),
		},
		Keyword = "So you have a family?",
		KeywordT = T(713820738802, --[[Conversation Jose_1 KeywordT]] "So you have a family?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(294739172012, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:So you have a family?]] "Oh yes, boss. A big family over in <em>the Rust</em>! That's what we call the area just east of town. It's not a nice place. My boys cannot play <em>football</em> without tripping on old war equipment, hehe."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Igor",
								Text = T(809212341827, --[[Conversation Jose_1 Text voice:Igor section:Jose_1 keyword:So you have a family?]] "Family is best important. Dolviches understand."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Wolf",
								Text = T(428450856055, --[[Conversation Jose_1 Text voice:Wolf section:Jose_1 keyword:So you have a family?]] "Old war equipment? Could be worth checking out."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(375929023599, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:So you have a family?]] "They depend on me, you see. If I don't bring home the bacon, they don't eat! My poor family."),
			}),
		},
		id = "Family",
	}),
	PlaceObj('ConversationPhrase', {
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				Condition = "or",
				QuestId = "JoseFamily",
				Vars = {
					LeadFamily = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.LeadFamily
				end,
			}),
		},
		Keyword = "Is this a soccer shirt?",
		KeywordT = T(699951652390, --[[Conversation Jose_1 KeywordT]] "Is this a soccer shirt?"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(350524679233, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Is this a soccer shirt?]] "Oui! Chiens Sauvages, the best team in Grand Chien! Their merchandise is shit though. I asked for a 13, and they printed 31..."),
			}),
		},
		id = "Isthisasoccershirt",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Comment = "gain Scared+Diamonds if you failed the Hands Up",
		Conditions = {
			PlaceObj('UnitSquadHasMerc', {
				HasStat = "Wisdom",
				StatValue = 70,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.BaconDiamonds
				end,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "UnderSuspicion",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "Scared",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "BaconDiamonds",
				QuestId = "JoseFamily",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				PhraseId = "Openfire",
			}),
		},
		Enabled = false,
		Keyword = "You’re with the Legion!",
		KeywordT = T(560655426421, --[[Conversation Jose_1 KeywordT]] "You're with the Legion!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(539590466353, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:You’re with the Legion!]] "No, no, no! This is not true! Don't shoot me, boss! I mean... Maybe I had some dealings with the Legion in the past, but who doesn't? It is a small island."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Buns",
								Text = T(621057787057, --[[Conversation Jose_1 Text voice:Buns section:Jose_1 keyword:You’re with the Legion!]] 'Yet I am rather convinced you are part of the Legion "family".'),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "DrQ",
								Text = T(505683499593, --[[Conversation Jose_1 Text voice:DrQ section:Jose_1 keyword:You’re with the Legion!]] "It is difficult to hide one's true self on such a small island."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Thor",
								Text = T(565765933356, --[[Conversation Jose_1 Text voice:Thor section:Jose_1 keyword:You’re with the Legion!]] "My friend, you are hiding mostly from yourself. Let the truth set you free."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(268494219542, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:You’re with the Legion!]] "Look, just let me go to my family and I... I will give you <em>diamonds</em> from my secret stash, I swear!"),
			}),
		},
		StoryBranchIcon = "conversation_threaten",
		id = "YourewiththeLegion",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Comment = "Gain Scared+Diamonds",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				Condition = "or",
				QuestId = "JoseFamily",
				Vars = {
					Scared = true,
					UnderSuspicion = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.Scared or quest.UnderSuspicion
				end,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.BaconDiamonds
				end,
			}),
			PlaceObj('UnitSquadHasMerc', {
				HasPerk = "Psycho",
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "UnderSuspicion",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "Scared",
				QuestId = "JoseFamily",
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "BaconDiamonds",
				QuestId = "JoseFamily",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				PhraseId = "Openfire",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				Enabled = false,
				PhraseId = "HandsUp_failure",
			}),
		},
		Keyword = "Hands up!",
		KeywordT = T(586177032721, --[[Conversation Jose_1 KeywordT]] "Hands up!"),
		Lines = {
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(421463678968, --[[Conversation Jose_1 Text voice:Fidel section:Jose_1 keyword:Hands up!]] "It has been too long since the last time I killed someone! I'm getting itchy."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Meltdown",
								Text = T(737188717279, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:Hands up!]] "I got a hair trigger and a nasty rash on my finger. Got it?"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Nails",
								Text = T(163893585175, --[[Conversation Jose_1 Text voice:Nails section:Jose_1 keyword:Hands up!]] "I can't help wondering what you'd look like dead."),
							}),
						},
					}),
				},
			}),
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(126193699971, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Hands up!]] "No, boss! Please, don't shoot! Look, just let me go to my family and I... I will give you <em>diamonds</em> from my secret stash, I swear!"),
			}),
		},
		NoBackOption = true,
		StoryBranchIcon = "conversation_threaten",
		id = "HandsUp_success",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		AutoRemove = true,
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				Condition = "or",
				QuestId = "JoseFamily",
				Vars = {
					Scared = true,
					UnderSuspicion = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.Scared or quest.UnderSuspicion
				end,
			}),
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.BaconDiamonds
				end,
			}),
			PlaceObj('UnitSquadHasMerc', {
				HasPerk = "Psycho",
				Negate = true,
			}),
		},
		Effects = {
			PlaceObj('QuestSetVariableBool', {
				Prop = "UnderSuspicion",
				QuestId = "JoseFamily",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				PhraseId = "Openfire",
			}),
			PlaceObj('PhraseSetEnabled', {
				Conversation = "Jose_1",
				Enabled = false,
				PhraseId = "HandsUp_success",
			}),
		},
		Keyword = "Hands up!",
		KeywordT = T(586177032721, --[[Conversation Jose_1 KeywordT]] "Hands up!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(904309806327, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Hands up!]] "Non-non, no need for violence, boss! I've done nothing wrong! See? I'm cooperating."),
			}),
		},
		NoBackOption = true,
		StoryBranchIcon = "conversation_threaten",
		id = "HandsUp_failure",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "Gain 3 Tiny diamonds",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.BaconDiamonds
				end,
			}),
		},
		Effects = {
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "LegionRaider_Jose",
				UseWeapons = true,
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "BaconDiamonds",
				QuestId = "JoseFamily",
				Set = false,
			}),
			PlaceObj('UnitGrantItem', {
				Amount = 3,
				ItemId = "TinyDiamonds",
				param_bindings = {
					Amount = "DiamondsGain",
				},
			}),
			PlaceObj('ExecuteCode', {
				FuncCode = "TutorialHintsState.QuestChoice = true",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "Hand over the diamonds",
		KeywordT = T(967728070126, --[[Conversation Jose_1 KeywordT]] "Hand over the diamonds"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(938617713641, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Hand over the diamonds]] "Bien sur! Please, take these. I just found them on the beach, I swear... All yours now. I... I can go? And... You won't shoot me in the back?"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(507624499391, --[[Conversation Jose_1 Text voice:Fidel section:Jose_1 keyword:Hand over the diamonds]] "No. Fidel like to aim for belly. More screaming that way."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Omryn",
								Text = T(617019210759, --[[Conversation Jose_1 Text voice:Omryn section:Jose_1 keyword:Hand over the diamonds]] "I only shoot people for money... and for food."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Steroid",
								Text = T(364026078742, --[[Conversation Jose_1 Text voice:Steroid section:Jose_1 keyword:Hand over the diamonds]] "Just drop your lunch money and run, little man!"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Vicki",
								Text = T(358543447833, --[[Conversation Jose_1 Text voice:Vicki section:Jose_1 keyword:Hand over the diamonds]] "Life be full of mystery, mon. Only one way to find out."),
							}),
						},
					}),
				},
			}),
		},
		PhraseRolloverText = T(773771104694, --[[Conversation Jose_1 PhraseRolloverText]] "This action may have major consequences!"),
		StoryBranchIcon = "conversation_action",
		id = "HandOverTheDiamonds",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "Start combat",
		Effects = {
			PlaceObj('GroupSetSide', {
				Side = "enemy1",
				TargetUnit = "LegionRaider_Jose",
			}),
			PlaceObj('GroupAlert', {
				TargetUnit = "LegionRaider_Jose",
			}),
			PlaceObj('ExecuteCode', {
				FuncCode = "TutorialHintsState.QuestChoice = true",
			}),
		},
		Enabled = false,
		GoTo = "<end conversation>",
		Keyword = "Die!",
		KeywordT = T(482976736771, --[[Conversation Jose_1 KeywordT]] "Die!"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(462195193817, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Die!]] "Merde!"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Annotation = "Laughing as if he just figured it's a great idea",
								Character = "Fidel",
								Text = T(219498159041, --[[Conversation Jose_1 Text Laughing as if he just figured it's a great idea voice:Fidel section:Jose_1 keyword:Die!]] "Hehehehee... Bad news for you. Good news for Fidel!"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Meltdown",
								Text = T(257855744152, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:Die!]] "Time to make some fur fly!"),
							}),
						},
					}),
				},
			}),
		},
		PhraseRolloverText = T(230534807131, --[[Conversation Jose_1 PhraseRolloverText]] "This action may have major consequences!"),
		StoryBranchIcon = "conversation_attack",
		id = "Openfire",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "Improve loot of second encounter",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = true,
					Scared = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return quest.BaconDiamonds and quest.Scared
				end,
			}),
		},
		Effects = {
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "LegionRaider_Jose",
				UseWeapons = true,
			}),
			PlaceObj('ExecuteCode', {
				FuncCode = "TutorialHintsState.QuestChoice = true",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "You may go",
		KeywordT = T(725537503858, --[[Conversation Jose_1 KeywordT]] "You may go"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(696618160649, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:You may go]] "Thank you, boss, I knew you were kind and gentle people! I go now. Please... um... Please, don't shoot me in the back."),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(233577286338, --[[Conversation Jose_1 Text voice:Fidel section:Jose_1 keyword:You may go]] "No. Fidel like to aim for belly. More screaming that way."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Meltdown",
								Text = T(867384693378, --[[Conversation Jose_1 Text voice:Meltdown section:Jose_1 keyword:You may go]] "I'll consider it."),
							}),
						},
					}),
				},
			}),
		},
		PhraseRolloverText = T(945969342573, --[[Conversation Jose_1 PhraseRolloverText]] "This action may have major consequences!"),
		StoryBranchIcon = "conversation_goodbye",
		id = "YouMayGo",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "If not Scared. Improve loot of second encounter",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = false,
					Scared = false,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.BaconDiamonds and not quest.Scared
				end,
			}),
		},
		Effects = {
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "LegionRaider_Jose",
				UseWeapons = true,
			}),
			PlaceObj('QuestSetVariableBool', {
				Prop = "LeadFamily",
				QuestId = "JoseFamily",
			}),
			PlaceObj('ExecuteCode', {
				FuncCode = "TutorialHintsState.QuestChoice = true",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "Goodbye",
		KeywordT = T(557225474228, --[[Conversation Jose_1 KeywordT]] "Goodbye"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(430373932141, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Goodbye]] "Very kind of you to let me be on my way. Thank you! If your travels take you through <em>the Rust</em> any time soon, you're welcome to visit my family. We'll give you all the hospitality you deserve. I'll give it to you good, I promise!"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Mouse",
								Text = T(735500021250, --[[Conversation Jose_1 Text voice:Mouse section:Jose_1 keyword:Goodbye]] "Is it just me, or did that sound like a threat?!"),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Wolf",
								Text = T(714964496630, --[[Conversation Jose_1 Text voice:Wolf section:Jose_1 keyword:Goodbye]] "Could have phrased that a little better."),
							}),
						},
					}),
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fox",
								Text = T(641272850679, --[[Conversation Jose_1 Text voice:Fox section:Jose_1 keyword:Goodbye]] "If I had a dime for every man who promised me that, I could buy my own island."),
							}),
						},
					}),
				},
			}),
		},
		PhraseRolloverText = T(325030565636, --[[Conversation Jose_1 PhraseRolloverText]] "This action may have major consequences!"),
		StoryBranchIcon = "conversation_goodbye",
		id = "Goodbye",
	}),
	PlaceObj('ConversationPhrase', {
		Align = "right",
		Comment = "If Scared",
		Conditions = {
			PlaceObj('QuestIsVariableBool', {
				QuestId = "JoseFamily",
				Vars = {
					BaconDiamonds = false,
					Scared = true,
				},
				__eval = function ()
					local quest = gv_Quests['JoseFamily'] or QuestGetState('JoseFamily')
					return not quest.BaconDiamonds and quest.Scared
				end,
			}),
		},
		Effects = {
			PlaceObj('GroupSetBehaviorExit', {
				MarkerGroup = "East",
				Running = true,
				TargetUnit = "LegionRaider_Jose",
				UseWeapons = true,
			}),
			PlaceObj('ExecuteCode', {
				FuncCode = "TutorialHintsState.QuestChoice = true",
			}),
		},
		GoTo = "<end conversation>",
		Keyword = "Goodbye",
		KeywordT = T(557225474228, --[[Conversation Jose_1 KeywordT]] "Goodbye"),
		Lines = {
			PlaceObj('ConversationLine', {
				Character = "LegionRaider_Jose",
				Text = T(408447178916, --[[Conversation Jose_1 Text voice:LegionRaider_Jose section:Jose_1 keyword:Goodbye]] "Thank you for sparing me, boss! Heavens bless you! I'm getting out of sight, right away! Thank you! Have a nice day! Au revoir!"),
			}),
			PlaceObj('ConversationInterjectionList', {
				Interjections = {
					PlaceObj('ConversationInterjection', {
						Lines = {
							PlaceObj('ConversationLine', {
								Character = "Fidel",
								Text = T(581934187146, --[[Conversation Jose_1 Text voice:Fidel section:Jose_1 keyword:Goodbye]] "But why let go? Fidel no understand. Maybe we shoot him later?"),
							}),
						},
					}),
				},
			}),
		},
		PhraseRolloverText = T(226307279156, --[[Conversation Jose_1 PhraseRolloverText]] "This action may have major consequences!"),
		StoryBranchIcon = "conversation_goodbye",
		id = "Goodbye2",
	}),
})


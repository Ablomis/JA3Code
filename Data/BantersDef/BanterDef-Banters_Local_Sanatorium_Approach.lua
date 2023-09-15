-- ========== GENERATED BY BanterDef Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Educated, doctor - suspicious",
			'Character', "DoctorMale_1",
			'Text', T(476310713071, --[[BanterDef SanatoriumNPC_Doctor01_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor01_Approach_success Educated, doctor - suspicious voice:DoctorMale_1]] "Hey, who are you?"),
		}),
		PlaceObj('BanterLine', {
			'Text', T(442608386006, --[[BanterDef SanatoriumNPC_Doctor01_Approach_success Text]] "<em>Scoundrel</em> perk activated"),
			'Voiced', false,
			'FloatUp', true,
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'Text', "",
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Livewire",
					'Text', T(132244779169, --[[BanterDef SanatoriumNPC_Doctor01_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor01_Approach_success voice:Livewire]] "What do you mean who am I?! Is this how you treat an immunology specialist personally invited for consultation?!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Fox",
					'Text', T(852015935560, --[[BanterDef SanatoriumNPC_Doctor01_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor01_Approach_success voice:Fox]] "I am the new nurse. Would you like to examine... my credentials, Doctor?"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Magic",
					'Text', T(847062995682, --[[BanterDef SanatoriumNPC_Doctor01_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor01_Approach_success voice:Magic]] "I'm a... visiting physician, ya dig? You can call me Dr. Feelgood."),
				}),
			},
			'Optional', true,
			'playOnce', true,
		}),
		PlaceObj('BanterLine', {
			'Annotation', "Educated, doctor - mercs have a plausible explanation why they are here",
			'Character', "DoctorMale_1",
			'Text', T(688568799028, --[[BanterDef SanatoriumNPC_Doctor01_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor01_Approach_success Educated, doctor - mercs have a plausible explanation why they are here voice:DoctorMale_1]] "Ah, okay."),
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = false,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
		PlaceObj('UnitHasPerk', {
			HasPerk = "Scoundrel",
			TargetUnit = "any merc",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Doctor01_Approach_success",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Educated, doctor - mercs have a plausible explanation why they are here",
			'Character', "DoctorMale_2",
			'Text', T(193206697475, --[[BanterDef SanatoriumNPC_Doctor02_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor02_Approach_success Educated, doctor - mercs have a plausible explanation why they are here voice:DoctorMale_2]] "Oh, are you the new doctors? You should go to Dr. Kronenberg to get your lab coats."),
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = false,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
		PlaceObj('UnitHasPerk', {
			HasPerk = "Scoundrel",
			TargetUnit = "any merc",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Doctor02_Approach_success",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Educated, doctor",
			'Character', "DoctorMale",
			'Text', T(174528311513, --[[BanterDef SanatoriumNPC_Doctor03_Approach_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor03_Approach_failure Educated, doctor voice:DoctorMale]] "What are you doing here? We have an outbreak to handle, this is no place for unauthorized personnel!"),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = false,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
		PlaceObj('UnitHasPerk', {
			HasPerk = "Scoundrel",
			Negate = true,
			TargetUnit = "any merc",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Doctor03_Approach_failure",
})

PlaceObj('BanterDef', {
	Comment = "guards killed",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Educated, doctor",
			'Character', "DoctorMale",
			'Text', T(127367286495, --[[BanterDef SanatoriumNPC_Doctor04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor04_Approach Educated, doctor guards killed voice:DoctorMale]] "That was unnecessary bloodshed. Who will help us keep the infected under control now?"),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Scully",
					'Text', T(582688871964, --[[BanterDef SanatoriumNPC_Doctor04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor04_Approach voice:Scully]] "Come off it, mate. Those guards were useless as tits on a bull."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Reaper",
					'Text', T(921485602151, --[[BanterDef SanatoriumNPC_Doctor04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor04_Approach voice:Reaper]] "I would be honored to guide them to their final rest."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Raider",
					'Text', T(107618752843, --[[BanterDef SanatoriumNPC_Doctor04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Doctor04_Approach voice:Raider]] "My apologies, sir. We'll help make sure this facility is secure."),
				}),
			},
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set( "HospitalGuardsKilled" ),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return quest.HospitalGuardsKilled
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Doctor04_Approach",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Sanatorium guard - mercs caught sneaking in",
			'Character', "ArmyMale_1",
			'Text', T(567387188284, --[[BanterDef SanatoriumNPC_Guard01_Stealth_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Guard01_Stealth_failure Sanatorium guard - mercs caught sneaking in voice:ArmyMale_1]] "Sorry, we can't allow you inside. The Sanatorium is under quarantine by order of <em>Dr. Kronenberg</em>. I must warn you that we are authorized to use lethal force."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.MangelExposed
			end,
		}),
		PlaceObj('QuestIsVariableNum', {
			Amount = 1,
			Condition = "<=",
			Prop = "Clues",
			QuestId = "Sanatorium",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Guard01_Stealth_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Sanatorium guard - mercs caught sneaking in",
			'Character', "ArmyMale_1",
			'Text', T(953913604813, --[[BanterDef SanatoriumNPC_Guard02_Stealth_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Guard02_Stealth_failure Sanatorium guard - mercs caught sneaking in voice:ArmyMale_1]] "Hey! You can't go in here! The facility is under quarantine by order of <em>Dr. Kronenberg</em>. You need to leave, NOW, or we will have to shoot you."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.MangelExposed
			end,
		}),
		PlaceObj('QuestIsVariableNum', {
			Amount = 1,
			Condition = ">",
			Prop = "Clues",
			QuestId = "Sanatorium",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Guard02_Stealth_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Nurse - stolid, professional",
			'Character', "NurseFemale",
			'Text', T(480684549442, --[[BanterDef SanatoriumNPC_Nurse01_Approach_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse01_Approach_failure Nurse - stolid, professional voice:NurseFemale]] "Excuse me, but you shouldn't be here! This medical facility is under quarantine."),
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = false,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
		PlaceObj('UnitHasStat', {
			Amount = 80,
			Negate = true,
			Stat = "Medical",
			TargetUnit = "any merc",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Nurse01_Approach_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckFail",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Nurse - stolid, professional",
			'Character', "NurseFemale",
			'Text', T(257780915997, --[[BanterDef SanatoriumNPC_Nurse02_Approach_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse02_Approach_failure Nurse - stolid, professional voice:NurseFemale]] "Hey, what are you doing here?! This medical facility is under quarantine."),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Sidney",
					'Text', T(556700833162, --[[BanterDef SanatoriumNPC_Nurse02_Approach_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse02_Approach_failure voice:Sidney]] "Terribly sorry. It appears I've lost my way. Is this the Tennis Club?"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Flay",
					'Text', T(996635861662, --[[BanterDef SanatoriumNPC_Nurse02_Approach_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse02_Approach_failure voice:Flay]] "I will go where I please, woman!"),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Red",
					'Text', T(818720218398, --[[BanterDef SanatoriumNPC_Nurse02_Approach_failure Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse02_Approach_failure voice:Red]] "Dinnae raise your voice at me, lass!"),
				}),
			},
			'playOnce', true,
		}),
	},
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = false,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
		PlaceObj('UnitHasStat', {
			Amount = 80,
			Negate = true,
			Stat = "Medical",
			TargetUnit = "any merc",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Nurse02_Approach_failure",
})

PlaceObj('BanterDef', {
	FX = "CheckSuccess",
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Nurse - stolid, professional",
			'Character', "NurseFemale",
			'Text', T(804388604202, --[[BanterDef SanatoriumNPC_Nurse03_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse03_Approach_success Nurse - stolid, professional voice:NurseFemale]] "Excuse me, but you shouldn't be here! This medical facility is under quarantine!"),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "MD",
					'Text', T(449826700178, --[[BanterDef SanatoriumNPC_Nurse03_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse03_Approach_success voice:MD]] "Are you telling me how to do my job, nurse? "),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "DrQ",
					'Text', T(339102714330, --[[BanterDef SanatoriumNPC_Nurse03_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse03_Approach_success voice:DrQ]] "It is wise of a nurse to be observant, for the Doctor may appear in different clothing."),
				}),
			},
			'Optional', true,
		}),
		PlaceObj('BanterLine', {
			'Annotation', "Nurse - stolid, professional - mercs have a plausible explanation why they are here",
			'Character', "NurseFemale",
			'Text', T(403388916135, --[[BanterDef SanatoriumNPC_Nurse03_Approach_success Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse03_Approach_success Nurse - stolid, professional - mercs have a plausible explanation why they are here voice:NurseFemale]] "Oh... Apologies, Doctor. I didn't know you were the new transfer."),
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = false,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return not quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
		PlaceObj('UnitHasStat', {
			Amount = 80,
			Stat = "Medical",
			TargetUnit = "any merc",
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Nurse03_Approach_success",
})

PlaceObj('BanterDef', {
	KillOnAnyActorAware = true,
	Lines = {
		PlaceObj('BanterLine', {
			'Annotation', "Nurse - irritated, sarcastic",
			'Character', "NurseFemale",
			'Text', T(503841819858, --[[BanterDef SanatoriumNPC_Nurse04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse04_Approach Nurse - irritated, sarcastic voice:NurseFemale]] "Why have you killed our guards? Now who is going to handle the infected? Maybe you?"),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Tex",
					'Text', T(267347966198, --[[BanterDef SanatoriumNPC_Nurse04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse04_Approach voice:Tex]] "Do not worry, little lady! We are here to clean up this town... er, hospital."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Smiley",
					'Text', T(171625971591, --[[BanterDef SanatoriumNPC_Nurse04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse04_Approach voice:Smiley]] "I, Alejandro Diaz, will make sure no one bites you in any inappropriate way."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Wolf",
					'Text', T(299764535858, --[[BanterDef SanatoriumNPC_Nurse04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Nurse04_Approach voice:Wolf]] 'Depends on what your definition of "handle" is.'),
				}),
			},
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set( "HospitalGuardsKilled" ),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return quest.HospitalGuardsKilled
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Nurse04_Approach",
})

PlaceObj('BanterDef', {
	Comment = ">> Given",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "CivilianMalePatient",
			'Text', T(295279101581, --[[BanterDef SanatoriumNPC_Patient01_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient01_Approach >> Given voice:CivilianMalePatient]] "You won't lock me up with les cadavérés, right? I feel healthy, I swear!"),
		}),
	},
	Once = true,
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Patient01_Approach",
})

PlaceObj('BanterDef', {
	Comment = ">> Given",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "CivilianFemalePatient",
			'Text', T(835805787558, --[[BanterDef SanatoriumNPC_Patient02_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient02_Approach >> Given voice:CivilianFemalePatient]] "You won't send me underground, right? Please, I don't want to become one of them!"),
		}),
	},
	Once = true,
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Patient02_Approach",
})

PlaceObj('BanterDef', {
	Comment = "guards killed >> Guilty",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "CivilianMalePatient",
			'Text', T(232319936171, --[[BanterDef SanatoriumNPC_Patient03_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient03_Approach guards killed >> Guilty voice:CivilianMalePatient]] "Are you going to kill us as well?"),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Vicki",
					'Text', T(886188715317, --[[BanterDef SanatoriumNPC_Patient03_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient03_Approach voice:Vicki]] "Relax, mon! We only be killing the bad folk."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Wolf",
					'Text', T(492845587464, --[[BanterDef SanatoriumNPC_Patient03_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient03_Approach voice:Wolf]] "Er... We'll get back to you on that, chief."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Shadow",
					'Text', T(796017390089, --[[BanterDef SanatoriumNPC_Patient03_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient03_Approach voice:Shadow]] "Certainly a reasonable question."),
				}),
			},
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set({
	HospitalGuardsKilled = true,
	MangelExposed = false,
}),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return quest.HospitalGuardsKilled and not quest.MangelExposed
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Patient03_Approach",
})

PlaceObj('BanterDef', {
	Comment = "human experiments >> Guilty",
	Lines = {
		PlaceObj('BanterLine', {
			'Character', "CivilianFemalePatient",
			'Text', T(424294290028, --[[BanterDef SanatoriumNPC_Patient04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient04_Approach human experiments >> Guilty voice:CivilianFemalePatient]] "I heard that you let her continue with her satanic experiments! My children may turn into les cadavérés because of you!"),
		}),
		PlaceObj('BanterLine', {
			'MultipleTexts', true,
			'AnyOfTheseCount', 2,
			'AnyOfThese', {
				PlaceObj('BanterLineThin', {
					'Character', "Flay",
					'Text', T(643301977533, --[[BanterDef SanatoriumNPC_Patient04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient04_Approach voice:Flay]] "Mademoiselle, if that happens, I will make sure they are... taken care of."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Nails",
					'Text', T(665184026180, --[[BanterDef SanatoriumNPC_Patient04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient04_Approach voice:Nails]] "Funny, I don't remember asking you for a guilt trip."),
				}),
				PlaceObj('BanterLineThin', {
					'Character', "Scope",
					'Text', T(727857295434, --[[BanterDef SanatoriumNPC_Patient04_Approach Text section:Banters_Local_Sanatorium_Approach/SanatoriumNPC_Patient04_Approach voice:Scope]] "Oh, dear... Stay strong, love. I'm very nearly certain that won't happen."),
				}),
			},
			'playOnce', true,
		}),
	},
	Once = true,
	conditions = {
		PlaceObj('QuestIsVariableBool', {
			QuestId = "Sanatorium",
			Vars = set( "HumanExperiments" ),
			__eval = function ()
				local quest = gv_Quests['Sanatorium'] or QuestGetState('Sanatorium')
				return quest.HumanExperiments
			end,
		}),
	},
	disabledInConflict = true,
	group = "Banters_Local_Sanatorium_Approach",
	id = "SanatoriumNPC_Patient04_Approach",
})

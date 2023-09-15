-- ========== GENERATED BY TutorialHint Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('TutorialHint', {
	Comment = "*Resolves when you set a travel route over water",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.BoatTutorial end,
		}),
	},
	PopupId = "BoatTravel",
	ShowConditions = {
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('SatelliteGameplayRunning', {}),
				PlaceObj('CheckExpression', {
					Expression = function (self, obj) return not TutorialHintsState.BoatTutorial and gv_Sectors and gv_Sectors.H2 and not gv_Sectors.H2.PortLocked and not Platform.demo end,
				}),
				PlaceObj('SectorCheckOwner', {
					sector_id = "H4",
				}),
			},
		}),
	},
	Text = T(551241891033, --[[TutorialHint BoatTravel Text]] "Sat View: Use a boat to travel to the mainland"),
	group = "Default",
	id = "BoatTravel",
})

PlaceObj('TutorialHint', {
	Comment = "**Resolves after successfully deploying",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.DeploymentSet end,
		}),
	},
	PopupId = "DeploymentTutorial",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return gv_DeploymentStarted end,
		}),
	},
	Text = T(511735406928, --[[TutorialHint Deployment Text]] "Deploy your mercs"),
	group = "Default",
	id = "Deployment",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves after the downed merc dies or is bandaged",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.UnitDowned and not TutorialHintsState.UnitDowned:IsDowned() end,
		}),
	},
	PopupId = "DownedTutorial",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.UnitDowned end,
		}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed end,
		}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not IsGameRuleActive("LethalWeapons") end,
		}),
	},
	Text = T(860538523360, --[[TutorialHint Downed Text]] "Bandage the downed merc"),
	group = "Default",
	id = "Downed",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves immediately",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return true end,
		}),
	},
	PopupId = "EnemyOverwatchTutorial",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.Overwatch end,
		}),
		PlaceObj('PlayerIsPlayerTurn', {}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed end,
		}),
	},
	group = "Default",
	id = "EnemyOverwatch",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves immediately",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return true end,
		}),
	},
	PopupId = "EnemyPinDownTutorial",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.PinDown end,
		}),
		PlaceObj('PlayerIsPlayerTurn', {}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed end,
		}),
	},
	group = "Default",
	id = "EnemyPinDown",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves immediately",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return true end,
		}),
	},
	PopupId = "LineOfFire",
	ShowConditions = {
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('UnitIsAware', {
					TargetUnit = "EnemySquad",
				}),
				PlaceObj('CombatIsActive', {}),
				PlaceObj('PlayerIsInSectors', {
					Sectors = {
						"H2",
					},
				}),
				PlaceObj('PlayerIsPlayerTurn', {}),
			},
		}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed end,
		}),
	},
	group = "Default",
	id = "LineOfFire",
})

PlaceObj('TutorialHint', {
	Comment = "New",
	CompletionConditions = {
		PlaceObj('CheckExpression', {}),
	},
	PopupId = "MineIncome",
	ShowConditions = {
		PlaceObj('PlayerControlSectors', {
			Amount = 1,
			Condition = ">=",
			POIs = "Mine",
		}),
	},
	group = "Default",
	id = "MineIncome",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers in the satellite view, 1 day before a merc contract will expire for the first time",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return true end,
		}),
	},
	PopupId = "SatMoneyAndContracts",
	ShowConditions = {
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj) return TutorialHintsState.ContractExpireHint end,
				}),
				PlaceObj('CheckExpression', {
					Expression = function (self, obj) return not IsCampaignPaused() end,
				}),
			},
		}),
	},
	group = "Default",
	id = "MoneyAndContract",
})

PlaceObj('TutorialHint', {
	Comment = "Resolves immediately",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return true end,
		}),
	},
	PopupId = "Overwhelmed",
	ShowConditions = {
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('CombatIsActive', {}),
				PlaceObj('PlayerIsPlayerTurn', {}),
				PlaceObj('CheckExpression', {
					Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed and gv_Sectors[gv_CurrentSectorId] and gv_Sectors[gv_CurrentSectorId].conflict and not gv_Sectors[gv_CurrentSectorId].conflict.disable_travel and SelectedObj and #table.map(GetEnemies(SelectedObj), Unit.IsAware) > #GetAllPlayerUnitsOnMap() * 3 end,
				}),
			},
		}),
	},
	group = "Default",
	id = "Overwhelmed",
})

PlaceObj('TutorialHint', {
	Comment = "Resolves immediately",
	CompletionConditions = {
		PlaceObj('CheckExpression', {}),
	},
	PopupId = "PerksMenu",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.PerksMenu end,
		}),
	},
	group = "Default",
	id = "PerksMenu",
})

PlaceObj('TutorialHint', {
	CompletionConditions = {
		PlaceObj('OR', {
			Conditions = {
				PlaceObj('CheckExpression', {
					EditorViewComment = "Have not a tired merc",
					Expression = function (self, obj)
						for _, s in ipairs(g_PlayerSquads) do
							for __, unit_id in ipairs(s.units) do
								local unit = gv_UnitData[unit_id]
								if unit.Tiredness>0 then
									return false
								end	
							end	
						end
						return true
					end,
				}),
				PlaceObj('SatelliteGameplayRunning', {
					Negate = true,
				}),
			},
		}),
	},
	PopupId = "SatViewRestingHint",
	ShowConditions = {
		PlaceObj('SatelliteGameplayRunning', {}),
		PlaceObj('CheckExpression', {
			EditorViewComment = "Is Campaign paused",
			Expression = function (self, obj) return not IsCampaignPaused() end,
		}),
		PlaceObj('CheckExpression', {
			EditorViewComment = "Have a tired merc",
			Expression = function (self, obj)
				for _, s in ipairs(g_PlayerSquads) do
					for __, unit_id in ipairs(s.units) do
						local unit = gv_UnitData[unit_id]
						if unit.Tiredness>0 then
							return true
						end	
					end	
				end
				return false
			end,
		}),
	},
	Text = T(444898591049, --[[TutorialHint SatViewResting Text]] "Keep your mercs idle until they are no longer tired"),
	group = "Default",
	id = "SatViewResting",
})

PlaceObj('TutorialHint', {
	CompletionConditions = {
		PlaceObj('CheckExpression', {}),
	},
	PopupId = "JammingandCondition",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.JammedWeapon end,
		}),
	},
	group = "Default",
	id = "WeaponJam",
})

PlaceObj('TutorialHint', {
	Comment = "First time weapon mod menu is opened and resolves immediately",
	CompletionConditions = {
		PlaceObj('CheckExpression', {}),
	},
	PopupId = "WeaponMods",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.WeaponMod end,
		}),
	},
	group = "Default",
	id = "WeaponMods",
})

PlaceObj('TutorialHint', {
	Comment = "Non popup. Shows in help menu.",
	PopupId = "AttackModifiers",
	group = "StartingHelp",
	id = "AttackModifiers",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves when you execute a bandage action",
	CompletionConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.IsBandaged end,
		}),
	},
	PopupId = "CombatHeal",
	ShowConditions = {
		PlaceObj('PlayerIsPlayerTurn', {}),
		PlaceObj('PlayerHasALowHealthMerc', {}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed end,
		}),
	},
	Text = T(259659622574, --[[TutorialHint CombatHeal Text]] "Bandage any merc who lost HP"),
	group = "StartingHelp",
	id = "CombatHeal",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves immediately",
	PopupId = "FirstCombat",
	group = "StartingHelp",
	id = "FirstCombat",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves when you switch to Satellite View",
	PopupId = "GoToSatelliteView",
	group = "StartingHelp",
	id = "GoToSatelliteView",
})

PlaceObj('TutorialHint', {
	Comment = "Resolves when you activate Overview Camera",
	PopupId = "IntelTutorial",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not gv_Deployment and gv_Sectors[gv_CurrentSectorId] and gv_Sectors[gv_CurrentSectorId].intel_discovered end,
		}),
	},
	group = "StartingHelp",
	id = "Intel",
})

PlaceObj('TutorialHint', {
	Comment = "Non popup. Shows in help menu.",
	PopupId = "MercStats",
	group = "StartingHelp",
	id = "MercStats",
})

PlaceObj('TutorialHint', {
	Comment = "Resolves when you finish the operation to train militia",
	PopupId = "MilitiaTutorial",
	ShowConditions = {
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('QuestIsVariableBool', {
					QuestId = "PierreDefeated",
					Vars = set({
	PierreInactive = false,
}),
					__eval = function ()
						local quest = gv_Quests['PierreDefeated'] or QuestGetState('PierreDefeated')
						return not quest.PierreInactive
					end,
				}),
				PlaceObj('QuestIsVariableBool', {
					QuestId = "Ernie_CounterAttack",
					Vars = set( "Given" ),
					__eval = function ()
						local quest = gv_Quests['Ernie_CounterAttack'] or QuestGetState('Ernie_CounterAttack')
						return quest.Given
					end,
				}),
				PlaceObj('CityHasLoyalty', {
					Amount = 30,
					City = "ErnieVillage",
					Condition = ">=",
				}),
				PlaceObj('SatelliteGameplayRunning', {}),
			},
		}),
	},
	group = "StartingHelp",
	id = "Militia",
})

PlaceObj('TutorialHint', {
	Comment = "New",
	PopupId = "Morale",
	ShowConditions = {
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return TutorialHintsState.MoraleChange end,
		}),
		PlaceObj('CheckExpression', {
			Expression = function (self, obj) return not TutorialHintsState.IsHintPerTurnPlayed end,
		}),
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('CombatIsActive', {}),
				PlaceObj('UnitIsAware', {
					TargetUnit = "EnemySquad",
				}),
			},
		}),
	},
	Text = T(773116932154, --[[TutorialHint Morale Text]] "\n"),
	group = "StartingHelp",
	id = "Morale",
})

PlaceObj('TutorialHint', {
	Comment = "Non popup. Shows in help menu.",
	PopupId = "SatelliteOperations",
	group = "StartingHelp",
	id = "SatelliteOperations",
})

PlaceObj('TutorialHint', {
	Comment = "Resolves when you complete Treat Wounds operation or there are no wounded mercs",
	PopupId = "SatteliteWounded",
	ShowConditions = {
		PlaceObj('AND', {
			Conditions = {
				PlaceObj('PlayerHasAWoundedMerc', {}),
				PlaceObj('SatelliteGameplayRunning', {}),
				PlaceObj('QuestIsVariableBool', {
					QuestId = "02_LiberateErnie",
					Vars = set( "Completed" ),
					__eval = function ()
						local quest = gv_Quests['02_LiberateErnie'] or QuestGetState('02_LiberateErnie')
						return quest.Completed
					end,
				}),
				PlaceObj('IsSectorOperationStarted', {
					Negate = true,
					operation = "TreatWounds",
				}),
			},
		}),
	},
	group = "StartingHelp",
	id = "SatteliteWounded",
})

PlaceObj('TutorialHint', {
	Comment = "New",
	PopupId = "SelectionAndMovement",
	group = "StartingHelp",
	id = "SelectionAndMovement",
})

PlaceObj('TutorialHint', {
	Comment = "*Resolves when any merc becomes hidden",
	PopupId = "Stealth",
	ShowConditions = {
		PlaceObj('OR', {
			Conditions = {
				PlaceObj('CheckExpression', {
					Expression = function (self, obj) return TutorialHintsState.ShowStealth end,
				}),
				PlaceObj('AND', {
					Conditions = {
						PlaceObj('CombatIsActive', {
							Negate = true,
						}),
						PlaceObj('UnitStatusEffect', {
							HasStatusEffect = "Hidden",
							TargetUnit = "any merc",
						}),
					},
				}),
			},
		}),
	},
	group = "StartingHelp",
	id = "Stealth",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers the first time you enter satellite view...",
	PopupId = "SatTimeAndTravel",
	Text = T(585673269585, --[[TutorialHint TimeAndTravel Text]] "Travel in the Sat View (<image UI/Icons/left_click 1700> to set destination, then <image UI/Icons/left_click 1700> again to confirm)"),
	group = "StartingHelp",
	id = "TimeAndTravel",
})

PlaceObj('TutorialHint', {
	Comment = "Non popup. Shows in help menu.",
	PopupId = "WeatherEffects",
	group = "StartingHelp",
	id = "WeatherEffects",
})

PlaceObj('TutorialHint', {
	Comment = "Shown twice: 1.If in I1, in combat, can aim. 2. Outside of I1, in combat, can aim, performed 10 unaimed shots. Both are marked as resolved if aimed attack is performed.",
	GamepadText = T(936840028112, --[[TutorialHint Aiming GamepadText]] "Use <RightTrigger> to aim and increase your chance to hit!"),
	Text = T(433944753171, --[[TutorialHint Aiming Text]] "Use <image UI/Icons/right_click 1700> to aim and increase your chance to hit!"),
	group = "TutorialPopups",
	id = "Aiming",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers when an enemy attack squad is en route. Points towards their target location. Resolves when the Sat View is closed.",
	Text = T(672474907337, --[[TutorialHint AttackSquad Text]] "An enemy squad is sent to attack <em><SectorName(sector_id)></em>. Prepare to defend the sector!"),
	group = "TutorialPopups",
	id = "AttackSquad",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers when the bandage button is enabled for the first time. Points to the bandage button. Resolves when a bandage action is executed.",
	Text = T(746771951766, --[[TutorialHint Bandage Text]] "Use a First Aid Kit to bandage a merc and recover some of their lost HP based on your Medical stat."),
	group = "TutorialPopups",
	id = "Bandage",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers in the inventory screen, the first time you own a balancer and a combat knife. Points to the balancer. Resolves when the items are combined.",
	Text = T(761409325882, --[[TutorialHint Combine Text]] "Use <image UI/Icons/right_click 1700> on the Balancing Weights and combine it with the Combat Knife to create a Balanced Knife."),
	group = "TutorialPopups",
	id = "Combine",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers on first combat start. Resolves after the player moves a merc. Not pointing to a particular UI component.",
	GamepadText = T(451616800503, --[[TutorialHint ControlsCombat GamepadText]] "In combat use <GamepadShortcutName('LB')> and <GamepadShortcutName('RB')> to select your mercs and <GamepadShortcutName('ButtonA')> to give them a command."),
	StaticPopup = true,
	Text = T(580184476697, --[[TutorialHint ControlsCombat Text]] "In combat use <image UI/Icons/left_click 1700> to select your mercs and <image UI/Icons/left_click 1700> to give them a command."),
	group = "TutorialPopups",
	id = "ControlsCombat",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers on start in exploration mode. Resolves 7000 ms. after the player moves a merc. Not pointing to a particular UI component.",
	GamepadText = T(624080082552, --[[TutorialHint ControlsExploration GamepadText]] "Use <ShortcutName('ExplorationSelectionToggle')> to select all mercs and <GamepadShortcutName('ButtonA')> to move them."),
	StaticPopup = true,
	Text = T(369645719359, --[[TutorialHint ControlsExploration Text]] "Use <image UI/Icons/left_click 1700> to drag-select your mercs and <image UI/Icons/right_click 1700> to move them."),
	group = "TutorialPopups",
	id = "ControlsExploration",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers after the end of the first battle. Not pointing to a particular Ui component. Resolves when Alt item highlight has been toggled.",
	GamepadText = T(906360053292, --[[TutorialHint HighlightItems GamepadText]] "Toggle the visibility of interactive objects by pressing <ShortcutName('HighlightInteractables')>. Use <ButtonA> to interact with them."),
	StaticPopup = true,
	Text = T(329382935448, --[[TutorialHint HighlightItems Text]] 'Toggle the visibility of interactive objects by pressing the "ALT" key. Use <image UI/Icons/left_click 1700> to interact with them.'),
	group = "TutorialPopups",
	id = "HighlightItems",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers in the first sector with intel, potentially after the deployment step. Not pointing to a particular Ui component. Resolves when Overview camera is activated.",
	StaticPopup = true,
	Text = T(239090476817, --[[TutorialHint IntelOverview Text]] "You have acquired some Intel for this sector. Press <ShortcutName('actionCamOverview')> key to activate Overview camera and inspect the Intel labels."),
	group = "TutorialPopups",
	id = "IntelOverview",
})

PlaceObj('TutorialHint', {
	Comment = "shows when a merc levels up",
	GamepadText = T(799677393412, --[[TutorialHint LevelUpPopup GamepadText]] "<Nick> has enough accumulated enough experience to level up! Open the character screen with <ShortcutName('actionOpenCharacter')> to level up."),
	Text = T(176943681676, --[[TutorialHint LevelUpPopup Text]] "<Nick> has enough accumulated enough experience to level up! Press the button on the portrait to level up."),
	group = "TutorialPopups",
	id = "LevelUpPopup",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers on morale change. Points to the Morale icon. Resolves after 7000 ms or end turn.",
	Text = T(944808090856, --[[TutorialHint MoraleChange Text]] "Your Team Morale has changed. It modifies your Action Points and can trigger various positive or negative effects."),
	group = "TutorialPopups",
	id = "MoraleChange",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers in Sat View any squad has reached the Rust Sector. points towards the Fort sector. Resolves after 7000 ms or when Sat View is closed.",
	Text = T(236811009625, --[[TutorialHint OutpostShields Text]] "You can weaken the defense of an Outpost by resolving the task connected with each shield. <image UI/PDA/guardpost_shield 1700> "),
	group = "TutorialPopups",
	id = "OutpostShields",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers after 14 day finance projection is negative after a mine has been taken. Points to the finances in the Sat View. Resolves after checking the finances or closing the Sat View.",
	Text = T(692710929189, --[[TutorialHint SatViewFinances Text]] "Your 14-day finance projection is in the red. Capture more diamond mines or seek other sources of income!"),
	group = "TutorialPopups",
	id = "SatViewFinances",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers after the conflict in first sector is resolved (Corazon/Emma conversation). Points to the command button. Resolves on a transition to Sat View.",
	Text = T(693749702218, --[[TutorialHint SatViewTransition Text]] "You can travel to another location by using the Sat View, accessible from the Command Menu."),
	group = "TutorialPopups",
	id = "SatViewTransition",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers after the first combat",
	GamepadText = T(806181329796, --[[TutorialHint SelectAll GamepadText]] "You can use <ShortcutName('ExplorationSelectionToggle')> to quickly select all mercs in the squad."),
	Text = T(335043521467, --[[TutorialHint SelectAll Text]] "You can use '<ShortcutName('ExplorationSelectionToggle')>' to quickly select all mercs in the squad."),
	group = "TutorialPopups",
	id = "SelectAll",
})

PlaceObj('TutorialHint', {
	Comment = "shows on the second turn of the first battle if the player hasn't switched stances yet",
	Text = T(189820320061, --[[TutorialHint Stance Text]] "You can change the combat stance. Mercs that are crouched or prone move slower but are better protected against ranged attacks."),
	group = "TutorialPopups",
	id = "Stance",
})

PlaceObj('TutorialHint', {
	Comment = "Show during combat on the first attempted explosive grenade throw (not counting flares,smokes, etc.)",
	StaticPopup = true,
	Text = T(911253202323, --[[TutorialHint Throwing Text]] "Mishap chance and damage with grenades thrown explosives are based on the Explosives stat. Throwing range depends on Strength."),
	group = "TutorialPopups",
	id = "Throwing",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers on sat view opening after conflict in Ernie has been resolved. Points to the operations button. Resolves when Operations UI has been opened.",
	Text = T(440423046534, --[[TutorialHint TrainMilitia Text]] "You can train Militia to defend the settlement. Use this button to access sector Operations and assign a merc to Militia Training."),
	group = "TutorialPopups",
	id = "TrainMilitia",
})

PlaceObj('TutorialHint', {
	Comment = "shows when the inventory is opened and there is atleast one tiny diamond",
	GamepadText = T(781015460457, --[[TutorialHint ValuableItem GamepadText]] "You can cash-in valuables directly from the item menu opened with <GamepadShortcutName('ButtonX')>"),
	Text = T(298537926237, --[[TutorialHint ValuableItem Text]] "You can cash-in valuables directly from the item menu opened with <image UI/Icons/right_click 1700>"),
	group = "TutorialPopups",
	id = "ValuableItem",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers when you are currently setting up a ranged attack out of weapon range for the first time. Points to the target range indicator. Resolves when the targeting UI is closed.",
	Text = T(809548776835, --[[TutorialHint WeaponRange Text]] "The target you're aiming at <image UI/Hud/range_50 1700> is past the optimal range of your weapon."),
	group = "TutorialPopups",
	id = "WeaponRange",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers when you have a wounded merc in the Sat View after conflict Ernie has been resolved. Points to the wounded merc portrait. Resolves when the operations UI is opened.",
	Text = T(933556563892, --[[TutorialHint Wounded Text]] "Serious wounds lower the maximum HP of the mercs. Wounds can be healed with Treat Wounds from the Operations menu."),
	group = "TutorialPopups",
	id = "Wounded",
})

PlaceObj('TutorialHint', {
	Comment = "Shows up the first time a merc runs out of AP",
	GamepadText = T(206881110169, --[[TutorialHint APRanOut GamepadText]] "<Nick> ran out of Action Points and cannot act anymore during the current turn. You can select another merc with <GamepadShortcutName('LeftShoulder')> and <GamepadShortcutName('RightShoulder')>"),
	SortKey = 5,
	Text = T(269566378870, --[[TutorialHint APRanOut Text]] "<Nick> ran out of Action Points and cannot act anymore during the current turn. You can select another merc."),
	group = "TutorialPopups",
	id = "APRanOut",
})

PlaceObj('TutorialHint', {
	Comment = "Shows up the first time a merc uses an AP consuming ability in combat",
	SortKey = 5,
	Text = T(401986001975, --[[TutorialHint APUsage Text]] "Notice how actions <Nick> performs consume Action Points (AP)."),
	group = "TutorialPopups",
	id = "APUsage",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers on first bombard created from marker. Resolves on next turn or when dismissed.",
	SortKey = 5,
	StaticPopup = true,
	Text = T(749389055776, --[[TutorialHint Bombard Text]] "You are being bombarded by enemies outside the sector. The bombardment will end when the conflict is resolved."),
	group = "TutorialPopups",
	id = "Bombard",
})

PlaceObj('TutorialHint', {
	Comment = "Shows up in the crosshair when you've opened it on an enemy in darkness for the first time.",
	SortKey = 5,
	Text = T(833795280770, --[[TutorialHint EnemyInDarkness Text]] "Enemies in the dark are much harder to hit with ranged attacks, unless their attacker is standing at point blank range."),
	group = "TutorialPopups",
	id = "EnemyInDarkness",
})

PlaceObj('TutorialHint', {
	Comment = "Shows up when in satellite view for the first time",
	GamepadText = T(811529893605, --[[TutorialHint SatelliteTimeControl GamepadText]] "Unpause time with <GamepadShortcutName('DPadRight')> and wait for your mercs to arrive."),
	SortKey = 5,
	Text = T(432288422182, --[[TutorialHint SatelliteTimeControl Text]] "Unpause time and wait for your mercs to arrive."),
	group = "TutorialPopups",
	id = "SatelliteTimeControl",
})

PlaceObj('TutorialHint', {
	Comment = "Shows up when the game asks you to travel for the first time.",
	SortKey = 5,
	Text = T(984967090293, --[[TutorialHint SatelliteTravelToErnie Text]] "Travel towards the village of Ernie."),
	group = "TutorialPopups",
	id = "SatelliteTravelToErnie",
})

PlaceObj('TutorialHint', {
	Comment = "Every time the player attempts to setup a melee takedown from stealth until it has been executed successfully at least once (meaning the attack happened. Remove it from screen when the attack is cancelled or combat starts.",
	SortKey = 5,
	StaticPopup = true,
	Text = T(922345854917, --[[TutorialHint SneakApproach Text]] "Approach the enemy and try to stay out of sight."),
	group = "TutorialPopups",
	id = "SneakApproach",
})

PlaceObj('TutorialHint', {
	Comment = "Every time the player attempts to setup a melee takedown not in stealth. Stop displaying this when a takedown has been executed at least once.",
	SortKey = 5,
	Text = T(386833265408, --[[TutorialHint SneakMode Text]] "Sneak next to the marked enemy to execute a takedown."),
	group = "TutorialPopups",
	id = "SneakMode",
})

PlaceObj('TutorialHint', {
	Comment = "Triggers on the second turn of combat. It should not trigger if the player has already used this action and has changed the stances. We don't count stealth as a change stance action.",
	SortKey = 5,
	Text = T(689886717215, --[[TutorialHint Stance Text]] "You can change the combat stance. Mercs that are crouched or prone move slower but are better protected against ranged attacks."),
	group = "TutorialPopups",
	id = "Stance",
})

PlaceObj('TutorialHint', {
	Comment = "Shows up in the tutorial on the second sector",
	GamepadText = T(171900632658, --[[TutorialHint StealthPopup GamepadText]] "Use <ShortcutName('GamepadQuickAction')> to start sneaking. <image UI/Hud/death_blow 1000> means you have a chance for a Stealth Kill."),
	SortKey = 5,
	Text = T(453149158890, --[[TutorialHint StealthPopup Text]] "Use this button to start sneaking. <image UI/Hud/death_blow 1000> means you have a chance for a Stealth Kill."),
	group = "TutorialPopups",
	id = "StealthPopup",
})


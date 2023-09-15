-- ========== GENERATED BY AnimationStyle Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle2",
			'Weight', 20,
			'total_weight', 120,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle3",
			'Weight', 200,
			'total_weight', 320,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle4",
			'Weight', 200,
			'total_weight', 520,
		}),
	},
	Name = "CombatIdle",
	Unit = "Crocodile",
	VariationGroup = "CombatIdle",
	group = "Crocodile: CombatIdle",
	id = "Crocodile: CombatIdle",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle",
			'Weight', 1000,
			'total_weight', 1000,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle2",
			'total_weight', 1100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle3",
			'total_weight', 1200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle4",
			'Weight', 20,
			'total_weight', 1220,
		}),
	},
	Name = "Idle",
	Unit = "Crocodile",
	VariationGroup = "Idle",
	group = "Crocodile: Idle",
	id = "Crocodile: Idle",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Fear_Standing",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Fear_Standing2",
			'total_weight', 200,
		}),
	},
	Name = "FearStanding",
	Start = "civ_Fear_Standing_Start",
	Stop = "civ_Fear_Standing_End",
	Unit = "Female",
	VariationGroup = "Cower",
	group = "Female: Cower",
	id = "Female: FearStanding",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Fear_Cover",
			'total_weight', 100,
		}),
	},
	Name = "FearCover",
	Start = "civ_Fear_Cover_Start",
	Stop = "civ_Fear_Cover_End",
	Unit = "Female",
	VariationGroup = "CowerCover",
	group = "Female: CowerCover",
	id = "Female: FearCover",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "nw_Standing_Patrol_Flare",
			'total_weight', 100,
		}),
	},
	Name = "Walk_Flare",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "Flare",
	group = "Female: Flare",
	id = "Female: Walk_Flare",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "nw_Standing_IdlePassive_Flare",
			'total_weight', 100,
		}),
	},
	Name = "Idle_Flare",
	Unit = "Female",
	VariationGroup = "FlareIdle",
	group = "Female: FlareIdle",
	id = "Female: Idle_Flare",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Idle",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Idle2",
			'Weight', 30,
			'total_weight', 130,
		}),
	},
	Name = "Idle_Combat",
	Unit = "Female",
	VariationGroup = "Infected",
	group = "Female: Infected",
	id = "Female: Idle_Combat",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive3",
			'total_weight', 300,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive4",
			'total_weight', 400,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive5",
			'total_weight', 500,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive6",
			'total_weight', 600,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive7",
			'total_weight', 700,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive8",
			'total_weight', 800,
		}),
	},
	Name = "Idle_Passive",
	Unit = "Female",
	VariationGroup = "Infected",
	group = "Female: Infected",
	id = "Female: Idle_Passive",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Run",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Run2",
			'total_weight', 200,
		}),
	},
	Name = "Run",
	Unit = "Female",
	VariationGroup = "Infected",
	group = "Female: Infected",
	id = "Female: Run",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Walk",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Walk2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Walk3",
			'total_weight', 300,
		}),
	},
	Name = "Walk",
	Unit = "Female",
	VariationGroup = "Infected",
	group = "Female: Infected",
	id = "Female: Walk",
})

PlaceObj('MoveStyle', {
	GameStates = set({
	RainHeavy = false,
	RainLight = false,
}),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Seduce_Walk",
			'total_weight', 100,
		}),
	},
	Name = "SeduceWalk",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "SeduceWalk",
	group = "Female: SeduceWalk",
	id = "Female: SeduceWalk",
})

PlaceObj('MoveStyle', {
	CanPlay = function (self, unit)
		return not IsPlayerEnemy(unit)
	end,
	GameStates = set( "DustStorm" ),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run",
			'Weight', 5,
			'total_weight', 5,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run2",
			'Weight', 5,
			'total_weight', 10,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run3",
			'total_weight', 110,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run4",
			'Weight', 30,
			'total_weight', 140,
		}),
	},
	Name = "Run_DustStorm",
	StepFX = "StepRun",
	Unit = "Female",
	VariationGroup = "Walk",
	Weight = 12,
	group = "Female: Walk",
	id = "Female: Run_DustStorm",
})

PlaceObj('MoveStyle', {
	CanPlay = function (self, unit)
		return not IsPlayerEnemy(unit)
	end,
	GameStates = set( "FireStorm" ),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run",
			'Weight', 5,
			'total_weight', 5,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run2",
			'Weight', 5,
			'total_weight', 10,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run3",
			'total_weight', 110,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run4",
			'Weight', 30,
			'total_weight', 140,
		}),
	},
	Name = "Run_FireStorm",
	StepFX = "StepRun",
	Unit = "Female",
	VariationGroup = "Walk",
	Weight = 12,
	group = "Female: Walk",
	id = "Female: Run_FireStorm",
})

PlaceObj('MoveStyle', {
	CanPlay = function (self, unit)
		return not IsPlayerEnemy(unit)
	end,
	GameStates = set( "RainHeavy" ),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run",
			'Weight', 5,
			'total_weight', 5,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run2",
			'Weight', 5,
			'total_weight', 10,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run3",
			'total_weight', 110,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run4",
			'Weight', 30,
			'total_weight', 140,
		}),
	},
	Name = "Run_RainHeavy",
	StepFX = "StepRun",
	Unit = "Female",
	VariationGroup = "Walk",
	Weight = 12,
	group = "Female: Walk",
	id = "Female: Run_RainHeavy",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Walk",
			'total_weight', 100,
		}),
	},
	Name = "Walk1_TMP",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "Walk",
	Weight = 25,
	group = "Female: Walk",
	id = "Female: Walk1_TMP",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Walk3",
			'total_weight', 100,
		}),
	},
	Name = "Walk3_TMP",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "Walk",
	Weight = 25,
	group = "Female: Walk",
	id = "Female: Walk3_TMP",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_Base",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookLeft",
			'Weight', 15,
			'total_weight', 115,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_BankRight",
			'Weight', 10,
			'total_weight', 125,
		}),
	},
	Name = "Walk_Fast_Neutral",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Female",
	VariationGroup = "Walk",
	group = "Female: Walk",
	id = "Female: Walk_Fast_Neutral",
})

PlaceObj('MoveStyle', {
	GameStates = set({
	DustStorm = false,
	FireStorm = false,
	RainHeavy = false,
}),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_Base",
			'total_weight', 100,
		}),
	},
	Name = "Walk_Normal_Neutral",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Female",
	VariationGroup = "Walk",
	group = "Female: Walk",
	id = "Female: Walk_Normal_Neutral",
})

PlaceObj('MoveStyle', {
	GameStates = set({
	DustStorm = false,
	FireStorm = false,
	RainHeavy = false,
	RainLight = false,
}),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_Base",
			'total_weight', 100,
		}),
	},
	Name = "Walk_Slow_Neutral",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Female",
	VariationGroup = "Walk",
	group = "Female: Walk",
	id = "Female: Walk_Slow_Neutral",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_Carry",
			'total_weight', 100,
		}),
	},
	Name = "Walk_Carry",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "WalkCarry",
	group = "Female: WalkCarry",
	id = "Female: Walk_Carry",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_CarryOnHead_BothHands",
			'total_weight', 100,
		}),
	},
	Name = "Walk_CarryOnHead_BothHands",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "WalkCarry",
	Weight = 0,
	group = "Female: WalkCarry",
	id = "Female: Walk_CarryOnHead_BothHands",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_CarryOnHead_RHand",
			'total_weight', 100,
		}),
	},
	Name = "Walk_CarryOnHead_RHand",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "WalkCarry",
	Weight = 0,
	group = "Female: WalkCarry",
	id = "Female: Walk_CarryOnHead_RHand",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_CarryOnHip_L",
			'total_weight', 100,
		}),
	},
	Name = "Walk_CarryOnHip_L",
	StepFX = "StepWalk",
	Unit = "Female",
	VariationGroup = "WalkCarry",
	Weight = 0,
	group = "Female: WalkCarry",
	id = "Female: Walk_CarryOnHip_L",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle_Combat",
			'total_weight', 100,
		}),
	},
	Name = "CombatIdle",
	Unit = "Hyena",
	VariationGroup = "CombatIdle",
	group = "Hyena: CombatIdle",
	id = "Hyena: CombatIdle",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle3",
			'total_weight', 300,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle5",
			'Weight', 10,
			'total_weight', 310,
		}),
	},
	Name = "Idle",
	Unit = "Hyena",
	VariationGroup = "Idle",
	group = "Hyena: Idle",
	id = "Hyena: Idle",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "lying",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "lying2",
			'total_weight', 200,
		}),
	},
	Name = "Lying",
	Start = "lying_Start",
	Stop = "lying_End",
	Unit = "Hyena",
	VariationGroup = "StandStill",
	Weight = 25,
	group = "Hyena: StandStill",
	id = "Hyena: Lying",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "idle3",
			'total_weight', 300,
		}),
	},
	Name = "StandStill",
	Unit = "Hyena",
	VariationGroup = "StandStill",
	group = "Hyena: StandStill",
	id = "Hyena: StandStill",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Fear_Standing",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Fear_Standing2",
			'total_weight', 200,
		}),
	},
	Name = "FearStanding",
	Start = "civ_Fear_Standing_Start",
	Stop = "civ_Fear_Standing_End",
	Unit = "Male",
	VariationGroup = "Cower",
	group = "Male: Cower",
	id = "Male: FearStanding",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Fear_Cover",
			'total_weight', 100,
		}),
	},
	Name = "FearCover",
	Start = "civ_Fear_Cover_Start",
	Stop = "civ_Fear_Cover_End",
	Unit = "Male",
	VariationGroup = "CowerCover",
	group = "Male: CowerCover",
	id = "Male: FearCover",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "nw_Standing_Patrol_Flare",
			'total_weight', 100,
		}),
	},
	Name = "Walk_Flare",
	StepFX = "StepWalk",
	Unit = "Male",
	VariationGroup = "Flare",
	group = "Male: Flare",
	id = "Male: Walk_Flare",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "nw_Standing_IdlePassive_Flare",
			'total_weight', 100,
		}),
	},
	Name = "Idle_Flare",
	Unit = "Male",
	VariationGroup = "FlareIdle",
	group = "Male: FlareIdle",
	id = "Male: Idle_Flare",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Idle",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Idle2",
			'Weight', 30,
			'total_weight', 130,
		}),
	},
	Name = "Idle_Combat",
	Unit = "Male",
	VariationGroup = "Infected",
	group = "Male: Infected",
	id = "Male: Idle_Combat",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive3",
			'total_weight', 300,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive4",
			'total_weight', 400,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive5",
			'total_weight', 500,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive6",
			'total_weight', 600,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive7",
			'total_weight', 700,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_IdlePassive8",
			'total_weight', 800,
		}),
	},
	Name = "Idle_Passive",
	Unit = "Male",
	VariationGroup = "Infected",
	group = "Male: Infected",
	id = "Male: Idle_Passive",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Run",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Run2",
			'total_weight', 200,
		}),
	},
	Name = "Run",
	Unit = "Male",
	VariationGroup = "Infected",
	group = "Male: Infected",
	id = "Male: Run",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Walk",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Walk2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "inf_Standing_Walk3",
			'total_weight', 300,
		}),
	},
	Name = "Walk",
	Unit = "Male",
	VariationGroup = "Infected",
	group = "Male: Infected",
	id = "Male: Walk",
})

PlaceObj('MoveStyle', {
	GameStates = set({
	RainHeavy = false,
	RainLight = false,
}),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Seduce_Walk",
			'total_weight', 100,
		}),
	},
	Name = "SeduceWalk",
	StepFX = "StepWalk",
	Unit = "Male",
	VariationGroup = "SeduceWalk",
	group = "Male: SeduceWalk",
	id = "Male: SeduceWalk",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_nw_IdlePassive_TalkGesturing2",
			'total_weight', 100,
		}),
	},
	Name = "sp_Ernie_PierreLucTalk_Luc",
	Unit = "Male",
	VariationGroup = "SetPiece",
	group = "Male: SetPiece",
	id = "Male: sp_Ernie_PierreLucTalk_Luc",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_ar_IdlePassive_Talk",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_ar_IdlePassive_Talk2",
			'total_weight', 200,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_ar_IdlePassive_Talk3",
			'total_weight', 300,
		}),
	},
	Name = "sp_ar_Talking_Calm",
	Unit = "Male",
	VariationGroup = "SetPiece",
	group = "Male: SetPiece",
	id = "Male: sp_ar_Talking_Calm",
})

PlaceObj('IdleStyle', {
	Animations = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_nw_IdlePassive_Talk",
			'Weight', 30,
			'total_weight', 30,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_nw_IdlePassive_Talk2",
			'Weight', 30,
			'total_weight', 60,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_nw_IdlePassive_Talk3",
			'Weight', 30,
			'total_weight', 90,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_nw_IdlePassive_Talk4",
			'Weight', 10,
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "sp_nw_IdlePassive_TalkGesturing2",
			'Weight', 15,
			'total_weight', 115,
		}),
	},
	Name = "sp_nw_Talking_Calm",
	Unit = "Male",
	VariationGroup = "SetPiece",
	group = "Male: SetPiece",
	id = "Male: sp_nw_Talking_Calm",
})

PlaceObj('MoveStyle', {
	CanPlay = function (self, unit)
		return not IsPlayerEnemy(unit)
	end,
	GameStates = set( "DustStorm" ),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run",
			'Weight', 5,
			'total_weight', 5,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run2",
			'Weight', 5,
			'total_weight', 10,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run3",
			'total_weight', 110,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run4",
			'Weight', 30,
			'total_weight', 140,
		}),
	},
	Name = "Run_DustStorm",
	StepFX = "StepRun",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 12,
	group = "Male: Walk",
	id = "Male: Run_DustStorm",
})

PlaceObj('MoveStyle', {
	CanPlay = function (self, unit)
		return not IsPlayerEnemy(unit)
	end,
	GameStates = set( "FireStorm" ),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run",
			'Weight', 5,
			'total_weight', 5,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run2",
			'Weight', 5,
			'total_weight', 10,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run3",
			'total_weight', 110,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run4",
			'Weight', 30,
			'total_weight', 140,
		}),
	},
	Name = "Run_FireStorm",
	StepFX = "StepRun",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 12,
	group = "Male: Walk",
	id = "Male: Run_FireStorm",
})

PlaceObj('MoveStyle', {
	CanPlay = function (self, unit)
		return not IsPlayerEnemy(unit)
	end,
	GameStates = set( "RainHeavy" ),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run",
			'Weight', 5,
			'total_weight', 5,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run2",
			'Weight', 5,
			'total_weight', 10,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run3",
			'total_weight', 110,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Run4",
			'Weight', 30,
			'total_weight', 140,
		}),
	},
	Name = "Run_RainHeavy",
	StepFX = "StepRun",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 12,
	group = "Male: Walk",
	id = "Male: Run_RainHeavy",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Standing_Walk4",
			'total_weight', 100,
		}),
	},
	MoveStart = "civ_WalkNormal_Neutral_Start",
	MoveStop_FootLeft = "civ_WalkNormal_Neutral_Stop_L",
	MoveStop_FootRight = "civ_WalkNormal_Neutral_Stop_R",
	Name = "Walk4_TMP",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 25,
	group = "Male: Walk",
	id = "Male: Walk4_TMP",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_Base",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookBack",
			'Weight', 6,
			'total_weight', 106,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookLeft",
			'Weight', 7,
			'total_weight', 113,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookUp",
			'Weight', 5,
			'total_weight', 118,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_ScratchHead",
			'Weight', 8,
			'total_weight', 126,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookRight",
			'Weight', 7,
			'total_weight', 133,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_ShakeFoot_L",
			'Weight', 6,
			'total_weight', 139,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_WipeForehead_R",
			'Weight', 6,
			'total_weight', 145,
		}),
	},
	MoveStart = "civ_WalkFast_Neutral_Start",
	MoveStart_Left = "civ_WalkFast_Neutral_TurnOnSpot_L",
	MoveStart_Right = "civ_WalkFast_Neutral_TurnOnSpot_R",
	MoveStop_FootLeft = "civ_WalkFast_Neutral_Stop_L",
	MoveStop_FootRight = "civ_WalkFast_Neutral_Stop_R",
	Name = "Walk_Fast_Neutral",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 50,
	group = "Male: Walk",
	id = "Male: Walk_Fast_Neutral",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_Base",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookBack",
			'Weight', 80,
			'total_weight', 180,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookLeft",
			'Weight', 7,
			'total_weight', 187,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_ScratchHead",
			'Weight', 12,
			'total_weight', 199,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_LookRight",
			'Weight', 7,
			'total_weight', 206,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkFast_Neutral_WipeForehead_R",
			'Weight', 6,
			'total_weight', 212,
		}),
	},
	MoveStart = "civ_WalkFast_Neutral_Start",
	MoveStart_Left = "civ_WalkFast_Neutral_TurnOnSpot_L",
	MoveStart_Right = "civ_WalkFast_Neutral_TurnOnSpot_R",
	MoveStop_FootLeft = "civ_WalkFast_Neutral_Stop_L",
	MoveStop_FootRight = "civ_WalkFast_Neutral_Stop_R",
	Name = "Walk_Fast_Paranoid",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 30,
	group = "Male: Walk",
	id = "Male: Walk_Fast_Paranoid",
})

PlaceObj('MoveStyle', {
	GameStates = set({
	DustStorm = false,
	FireStorm = false,
	RainHeavy = false,
}),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_Base",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_KickPebbleStrong_R",
			'Weight', 8,
			'total_weight', 108,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_LookLeft",
			'Weight', 10,
			'total_weight', 118,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_LookRight",
			'Weight', 10,
			'total_weight', 128,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_LookUp",
			'Weight', 6,
			'total_weight', 134,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_ScratchHead",
			'Weight', 5,
			'total_weight', 139,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_ShakeFoot_L",
			'Weight', 7,
			'total_weight', 146,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkNormal_Neutral_WipeForehead_R",
			'Weight', 4,
			'total_weight', 150,
		}),
	},
	MoveStart = "civ_WalkNormal_Neutral_Start",
	MoveStart_Left = "civ_WalkNormal_Neutral_TurnOnSpot_L",
	MoveStart_Right = "civ_WalkNormal_Neutral_TurnOnSpot_R",
	MoveStop_FootLeft = "civ_WalkNormal_Neutral_Stop_L",
	MoveStop_FootRight = "civ_WalkNormal_Neutral_Stop_R",
	Name = "Walk_Normal_Neutral",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Male",
	VariationGroup = "Walk",
	group = "Male: Walk",
	id = "Male: Walk_Normal_Neutral",
})

PlaceObj('MoveStyle', {
	GameStates = set({
	DustStorm = false,
	FireStorm = false,
	RainHeavy = false,
	RainLight = false,
}),
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_Base",
			'total_weight', 100,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_KickPebbleLight_L",
			'Weight', 9,
			'total_weight', 109,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_LookLeft",
			'Weight', 10,
			'total_weight', 119,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_LookRight",
			'Weight', 7,
			'total_weight', 126,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_LookUp",
			'Weight', 5,
			'total_weight', 131,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_ScratchHead",
			'Weight', 6,
			'total_weight', 137,
		}),
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_WalkSlow_Neutral_ShakeFoot_L",
			'Weight', 8,
			'total_weight', 145,
		}),
	},
	MoveStart = "civ_WalkSlow_Neutral_Start",
	MoveStart_Left = "civ_WalkSlow_Neutral_TurnOnSpot_L",
	MoveStart_Right = "civ_WalkSlow_Neutral_TurnOnSpot_R",
	MoveStop_FootLeft = "civ_WalkSlow_Neutral_Stop_L",
	MoveStop_FootRight = "civ_WalkSlow_Neutral_Stop_R",
	Name = "Walk_Slow_Neutral",
	StepFX = "StepWalk",
	TurnOnSpot_Left = "civ_Standing_TurnOnSpot_L",
	TurnOnSpot_Right = "civ_Standing_TurnOnSpot_R",
	Unit = "Male",
	VariationGroup = "Walk",
	Weight = 40,
	group = "Male: Walk",
	id = "Male: Walk_Slow_Neutral",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_Carry",
			'total_weight', 100,
		}),
	},
	Name = "Walk_Carry",
	StepFX = "StepWalk",
	Unit = "Male",
	VariationGroup = "WalkCarry",
	group = "Male: WalkCarry",
	id = "Male: Walk_Carry",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_CarryOnHead_BothHands",
			'total_weight', 100,
		}),
	},
	Name = "Walk_CarryOnHead_BothHands",
	StepFX = "StepWalk",
	Unit = "Male",
	VariationGroup = "WalkCarry",
	Weight = 0,
	group = "Male: WalkCarry",
	id = "Male: Walk_CarryOnHead_BothHands",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_CarryOnHead_RHand",
			'total_weight', 100,
		}),
	},
	Name = "Walk_CarryOnHead_RHand",
	StepFX = "StepWalk",
	Unit = "Male",
	VariationGroup = "WalkCarry",
	Weight = 0,
	group = "Male: WalkCarry",
	id = "Male: Walk_CarryOnHead_RHand",
})

PlaceObj('MoveStyle', {
	Move = {
		PlaceObj('AnimationStyleAnim', {
			'Animation', "civ_Walk_CarryOnHip_L",
			'total_weight', 100,
		}),
	},
	Name = "Walk_CarryOnHip_L",
	StepFX = "StepWalk",
	Unit = "Male",
	VariationGroup = "WalkCarry",
	Weight = 0,
	group = "Male: WalkCarry",
	id = "Male: Walk_CarryOnHip_L",
})

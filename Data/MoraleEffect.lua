-- ========== GENERATED BY MoraleEffect Editor DO NOT EDIT MANUALLY! ==========

PlaceObj('MoraleEffect', {
	Activate = function (self, unit)
		unit:AddStatusEffect("Berserk")
	end,
	Activation = "negative",
	group = "Default",
	id = "AllyBerserk",
})

PlaceObj('MoraleEffect', {
	Activate = function (self, unit)
		unit:AddStatusEffect("Panicked")
	end,
	Activation = "negative",
	group = "Default",
	id = "AllyPanic",
})

PlaceObj('MoraleEffect', {
	Activate = function (self, unit)
		unit:AddStatusEffect("Berserk")
	end,
	AppliedTo = "enemy",
	group = "Default",
	id = "EnemyBerserk",
})

PlaceObj('MoraleEffect', {
	Activate = function (self, unit)
		local targets = unit
		assert(type(targets) == "table" and not IsValit(targets))
		for _, unit in ipairs(targets) do
			unit:AddStatusEffect("Panicked")
		end
	end,
	AppliedTo = "custom",
	GetTargetUnit = function (self, team)
		return GetEnemyPanicTargets(team)
	end,
	group = "Default",
	id = "EnemyPanic",
})

PlaceObj('MoraleEffect', {
	Activate = function (self, unit)
		local targets = unit
		assert(type(targets) == "table" and not IsValit(targets))
		for _, unit in ipairs(targets) do
			unit.retreating = true
		end
		ShowTacticalNotification("enemyAttack", false, T(328136290378, "An enemy is retreating"))
	end,
	AppliedTo = "custom",
	GetTargetUnit = function (self, team)
		return GetEnemyPanicTargets(team)
	end,
	Weight = 150,
	group = "Default",
	id = "EnemyRetreat",
})

PlaceObj('MoraleEffect', {
	Activate = function (self, unit)
		unit:AddStatusEffect("Heroic")
	end,
	Activation = "negative",
	AppliedTo = "custom",
	GetTargetUnit = function (self, team)
		local units = table.icopy(team.units)
		
		units = table.ifilter(units, function(idx, unit) return not unit:IsIncapacitated() and unit.species == "Human" and unit:IsAware() end)
		
		local bestMerc
		for _, unit in ipairs(units) do
			if not bestMerc then
				bestMerc = unit
			elseif bestMerc:GetPersonalMorale() < unit:GetPersonalMorale() then
				bestMerc = unit
			end
		end
			
		local morale = bestMerc and bestMerc:GetPersonalMorale()
		if morale then
			for idx, unit in ipairs(units) do
				if unit:GetPersonalMorale() ~= morale then
					table.remove(units, idx)
				end
			end
		end
				
		if #units > 0 then
			return table.interaction_rand(units, "Heroic")
		end
	end,
	group = "Default",
	id = "HeroicReversal",
})


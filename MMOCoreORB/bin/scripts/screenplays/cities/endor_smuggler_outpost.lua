EndorSmugglerOutpostScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "EndorSmugglerOutpostScreenPlay",

	planet = "endor",

	patrolMobiles = {
		--{patrolPoints, template, level, x, z, y, direction, cell, mood},
		{"r3_1", "r3", 60, -950.705, 73, 1542.69, 331.775, 0, "neutral"},
	},

	patrolPoints = {
		--table_name = {{x, z, y, cell, delayAtNextPoint}} 1 = no delay 0 = delay}
		r3_1 = {{-951, 73, 1542, 0, 1}, {-905, 76, 1586, 0, 1}, {-904, 80, 1612, 0, 1}, {-886, 76, 1600, 0, 1}, {-880, 76, 1589, 0, 1}, {-858, 76, 1584, 0, 1}, {-854, 79, 1600, 0, 1}, {-858, 76, 1584, 0, 1}, {-885, 76, 1586, 0, 1}},
	},

	stationaryCommoners = {"commoner", "commoner_fat", "commoner_old"},
	stationaryNpcs = {"bodyguard", "bounty_hunter", "businessman", "commoner_technician", "contractor", "entertainer", "explorer", "fringer", "gambler", "medic", "mercenary", "miner", "noble", "pilot", "rancher", "scientist", "slicer"},

	--{respawn, x, z, y, direction, cell, mood}
	stationaryMobiles = {
		{1, -899.977, 78, 1548.09, 107.809, 0, ""},
		{1, -828.009, 76, 1573.28, 320.402, 0, ""},
		{1, -864.293, 79.5001, 1598.78, 184.686, 0, ""},
		{1, -875.462, 80.0597, 1571.89, 84.1865, 0, ""},
		{1, -956, 73, 1554, 135, 0, ""},
		{1, -874.656, 80, 1564.76, 270, 0, ""},
		{1, -845.301, 79.5, 1599.49, 197.393, 0, ""},
		{1, -829.243, 76, 1567.61, 95.886, 0, ""},
	},
}

registerScreenPlay("EndorSmugglerOutpostScreenPlay", true)

function EndorSmugglerOutpostScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
		self:spawnPatrolMobiles()
		self:spawnStationaryMobiles()
	end
end

function EndorSmugglerOutpostScreenPlay:spawnMobiles()
	--mission term building
	local pNpc = spawnMobile("endor", "commoner_technician",60,3.5,0.1,3.9,0,3605972)
	self:setMoodString(pNpc, "sad")

	--tavern
	local pNpc = spawnMobile("endor", "commoner_old",60,1.0,0.7,-4.4,0,6645605)
	self:setMoodString(pNpc, "npc_sitting_chair")
end

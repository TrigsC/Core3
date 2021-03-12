DathomirScienceOutpostScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "DathomirScienceOutpostScreenPlay",

	planet = "dathomir",

	patrolMobiles = {
		--{patrolPoints, template, level, x, z, y, direction, cell, mood},
		{"cll8_1", "cll8_binary_load_lifter", 60, -107.307, 18, -1603.07, 275.094, 0, ""},
		{"r3_1", "r3", 60, -78.3142, 18, -1629.93, 144.919, 0, ""},
		{"r4_1", "r4", 60, -134.195, 18, -1599.14, 45.5678, 0, ""},
	},

	patrolPoints = {
		--table_name = {{x, z, y, cell, delayAtNextPoint}} 1 = no delay 0 = delay
		cll8_1 = {{-107, 18, -1603, 0, 0}, {-128, 18, -1589, 0, 1}, {-107, 18, -1603, 0, 0}, {-95, 18, -1630, 0, 1}},
		r3_1 = {{-78, 18, -1629, 0, 1}, {-68, 18, -1607, 0, 1}, {-91, 18, -1587, 0, 1}, {-80, 18, -1573, 0, 1}, {-51, 18, -1596, 0, 0}},
		r4_1 = {{-134.8, 18, -1599.1, 0, 0}, {-122, 18, -1610, 0, 1}, {-134.8, 18, -1599.1, 0, 0}, {-134, 18, -1588, 0, 1}},
	},

	stationaryCommoners = {"commoner", "commoner_fat", "commoner_old"},
	stationaryNpcs = {"bodyguard", "bounty_hunter", "businessman", "commoner_technician", "explorer", "fringer", "gambler", "medic", "mercenary", "miner",  "pilot", "scientist", "slicer"},

	--{respawn, x, z, y, direction, cell, mood}
	stationaryMobiles = {
		{1, -70.8878, 18, -1646.08, 315.408, 0, ""},
		{1, -64.4958, 18, -1581.42, 63.9635, 0, ""},
		{1, -79.6404, 18, -1585.09, 131.623, 0, ""},
		{1, -60.7253, 18, -1596.21, 88.2297, 0, ""},
		{1, -37.0445, 18, -1587.75, 47.6817, 0, ""},
		{1, -78, 18, -1614, 285, 0, ""},
		{1, -98.9262, 18, -1590.29, 239.412, 0, ""},
		{1, -68.4, 18, -1621.0, 180, 0, "conversation"},
		{1, -69.1, 18, -1622.1, 45, 0, "conversation"},
		{1, -136.034, 18, -1592.07, 62.5196, 0, ""},
	},
}

registerScreenPlay("DathomirScienceOutpostScreenPlay", true)

function DathomirScienceOutpostScreenPlay:start()
	if (isZoneEnabled("dathomir")) then
		self:spawnMobiles()
		self:spawnPatrolMobiles()
		self:spawnStationaryMobiles()
	end
end

function DathomirScienceOutpostScreenPlay:spawnMobiles()

	--In a building
	local pNpc = spawnMobile("dathomir", "medic",60,5.1,0.6,-2.2,-51,2835552)
	self:setMoodString(pNpc, "sad")
	pNpc = spawnMobile("dathomir", "contractor",60,6.3,0.6,-6.4,-133,2835573)
	self:setMoodString(pNpc, "nervous")

	--Outside
	spawnMobile("dathomir", "mercenary", 60, -43.9919, 18, -1585.86, 220.77, 0)
	spawnMobile("dathomir", "informant_npc_lvl_3", 0,-68,18,-1565,270,0)
	pNpc = spawnMobile("dathomir", "arnecio_ulvaw_op",60,4.06465,0.624999,2.34456,30.9406,2835570)
	self:setMoodString(pNpc, "neutral")
end

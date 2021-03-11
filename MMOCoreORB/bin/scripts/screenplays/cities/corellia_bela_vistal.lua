CorelliaBelaVistalScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CorelliaBelaVistalScreenPlay",

	planet = "corellia",

	patrolMobiles = {
		--{patrolPoints, template, level, x, z, y, direction, cell, mood},
		{"r4_1", "r4", 1, 6715, 330, -5903, 0, 0, "calm"},
		{"r2_1", "r2", 1, 6859, 315, -5706, 0, 0, "calm"},
		{"cll8_1", "cll8_binary_load_lifter", 1, 6826, 315, -5778, 0, 0, ""}
	},

	patrolPoints = {
		--table_name = {{x, z, y, cell, delayAtNextPoint}} 1 = no delay 0 = delay}
		r4_1 = {{6715, 330, -5903, 0, 1}, {6693, 330, -5920, 0, 1}, {6690, 330, -5906, 0, 1}, {6647, 330, -5905, 0, 1}},
		r2_1 = {{6858, 315, -5688, 0, 1}, {6859, 315, -5700, 0, 0}, {6816, 315, -5699, 0, 1}, {6861, 315, -5700, 0, 1}, {6859, 315, -5740, 0, 0}},
		cll8_1 = {{6826, 315, -5807, 0, 1}, {6825, 315, -5725, 0, 1}, {6769, 315, -5725, 0, 1}, {6770, 315, -5736, 0, 1}, {6817, 315, -5735, 0, 1}}
	},

	stationaryCommoners = {"commoner", "commoner_fat", "commoner_old"},
	stationaryNpcs = {"artisan", "bodyguard", "bothan_diplomat", "bounty_hunter", "businessman", "commoner_technician", "contractor", "entertainer", "explorer", "farmer", "farmer_rancher", "fringer", "gambler", "info_broker", "medic", "mercenary", "miner", "noble", "official", "pilot", "rancher", "scientist", "slicer"},

	--{respawn, x, z, y, direction, cell, mood}
	stationaryMobiles = {
		{1, 6823.1, 315, -5610.5, 225, 0, "conversation"},
		{1, 6821.55, 314.999, -5611.9, 50, 0, "conversation"},
		{1, 6834.25, 315, -5577.61, 150, 0, ""},
		{1, 6896.18, 330, -5577.91, 290, 0, ""},
		{1, 6867.23, 315, -5758.29, 338, 0, ""},
		{1, 6810.15, 315, -5699.05, 137, 0, ""},
		{1, 6798.04, 315, -5731.94, 270, 0, ""},
		{1, 6724.41, 330, -5909.35, 213, 0, ""},
	},

}

registerScreenPlay("CorelliaBelaVistalScreenPlay", true)

function CorelliaBelaVistalScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnStationaryMobiles()
		self:spawnPatrolMobiles()
	end
end

function CorelliaBelaVistalScreenPlay:spawnSceneObjects()

	--Guild Hall regular
	spawnSceneObject("corellia", "object/tangible/loot/simple_kit/paint_cartridge.iff", 5.3, 2.3, 10.2, 2365923, math.rad(-19) )
	--Hotel
	spawnSceneObject("corellia", "object/static/structure/general/droid_r4_powerdown.iff", 6.0, 1.0, 20.2, 2365805, math.rad(143) )
end

function CorelliaBelaVistalScreenPlay:spawnMobiles()

	--Cloning Facility
	local pNpc = spawnMobile("corellia", "surgical_droid_21b",60,3.1,0.1,11.5,0,2365903)
	self:setMoodString(pNpc, "neutral")

	--Cantina
	spawnMobile("corellia", "noble", 60, 5.80982, -0.894992, -5.41349, 248.205, 3375355)
	spawnMobile("corellia", "businessman", 60, -10.2935, -0.895782, 7.13264, 339.313, 3375355)

	--Guild Hall 6857 -5783
	spawnMobile("corellia", "businessman", 60, 3.32, 1.13306, -8.49, 228.007, 2365769)
	spawnMobile("corellia", "brawler", 300, -14.01, 1.13306, -8.53, 120.004, 2365770)
	spawnMobile("corellia", "trainer_brawler", 0, -11, 1.13306, -14,0, 2365770)
	spawnMobile("corellia", "trainer_marksman", 0, 0, 1.13306, -14, 0, 2365769)

	--Guild Hall regular
	pNpc = spawnMobile("corellia", "artisan",60,4.7,2.3,10.4,-4,2365923)
	self:setMoodString(pNpc, "npc_use_terminal_high")
	pNpc = spawnMobile("corellia", "contractor",60,-8.8,1.7,-14.5,45,2365931)
	self:setMoodString(pNpc, "npc_sitting_table_eating")
	pNpc = spawnMobile("corellia", "businessman",60,-5.7,1.8,-14.7,-39,2365931)
	self:setMoodString(pNpc, "npc_sitting_chair")

	--Hotel
	pNpc = spawnMobile("corellia", "noble",60,18.4,1.6,12.3,180,2365808)
	self:setMoodString(pNpc, "neutral")
	pNpc = spawnMobile("corellia", "bartender",60,21.2,1.6,12.3,180,2365808)
	self:setMoodString(pNpc, "entertained")
	pNpc = spawnMobile("corellia", "entertainer",60,19.6,1.3,5.8,83,2365808)
	self:setMoodString(pNpc, "happy")
	pNpc = spawnMobile("corellia", "sullustan_male",60,21.0,1.3,6.1,-96,2365808)
	self:setMoodString(pNpc, "npc_sitting_chair")
	pNpc = spawnMobile("corellia", "commoner_technician",60,-6.7,1.0,19.5,-125,2365805)
	self:setMoodString(pNpc, "npc_use_terminal_high")
	pNpc = spawnMobile("corellia", "mouse_droid",60,-6.4,1.0,16.5,103,2365806)
	self:setMoodString(pNpc, "neutral")

	--Outside
	spawnMobile("corellia", "criminal", 300, 6871.34, 315, -5753.42, 355.947, 0)
	spawnMobile("corellia", "corsec_trooper", 360, 6847.6, 315, -5838.6, -1, 0)
	spawnMobile("corellia", "corsec_trooper", 360, 6852.5, 315, -5838.8, -24, 0)
	spawnMobile("corellia", "corsec_trooper", 360, 6855.7, 315, -5837.1, -34, 0)
	spawnMobile("corellia", "corsec_trooper", 360, 6860.3, 315, -5833.9, -57, 0)
	spawnMobile("corellia", "imperial_recruiter", 60,6718.8,315.0,-5804.6,-174,0)

	--Misc
	spawnMobile("corellia", "informant_npc_lvl_1", 0, 20.9951, -0.894992, 21.3608, 100, 3375357)
	spawnMobile("corellia", "informant_npc_lvl_1", 0, 6687, 315, -5594, 0, 0)
	spawnMobile("corellia", "informant_npc_lvl_1", 0, 6733, 314.9, -5609, 90, 0)
	spawnMobile("corellia", "informant_npc_lvl_1", 0, 6832, 315, -5545, 270, 0)
	spawnMobile("corellia", "informant_npc_lvl_1", 0, 6901, 330, -5606, 0, 0)
	spawnMobile("corellia", "informant_npc_lvl_2", 0, 6775, 315, -5487, 150, 0)
	spawnMobile("corellia", "informant_npc_lvl_2", 0, 6876, 330, -5466, 0, 0)
	spawnMobile("corellia", "informant_npc_lvl_3", 0, 6860, 315, -5761, 45 ,0)

	--Trainers
	spawnMobile("corellia", "trainer_architect", 0, 11, 1.13306, -14, 0, 2365800)
	spawnMobile("corellia", "trainer_armorsmith", 0, -12, 1.1, 5, 180, 2365799)
	spawnMobile("corellia", "trainer_artisan", 0, 0, 1.13306, -14, 0, 2365947)
	spawnMobile("corellia", "trainer_droidengineer", 0, -11, 1.13306, -14, 0, 2365802)
	spawnMobile("corellia", "trainer_merchant", 0, 12, 1.13306, 6, 180, 2365798)
	spawnMobile("corellia", "trainer_scout", 0, -12, 1.13306, 5.5, 180, 2365767)
	spawnMobile("corellia", "trainer_weaponsmith", 0, -2.5, 1.13306, -8.4, 91, 2365801)
	pNpc = spawnMobile("corellia", "junk_dealer", 0, -14.2, 1.1, 2.7, 103, 2365767)

	--Outside Trainers
	spawnMobile("corellia", "trainer_artisan", 0, 6755.99, 314.994, -5655.01, 269, 0)
	spawnMobile("corellia", "trainer_entertainer", 0, 6829, 330, -5429, 184, 0)
	spawnMobile("corellia", "trainer_marksman", 0,6770,315,-5714,-100,0)
	spawnMobile("corellia", "trainer_scout", 0, 6737.85, 315, -5491.3, 31, 0)
	spawnMobile("corellia", "trainer_scout",  0, 6724, 315, -5682, 0, 0)

	pNpc = spawnMobile("corellia", "bartender",60,8.54,-0.894992,0.14,87.0026,3375355)
	self:setMoodString(pNpc, "neutral")
	pNpc = spawnMobile("corellia", "businessman",60,-6.56842,-0.894996,21.9012,135.001,3375361)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "contractor",60,-5.46842,-0.894996,21.9012,180.003,3375361)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "bounty_hunter",60,21.6023,-0.894996,-18.5913,360.011,3375356)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "stormtrooper_captain",400,6854.5,315,-5696.6,87,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper_squad_leader",400,6650.38,330,-5938.43,280.869,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "specialist_noncom",400,6830.18,314.823,-5816.91,187.167,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "imperial_army_captain",400,6820.49,315,-5743.53,353.468,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "imperial_army_captain",400,6832.21,315,-5811.19,189.637,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "comm_operator",60,-42.3991,0.105009,-24.3411,360.011,3375367)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "commoner",60,-42.3991,0.105009,-23.2411,180.016,3375367)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "imperial_sergeant",400,6712.78,315,-5810.38,112.467,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "imperial_sergeant",400,6795.21,315,-5702.92,63.9209,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "imperial_sergeant",400,6823.92,315,-5597.88,121.846,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "imperial_sergeant_major",400,6908.17,330,-5608.54,27.4568,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "imperial_staff_sergeant",400,6909.29,330,-5606.48,204.967,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "info_broker",60,21.6023,-0.894996,-17.4913,180.012,3375356)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "medic",60,-43.4991,0.105009,-23.2411,135.007,3375367)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "mercenary",60,-5.46842,-0.894998,20.8012,0,3375361)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6727.1,315,-5809.9,165,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6707.89,315,-5814.25,131.647,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6794.42,315,-5696.6,90.5594,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6826.7,315,-5820.68,309.206,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6825.35,315,-5620.37,277.216,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6842.92,315,-5604.11,56.0358,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6852,315,-5831.51,128.695,0)
	self:setMoodString(pNpc, "npc_imperial")
	pNpc = spawnMobile("corellia", "stormtrooper",400,6837.95,315,-5806.84,302.784,0)
	self:setMoodString(pNpc, "npc_imperial")
	spawnMobile("corellia", "junk_malik", 0, 6969.06, 330, -5588.66, 105, 0)
	pNpc = spawnMobile("corellia", "junk_dealer", 0, 6840.98, 315, -5630.49, -47, 0)
	if pNpc ~= nil then
		AiAgent(pNpc):setConvoTemplate("junkDealerFineryConvoTemplate")
	end
	spawnMobile("corellia", "junk_dealer", 0, 6756.79, 315, -5779.1, 96, 0)
end

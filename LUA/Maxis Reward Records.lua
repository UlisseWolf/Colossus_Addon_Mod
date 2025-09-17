----------------------------------------------------------------------
--  This file defines things relevant to 'reward' advice resources.
----------------------------------------------------------------------
dofile("adv_cityplanning.lua")

----------------------------------------------------------------------
-- Advice fields 

--type      = advice_types . cityplanning,
--mood      = advice_moods . NEUTRAL,
--priority  = 100, -- up to a 100
--title        = "UNDEFINED title : from base advice structure",
--message = "UNDEFINED message : from base advice structure",
--news       = "UNDEFINED news : from base advice structure",
--frequency   = 35, -- in days
--timeout   = 45, -- in days
--trigger   = "1",
--once   = 1, -- trigger the advice only once
--introduction   = 1, -- the advice is an introduction for the acvisor
-- news_only = 0, -- set to 1 for news-flipper messages only 
-- event = 0, -- this has to be a valid event ID (see const file for the event table.)
-- condition = function ... -- this is a function for reward conditions ( ask Talin about any details)

------------ Reward records ----

------------ Reward record Mayor's House----
--game.g_population < tuning_constants.MAYOR_HOUSE_POP or game.ga_mayor_rating < tuning_constants.MAYOR_HOUSE_MR
a = create_reward_cityplanning('031F0000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR_HOUSE_POP) then
		return  [[text@aa81d58c]]
else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d302d]]
a.message   = [[text@aa5d3031]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Private School 1----
--game.g_city_r3_population < 500 or game.ga_school_grade > 85
a = create_reward_cityplanning('DD4CC45D')
function a.condition()
	if (not missions_completed( { 'ec0ad275'} ) and ( game.g_city_r3_population < 750 or game.ga_school_grade > 90)) then
		return  reward_state.HIDDEN
else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ca5d3ade]]
a.message   = [[text@4a5d3ae1]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Private School 2----
--game.g_city_r3_population < 2500 or game.ga_school_grade > 85 or game.reward_instance_count('03180000') <1
a = create_reward_cityplanning('90DA01B2')
function a.condition()
	if (game.g_city_r3_population < 3750 or game.ga_school_grade > 90 or game.reward_instance_count('03180000') <1) then
		return  reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@2a5d3ae5]]
a.message   = [[text@ca5d3ae8]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Private School 3----
--game.g_city_r3_population < 5500 or game.ga_school_grade > 85 or game.reward_instance_count('03790000') <1
a = create_reward_cityplanning('DC7DE8E7')
function a.condition()
	if (game.g_city_r3_population < 7500 or game.ga_school_grade > 90 or game.reward_instance_count('03790000') <1) then
		return  reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ca5d3aeb]]
a.message   = [[text@2a5d3af0]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Main Branch Library----
--game.g_city_r_population < tuning_constants.BIGLIBRARY_POP or game.ga_mayor_rating < tuning_constants.BIGLIBRARY_MR or game.g_num_libraries < tuning_constants.BIGLIBRARY_NUM_LIBRARIES or game.ga_library_grade < tuning_constants.BIGLIBRARY_LIBRARY_GRADE
a = create_reward_cityplanning('F54BEA49')
function a.condition()
	if (game.g_city_r_population < tuning_constants.BIGLIBRARY_POP or game.ga_mayor_rating < tuning_constants.BIGLIBRARY_MR or game.g_num_libraries < tuning_constants.BIGLIBRARY_NUM_LIBRARIES or game.ga_library_grade < tuning_constants.BIGLIBRARY_LIBRARY_GRADE) then
		return [[text@ca81d64d]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@4a5d3af3]]
a.message   = [[text@2a5d3af6]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Radio Station----
--game.g_population < tuning_constants.RADIO_POP or game.ga_mayor_rating < tuning_constants.RADIO_MR
a = create_reward_cityplanning('03330000')
function a.condition()
	if (not missions_completed( { '8c03ec4a'} ) and ( game.g_population < tuning_constants.RADIO_POP or game.ga_mayor_rating < tuning_constants.RADIO_MR)) then
		return [[text@6a81d5d8]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ea5d3a4a]]
a.message   = [[text@0a5d3a4e]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Tourist Trap----
a = create_reward_cityplanning('032d0000')
function a.condition()
	if (not missions_completed( { 'ec143370'} ) and ( game.g_region_r_population < tuning_constants.TOURISTTRAP_REGION_POP or game.g_num_cities_connected_indirectly < tuning_constants.TOURISTTRIP_NUM_CITIES_REGION - 1 or game.g_num_cities_connected < tuning_constants.TOURISTTRAP_NUM_CITIES_CONNECTED)) then
		return [[text@6a81d5fc ]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ea5d3a8b]]
a.message   = [[text@ca5d3a90]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Major Art Museum----
a = create_reward_cityplanning('AE4A3810')
function a.condition()
	if (not missions_completed( { '4c1d3cf6'} ) and ( (game.g_city_r3_population + game.g_city_r2_population) < tuning_constants.ARTMUSEUM_POP_RH_AND_RM or game.ga_mayor_rating < tuning_constants.ARTMUSEUM_MR or game.g_num_museums < tuning_constants.ARTMUSEUM_NUM_MUSEUMS or game.ga_museum_grade < tuning_constants.ARTMUSEUM_MUSEUM_GRADE)) then
		return [[text@6a81d60a]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d3aa3]]
a.message   = [[text@2a5d3aa6]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Courthouse----
a = create_reward_cityplanning('03220000')
function a.condition()
	if (not missions_completed( { '6c0ada11'} ) and ( game.g_population < tuning_constants.COURTHOUSE_POP or game.ga_mayor_rating < tuning_constants.COURTHOUSE_MR or (game.reward_instance_count('03C00000') <1 and game.reward_instance_count('03C10000') <1 and game.reward_instance_count('03C20000') <1))) then
		return [[text@0a81d59f]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d3054]]
a.message   = [[text@6a5d3058]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

------------ Reward record UnivAdminTower----
---.5 * (game.g_city_r1_population) + (game.g_city_r2_population) + 2 * (game.g_city_r3_population) < tuning_constants.UNIV_POP_RH_AND_RM or game.ga_mayor_rating < tuning_constants.UNIV_MR or game.ga_school_grade < tuning_constants.UNIV_SCHOOL_GRADE
a = create_reward_cityplanning('5E93F33A')
function a.condition()
	if (not missions_completed( { '4c14354a'} ) and ( game.g_city_r1_population + game.g_city_r2_population + game.g_city_r3_population < tuning_constants.UNIV_POP_RH_AND_RM or game.ga_mayor_rating < tuning_constants.UNIV_MR or game.ga_school_grade < tuning_constants.UNIV_SCHOOL_GRADE or game.reward_instance_count('033d0000')>0)) then
		return [[text@8a81d5f1]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ca5d3a6f]]
a.message   = [[text@ea5d3a73]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Bureau of Bureaucracy----
--game.g_population < tuning_constants.BOFB_POP or game.ga_mayor_rating < tuning_constants.BOFB_MR or game.reward_instance_count('03220000') <1 or game.g_education_funding_p < 101 or game.g_health_funding_p < 101
a = create_reward_cityplanning('03310000')
function a.condition()
	if (not missions_completed( { 'cc14331d'} ) and ( game.g_population < tuning_constants.BOFB_POP or game.ga_mayor_rating < tuning_constants.BOFB_MR or game.reward_instance_count('03220000') <1 or game.g_education_funding_p < 101 or game.g_health_funding_p < 101)) then
		return [[text@0a81d5a4]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@2a5d305d ]]
a.message   = [[text@2a5d3061 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1


------------ Reward record Minor League Stadium----
--game.g_population < tuning_constants.MINORSTAD_POP or game.ga_mayor_rating < tuning_constants.MINORSTAD_MR or game.g_num_recreation < tuning_constants.MINORSTAD_NUM_REC_PARK
a = create_reward_cityplanning('A3B039BF')
function a.condition()
	if (game.g_population < tuning_constants.MINORSTAD_POP or game.ga_mayor_rating < tuning_constants.MINORSTAD_MR or game.g_num_recreation < tuning_constants.MINORSTAD_NUM_REC_PARK) then
		return [[text@2a81d5c2]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@8a5d308a ]]
a.message   = [[text@aa5d308d ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record Major League Staduim----
--game.g_population < tuning_constants.MAJORSTAD_POP or game.ga_mayor_rating < tuning_constants.MAJORSTAD_MR or game.reward_instance_count('03440000') <1
a = create_reward_cityplanning('E227200C')
function a.condition()
	if (not missions_completed( { '4c172b54'} ) and ( game.g_population < tuning_constants.MAJORSTAD_POP or game.ga_mayor_rating < tuning_constants.MAJORSTAD_MR or game.reward_instance_count('A3B039BF') <1)) then
		return [[text@2a81d5c5 ]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ea5d3091 ]]
a.message   = [[text@2a5d3094 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

------------ Reward record House Of Worship 1----
--game.g_city_r_population < 4500 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD
a = create_reward_cityplanning('031e0000')
function a.condition()
	if (not missions_completed( { '8c143272'} ) and ( game.g_city_r_population < 1.4 * tuning_constants.POPULATION_STEP_3 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD - 2)) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d3064]]
a.message   = [[text@aa5d3068 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

------------ Reward record House Of Worship 2----
--game.g_city_r_population < 12000 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD or game.reward_instance_count('031e0000') <1
a = create_reward_cityplanning('03760000')
function a.condition()
	if (game.g_city_r_population < tuning_constants.POPULATION_STEP_5 * 1.8 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD + 2 or game.reward_instance_count('031e0000') <1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@2a5d306c ]]
a.message   = [[text@ca5d3070 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

------------ Reward record House Of Worship 3----
--game.g_city_r_population < 40000 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD or game.reward_instance_count('03760000') <1
a = create_reward_cityplanning('03770000')
function a.condition()
	if (game.g_city_r_population < 1.5 * tuning_constants.POPULATION_STEP_7 * .9 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD + 6 or game.reward_instance_count('03760000') <1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d3074 ]]
a.message   = [[text@ca5d3077 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

------------ Reward record House Of Worship 4----
--game.g_city_r_population < 90000 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD or game.reward_instance_count('03770000') <1
a = create_reward_cityplanning('03780000')
function a.condition()
	if (game.g_city_r_population < tuning_constants.POPULATION_STEP_9 * .8 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD + 10 or game.reward_instance_count('03770000') <1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@6a5d307a ]]
a.message   = [[text@6a5d307d ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

----------- Reward record Cemetery 1----
--game.g_city_r_population < 10000 or game.reward_instance_count('03470000') <1
a = create_reward_cityplanning('03470000')
function a.condition()
	if (not missions_completed( { '2c2545a3'} ) and ( game.g_city_r_population < 1.25 * tuning_constants.POPULATION_STEP_4 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD  or game.reward_instance_count('031e0000') <1)) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@2a5d3acc ]]
a.message   = [[text@ea5d3acf ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Cemetery 2----
--game.g_city_r_population < 45000 or game.reward_instance_count('037b0000') <1
a = create_reward_cityplanning('037b0000')
function a.condition()
	if (game.g_city_r_population < tuning_constants.POPULATION_STEP_6 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD + 4 or game.reward_instance_count('03470000') <1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@aa5d3ad2 ]]
a.message   = [[text@ea5d3ad5 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Cemetery 3----
a = create_reward_cityplanning('037c0000')
function a.condition()
	if (game.g_city_r_population < tuning_constants.POPULATION_STEP_8  or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_GOOD + 8 or game.reward_instance_count('037b0000') <1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d3ad8 ]]
a.message   = [[text@ca5d3adb ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Farmers Market----
--game.g_population < tuning_constants.FARMERSMKT_POP or game.ga_mayor_rating < tuning_constants.FARMERSMKT_MR or game.g_city_ir_population < tuning_constants.FARMERSMKT_IR_POP
a = create_reward_cityplanning('032c0000')
function a.condition()
	if (not missions_completed( { '0c172d78'} ) and ( game.g_population < tuning_constants.FARMERSMKT_POP or game.ga_mayor_rating < tuning_constants.FARMERSMKT_MR or game.g_city_ir_population < tuning_constants.FARMERSMKT_IR_POP)) then
		return [[text@2a81d567]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d2fcd ]]
a.message   = [[text@0a5d2fe3 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist =1

----------- Reward record Disease (Medical Research) Center----
a = create_reward_cityplanning('B2C16571')
function a.condition()

if (not missions_completed( { 'cc0ad971'} ) and (game.g_population < tuning_constants.MEDRESCENTER_POP or game.ga_mayor_rating < tuning_constants.MEDRESCENTER_MR or game.g_num_hospitals < tuning_constants.MEDRESCENTER_NUM_HOSP)) then
		return [[text@0a81d623]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@4a5d3ac4 ]]
a.message   = [[text@0a5d3ac9 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Country Club----
--game.g_city_r3_population < tuning_constants.COUNTRYCLUB_RH_POP or game.ga_mayor_rating < tuning_constants.COUNTRYCLUB_MR
a = create_reward_cityplanning('03270000')
function a.condition()
	if (not missions_completed( { '6c1e52d7'} ) and ( game.g_city_r3_population < tuning_constants.COUNTRYCLUB_RH_POP or game.ga_mayor_rating < tuning_constants.COUNTRYCLUB_MR)) then
		return [[text@4a81d614]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@8a5d3aaf ]]
a.message   = [[text@ea5d3ab2 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record TV Station----
a = create_reward_cityplanning('03340000')
function a.condition()
	if (not missions_completed( { 'cc1435a1'} ) and ( game.g_population < tuning_constants.TVSTUDIO_POP or game.ga_mayor_rating < tuning_constants.TVSTUDIO_MR or game.reward_instance_count('03330000') <1)) then
		return [[text@8a81d5e1]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@aa5d3a54 ]]
a.message   = [[text@6a5d3a5a ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1
a.effects = effects.TV_CREW_AVAILABLE

----------- Reward record Advance Research Center----
---game.g_city_iht_population < tuning_constants.ADVRESCENTER_IHT_POP or game.ga_mayor_rating < tuning_constants.ADVRESCENTER_MR or game.reward_instance_count('033d0000') <1
a = create_reward_cityplanning('032f0000')
function a.condition()
	if (not missions_completed( { '2c14348d'} ) and ( game.g_city_iht_population < tuning_constants.ADVRESCENTER_IHT_POP or game.ga_mayor_rating < tuning_constants.ADVRESCENTER_MR or game.reward_instance_count('5E93F33A') <1)) then
		return [[text@4a81d619]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@aa5d3ab7 ]]
a.message   = [[text@4a5d3abb ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Stock Exchange----
--game.g_city_co2_population + game.g_city_co3_population < tuning_constants.STOCKXCHNG_CO_POP or game.ga_mayor_rating < tuning_constants.tuning_constants.STOCKXCHNG_MR
a = create_reward_cityplanning('03320000')
function a.condition()
	if (not missions_completed( { '0c17354b'} ) and ( game.g_city_co2_population + game.g_city_co3_population < tuning_constants.STOCKXCHNG_CO_POP or (game.ga_mayor_rating < tuning_constants.STOCKXCHNG_MR and game.g_city_r_population > 0))) then
		return [[text@ca81d61e]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@4a5d3abe ]]
a.message   = [[text@2a5d3ac1 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Statue 1----
--game.g_population < 10000 or game.g_population > 49999 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('03730000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR1_POP or game.g_population >= tuning_constants.MAYOR2_POP or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03730000')== 1 or game.reward_instance_count('037d0000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   =  [[text@ca5d2ff8 ]]
a.message   = [[text@ca5d2ffd ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist =1

----------- Reward record Statue 1_F----
--game.g_population < 10000 or game.g_population > 49999 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('037d0000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR1_POP or game.g_population >= tuning_constants.MAYOR2_POP or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03730000')== 1 or game.reward_instance_count('037d0000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
--a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
--a.title   =  [[text@ca5d2ff8 ]]
--a.message   = [[text@ca5d2ffd ]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
--a.mood = advice_moods.GREAT_JOB
a.persist =1

----------- Reward record Mayor Statue 2----
--game.g_population < 50000 or game.g_population > 99999 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('03210000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR2_POP or game.g_population >= tuning_constants.MAYOR3_POP or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03210000')== 1 or game.reward_instance_count('037e0000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   =  [[text@8a5d300a ]]
a.message   = [[text@0a5d3016 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist =1

----------- Reward record Mayor Statue 2_F----
--game.g_population < 50000 or game.g_population > 99999 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('037e0000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR2_POP or game.g_population >= tuning_constants.MAYOR3_POP or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03210000')==1 or game.reward_instance_count('037e0000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
--a.once = 1
--a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
--a.title   =  [[text@8a5d300a ]]
--a.message   = [[text@0a5d3016 ]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
--a.mood = advice_moods.GREAT_JOB
--a.persist =1

----------- Reward record Mayor Statue 3----
--game.g_population < 100000 or game.g_population > 499999 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('03740000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR3_POP or game.g_population >= tuning_constants.MAYOR4_POP or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03740000')==1 or game.reward_instance_count('037f0000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   =  [[text@ca5d301a ]]
a.message   = [[text@ca5d301d ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist =1

----------- Reward record Mayor Statue 3_F----
--game.g_population < 100000 or game.g_population > 499999 or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('037f0000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR3_POP or game.g_population >= tuning_constants.MAYOR4_POP or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03740000')==1 or game.reward_instance_count('037f0000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
--a.once = 1
--a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
--a.title   =  [[text@ca5d301a ]]
--a.message   = [[text@ca5d301d ]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
--a.mood = advice_moods.GREAT_JOB
--a.persist =1

----------- Reward record Mayor Statue 4----
--game.g_population < tuning_constants.MAYOR4_POP  or  game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03750000')==1 or game.reward_instance_count('03800000')==1
a = create_reward_cityplanning('03750000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR4_POP  or  game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03750000')==1 or game.reward_instance_count('03800000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   =  [[text@0a5d3021 ]]
a.message   = [[text@0a5d3029 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist =1

----------- Reward record Mayor Statue 4_F----
--game.g_population < 500000  or game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD
a = create_reward_cityplanning('03800000')
function a.condition()
	if (game.g_population < tuning_constants.MAYOR4_POP  or  game.ga_mayor_rating < tuning_constants.AVG_MAYOR_RATING_VERYGOOD or game.reward_instance_count('03750000')==1 or game.reward_instance_count('03800000')==1) then
		return reward_state.HIDDEN
	else
		return reward_state.AVAILABLE
	end
end
--a.once = 1
--a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
--a.title   =  [[text@0a5d3021 ]]
--a.message   = [[text@0a5d3029 ]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
--a.mood = advice_moods.GREAT_JOB
--a.persist =1

----------- Reward record Convention Center----
a = create_reward_cityplanning('03430000')
function a.condition()
	if (not missions_completed( { '8c0adc22'} ) and ( game.g_city_c_population < tuning_constants.CONVCENTER_C_POP or (game.ga_mayor_rating < tuning_constants.CONVCENTER_MR and game.g_city_r_population > 0) or game.g_medium_airport_count + game.g_large_airport_count <1)) then
		return [[text@2a81d601]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0a5d3a94 ]]
a.message   = [[text@8a5d3a99 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Movie Studio----
a = create_reward_cityplanning('033E0000')
function a.condition()
	if ( not missions_completed( { '2c01b4b1'} ) and ( game.g_population < tuning_constants.MOVIESTUDIO_POP or game.ga_mayor_rating < tuning_constants.MOVIESTUDIO_MR or game.reward_instance_count('03340000') < 1)) then
		return [[text@2a81d5ec]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ea5d3a66 ]]
a.message   = [[text@4a5d3a6c ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Zoo----
a = create_reward_cityplanning('03390000')
function a.condition()
	if (game.g_population < tuning_constants.ZOO_POP or game.ga_mayor_rating < tuning_constants.ZOO_MR or game.g_num_parks < tuning_constants.ZOO_NUM_PARKS) then
		return [[text@2a81d5f5]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@8a5d3a80 ]]
a.message   = [[text@aa5d3a83 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record State Fair----
a = create_reward_cityplanning('03360000')
function a.condition()
	if (not missions_completed( { 'cc1432c8'} ) and (game.g_city_ir_population < tuning_constants.STATEFAIR_IR_POP or game.g_population < tuning_constants.STATEFAIR_POP or game.ga_mayor_rating < tuning_constants.STATEFAIR_MR)) then
		return [[text@ea81d5bd]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   =  [[text@ca5d3082 ]]
a.message   = [[text@0a5d3087 ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record Resort Hotel----
a = create_reward_cityplanning('03810000')
function a.condition()
	if (not missions_completed( { '0c173377'} ) and ( game.g_r2_demand	+ game.g_r3_demand < tuning_constants.RESORT_RM_RH_REGION_POP or game.g_num_cities_connected_indirectly < tuning_constants.RESORT_NUM_CITIES_REGION -1 or game.g_num_cities_connected < tuning_constants.RESORT_NUM_CITIES_CONNECTED or game.ga_air_pollution > tuning_constants.RESORT_AIRPOLLUTION or game.ga_mayor_rating < tuning_constants.RESORT_MR)) then
		return [[text@0a81d606]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@6a5d3a9c ]]
a.message   = [[text@6a5d3a9f ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1  


----------- Reward record Solar Power Plant----
a = create_reward_cityplanning('B031EC3E')
function a.condition()
	if (not missions_completed( { '2c2541f5'} ) and ( game.g_city_r3_population < tuning_constants.SOLAR_RH_POP or game.ga_mayor_rating < tuning_constants.SOLAR_MR)) then
		return [[text@6aa6dc7f ]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@aaa6dc46 Serious Sims Seek Solace In Solar Power]]
a.message   = [[text@6aa6dc58 Mayor, I've been hearing from a growing number of Sims who are concerned about the negative environmental impacts of the region's power plants.  They told me to tell you they'd like the next new power plant for #city# to be solar. Oh, and they also asked that you keep the skies clear and the sun shining to insure maximum effectiveness!]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1  

----------- Reward record Nuclear Power Plant----
a = create_reward_cityplanning('055D65AE')
function a.condition()
	if (not missions_completed( { '8c0ad6a8'} ) and ( game.g_city_rci_population < tuning_constants.NUKE_CITY_POP or game.g_power_consumed < tuning_constants.NUKE_ENERGY_DEMAND or game.ordinance_is_on(ordinance_ids.ORDINANCE_NUKEFREE))) then
		return [[text@6aa6dc83	Nuclear Power Plant is not available.]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@4aa6dc60	#city#  Power Needs May Find Nuclear Solution]]
a.message   = [[text@aaa6dc65	A great city such as #city# requires a great deal of power.  I mean, we rely on several different sources to keep things running here.  Now, Mayor, we've been presented with a chance to build a nuclear power plant which can pretty much take care of all our power needs, plus some left over to sell. Shall we harness the power of the atom? ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1  


----------- Reward record Fusion Power Plant----
a = create_reward_cityplanning('78A0F71A')
function a.condition()
	if (not missions_completed( { '0c1434f7'} ) and ( game.g_city_iht_population < tuning_constants.FUSION_IHT_POP or game.g_power_consumed  < tuning_constants.FUSION_ENERGY_DEMAND)) then
		return [[text@aaa6dc87	Fusion Plant is not available.]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@6aa6dc6a	Few Shun The Potential Of Fusion Energy]]
a.message   = [[text@4aa6dc6e	]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1  

---NEW EP1 REWARDS

------------ Reward record Large Elementary School----
--CREIGHTON: NEED TO MAKE SURE THE PLAYER CAN CONTINUE TO PLOP MORE AFTER FIRST ONE IS EARNED
a = create_reward_cityplanning('03B78022')
function a.condition()
	if (game.g_city_r_population < tuning_constants.LARGE_ELEM_SCHOOL_POP and game.is_tutorial(hex2dec('2c12d0e9')) < 1) then
		return [[text@2bf42cf3]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0bf42ce2 Bigger Schools a Solution for Big Crowding Problems]]
a.message   = [[text@0bf42ce7 A big-time city like #city# is going to have some big-time problems. Take education for example. ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.NEUTRAL
a.persist= 1

----------- Reward record Large High School----
--CREIGHTON: NEED TO MAKE SURE THE PLAYER CAN CONTINUE TO PLOP MORE AFTER FIRST ONE IS EARNED
a = create_reward_cityplanning('6856EAC9')
function a.condition()
	if (game.g_city_r_population < tuning_constants.LARGE_HIGH_SCHOOL_POP) then
		return [[text@2bf42d26]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ebf42d05 High-Capacity High School for High-Efficiency Learning]]
a.message   = [[text@0bf42d15 #city# population continues to grow and grow. Along with many parents, I applaud your efforts to keep up]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.NEUTRAL
a.persist= 1

----------- Reward record Large Water Pump ----
--CREIGHTON: NEED TO MAKE SURE THE PLAYER CAN CONTINUE TO PLOP MORE AFTER FIRST ONE IS EARNED
a = create_reward_cityplanning('80903CE7')
--ALTERNATE TRIGGER (game.g_water_consumed + game.g_water_exported < tuning_constants.LARGE_WATER_PUMP_CITY_CAPACITY)
--NOT SURE IF 'WATER_CONSUMED' INCLUDES EXPORTS OR IF 'WATER_EXPORTED' NEEDS TO BE ADDED
function a.condition()
	if (game.g_water_consumed + game.g_water_exported < tuning_constants.LARGE_WATER_PUMP_CITY_CAPACITY and game.g_city_rci_population < tuning_constants.LARGE_WATER_PUMP_POP and game.is_tutorial(hex2dec('2c12d0e9')) < 1) then
		return [[text@8bf42d5c]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0bf42d3c Flood of Water Buildings Calls for High-Volume Solution]]
a.message   = [[text@8bf42d4f A visitor to #city# would think we hold water pumps and towers in high-esteem. ]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.NEUTRAL
a.persist= 1

--------------------------------------------------------------------
-- This will try to execute triggers for all registerd advices 
-- to make sure they don't have any syntactic errors.

if (_sys.config_run == 0)
then
   advices : run_triggers()
end

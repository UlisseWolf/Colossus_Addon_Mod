-----------------------------------------------------------------------------------------
-- This file defines advices for the the REWARDS
dofile("adv_rewards.lua") 

--------------------------------------------------------------------
-- Add EP1 specific advice in this section.
-- 

------------ Reward record Space Port----
a = create_reward_cityplanning('03840000')
function a.condition()
	if (not missions_completed( { '8c01d0b7', '0c1431f8'} ) and (game.g_city_iht_population < tuning_constants.SPACE_PORT_IHT_JOBS or game.reward_instance_count('032F0000') <1 or game.difficulty_level() < game_difficulty_level.MEDIUM)) then
		return [[text@6bf1e520]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@2bf1e4ec Count Down Begins For New #city# Space Port]]
a.message   = [[text@4bf1e4f2]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

------------ Reward record Deluxe Police Station ----
a = create_reward_cityplanning('03860000')
function a.condition()
   if (not missions_completed( { '0bb15510', 'cc27962b', '2c279765', '8bb154fb'} ) and game.g_city_rci_population < tuning_constants.DELUXE_POLICE_STATION_POP) then
      return [[text@0bf42bb6]] 
   else
      return reward_state.AVAILABLE
   end
end
a.once = 1
a.title   = [[text@cbf42b93	Top Cops Demand Mayor Pop for Chopper]]
a.message   = [[text@6bf42ba0]]
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.priority = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.NEUTRAL
a.persist = 1

------------ Reward record Deluxe Fire Station----
a = create_reward_cityplanning('038E0000')
function a.condition()
   local fire_count
   fire_count = sc4game.sitmgr.get_success_count('4c19906c') +
      sc4game.sitmgr.get_success_count('ec328d7d')

	if ( fire_count < 3) and (game.g_city_rci_population < tuning_constants.DELUXE_FIRE_STATION_POP) then
		return [[text@8bf1e5b3]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ebf1e5a2 Fight Fires From Above, New Facilities Offered]]
a.message   = [[text@cbf1e5a6]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.NEUTRAL
a.persist= 1

----------- Reward record Deluxe Train Station----
a = create_reward_cityplanning('03980000')
function a.condition()
--	if (missions_completed( { 'cc14320d'} ) or game.g_city_r_population	+ game.g_city_c_population	 < tuning_constants.GRAND_RAIL_STATION_POP or game.ga_train_station_utilization_p < tuning_constants.GRAND_RAIL_STATION_UTILIZATION) then
--     the following line was edited by RippleJet for CAM 1.0:
   if (not missions_completed( { 'cc14320d'} ) and (game.g_city_r_population	+ game.g_city_c_population	 < tuning_constants.GRAND_RAIL_STATION_POP or game.ga_train_station_utilization_p < 40)) then
		return [[text@cbf1e5e2]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@abf1e5d1	#city# Wonders If Mayor On Board For Grand Railroad Station]]
a.message   = [[text@ebf1e5d5]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

----------- Reward record Lighthouse----
a = create_reward_cityplanning('03950000')
function a.condition()
	if (not missions_completed( { '6c1734d5'} ) and game.g_seaport_volume < 100) then
		return [[text@ebf1e58f]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ebf1e57c Ships Lost at Sea, New Beacon Beckons]]
a.message   = [[text@6c047eb8]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

----------- Reward record Cruise Ship Building----
a = create_reward_cityplanning('03BC0000')
function a.condition()
--	if (missions_completed( { '6c1734d5'} ) or game.g_seaport_volume < 100) then
	if ( not missions_completed( { '0c173438'} ) and ( 100*256*game.g_water_tile_count/game.g_city_tile_size < 35 or game.g_city_c_population < tuning_constants.CRUISE_PORT_C_JOBS or game.g_num_parks < tuning_constants.CRUISE_PORT_PARKS )) then
		return [[text@2bf1e55b]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@0bf1e542 #city#'s Ship Due to Come In Any Day Now]]
a.message   = [[text@cbf1e547]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist= 1

----------- Reward record Marina----
--CREIGHTON: BE SURE TO MAKE IT POSSIBLE TO PLOP MARINA ANY NUMBER OF TIMES ONCE EARNED, AND NOT JUST ONCE
a = create_reward_cityplanning('03970000')
function a.condition()
	if ( not missions_completed( { '4c17326e'} ) and ( game.g_city_r2_population	+ game.g_city_r3_population < tuning_constants.MARINA_POP or game.ga_mayor_rating < tuning_constants.MARINA_MR or (100*256*game.g_water_tile_count/game.g_city_tile_size) < 25)) then
		return [[text@abf42d84]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@6bf42d72 Fun on the Water, Sims Get Marina Mania]]
a.message   = [[text@abf42d76]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.NEUTRAL
a.persist= 1

--------------------------------------------------------------------
-- This will try to execute triggers for all registerd advices 
-- to make sure they don't have any syntactic errors.


--------------------------------------------------------------------
-- This will try to execute triggers for all registerd advices 
-- to make sure they don't have any syntactic errors.

if (_sys.config_run == 0)
then
   advices : run_triggers()
end

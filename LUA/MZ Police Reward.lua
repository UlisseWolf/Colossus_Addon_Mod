--#-package:7ab443ee# -- package signature --
-- For Lua file entry IID 0xf8b443ee

-- Code is mostly copied from Maxis originals and then tweaked by Cori.
--  This moves all reward, news, the MySim statement, and Missions to the replacement Deluxe Police Station.


-- Direct add to the special buildings table.
--   Use with game.reward_instance_count() function.
----------------------------------------------------
special_buildings.DeluxePoliceStationMZ = hex2dec('ACCCDC74')


-- Change the lot plop IID when Deluxe Police Station is earned.
-- Points to the New LotConfigurations Exemplar: 6534284A-A8FBD372-9AC7835A
--   That exemplar has 0xB368000 in Rep 13 of the 0x00000000 building property and is what the count function looks for.
------------------------------------------------------------------------------------------------------------------------
building_tool_types.DELUXE_POLICE_STATION = hex2dec('9ac7835a')


-- From: 021 - FF3AFAA5 - adv_ep1_rewards.lua
--- Reward record Deluxe Police Station MZ --
---------------------------------------------
a = create_reward_cityplanning('ACCCDC74') -- The hex number matches the Building Exemplar IID

function a.condition()
  if (not missions_completed( { '0bb15510', 'cc27962b', '2c279765', '8bb154fb'} )
  and game.g_city_rci_population < tuning_constants.DELUXE_POLICE_STATION_POP) then
    return [[text@0bf42bb6]] -- This is what displays on the menu item if conditional building is not available.
  else
    return reward_state.AVAILABLE
  end
end

a.once     = 1
a.title    = [[text@cbf42b93 Top Cops Demand Mayor Pop for Chopper]]
a.message  = [[text@6bf42ba0]] -- Verbiage with Accept / Decline (Passes "building_tool_types.DELUXE_POLICE_STATION" to the plop function.)
a.timeout  = tuning_constants.ADVICE_TIMEOUT_LONG
a.priority = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood     = advice_moods.NEUTRAL
a.persist  = 1


-- From: 028 - FF1A27EC - ep1x_rewards.lua
---- Reward news MZ Deluxe Police Station ---
---------------------------------------------
delete_advice('ec047514') -- Original checked for 0x03860000 (the unaltered Maxis Deluxe Police Station)

a = create_advice_fluff ('ec047514')
a.trigger   = "game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) == 1"
a.timeout   = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title     = [[text@6bf42bb0]] -- Whirlybird fluff news.
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.FLUFF
a.news_only = 1
a.persist   = 1
a.once      = 1


-- From: 019 - FF2D523A - adv_mysim.lua
-- #Advisor# Wants A Ride on Police Chopper
-------------------------------------------
delete_advice('8c2a6f2b')

a = create_advice_mysim('8c2a6f2b')
-- Note: Trigger was for Cruise Ship Pier so it's fixed here.
a.trigger   = "game.mysim_distance_to_closest_building(building_groups.DeluxePoliceStation) < tuning_constants.MYSIM_HOME_RADIUS and game.random_chance(tuning_constants.RANDOM_CHANCE)"
a.title     = [[text@8bf42bc2]]
a.message   = [[text@8bf42bca]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.GREAT_JOB
a.frequency = tuning_constants.ADVICE_FREQUENCY_LOW
a.persist   = 1


-- From: 301 - FF22688E - adv_csi_armytruck.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
-- Amry Truck - Escape town with the stolen Stinkbomb Warhead.- evil
--------------------------------------------------------------------
delete_advice('ac0ae247')
s = create_advice_citysituation('ac0ae247')
s.title = "text@6C15442F"
--
s.message = [[text@06C15415]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.army_truck
--
s.condition = sit_conditions.ESCAPE_CITY
s.create_target = true
s.evade_list = { automata_groups.police_helicopter, automata_groups.patrol_car }
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
--
s.success_text = [[text@EC154531]]
s.failure_text = [[text@2C15453A]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="(game.reward_instance_count(special_buildings.ArmyBase) > 0) and (sc4game.sitmgr.get_success_count('8c151efd') > 0) and game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0"
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('ac0adff9') --Launch Time
--med
s.success_aura_radius  = sit_constants.MED_EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.MED_EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.MED_EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   return 0
end
--


-- From: 305 - FF7E273E - adv_csi_crime.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
-- CRIME Mission -  Bank robbery - evil
---------------------------------------------------------
delete_advice('abb15508')
s = create_advice_citysituation('abb15508')
s.title = "text@6c154434"
--
s.message = [[text@4bbe528d]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.getaway_van
--
s.condition = sit_conditions.ESCAPE_CITY
s.create_target = true
s.evade_list = { automata_groups.police_helicopter, automata_groups.patrol_car }
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_LONG
--
s.success_text = [[text@abbd380b]]
s.failure_text = [[text@4bbd37e6]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="(game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0) and (game.g_city_c_population > 50) and (sc4game.sitmgr.get_success_count('8c151efd') > 0)"
s.image = sit_constants.SITUATION_IMAGE_BANK_ROBBERY
s.success_image = sit_constants.SITUATION_SUCCESSFUL_ROBBERY
s.failure_image = sit_constants.SITUATION_IMAGE_POLICE_ARREST
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('0bb15510')
--easy
s.success_aura_radius  = sit_constants.EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   return 0
end
--
function s:on_failure()
   -- play bust animation on the getaway van
   local auto
   auto = sc4game.sitmgr.get_active_auto()
   auto.automata_attach_anim(automata.MODEL_TYPE_ID, automata.MODEL_GROUP_ID, hex2dec('0x117B0000'))
end


-- From: 318 - FF037F13 - adv_csi_passengertrain.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
-- Passenger Train missions - Hijack the Train-evil
---------------------------------------------------------
delete_advice('6c143375')
s = create_advice_citysituation('6c143375')
s.title = "text@6C15443E"
--
s.message = [[text@06C15424]]
--
s.priority= tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.commute_train_engine -- sit_constants.lua
--
s.condition = sit_conditions.ESCAPE_CITY -- sit_constants.lua
s.create_target = true -- always set true for automata, and false for buildings
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.evade_list = automata_groups.police_helicopter -- sit_constants.lua
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
--
s.success_text = [[text@EC154540]]
s.failure_text = [[text@2C154549]]
--
s.trigger="(game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0) and sc4game.automata.get_source_building_count(building_groups.PassengerRail) > 0 and (sc4game.sitmgr.get_success_count('2c1725c1') > 0 or sc4game.sitmgr.get_success_count('4c4694f6') > 0) and game.g_rail_tile_count > 20"-- adv_game_data.lua
s.frequency = sit_constants.FREQUENCY_SHORT
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('ec143370') --Whistle Stop Tour
--med
s.success_aura_radius  = sit_constants.MED_EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.MED_EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.MED_EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   return 0
end
--


-- From: 319 - FFE19826 - adv_csi_policecar.lua
-- Modify s.reward_guid to be new MZ Deluxe Police Station
-- Police Car Missions - Carjacking - good
----------------------------------------------------------
delete_advice('8bb154fb')
s = create_advice_citysituation('8bb154fb')
s.title = "text@8bbd3044"
--
s.message = [[text@ebbe5282]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.patrol_car
s.target_list = automata_groups.carjacked_vehicle
s.pursuit_mission = true
s.evade_list = { automata_groups.patrol_car, automata_groups.police_van }
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = true
s.always_create_target = true
s.success_distance = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.min_target_distance = 96
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--
s.success_text = [[text@2bbd34cc]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') -- MZ Deluxe Police Station
s.failure_text = [[text@6bbd37eb]]
--
s.trigger="game.g_police_station_count > 0 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)"
s.frequency = sit_constants.FREQUENCY_SHORT
s.image = sit_constants.SITUATION_IMAGE_CARJACK
s.success_image = sit_constants.SITUATION_IMAGE_POLICE_HELICOPTER
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('4bb154d3') --Carjacker Escape
--easy
s.success_aura_radius  = sit_constants.GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.GOOD_FAILURE_AURA_MAG
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
s.failure_effect = sit_constants.FAILURE_EFFECT
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--
function s:on_success()
   local target
   local auto

   target = sc4game.sitmgr.get_current_target()
   target.fade_out()

   -- play bust animation on the police car
   auto = sc4game.sitmgr.get_active_auto()
   auto.play_anim(automata.MODEL_TYPE_ID, automata.MODEL_GROUP_ID, '03300000');
end


-- From: 319 - FFE19826 - adv_csi_policecar.lua
-- Modify s.reward_guid to be new MZ Deluxe Police Station
-- Police Car Missions - Catch the Robbers - good
----------------------------------------------------------
delete_advice('0bb15510')
s = create_advice_citysituation('0bb15510')
s.title = "text@2bb5bd3a"
--
s.message = [[text@8bb5bd44]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list =  automata_groups.patrol_car
s.target_list = automata_groups.getaway_van
s.pursuit_mission = true
s.evade_list = { automata_groups.patrol_car, automata_groups.police_van }
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = true
s.always_create_target = true
s.success_distance = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.min_target_distance = 96
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--
s.success_text = [[text@0bb5bd63]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') -- MZ Deluxe Police Station
s.failure_text = [[text@cbb5bd7e]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and (sc4game.sitmgr.get_success_count('8c151efd') > 0) and game.g_city_c_population > 50"
s.image = sit_constants.SITUATION_IMAGE_BANK_ROBBERY
s.success_image = sit_constants.SITUATION_IMAGE_POLICE_ARREST
s.failure_image = sit_constants.SITUATION_SUCCESSFUL_ROBBERY
s.mood = advice_moods.ALARM
s.evil_twin = hex2dec('abb15508')
--easy
s.success_aura_radius  = sit_constants.GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.GOOD_FAILURE_AURA_MAG
s.success_money = sit_constants.GOOD_SUCCESS_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--


-- From: 319 - FFE19826 - adv_csi_policecar.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
-- Police Car Missions - Bust a cop gone bad - good
---------------------------------------------------------
delete_advice('2c151d06')
s = create_advice_citysituation('2c151d06')
s.title = "text@6C154420"
--
s.message = [[text@EBBE5285]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.police_van
s.target_list = automata_groups.patrol_car
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = true
s.always_create_target = true
s.success_distance = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.min_target_distance = 96
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--
s.success_text = [[text@EC154522]]
s.failure_text = [[text@2C15452B]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0 and game.g_city_cs1_population	> 100 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)"
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_SAFETY
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.ALARM
s.evil_twin = hex2dec('4c151d0b') --shakedown
--easy
s.success_aura_radius  = sit_constants.GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.GOOD_FAILURE_AURA_MAG
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
s.failure_effect = sit_constants.FAILURE_EFFECT
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--


-- From: 319 - FFE19826 - adv_csi_policecar.lua
-- Modify s.reward_guid to be new MZ Deluxe Police Station
-- Police Car Missions - On the Trail-good
----------------------------------------------------------
delete_advice('cc27962b')
s = create_advice_citysituation('cc27962b')
s.title = "text@ac238968"
--
s.message = [[text@cc238984]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.patrol_car -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL,
   building_groups.COMMERCIAL,
   building_groups.COMMERCIAL,
   building_groups.RESIDENTIAL,

}
s.progress_text = {
[[text@ec2796a0]],
[[text@ec2796a0]],
[[text@ec2796a0]],
[[text@ec2796a0]]
}
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
s.success_distance =  sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary = true
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--
s.success_text = [[text@4c2389a0]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') -- MZ Deluxe Police Station
s.failure_text = [[text@6c2389a9]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_c_population > 100 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)and game.g_city_r_population > 100 " -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_POLICE_HELICOPTER
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
--med
s.success_aura_radius  = sit_constants.MED_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_GOOD_FAILURE_AURA_MAG
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
s.failure_effect = sit_constants.FAILURE_EFFECT
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 4

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--


-- From: 319 - FFE19826 - adv_csi_policecar.lua
-- Modify s.reward_guid to be new MZ Deluxe Police Station
-- Police Car Missions - Disturbance Reported-good
----------------------------------------------------------
delete_advice('2c279765')
s = create_advice_citysituation('2c279765')
s.title = "text@6c23897c"
--
s.message = [[text@cc238989]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.patrol_car -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.RESIDENTIAL
}

--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
s.success_distance =  sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary = true
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--
s.success_text = [[text@4c2389a5]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') -- MZ Deluxe Police Station

s.failure_text = [[text@6c2389ad]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_r_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_POLICE_HELICOPTER
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
--easy
s.success_aura_radius  = sit_constants.GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.GOOD_FAILURE_AURA_MAG
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
s.failure_effect = sit_constants.FAILURE_EFFECT
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 3.5

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--


--From: 320 - FF42118C - adv_csi_policehelicopter.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
--Police Helicopter Missions-Nab the Crook from the Air - good
--------------------------------------------------------------
delete_advice('cc1435a1')
s = create_advice_citysituation('cc1435a1')
s.title = "text@6C154456"
--
s.message = [[text@06C1543C]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.police_helicopter
s.target_list = automata_groups.getaway_van
s.pursuit_mission = true
s.evade_list = { automata_groups.police_helicopter }
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = true
s.always_create_target = true
s.success_distance = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.service_mission = true
s.time_limit = TIME_LIMIT_SHORT
s.active_radius = 8
--
s.success_text = [[text@EC154558]]
s.reward_unlocked_text    = [[text@EC193CF6]]
s.reward_guid  = hex2dec('03340000') --TV station
s.failure_text = [[text@2C154561]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0 and (game.g_city_c_population > 50) and (sc4game.sitmgr.get_success_count('ac1726c8') > 0)"
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_TV_Station
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('2c1435a8') --Disrupt the Peace
--hard
s.success_aura_radius  = sit_constants.HAR_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.HAR_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.HAR_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.HAR_GOOD_FAILURE_AURA_MAG
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
s.failure_effect = sit_constants.FAILURE_EFFECT
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return 600
end

function s:on_success()
   local target
   target = sc4game.sitmgr.get_current_target()
   target.fade_out()
end
--


--From: 320 - FF42118C - adv_csi_policehelicopter.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
--Police Helicopter Missions-Disrupt the Peace - evil
---------------------------------------------------------
delete_advice('2c1435a8')
s = create_advice_citysituation('2c1435a8')
s.title = "text@6C154457"
--
s.message = [[text@06C1543D]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.police_helicopter -- sit_constants.lua
s.condition = sit_conditions.CELL_COVERAGE
s.service_mission = true
s.active_radius = 1
--
s.success_text = [[text@EC154559]]
s.failure_text = [[text@2C154562]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="(game.g_num_rzone_ld_tiles >= 100) and (game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0) and (sc4game.sitmgr.get_success_count('ac1726c8') > 0)"  -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('cc1435a1') --Nab the Crook from the Air
--
s.coverage_cells_min   = 20
s.coverage_cells_max   = 20
s.coverage_type = sit_coverage_type.ZONE
s.coverage_zone = zone_tool_types.RESIDENTIAL_LD
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--med
s.success_aura_radius  = sit_constants.MED_EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.MED_EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.MED_EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 8

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--


-- From: 322 - FFA72F8C - adv_csi_steamtrain.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
--Steam Train missions -Sell Secret Rocket Formula -evil
---------------------------------------------------------
delete_advice('6c1430d1')
s = create_advice_citysituation('6c1430d1')
s.title = "text@6C154440"
--
s.message = [[text@06C15426]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.steam_train -- sit_constants.lua
--
s.target_sequence = {    -- adv_const.lua
   building_groups.FreightRail
}
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
s.success_distance = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.use_lot_boundary = true
s.evade_list = automata_groups.police_helicopter -- sit_constants.lua
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
--
s.success_text = [[text@EC154542]]
s.reward_unlocked_text    = [[text@EC193CEB]]
s.reward_progress_text = [[text@4C193E68]]
s.reward_guid  = hex2dec('03960000') --Area 5.1
s.failure_text = [[text@CC1026A5]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="sc4game.automata.get_source_building_count(building_groups.FreightRail) > 1 and (sc4game.sitmgr.get_success_count('2c1725c1') > 0 or sc4game.sitmgr.get_success_count('4c4694f6') > 0) and game.g_num_rail_neighbors > 0 and game.g_rail_tile_count > 20 and (game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_Reward_Area_Control_Tower
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('8c01d0b7') --Train Ride for Rocket Formula
--med
s.success_aura_radius  = sit_constants.MED_EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.MED_EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.MED_EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 12

   -- limit to min/max
   if (result < 15) then
      result = 15
   end

   return result
end
--


-- From: 323 - FFF1D5FB - adv_csi_tank.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
-- Tank Missions - Tank Joy Ride - evil
---------------------------------------------------------
delete_advice('6c171769')
s = create_advice_citysituation('6c171769')
s.title = "text@ac168bc0"
--
s.message = [[text@cc168bc7]]
--
s.priority= tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.army_tank -- sit_constants.lua
--
s.condition = sit_conditions.ESCAPE_CITY -- sit_constants.lua
s.create_target = true -- always set true for automata, and false for buildings
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.evade_list = { automata_groups.police_helicopter, automata_groups.patrol_car } -- sit_constants.lua
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
--
s.success_text = [[text@2c168bd2]]
s.failure_text = [[text@ec168bdd]]
--
s.trigger="(game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0) and (game.reward_instance_count(special_buildings.ArmyBase) > 0) and (sc4game.sitmgr.get_success_count('0c151f05') > 0)"-- adv_game_data.lua
s.frequency = sit_constants.FREQUENCY_SHORT
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
--hard
s.success_aura_radius  = sit_constants.HAR_EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.HAR_EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.HAR_EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.HAR_EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.HAR_EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.HAR_EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   return 0
end
--


-- From: 335 - FF454763 - adv_csi_motorboat.lua
-- Modify s.trigger to work with MZ Deluxe Police Station
-- Motor Boat Mission -  Escape with the loot on water. - evil
--------------------------------------------------------------
delete_advice('cc1d3cfe')
s = create_advice_citysituation('cc1d3cfe')
s.title = "text@2c196742"
--
s.message = [[text@6c19675a]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.motor_boat
--
s.condition = sit_conditions.ESCAPE_CITY
s.create_target = true
s.evade_list = automata_groups.police_helicopter
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 3
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--
s.success_text = [[text@EC15456D]]
s.failure_text = [[text@ec1d3468]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="(game.reward_instance_count(special_buildings.DeluxePoliceStationMZ) > 0) and (game.reward_instance_count(special_buildings.Marina) > 0) and (sc4game.sitmgr.get_success_count('cc1730cf') > 0)"
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_SAFETY
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.BAD_JOB
s.success_mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.NEUTRAL
--easy
s.success_aura_radius  = sit_constants.EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.EVIL_FAILURE_AURA_MAG
s.success_money = sit_constants.EVIL_SUCCESS_MONEY
s.failure_money = sit_constants.EVIL_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect = sit_constants.FAILURE_EFFECTDARKMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   return 0
end
--


-- ModPacc Zero file load tracking
if (not cmMZLoaded) then cmMZLoaded = {} end
table.insert(cmMZLoaded, "04 - Crime and Police - v0.01")

-- EOF
--------------------------------------------
-- Police Car Missions - Carjacking - good
--------------------------------------------
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
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@2bbd34cc]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') --deluxe police station
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
--s.success_money = sit_constants.HAR_GOOD_SUCCESS_MONEY
--s.failure_money = sit_constants.HAR_GOOD_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
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

   -- temp: play fireworks effect to test system
   -- sc4game.effects.create_effect("fireworks_single", auto.x(), auto.y(), auto.z())
end


-------------------------------------------------------------------
-- Police Car Missions - Catch the Robbers - good
--------------------------------------------
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
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@0bb5bd63]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') --deluxe police station
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
--s.failure_money = sit_constants.HAR_GOOD_FAILURE_MONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return result
end
--
-------------------------------------------------------------------
-- Police Car Missions - Bust a cop gone bad - good
--------------------------------------------
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
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@EC154522]]
s.failure_text = [[text@2C15452B]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.reward_instance_count(special_buildings.DeluxePoliceStation) > 0 and game.g_city_cs1_population	> 100 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)"
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
--s.success_money = sit_constants.HAR_GOOD_SUCCESS_MONEY
--s.failure_money = sit_constants.HAR_GOOD_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 15

   -- limit to min/max
   if (result < 15) then
      result = 15
  -- elseif (result > 600) then       -- 600 seconds == ten minutes
     -- result = 600
   end

   return result
end
--
-------------------------------------------------------------------
-- Police Car Missions - Shakedown-evil
------------------------------------------------
s = create_advice_citysituation('4c151d0b')
s.title = "text@6C15441F"
--
s.message = [[text@EBBE5284]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.patrol_car -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.CS1,  --CS!!!
   building_groups.CS1, --CS!!!
   building_groups.CS1 --CS!!!

}
s.progress_text = { 
[[text@AC15450C]],
[[text@AC15450C]]
}
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
s.success_distance =  sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary = true
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.service_mission = true
--s.evade_list = { automata_groups.getaway_van }
--s.evade_distance = sit_constants.EVADE_DISTANCE_SHORT
--s.evade_timeout = sit_constants.EVADE_TIMEOUT_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@EC154521]]
s.failure_text = [[text@2C15452A]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_cs1_population	> 100 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_SAFETY
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('2c151d06') --Bust a cop gone bad
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

   result = 15 + (distToTarget / maxSpeed) * 4

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return result
end
--
-------------------------------------------------------------------
-- Police Car Missions - On the Trail-good
------------------------------------------------
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
--s.service_mission = true
--s.evade_list = { automata_groups.getaway_van }
--s.evade_distance = sit_constants.EVADE_DISTANCE_SHORT
--s.evade_timeout = sit_constants.EVADE_TIMEOUT_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@4c2389a0]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') --deluxe police station
s.failure_text = [[text@6c2389a9]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_c_population > 100 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)and game.g_city_r_population > 100 " -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_POLICE_HELICOPTER
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
--s.evil_twin = hex2dec('2c279765') --Disturbance Reported
--med
s.success_aura_radius  = sit_constants.MED_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_GOOD_FAILURE_AURA_MAG
--s.success_money = sit_constants.MED_GOOD_SUCCESS_MONEY
--s.failure_money = sit_constants.MED_GOOD_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 4

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
     -- result = 600
   end

   return result
end
--
-------------------------------------------------------------------
-- Police Car Missions - Disturbance Reported-good
------------------------------------------------
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
--s.service_mission = true
--s.evade_list = { automata_groups.getaway_van }
--s.evade_distance = sit_constants.EVADE_DISTANCE_SHORT
--s.evade_timeout = sit_constants.EVADE_TIMEOUT_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@4c2389a5]]
s.reward_unlocked_text    = [[text@ec193cce]]
s.reward_progress_text = [[text@ec2906d4]]
s.reward_guid  = hex2dec('ACCCDC74') --deluxe police station
s.failure_text = [[text@6c2389ad]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_r_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_POLICE_HELICOPTER
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
--s.evil_twin = hex2dec('cc27962b') --On the Trail
--easy
s.success_aura_radius  = sit_constants.GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.GOOD_FAILURE_AURA_MAG
--s.success_money = sit_constants.GOOD_SUCCESS_MONEY
--s.failure_money = sit_constants.GOOD_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 3.5

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return result
end
--
-------------------------------------------------------------

-------------------------------------
--Ambulance -Slipped on Llama Dung -good
---------------------------------------
s = create_advice_citysituation('cc0ad971')
s.title = "text@6C154428"
--
s.message = [[text@06C1540E]]
---
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.ambulance -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.COMMERCIAL, --need CS!!!
   building_groups.Hospital
}
s.progress_text = { 
[[text@4C1580E8]]
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
---
s.success_text = [[text@EC15452A]]
s.reward_unlocked_text    = [[text@EC193CD9]]
s.reward_guid  = hex2dec('B2C16571') --RW36x50_DiseaseCtr_033F0000.exmp
s.failure_text = [[text@2C154533]]
----
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_num_hospitals > 0 and game.g_city_c_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_Disease_Research_Center
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.ALARM
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('6c0ada11') --Shady Ambulance Driver
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

   result = 15 + (distToTarget / maxSpeed) * 3.7

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return result
end
--
-------------------------------------------
--Ambulance -Shady Ambulance Driver -evil
---------------------------------------
s = create_advice_citysituation('6c0ada11')
s.title = "text@6C154429"
--
s.message = [[text@06C1540F]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.ambulance -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.CS1, --CO!!!
   building_groups.CO2 --CS!!!
}
s.progress_text = { 
[[text@4C1580E9]]
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
s.success_text = [[text@EC15452B]]
s.reward_unlocked_text    = [[text@cc2389ce]]
s.reward_guid  = hex2dec('03220000') --courthouse
s.failure_text = [[text@2C154534]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_num_hospitals > 0 and game.g_city_cs1_population	> 50 and game.g_city_co2_population	> 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_Courthouse
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL --was great_job
s.failure_mood = advice_moods.BAD_JOB --was bad job
s.evil_twin = hex2dec('cc0ad971') --Slipped on Llama Dung
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

   result = 15 + (distToTarget / maxSpeed) * 3.7

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return result
end
--
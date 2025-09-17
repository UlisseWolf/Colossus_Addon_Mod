
-------------------------------------------------------------------
--Garbage truck missions- A Special Load of Garbage -evil
-------------------------------------------------------------------
s = create_advice_citysituation('2c008466')
s.title = "text@CC1026AC"
--
s.message = [[text@CC1026AD]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.garbage_truck -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.COMMERCIAL, --CS!!!
   building_groups.LANDFILL
}
s.progress_text = { 
[[text@ac15a0ae]]
}
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
--s.success_distance =  sit_constants.SUCCESS_DISTANCE_SHORT
--s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary = true
--s.service_mission = false
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.evade_list = { automata_groups.patrol_car, automata_groups.police_helicopter }
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@CC1026AE]]
s.reward_unlocked_text    = [[text@6c1d1d69]]
s.reward_guid  = hex2dec('03410000') --toxic Waste dump
s.failure_text = [[text@CC1026AF]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_c_population > 0 and game.g_landfill_capacity > 0 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_Toxic_Waste_Dump
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.GREAT_JOB
s.evil_twin = hex2dec('0c0088ad') --Uncle Vinnie Asks A Favor
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
   local result

   result = 15 + (distToTarget / maxSpeed) * 6

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
--Garbage truck missions- Uncle Vinnie Asks A Favor - good
-------------------------------------------------------------------
s = create_advice_citysituation('0c0088ad')
s.title = "text@cc1026a8"
--
s.message = [[text@cc1026a9]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.garbage_truck -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.COMMERCIAL, --CS!!!
   building_groups.POLICE
}
s.progress_text = { 
[[text@ac15a05e]]
}
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
s.success_distance =  sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary = true
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.service_mission = false
s.evade_list = { automata_groups.ice_cream_truck }
s.evade_distance = sit_constants.EVADE_DISTANCE_LONG
s.evade_timeout = 10
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@cc1026aa]]
s.reward_unlocked_text    = [[text@0c279fa9]]
s.reward_guid  = hex2dec('21483528') --prison
s.failure_text = [[text@cc1026ab]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_police_station_count > 0 and game.g_city_r_population > 0 and game.g_landfill_capacity > 0 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_Federal_Prison
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('2c008466') --A Special Load of Garbage
--hard
s.success_aura_radius  = sit_constants.HAR_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.HAR_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.HAR_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.HAR_GOOD_FAILURE_AURA_MAG
--s.success_money = sit_constants.MED_GOOD_SUCCESS_MONEY
--s.failure_money = sit_constants.MED_GOOD_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--
--s.success_aura_radius  = 64
--s.success_aura_magnitude = 20
--s.success_effect = "missionsuccess"
-- success_money = 0
--
--
function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 6

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return result
end


--



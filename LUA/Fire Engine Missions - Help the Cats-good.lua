---------------------------------------------------
-- Fire Engine Missions - Help the Cats-good
----------------------------------------------------
s = create_advice_citysituation('ac1714ce')
s.title = "text@6C154423"
--
s.message = [[text@EBBE5288]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.fire_engine -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL

}
s.progress_text = { 
[[text@AC154510]], 
[[text@AC154510]], 
[[text@AC154510]]
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
s.success_text = [[text@EC154525]]
s.failure_text = [[text@2C15452E]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game. g_fire_station_count > 0 and game.g_city_r_population > 500 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_IMAGE_SAFETY
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.ALARM 
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('4c0acdbf') --Hose Down the Cats
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

   result = 15 + (distToTarget / maxSpeed) * 4.5

   -- limit to min/max
   if (result < 15) then
      result = 15
  --elseif (result > 600) then       -- 600 seconds == ten minutes
     --result = 600
   end

   return result
end
--
---------------------------------------------------
-- Fire Engine Missions -Hose Down the Cats -evil
----------------------------------------------------
s = create_advice_citysituation('4c0acdbf')
s.title = "text@6C154422"
--
s.message = [[text@EBBE5287]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.fire_engine -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL,
   building_groups.RESIDENTIAL

}
s.progress_text = { 
[[text@AC15450F]], 
[[text@AC15450F]], 
[[text@AC15450F]]
}
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = false
s.success_distance =  sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary = true
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.service_mission = true
s.active_radius = 16
--s.evade_list = { automata_groups.getaway_van }
--s.evade_distance = sit_constants.EVADE_DISTANCE_SHORT
--s.evade_timeout = sit_constants.EVADE_TIMEOUT_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@EC154524]]
s.failure_text = [[text@2C15452D]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game. g_fire_station_count > 0 and game.g_city_r_population > 500 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.evil_twin = hex2dec('ac1714ce') -- Help the Cats
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

   result = 15 + (distToTarget / maxSpeed) * 4.6

   -- limit to min/max
   if (result < 15) then
      result = 15
  --elseif (result > 600) then       -- 600 seconds == ten minutes
    --result = 600
   end

   return result
end
--

---------------------------------------------------
-- Fire Engine Missions -Fire
----------------------------------------------------
s = create_advice_citysituation('4c19906c')
s.title = "text@6C154421"
--
s.message = [[text@EBBE5286]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_MEDIUM
s.automata_list = automata_groups.fire_engine -- sit_constants.lua
s.target_list = building_groups.FIRE_OCCUPANT
s.min_target_distance = 0        -- DO NOT CHANGE THIS TO non-0!
s.max_target_distance = 0
--
s.condition = sit_conditions.DESTROY_TARGET
s.create_target = false
--s.time_limit = 15 * 60
--
s.success_text = [[text@EC154523]]
s.reward_unlocked_text    = [[text@ac1be8d5]]
s.reward_guid  = hex2dec('A3DB5600') --deluxe fire station
s.reward_progress_text = [[text@4C193E49]]
s.failure_text = [[text@2C15452C]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.event = game_events.DISASTER_STARTED_FIRE
s.trigger="(game.g_fire_station_count > 0) and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_Deluxe_Fire_Station
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.ALARM 
s.failure_mood = advice_moods.BAD_JOB
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
   return 0       -- no time limit for fire missions
end
--
function s:check_success()
   if (game.g_disasters_fire_ended ~= 0) then
      if (game.g_disasters_damage_building_count < 5) then
         return sit_constants.RESULT_SUCCESS
      else
         return sit_constants.RESULT_FAILURE
      end
   else
      return sit_constants.RESULT_IN_PROGRESS
   end
end


---------------------------------------------------
-- Fire Engine Missions - Player-created fire
----------------------------------------------------
s = create_advice_citysituation('ec328d7d')
s.title = "text@6C154421"
--
s.message = [[text@EBBE5286]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_MEDIUM
s.automata_list = automata_groups.fire_engine -- sit_constants.lua
s.target_list = building_groups.FIRE_OCCUPANT
s.min_target_distance = 0        -- DO NOT CHANGE THIS TO non-0!
s.max_target_distance = 0
--
s.condition = sit_conditions.DESTROY_TARGET
s.create_target = false
--s.time_limit = 15 * 60
--
s.success_text = [[text@EC154523]]
s.reward_unlocked_text    = [[text@ac1be8d5]]
s.reward_guid  = hex2dec('A3DB5600') --deluxe fire station
s.reward_progress_text = [[text@4C193E49]]
s.failure_text = [[text@2C15452C]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.event = game_events.DISASTER_STARTED_PLAYER_FIRE
s.trigger="(game.g_fire_station_count > 0) and (sc4game.sitmgr.get_success_count('8c151efd') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_SAFETY
s.success_image = sit_constants.SITUATION_Reward_Deluxe_Fire_Station
s.failure_image = sit_constants.SITUATION_IMAGE_SAFETY
s.mood = advice_moods.ALARM 
s.failure_mood = advice_moods.BAD_JOB
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
   return 0       -- no time limit for fire missions
end
--
function s:check_success()
   if (game.g_disasters_fire_ended ~= 0) then
      if (game.g_disasters_damage_building_count < 5) then
         return sit_constants.RESULT_SUCCESS
      else
         return sit_constants.RESULT_FAILURE
      end
   else
      return sit_constants.RESULT_IN_PROGRESS
   end
end

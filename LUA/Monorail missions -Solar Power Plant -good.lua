----------------------------------------
--Monorail missions -Solar Power Plant -good
-------------------------------------------
s = create_advice_citysituation('2c2541f5')
s.title = "text@2c22b830"
--
s.message = [[text@8c22c8f6]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.monorail_engine -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.Monorail,
   building_groups.Monorail
}
s.progress_text = { 
[[text@ec27a8c8]]
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
s.success_text = [[text@8c22d0b4]]
s.reward_unlocked_text = [[text@6c22d0e2]]
s.reward_guid  = hex2dec('B031EC3E') --solar power plant (not in adv_consts)
s.failure_text = [[text@4c22d13f]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="sc4game.automata.get_source_building_count(building_groups.Monorail) >= 2  and (sc4game.sitmgr.get_success_count('2c1725c1') > 0 or sc4game.sitmgr.get_success_count('4c4694f6') > 0) and game.g_monorail_tile_count > 20" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_UTILITIES
s.success_image = sit_constants.SITUATION_Reward_Solar_Power_Plant
s.failure_image = sit_constants.SITUATION_IMAGE_UTILITIES
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
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

   result = 15 + (distToTarget / maxSpeed) * 12

   -- limit to min/max
   if (result < 15) then
      result = 15
  -- elseif (result > 600) then       -- 600 seconds == ten minutes
     -- result = 600
   end

   return result
end
--


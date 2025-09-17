----------------------------------
--Attack Jet Missions -- Cripple #city# Industrial Complex - evil
-----------------------------------
s = create_advice_citysituation('0c1434f7')
s.title = "text@6C154451"
--
s.message = [[text@06C15437]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW 
s.automata_list = automata_groups.fighter_plane -- sit_constants.lua
s.target_sequence = {    -- adv_const.lua
   building_groups.POWER,
   building_groups.INDUSTRIAL,
   building_groups.INDUSTRIAL,
   building_groups.INDUSTRIAL
}
s.progress_text = { 
[[text@4C158319]],
[[text@0C15454A]],
[[text@0C15454A]]
}
--
s.condition = sit_conditions.TARGET_DESTROYED
s.create_target = false
s.success_distance = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout = sit_constants.SUCCESS_TIMEOUT_SHORT
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--
s.success_text = [[text@EC154553]]
s.reward_unlocked_text    = [[text@cc238a13]]
s.reward_guid  = hex2dec('78A0F71A') --hydrogen power plant
s.failure_text = [[text@2C15455C]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_city_i_population > 100 and game.g_power_plant_count > 0 and game.reward_instance_count(special_buildings.Area51) > 0 and (sc4game.sitmgr.get_success_count('ac1726c8') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_Reward_Hydrogen_Power_Plant
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
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
   local result

   result = 15 + (distToTarget / maxSpeed) * 30

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return 600
end
--



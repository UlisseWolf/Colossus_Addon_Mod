-------------------------------------------
-- Tugboat missions - Tug boat SOS-good
------------------------------------------------
s = create_advice_citysituation('4c1d3cf6')
s.title = "text@8c19674d"
--
s.message = [[text@ec196765]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list =  automata_groups.tug_boat
s.target_sequence = { automata_groups.towable, building_groups.Marina }
--
s.condition = sit_conditions.REACH_TARGET
s.create_target = true
s.always_create_target = true
s.service_mission = true
s.success_distance = 64
s.success_timeout = 2
--s.use_lot_boundary = true
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_BOAT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
s.active_radius = 15
--
s.success_text = [[text@EC15456F]]
s.reward_unlocked_text    = [[text@EC193D06]]
s.reward_guid  = hex2dec('AE4A3810') --major art museam
s.failure_text = [[text@6c1d35be]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="(game.reward_instance_count(special_buildings.Marina) > 0) and (sc4game.sitmgr.get_success_count('cc1730cf') > 0)"
s.image = sit_constants.SITUATION_IMAGE_TRANSPORTATION
s.success_image = sit_constants.SITUATION_Reward_Modern_Art_Museum
s.failure_image = sit_constants.SITUATION_IMAGE_TRANSPORTATION
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
--s.evil_twin = hex2dec('cc14331d')
--med
s.success_aura_radius  = sit_constants.MED_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.MED_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_GOOD_FAILURE_AURA_MAG
--s.success_money = sit_constants.HAR_GOOD_SUCCESS_MONEY
--s.failure_money = sit_constants.HAR_GOOD_FAILURE_MONEY
s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT
--s.success_effect = sit_constants.SUCCESS_EFFECTMONEY
--s.success_effect = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect = sit_constants.FAILURE_EFFECT
--s.failure_effect = sit_constants.FAILURE_EFFECTMONEY
--

function s:init()
   local target
   target = sc4game.sitmgr.get_current_target()
   if (target ~= nil) then
      target.push_state(automata_states.IDLE)
   end
end


function s:get_time_limit(distToTarget, maxSpeed)
   local result

   result = 15 + (distToTarget / maxSpeed) * 100

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return 300
end
--

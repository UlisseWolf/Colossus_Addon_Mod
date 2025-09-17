--------------------------------------
-- Sky Writer Missions - Who Loves You, Baby?-good
----------------------------------------------------
s = create_advice_citysituation('4c172b54')
s.title = "text@6C15445B"
--
s.message = [[text@06C15441]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.sky_writer -- sit_constants.lua
s.condition = sit_conditions.CELL_COVERAGE
s.service_mission = true
--
s.success_text = [[text@EC15455D]]
s.reward_unlocked_text    = [[text@8c1d2fa8]]
s.reward_guid  = hex2dec('E227200C') --major league stadium
s.failure_text = [[text@2C154566]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_small_airport_count > 0 and (sc4game.sitmgr.get_success_count('ac1726c8') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_TRANSPORTATION
s.success_image = sit_constants.SITUATION_Reward_Major_League_Stadium
s.failure_image = sit_constants.SITUATION_IMAGE_TRANSPORTATION
s.mood = advice_moods.NEUTRAL
s.failure_mood = advice_moods.BAD_JOB
s.active_radius = 32
--s.coverage_cells_min   = 25
--s.coverage_cells_max   = 40
--s.coverage_cells = { {0,-2}, {1,-3}, {2,-4},{3,-4}, {4,-3}, {5,-2},{5,-1}, {4,0}, {3,1},{2,2}, {1,3}, {0,4},{-1,3}, {-2,2}, {-3,1},{-4,0}, {-5,-1}, {-5,-2},{-4,-3}, {-3,-4}, {-2,-4},{-1,-3}, {0,-1} }

s.coverage_cells = {{0,0},{0,-1},{0,-2},{0,-3},{0,-4},{0,-5},{0,-6},{0,-7},{0,-8},{1,-9},{1,-10},{1,-11},{2,-12},{2,-13},{3,-14},{4,-15},{4,-16},{5,-16},
{5,-17},{6,-17},{7,-18},{8,-18},{9,-18},{10,-18},{11,-18},{12,-18},{13,-18},{14,-18},{15,-18},{15,-17},{16,-17},{17,-16},{18,-15},
{19,-14},{19,-13},{20,-12},{20,-11},{20,-10},{20,-9},{20,-8},{20,-7},{20,-6},{20,-5},{20,-4},{19,-3},{19,-2},{18,-1},{18,0},{18,1},
{17,1},{17,2},{16,3},{15,4},{14,5},{13,6},{12,7},{11,8},{10,9},{10,10},{9,11},{8,12},{7,13},{6,14},{7,14},{5,15},{6,15},{4,16},{5,16},
{3,17},{4,17},{2,18},{1,19},{0,19},{-1,-9},{-1,-10},{-1,-11},{-2,-12},{-2,-13},{-3,-14},{-4,-15},{-4,-16},{-5,-16},
{-5,-17},{-6,-17},{-7,-18},{-8,-18},{-9,-18},{-10,-18},{-11,-18},{-12,-18},{-13,-18},{-14,-18},{-15,-18},{-15,-17},{-16,-17},{-17,-16},{-18,-15},
{-19,-14},{-19,-13},{-20,-12},{-20,-11},{-20,-10},{-20,-9},{-20,-8},{-20,-7},{-20,-6},{-20,-5},{-20,-4},{-19,-3},{-19,-2},{-18,-1},{-18,0},{-18,1},
{-17,1},{-17,2},{-16,3},{-15,4},{-14,5},{-13,6},{-12,7},{-11,8},{-10,9},{-10,10},{-9,11},{-8,12},{-7,13},{-6,14},{-7,14},{-5,15},{-6,15},{-4,16},{-5,16},
{-3,17},{-4,17},{-2,18},{-1,19},{0,19}}

s.coverage_type = sit_coverage_type.CELLS
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--s.coverage_lot = building_groups.CEMETARY
--s.coverage_zone = zone_tool_types.INDUSTRIAL_RES     
--s.coverage_network = network_types.OVER_GROUND
--s.coverage_rect = { 30, 30, 35, 35, }
s.evil_twin = hex2dec('6c172c05') --Secret Code in the Sky
--hard
s.success_aura_radius  = sit_constants.HAR_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.HAR_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius = sit_constants.HAR_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.HAR_GOOD_FAILURE_AURA_MAG
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

   result = 15 + (distToTarget / maxSpeed) * 12

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
     -- result = 600
   end

   return 600
end
--
--------------------------------------
-- Sky Writer Missions - Secret Code in the Sky-evil
----------------------------------------------------
s = create_advice_citysituation('6c172c05')
s.title = "text@6C15445C"
--
s.message = [[text@06C15442]]
--
s.priority=tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list = automata_groups.sky_writer -- sit_constants.lua
s.condition = sit_conditions.CELL_COVERAGE
s.service_mission = true
--
s.success_text = [[text@EC15455E]]
s.failure_text = [[text@2C154567]]
--
s.frequency = sit_constants.FREQUENCY_SHORT
s.trigger="game.g_small_airport_count > 0 and (sc4game.sitmgr.get_success_count('ac1726c8') > 0)" -- adv_game_data.lua
s.image = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image = sit_constants.SITUATION_IMAGE_DR_VU
s.mood = advice_moods.NEUTRAL
s.success_mood = advice_moods.GREAT_JOB
s.failure_mood = advice_moods.BAD_JOB
s.active_radius = 32
--s.coverage_cells_min   = 25
--s.coverage_cells_max   = 40
s.coverage_type = sit_coverage_type.CELLS
s.min_target_distance = sit_constants.MIN_TARGET_DISTANCE_SHORT 
s.max_target_distance = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.coverage_cells = { {0,-2}, {1,-3}, {-1,-1},{-2,0}, {-3,1}, {-4,2},{-5,3}, {-6,2}, {-7,1},{-8,0}, {-9,-1}, {-10,-2},{-11,-3}, {4,0}, {4,-1},{4,-2}, {4,-3}, {4,1},{5,2}, {6,3}, {7,3},{8,3}, {9,3}, {10,2}, {11,1},{11,0}, {11,-1}, {11,-2},{11,-3} } 
--s.time_limit = sit_constants.TIME_LIMIT_SHORT
--s.coverage_lot = building_groups.CEMETARY
--s.coverage_zone = zone_tool_types.INDUSTRIAL_RES     
--s.coverage_network = network_types.OVER_GROUND
--s.coverage_rect = { 30, 30, 35, 35, }
s.evil_twin = hex2dec('4c172b54') --Who Loves You, Baby?
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

   result = 15 + (distToTarget / maxSpeed) * 12

   -- limit to min/max
   if (result < 15) then
      result = 15
   --elseif (result > 600) then       -- 600 seconds == ten minutes
      --result = 600
   end

   return 600
end
--
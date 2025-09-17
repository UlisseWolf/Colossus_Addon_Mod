--#-package:7ab443f9# -- package signature --
-- For Lua file entry IID 0xf8b443f9

-- From: 020 - FFA8F301 - adv_rewards.lua
------- Reward record Opera house -------
-----------------------------------------
delete_advice('032b0000') -- Remove reward for Maxis vanilla Opera House


-- Direct add to the special buildings table.
--   Use with game.reward_instance_count() function.
----------------------------------------------------
special_buildings.OperaHouseMZ = hex2dec('B32B0000')

-- Change the lot plop IID when Opera House is earned.
-- Points to the New LotConfigurations Exemplar: 6534284A-A8FBD372-43253F14
--   That exemplar has 0xB32B000 in Rep 13 of the 0x00000000 building property and is what the count function looks for.
------------------------------------------------------------------------------------------------------------------------
building_tool_types.OPERA_HOUSE   = hex2dec('43253f14')
building_tool_types.MAXIS_THEATER = hex2dec('2eab68cd')


-- From: 019 - FF2D523A - adv_mysim.lua
--#Advisor# Buys Season Tickets For Opera
-----------------------------------------
delete_advice('4a874a53')

a           = create_advice_mysim('4a874a53')
a.trigger   = "game.mysim_distance_to_closest_building(building_groups.OPERA) < tuning_constants.MYSIM_HOME_RADIUS and game.random_chance(tuning_constants.RANDOM_CHANCE)"
a.title     = [[text@2a5c0348]]
a.message   = [[text@0a5c034c]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.GREAT_JOB
a.frequency = tuning_constants.ADVICE_FREQUENCY_LOW
a.persist   = 1


-- From: 020 - FFA8F301 - adv_rewards.lua
------- Reward record Opera house -------
------------------------------------------
a = create_reward_cityplanning('b32b0000')

function a.condition()
if (not missions_completed( { '2c1433b3'} ) and ( game.g_city_r3_population * 3 + game.g_city_r2_population < tuning_constants.OPERA_POP_RM_RH or game.reward_instance_count('033c0000') <1 or game.ga_mayor_rating < tuning_constants.OPERA_MR)) then
--w  if (not missions_completed( { '2c1433b3'} ) and game.g_city_r_population < 100 )then
    return [[text@aa81d60f]] -- This is what displays on the menu item if conditional building is not available.
  else
    return reward_state.AVAILABLE
  end
end

a.once      = 1
a.timeout   = tuning_constants.ADVICE_TIMEOUT_LONG
a.title     = [[text@4a5d3aa9]]
a.message   = [[text@6a5d3aac]] -- Verbiage with Accept / Decline (Passes "game.tool_plop_building(building_tool_types.OPERA_HOUSE" to the plop function.)
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood      = advice_moods.GREAT_JOB
a.persist   = 1


-- From: 024 - FFA79144 - adv_fluffnews.lua
--------- Reward news Opera House ---------
-------------------------------------------
delete_advice('0a789576')

a           = create_advice_fluff ('0a789576')
a.trigger   = "game.reward_instance_count('b32b0000')== 1"
a.timeout   = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title     = [[text@ca777f5e]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.FLUFF
a.news_only = 1
a.persist   = 1
a.once      = 1


----------------------------------------------------------
-- Taxi Cab missions - Scientist Late For Flight (Good) --
----------------------------------------------------------
delete_advice('2c1433b3')

s                        = create_advice_citysituation('2c1433b3')
s.title                  = "text@6C154437"
s.message                = [[text@06C1541D]]
s.priority               = tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list          = automata_groups.taxi_cars -- sit_constants.lua
s.target_sequence        = { building_groups.RESIDENTIAL, building_groups.AIRPORT, }
s.progress_text          = { [[text@4C1582FF]] }
s.condition              = sit_conditions.REACH_TARGET
s.create_target          = false
s.success_distance       = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout        = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary       = true
s.min_target_distance    = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance    = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.success_text           = [[text@EC154539]]
s.reward_unlocked_text   = [[text@EC193CE7]]
s.reward_guid            = hex2dec('b32b0000') -- ModPacc Zero Opera House
s.failure_text           = [[text@2C154542]]
s.frequency              = sit_constants.FREQUENCY_SHORT
s.trigger                = "game.g_small_airport_count > 0 and game.g_city_r_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)"
--w (Allows only one completion.) s.trigger                = "game.g_small_airport_count > 0 and game.g_city_r_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0) and (sc4game.sitmgr.get_success_count('2c1433b3') < 1)"
s.image                  = sit_constants.SITUATION_IMAGE_TRANSPORTATION
s.success_image          = sit_constants.SITUATION_Reward_Opera_House
s.failure_image          = sit_constants.SITUATION_IMAGE_TRANSPORTATION
s.mood                   = advice_moods.NEUTRAL
s.failure_mood           = advice_moods.BAD_JOB
s.evil_twin              = hex2dec('6c1433b6') --Insane Taxi
s.success_aura_radius    = sit_constants.MED_GOOD_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_GOOD_SUCCESS_AURA_MAG
s.failure_aura_radius    = sit_constants.MED_GOOD_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_GOOD_FAILURE_AURA_MAG
s.success_money          = sit_constants.MED_GOOD_SUCCESS_MONEY
s.failure_money          = sit_constants.MED_GOOD_FAILURE_MONEY
s.success_effect         = sit_constants.SUCCESS_EFFECTMAYRAT_MONEY
s.failure_effect         = sit_constants.FAILURE_EFFECTDARKMONEY

function s:get_time_limit(distToTarget, maxSpeed)
   local result
   result = 15 + (distToTarget / maxSpeed) * 4
   if (result < 15) then
      result = 15
   end
   return result
end
--

----------------------------------------------
-- Taxi Cab missions - Insane Taxi!! (Evil) --
----------------------------------------------
delete_advice('6c1433b6')

s                        = create_advice_citysituation('6c1433b6')
s.title                  = "text@6C154438"
s.message                = [[text@06C1541E]]
s.priority               = tuning_constants.ADVICE_PRIORITY_LOW
s.automata_list          = automata_groups.taxi_cars
s.target_sequence        = { building_groups.RESIDENTIAL, building_groups.AIRPORT }
s.progress_text          = { [[text@4C158300]] }
s.condition              = sit_conditions.REACH_TARGET
s.create_target          = false
s.success_distance       = sit_constants.SUCCESS_DISTANCE_SHORT
s.success_timeout        = sit_constants.SUCCESS_TIMEOUT_SHORT
s.use_lot_boundary       = true
s.min_target_distance    = sit_constants.MIN_TARGET_DISTANCE_SHORT
s.max_target_distance    = sit_constants.MAX_TARGET_DISTANCE_SHORT
s.success_text           = [[text@EC15453A]]
s.failure_text           = [[text@2C154543]]
s.frequency              = sit_constants.FREQUENCY_SHORT
s.trigger                = "game.g_small_airport_count > 0 and game.g_city_r_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0)"
--w (Allows only one completion.) s.trigger                = "game.g_small_airport_count > 0 and game.g_city_r_population > 50 and (sc4game.sitmgr.get_success_count('8c151efd') > 0) and (sc4game.sitmgr.get_success_count('6c1433b6') < 1)"
s.image                  = sit_constants.SITUATION_IMAGE_DR_VU
s.success_image          = sit_constants.SITUATION_IMAGE_DR_VU
s.failure_image          = sit_constants.SITUATION_IMAGE_DR_VU
s.mood                   = advice_moods.NEUTRAL
s.success_mood           = advice_moods.GREAT_JOB
s.failure_mood           = advice_moods.BAD_JOB
s.evil_twin              = hex2dec('2c1433b3') --Scientist Late For Flight
s.success_aura_radius    = sit_constants.MED_EVIL_SUCCESS_AURA_RADIUS
s.success_aura_magnitude = sit_constants.MED_EVIL_SUCCESS_AURA_MAG
s.failure_aura_radius    = sit_constants.MED_EVIL_FAILURE_AURA_RADIUS
s.failure_aura_magnitude = sit_constants.MED_EVIL_FAILURE_AURA_MAG
s.success_money          = sit_constants.MED_EVIL_SUCCESS_MONEY
s.failure_money          = sit_constants.MED_EVIL_FAILURE_MONEY
s.success_effect         = sit_constants.SUCCESS_EFFECTMONEY
s.failure_effect         = sit_constants.FAILURE_EFFECTDARKMONEY

function s:get_time_limit(distToTarget, maxSpeed)
   local result
   result = 15 + (distToTarget / maxSpeed) * 4
   if (result < 15) then
      result = 15
   end
   return result
end


-- New for ModPacc Zero
------- Enable Auxiliary Building -------
------------------------------------------
a = create_reward_cityplanning('2eab68cd')

function a.condition()
if game.reward_instance_count('032b0000') < 1 and game.reward_instance_count('b32b0000') < 1 then -- No Opera House of any flavor.
    return [[text@3e05ae8b]] -- This is what displays on the menu item if conditional building is not available.
  else
    return reward_state.AVAILABLE
  end
end

a.once      = 1
a.timeout   = tuning_constants.ADVICE_TIMEOUT_LONG
a.title     = [[text@5e0f19e2]]
a.message   = [[text@93c92938]] -- Verbiage with Accept / Decline (Passes "game.tool_plop_building(building_tool_types.OPERA_HOUSE" to the plop function.)
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood      = advice_moods.GREAT_JOB
a.persist   = 1




-- EOF
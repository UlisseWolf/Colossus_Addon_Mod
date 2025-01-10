--#-package:7a76A499# -- package signature
--
-- Fixed Underfunded Notices (FUN) - Urgent Priority - by CoriBoom v1.0.dat (2021.05.26)

-- Clear out old advice records (I remake them.)
delete_advice('2a71398d') -- Original for Pockets Picked
delete_advice('ea5e97a8') -- Original for No Bandage Blues: Hospital Workers Walk
delete_advice('aa713e17') -- Original for Teachers Threaten To Drop The Chalk And Walk
delete_advice('0a5e79a1') -- Original for Teachers Take Long Recess: They Strike
delete_advice('eaabfe7e') -- Original for Library Strike (was not used)
delete_advice('eaac049a') -- Original for Museum Strike (was not used)
delete_advice('2a64d230') -- Original for Fire Fighters Strike
delete_advice('ca5e732a') -- Original for Crooks Rejoice! Police Strike.


-- Cori's Fix for the Local Hospital Pockets Picked Thinger.
-- Original code for this is from FF4CE096 - adv_hq.lua
a = create_advice_hq('2a71398d')
a.trigger  = "game.g_num_hospitals > 0 and game.l_hospital_grade_l < 100"
a.title   = "text@ea5655d2"
a.message   = [[text@2a5655d6]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.frequency = 42
a.timeout = 30
a.mood = advice_moods.BAD_JOB


-- Cori's FUN Enhancement for Healthcare Strikes.
-- Original code for this is from FF4CE096 - adv_hq.lua
a = create_advice_hq('ea5e97a8')
a.event = game_events.HEALTH_STRIKE_STARTED 
a.trigger  = "game.g_health_strike>0" 
a.title   = "text@8a565562No Bandage Blues: #City# Hospital Workers Walk"
a.message   = [[text@2a565569]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.BAD_JOB
a.effects = effects.HEALTH_STRIKE


-- Cori's FUN Enhancement for Teacher's Threaten Strike.
-- Original code for this is from FF4CE096 - adv_hq.lua
a = create_advice_hq('aa713e17')
a.trigger = "game.l_school_grade_l < 100"
a.title   = [[text@2a565623]]
a.message   = [[text@0a565627]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.frequency = 42
a.timeout = 30
a.mood = advice_moods.BAD_JOB


-- Cori's FUN Enhancement for School Strikes.
-- Original code for this is from FF4CE096 - adv_hq.lua
a = create_advice_hq('0a5e79a1')
a.event = game_events.SCHOOL_STRIKE_STARTED 
a.trigger  = "game.g_school_strike>0"
a.title   = "text@6a56561bTeachers Take Long Recess: They Strike"
a.message   = [[text@4a56561f]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.BAD_JOB
a.effects = effects.EDUCATION_STRIKE


-- Cori's FUN rewrite of the unused Library Strikes to handled Underfunded.
-- Original code for this is from FF4CE096 - adv_hq.lua
a = create_advice_hq('eaabfe7e')
a.trigger = "game.l_library_grade_l < 100"
a.title   = "text@8aabfe88"
a.message   = [[text@aaabfe93]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.frequency = 42
a.timeout = 30
a.mood = advice_moods.BAD_JOB


-- Cori's rewrite for the Museum Strikes to handled Underfunded.
-- Original code for this is from FF4CE096 - adv_hq.lua
a = create_advice_hq('eaac049a')
a.trigger = "game.l_museum_grade_l < 100"
a.title   = "text@0aac0428"
a.message   = [[text@caac0434]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.frequency = 42
a.timeout = 30
a.mood = advice_moods.BAD_JOB


-- Cori's FUN Enhancement for Fire Fighters Strikes.
-- Original code for this is from FFA5A138 - adv_safety.lua
a = create_advice_safety('2a64d230')
a.event = game_events.FIRE_STRIKE_STARTED
a.trigger ="game.g_fire_strike > 0"
a.title   = "text@0a3abb29"
a.message   = [[text@aa3abb2e]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.ALARM
a.effects = effects.FIRE_STRIKE


-- Cori's FUN Enhancement for Police Strikes.
-- Original code for this is from FFA5A138 - adv_safety.lua
a = create_advice_safety('ca5e732a')
a.event = game_events.POLICE_STRIKE_STARTED
a.trigger  = "game.g_police_strike>0"
a.title   = "text@aa564132"
a.message   = [[text@0a564137]] 
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.ALARM
a.effects = effects.POLICE_STRIKE

-- EOF

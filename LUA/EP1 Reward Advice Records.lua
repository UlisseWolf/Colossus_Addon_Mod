-----------------------------------------------------------------------------------------
-- This file defines advices for the the ENVIRONMENT
dofile("adv_fluffnews.lua") 


--------------------------------------------------------------------
------------ EP1 REWARD ADVICE RECORDS ---------------------------------
--------------------------------------------------------------------


-------------Reward news Space Shuttle Launch Pad----
a = create_advice_fluff ('4c0472b5')
a.trigger  = "game.reward_instance_count('03840000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@6bf1e508]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Reward news Cruise Ship Pier----
a = create_advice_fluff ('ec047433')
a.trigger  = "game.reward_instance_count('038C0000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@abf1e556]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Reward news Lighthouse----
a = create_advice_fluff ('6c0474b0')
a.trigger  = "game.reward_instance_count('03950000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@2bf1e58b]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Reward news Fire Department Landing Strip----
a = create_advice_fluff ('0c04755f')
a.trigger  = "game.reward_instance_count('A3DB5600')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@8bf1e5ae]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Reward news Grand Railroad Station----
a = create_advice_fluff ('cc0475b9')
a.trigger  = "game.reward_instance_count('03980000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@cbf1e5de]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Reward news Large Elementary School----Not sure if we need this for the schools
--a = create_advice_fluff ('ec04761e')
--a.trigger  = "game.reward_instance_count('03850000')== 1"
--a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
--a.title   = [[text@2bf42cf0]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
--a.mood = advice_moods.FLUFF
--a.news_only = 1
--a.persist = 1
--a.once = 1

-------------Reward news Large High School----Not sure if we need this for the schools
--a = create_advice_fluff ('4c047676')
--a.trigger  = "game.reward_instance_count('03890000')== 1"
--a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
--a.title   = [[text@0bf42d1f]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
--a.mood = advice_moods.FLUFF
--a.news_only = 1
--a.persist = 1
--a.once = 1


-------------Reward news Large Water Pump----Not sure if we need this for the pump
--a = create_advice_fluff ('2c04774a')
--a.trigger  = "game.reward_instance_count('03870000')== 1"
--a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
--a.title   = [[text@abf42d53]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
--a.mood = advice_moods.FLUFF
--a.news_only = 1
--a.persist = 1
--a.once = 1

-------------Reward news Marina----Not sure if we need this for the Marina
a = create_advice_fluff ('8c0477f5')
a.trigger  = "game.reward_instance_count('03970000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@8bf42d80]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Reward news Area 5.1 [Top Secret] -----
a = create_advice_fluff ('6c047884')
a.trigger  = "game.reward_instance_count('03960000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@6c02a3f6]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1



---------------------------------------------------------------------------------------
--------EP1 LANDMARK ADVICE RECORDS---------------------------------------
---------------------------------------------------------------------------------------


-------------Landmark news Sample----
--a = create_advice_fluff ('00000000')
--a.trigger  = "game.reward_instance_count('aaaa0000')== 1"
--a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
--a.title   = [[text@00000000]]
--a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
--a.mood = advice_moods.FLUFF
--a.news_only = 1
--a.persist = 1
--a.once = 1

-------------Landmark news Columbia Seafirst Center----
a = create_advice_fluff ('0c095513')
a.trigger  = "game.reward_instance_count('04B00000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@2c094bb7]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Landmark news American Museum of Natural History----
a = create_advice_fluff ('2c095582')
a.trigger  = "game.reward_instance_count('04B20000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@4c094b82]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Landmark news Schloss Neuschwanstein----
a = create_advice_fluff ('8c0955d2')
a.trigger  = "game.reward_instance_count('04A20000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@ac094b99]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Landmark news San Francisco City Hall----
a = create_advice_fluff ('6c095614')
a.trigger  = "game.reward_instance_count('04AC0000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@4c094baa]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

-------------Landmark news Lincoln Center----
a = create_advice_fluff ('cc09564e')
a.trigger  = "game.reward_instance_count('04AB0000')== 1"
a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title   = [[text@0c094bcb]]
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood = advice_moods.FLUFF
a.news_only = 1
a.persist = 1
a.once = 1

--------------------------------------------------------------------
-- This will try to execute triggers for all registerd advices 
-- to make sure they don't have any syntactic errors.

if (_sys.config_run == 0)
then
   advices : run_triggers()
end





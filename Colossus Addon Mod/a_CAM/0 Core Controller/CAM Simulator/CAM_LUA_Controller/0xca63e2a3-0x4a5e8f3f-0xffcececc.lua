-- jailbreak.lua
--

-- Original Maxis code except for the "Disable the Constant Jailbreaks" section at the bottom.


-- create a generator that creates chain gang at the edge of the lot.
generator.chaingang_make = 
{
      automata = { "chain_gang" },						-- create armybase trucks
      count = 1,
      rate =2,										-- ...X times per...
      rate_scale = RateScale.PER_HOUR,	-- ...game minute
      max_count=1,
      -- generate at random distances between 1 and 7 meters away.
      radius = { 1,26 },
      ignore_lot = true, 
      destroy_automata = true,
     	follow_roads = true,
      time_of_day = {
         [7.1] = 0.0,   -- 
         [7.5] = 1.0,   -- 
         [8.0] = 0.0,   -- 
         [15.1] = 0.3,   -- 
         [15.5] = 1.0,   -- 
         [16.0] = 0.0,   -- 
         },
      behavior = {					-- behavior is always expressed as a table of tables, since there can be more than 1
		{	
			state = BehaviorState.IDLE,
      timeout = 50,
      final = true,
		},
   },      
}

-- create a generator that creates chain gang at the edge of the lot.
generator.beatcop_make = 
{
      automata = { "policeman" },						-- create from this group(s)
      count = 1,
      rate =1,										-- ...X times per...
      rate_scale = RateScale.PER_HOUR,	-- ...game minute
      max_count=2,
      -- generate at random distances between 1 and 7 meters away.
      --~ ignore_lot = true, 
      radius = { 1,6 },
      destroy_automata = true,
     	follow_roads = true,
            behavior = {					-- behavior is always expressed as a table of tables, since there can be more than 1
		{	
			state = BehaviorState.DEFAULT,
      timeout = 50,
      final = true,
		},
   },      
}
-- create a generator that creates single prisoner sneak OUT --------
generator.prisoner_sneak = {
      --~ automata = { "prisoners" },						-- create X pedestrian group
      automata = { "prisoner_cop_magnet"},						-- create X pedestrian group
      random_chance = 0.1,
      count = 1,
      rate =5,										-- ...once every...
      rate_scale = RateScale.PER_WEEK,	-- ...game minute
        --~ rate_scale = RateScale.PER_HOUR,	-- ...game minute
    max_count=3,
      radius = { 1,2 },    -- generate at random distances between 1 and 7 meters away.
             behavior = {					-- behavior is always expressed as a table of tables, since there can be more than 1
                 {
                  state = BehaviorState.RANDOM_WALK,
                  anims = {"run","panic_run" },
                  sfx = { SFX.Prison_Siren },
                  random_walk =
                        {
                           kph = { 20},
                           delay = { 2, 10 },
                           turn = { 0.3, 0.05 },
                           idle_delay = { 5, 30 },
                           idle_time = { 0.1, 1 },
                           strength = 0.5,
                           acceleration = 0.5,
                           deceleration = 0.5,
                        },
                  timeout = 30,
                  ignore_roads = true,
                  ignore_paths = true,
                  final = true,
                  },
            },        
}
------------- jailbreakKid REPULSOR ---------------------
attractor.prisoners_push =
{
	strength = {-100},
	radius = 5,					-- influence radius, in meters
   automata = { "prisoners", "policeman","prisoner_cop_magnet" },						-- create X pedestrian group
}
-------============================================
-- create a generator that creates jailbreak OUT --------
generator.prisoners_out = {
      --~ automata = { "prisoners" },						-- create X pedestrian group
      automata = { "prisoners","prisoners","prisoner_cop_magnet","policeman"},						-- create X pedestrian group
      count = 3,
      rate =5,										-- ...once every...
      rate_scale = RateScale.PER_MINUTE,	-- ...game minute
      max_count=30,
      radius = { 1,3 },    -- generate at random distances between 1 and 7 meters away.
      lifetime = 60,
      --~ use_lot_facing = true,
      --~ sfx = { SFX.Prison_Siren }, --- This is for the generator only - should be a one shot.
       behavior = {					-- behavior is always expressed as a table of tables, since there can be more than 1
                 {
                  state = BehaviorState.RANDOM_WALK,
                  anims = { "run" },
                  timeout = 10,
                  ignore_roads = true,
                  ignore_paths = true,
                  final = true,
                  },
            },        
}
generator.prisoners_out_sfx = {
      --~ automata = { "prisoners" },						-- create X pedestrian group
      automata = { "prisoner_cop_magnet",},						-- create X pedestrian group
      count = 1,
      rate =6,										-- ...once every...
      rate_scale = RateScale.PER_HOUR,	-- ...game minute
      max_count=1,
      radius = { 1,3 },    -- generate at random distances between 1 and 7 meters away.
      lifetime = 60,
      --~ use_lot_facing = true,
      --~ sfx = { SFX.Prison_Siren }, --- This is for the generator only - should be a one shot.
       behavior = {					-- behavior is always expressed as a table of tables, since there can be more than 1
                 {
                  state = BehaviorState.RANDOM_WALK,
                  anims = { "run" },
                  timeout = 10,
                  sfx = { SFX.Prison_Siren }, 
                  ignore_roads = true,
                  ignore_paths = true,
                  final = true,
                  },
            },        
}

-------------------------------------
-- Disable the Constant Jailbreaks --
-------------------------------------
occupant_group.jail      = {}
occupant_group.jailbreak = {}


-- EOF
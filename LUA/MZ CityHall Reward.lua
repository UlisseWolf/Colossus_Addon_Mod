--#-package:7ab443fe# -- package signature --
-- For Lua file entry IID 0xf8b443fe

-- ModdPac Zero City Halls Phase 0 (New Village Hall) and Phase 1, 2, and 3 Maxis City Halls re-lotted by Cyclone Boom.
--   Phase 0 Village Hall is in the Rewards Menu, but is non-conditional so it's Query Info is immediately available.
-- This Lua code written by Cori.

-- Used to allow an already plopped Phase 1 City Hall to be replopped under vanilla rules even if the pop and mayor rating is less than the
--   new criteria of Pop => 15,500 and Mayor Rating => 40. (It'll use the vanilla rule of 12,500 and 20, but only if a Phase 1 existed.)
-- Note: It really only matters if the vanilla City Hall is bulldozed and this prevents a WTF? moment.
cmVanillaTownHallToggle = 0 -- This is only set here once when loading a city tile.


-- Variables for Phase 2 and 3 City Hall (Phase 3 is renamed to Metropolis Hall in ModPacc Zero)
-- Same as Mr. Truesage's altered numbers because Phase 2 and 3 were not available in Vanilla.
tuning_constants.CITYHALL2_POP   = 31000
tuning_constants.CITYHALL2_MR    =    45
tuning_constants.CITYHALL3_POP   = 62000
tuning_constants.CITYHALL3_MR    =    50


----- Reward record Village Hall 0 (Phase 0 created by Cyclone Boom - It's conditional so we can "game.reward_instance_count" count it for news.)
a = create_reward_cityplanning('03c30000')
function a.condition()
  return reward_state.AVAILABLE
end


----- Reward news Village Hall 0 ----
a           = create_advice_fluff('ec599c42')
a.trigger   = "game.reward_instance_count('03c30000') > 0"
a.timeout   = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title     = [[text@eaae8b35]] -- Cori Note: IID not in Maxis. New verbiage by CB
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.FLUFF
a.news_only = 1
a.persist   = 1
a.once      = 1


----- Reward record Town Hall 1 (Phase 1 City Hall renamed to Town Hall in ModPacc Zero)
delete_advice('03c00000') -- Cori added. Delete before remaking because this is different than Vanilla and Mr. Truesage's mod.

-- Maxis (and Mr. Truesage's) version, but revised by Cori to be friendly to peeps converting from vanilla.
a = create_reward_cityplanning('03c00000')
function a.condition()
  -- This gives the best compatibility with vanilla which is especially important for a city tile which has a Phase 1 City Hall, but which
  --   has not yet reached the new threshold as set in Mr. Truesage's mod. (Allows bulldozing and replopping in the same session.)
  if (cmVanillaTownHallToggle == 0) and (game.g_population < 15500) and (game.reward_instance_count('03C00000') > 0) then
    cmVanillaTownHallToggle        =     1
    tuning_constants.CITYHALL1_POP = 12500
    tuning_constants.CITYHALL_MR   =    20
  end

  -- Set to Mr. Truesage's values only if a vanilla City Hall was not found while the pop and/or mayor rating is less than his threshold.
  if not (cmVanillaTownHallToggle == 1) and (game.g_population < 15500) then
    tuning_constants.CITYHALL1_POP = 15500
    tuning_constants.CITYHALL_MR   =    0 -- Org 40 in Mr. Truesage's mod.
  end

  -- Now the standard Maxis check (same as Mr. Truesage copied) to see if the reward has been earned.
  if (not missions_completed( { 'cc0f0c82'} ) and ( game.g_population < tuning_constants.CITYHALL1_POP or game.ga_mayor_rating < tuning_constants.CITYHALL_MR)) then
    return [[text@ca81d591]] -- Existing Maxis (Shows requirements on menu icon hover over if not available.)
  else
    return reward_state.AVAILABLE
  end
end

a.once     = 1
a.timeout  = tuning_constants.ADVICE_TIMEOUT_LONG
a.title    = [[text@ca5d3035]] -- Existing Maxis (Tweaked by Cori for Name)
a.message  = [[text@ca5d3039]] -- Existing Maxis (Tweaked by Cori for Name)
a.priority = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood     = advice_moods.GREAT_JOB
a.persist  = 1


----- Reward news Town Hall 1 ----
delete_advice('ea7895af') -- Cori added. Delete before remaking in case peeps forget to remove Mr. Truesage's mod.

a           = create_advice_fluff('ea7895af')
a.trigger   = "game.reward_instance_count('03c00000') > 0"
a.timeout   = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title     = [[text@4ab28ba0]] -- Cori Note: IID not in Maxis. New verbiage.
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.FLUFF
a.news_only = 1
a.persist   = 1
a.once      = 1


----- Reward record City Hall 2 ----
delete_advice('03c10000') -- Cori added. Delete before remaking in case peeps forget to remove Mr. Truesage's mod.

-- Mr. Truesage version then tweaked to be less verbose in the function as well as remove the instance count check.
a = create_reward_cityplanning('03c10000')
function a.condition()
  --New (Allows Phase 2 to appear in the menu when the Population and Mayor Rating criteria are met without needing Phase 1 plopped.
  if ( game.g_population < tuning_constants.CITYHALL2_POP or game.ga_mayor_rating < tuning_constants.CITYHALL2_MR ) then
    return [[text@4a5a7019]] -- Cori added LText for Phase 2 requirements
  else
    return reward_state.AVAILABLE
  end
end

a.once     = 1
a.timeout  = tuning_constants.ADVICE_TIMEOUT_LONG
a.title    = [[text@aa5d3044]] -- Existing Maxis LText (Tweaked by Cori)
a.message  = [[text@2a5d3048]] -- Existing Maxis LText (Tweaked by Cori for Name)
a.priority = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood     = advice_moods.NEUTRAL
a.persist  = 1


----- Reward news City Hall 2 ----
delete_advice('6a7895e8') -- Cori added. Delete before remaking in case peeps forget to remove Mr. Truesage's mod.

-- Mr. Truesage version
a           = create_advice_fluff ('6a7895e8')
a.trigger   = "game.reward_instance_count('03c10000') > 0"
a.timeout   = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title     = [[text@e2747ba4]] -- Cori Note: IID not in Maxis. New verbiage.
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.FLUFF
a.news_only = 1
a.persist   = 1
a.once      = 1


----- Reward record Metropolis Hall 3 ----
delete_advice('03c20000') -- Cori added. Delete before remaking in case peeps forget to remove Mr. Truesage's mod.

-- Mr. Truesage version then tweaked to be less verbose in the function as well as remove the instance count check.
a = create_reward_cityplanning('03c20000')
function a.condition()
  --New (Allows Phase 3 to appear in the menu when the Population and Mayor Rating criteria are met without needing Phase 2 plopped.
  if (game.g_population < tuning_constants.CITYHALL3_POP or game.ga_mayor_rating < tuning_constants.CITYHALL3_MR ) then
    return [[text@2a25595e]] -- Cori added LText for Phase 3 requirements
  else
    return reward_state.AVAILABLE
  end
end

a.once     = 1
a.timeout  = tuning_constants.ADVICE_TIMEOUT_LONG
a.title    = [[text@0a5d304c]] -- Existing Maxis LText (Tweaked by Cori for Name)
a.message  = [[text@ca5d3050]] -- Existing Maxis LText (Tweaked by Cori for Name)
a.priority = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood     = advice_moods.NEUTRAL
a.persist  = 1


----- Reward news Metropolis Hall 3 ----
delete_advice('8a7895ec') -- Cori added. Delete before remaking in case peeps forget to remove Mr. Truesage's mod.

-- Mr. Truesage version
a           = create_advice_fluff ('8a7895ec')
a.trigger   = "game.reward_instance_count('03C20000') > 0"
a.timeout   = tuning_constants.ADVICE_TIMEOUT_SHORT
a.title     = [[text@85e2f51a]] -- Cori Note: IID not in Maxis. New verbiage.
a.priority  = tuning_constants.ADVICE_PRIORITY_LOW
a.mood      = advice_moods.FLUFF
a.news_only = 1
a.persist   = 1
a.once      = 1


----- Remove Conflit with  Real Upgradeable City Halls  ----
function advice_exists(_guid)
    local guid = _guid
    if (type(guid) == 'string') then
        guid = hex2dec(_guid)
    end
    local i, n = 1, advices.n
    while (i <= n) do
        if (advices[i].guid == guid) then
            return true
        else
            i = i + 1
        end
    end
    return false
end

local _city_hall2_upgrade_advice_exists = nil
function is_upgradeable_city_halls_installed()
    if _city_hall2_upgrade_advice_exists == nil then
        _city_hall2_upgrade_advice_exists = advice_exists('391d3389')
    end
    return _city_hall2_upgrade_advice_exists
end


-- EOF
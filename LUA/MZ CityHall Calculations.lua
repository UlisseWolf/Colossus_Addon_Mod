--#-package:7ab44404# -- package signature --
-- For Lua file entry IID 0xf8b44404

-- CoriBoom created code performing simulation variable calculations for the City Hall UI panel.
-- For ModPacc Zero v1.1

-- Do once when loading the city tile. Used with cmTileFullyLoadedCheck() function to set cmMZSessionStartDay.
cmMZTileFullyLoaded = 0

-- Start with these unset - They only executes once per city tile load
cmGroupSeparator   = nil
cmDecimalPoint     = nil

-- Specific code to find what Lua is using internally for the decimal point character.
cmActualDecimalPoint = string.sub(1.2, 2, 2)


-----------
-- INFO --
-----------

--------------------------------
function cmSimDate() -- Sim Date
--------------------------------
  cmSetNumericFormat() -- Needs to be run once for any standalone mod with extended data in the UI.
  local cmMonthsList = "JanFebMarAprMayJunJulAugSepOctNovDec"
  local cmYear       = string.rep("0",4 - string.len(game.g_year_count)) .. game.g_year_count
  local cmMonth      = string.sub(cmMonthsList, game.g_month * 3 - 2, game.g_month * 3)
  local cmDay        = string.rep("0",2 - string.len(game.g_day)) .. game.g_day

  return cmDay .. "  " .. cmMonth .. "  " .. cmYear
end


----------------------------------------
function cbCityFounded() -- City Founded
----------------------------------------
  local SetDays = game.g_date - 2451545

  if SetDays == 0 then
    -- Zero day say today.
    return "Today"
  elseif SetDays == 1 then
    -- For 1 day output singular text.
    return cmMZFormatNumber(SetDays, 0) .. "  day ago"
  else
    -- Or make it plural instead.
    return cmMZFormatNumber(SetDays, 0) .. "  days ago"
  end
end



-------------------------
-- SECTION A (Summary) --
-------------------------

-------------------------------------------------------
function cbMayorRating() -- Data A-1 (Calculation Only)
-------------------------------------------------------
  return game.ga_mayor_rating -- Do not format as this needs to be a raw number
end


--------------------------------------------
function cbMayorRatingOK() -- Data A-1a (OK)
--------------------------------------------
  local MayorRating = cbMayorRating()

  -- Check if Mayor Rating is positive number.
  if MayorRating >= 0 then
    -- Number is OK, so return to Standard box.
    return cmMZFormatNumber(MayorRating,0) .. string.char(183) -- Return with tacked on hidden character so the UI doesn't mess with it.
  else
    -- Skip output if less than zero.
    return " "
  end
end


----------------------------------------------
function cbMayorRatingRed() -- Data A-1b (Red)
----------------------------------------------
  local MayorRating = cbMayorRating()

  -- Check if Mayor Rating is negative number.
  if MayorRating < 0 then
    -- Negative number to trigger a warning, so return to Red box.
    return cmMZFormatNumber(MayorRating,0) .. string.char(183)
  else
    -- Skip output if greater than zero.
    return " "
  end
end


-----------------------------------
function cbResDensity() -- Data A-2
-----------------------------------
  -- We do need rounding as a separate function in pre-display calculations when checking for a specific value.
  local ResDensity = cmMZRound(game.g_population / (cbCountRes() + 0.00000001),2) -- Plain rounding


  if ResDensity ~= 1 then
    if ResDensity ~= 0 then
      return cmMZFormatNumber(ResDensity,2) .. "  Sims"
    else
      return "None"
    end
  else
    -- Rare, but can happen to have 1.00 Sim per Cell
    return cmMZFormatNumber(ResDensity,2) .. "  Sim"
  end
end


--------------------------------------
function cbWorkforceJobs() -- Data A-3
--------------------------------------
  return cmMZFormatNumber(game.g_city_workforce_population,0) .. string.char(183)
end


-----------------------------------
function cbEmployment() -- Data A-4
-----------------------------------
  if (game.g_population >= 1) and (game.g_city_workforce_population >= 1) then
    return cmMZFormatNumber(game.g_city_workforce_population / (game.g_population + 0.00000001) * 100,2) .. " %"
  elseif (game.g_population < 1) and (game.g_city_workforce_population >= 1) then
    return cmMZFormatNumber(game.g_city_workforce_population,0) .. string.char(183) -- Number of workers cause % would be crazy high
  else
    return "None"
  end
end


---------------------------------------
function cbNeutralTaxRate() -- Data A-5
---------------------------------------
  return cmMZFormatNumber(game.g_tax_rate_neutral,1) .. " %"
end


------------------------------------------
function cbCountRes() -- Tool for Data A-6
------------------------------------------
  return (game.g_num_rzone_ld_tiles + game.g_num_rzone_md_tiles + game.g_num_rzone_hd_tiles) -- Needs to be raw number
end


---------------------------------
function cbZonedRes() -- Data A-6
---------------------------------
  local TotalResPercent = ((cbCountRes() / (cbCountAllZones() + 0.00000001)) * 100)
  return cmMZFormatNumber(TotalResPercent,2) .. " %"
end


------------------------------------------
function cbCountCom() -- Tool for Data A-7
------------------------------------------
  return (game.g_num_czone_ld_tiles + game.g_num_czone_md_tiles + game.g_num_czone_hd_tiles) -- Raw number
end


---------------------------------
function cbZonedCom() -- Data A-7
---------------------------------
  local TotalComPercent = ((cbCountCom() / (cbCountAllZones() + 0.00000001)) * 100)
  return cmMZFormatNumber(TotalComPercent,2) .. " %"
end


------------------------------------------
function cbCountInd() -- Tool for Data A-8
------------------------------------------
  return (game.g_num_izone_l_tiles + game.g_num_izone_h_tiles) -- Raw number
end


---------------------------------
function cbZonedInd() -- Data A-8
---------------------------------
  local TotalIndPercent = ((cbCountInd() / (cbCountAllZones() + 0.00000001)) * 100)
  return cmMZFormatNumber(TotalIndPercent,2) .. " %"
end


-----------------------------------------
function cbCountAg() -- Tool for Data A-9
-----------------------------------------
  return game.g_num_izone_r_tiles -- Raw number
end


--------------------------------
function cbZonedAg() -- Data A-9
--------------------------------
  local TotalAgPercent = ((cbCountAg() / (cbCountAllZones() + 0.00000001)) * 100)
  return cmMZFormatNumber(TotalAgPercent,2) .. " %"
end


----------------------------------------------------
function cbCountAllZones() -- Tool for Data A6 to A9
----------------------------------------------------
  return cbCountRes() + cbCountCom() + cbCountInd() + cbCountAg() -- Raw number
end



---------------------------
-- SECTION B (Utilities) --
---------------------------

------------------------------------------------------
function cbPowerUsage() -- Data B-1 (Calculation Only)
------------------------------------------------------
  local Created = game.trend_value(game_trends.G_POWER_PRODUCED,0) + game.trend_value(game_trends.G_POWER_IMPORTED,0)
  local Used    = game.trend_value(game_trends.G_POWER_CONSUMED,0) + game.trend_value(game_trends.G_POWER_EXPORTED,0)

  return (Used / (Created + 0.00000001)) * 100 -- Raw number
end


-------------------------------------------
function cbPowerUsageOK() -- Data B-1a (OK)
-------------------------------------------
  local Usage = cbPowerUsage()

  -- Check if Power Usage is in the "safe" range.
  if Usage < 80 then
    -- Less than 80% number is OK, so return to Standard box.
    return cmMZFormatNumber(Usage,2) .. " %"
  else
    -- Skip output if greater than 80%.
    return " "
  end
end


---------------------------------------------------
function cbPowerUsageOrange() -- Data B-1b (Orange)
---------------------------------------------------
  local Usage = cbPowerUsage()

  -- Check if Power Usage has reached the threshold.
  if Usage >= 80 and Usage < 90 then
    -- Trigger an alert within the range, so return to Orange box.
    return cmMZFormatNumber(Usage,2) .. " %"
  else
    -- Skip output if greater than 80% or less than 90%.
    return " "
  end
end


---------------------------------------------
function cbPowerUsageRed() -- Data B-1c (Red)
---------------------------------------------
  local Usage = cbPowerUsage()

  -- Check if Power Usage is greater than 90%. (Can go over 100%.)
  if Usage >= 90 then
    -- Greater than 90% to trigger a warning, so return to Red box.
    return cmMZFormatNumber(Usage,2) .. " %"
  else
    -- Skip output if less than 90%.
    return " "
  end
end


------------------------------------------------------
function cbWaterUsage() -- Data B-2 (Calculation Only)
------------------------------------------------------
  local Created = game.trend_value(game_trends.G_WATER_PRODUCED,0) + game.trend_value(game_trends.G_WATER_IMPORTED,0)
  local Used    = game.trend_value(game_trends.G_WATER_CONSUMED,0) + game.trend_value(game_trends.G_WATER_EXPORTED,0)

  return (Used / (Created + 0.00000001)) * 100 -- Raw number
end


-------------------------------------------
function cbWaterUsageOK() -- Data B-2a (OK)
-------------------------------------------
  local Usage = cbWaterUsage()

  -- Check if Water Usage is less than 80%.
  if Usage < 80 then
    -- Number is OK, so return to Standard box.
    return cmMZFormatNumber(Usage,2) .. " %"
  else
    -- Skip output if greater than 80%.
    return " "
  end
end


---------------------------------------------------
function cbWaterUsageOrange() -- Data B-2b (Orange)
---------------------------------------------------
  local Usage = cbWaterUsage()

  -- Check if Water Usage has reached the threshold.
  if Usage >= 80 and Usage < 90 then
    -- Trigger an alert within the range, so return to Orange box.
    return cmMZFormatNumber(Usage,2) .. " %"
  else
    -- Skip output if less than 80% or greater than 90%.
    return " "
  end
end


---------------------------------------------
function cbWaterUsageRed() -- Data B-2c (Red)
---------------------------------------------
  local Usage = cbWaterUsage()

  -- Check if Water Usage is greater than 90%. (Water Usage max of 100%.)
  if Usage > 90 then
    -- High percentage to trigger a warning, so return to Red box.
    return cmMZFormatNumber(Usage,2) .. " %"
  else
    -- Skip output if less than 90%.
    return " "
  end
end


--------------------------------------
function cbPowerConsumed() -- Data B-3
--------------------------------------
  return cmMZFormatNumber(game.trend_value(game_trends.G_POWER_CONSUMED,0),0) .. "  mwh" -- Always integer
end


--------------------------------------------------------
function cbPowerSurplus() -- Data B-4 (Calculation Only)
--------------------------------------------------------
  return game.trend_value(game_trends.G_POWER_UNUSED,0) -- Raw Number
end


---------------------------------------------
function cbPowerSurplusOK() -- Data B-4a (OK)
---------------------------------------------
  local PowerSurplus = cbPowerSurplus()
  local Usage = cbPowerUsage()

  -- Check if Power Usage is less than 80%.
  if Usage < 80 then
    -- Number is OK, so return to Standard box.
    return cmMZFormatNumber(PowerSurplus,0) .. "  mwh" -- Always integer
  else
    -- Skip output if greater than 80%.
    return " "
  end
end


-----------------------------------------------------
function cbPowerSurplusOrange() -- Data B-4b (Orange)
-----------------------------------------------------
  local PowerSurplus = cbPowerSurplus()
  local Usage = cbPowerUsage()

  -- Check if Power Usage has reached the threshold.
  if Usage >= 80 and Usage < 90 then
    -- Trigger an alert within the range, so return to Orange box.
    return cmMZFormatNumber(PowerSurplus,0) .. "  mwh" -- Always integer
  else
    -- Skip output if less than 80% or greater than 90%.
    return " "
  end
end


-----------------------------------------------
function cbPowerSurplusRed() -- Data B-4c (Red)
-----------------------------------------------
  local PowerSurplus = cbPowerSurplus()
  local Usage = cbPowerUsage()

  -- Check if Power Usage is greater than 90%.
  if Usage > 90 then
    -- High percentage to trigger a warning, so return to Red box.
    return cmMZFormatNumber(PowerSurplus,0) .. "  mwh" -- Always integer
  else
    -- Skip output if less than 90%.
    return " "
  end
end


--------------------------------------
function cbWaterConsumed() -- Data B-5
--------------------------------------
  return cmMZFormatNumber(game.trend_value(game_trends.G_WATER_CONSUMED,0),0) .. string.char(183)
end


--------------------------------------------------------
function cbWaterSurplus() -- Data B-6 (Calculation Only)
--------------------------------------------------------
  return game.trend_value(game_trends.G_WATER_PRODUCED,0) - game.trend_value(game_trends.G_WATER_CONSUMED,0) -- Raw Number
end


---------------------------------------------
function cbWaterSurplusOK() -- Data B-6a (OK)
---------------------------------------------
  local WaterSurplus = cbWaterSurplus()
  local Usage = cbWaterUsage()

  -- Check if Water Usage is less than 80%.
  if Usage < 80 then
    -- Number is OK, so return to Standard box.
    return cmMZFormatNumber(WaterSurplus,0) .. string.char(183) -- Always integer
  else
    -- Skip output if greater than 80%.
    return " "
  end
end


-----------------------------------------------------
function cbWaterSurplusOrange() -- Data B-6b (Orange)
-----------------------------------------------------
  local WaterSurplus = cbWaterSurplus()
  local Usage = cbWaterUsage()

  -- Check if Water Usage has reached the threshold.
  if Usage >= 80 and Usage < 90 then
    -- Trigger an alert within the range, so return to Orange box.
    return cmMZFormatNumber(WaterSurplus,0) .. string.char(183) -- Always integer
  else
    -- Skip output if less than 80% or greater than 90%.
    return " "
  end
end


-----------------------------------------------
function cbWaterSurplusRed() -- Data B-6c (Red)
-----------------------------------------------
  local WaterSurplus = cbWaterSurplus()
  local Usage = cbWaterUsage()

  -- Check if Water Usage is greater than 90%.
  if Usage > 90 then
    -- High percentage to trigger a warning, so return to Red box.
    return cmMZFormatNumber(WaterSurplus,0) .. string.char(183) -- Always integer
  else
    -- Skip output if less than 90%.
    return " "
  end
end


--------------------------------------------------------
function cbGarbageLabelOK() -- Data B-7a (Label OK Only)
--------------------------------------------------------
  local LandfillCapacity = game.trend_value(713836182,0)
  local TotalGarbage     = game.trend_value(713836183,0)
  local GarbageProduced  = game.trend_value(game_trends.G_GARBAGE_PRODUCED,0)    / 100
  local GarbageProcessed = game.trend_value(game_trends.G_GARBAGE_TO_LANDFILL,0) / 100
                         + game.trend_value(game_trends.G_GARBAGE_RECYCLED,0)    / 100
                         + game.trend_value(game_trends.G_GARBAGE_INCINERATED,0) / 100
                         + game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)   / 100
                         + game.trend_value(game_trends.G_GARBAGE_EXPORTED,0)    / 100

  if GarbageProduced > 0 and TotalGarbage == 0 and GarbageProcessed == 0 then -- Check for hidden garbage.
    return "Hidden Garbage"
  elseif TotalGarbage > LandfillCapacity then
    return " "
  elseif LandfillCapacity > 0 and TotalGarbage > 0 then -- Check if landfill capacity is actively being used.
    return "Landfill Capacity Used"
  else
    return "Garbage Processed"
  end
end


----------------------------------------------------------
function cbGarbageLabelRed() -- Data B-7b (Label Red Only)
----------------------------------------------------------
  local LandfillCapacity = game.trend_value(713836182,0)
  local TotalGarbage     = game.trend_value(713836183,0)
  local GarbageProduced  = game.trend_value(game_trends.G_GARBAGE_PRODUCED,0)    / 100
  local GarbageProcessed = game.trend_value(game_trends.G_GARBAGE_TO_LANDFILL,0) / 100
                         + game.trend_value(game_trends.G_GARBAGE_RECYCLED,0)    / 100
                         + game.trend_value(game_trends.G_GARBAGE_INCINERATED,0) / 100
                         + game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)   / 100
                         + game.trend_value(game_trends.G_GARBAGE_EXPORTED,0)    / 100

  if GarbageProduced > 0 and TotalGarbage == 0 and GarbageProcessed == 0 then -- Check for hidden garbage.
    return " "
  elseif TotalGarbage > LandfillCapacity then
    return "Excess Garbage"
  elseif LandfillCapacity > 0 and TotalGarbage <= LandfillCapacity then -- Check if landfill capacity is active.
    return " "
  else
    return " "
  end
end


-------------------------------------------------------
function cbGarbageLabelBoth() -- Data B-7 (Both Labels)
-------------------------------------------------------
  if cbGarbageLabelOK() == " " then
    return cbGarbageLabelRed()
  else
    return cbGarbageLabelOK()
  end
end


-------------------------------------------------------
function cmGarbageCalc() -- Data B-7 (Calculation Only)
-------------------------------------------------------
  local Result
  local LandfillCapacity = game.trend_value(713836182,0) -- Using 0x2a8c4696 from Maxis Garbage Graph
  local TotalGarbage     = game.trend_value(713836183,0) -- Using 0x2a8c4697 from Maxis Garbage Graph
  local GarbageProduced  = game.trend_value(game_trends.G_GARBAGE_PRODUCED,0) / 100
  local GarbageImported  = game.trend_value(game_trends.G_GARBAGE_IMPORTED,0) / 100

  -- First check if there is any Excess garbage
  if TotalGarbage > LandfillCapacity then -- Note: TotalGarbage does not have to be in an actual Landfill to have a value.
    -- We have Excess garbage so check where it is.
    if LandfillCapacity > 0 then -- This is to see if there is a Landfill that's overloaded.
      -- We have Excess and it's more than the Landfill can hold.
      Result = (TotalGarbage - LandfillCapacity) / 100 -- Report only the amount greater than what is safely stored in a Landfill.
      return cmMZFormatNumber(Result,2) .. "  tons"
    else
      -- There is No Landfill, but too much garbage. (Or a Landfill without proper access shows it has LandfillCapacity = 0.)
      Result = TotalGarbage / 100
      return cmMZFormatNumber(Result,2) .. "  tons" -- No Landfill so all "Stored" is Excess.
    end
  else
    -- Garbage is sufficiently handled. Check how.
    if LandfillCapacity > 0 and TotalGarbage > 0 then -- We have a Landfill in good standing that is being used
      Result = (TotalGarbage / (LandfillCapacity + 0.00000001)) * 100
      return cmMZFormatNumber(Result,2) .. " %"  -- Percentage of Landfill Capacity Used
    else
      -- No landfill and trash is being handled some other way.
      Result = GarbageProduced + GarbageImported
      return cmMZFormatNumber(Result,2) .. "  tons" -- Garbage Processed
    end
  end
end



--------------------------------
-- SECTION C (Civic Services) --
--------------------------------

-----------------------------------------------------------------
function cbCrimesTotal(YearsAgo) -- Data C-1 (Prelim Calculation)
-----------------------------------------------------------------
  local TotalYearCrimes = 0
  local MonthsAgo       = YearsAgo * 12
  local EndMonthsAgo    = MonthsAgo + 12

  -- Loop 12 times adding up the monthly crime totals.
  while MonthsAgo < EndMonthsAgo
  do
    TotalYearCrimes = TotalYearCrimes + game.trend_value(game_trends.G_NUM_CRIMES,MonthsAgo)
    MonthsAgo = MonthsAgo + 1
  end

  return cmMZRound(TotalYearCrimes,0) -- Raw number as integer
end


-------------------------------------------------------------------
function cbCrimesPerCapita(YearsAgo) -- Data C-1 (Main Calculation)
-------------------------------------------------------------------
  local Crimes          = cmMZRound(cbCrimesTotal(YearsAgo),0) -- Should already be rounded, but ok to do again
  local CrimesPerCapita = (Crimes / (game.g_population + 0.00000001)) * 100000

  return cmMZFormatNumber(CrimesPerCapita,2) .. string.char(183)
end


------------------------------------------
function cbEducationQuotient() -- Data C-2
------------------------------------------
  return cmMZFormatNumber(game.trend_value(game_trends.GA_EQ,0),0) .. string.char(183) -- Could return plain, but this is safer
end


---------------------------------------
function cbLifeExpectancy() -- Data C-3
---------------------------------------
  if game.ga_life_exp > 1 then
    return cmMZFormatNumber(game.ga_life_exp,0) .. "  years"
  else
    return cmMZFormatNumber(game.ga_life_exp,0) .. "  year"
  end
end


------------------------------------
function cbHealthRating()-- Data C-4
------------------------------------
  local HealthPercent = game.ga_health / 2
  if HealthPercent > 100 then
    return cmMZFormatNuber(100,2) .. " %"
  else
    return cmMZFormatNumber(HealthPercent,2) .. " %"
  end
end


---------------------------------------
function cbPoliceCoverage() -- Data C-5
---------------------------------------
  return cmMZFormatNumber(game.g_police_coverage_p,2) .. " %"
end


-------------------------------------
function cbFireCoverage() -- Data C-6
-------------------------------------
  return cmMZFormatNumber(game.g_fire_coverage_p,2) .. " %"
end


---------------------------------------------
function cmEducationAchievement() -- Data C-7
---------------------------------------------
  local Divisor  = 0
  local EQTotal  = 0
  local EQRating = 0

  if game.trend_value(3394526379,0) > 0 then           -- Pop Age 01-10
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526410,0) -- EQ Age 01-10
  end
  if game.trend_value(3394526380,0) > 0 then           -- Pop Age 11-20
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526411,0) -- EQ Age 11-20
  end
  if game.trend_value(3394526381,0) > 0 then           -- Pop Age 21-30
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526412,0) -- EQ Age 21-30
  end
  if game.trend_value(3394526382,0) > 0 then           -- Pop Age 31-40
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526413,0) -- EQ Age 31-40
  end
  if game.trend_value(3394526383,0) > 0 then           -- Pop Age 41-50
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526414,0) -- EQ Age 41-50
  end
  if game.trend_value(3394526384,0) > 0 then           -- Pop Age 51-60
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526415,0) -- EQ Age 51-60
  end
  if game.trend_value(3394526385,0) > 0 then           -- Pop Age 61-70
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526416,0) -- EQ Age 61-70
  end
  if game.trend_value(3394526386,0) > 0 then           -- Pop Age 71-80
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526417,0) -- EQ Age 71-80
  end
  if game.trend_value(3394526387,0) > 0 then           -- Pop Age 81-90
    Divisor = Divisor + 1
    EQTotal = EQTotal + game.trend_value(3394526418,0) -- EQ Age 81-90
  end

  if Divisor > 0 then
    EQRating = EQTotal / Divisor / 2
    return cmMZFormatNumber(EQRating,2) .. " %"
  else
    return cmMZFormatNumber(0,2) .. " %"
  end
end



-----------------------------
-- SECTION D (Environment) --
-----------------------------

-------------------------------------
function cbAirPollution() -- Data D-1
-------------------------------------
  return cmMZFormatNumber(game.trend_value(game_trends.G_TOTAL_AIR_POLLUTION,0),0) .. string.char(183)
end


---------------------------------------
function cbWaterPollution() -- Data D-2
---------------------------------------
  return cmMZFormatNumber(game.trend_value(game_trends.G_TOTAL_WATER_POLLUTION,0),0) .. string.char(183)
end


-----------------------------------------
function cbGarbagePollution() -- Data D-3
-----------------------------------------
  return cmMZFormatNumber(game.trend_value(game_trends.G_TOTAL_GARBAGE_POLLUTION,0),0) .. string.char(183)
end


---------------------------------
function cmTileFullyLoadedCheck() -- So we can set the Session Start Day one time only.
---------------------------------
  if cmMZTileFullyLoaded == 0 then
    cmMZTileFullyLoaded = 1
    cmMZSessionStartDay = game.g_date
  end
end


-------------------------------------------
function cbRadiationPollution() -- Data D-4
-------------------------------------------
  -- This one can go goofy in the first month so trap for that.
  cmTileFullyLoadedCheck() -- Sets the cmMZSessionStartDay
  if game.g_date - cmMZSessionStartDay > 31 then
    return cmMZFormatNumber(game.trend_value(game_trends.G_TOTAL_RADIATION_POLLUTION,0),0) .. string.char(183)
  else
    return "Assessment Underway"
  end
end


-----------------------------------
function cbTotalParks() -- Data D-5
-----------------------------------
  return cmMZFormatNumber(game.g_num_parks,0) .. string.char(183)
end


-------------------------------------------------------
function cbCalcEcology() -- Data D-6 (Calculation Only)
-------------------------------------------------------
  local EcoResult = 100 - (game.ga_air_pollution / 10)
                  - (game.ga_water_pollution / 10)
                  - ((game.ga_garbage_pollution / 10) / ((game.g_pollution_funding_p + 0.00000001) / 100))
                  - (game.g_water_pollution_pump_shutdown_count * 10)
                  - (game.g_overworked_power_plant_count * 10)
                  - (game.g_street_tile_count / 1000)
                  - (game.g_road_tile_count / 500)
                  - (game.g_avenue_tile_count / 250)
                  - (game.g_groundhighway_tile_count / 100)
                  - (game.g_highway_tile_count / 100)
                  - (game.g_rail_tile_count / 1000)
                  - (game.g_subway_tile_count / 1000)
                  - (game.g_monorail_tile_count / 1000)
                  - (game.g_small_airport_count * 5)
                  - (game.g_medium_airport_count * 10)
                  - (game.g_large_airport_count * 20)
                  + ((game.g_num_parks / 100) * ((game.g_parks_funding_p + 0.00000001) / 100))
                  + (game.g_city_ir_population / 100)

  -- This one can go goofy in the first month so trap for that.
  cmTileFullyLoadedCheck() -- Sets the cmMZSessionStartDay
  if game.g_date - cmMZSessionStartDay > 31 then
    EcoResult = EcoResult - (game.trend_value(game_trends.G_TOTAL_RADIATION_POLLUTION,0) * 2)
  end

  return EcoResult -- Do not format as this needs to be a raw number
end


---------------------------------------------------
function cbEcologyRatingGreen() -- Data D-6a (Good)
---------------------------------------------------
  local EcoResult = cbCalcEcology()

  -- Check if Ecology is negative number.
  if EcoResult < 0 then
    return " " -- Skip output if less than zero.
  else
    -- Positive number is good so return to Green box.
    return "+" .. cmMZFormatNumber(EcoResult,2) .. string.char(183)
  end
end


------------------------------------------------
function cbEcologyRatingRed() -- Data D-6b (Red)
------------------------------------------------
  local EcoResult = cbCalcEcology()

  -- Check if Ecology is negative number.
  if EcoResult < 0 then
    -- Negative number to trigger a warning, so return to Red box.
    if EcoResult < -1000000000000 then
      return "Incredibly Bad!"
    else
      return cmMZFormatNumber(EcoResult,2) .. string.char(183)
    end
  else
    return " " -- Skip output if greater than zero.
  end
end


-------------------------------------------
function cbRenewableEnergyMix() -- Data D-7
-------------------------------------------
  local NonRenewablePowerConsumed = cbNonRenewablePowerConsumed()
  local RenewablePowerConsumed    = cbRenewablePowerConsumed()
  local TotalPowerConsumed        =  NonRenewablePowerConsumed + RenewablePowerConsumed
  local RenewablePercent          = (RenewablePowerConsumed / (TotalPowerConsumed + 0.00000001)) * 100

  return cmMZFormatNumber(RenewablePercent,2) .. " %"
end


--------------------------------------
function cbNonRenewablePowerConsumed()
--------------------------------------
  local NonRenewablePowerConsumed = game.trend_value(game_trends.G_POWER_CONSUMED_COAL,0)
                                  + game.trend_value(game_trends.G_POWER_CONSUMED_FUSION,0)
                                  + game.trend_value(game_trends.G_POWER_CONSUMED_GAS,0)
                                  + game.trend_value(game_trends.G_POWER_CONSUMED_NUCLEAR,0)
                                  + game.trend_value(game_trends.G_POWER_CONSUMED_OIL,0)
  return NonRenewablePowerConsumed -- Raw number
end


-----------------------------------
function cbRenewablePowerConsumed()
-----------------------------------
  local RenewablePowerConsumed = game.trend_value(game_trends.G_POWER_CONSUMED_MICROWAVE,0)
                               + game.trend_value(game_trends.G_POWER_CONSUMED_SOLAR,0)
                               + game.trend_value(game_trends.G_POWER_CONSUMED_WASTE,0)
                               + game.trend_value(game_trends.G_POWER_CONSUMED_WIND,0)
  return RenewablePowerConsumed -- Raw number
end



----------------------------------
-- ModPacc Zero file load tracking
if (not cmMZLoaded) then cmMZLoaded = {} end
table.insert(cmMZLoaded, "07 - City Halls Package - v0.01")

-- Special note to Cori from CB:
-- Thank you for helping and inspiring me with the Lua data functions I worked on here.
--   Your guidance was pivotal to collectively create what we have. :)

-- EOF
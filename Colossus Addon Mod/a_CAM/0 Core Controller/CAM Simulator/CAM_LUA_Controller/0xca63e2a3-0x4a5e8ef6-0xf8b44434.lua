--#-package:7ab44434# -- package signature --
-- For Lua file entry IID 0xf8b44434

-- CoriBoom created code to support auxiliary simulation variable calculations for the City Hall UI panel.
-- For ModPacc Zero v1.1


-----------------------
-- Tooltip Functions --
-----------------------

------------------------------------------
function cbTileSize() -- City Name Tooltip
------------------------------------------
  local CellSize
  local TileText

  if game.g_city_tile_size == 1048576 then
    CellSize = cmMZFormatNumber(4096,0)
    TileText = "Small  (" .. CellSize .. " cells)"

  elseif game.g_city_tile_size == 4194304 then
    CellSize = cmMZFormatNumber(16384,0)
    TileText = "Medium  (" .. CellSize .. " cells)"

  elseif game.g_city_tile_size == 16777216 then
    CellSize = cmMZFormatNumber(65536,0)
    TileText = "Large  (" .. CellSize .. " cells)"

  else
    TileText = "Unknown"
  end

  return TileText
end


-----------------------------------------------------
function cbNeighborConnections() -- City Name Tooltip
-----------------------------------------------------
  local Neighbor = game.g_num_cities_connected

  return string.rep(" ", 12 - string.len(Neighbor) * 4) .. Neighbor .. string.char(2)
end


-----------------------------------------------------
function cbIndirectConnections() -- City Name Tooltip
-----------------------------------------------------
  local Indirect = game.g_num_cities_connected_indirectly

  return string.rep(" ", 12 - string.len(Indirect) * 4) .. Indirect .. string.char(2)
end

------------------------------------------------
function cbLandPercentage() -- City Name Tooltip
------------------------------------------------
  local LandArea = (game.g_city_tile_size / 256) - game.g_water_tile_count
  LandArea       = cmMZFormatNumber(((LandArea / (game.g_city_tile_size / 256)) * 100),2)

  return string.rep(" ", 24 - string.len(LandArea) * 4) .. LandArea .. " %"
end


-------------------------------------------------
function cbWaterPercentage() -- City Name Tooltip
-------------------------------------------------
  local WaterArea = game.g_water_tile_count
  WaterArea       = cmMZFormatNumber(((WaterArea / (game.g_city_tile_size / 256)) * 100),2)

  return string.rep(" ", 24 - string.len(WaterArea) * 4) .. WaterArea .. " %"
end


------------------------------------------------
function cbHealthToolTipHQ() -- Data B-7 Tooltip
------------------------------------------------
  local Result = cmMZFormatNumber(game.trend_value(game_trends.GA_HQ,0),0)
  Result       = string.rep(" ", 12 - string.len(Result) * 4) .. Result

  return "Health Quotient (HQ)  =  " .. Result
end


------------------------------------------------------
function cbHealthToolTipMedCount() -- Data B-7 Tooltip
------------------------------------------------------
  local Result = cmMZFormatNumber(game.g_num_hospitals,0)
  Result       = string.rep(" ", 12 - string.len(Result) * 4) .. Result

  return "Total Medical Centers   =  " .. Result
end


--------------------------------------------------------
function cbGarbageToolTipRecycling() -- Data C-4 Tooltip
--------------------------------------------------------
  local Result = cmMZFormatNumber(game.g_recycling_center_count,0)
  Result       = string.rep(" ", 12 - string.len(Result) * 4) .. Result

  return "Total Recycling Centers  =  " .. Result
end


-----------------------------------------------------------
function cbGarbageToolTipIncinerators() -- Data C-4 Tooltip
-----------------------------------------------------------
  local Result = cmMZFormatNumber(game.g_incinerator_count,0)
  Result       = string.rep(" ", 12 - string.len(Result) * 4) .. Result

  return "Total Incinerators                 =  " .. Result
end


--------------------------------------------------
function cbGarbageToolTipW2E() -- Data C-4 Tooltip
--------------------------------------------------
  local Result = cmMZFormatNumber(game.g_waste_to_energy_building_count,0)
  Result       = string.rep(" ", 12 - string.len(Result) * 4) .. Result

  return "Total W2E Plants                 =  " .. Result
end


----------------------------------------------
function cbGeigerCounter() -- Data D-4 Tooltip
----------------------------------------------
  local Radiation            = 0
  local RadiationMeasure     = game.trend_value(game_trends.G_TOTAL_RADIATION_POLLUTION,0)
  local RandomizeLow         = math.random(32,256)
  local RandomizeHigh        = math.random(64,128)

  -- Calculate simulated Geiger Counter value based on city radiation.
  if RadiationMeasure == 0 then
    -- Radiation is zero.
    Radiation = 0
  elseif RadiationMeasure <= 512 then
    -- Calc for lower radiation level.
    Radiation = RadiationMeasure / RandomizeLow
  elseif RadiationMeasure > 512 then
    -- Calc for higher radiation level.
    Radiation = RadiationMeasure / RandomizeHigh
  end

  -- This one can go goofy in the first month so trap for that.
  cmTileFullyLoadedCheck() -- Sets the cmMZSessionStartDay
  if game.g_date - cmMZSessionStartDay > 31 then
    return cmMZFormatNumber(Radiation,2) .. " mSv/hr"
  else
    return "Checking..."
  end
end


------------------------------------------------------------------
function cbRenewablePowerUsage(PowerPlantType) -- Data D-7 Tooltip
------------------------------------------------------------------
  local PowerUsage
  local PowerProportion
  local TotalPowerConsumed = cbNonRenewablePowerConsumed() + cbRenewablePowerConsumed()

    if PowerPlantType == 9 then
      -- Wind Power
      PowerUsage = game.trend_value(game_trends.G_POWER_CONSUMED_WIND,0)
    elseif PowerPlantType == 7 then
      -- Solar Power
      PowerUsage = game.trend_value(game_trends.G_POWER_CONSUMED_SOLAR,0)
    elseif PowerPlantType == 8 then
      -- Waste to Energy (W2E)
      PowerUsage = game.trend_value(game_trends.G_POWER_CONSUMED_WASTE,0)
    elseif PowerPlantType == 4 then
      -- Microwave Power
      PowerUsage = game.trend_value(game_trends.G_POWER_CONSUMED_MICROWAVE,0)
    end

  PowerProportion = (PowerUsage / (TotalPowerConsumed + 0.00000001)) * 100
  PowerProportion = cmMZFormatNumber(PowerProportion,2)

  if string.len(PowerProportion) == 4 then
    return string.rep(" ",6) .. PowerProportion .. " %"
  elseif string.len(PowerProportion) == 5 then
    return string.rep(" ",3) .. PowerProportion .. " %"
  else
    return PowerProportion .. " %"
  end
end


-- Individual D-7 Power Labels --
function cmWindLabel()
  -- Need variable number of spaces to sort of line up the numbers
  local Count       = game.g_power_plant_count_wind
  local CountLength = string.len(Count)
  local SpacesToAdd = 0

  if CountLength == 1 then
    SpacesToAdd = 8
  elseif CountLength == 2 then
    SpacesToAdd = 4
  else -- 3 digits (up to 999 power plants, if more it'll just be out of alignment)
    SpacesToAdd = 0
  end

  return string.rep(" ", SpacesToAdd) .. Count .. "x  Wind Energy" .. string.rep(" ", 16) .. "="
end


function cmSolarLabel()
  -- Need variable number of spaces to sort of line up the numbers
  local Count       = game.g_power_plant_count_solar
  local CountLength = string.len(Count)
  local SpacesToAdd = 0

  if CountLength == 1 then
    SpacesToAdd = 9
  elseif CountLength == 2 then
    SpacesToAdd = 5
  else -- 3 digits (up to 999 power plants, if more it'll just be out of alignment)
    SpacesToAdd = 1
  end

  return string.rep(" ", SpacesToAdd) .. Count .. "x  Solar Energy" .. string.rep(" ", 17) .. "="
end


function cmW2ELabel()
  -- Need variable number of spaces to sort of line up the numbers
  local Count       = game.g_power_plant_count_waste
  local CountLength = string.len(Count)
  local SpacesToAdd = 0

  if CountLength == 1 then
    SpacesToAdd = 9
  elseif CountLength == 2 then
    SpacesToAdd = 5
  else -- 3 digits (up to 999 power plants, if more it'll just be out of alignment)
    SpacesToAdd = 1
  end

  return string.rep(" ", SpacesToAdd) .. Count .. "x  Waste to Energy" .. string.rep(" ", 8) .. "="
end


-----------------------------------------------
function cbMicrowaveCount() -- Data D-7 Tooltip
-----------------------------------------------
  -- This is necessary because there seems no game.g variable for Microwave power plant count.
  local TotalOverall = game.g_power_plant_count -- Total for all power plants (includes Microwave).
  local TotalAllOtherPower -- To count all other power stations (all except Microwave).
  local MicroCount -- To calculate the count of Microwave plants only.

  local TotalAllOtherPower = game.g_power_plant_count_wind
                           + game.g_power_plant_count_gas
                           + game.g_power_plant_count_coal
                           + game.g_power_plant_count_oil
                           + game.g_power_plant_count_solar
                           + game.g_power_plant_count_nuclear
                           + game.g_power_plant_count_fusion
                           + game.g_power_plant_count_waste

  local MicroCount         = TotalOverall - TotalAllOtherPower

  -- Need variable number of spaces to sort of line up the numbers
  local Count       = MicroCount
  local CountLength = string.len(Count)
  local SpacesToAdd = 0

  if CountLength == 1 then
    SpacesToAdd = 9
  elseif CountLength == 2 then
    SpacesToAdd = 5
  else -- 3 digits (up to 999 power plants, if more it'll just be out of alignment)
    SpacesToAdd = 1
  end

  return string.rep(" ", SpacesToAdd) .. Count .. "x  Micro  (and Other)" .. string.rep(" ", 2) .. "="
end



-----------------------
-- Toolbox Functions --
-----------------------

-----------------------------
function cmSetNumericFormat()
-----------------------------
  -- Checks if we have already been here or if the master override is in effect
  if cmGroupSeparator == nil then
    -- Code 0x01 (CDL)
    if os.setlocale() == "English_United States.1252" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x02 (DCL)
    if os.setlocale() == "French_France.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x03 (DCL)
    if os.setlocale() == "German_Germany.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x04 (DCL)
    if os.setlocale() == "Italian_Italy.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x05 (DCL)
    if os.setlocale() == "Spanish_Spain.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x06 (DCL)
    if os.setlocale() == "Swedish_Sweden.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x07 (SCL)
    if os.setlocale() == "Finnish_Finland.1252" then
      cmGroupSeparator = " "
      cmDecimalPoint   = ","
    end
    -- Code 0x08 (DCL)
    if os.setlocale() == "Dutch_Netherlands.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x09 (DCL)
    if os.setlocale() == "Danish_Denmark.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x0A (DCL)
    if os.setlocale() == "Portuguese_Brazil.1252" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x0B (SCL)
    if os.setlocale() == "Czech_Czech Republic.1250" then
      cmGroupSeparator = " "
      cmDecimalPoint   = ","
    end
    -- Code 0x0C (CDL)
    if os.setlocale() == "Hebrew_Israel.1255" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x0D (DCL)
    if os.setlocale() == "Greek_Greece.1253" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x0E (CDL)
    if os.setlocale() == "Japanese_Japan.932" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x0F (CDL)
    if os.setlocale() == "Korean_Korea.949" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x10 (DCL)
    if os.setlocale() == "Russian_Russia.1251" then
      cmGroupSeparator = "."
      cmDecimalPoint   = ","
    end
    -- Code 0x11 (CDL)
    if os.setlocale() == "Chinese (Simplified)_People's Republic of China.936" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x12 (CDL)
    if os.setlocale() == "Chinese (Traditional)_Taiwan.950" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x13 (CDL)
    if os.setlocale() == "English_United Kingdom.1252" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x14 (SCL)
    if os.setlocale() == "Polish_Poland.1250" then
      cmGroupSeparator = " "
      cmDecimalPoint   = ","
    end
    -- Code 0x15 (CDL)
    if os.setlocale() == "Thai_Thailand.874" then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
    -- Code 0x16 (SCL)
    if os.setlocale() == "Norwegian (Bokmål)_Norway.1252" then
      cmGroupSeparator = " "
      cmDecimalPoint   = ","
    end
    -- Code 0x3C (XDL)
    if os.setlocale() == "Sumarian_Sumer.060" then
      cmGroupSeparator = "'"
      cmDecimalPoint   = "."
    end

    -- Check if still not set and use English (US) if language not detected
    if cmGroupSeparator == nil then
      cmGroupSeparator = ","
      cmDecimalPoint   = "."
    end
  end -- End of: if cmGroupSeparator == nil
end -- End of: funtion


-------------------------------------------------------
function cmMZFormatNumber(IncomingNumber,RoundToPlaces)
-- Pass the numeric value and number of decimal places
-------------------------------------------------------
  local Result = 0

  -- Do the rounding
  if IncomingNumber > 1000000000000 then -- Check for weirdly large number first
    IncomingNumber = 0
  end
  if (RoundToPlaces) then
    Result = math.floor( (IncomingNumber * 10^RoundToPlaces) + 0.5) / (10^RoundToPlaces)
  else
    Result = math.floor(IncomingNumber + 0.5)
  end

  -- Now add group separators if needed
  local formatted = Result -- From the Rounding above
  local k         = 0

  -- Now we are going to insert the letter "s" every place a group separator will go.
  --  This is so that in the next part with the Tack On Zeroes it won't get confuzzled if we've overriden the radix point character.
  while true do
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1s%2')
    if (k == 0) then
      break
    end
  end
  Result = formatted

  -- Tack on decimal zeroes if needed
-------------------------------------------------
  local TotalLength          = string.len(Result)
  local DecimalPointLocation = nil

  -- Parameters = StringToSearch, WhatToFind, StartingPosition, LookForActualString (not pattern) = true
  DecimalPointLocation = string.find(Result, cmActualDecimalPoint, 1, true) -- Searches for actual string, not pattern.
  if (DecimalPointLocation == nil) then
    if RoundToPlaces > 0 then
      -- Decimal point not in value, but we want digits to the right
      Result = Result .. cmDecimalPoint .. string.rep("0", RoundToPlaces)
    end
  else
    -- Decimal point found so don't add another, but replace it with the override Decimal Point character
    --  This is really only needed if having an override of the language specific decimal point, but it's ok to do all the time
    Result = string.sub(Result, 1, DecimalPointLocation - 1) .. cmDecimalPoint .. string.sub(Result, DecimalPointLocation + 1, -1)
    Result = Result .. string.rep("0", RoundToPlaces - (TotalLength - DecimalPointLocation))
  end

  -- Now replace the temp "s" characters wtih the group separator we want to use.
  Result = string.gsub(Result, "s", cmGroupSeparator)

  return Result
end -- function end


-- Round a number (Renamed function to be different than in CORI Reports)
--  From: http://lua-users.org/wiki/FormattingNumbers
--------------------------------------
function cmMZRound(val, decimal)
--------------------------------------
  -- Check for weirdly large number (Cori added)
  if val > 1000000000000 then
    val = 0
  end
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val + 0.5)
  end
end


-- Note by CB: There's quite a lot of xyzzy code by Cori in here. ;)

-- EOF
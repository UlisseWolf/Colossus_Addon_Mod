--#-package:7ab4440e# -- package signature --
-- For Lua file entry IID 0xf8b4440e

-- CoriBoom created code performing simulation variable calculations for the Police UI panel.
-- For ModPacc Zero v1.3

-- Start with these unset - They only executes once per city tile load
cmGroupSeparator   = nil
cmDecimalPoint     = nil

-- Specific code to find what Lua is using internally for the decimal point character.
cmActualDecimalPoint = string.sub(1.2, 2, 2)


--------------------------------
function cmCrimesTotal(YearsAgo)
--------------------------------
  local TotalYearCrimes = 0
  local MonthsAgo       = YearsAgo * 12
  local EndMonthsAgo    = MonthsAgo + 12

  while MonthsAgo < EndMonthsAgo
  do
    TotalYearCrimes = TotalYearCrimes + game.trend_value(game_trends.G_NUM_CRIMES,MonthsAgo)
    MonthsAgo = MonthsAgo + 1
  end

  return cmMZRound(TotalYearCrimes,0) -- Raw number (ok to let UI do the formatting)
end


---------------------------------
function cmArrestsTotal(YearsAgo)
---------------------------------
  local TotalYearArrests = 0
  local MonthsAgo        = YearsAgo * 12
  local EndMonthsAgo     = MonthsAgo + 12

  while MonthsAgo < EndMonthsAgo
  do
    TotalYearArrests = TotalYearArrests + game.trend_value(game_trends.G_NUM_ARRESTS,MonthsAgo)
    MonthsAgo = MonthsAgo + 1
  end

  return cmMZRound(TotalYearArrests,0) -- Raw number (ok to let UI do the formatting)
end


-------------------------------------
function cmPoliceEfficiency(YearsAgo)
-------------------------------------
  cmSetNumericFormat() -- Needs to be run once for any standalone mod with extended data in the UI.

  local PoliceEfficiency = (cmArrestsTotal(YearsAgo) / (cmCrimesTotal(YearsAgo) + 0.00000001)) * 100
  if PoliceEfficiency == 0 and cmCrimesTotal(YearsAgo) == 0 then
    return cmMZFormatNumber(100,2) .. " %"
  else
    return cmMZFormatNumber(PoliceEfficiency,2) .. " %"
  end
end


-----------------------------------------------------------
function cmYearToYearPoliceProficiencyGreenNumber(YearsAgo)
-----------------------------------------------------------
  local CurrentYearEfficiency = (cmArrestsTotal(YearsAgo) / (cmCrimesTotal(YearsAgo) + 0.00000001)) * 100
  local PriorYearEfficiency   = (cmArrestsTotal(YearsAgo + 1) / (cmCrimesTotal(YearsAgo + 1) + 0.00000001)) * 100
  local EfficiencyChange      = 0

  -- Check for reported 100% when we have 0 Crime / 0 Arrests
  if CurrentYearEfficiency == 0 and cmCrimesTotal(YearsAgo) == 0 then
    CurrentYearEfficiency = 100
  end
  if PriorYearEfficiency == 0 and cmCrimesTotal(YearsAgo + 1) == 0 then
    PriorYearEfficiency = 100
  end

  EfficiencyChange = cmMZRound(CurrentYearEfficiency - PriorYearEfficiency,2) -- Raw number

  if EfficiencyChange >= 0 then
    if EfficiencyChange == 0 then
      return cmMZFormatNumber(0,2) .. " %"
    else
      return "+" .. cmMZFormatNumber(EfficiencyChange,2) .. " %"
    end
  else
    return " "
  end
end


---------------------------------------------------------
function cmYearToYearPoliceProficiencyRedNumber(YearsAgo)
---------------------------------------------------------
  local CurrentYearEfficiency = (cmArrestsTotal(YearsAgo) / (cmCrimesTotal(YearsAgo) + 0.00000001)) * 100
  local PriorYearEfficiency   = (cmArrestsTotal(YearsAgo + 1) / (cmCrimesTotal(YearsAgo + 1) + 0.00000001)) * 100
  local EfficiencyChange      = 0

  -- Check for reported 100% when we have 0 Crime / 0 Arrests
  if CurrentYearEfficiency == 0 and cmCrimesTotal(YearsAgo) == 0 then
    CurrentYearEfficiency = 100
  end
  if PriorYearEfficiency == 0 and cmCrimesTotal(YearsAgo + 1) == 0 then
    PriorYearEfficiency = 100
  end

  EfficiencyChange = cmMZRound(CurrentYearEfficiency - PriorYearEfficiency,2) -- Raw number

  if EfficiencyChange < 0 then
    return cmMZFormatNumber(EfficiencyChange,2) .. " %"
  else
    return " "
  end
end


------------------------------------
function cmCrimesPerCapita(YearsAgo)
------------------------------------
  local CrimesPerCapita = (cmCrimesTotal(YearsAgo) / (game.g_population + 0.00000001)) * 100000
  return cmMZFormatNumber(CrimesPerCapita,2) .. string.char(183)
end


---------------------------------------------------
function cmYearToYearPerCapitaGreenNumber(YearsAgo)
---------------------------------------------------
  local CurrentYearCrimesPerCapita = (cmCrimesTotal(YearsAgo) / (game.g_population + 0.00000001)) * 100000
  local PriorYearCrimesPerCapita   = (cmCrimesTotal(YearsAgo + 1) / (game.g_population + 0.00000001)) * 100000
  local AmountChange               = cmMZRound(CurrentYearCrimesPerCapita - PriorYearCrimesPerCapita,2) -- Raw number

  if AmountChange <= 0 then
    -- Negative trend is good so return it to the Green box
    if AmountChange == 0 then
      return cmMZFormatNumber(0,2) .. string.char(183)
    else
      return cmMZFormatNumber(AmountChange,2) .. string.char(183)
    end
  else
    return " "
  end
end


-------------------------------------------------
function cmYearToYearPerCapitaRedNumber(YearsAgo)
-------------------------------------------------
  local CurrentYearCrimesPerCapita = (cmCrimesTotal(YearsAgo) / (game.g_population + 0.00000001)) * 100000
  local PriorYearCrimesPerCapita   = (cmCrimesTotal(YearsAgo + 1) / (game.g_population + 0.00000001)) * 100000
  local AmountChange               = cmMZRound(CurrentYearCrimesPerCapita - PriorYearCrimesPerCapita,2) -- Raw number

  if AmountChange > 0 then
    -- Positive trend is bad so return it to the Red box
      return "+" .. cmMZFormatNumber(AmountChange,2) .. string.char(183)
  else
    return " "
  end
end


--------------------------------
function cmCrossbarHotelGuests()
--------------------------------
  return cmMZFormatNumber(game.g_inmate_count, 0) -- Raw number (ok to let UI do the formatting)
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

-- EOF
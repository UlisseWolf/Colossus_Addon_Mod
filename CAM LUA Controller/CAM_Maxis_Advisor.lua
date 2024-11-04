---------------------------------------------------------------------------
-- This file defines various constants used by the advisor system.
---------------------------------------------------------------------------

dofile("_adv_sys.lua")

---------------------------------------------------------------------------
-- Advice types
-- This table has to be extended at the end
-- 
advice_types = {}
-- on C++ side this will correspond to advisor ID 
   advice_types.NULL = 0
   advice_types.MYSIM = 1
   advice_types.UTILITIES = 21
   advice_types.HEALTH_EDUCATION  = 22
   advice_types.CITY_PLANNING = 23
   advice_types.TRANSPORTATION = 24
   advice_types.ENVIRONMENT     = 25
   advice_types.FINANCES           = 26
   advice_types.SAFETY               = 27
   advice_types.FLUFF_NEWS       = 28
   advice_types.CITY_SITUATIONS  = 29
   
-- This table has to be extended at the end
make_table_const (advice_types)

---------------------------------------------------------------------------
-- Advice moods
-- This table has to be extended at the end
-- 

advice_moods = {}-- don't change these

   advice_moods.ALARM = 0
   advice_moods.BAD_JOB = 1   
   advice_moods.NEUTRAL = 3
   advice_moods.GREAT_JOB = 5
   advice_moods.FLUFF = 7

make_table_const(advice_moods)

---------------------------------------------------------------------------
-- Advice priority
-- 
advice_priority = {}

   advice_priority.MIN = 0 
   advice_priority.MAX = 100 

make_table_const(advice_priority)

---------------------------------------------------------------------------
-- Advice priority
-- This table has to be extended at the end
-- 
local camera_zooms_max_in = 4
local camera_zooms_max_out = 0
local camera_zooms_middle = (camera_zooms_max_in + camera_zooms_max_out)/2 --(camera_zooms_max_out + camera_zooms_max_in) /2

camera_zooms = {}

   camera_zooms.MAX_IN = camera_zooms_max_in 
   camera_zooms.MAX_OUT = camera_zooms_max_out
   camera_zooms.MIDDLE = camera_zooms_middle

make_table_const(camera_zooms)

---------------------------------------------------------------------------
-- Reward results
-- 
reward_state = {}

   reward_state.HIDDEN = 0 
   reward_state.AVAILABLE = 1

make_table_const(reward_state)

---------------------------------------------------------------------------
-- Advisor IDs. Only used internally by the advisor system. 
-- 
advisor_ids = {}
   -- on C++ side this will correspond to advisor ID 
   advisor_ids.NULL    = 0 -- ignored by the game 

   advisor_ids.MYSIM1 = 1
   advisor_ids.MYSIM2 = 2
   advisor_ids.MYSIM3 = 3
   advisor_ids.MYSIM4 = 4
   advisor_ids.MYSIM5 = 5

   advisor_ids.UTILITIES = 21
   advisor_ids.HEALTH_EDUCATION  = 22
   advisor_ids.CITY_PLANNING = 23
   advisor_ids.TRANSPORTATION = 24
   advisor_ids.ENVIRONMENT     = 25
   advisor_ids.FINANCES           = 26
   advisor_ids.SAFETY               = 27
   advisor_ids.FLUFF_NEWS       = 28
   advisor_ids.CITY_SITUATIONS   = 29
   advisor_ids.MY_STREET_SIM   = 30
   
make_table_const (advisor_ids)
---------------------------------------------------------------------------
-- Ordinance IDs. Only used internally by the advisor system. 
-- 
ordinance_ids = {}

      ordinance_ids.ORDINANCE_CPRTRAINING          = hex2dec('00D0723D')
      ordinance_ids.ORDINANCE_SMOKEDETECTORS       = hex2dec('62BF1DAA')
      ordinance_ids.ORDINANCE_NEIGHBORHOODWATCH    = hex2dec('62BF1DB9')
      ordinance_ids.ORDINANCE_POLICEOUTREACH       = hex2dec('A2BF1F60')
      ordinance_ids.ORDINANCE_YOUTHCURFEW          = hex2dec('C2BF1DC5')
      ordinance_ids.ORDINANCE_GAMBLING             = hex2dec('A0D07129')
      ordinance_ids.ORDINANCE_READING              = hex2dec('E0D07233')
      ordinance_ids.ORDINANCE_EARTHQUAKEPREP       = hex2dec('C2BF1DD1')
      ordinance_ids.ORDINANCE_SMOKINGBAN           = hex2dec('E0D07239')
      ordinance_ids.ORDINANCE_FREECLINICS          = hex2dec('40D07236')
      ordinance_ids.ORDINANCE_JRSPORTS             = hex2dec('815B4CEF')
      ordinance_ids.ORDINANCE_SHELTERS             = hex2dec('20D07175')
      ordinance_ids.ORDINANCE_CARPOOL              = hex2dec('A2BF1DDC')
      ordinance_ids.ORDINANCE_SHUTTLESERVICE       = hex2dec('A2BF1DE5')
      ordinance_ids.ORDINANCE_CROSSINGGUARDS       = hex2dec('C2BF1DEF')
      ordinance_ids.ORDINANCE_POWERCONSERVATION    = hex2dec('82B9999B')
      ordinance_ids.ORDINANCE_WATERCONSERVATION    = hex2dec('02BF1DFA')
      ordinance_ids.ORDINANCE_STAIRWELLLIGHTING    = hex2dec('82E42E30')
      ordinance_ids.ORDINANCE_CARSMOGGING          = hex2dec('C2BF1E04')
      ordinance_ids.ORDINANCE_BRIDGETOLLS          = hex2dec('82BF1E0E')
      ordinance_ids.ORDINANCE_TRASHSORT            = hex2dec('42BF1E18')
      ordinance_ids.ORDINANCE_WATERTOWERADS        = hex2dec('62BF1E21')
      ordinance_ids.ORDINANCE_ALTERNATEDAYDRIVING  = hex2dec('E2BF1E2A')
      ordinance_ids.ORDINANCE_PARKINGFINES         = hex2dec('015B4D1E')
      ordinance_ids.ORDINANCE_LEAFBURNINGBAN       = hex2dec('22BF1E35')
      ordinance_ids.ORDINANCE_NUKEFREE             = hex2dec('E0D0722E')
      ordinance_ids.ORDINANCE_CLEANAIR             = hex2dec('A2BF1E43')
      ordinance_ids.ORDINANCE_SUBSIDIZEDTRANSIT    = hex2dec('C2D1B025')
      ordinance_ids.ORDINANCE_TOURISTPROMOTION     = hex2dec('62F6E7CF')
      ordinance_ids.ORDINANCE_CONSERVATIONCORPS    = hex2dec('A2F6E7DA')
      ordinance_ids.ORDINANCE_INDPOLLUTEFEE        = hex2dec('02F6E7E2')
      ordinance_ids.ORDINANCE_CLEANINDASSOC        = hex2dec('E2F6E7EA')
      ordinance_ids.ORDINANCE_ELECTRONICSINCENTIVE = hex2dec('02F6E7EF')
      ordinance_ids.ORDINANCE_AEROSPACEINCENTIVE   = hex2dec('22F6E7F4')
      ordinance_ids.ORDINANCE_ELECTRONICSJOBFAIR   = hex2dec('A2F6E7F9')
      ordinance_ids.ORDINANCE_BIOTECHINCENTIVE     = hex2dec('E2F6E7FE')
      ordinance_ids.ORDINANCE_PUBLICACCESSCABLE    = hex2dec('C2F6E804')
      ordinance_ids.ORDINANCE_LAWNCHEMBAN          = hex2dec('62F6E808')
      ordinance_ids.ORDINANCE_LANDFILLGASRECOVERY  = hex2dec('22F6E80C')
      ordinance_ids.ORDINANCE_INDWASTEDISPOSAL     = hex2dec('A2F917CF')
      ordinance_ids.ORDINANCE_BACKYARDCOMPOSTING   = hex2dec('22F6E814')
      ordinance_ids.ORDINANCE_PAPERREDUCTION       = hex2dec('22F6E81B')
      ordinance_ids.ORDINANCE_TIRERECYCLING        = hex2dec('C2F6E81F')
      ordinance_ids.ORDINANCE_FARMERSMARKET        = hex2dec('62F6E82B')
      ordinance_ids.ORDINANCE_WATERMETERS          = hex2dec('C2F90EB1')

make_table_const (ordinance_ids)

---------------------------------------------------------------------------
-- IDs for neighbor deal types
-- 

neighbor_deal_types = {}

      neighbor_deal_types.BUYPOWER      = hex2dec('4773FFE0')
      neighbor_deal_types.SELLPOWER     = hex2dec('4773FFE1')
      neighbor_deal_types.BUYWATER      = hex2dec('4773FFE2')
      neighbor_deal_types.SELLWATER     = hex2dec('4773FFE3')
      neighbor_deal_types.EXPORTGARBAGE = hex2dec('4773FFE4')
      neighbor_deal_types.IMPORTGARBAGE = hex2dec('4773FFE5')

make_table_const (neighbor_deal_types)

---------------------------------------------------------------------------
-- IDs for disasters
-- 
disaster_ids = {}

      disaster_ids.FIRE = hex2dec('621cda33')
      disaster_ids.TORNADO = hex2dec('02963821')
      disaster_ids.EARTHQUAKE = hex2dec('42963812')
      disaster_ids.PIPE_BURST = hex2dec('4a1332e8')
      disaster_ids.VOLCANO = hex2dec('c4c90997')
      disaster_ids.RIOT = hex2dec('ca380b06')
      disaster_ids.METEOR = hex2dec('6a6d0ee7')
      disaster_ids.ROBOT = hex2dec('ca9c3da7')
    
make_table_const (disaster_ids)

---------------------------------------------------------------------------
-- IDs for building groups
-- 
-- this list must match the list of building categories in ingred.ini

building_groups = {}

      building_groups.RESIDENTIAL = hex2dec('1000')
      building_groups.COMMERCIAL = hex2dec('1001')
      building_groups.INDUSTRIAL = hex2dec('1002')
     
      building_groups.TRANSPORTATION = hex2dec('1003')
      building_groups.UTILITY = hex2dec('1004')
      building_groups.CIVIC = hex2dec('1005')
      building_groups.PARK = hex2dec('1006')
      building_groups.RAIL = hex2dec('1300')
      building_groups.BUS = hex2dec('1301')
      building_groups.SUBWAY = hex2dec('1302')
      building_groups.POWER = hex2dec('1400')
      building_groups.WATER = hex2dec('1401')
      building_groups.NUCLEAR = hex2dec('1403')
      building_groups.RECYCLE = hex2dec('1404')
      building_groups.TOXIC_DUMP = hex2dec('1405')
       --building_groups.LANDFILL = hex2dec('1402')
      building_groups.LANDFILL = hex2dec('1406')
      building_groups.POLICE = hex2dec('1500')
      building_groups.JAIL = hex2dec('1501')
      building_groups.FIRE = hex2dec('1502')
      building_groups.SCHOOL = hex2dec('1503')
      building_groups.COLLEGE = hex2dec('1504')
      building_groups.LIBRARY = hex2dec('1505')
      building_groups.MUSEUM = hex2dec('1506')
      building_groups.HEALTH = hex2dec('1507')
      building_groups.AIRPORT = hex2dec('1508')
      building_groups.SEAPORT = hex2dec('1509')
      building_groups.LANDMARK = hex2dec('150A')
      building_groups.REWARD = hex2dec('150B')
      building_groups.LANDMARK_QUEUE = hex2dec('150C')
      building_groups.POLICE_BIG = hex2dec('150D')
      building_groups.POLICE_SMALL = hex2dec('150E')
      building_groups.SCHOOL_K6 = hex2dec('150F')
      building_groups.SCHOOL_hs = hex2dec('1510')
      building_groups.COURTHOUSE = hex2dec('1511')
      building_groups.CEMETARY = hex2dec('1700')
      building_groups.PET_CEMETARY = hex2dec('1701')
      building_groups.VIP = hex2dec('1900')
      building_groups.TOURIST = hex2dec('1901')
      building_groups.COUNTRY_CLUB = hex2dec('1902')
      building_groups.TAXI_MAKER = hex2dec('1903')
      building_groups.AMBULENCE_MAKER = hex2dec('1904')
      building_groups.DMV = hex2dec('1905')
      building_groups.STADIUM = hex2dec('1906')
      building_groups.WORSHIP = hex2dec('1907')
      building_groups.NIGHT_CLUB = hex2dec('1908')
      building_groups.OPERA = hex2dec('1909')
      building_groups.TV_STATION = hex2dec('1910')
      building_groups.TV_MAGNET = hex2dec('1911')
      building_groups.FARMLAND = hex2dec('1912')
      building_groups.MAYOR_HOUSE = hex2dec('1938')
      building_groups.Hospital  = hex2dec('1513')
      building_groups.BusStop  = hex2dec('1926')
      building_groups.ArmyBase   = hex2dec('1914')
      building_groups.ArmyMissileRange   = hex2dec('1915')
      building_groups.DeluxePoliceStation   = hex2dec('1515')
      building_groups.Ferry	   = hex2dec('1304')
      building_groups.AreaBase	 	   = hex2dec('1939')
      building_groups.Casino	 	   = hex2dec('1940')
      building_groups.LandingStrip	 	   = hex2dec('1517')
      building_groups.PassengerRail	 	   = hex2dec('1305')
      building_groups.FreightRail 	   = hex2dec('1306')
      building_groups.Marina 	   = hex2dec('1941')
      building_groups.CarFerry	   = hex2dec('1308')
      building_groups.PassengerFerry	   = hex2dec('1309')
      building_groups.Monorail	   = hex2dec('1307')
      building_groups.LargeHealth	   = hex2dec('151A')

      --USED by game.mysim_distance_to_closest_building()
      building_groups.FLEAMARKET =  hex2dec('1100')
      building_groups.MIDDLECLASSMALL =hex2dec('1101')
      building_groups.FASHIONCENTRE =hex2dec('1102')
      building_groups.DRIVEIN =hex2dec('1103')
      building_groups.MULTIPLEX =hex2dec('1104')
      building_groups.DINNERTHEATRE =hex2dec('1105')
      building_groups.FLEABAGMOTEL =hex2dec('1106')
      building_groups.FAMILYCOURT =hex2dec('1107')
      building_groups.LUXURYSPA =hex2dec('1108')
      building_groups.GREASEPIT =hex2dec('1109')
      building_groups.SERVICESTATION =hex2dec('110A')
      building_groups.CARCARECENTRE =hex2dec('110B')
      building_groups.USEDCARCHEAP =hex2dec('110C')
      building_groups.CARDEALERSHIP =hex2dec('110D')
      building_groups.LUXURYAUTOCENTRE =hex2dec('110E')
      building_groups.TACOSTAND =hex2dec('110F')
      building_groups.FAMILYDINER =hex2dec('1110')
      building_groups.CHEZFANCY =hex2dec('1111')
      building_groups.CINEMA =hex2dec('1112')
      building_groups.MAXISSIMTHEATRE =hex2dec('1113')
      building_groups.FAMILYINN =hex2dec('1114')
      building_groups.RITZY =hex2dec('1115')
      building_groups.SIMCYS =hex2dec('11160000')
      building_groups.SIMS4THAVE =hex2dec('1117')
      building_groups.WILLIOPIZZA =hex2dec('05FA')
     building_groups.ERNSTUNGUENTS =hex2dec('05FC')
     building_groups.GUSTAVGEWGAWS =hex2dec('05FB')
      building_groups.LENZELECTRONIC =hex2dec('05FD')
      building_groups.MYSIM_RESIDENCE = hex2dec('193A')
      building_groups.FIRE_OCCUPANT = hex2dec('5005')          -- a fire
      building_groups.TOXIC_OCCUPANT = hex2dec('0x5006')       -- a toxic spill
      
      --New building groups for My Sim balloon usage
      building_groups.RES1 = hex2dec('11010') --R$
      building_groups.RES2 = hex2dec('11020')--R$$
      building_groups.RES3 = hex2dec('11030')--R$$$
      building_groups.CO2 = hex2dec('13320') --Commercial office $$
      building_groups.CO3 = hex2dec('13330') --Commercial office $$$
      building_groups.CS1 = hex2dec('13110') ----Commercial Service $
      building_groups.CS2 = hex2dec('13120') ----Commercial Service $$
      building_groups.CS3 = hex2dec('13130') ----Commercial Service $$$
      building_groups.IND_AG = hex2dec('14100') ----Ind-Ag
      building_groups.IND_DIRTY = hex2dec('14200') ----Ind-dirty
      building_groups.IND_MECH = hex2dec('14300') ----Ind-Mech
      building_groups.IND_HT = hex2dec('14400') ----Ind-High Tech
      building_groups.COM_CAR = hex2dec('21000') ----Commercial car
      building_groups.COM_FOOD= hex2dec('21001') ----Commercial food
      building_groups.COM_SHOP = hex2dec('21002') ----Commercial shop
      building_groups.COM_MOVIE= hex2dec('21003') ----Commercial movie
      building_groups.COM_HOTEL = hex2dec('21000') ----Commercial hotel
      building_groups.COM_LARGE= hex2dec('21001') ----Large Commercial , >= stage 6 CO$$$

make_table_const (building_groups)

---------------------------------------------------------------------------
-- IDs for building conditions
-- 
-- this list must match the list of building conditions from ISC4Lot.h

building_conditions = {}

       building_conditions.OK = 0
       building_conditions.UNPOWERED = 1
       building_conditions.DISTRESSED1 = 2
       building_conditions.DISTRESSED2 = 3
       building_conditions.ABANDONED = 4
       building_conditions.SCORCHED1 = 5
       building_conditions.SCORCHED2 = 6
       

make_table_const (building_conditions)


---------------------------------------------------------------------------
-- IDs for game events 
-- 
_mtdps_id = hex2dec('ca1b1e64') -- the GUID for       kMessageTypeDisasterPeriodStarted
_userdisaster_id = hex2dec('cc3298dc') -- the GUID for disasters started by the player

game_events = {}

      game_events.kTEST1                  = hex2dec('4b7456d6')
      game_events.kTEST2                  = hex2dec('6b74ba81')
      game_events.kTEST3                  = hex2dec('4b74ba8b')

      game_events.NEW_CITY                                  = hex2dec('aa31a210')

      game_events.DISASTER_STARTED                  = hex2dec('0a31a2f0')
      game_events.DISASTER_ENDED                      = hex2dec('aa31a2f7')
      game_events.DISASTER_STARTED_FIRE               =  _combine_guids(_mtdps_id, hex2dec('621cda33')) -- the literal part is the disaster ID   
      game_events.DISASTER_STARTED_TORNADO         =  _combine_guids(_mtdps_id, hex2dec('02963821'))
      game_events.DISASTER_STARTED_EARTHQUAKE   =  _combine_guids(_mtdps_id, hex2dec('42963812'))
      game_events.DISASTER_STARTED_UFO                 =  _combine_guids(_mtdps_id, hex2dec('e2963828'))
      game_events.DISASTER_STARTED_FLOOD             =  _combine_guids(_mtdps_id, hex2dec('13873254'))
      game_events.DISASTER_STARTED_LOCUSTS         =  _combine_guids(_mtdps_id, hex2dec('13873255'))
      game_events.DISASTER_STARTED_SPACEDEBRIS =  _combine_guids(_mtdps_id, hex2dec('13873256'))
      game_events.DISASTER_STARTED_VOLCANO         =  _combine_guids(_mtdps_id, hex2dec('c4c90997'))
      game_events.DISASTER_STARTED_PIPEBURST     =  _combine_guids(_mtdps_id, hex2dec('4a1332e8'))
      game_events.DISASTER_STARTED_RIOT               =  _combine_guids(_mtdps_id, hex2dec('ca380b06'))
      game_events.DISASTER_STARTED_PLAYER_FIRE     = _combine_guids(_userdisaster_id, hex2dec('621cda33'))
      
      game_events.MASS_TRANSIT_STRIKE_STARTED      = hex2dec('69247dc4')
      game_events.MASS_TRANSIT_STRIKE_ENDED          = hex2dec('69247dc5')
      game_events.SCHOOL_STRIKE_STARTED        = hex2dec('ea60fabf')
      game_events.SCHOOL_STRIKE_ENDED            = hex2dec('2a60fac7')
      game_events.HEALTH_STRIKE_STARTED        = hex2dec('aa60faca')
      game_events.HEALTH_STRIKE_ENDED            = hex2dec('2a60facf')
      game_events.POLICE_STRIKE_STARTED        = hex2dec('6a31a2fe')
      game_events.POLICE_STRIKE_ENDED            = hex2dec('8a31a303')
      game_events.POLICE_JAILBREAK_STARTED  = hex2dec('ca616650')
      game_events.POLICE_JAILBREAK_ENDED      = hex2dec('6a61665a')
      game_events.POWER_STRIKE_STARTED          = hex2dec('ea31a30a')
      game_events.POWER_STRIKE_ENDED              = hex2dec('2a31a30f')
      game_events.FIRE_STRIKE_STARTED            = hex2dec('0a31a314')
      game_events.FIRE_STRIKE_ENDED                = hex2dec('6a31a319')
      game_events.PIPE_BURST                              = hex2dec('4a31cf15')
      game_events.NUKE_EXPLOSION                      = hex2dec('aa552f77')--need this one for when a nuclear power plant explodes
      game_events.PARKS_ZOO_ESCAPE                  = hex2dec('2a667fc3')
      
      game_events.GROW_SMALL_AIRPORT1 = hex2dec('ea394b74') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.GROW_SMALL_AIRPORT2 = hex2dec('cb3be815') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.GROW_MEDIUM_AIRPORT1 = hex2dec('eb3be415') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.GROW_MEDIUM_AIRPORT2 = hex2dec('2b3be44a') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.GROW_LARGE_AIRPORT1 = hex2dec('6b3be6d8') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.GROW_LARGE_AIRPORT2 = hex2dec('0b3be81a') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.GROW_SEAPORT = hex2dec('8a394dc4') -- generated by the game. Needs a response from an advisor (Yes or No)
      game_events.BAD_SEAPORT_LOCATION = hex2dec('4a490d33') 

      game_events.FAILED_FIRE_DISPATCH          = hex2dec('ca3fcef4') -- ALEX< WE NEED THIS ONE
      game_events.FAILED_POLICE_DISPATCH     = hex2dec('ca3fcefa') -- ALEX< WE NEED THIS ONE

      game_events.MYSIM_MOVE_IN                                       = hex2dec('ca3e87a8')
      game_events.MYSIM_NEW_JOB                                       = hex2dec('aa3edbb1')
      game_events.MYSIM_COMMUTE_FAILED                         = hex2dec('ca4553b7')
      game_events.MYSIM_HOME_DESTROYED                         = hex2dec('aa48f5c1')
      game_events.MYSIM_JOB_DESTROYED                           = hex2dec('ca48f879')
      game_events.MYSIM_HOME_DESTROYED_BY_DISASTER = hex2dec('aa4d2d64')
      game_events.MYSIM_JOB_DESTROYED_BY_DISASTER   = hex2dec('aa4d2d65')
      game_events.MYSIM_BUILDING_ADD                             = hex2dec('ca4e8986')
      game_events.MYSIM_CANT_FIND_HOME                         = hex2dec('6a57dd94')
      game_events.MYSIM_FIRE_STARTED                             = hex2dec('ea5e4e89')
      game_events.MYSIM_PIPE_BURST                                 = hex2dec('6a5e598c')
      game_events.MYSIM_TORNADO                                       = hex2dec('0a5e8243')
      game_events.MYSIM_RIOT                                             = hex2dec('8ac11a9b')
      game_events.MYSIM_VOLCANO                                       = hex2dec('2ac14492')
      game_events.MYSIM_APPROACHING_LOCATION             = hex2dec('ec107df9')

    
      -- neighbor deals (ND)
      game_events.NEIGHBOR_DEAL_RENEW                                  = hex2dec('4a383049')
      game_events.NEIGHBOR_DEAL_DEFAULTED_DELIVERY        = hex2dec('aa383052')
      game_events.NEIGHBOR_DEAL_DEFAULTED_PAYMENT          = hex2dec('0a383053')
      game_events.NEIGHBOR_DEAL_DEFAULTED_CONNECTION    = hex2dec('3a383059')

      game_events.CAR_CRASH	 = hex2dec('abf4b4b2') --	a car crash has occurred in the city
      game_events.TRAIN_DERAIL	 = hex2dec('abf4b57f') --	a train derailment has occurred in the city
      game_events.BREAK_FERRY_PATH  = hex2dec('abf4b59b') --		when a new bridge breaks an existing ferry path

make_table_const (game_events)

---------------------------------------------------------------------------
-- IDs for game commands
-- 
game_commands = {}

      game_commands.MYSIM_MOVE_OUT           = hex2dec('6a47e79b')
      game_commands.MYSIM_RETIRE             = hex2dec('aa4934b4')
      game_commands.MYSIM_SPAWN              = hex2dec('6a495f7f')
      game_commands.MYSIM_INCREASE_WEALTH    = hex2dec('6a4a5e9e')
      game_commands.MYSIM_DIE                = hex2dec('ea4d269c')
      game_commands.MYSIM_LEAVE_CITY         = hex2dec('0a57de1f')
      game_commands.MYSIM_QUIT_JOB           = hex2dec('6a5e6860')
    
make_table_const (game_commands)

---------------------------------------------------------------------------
-- Network types used by game.tool_plop_network
-- 
network_tool_types = {}
   
   network_tool_types.ROAD = hex2dec('8c329937')
   network_tool_types.RAIL = hex2dec('00000029')	
   network_tool_types.HIGHWAY = hex2dec('00000031')
   network_tool_types.PIPE = hex2dec('2992f72c')
   network_tool_types.SUBWAY = hex2dec('299237bf')
   network_tool_types.POWER_LINE = hex2dec('00000032')
   network_tool_types.STREET = hex2dec('ea6e379d')
   network_tool_types.HIGHWAY_INTERSECTION_BASE = hex2dec('6a470000')
   network_tool_types.HIGHWAY_INTERSECTION_LIMIT = hex2dec('6a47ffff')
   network_tool_types.AVENUE = hex2dec('2b730c5b')
   network_tool_types.ELEVATED_RAIL = hex2dec('2b79e398')
   network_tool_types.MONORAIL = hex2dec('4be099de')
   network_tool_types.ONEWAY = hex2dec('0be099c1')
   network_tool_types.DIRT_ROAD = hex2dec('2be099a9')
   network_tool_types.GROUND_HIWAY = hex2dec('0be0998f')
   network_tool_types.HIWAY_RAMP = hex2dec('6a472090')

make_table_const(network_tool_types)

---------------------------------------------------------------------------
-- IDs for network types
-- used by city situations to identify network occupants
--
network_types = {}
   network_types.ROAD            = hex2dec('0x00000001')
   network_types.RAIL            = hex2dec('0x00000002')
   network_types.HIGHWAY         = hex2dec('0x00000004')
   network_types.STREET          = hex2dec('0x00000008')
	network_types.PIPE            = hex2dec('0x00000010')
   network_types.POWER_LINE      = hex2dec('0x00000020')
   network_types.AVENUE          = hex2dec('0x00000040')
	network_types.SUBWAY          = hex2dec('0x00000080')
   network_types.LIGHT_RAIL      = hex2dec('0x00000100')
   network_types.MONORAIL        = hex2dec('0x00000200')
   network_types.ONE_WAY_ROAD    = hex2dec('0x00000400')
   network_types.DIRT_ROAD       = hex2dec('0x00000800')
   network_types.GROUND_HIGHWAY  = hex2dec('0x00001000')

   network_types.ANY_NETWORK     = hex2dec('0x00001FFF')

   network_types.OVER_GROUND     = hex2dec('0x00001F4F')
   network_types.RAISED          = hex2dec('0x00000304') -- highway, light rail, monorail
   network_types.WIDE            = hex2dec('0x00001044') -- highway, avenue, ground highway
   
   network_types.BRIDGE          = hex2dec('0x00040000')
   network_types.TUNNEL          = hex2dec('0x00080000')

make_table_const(network_types)

---------------------------------------------------------------------------
-- Various game tools
-- 
button_tool_types = {}
   
   button_tool_types.POLICE_DISPATCH = hex2dec('00000033')
   button_tool_types.FIRE_DISPATCH = hex2dec('69a30679')
   button_tool_types.DEMOLISH = hex2dec('e999c820')

make_table_const(button_tool_types)

---------------------------------------------------------------------------
-- Zone types used by game.tool_plop_zone
-- 
zone_tool_types = {}
   
   zone_tool_types.DEZONE                          =  0
   zone_tool_types.RESIDENTIAL_LD          =  1
   zone_tool_types.RESIDENTIAL_MD          =  2
   zone_tool_types.RESIDENTIAL_HD          =  3
   zone_tool_types.COMMERCIAL_LD            =  4
   zone_tool_types.COMMERCIAL_MD            =  5
   zone_tool_types.COMMERCIAL_HD            =  6
   zone_tool_types.INDUSTRIAL_RES          =  7
   zone_tool_types.INDUSTRIAL_LIGHT      =  8
   zone_tool_types.INDUSTRIAL_HEAVY      =  9
   zone_tool_types.LANDFILL                      = 14

make_table_const(zone_tool_types)

---------------------------------------------------------------------------
-- Zone types used by game.tool_plop_zone
-- 
flora_tool_types = {}
   
   flora_tool_types.OAK_TREE  =  hex2dec('16700000')

make_table_const(flora_tool_types)

---------------------------------------------------------------------------
--Tuning Constants
-- This table is for values that will probably change and that will be used by multiple advisors.
-- 

game_trends = {}

   game_trends.G_RESIDENTIAL_POPULATION = hex2dec('2a4e2003')
   game_trends.G_COMMERCIAL_CAPACITY = hex2dec('0a4e2056')
   game_trends.G_INDUSTRIAL_CAPACITY = hex2dec('4a4e206b')

   game_trends.G_FIRE_PROTECTION_COVERAGE_P = hex2dec('2A11D203')
   game_trends.GA_FIRE_PROTECTION         = hex2dec('2A11D204')
   game_trends.GA_FLAMMABILITY = hex2dec('2A11CB48')

   game_trends.G_POLICE_PROTECTION_COVERAGE_P = hex2dec('4A11D354')
   game_trends.GA_POLICE_PROTECTION         = hex2dec('4A11D355')
   game_trends.G_NUM_CRIMES = hex2dec('0a5cc155')
   game_trends.G_NUM_ARRESTS = hex2dec('0a5cc156')
   game_trends.GA_CRIME = hex2dec('aa662693')
   game_trends.FIRE_DISASTER = hex2dec('49d15b74')
   game_trends.RIOT_DISASTER = hex2dec('aa8c87c7')

   game_trends.G_WATER_PRODUCED        = hex2dec('0A14EBB4')
   game_trends.G_WATER_IMPORTED        = hex2dec('0A14EBB5')
   game_trends.G_WATER_EXPORTED        = hex2dec('CA14EBC6')
   game_trends.G_WATER_CONSUMED        = hex2dec('CA14EBD0')
   game_trends.G_WATER_PIPES_COUNT           = hex2dec('CA14EBFE')
   game_trends.G_WATER_PIPES_COUNT_DISTRESSED = hex2dec('CA14EC19')
   game_trends.G_WATERED_BUILDING_COUNT = hex2dec('ca78a955')
   game_trends.G_UNWATERED_BUILDING_COUNT = hex2dec('8a78ab06')
   
   game_trends.G_TOTAL_AIR_POLLUTION          = hex2dec('0A1100E8')
   game_trends.G_TOTAL_WATER_POLLUTION        = hex2dec('EA110130')
   game_trends.G_TOTAL_GARBAGE_POLLUTION      = hex2dec('EA110134')
   game_trends.G_TOTAL_RADIATION_POLLUTION    = hex2dec('EA110137')

   game_trends.G_GARBAGE_PRODUCED            = hex2dec('EA110158')
   game_trends.G_GARBAGE_IMPORTED            = hex2dec('EA11017B')
   game_trends.G_GARBAGE_EXPORTED            = hex2dec('EA11017E')
   game_trends.G_GARBAGE_RECYCLED            = hex2dec('EA11016F')
   game_trends.G_GARBAGE_INCINERATED         = hex2dec('EA110197')
   game_trends.G_GARBAGE_TO_ENERGY            = hex2dec('EA1101A1')
   game_trends.G_GARBAGE_TO_LANDFILL          = hex2dec('EA1101AA')
   
   game_trends.G_POWER_PRODUCED              = hex2dec('AA11F7CE')
   game_trends.G_POWER_IMPORTED              = hex2dec('AA11F837')
   game_trends.G_POWER_EXPORTED              = hex2dec('AA11F83A')
   game_trends.G_POWER_CONSUMED              = hex2dec('AA11F7D2')
   game_trends.G_POWER_DEMANDED              = hex2dec('AA11F7D5')
   game_trends.G_POWER_UNUSED                = hex2dec('AA11F7D8') 
   game_trends.G_POWER_BUILDING_AVERAGE_AGE    = hex2dec('AA11F7DA') 
   game_trends.G_POWER_COST                  = hex2dec('AA11F7DC')
   game_trends.G_POWER_BLACKOUT_P = hex2dec('AA11FB59')
   game_trends.G_POWER_CONSUMED_COAL          = hex2dec('AA120D5E')
   game_trends.G_POWER_CONSUMED_FUSION        = hex2dec('AA120D61')
   game_trends.G_POWER_CONSUMED_GAS           = hex2dec('AA120D63')
   game_trends.G_POWER_CONSUMED_MICROWAVE     = hex2dec('AA120D65')
   game_trends.G_POWER_CONSUMED_NUCLEAR       = hex2dec('AA120D66')
   game_trends.G_POWER_CONSUMED_OIL           = hex2dec('AA120D68')
   game_trends.G_POWER_CONSUMED_SOLAR         = hex2dec('AA120D6A')
   game_trends.G_POWER_CONSUMED_WASTE         = hex2dec('AA120D6B')
   game_trends.G_POWER_CONSUMED_WIND          = hex2dec('AA120D6D')
   
   game_trends.GA_EQ                        = hex2dec('AA1A2864')
   game_trends.GA_HQ                        = hex2dec('AA1A2866')
   game_trends.G_POPULATION_HEALTH_COVERAGE         = hex2dec('AA1A2C9F')
   game_trends.G_POPULATION_SCHOOL_COVERAGE         = hex2dec('AA1A2CA6')
   game_trends.G_POPULATION                  = hex2dec('AA1A2CCA')
   game_trends.G_POPULATION_DEMOGRAPHIC_BASE        = hex2dec('CA545CAB')
   game_trends.G_EQ_DEMOGRAPHIC_BASE                = hex2dec('CA545CCA')

   game_trends.GA_EFFICIENCY_SEAPORTS = hex2dec('EA3E904A')
   
   game_trends.G_R_POPULATION = hex2dec('2A4E2003')
   game_trends.G_RL_POPULATION = hex2dec('4A5E9485')
   game_trends.G_RM_POPULATION = hex2dec('EA5E948A')
   game_trends.G_RH_POPULATION = hex2dec('2A5E948E')
   game_trends.G_C_POPULATION = hex2dec('0A4E2056')
   game_trends.G_CO_POPULATION = game_trends.G_C_POPULATION
   game_trends.G_COSL_POPULATION = hex2dec('8A5E950E')
   game_trends.G_COSM_POPULATION = hex2dec('0A5E9515')
   game_trends.G_COSH_POPULATION = hex2dec('8A5E954A')
   game_trends.G_COOM_POPULATION = hex2dec('8A5E9552')
   game_trends.G_COOH_POPULATION = hex2dec('EA5E9557')
   game_trends.G_I_POPULATION = hex2dec('4A4E206B')
   game_trends.G_IR_POPULATION = hex2dec('2A5E95A1')
   game_trends.G_ID_POPULATION = hex2dec('6A5E95A7')
   game_trends.G_IM_POPULATION = hex2dec('0A5E95AC')
   game_trends.G_IHT_POPULATION = hex2dec('AA5E95B1')
 
   game_trends.G_R_EXTRAP_OUT = hex2dec('aa772f1d')
   game_trends.G_C_EXTRAP_OUT = hex2dec('6a774f64')
   game_trends.G_I_EXTRAP_OUT = hex2dec('ca774f69')
 
   game_trends.G_FUNDS = hex2dec('4a5ba3d0')
   game_trends.G_INCOME = hex2dec('6a51178b')
   game_trends.G_EXPENSES = hex2dec('ca5ba3fb')

make_table_const(game_trends)

---------------------------------------------------------------------------
-- IDs for zodiac signs
-- 
zodiac = {}

      zodiac.ARIES         = 0
      zodiac.TAURUS        = 1
      zodiac.GEMINI        = 2
      zodiac.CANCER        = 3
      zodiac.LEO           = 4
      zodiac.VIRGO         = 5
      zodiac.LIBRA         = 6
      zodiac.SCORPIO       = 7
      zodiac.SAGITTARIUS   = 8
      zodiac.CAPRICORN     = 9
      zodiac.AQUARIUS      = 10
      zodiac.PISCES        = 11
    
make_table_const (zodiac)

---------------------------------------------------------------------------
-- Global effect flags (for conditional props and effects)
-- 
effects = {}
   
	effects.POOR_FIRE_COVERAGE = hex2dec('aa3753d2')
	effects.UNHAPPY_SIMS = hex2dec('aa3754c5')

	effects.FIRE_STRIKE = hex2dec('2a5f6e60')
	effects.POLICE_STRIKE = hex2dec('2a5f6e61')
	effects.HEALTH_STRIKE = hex2dec('2a5f6e62')
	effects.EDUCATION_STRIKE = hex2dec('2a5f6e63')
	effects.TRANSIT_STRIKE = hex2dec('2a5f6e64')
   effects.TV_CREW_AVAILABLE = hex2dec('0a89dfd4')
   effects.MISSILE_BUNKERS = hex2dec('eaad9fc4')
   effects.MISSILE_LAUNCH = hex2dec('2aaec104')
   effects.LLAMA_SPIT = hex2dec('4aaec141')
   effects.LIGHTNING_BALL = hex2dec('4aaec3ca')
   effects.BALLOON_LAUNCH = hex2dec('8ab1ad6f')
   effects.NEW_YEARS_FIREWORKS = hex2dec('cacbdfc6')
   
make_table_const(effects)

---------------------------------------------------------------------------
-- Building types used by game.tool_plop_building
-- 
building_tool_types = {}
   
   building_tool_types.URGENT_CARE_CLINIC = hex2dec('2A2735A0')
   building_tool_types.STATION_HOUSE_2ENGINE = hex2dec('A9DD1E4C')
   building_tool_types.SMALL_LIBRARY = hex2dec('0A272F52')
   building_tool_types.SCIENCE_HISTORY_ART_MUSEUM = hex2dec('AA2849CE')
   building_tool_types.LOCAL_PRECINCT_4CAR = hex2dec('69DE426B')
   building_tool_types.STATION_HOUSE_4ENGINE = hex2dec('01000007')
   building_tool_types.SMALL_SCHOOL = hex2dec('89DD094E')
   building_tool_types.LOCAL_PRECINCT_36CAR = hex2dec('01000005')
   building_tool_types.JAIL = hex2dec('01000003')
   building_tool_types.LARGE_MEDICAL_CENTER = hex2dec('EA273867')
   building_tool_types.MAIN_CITY_LIBRARY = hex2dec('EA27308D')
   building_tool_types.LARGE_SCHOOL = hex2dec('4A2AF441')
   building_tool_types.CITY_COLLEGE = hex2dec('4A2829D1')
   building_tool_types.GATEWAY_ARCH = hex2dec('4A57BCC0')
   building_tool_types.US_CAPITOL = hex2dec('8A57BD3A')
   building_tool_types.PALACEOF_FINE_ARTS_SF = hex2dec('09EFFC38')
   building_tool_types.ALAMO = hex2dec('0A57C154')
   building_tool_types.BIG_BEN = hex2dec('4A57BF3A')
   building_tool_types.BOSTON_FANEUIL_HALL = hex2dec('4A57C29A')
   building_tool_types.INDEPENDENCE_HALL = hex2dec('2A57C35B')
   building_tool_types.WASHINGTON_MONUMENT = hex2dec('0A57BF8F')
   building_tool_types.LINCOLN_MEMORIAL = hex2dec('0A57C976')
   building_tool_types.SMITH_TOWER = hex2dec('6A57C9CA')
   building_tool_types.CALIFORNIA_PLAZA = hex2dec('2A57CC3A')
   building_tool_types.CHRYSLER_BUILDING = hex2dec('4A57CB23')
   building_tool_types.CN_TOWER = hex2dec('6A57CE87')
   building_tool_types.COIT_TOWER = hex2dec('97000001')
   building_tool_types.STATUE_OF_LIBERTY = hex2dec('2A57C516')
   building_tool_types.ST_BASILS = hex2dec('6A57CECF')
   building_tool_types.TAJ_MAHAL = hex2dec('8A57CF91')
   building_tool_types.WHITE_HOUSE = hex2dec('6A57C5DB')
   building_tool_types.HOLLYWOOD_SIGN = hex2dec('4A57D4D4')
   building_tool_types.SPHYNX = hex2dec('6A57D156')
   building_tool_types.BANKOF_AMERICA = hex2dec('97000002')
   building_tool_types.GUGGENHIEM = hex2dec('6A57D345')
   building_tool_types.JEFFERSON_MEMORIAL = hex2dec('0A57D27C')
   building_tool_types.ALCATRAZ_SF = hex2dec('A9EFFCCF')
   building_tool_types.JOHNHANCOCK_CENTER = hex2dec('8A57D64E')
   building_tool_types.EMPIRE_STATE_BLD = hex2dec('0A569397')
   building_tool_types.GREAT_PYRAMID = hex2dec('2A569325')
   building_tool_types.AIRPORT_INTERNATIONAL_PHASE1 = hex2dec('0A512810')
   building_tool_types.SOCCERFIELD = hex2dec('0A4BE4B6')
   building_tool_types.AIRPORT_LANDINGSTRIP_PHASE1 = hex2dec('CA2436C0')
   building_tool_types.AIRPORT_MUNICIPAL_PHASE1 = hex2dec('6A5126D0')
   building_tool_types.MAJOR_LEAGUE_STADIUM = hex2dec('2A5540E7')
   building_tool_types.CEMETARY = hex2dec('6A53DE35')
   building_tool_types.CEMETARY1 = building_tool_types.CEMETARY
   building_tool_types.CEMETARY2 = hex2dec('6A53DE36')
   building_tool_types.CEMETARY3= hex2dec('6A53DE37')
   building_tool_types.MAYORS_HOUSE = hex2dec('CA2B0620')
   building_tool_types.MAYORS_STATUE = hex2dec('8a6f9c31') -- statue
   building_tool_types.MAYORS_STATUE1 = building_tool_types.MAYORS_STATUE
   building_tool_types.MAYORS_STATUE2 = hex2dec('2A53CC9B ') -- statue medium low
   building_tool_types.MAYORS_STATUE3= hex2dec('6a6f9c15') -- statue medium high
   building_tool_types.MAYORS_STATUE4= hex2dec('8a6f9b62') -- statue high
   building_tool_types.MAYORS_STATUE_FEMALE4 = hex2dec('6a89ffd4')
   building_tool_types.MAYORS_STATUE_FEMALE3 = hex2dec('aa8a0034')
   building_tool_types.MAYORS_STATUE_FEMALE2 = hex2dec('ea89ff1f')
   building_tool_types.MAYORS_STATUE_FEMALE1 = hex2dec('ca8a0075')
   building_tool_types.PRIVATE_SCHOOL = hex2dec('01000002')
   building_tool_types.PRIVATE_SCHOOL2 = hex2dec('AA7764DE')
   building_tool_types.PRIVATE_SCHOOL3 = hex2dec('CA776507')
   building_tool_types.RADIO_STATION = hex2dec('2A4942B0')
   building_tool_types.HOUSE_WORSHIP_031E = hex2dec('CA2B083A')
   building_tool_types.HOUSE_WORSHIP2 = hex2dec('0A7761E5')
   building_tool_types.HOUSE_WORSHIP3 = hex2dec('4A7762B0')
   building_tool_types.HOUSE_WORSHIP4 = hex2dec('4A7762FA')
   building_tool_types.RESORT_HOTEL = hex2dec('0A55427C')
   building_tool_types.TOURIST_TRAP = hex2dec('0A5146DD')
   building_tool_types.ADV_RESEARCH_CENTER = hex2dec('2A53DAA1')
   building_tool_types.COUNTRY_CLUB = hex2dec('4A552C9E')
   building_tool_types.COURT_HOUSE = hex2dec('8A4D3B93')
   building_tool_types.DISEASE_CTR = hex2dec('0A287457')
   building_tool_types.FARMERS_MARKET = hex2dec('6A53E3D8')
   building_tool_types.MAJOR_ART = hex2dec('2A2868D5')
   building_tool_types.TOXIC_WASTE_DUMP = hex2dec('0A551701')
   building_tool_types.TV_STATION = hex2dec('2A553D87')
   building_tool_types.UNIV_ADMIN_TOWER = hex2dec('EA28722B')
   building_tool_types.CITY_HALL_PHASE1 = hex2dec('6A4BD588')
   building_tool_types.CITY_HALL_PHASE2 = hex2dec('6a4bd539')
   building_tool_types.CITY_HALL_PHASE3 = hex2dec('4a4bd4fc')
   building_tool_types.OPERA_HOUSE = hex2dec('2A4946FB')
   building_tool_types.STOCK_EXCHANGE = hex2dec('2A55366F')
   building_tool_types.BUREAU_BUREAUCRACY = hex2dec('0A419447')
   building_tool_types.PRISON = hex2dec('01000004')
   building_tool_types.CONVENTION_CENTER = hex2dec('8A553F9A')
   building_tool_types.ARMY_BASE = hex2dec('6A552AA5')
   building_tool_types.CASINO = hex2dec('6A482105')
   building_tool_types.MISSILE_TESTING_RANGE = hex2dec('0A552ED8')
   building_tool_types.MOVIE_STUDIO = hex2dec('4A5530FD')
   building_tool_types.ZOO = hex2dec('8A55218C')
   building_tool_types.STATE_FAIR = hex2dec('8A553317')
   building_tool_types.MINOR_LEAGUE_STADIUM = hex2dec('8A553AE9')
   building_tool_types.COALPOWER = hex2dec('02000002')
   building_tool_types.HYDROGEN_POWER_PLANT = hex2dec('8A32E5D5')
   building_tool_types.NATURALGAS_POWER_PLANT = hex2dec('0A32DBFF')
   building_tool_types.NUKE_POWER = hex2dec('02000001')
   building_tool_types.OIL_POWER = hex2dec('02000003')
   building_tool_types.SOLAR_POWER_PLANT = hex2dec('CA32DF6D')
   building_tool_types.WIND_POWER = hex2dec('8A32E4CB')
   building_tool_types.SEAPORT_PHASE1 = hex2dec('4A52917D')
   building_tool_types.BUS_STOP = hex2dec('05000001')
   building_tool_types.SUBWAY_ENTRANCE = hex2dec('05000002')
   building_tool_types.WATER_PUMP = hex2dec('03000002')
   building_tool_types.PASSENGER_RAILSTATION = hex2dec('6a8a358f')
   building_tool_types.WATER_TOWER = hex2dec('03000001')
   building_tool_types.WATER_TREATMENT_PLANT = hex2dec('04000004')
   building_tool_types.FREIGHT_RAIL_STATION = hex2dec('6A3855D4')
  -- building_tool_types.INCINERATOR = hex2dec('04000001') BUILDING DROPPED
   building_tool_types.RECYCLING_CENTER = hex2dec('04000002')
   building_tool_types.WASTE_TO_ENERGY = hex2dec('04000003')
   building_tool_types.PARK_REGULAR = hex2dec('4a635a8a')
   building_tool_types.PARK_BASKETBALL = hex2dec('8a635ad0')
   building_tool_types.PARK_PLAZA = hex2dec('4a635ad2')
   building_tool_types.ARC_TRIOMPHE = hex2dec('aac407c0')
   building_tool_types.WORLD_CUP_FOOTBALL_STADIUM = hex2dec('4ac40971')
   building_tool_types.SEOUL_CITYHALL_SQUARE = hex2dec('2ac40624')
   building_tool_types.BANK_OF_CHINA_TOWER = hex2dec('8ac40717')
   building_tool_types.AMALIENBORG = hex2dec('eac7cf2d')
  
  --EP1 "Rush Hour" buildings below this point--------------------------------------------------------
   building_tool_types.DELUXE_POLICE_STATION = hex2dec('2baa5c1e')
   building_tool_types.SPACE_PORT = hex2dec('4bb1058d')
   building_tool_types.CRUISE_SHIP_PIER = hex2dec('4bf9c846')
   building_tool_types.LIGHT_HOUSE = hex2dec('ebfda1cc')
   building_tool_types.FIRE_DEPARTMENT_LANDING_STRIP = hex2dec('ebf9946e')
   building_tool_types.GRAND_RAILROAD_STATION = hex2dec('8c070c38')
   building_tool_types.LARGE_ELEMENTARY_SCHOOL = hex2dec('4bafbfc1')
   building_tool_types.LARGE_HIGH_SCHOOL = hex2dec('0bb9376a')
   building_tool_types.LARGE_WATER_PUMP = hex2dec('abafac26')
  building_tool_types.MARINA = hex2dec('cc096cc8')
   building_tool_types.AREA_51= hex2dec('8bfeb0ec')
      
   building_tool_types.CAR_FERRY = hex2dec('0b96ae64')
   building_tool_types.ELEVATED_STATION = hex2dec('4bafba9f') -- AKA light rail
   building_tool_types.SUB_EL_TRANSITION = hex2dec('cbf3412d')
   building_tool_types.PUBLIC_PARKING = hex2dec('ec0c4bd1')
   
make_table_const(building_tool_types)

---------------------------------------------------------------------------
-- Budget window types
-- 
budget_window_types = {}
   
   budget_window_types.MAIN_SMALL = hex2dec('ca5bdfb0')
   budget_window_types.MAIN_LARGE = hex2dec('4a5bdfb8')
   budget_window_types.TAXES            = hex2dec('AA3AC400')
   budget_window_types.ORDINANCE1       = hex2dec('AA3AC401')
   budget_window_types.NEIGHBOR1        = hex2dec('AA3AC402')
   budget_window_types.BUSINESS         = hex2dec('AA3AC403')
   budget_window_types.TRANSPORT1       = hex2dec('AA3AC404')
   budget_window_types.TRANSPORT2       = hex2dec('AA3AC405')
   budget_window_types.PUBLIC_SAFETY     = hex2dec('AA3AC406')
   budget_window_types.HEALTH_ED           = hex2dec('AA3AC407')
   budget_window_types.UTILITIES        = hex2dec('AA3AC408')
   budget_window_types.ORDINANCE2       = hex2dec('AA3AC409')
   budget_window_types.NEIGHBOR2        = hex2dec('AA3AC40A')
   budget_window_types.BEAUTIFICATION   = hex2dec('AA3AC40B')
   budget_window_types.CAPITALPROJECT   = hex2dec('AA3AC40C')
   budget_window_types.LOAN             = hex2dec('AA3AC40D')

make_table_const(budget_window_types)

---------------------------------------------------------------------------
-- Map window types
-- 
graph_window_types = {}
   
   graph_window_types.AIR_POLLUTION = hex2dec('00000008')
   graph_window_types.AVERAGE_INCOME = hex2dec('00000004')
   graph_window_types.CRIME = hex2dec('0000000C')
   graph_window_types.DEMAND = hex2dec('0000000E')
   graph_window_types.EDUCATION_DEMOGRAPHIC = hex2dec('00000012')
   graph_window_types.EQ = hex2dec('0000000D')
   graph_window_types.FUNDS = hex2dec('00000002')
   graph_window_types.GARBAGE = hex2dec('0000000A')
   graph_window_types.INCOME_EXPENSES = hex2dec('00000003')
   graph_window_types.LIFE_EXPECTANCY = hex2dec('00000005')
   graph_window_types.MAYOR_RATING = hex2dec('00000001')
   graph_window_types.POPULATION_DEMOGRAPHIC = hex2dec('00000013')
   graph_window_types.POWER = hex2dec('00000006')
   graph_window_types.RCI = hex2dec('00000011')
   graph_window_types.TRAFFIC = hex2dec('0000000B')
   graph_window_types.WATER_POLLUTION = hex2dec('00000009')
   graph_window_types.WATER = hex2dec('00000007')

make_table_const(graph_window_types)

---------------------------------------------------------------------------
-- Map window types
-- 
map_window_types = {}

   map_window_types.NONE                           = hex2dec('00005001')
   map_window_types.FIRE                           = hex2dec('00005002')
   map_window_types.CRIME                         = hex2dec('00005003')
   map_window_types.EDUCATION                 = hex2dec('00005004')
   map_window_types.DESIRABILITY           = hex2dec('00005005')
   map_window_types.WATER                         = hex2dec('00005006')
   map_window_types.POWER                         = hex2dec('00005007')
   map_window_types.TRAFFIC                     = hex2dec('00005008')
   map_window_types.RESIDENT                   = hex2dec('00005009')
   map_window_types.LAND_VALUE               = hex2dec('0000500a')
   map_window_types.MAYOR_RATING           = hex2dec('0000500b')
   map_window_types.ZONES                         = hex2dec('0000500c')
   map_window_types.HEALTH                       = hex2dec('0000500d')
   map_window_types.AIR_POLLUTION         = hex2dec('0000500e')
   map_window_types.WATER_POLLUTION     = hex2dec('0000500f')
   map_window_types.GARBAGE                     = hex2dec('00005010')
   map_window_types.RADIATION                 = hex2dec('00005011')
                                                                          
   map_window_types.CIVIC = map_window_types.DESIRABILITY -- the new UI had no direct matching item for this one.
   map_window_types.AGE = map_window_types.RESIDENT -- the new UI had no direct matching item for this one
   map_window_types.POLICE = map_window_types.CRIME -- the new UI had no direct matching item for this one

   -- subtypes
   map_window_types.TRAFFIC_VOLUME       = hex2dec('00008002')
   map_window_types.DESIRABILITY_I_D   = hex2dec('0000600a')
   

make_table_const(map_window_types)

---------------------------------------------------------------------------
--Tuning Constants
-- This table is for values that will probably change and that will be used by multiple advisors.
-- 
mysim_trip_types = {}
   mysim_trip_types.WALK = 0
   mysim_trip_types.CAR = 1
   mysim_trip_types.BUS = 2
   mysim_trip_types.TRAIN = 3
   mysim_trip_types.SUBWAY = 6
   mysim_trip_types.ELEVATED_TRAIN = 7
   mysim_trip_types.MONORAIL = 8
make_table_const(mysim_trip_types)

---------------------------------------------------------------------------
--Tuning Constants
-- This table is for values that will probably change and that will be used by multiple advisors.
-- 
game_difficulty_level = {}
   game_difficulty_level.EASY = 0
   game_difficulty_level.MEDIUM = 1
   game_difficulty_level.HARD = 2
make_table_const(game_difficulty_level)


---------------------------------------------------------------------------
--Tuning Constants
-- This table is for values that will probably change and that will be used by multiple advisors.
-- 

tuning_constants = {}
--POPULATION--Joseph owns this
tuning_constants.POPULATION_STEP_1 = 0
tuning_constants.POPULATION_STEP_2 = 5000
tuning_constants.POPULATION_STEP_3 = 10000
tuning_constants.POPULATION_STEP_4 = 20000
tuning_constants.POPULATION_STEP_5 = 50000
tuning_constants.POPULATION_STEP_6 = 150000
tuning_constants.POPULATION_STEP_7 = 300000
tuning_constants.POPULATION_STEP_8 = 600000
tuning_constants.POPULATION_STEP_9 = 1200000

--BUDGET FUNDS--Kevin is Budget Boy
   tuning_constants.BUDGET_FUNDS_VERY_LOW = 5000
   tuning_constants.BUDGET_FUNDS_LOW = 30000
   tuning_constants.BUDGET_FUNDS_WORRISOME = 55000
   tuning_constants.BUDGET_FUNDS_HIGH = 500000
   tuning_constants.BUDGET_FUNDS_VERYHIGH = 1000000
   
   --DISASTER - REDUNDANT???
   --tuning_constants.BUDGET_FUNDS_HIGH = 30000
   --tuning_constants.BUDGET_FUNDS_LOW = 8000
   --tuning_constants.BUDGET_FUNDS_VERY_LOW = 3000
   

--COVERAGE for police and fire
tuning_constants.COVERAGE_LOW = 40 --x% of city is covered by building effect
tuning_constants.COVERAGE_MEDIUM = 65 --x% of city is covered by building effect
tuning_constants.COVERAGE_HIGH = 85 --x% of city is covered by building effect


--Population Served for health
-- (# of patients/city population) * 100
-- 8% of your population is sick, folks can get double counted by the different health building types
tuning_constants.HEALTH_POP_SERVED_LOW = 2
tuning_constants.HEALTH_POP_SERVED_MEDIUM = 4.5 
tuning_constants.HEALTH_POP_SERVED_HIGH = 7.5 

--Population Served for education
-- (# of patients/city population) * 100
-- some ugly double counting occurs...
tuning_constants.EDUC_POP_SERVED_LOW = 1
tuning_constants.EDUC_POP_SERVED_MEDIUM = 2.5 
tuning_constants.EDUC_POP_SERVED_HIGH = 4.5 


--FIRE--Marisa
   --tuning_constants.FIRE_STATION_POP = 700
   --tuning_constants.FIRE_COVERAGE_LOW = 60 --x% of city is covered by fire stations
   --tuning_constants.FIRE_COVERAGE_HIGH = 90 --x% of city is covered by fire stations
   --tuning_constants.POOR_FIRE_COVERAGE = 60 --x% of city is covered by fire stations
   --tuning_constants.GOOD_FIRE_COVERAGE = 90 --x% of city is covered by fire stations
   tuning_constants.LOW_FLAMMABILITY = 50 
   tuning_constants.MEDIUM_FLAMMABILITY = 70
   tuning_constants.TINDER_BOX_FLAMMABILITY = 140

--POLICE--Frank
  --tuning_constants.POLICE_COVERAGE_HIGH = 90
  --tuning_constants.POLICE_COVERAGE_LOW = 5
  --tuning_constants.EXCESSIVE_STATION_FUNDING = 110
  --tuning_constants.POLICE_STATION_POP = 800
  tuning_constants.JAIL_POP = 2000


--POLICE & FIRE, general
--tuning_constants.MEDIUM_STATION_FUNDING = 90
   --tuning_constants.LOW_STATION_FUNDING = 70
   --tuning_constants.VERY_LOW_STATION_FUNDING = 60
      tuning_constants.DISPATCH_EFFICIENCY_HIGH = 80 --% time fighting fire
   tuning_constants.DISPATCH_EFFICIENCY_LOW= 20  --% time fighting fire
 
   --  HEALTH
   -- EQ range is 0 to 200
   -- base EQ/HQ is 20/40/60 for $/$$/$$$
   
   tuning_constants.LE_HIGH =77 
   tuning_constants.LE_MEDIUM =65
   tuning_constants.LE_MEDIUM_LOW =56 
   tuning_constants.LE_LOW =52 
   
   tuning_constants.HQ_HIGH = 140 
   tuning_constants.HQ_MEDIUM =90
   tuning_constants.HQ_LOW = 40 
   
   tuning_constants.HQ_GRADE_LOW = 30
   tuning_constants.HQ_GRADE_MEDIUM = 60
   tuning_constants.HQ_GRADE_HIGH = 90
   
   tuning_constants.HEALTH_GRADE_LOW = 30 --I've been told that its on 1 0 to 100 scale.
   --tuning_constants.HEALTH_COVERAGE_LOW = 60
   
   --EDUCATION
    tuning_constants.EQ_LOW =30
    tuning_constants.EQ_MEDIUM =60
   tuning_constants.EQ_HIGH =100
   
   tuning_constants.ED_GRADE_LOW = 30
   tuning_constants.ED_GRADE_MEDIUM = 60
   tuning_constants.ED_GRADE_HIGH = 90
   
     
--UTILITIES 
  tuning_constants.COST_WIND_PLANT = 500
  tuning_constants.COST_GAS_PLANT = 9000
  tuning_constants.COST_COAL_PLANT = 10000
  tuning_constants.COST_OIL_PLANT = 17000
  tuning_constants.COST_SOLAR_PLANT = 30000
  tuning_constants.COST_NUKE_PLANT = 40000
  tuning_constants.COST_HYDRO_PLANT = 100000

--POLLUTION
--this set is for local values, which can get large 
--air/water max = 1024

   tuning_constants.POLLUTION_LOW =160
   tuning_constants.POLLUTION_MEDIUM =300
   tuning_constants.POLLUTION_HIGH =1000
      
  --This set is for global avg values which are averaged over the entire map, so they end up much smaller.
   tuning_constants.GA_POLLUTION_LOW =15
   tuning_constants.GA_POLLUTION_MEDIUM =25
   tuning_constants.GA_POLLUTION_HIGH =40
 
  --garbage max = 32,000
  tuning_constants.POLLUTION_GARBAGE_LOW = 100 --as opposed to 0
   tuning_constants.POLLUTION_GARBAGE_MEDIUM = 1300 --orange in data view
   tuning_constants.POLLUTION_GARBAGE_HIGH =4096   --red in dataview
   tuning_constants.POLLUTION_RADIATION_HIGH =1
   
   tuning_constants.FUNDING_VERY_LOW = 50
   tuning_constants.FUNDING_LOW = 70
   tuning_constants.FUNDING_MEDIUM = 90
   tuning_constants.FUNDING_HIGH = 100
   tuning_constants.FUNDING_EXCESSIVE = 110
   
   --tuning_constants.SCHOOL_GRADE_C =75
   
   --tuning_constants.PARKS_FUNDING_LOW = 50 -- funding levels for parks & recreation
   
   tuning_constants.AVG_MAYOR_RATING_VERYGOOD = 60 
   tuning_constants.AVG_MAYOR_RATING_GOOD = 42
   tuning_constants.AVG_MAYOR_RATING_AVERAGE = 5
   tuning_constants.AVG_MAYOR_RATING_LOW = -30
   tuning_constants.AVG_MAYOR_RATING_VERYLOW = -60
   
  --local crime values 0-255
  tuning_constants.CRIME_HIGH =254
   tuning_constants.CRIME_MEDIUM =180
   tuning_constants.CRIME_LOW =60
   
   --global average crime values
   tuning_constants.GA_CRIME_HIGH =100
   tuning_constants.GA_CRIME_MEDIUM =50
   tuning_constants.GA_CRIME_LOW =10
   
   
   tuning_constants.ARRESTS_HIGH =100
   tuning_constants.ARRESTS_MEDIUM =40
   tuning_constants.ARRESTS_LOW =10

   tuning_constants.STARTING_FUNDS = 100000

   tuning_constants.TAX_RATE_HIGH =1.12
   tuning_constants.TAX_RATE_VERY_HIGH=1.3
   tuning_constants.TAX_RATE_LOW =.75
 
   tuning_constants.TREND_SHORT = 6 --check a trend over 6 months
   tuning_constants.TREND_MEDIUM = 12 --check a trend over 1 year
   tuning_constants.TREND_LONG = 36 --check a trend over 3 years

   --these slopes are now used as percents with game.trend_delta
   tuning_constants.SLOPE_UP= 10
   tuning_constants.SLOPE_UP_UP = 20 
   tuning_constants.SLOPE_UP_UP_UP = 40
   tuning_constants.SLOPE_DOWN = -10
   tuning_constants.SLOPE_DOWN_DOWN = -20 
   tuning_constants.SLOPE_DOWN_DOWN_DOWN = -40
  
   --Tuning Constants for the appearance and duration of advice
   tuning_constants.ADVICE_TIMEOUT_SHORT = 150      --timeouts measured in days, 30 days min
   tuning_constants.ADVICE_TIMEOUT_MEDIUM = 720
   tuning_constants.ADVICE_TIMEOUT_LONG = 1000000
 
 tuning_constants.ADVICE_FREQUENCY_VERY_LOW = 3000 
  tuning_constants.ADVICE_FREQUENCY_LOW = 1500     --frequency of advice appearance measured in days
   tuning_constants.ADVICE_FREQUENCY_MEDIUM = 720 --was 360
   tuning_constants.ADVICE_FREQUENCY_MED_HIGH = 360
   tuning_constants.ADVICE_FREQUENCY_HIGH = 180
   
   tuning_constants.ADVICE_PRIORITY_VERY_LOW = 10  --advice priority from 0 to 100
   tuning_constants.ADVICE_PRIORITY_LOW = 20
   tuning_constants.ADVICE_PRIORITY_MED_LOW = 27
   tuning_constants.ADVICE_PRIORITY_MED_MED_LOW = 34
   tuning_constants.ADVICE_PRIORITY_MEDIUM = 45
   tuning_constants.ADVICE_PRIORITY_MED_HIGH = 60
   tuning_constants.ADVICE_PRIORITY_HIGH = 80
   tuning_constants.ADVICE_PRIORITY_URGENT = 100
  
  tuning_constants.ADVICE_POPUP_PRIORITIES_BY_SKILL_LEVEL = 
   {
      low      =  tuning_constants.ADVICE_PRIORITY_MED_HIGH, 
      medium =  tuning_constants.ADVICE_PRIORITY_HIGH, 
      high     = tuning_constants.ADVICE_PRIORITY_URGENT
   }
      
   --DISASTER
   tuning_constants.DISASTER_COST_ZERO = 0
   tuning_constants.DISASTER_COST_LOW = 10
   tuning_constants.DISASTER_COST_MEDIUM = 2000
   tuning_constants.DISASTER_COST_HIGH = 8000
   tuning_constants.FIRE_DISPATCH_GOOD = 40 -- 0 to 100 scale
   tuning_constants.FIRE_DISPATCH_BAD = 3-- 0 to 100 scale
   tuning_constants.POLICE_DISPATCH_GOOD = 40 -- 0 to 100 scale
   tuning_constants.POLICE_DISPATCH_BAD = 3 -- 0 to 100 scale
   
   --TRANSPORTATION
   tuning_constants.RAIL_CONGESTION_HIGH = 80
   tuning_constants.LONG_COMMUTE = 100
   tuning_constants.SHORT_COMMUTE = 10
   tuning_constants.TRAFFIC_CONGESTION_VERY_HIGH = 320
   tuning_constants.TRAFFIC_CONGESTION_HIGH = 220    
   tuning_constants.TRAFFIC_CONGESTION_MEDIUM =140
   tuning_constants.TRAFFIC_CONGESTION_LOW =40
   
   tuning_constants.AIRPORT_EFFICIENT_LOW =50
   tuning_constants.AIRPORT_EFFICIENT_MEDIUM =75
   tuning_constants.AIRPORT_EFFICIENT_HIGH=90
   
   tuning_constants.STATION_UTILIZATION_LOW =5
   tuning_constants.STATION_UTILIZATION_MEDIUM =30
   tuning_constants.STATION_UTILIZATION_HIGH=60
   
 
  --My Sim tuning constants
   tuning_constants.BALLOON_CHANCE_PERCENT = 5 --for use with a.balloon_sound_chance, to limit frequency of balloon sounds
   
   tuning_constants.MYSIM_OLD_AGE = 55
   tuning_constants.MYSIM_MIDDLE_AGE =30
   tuning_constants.MYSIM_YOUNG_AGE = 18
   tuning_constants.MYSIM_HQ_LOW = 30
   tuning_constants.MYSIM_HQ_MEDIUM = 50
   tuning_constants.MYSIM_EQ_TREND_DECLINE = -40
   tuning_constants.MYSIM_EQ_TREND_INCREASE = 40
   tuning_constants.MYSIM_DEATH_WARNING = 2 --time in years before death of old age
    --lower wealth sims have a higher tolerance for bad health
   tuning_constants.MYSIM_HQ_LOW_WEALTH_POOR = 20
   tuning_constants.MYSIM_HQ_LOW_WEALTH_MIDDLE = 30
   tuning_constants.MYSIM_HQ_LOW_WEALTH_RICH = 40
   tuning_constants.MYSIM_EQ_LOW = 20
   tuning_constants.MYSIM_HOME_RADIUS = 200
   tuning_constants.MYSIM_HEALTH_RADIUS = 585

   tuning_constants.MYSIM_TRIP_MIN_TIME_AT_LOCATION = 30 -- in 24-hour clock minutes. Minimum amount of time My Sim will spend at various locations
   tuning_constants.MYSIM_TRIP_MIN_TIME_AT_TRANSIT_SWITCH = 1 -- in 24-hour clock minutes. Minimum amount of time My Sim will spend at transit switches
   tuning_constants.MYSIM_TRIP_MIN_TIME_IDLE = 1 -- in 24-hour clock minutes. Minimum amount of time my sim will spend playing idle animations
   tuning_constants.MYSIM_TRIP_LOCAL_AREA_SIZE = 10 -- a side of the square designating the local information area (in Cells)
   tuning_constants.MYSIM_TRIP_DESTINATION_PROXIMITY_MIN = 4 --  minimum distance from a destination considered as reached destination successfully. it was 10, trying 4 cells.
   tuning_constants.MYSIM_BALLOON_FADE_DURATION = 300 -- a value of a 1000 is 1 second
   tuning_constants.MYSIM_BALLOON_SHOWN_DURATION = 2500 -- same as above
   tuning_constants.MYSIM_BALLOON_HIDDEN_DURATION = 300 -- same as above
   tuning_constants.MYSIM_TRIP_APPROACH_DISTANCE = 8 -- distance from current destination (in cells) at which we set the approach mode before the destination is reached
   tuning_constants.MYSIM_TRIP_DEFAULT_CAR_MODEL = hex2dec('106a0000') -- green cheap sports car
    
-- Note 585 is the current 100% radius of a hospital
  
   tuning_constants.MYSIM_HOME_FIRE_COVERAGE_LOW = 20
   tuning_constants.MYSIM_HOME_FIRE_COVERAGE_HIGH = 240
   
   tuning_constants.MYSIM_EQ_LOW_WEALTH_THRESHOLD = 75
   tuning_constants.MYSIM_EQ_MEDIUM_WEALTH_THRESHOLD = 130
    
   tuning_constants.MYSIM_DESIRABILITY_LOW = 3
   tuning_constants.MYSIM_DESIRABILITY_MEDIUM = 60
   tuning_constants.MYSIM_DESIRABILITY_HIGH = 95
   
   --STRIKES
   tuning_constants.STRIKE_LOW = 10
   tuning_constants.STRIKE_MEDIUM = 30
   tuning_constants.STRIKE_HIGH = 40
   
   tuning_constants.RANDOM_CHANCE = 10
   --RCI
    tuning_constants.CAP_LOW=10
    tuning_constants.CAP_MEDIUM=30
    tuning_constants.CAP_HIGH=50
    
    --REWARD TRIGGERS
    tuning_constants.MAYOR_HOUSE_POP = 3450
    tuning_constants.MAYOR_HOUSE_MR = 20
    tuning_constants.BIGLIBRARY_POP  = 69360
    tuning_constants.BIGLIBRARY_MR = 37
    tuning_constants.BIGLIBRARY_NUM_LIBRARIES = 5
    tuning_constants.BIGLIBRARY_LIBRARY_GRADE = 85
    tuning_constants.RADIO_POP = 33660
    tuning_constants.RADIO_MR = 30
    tuning_constants.TOURISTTRAP_REGION_POP = 100000
    tuning_constants.TOURISTTRAP_NUM_CITIES_CONNECTED = 4
    tuning_constants.TOURISTTRIP_NUM_CITIES_REGION = 6
    tuning_constants.ARTMUSEUM_POP_RH_AND_RM = 75000
    tuning_constants.ARTMUSEUM_MR = 45
    tuning_constants.ARTMUSEUM_NUM_MUSEUMS = 4
    tuning_constants.ARTMUSEUM_MUSEUM_GRADE = 85
    tuning_constants.COURTHOUSE_POP = 109000
    tuning_constants.COURTHOUSE_MR = 33
    tuning_constants.UNIV_POP_RH_AND_RM = 40000
    tuning_constants.UNIV_MR = 42
    tuning_constants.UNIV_SCHOOL_GRADE = 95
    tuning_constants.OPERA_POP_RM_RH = 220000
    tuning_constants.OPERA_MR = 52
    tuning_constants.CITYHALL1_POP = 50000
    tuning_constants.CITYHALL_MR = 20
    tuning_constants.BOFB_POP = 115000
    tuning_constants.BOFB_MR = 30
    --tuning_constants.BOFB_H_AND_E_FUNDING_P = 103
    tuning_constants.MINORSTAD_POP = 50000
    tuning_constants.MINORSTAD_MR = 20
    tuning_constants.MINORSTAD_NUM_REC_PARK = 16
    tuning_constants.MAJORSTAD_POP = 540000
    tuning_constants.MAJORSTAD_MR = 30
    tuning_constants.FARMERSMKT_POP = 8000
    tuning_constants.FARMERSMKT_MR = 34
    tuning_constants.FARMERSMKT_IR_POP = 2450
    tuning_constants.MEDRESCENTER_POP = 141000
    tuning_constants.MEDRESCENTER_MR = 45
    tuning_constants.MEDRESCENTER_NUM_HOSP = 3
    tuning_constants.COUNTRYCLUB_RH_POP = 11000
    tuning_constants.COUNTRYCLUB_MR = 55
    tuning_constants.TVSTUDIO_POP = 330000
    tuning_constants.TVSTUDIO_MR = 50
    tuning_constants.ADVRESCENTER_IHT_POP = 8000
    tuning_constants.ADVRESCENTER_MR = 54
    tuning_constants.STOCKXCHNG_CO_POP = 100000
    tuning_constants.STOCKXCHNG_MR = 45
    tuning_constants.CONVCENTER_C_POP = 100000
    tuning_constants.CONVCENTER_MR = 40
    tuning_constants.MOVIESTUDIO_POP = 110000
    tuning_constants.MOVIESTUDIO_MR = 52
    tuning_constants.ZOO_POP = 80000
    tuning_constants.ZOO_MR = 68
    tuning_constants.ZOO_NUM_PARKS = 25
    tuning_constants.STATEFAIR_IR_POP = 5000
    tuning_constants.STATEFAIR_POP = 9600
    tuning_constants.STATEFAIR_MR = 48
    tuning_constants.RESORT_RM_RH_REGION_POP = 280000
    tuning_constants.RESORT_NUM_CITIES_CONNECTED = 2
    tuning_constants.RESORT_NUM_CITIES_REGION = 4
    tuning_constants.RESORT_AIRPOLLUTION = 20
    tuning_constants.RESORT_MR = 52
    tuning_constants.SOLAR_RH_POP = 31000
    tuning_constants.SOLAR_MR = 55
    tuning_constants.NUKE_CITY_POP = 85000
    tuning_constants.NUKE_ENERGY_DEMAND = 25000
    tuning_constants.FUSION_IHT_POP = 16000
    tuning_constants.FUSION_ENERGY_DEMAND = 30000
    tuning_constants.MAYOR1_POP = 5000
    tuning_constants.MAYOR2_POP = 30000
    tuning_constants.MAYOR3_POP = 60000
    tuning_constants.MAYOR4_POP = 120000
    --EP1 Reward tuning contstants
     tuning_constants.SPACE_PORT_IHT_JOBS = 25000
    tuning_constants.CRUISE_PORT_C_JOBS = 15000
    tuning_constants.CRUISE_PORT_PARKS = 15
    tuning_constants.CRUISE_CITY_WATER_PCT = 35
    tuning_constants.DELUXE_POLICE_STATION_POP = 41000
    tuning_constants.DELUXE_FIRE_STATION_POP = 31000
    tuning_constants.GRAND_RAIL_STATION_POP = 172000
    tuning_constants.GRAND_RAIL_STATION_UTILIZATION = 4000
    tuning_constants.GRAND_RAIL_STATION_STATIONS = 2
    tuning_constants.LARGE_ELEM_SCHOOL_POP = 4000
    tuning_constants.LARGE_ELEM_SCHOOL_SCHOOLS = 12
    tuning_constants.LARGE_HIGH_SCHOOL_POP = 6000
    tuning_constants.LARGE_ELEM_SCHOOL_SCHOOLS = 8
    tuning_constants.LARGE_WATER_PUMP_CITY_CAPACITY = 40000
    tuning_constants.LARGE_WATER_PUMP_POP = 10000
    tuning_constants.MARINA_CITY_WATER_PCT = 20
    tuning_constants.MARINA_POP = 18000
    tuning_constants.MARINA_MR = 53

    -- the following values represent various cap values for unscaled (from 0-100) variables.
    tuning_constants.MAX_EQ = 200
    tuning_constants.MAX_HQ = 200
    tuning_constants.MAX_FLAMMABILITY = 256
    tuning_constants.MAX_POLICE_COVERAGE = 256
    tuning_constants.MAX_FIRE_COVERAGE = 256
    tuning_constants.MAX_CRIME = 256
    tuning_constants.MAX_AIR_POLLUTION = hex2dec("0x00000400") -- from the Utilities exemplar.
    tuning_constants.MAX_WATER_POLLUTION = hex2dec("0x00000400")  -- from the Utilities exemplar
    tuning_constants.MAX_GARBAGE_POLLUTION = hex2dec("0x00007d00")  -- from the Utilities exemplar
    -- all effectiveness, percent and chance values are supposed to be in range between 0-100
    tuning_constants.MAX_FREIGHT_TRIP_LENGTH = 256
   
make_table_const(tuning_constants)





 special_buildings = {}  --landmarks and rewards 
 --REWARDS     

   special_buildings.MajorLeagueStadium	= hex2dec('03280000')
   special_buildings.Country_Club =hex2dec('03270000')
   special_buildings.OperaHouse	= hex2dec('032B0000')
   special_buildings.FarmerMarket	= hex2dec('032C0000')
   special_buildings.MayorStatue	= hex2dec('03210000')
   special_buildings.CourtHouse	= hex2dec('03220000')
   special_buildings.TouristTrap	= hex2dec('032D0000')
   special_buildings.AdvResearchCenter	= hex2dec('032F0000')
   special_buildings.BureauofBureaucracy	= hex2dec('03310000')
   special_buildings.StockExchange	= hex2dec('03320000')
   special_buildings.HouseofWorship	= hex2dec('031E0000')
   special_buildings.MayorHouse	= hex2dec('031F0000')
   special_buildings.CityHall1	= hex2dec('03C00000')
   special_buildings.CityHall2	= hex2dec('03C10000')
   special_buildings.CityHall3	= hex2dec('03C20000')
   special_buildings.RadioStation	= hex2dec('03330000')
   special_buildings.TV_Station	= hex2dec('03340000')
   special_buildings.StateFair	= hex2dec('03360000')
   special_buildings.Prison	= hex2dec('03380000')
   special_buildings.Zoo	= hex2dec('03390000')
   special_buildings.Casino	= hex2dec('033A0000')
   special_buildings.MajorArtMuseum	= hex2dec('033C0000')
   special_buildings.UnivAdmin 	= hex2dec('033D0000')
   special_buildings.MovieStudio	= hex2dec('033E0000')
   special_buildings.CenterForDisease	= hex2dec('033F0000')
   special_buildings.ResortHotel	= hex2dec('03810000')
   special_buildings.ToxicWasteDunp	= hex2dec('03410000')
   special_buildings.MissleTestingRange	= hex2dec('03420000')
   special_buildings.ConventionCenter	= hex2dec('03430000')
   special_buildings.MinorLeagueStadium	= hex2dec('03440000')
   special_buildings.ArmyBase	= hex2dec('03460000')
   special_buildings.Cemetery	= hex2dec('03470000')

--UnivHumanitiesHall	= hex2dec(03480000
--UnivScienceHall	= hex2dec(03490000
--UnivLibrary	= hex2dec(034A0000
--UnivStudentBldg	= hex2dec(034B0000
--UnivBoilerFacilities	= hex2dec(034C0000

   special_buildings.PrivateSchool	= hex2dec('03180000')
   special_buildings.MayorStatue1	= hex2dec('03750000')
   special_buildings.MayorStatue2	= hex2dec('03740000')
   special_buildings.MayorStatue3	= hex2dec('03730000')
   special_buildings.PrivateSchool2	= hex2dec('03790000')
   special_buildings.PrivateSchool3	= hex2dec('037A0000')
   special_buildings.HouseofWorship1	= hex2dec('03760000')
   special_buildings.HouseofWorship2	= hex2dec('03770000')
   special_buildings.HouseofWorship3	= hex2dec('03780000')
   special_buildings.Cemetery1	= hex2dec('037B0000')
   special_buildings.Cemetery2	= hex2dec('037C0000')

   --LANDMARKS
   special_buildings.GreatPyramid	= hex2dec('04CB0000')
   special_buildings.TajMahal	= hex2dec('04CC0000')
   special_buildings.BigBen	= hex2dec('04CD0000')
   special_buildings.Basils	= hex2dec('04CE0000')
   special_buildings.BostonFaneuilHall	= hex2dec('04CF0000')
   special_buildings.JohnHancockCenter	= hex2dec('04D00000')
   special_buildings.Sphynx	= hex2dec('04D10000')
   special_buildings.Hollywoodsign	= hex2dec('04D20000')
   special_buildings.ChryslerBuilding	= hex2dec('04D30000')
   special_buildings.EmpireStateBuilding	= hex2dec('04D40000')
   special_buildings.Guggenhiem	= hex2dec('04D50000')
   special_buildings.StatueofLiberty	= hex2dec('04D60000')
   special_buildings.IndependenceHall	= hex2dec('04D70000')
   special_buildings.SmithTower	= hex2dec('04D80000')
   special_buildings.GatewayArch	= hex2dec('04D90000')
   special_buildings.Alamo	= hex2dec('04DA0000')
   special_buildings.CNtower	= hex2dec('04DB0000')
   special_buildings.CaliforniaPlaza	= hex2dec('04DC0000')
   special_buildings.JeffersonMemorial	= hex2dec('04DD0000')
   special_buildings.LincolnMemorial	= hex2dec('04DE0000')
   special_buildings.USCapitol	= hex2dec('04DF0000')
   special_buildings.WashingtonMonument	= hex2dec('04E00000')
   special_buildings.WhiteHouse	= hex2dec('04E10000')
   special_buildings.PalaceofFineArts	= hex2dec('10020000')
   special_buildings.BankofAmericaTower	= hex2dec('10030000')
   special_buildings.Fernsehturm	= hex2dec('04C60000')
   special_buildings.RotesRathaus	= hex2dec('04C70000')
   special_buildings.PalacioReal	= hex2dec('04C80000')
   special_buildings.HagiaSofia	= hex2dec('04C90000')
   special_buildings.TokyoTower	= hex2dec('04CA0000')
   
   special_buildings.ARC_TRIOMPHE = hex2dec('04C10000')
   special_buildings.WORLD_CUP_FOOTBALL_STADIUM = hex2dec('04C20000')
   special_buildings.SEOUL_CITYHALL_SQUARE = hex2dec('04C30000')
   special_buildings. BANK_OF_CHINA_TOWER = hex2dec('04C40000')
   special_buildings. AMALIENBORG = hex2dec('04BF0000')

   -- EP1 buildings
   special_buildings.DeluxePoliceStation = hex2dec('03860000')
   special_buildings.SpacePort = hex2dec('03840000')
   special_buildings.CruiseShipPier = hex2dec('03BC0000')
   special_buildings.AerialFireFightingStrip = hex2dec('038E0000')
   special_buildings.GrandRailRoadStation = hex2dec('03980000')
   special_buildings.LargeElementarySchool = hex2dec('03850000')
   special_buildings.LargeHighSchool = hex2dec('03890000')
   special_buildings.LargeWaterPump = hex2dec('03870000')
   special_buildings.Marina = hex2dec('03970000')
   special_buildings.Area51 = hex2dec('03960000')
   special_buildings.Lighthouse = hex2dec('03950000')
  
make_table_const(special_buildings)

mysim_balloons = {}
   mysim_balloons.BUS =hex2dec('2b85ba76')
  mysim_balloons.BUSGREEN =hex2dec('ab9538ae')
 mysim_balloons.BUSRED =hex2dec('cb953ba9')

 mysim_balloons.CAR =hex2dec('8b85ba82')
   mysim_balloons.CARGREEN =hex2dec('cb9538b9')
   mysim_balloons.CARRED =hex2dec('2b953bb0')

   mysim_balloons.FERRY =hex2dec('cb85ba8a')
    mysim_balloons.FERRYGREEN =hex2dec('eb9538f0')
  mysim_balloons.FERRYRED =hex2dec('cb953bd7')

mysim_balloons.NEGATIVEICON =hex2dec('2b7e54f1')
  
  mysim_balloons.SPEECHBUBBLE =hex2dec('5b7e54f3')
   mysim_balloons.THOUGHTBUBBLE =hex2dec('7b7e54f5')
   mysim_balloons.TRAIN =hex2dec('eb85ba9e')
   mysim_balloons.TRAINGREEN =hex2dec('4b9539b3')
   mysim_balloons.TRAINRED =hex2dec('2b953c62')
  
  mysim_balloons.WALK =hex2dec('0b85ba93')
   mysim_balloons.WALKGREEN =hex2dec('4b9539cd')
  mysim_balloons.WALKRED =hex2dec('4b9d445d')
  
   mysim_balloons.EDUCATION =hex2dec('0b8c31f5')
     mysim_balloons.EDUCATIONGREEN =hex2dec('cb9538e8')
  mysim_balloons.EDUCATIONRED =hex2dec('4b953bcf')

   mysim_balloons.CRIME =hex2dec('eb8c3189')
 mysim_balloons.CRIMEGREEN =hex2dec('6b9538d7')
 mysim_balloons.CRIMERED =hex2dec('eb953bbf')
 

mysim_balloons.JUSTICE =hex2dec('eb8c31fe')
  mysim_balloons.JUSTICEGREEN =hex2dec('6b953928')
mysim_balloons.JUSTICERED =hex2dec('6b953bfc')


mysim_balloons.POLLUTION =hex2dec('cb8c3209')
   mysim_balloons.POLLUTIONGREEN =hex2dec('8b953967')
mysim_balloons.POLLUTIONRED =hex2dec('2b953c27')

   mysim_balloons.HEALTH=hex2dec('8b8c3218')
     mysim_balloons.HEALTHGREEN =hex2dec('0b953905')
   mysim_balloons.HEALTHRED =hex2dec('6b953be5')
 
   mysim_balloons.SUNSHINE=hex2dec('6b8c3221')
   mysim_balloons.SUNSHINEGREEN=hex2dec('cb9539a2')
  mysim_balloons.SUNSHINERED=hex2dec('0b953c55')
  
   mysim_balloons.AIRPLANEGREEN=hex2dec('eb953890')
     mysim_balloons.BOATGREEN=hex2dec('8b9538a0')
  mysim_balloons.BOATRED=hex2dec('2b953b99')
  mysim_balloons.SERVICEGREEN=hex2dec('0b9538c6')
   mysim_balloons.SERVICERED=hex2dec('6b953bb7')
mysim_balloons.DININGGREEN=hex2dec('8b9538df')
mysim_balloons.DININGRED=hex2dec('4b953bc7')
mysim_balloons.DINING=hex2dec('8c2cfdce')
mysim_balloons.GLOWRATGREEN=hex2dec('cb9538fc')
mysim_balloons.GLOWRATRED=hex2dec('2b953bde')
mysim_balloons.HOTELGREEN=hex2dec('2b953910')
mysim_balloons.HOTELRED=hex2dec('eb953bec')
mysim_balloons.HOTEL=hex2dec('8c2d0046')
mysim_balloons.JAILGREEN=hex2dec('0b95391a')
mysim_balloons.JAILRED=hex2dec('6b953bf3')
mysim_balloons.LANDMARKGREEN=hex2dec('ab953939')
mysim_balloons.LANDMARKRED=hex2dec('cb953c04')
mysim_balloons.MOVIEGREEN=hex2dec('0b953954')
mysim_balloons.MOVIERED=hex2dec('0b953c0d')
mysim_balloons.PARKGREEN=hex2dec('6b95395d')
mysim_balloons.PARKRED=hex2dec('4b953c1f')
mysim_balloons.RADGREEN=hex2dec('eb953978')
mysim_balloons.RADRED=hex2dec('6b953c3a')
  mysim_balloons.RATGREEN=hex2dec('cb953981')
 mysim_balloons.RATRED=hex2dec('8b953c40')
 mysim_balloons.REWARDGREEN=hex2dec('4b95398b')
mysim_balloons.REWARDRED=hex2dec('cb953c48')
 mysim_balloons.SHOPPINGGREEN=hex2dec('2b953998')
 mysim_balloons.SHOPPINGRED=hex2dec('8b953c4f')
  mysim_balloons.TRACTORGREEN=hex2dec('0b9539ab')
 mysim_balloons.TRACTORRED=hex2dec('eb953c5c')
  mysim_balloons.FRIENDGREEN=hex2dec('2b9539c1')
 mysim_balloons.FRIENDRED=hex2dec('eb953c6d')

mysim_balloons.exercise1=hex2dec('8c0d2e8a')
mysim_balloons.exercise2=hex2dec('ec0d2eac')
mysim_balloons.exercise3=hex2dec('ec0d2ebe')
mysim_balloons.food1=hex2dec('0c0d306c')
mysim_balloons.food2=hex2dec('ac0d308c')
mysim_balloons.food3=hex2dec('0c0d3096')
mysim_balloons.movies1=hex2dec('6c0d312a')
mysim_balloons.movies2=hex2dec('4c0d3145')
mysim_balloons.movies3=hex2dec('2c0d315a')
mysim_balloons.party1=hex2dec('ec0d2ed1')
mysim_balloons.party2=hex2dec('6c0d2ef2')
mysim_balloons.party3=hex2dec('ac0d2f04')
mysim_balloons.romance1=hex2dec('8c0d31c5')
mysim_balloons.romance2=hex2dec('6c0d31da')
mysim_balloons.romance3=hex2dec('0c0d31ee')
mysim_balloons.style1=hex2dec('6c0d30da')
mysim_balloons.style2=hex2dec('0c0d30e5')
mysim_balloons.style3=hex2dec('ec0d30f9')
mysim_balloons.tech1=hex2dec('cc0d3177')
mysim_balloons.tech2=hex2dec('cc0d318b')
mysim_balloons.tech3=hex2dec('cc0d31a1')
make_table_const(mysim_balloons)




mysim_VOX = {}   
 

   mysim_VOX.CelebrateF	= hex2dec('4bc26e39')
   mysim_VOX.CelebrateM	= hex2dec('abc26e70')
   mysim_VOX.ComplaintF	= hex2dec('2bbc3404')
   mysim_VOX.ComplaintM	= hex2dec('cbbc342c')
   mysim_VOX.ConcernF	= hex2dec('abc26e9c')
   mysim_VOX.ConcernM	= hex2dec('cbc26eb1')
 mysim_VOX.DeathF	= hex2dec('ebc26ec3')
   mysim_VOX.DeathM	= hex2dec('cbc26ee0')
 mysim_VOX.DisgustF	= hex2dec('2bc26ef4')
   mysim_VOX.DisgustM	= hex2dec('4bc26f0c')
 mysim_VOX.FearF	= hex2dec('8bbc3444')
   mysim_VOX.FearM	= hex2dec('abbc345e')
 mysim_VOX.GreetF	= hex2dec('abc26f28')
   mysim_VOX.GreetM	= hex2dec('6bc26f40')
 mysim_VOX.Home_dayF	= hex2dec('6a5e7db1')
   mysim_VOX.Home_dayM	= hex2dec('ca5e7e26')
 mysim_VOX.Home_niteF	= hex2dec('ea5e7e66')
   mysim_VOX.Home_niteM	= hex2dec('aa5e7ea4')
 mysim_VOX.InterestF	= hex2dec('cbc26f51')
   mysim_VOX.InterestM	= hex2dec('4bc27018')
 mysim_VOX.JealousyF	= hex2dec('cbc2702b')
   mysim_VOX.JealousyM	= hex2dec('2bc26f6e')
 mysim_VOX.PollutionF	= hex2dec('abbc3482')
   mysim_VOX.PollutionM	= hex2dec('ebbc349f')
 mysim_VOX.SatisfiedF	= hex2dec('cbbc34d4')
   mysim_VOX.SatisfiedM	= hex2dec('0bbc34f3')
 mysim_VOX.ShockF	= hex2dec('4bc26f80')
   mysim_VOX.ShockM	= hex2dec('cbc26f95')
make_table_const(mysim_VOX )
   
   
-- The table of idle animation IDs. The offset is an additive to the base model ID currently used by My Sim.
-- For instance for My Sim on the bike (say base model id 99) and on foot (with base model id 22) the same offset (say GENERIC) would result in 
-- model ids 99+GENERIC (equals 100) or model 22+GENERIC (equals 23) used as an idle animation. 
-- game.mysim_get_idle_animation_offset(mysim), see ADV_MYSIM_DATA.LUA file, is called by the application to obtain an idle animation offset ID that is relevant to 
-- current local conditions
mysim_idle_animation_ids = {}

   mysim_idle_animation_ids.NONE = 0         -- this effectively will result in idle animation being the same one used for navigation
    mysim_idle_animation_ids.GENERIC = hex2dec('0C00')   -- represents THE neutral idle animation
    mysim_idle_animation_ids.HOPCLAP = hex2dec('0B00') 
    mysim_idle_animation_ids.WHOOP = hex2dec('0A00') 
    mysim_idle_animation_ids.CLAP = hex2dec('0900') 
    mysim_idle_animation_ids.BOOYAH = hex2dec('0800') 
    mysim_idle_animation_ids.WOOHOO = hex2dec('0700') 
    mysim_idle_animation_ids.TANTRUM = hex2dec('0600') 
    mysim_idle_animation_ids.PHOOEE = hex2dec('0500') 
    mysim_idle_animation_ids.REJECT = hex2dec('0400') 
    mysim_idle_animation_ids.NOWAY = hex2dec('0300') 
    mysim_idle_animation_ids.KISSMY = hex2dec('0200') 
    mysim_idle_animation_ids.BOOER = hex2dec('0100') 
    mysim_idle_animation_ids.CHOKE = hex2dec("1900")
    mysim_idle_animation_ids.MUGGING = hex2dec("1A00")
make_table_const(mysim_idle_animation_ids)






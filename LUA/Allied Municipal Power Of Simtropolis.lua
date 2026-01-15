--#-package:0BB35100# -- package signature

-- Written by RobertaME May 2024 --
-- Edited by Ulisse Wolf 2026 (V 1.0) --

--------- unlocker functions and variables -----------
generator_hex_id = {
   DIESEL_945_KW              = "B694726D",
   NAT_GAS_180_KW             = "AEA950C4",
   PV_PANEL_SET_25_KW         = "490FF4A1"
}
transformer_hex_id = {
   PAD_50_KVA_L               = "AD39CEF9",
   PAD_50_KVA_U               = "AD39CF2C",
   COM_1_5_MVA_1              = "2D2F5802",
   COM_1_5_MVA_2              = "ED2F5742",
   COM_1_5_MVA_3              = "ED2F5567",
   COM_1_5_MVA_4              = "6D2F54B6",
   COM_1_5_MVA_5              = "2D2F5915",
   COM_1_5_MVA_6              = "CD2F58C3",
   COM_1_5_MVA_7              = "0D318080",
   IND_3_MVA_1                = "CD30721B",
   IND_3_MVA_2                = "8D307337",
   IND_3_MVA_3                = "CD3075B4",
   IND_3_MVA_4                = "CD30783B",
   IND_3_MVA_5                = "4D30792F",
   IND_3_MVA_6                = "6D3079AF",
   IND_6_MVA_1                = "AD302940",
   IND_6_MVA_2                = "0D302A1A",
   IND_6_MVA_3                = "0D302A6A",
   IND_6_MVA_4                = "4D2F4E98",
   IND_6_MVA_5                = "4D2F51DA",
   IND_6_MVA_6                = "AD2F5322",
   IND_6_MVA_7                = "0D2F4F4B",
   IND_6_MVA_8                = "CD3098FD"
}
dist_substation_hex_id = {
   KVA_500                    = "E9FDF13B",
   MVA_01                     = "F76F8EEC",
   MVA_02                     = "970D7B33",
   MVA_03                     = "95B3A8B8",
   MVA_05                     = "A5B3AA9F",
   MVA_07                     = "F709D45E",
   MVA_10                     = "EFBE0995",
   MVA_15                     = "97860FCA",
   MVA_25                     = "47861174"
}
transmission_station_hex_id = {
   MVA_10_1                   = "64A800CD",
   MVA_10_2                   = "8D5A5227",
   MVA_10_3                   = "CD5A5243",
   MVA_20                     = "51576A9A",
   MVA_35                     = "F157688B",
   MVA_60                     = "578642C5",
   MVA_60_S                   = "D77FEB63",
   MVA_90                     = "115765A1",
   MVA_120                    = "F156F351"
}
elec_feature_hex_id = {
   TESLA_POWERPACK_1_9_MW     = "9DAD5644",
   TESLA_POWERPACK_3_7_MW     = "0DAD552F",
   TESLA_POWERPACK_9_3_MW     = "6DAD5281",
   TESLA_POWERPACK_37_MW      = "1DAC9A95",
   STEP_UP_TRANSFORMER_3_3_MW = "A90B4E29",
   INVERTER_410_KW            = "B90B4DC3"
}
power_plant_hex_id = {
   SOLAR_POWER_PLANT_370_KW   = "690A0D1A",
   SOLAR_THERMAL_PLANT_2_5_MW = "1F440000",   ---Maxis---
   WIND_TURBINE_1_MW          = "1F450000",   ---Maxis---
   GEOTHERMAL_2_MW            = "8ED3A1D4",
   GEOTHERMAL_4_MW            = "B4C17F2E",
   GEOTHERMAL_8_MW            = "3A556B6C",
   GEOTHERMAL_10_MW           = "B4B9AED9",
   FISSION_25_MW              = "1F3F0000",   ---Maxis---  
   FISSION_112_MW             = "A7F08089",
   FISSION_112_MW_S           = "D53AE881",
   FISSION_1_2_GW             = "542CA54B",
   FUSION_75_MW               = "055D65AE",   ---Maxis---
   OIL_1_8_MW                 = "956C4C30",
   OIL_4_5_MW                 = "EC56B1EB",
   OIL_15_MW                  = "1F420000",   ---Maxis---
   OIL_30_MW                  = "534E49F6",
   NAT_GAS_1_3_MW             = "7771732F",
   NAT_GAS_2_MW               = "7771746E",
   NAT_GAS_2_4_MW             = "F4A74C02",
   NAT_GAS_3_5_MW             = "F4A7512B",
   NAT_GAS_6_5_MW             = "1F430000",   ---Maxis---
   NAT_GAS_34_MW              = "6DD69839",
   WOOD_1_MW                  = "F16AC780",
   WOOD_PULP_3_MW             = "3760FD78",
   CLEAN_COAL_15_MW           = "70F4A14F",
   CLEAN_COAL_25_MW           = "F0DE51D6",
   CLEAN_COAL_35_MW           = "F96D171C",
   COAL_2_MW                  = "DFCF65CD",
   COAL_6_5_MW                = "774A9DB5",
   COAL_10_MW                 = "1F4D0000",   ---Maxis---
   COAL_28_MW                 = "F24FA617",
   CLEAN_WASTE_2_E_4_5_MW     = "14AF6FA0",
   WASTE_2_E_9_MW             = "97F38E39",   ---Maxis---
   WASTE_2_E_45_MW            = "EC6665BC"
}
amps_building_hex_id = {
   KK_MANTENANCE_LOT          = "0D580D4F",
   KK_CENTRAL_OFFICE          = "5DE732E3",
   KK_RESEARCH_FACILITY       = "9DED3678",
   KK_CORPORATE_HQ            = "AD6EBF67",
   SM2_MANTENANCE_LOT         = "1DD2D74D",
   SM2_CENTRAL_OFFICE         = "DDDCF85C",
   SM2_RESEARCH_FACILITY      = "6DE128C6",
   SM2_CORPORATE_HQ           = "xxxxxxxx"
}
kva_rating = {
-- 000 through 01F = Generators -- Generators do not have kVA ratings as they output Houshold voltage and thus their power can be used directly without transformers or substations.
   ID_BB350020 = 25,      --Transformers--
   ID_BB350021 = 50,
   ID_BB350022 = 250,
   ID_BB350023 = 500,
   ID_BB350024 = 1500,
   ID_BB350025 = 3000,
   ID_BB350026 = 6000,
   ID_BB350027 = 0,
   ID_BB350028 = 0,
   ID_BB350029 = 0,
   ID_BB35002A = 0,
   ID_BB35002B = 0,
   ID_BB35002C = 0,
   ID_BB35002D = 0,
   ID_BB35002E = 0,
   ID_BB35002F = 0,
   ID_BB350030 = 500,     --Distribution Substations--
   ID_BB350031 = 1000,
   ID_BB350032 = 2000,
   ID_BB350033 = 3000,
   ID_BB350034 = 5000,
   ID_BB350035 = 7000,
   ID_BB350036 = 10000,
   ID_BB350037 = 15000,
   ID_BB350038 = 25000,
   ID_BB350039 = 0,
   ID_BB35003A = 0,
   ID_BB35003B = 0,
   ID_BB35003C = 0,
   ID_BB35003D = 0,
   ID_BB35003E = 0,
   ID_BB35003F = 0,
   ID_BB350040 = 0,       --Battery Electrical Features--
   ID_BB350041 = 0,
   ID_BB350042 = 0,
   ID_BB350043 = 0,
   ID_BB350044 = 0,
   ID_BB350045 = 0,
   ID_BB350046 = 0,
   ID_BB350047 = 0,
   ID_BB350048 = 0,
   ID_BB350049 = 0,
   ID_BB35004A = 0,
   ID_BB35004B = 0,
   ID_BB35004C = 0,
   ID_BB35004D = 0,
   ID_BB35004E = 0,
   ID_BB35004F = 0,
   ID_BB350050 = 0,       --Large Solar Plants-- None
   ID_BB350051 = 0,
   ID_BB350052 = 0,
   ID_BB350053 = 0,
   ID_BB350054 = 0,
   ID_BB350055 = 0,
   ID_BB350056 = 0,
   ID_BB350057 = 0,
   ID_BB350058 = 0,
   ID_BB350059 = 0,
   ID_BB35005A = 0,
   ID_BB35005B = 0,
   ID_BB35005C = 0,
   ID_BB35005D = 0,
   ID_BB35005E = 0,
   ID_BB35005F = 0,
   ID_BB350060 = 0,        --Large Wind Plants-- None
   ID_BB350061 = 0,
   ID_BB350062 = 0,
   ID_BB350063 = 0,
   ID_BB350064 = 0,
   ID_BB350065 = 0,
   ID_BB350066 = 0,
   ID_BB350067 = 0,
   ID_BB350068 = 0,
   ID_BB350069 = 0,
   ID_BB35006A = 0,
   ID_BB35006B = 0,
   ID_BB35006C = 0,
   ID_BB35006D = 0,
   ID_BB35006E = 0,
   ID_BB35006F = 0,
   ID_BB350070 = 10000,   --Large Geothermal Plants--
   ID_BB350071 = 12500,
   ID_BB350072 = 0,
   ID_BB350073 = 0,
   ID_BB350074 = 0,
   ID_BB350075 = 0,
   ID_BB350076 = 0,
   ID_BB350077 = 0,
   ID_BB350078 = 31250,   --Large Fission Plants--
   ID_BB350079 = 140000,
   ID_BB35007A = 140000,
   ID_BB35007B = 0,
   ID_BB35007C = 0,
   ID_BB35007D = 0,
   ID_BB35007E = 0,
   ID_BB35007F = 0,
   ID_BB350080 = 1500000, --Large Load Following Fission Plants--
   ID_BB350081 = 0,
   ID_BB350082 = 0,
   ID_BB350083 = 0,
   ID_BB350084 = 0,
   ID_BB350085 = 0,
   ID_BB350086 = 0,
   ID_BB350087 = 0,
   ID_BB350088 = 93750,   --Large Fusion Plants--
   ID_BB350089 = 0,
   ID_BB35008A = 0,
   ID_BB35008B = 0,
   ID_BB35008C = 0,
   ID_BB35008D = 0,
   ID_BB35008E = 0,
   ID_BB35008F = 0,
   ID_BB350090 = 18750,   --Large Oil Plants--
   ID_BB350091 = 37500,
   ID_BB350092 = 0,
   ID_BB350093 = 0,
   ID_BB350094 = 0,
   ID_BB350095 = 0,
   ID_BB350096 = 0,
   ID_BB350097 = 0,
   ID_BB350098 = 0,
   ID_BB350099 = 0,
   ID_BB35009A = 0,
   ID_BB35009B = 0,
   ID_BB35009C = 0,
   ID_BB35009D = 0,
   ID_BB35009E = 0,
   ID_BB35009F = 0,
   ID_BB3500A0 = 42500,       --Large Natural Gas Plants--
   ID_BB3500A1 = 0,
   ID_BB3500A2 = 0,
   ID_BB3500A3 = 0,
   ID_BB3500A4 = 0,
   ID_BB3500A5 = 0,
   ID_BB3500A6 = 0,
   ID_BB3500A7 = 0,
   ID_BB3500A8 = 0,
   ID_BB3500A9 = 0,
   ID_BB3500AA = 0,
   ID_BB3500AB = 0,
   ID_BB3500AC = 0,
   ID_BB3500AD = 0,
   ID_BB3500AE = 0,
   ID_BB3500AF = 0,
   ID_BB3500B0 = 0,       --Large Wood Plants-- None
   ID_BB3500B1 = 0,
   ID_BB3500B2 = 0,
   ID_BB3500B3 = 0,
   ID_BB3500B4 = 0,
   ID_BB3500B5 = 0,
   ID_BB3500B6 = 0,
   ID_BB3500B7 = 0,
   ID_BB3500B8 = 18750,   --Large Clean Coal Plants--
   ID_BB3500B9 = 31250,
   ID_BB3500BA = 43750,
   ID_BB3500BB = 0,
   ID_BB3500BC = 0,
   ID_BB3500BD = 0,
   ID_BB3500BE = 0,
   ID_BB3500BF = 0,
   ID_BB3500C0 = 12500,   --Large Coal Plants--
   ID_BB3500C1 = 35000,
   ID_BB3500C2 = 0,
   ID_BB3500C3 = 0,
   ID_BB3500C4 = 0,
   ID_BB3500C5 = 0,
   ID_BB3500C6 = 0,
   ID_BB3500C7 = 0,
   ID_BB3500C8 = 0,
   ID_BB3500C9 = 0,
   ID_BB3500CA = 0,
   ID_BB3500CB = 0,
   ID_BB3500CC = 0,
   ID_BB3500CD = 0,
   ID_BB3500CE = 0,
   ID_BB3500CF = 0,
   ID_BB3500D0 = 11250,   --Large Waste Plants--
   ID_BB3500D1 = 56250,
   ID_BB3500D2 = 0,
   ID_BB3500D3 = 0,
   ID_BB3500D4 = 0,
   ID_BB3500D5 = 0,
   ID_BB3500D6 = 0,
   ID_BB3500D7 = 0,
   ID_BB3500D8 = 0,
   ID_BB3500D9 = 0,
   ID_BB3500DA = 0,
   ID_BB3500DB = 0,
   ID_BB3500DC = 0,
   ID_BB3500DD = 0,
   ID_BB3500DE = 0,
   ID_BB3500DF = 0,
   ID_BB3500E0 = 0,       --Large Hydroelectric/Tidal Intermediate Plants-- None
   ID_BB3500E1 = 0,
   ID_BB3500E2 = 0,
   ID_BB3500E3 = 0,
   ID_BB3500E4 = 0,
   ID_BB3500E5 = 0,
   ID_BB3500E6 = 0,
   ID_BB3500E7 = 0,
   ID_BB3500E8 = 0,
   ID_BB3500E9 = 0,
   ID_BB3500EA = 0,
   ID_BB3500EB = 0,
   ID_BB3500EC = 0,
   ID_BB3500ED = 0,
   ID_BB3500EE = 0,
   ID_BB3500EF = 0,
   ID_BB3500F0 = 0,       --Large Other Intermediate Plants-- None
   ID_BB3500F1 = 0,
   ID_BB3500F2 = 0,
   ID_BB3500F3 = 0,
   ID_BB3500F4 = 0,
   ID_BB3500F5 = 0,       --Large Other Base Plants-- None
   ID_BB3500F6 = 0,
   ID_BB3500F7 = 0,
   ID_BB3500F8 = 0,
   ID_BB3500F9 = 0,
   ID_BB3500FA = 0,       --Large Other Peak Plants-- None
   ID_BB3500FB = 0,
   ID_BB3500FC = 0,
   ID_BB3500FD = 0,
   ID_BB3500FE = 0,
-- 0FF through 11F = Generators -- Generators do not have kVA ratings as they output Houshold voltage and thus their power can be used directly without transformers or substations.
   ID_BB350120 = 10000,   --Transmission Substations--
   ID_BB350121 = 20000,
   ID_BB350122 = 35000,
   ID_BB350123 = 60000,
   ID_BB350124 = 60000,
   ID_BB350125 = 90000,
   ID_BB350126 = 120000,
   ID_BB350127 = 0,
   ID_BB350128 = 0,
   ID_BB350129 = 0,
   ID_BB35012A = 0,
   ID_BB35012B = 0,
   ID_BB35012C = 0,
   ID_BB35012D = 0,
   ID_BB35012E = 0,
   ID_BB35012F = 0,
   ID_BB350130 = 0,       --Distribution Substations-- None
   ID_BB350131 = 0,
   ID_BB350132 = 0,
   ID_BB350133 = 0,
   ID_BB350134 = 0,
   ID_BB350135 = 0,
   ID_BB350136 = 0,
   ID_BB350137 = 0,
   ID_BB350138 = 0,
   ID_BB350139 = 0,
   ID_BB35013A = 0,
   ID_BB35013B = 0,
   ID_BB35013C = 0,
   ID_BB35013D = 0,
   ID_BB35013E = 0,
   ID_BB35013F = 0,
   ID_BB350140 = 0,       --Misc. Electrical Features--
   ID_BB350141 = 0,
   ID_BB350142 = 0,
   ID_BB350143 = 0,
   ID_BB350144 = 0,
   ID_BB350145 = 0,
   ID_BB350146 = 0,
   ID_BB350147 = 0,
   ID_BB350148 = 0,
   ID_BB350149 = 0,
   ID_BB35014A = 0,
   ID_BB35014B = 0,
   ID_BB35014C = 0,
   ID_BB35014D = 0,
   ID_BB35014E = 4125,    -- Special case - The rating is for the 3.3 MW Step-up transformer, not the individual panels that have their own set limitations
   ID_BB35014F = 0,
   ID_BB350150 = 463,     --Small Solar Plants--
   ID_BB350151 = 3125,
   ID_BB350152 = 0,
   ID_BB350153 = 0,
   ID_BB350154 = 0,
   ID_BB350155 = 0,
   ID_BB350156 = 0,
   ID_BB350157 = 0,
   ID_BB350158 = 0,
   ID_BB350159 = 0,
   ID_BB35015A = 0,
   ID_BB35015B = 0,
   ID_BB35015C = 0,
   ID_BB35015D = 0,
   ID_BB35015E = 0,
   ID_BB35015F = 0,
   ID_BB350160 = 1250,    -- Small Wind Plants--
   ID_BB350161 = 0,
   ID_BB350162 = 0,
   ID_BB350163 = 0,
   ID_BB350164 = 0,
   ID_BB350165 = 0,
   ID_BB350166 = 0,
   ID_BB350167 = 0,
   ID_BB350168 = 0,
   ID_BB350169 = 0,
   ID_BB35016A = 0,
   ID_BB35016B = 0,
   ID_BB35016C = 0,
   ID_BB35016D = 0,
   ID_BB35016E = 0,
   ID_BB35016F = 0,
   ID_BB350170 = 2500,    --Small Geothermal Plants--
   ID_BB350171 = 5000,
   ID_BB350172 = 0,
   ID_BB350173 = 0,
   ID_BB350174 = 0,
   ID_BB350175 = 0,
   ID_BB350176 = 0,
   ID_BB350177 = 0,
   ID_BB350178 = 0,       --Small Fission Plants-- None
   ID_BB350179 = 0,
   ID_BB35017A = 0,
   ID_BB35017B = 0,
   ID_BB35017C = 0,
   ID_BB35017D = 0,
   ID_BB35017E = 0,
   ID_BB35017F = 0,
   ID_BB350180 = 0,       --Small Load Following Fission Plants-- None
   ID_BB350181 = 0,
   ID_BB350182 = 0,
   ID_BB350183 = 0,
   ID_BB350184 = 0,
   ID_BB350185 = 0,
   ID_BB350186 = 0,
   ID_BB350187 = 0,
   ID_BB350188 = 0,       --Small Fusion Plants-- None
   ID_BB350189 = 0,
   ID_BB35018A = 0,
   ID_BB35018B = 0,
   ID_BB35018C = 0,
   ID_BB35018D = 0,
   ID_BB35018E = 0,
   ID_BB35018F = 0,
   ID_BB350190 = 2250,    --Small Oil Plants--
   ID_BB350191 = 5625,
   ID_BB350192 = 0,
   ID_BB350193 = 0,
   ID_BB350194 = 0,
   ID_BB350195 = 0,
   ID_BB350196 = 0,
   ID_BB350197 = 0,
   ID_BB350198 = 0,
   ID_BB350199 = 0,
   ID_BB35019A = 0,
   ID_BB35019B = 0,
   ID_BB35019C = 0,
   ID_BB35019D = 0,
   ID_BB35019E = 0,
   ID_BB35019F = 0,
   ID_BB3501A0 = 1625,    --Small Natural Gas Plants--
   ID_BB3501A1 = 2500,
   ID_BB3501A2 = 3000,
   ID_BB3501A3 = 4375,
   ID_BB3501A4 = 8125,
   ID_BB3501A5 = 0,
   ID_BB3501A6 = 0,
   ID_BB3501A7 = 0,
   ID_BB3501A8 = 0,
   ID_BB3501A9 = 0,
   ID_BB3501AA = 0,
   ID_BB3501AB = 0,
   ID_BB3501AC = 0,
   ID_BB3501AD = 0,
   ID_BB3501AE = 0,
   ID_BB3501AF = 0,
   ID_BB3501B0 = 1250,    --Small Wood Plants--
   ID_BB3501B1 = 3750,
   ID_BB3501B2 = 0,
   ID_BB3501B3 = 0,
   ID_BB3501B4 = 0,
   ID_BB3501B5 = 0,
   ID_BB3501B6 = 0,
   ID_BB3501B7 = 0,
   ID_BB3501B8 = 0,       --Small Clean Coal Plants-- None
   ID_BB3501B9 = 0,
   ID_BB3501BA = 0,
   ID_BB3501BB = 0,
   ID_BB3501BC = 0,
   ID_BB3501BD = 0,
   ID_BB3501BE = 0,
   ID_BB3501BF = 0,
   ID_BB3501C0 = 2500,    --Small Coal Plants--
   ID_BB3501C1 = 8125,
   ID_BB3501C2 = 0,
   ID_BB3501C3 = 0,
   ID_BB3501C4 = 0,
   ID_BB3501C5 = 0,
   ID_BB3501C6 = 0,
   ID_BB3501C7 = 0,
   ID_BB3501C8 = 0,
   ID_BB3501C9 = 0,
   ID_BB3501CA = 0,
   ID_BB3501CB = 0,
   ID_BB3501CC = 0,
   ID_BB3501CD = 0,
   ID_BB3501CE = 0,
   ID_BB3501CF = 0,
   ID_BB3501D0 = 5625,    --Small Waste Plants--
   ID_BB3501D1 = 0,
   ID_BB3501D2 = 0,
   ID_BB3501D3 = 0,
   ID_BB3501D4 = 0,
   ID_BB3501D5 = 0,
   ID_BB3501D6 = 0,
   ID_BB3501D7 = 0,
   ID_BB3501D8 = 0,
   ID_BB3501D9 = 0,
   ID_BB3501DA = 0,
   ID_BB3501DB = 0,
   ID_BB3501DC = 0,
   ID_BB3501DD = 0,
   ID_BB3501DE = 0,
   ID_BB3501DF = 0,
   ID_BB3501E0 = 0,       --Small Hydroelectric/Tidal Plants-- None
   ID_BB3501E1 = 0,
   ID_BB3501E2 = 0,
   ID_BB3501E3 = 0,
   ID_BB3501E4 = 0,
   ID_BB3501E5 = 0,
   ID_BB3501E6 = 0,
   ID_BB3501E7 = 0,
   ID_BB3501E8 = 0,
   ID_BB3501E9 = 0,
   ID_BB3501EA = 0,
   ID_BB3501EB = 0,
   ID_BB3501EC = 0,
   ID_BB3501ED = 0,
   ID_BB3501EE = 0,
   ID_BB3501EF = 0,
   ID_BB3501F0 = 0,       --Small Other Intermediate Plants-- None
   ID_BB3501F1 = 0,
   ID_BB3501F2 = 0,
   ID_BB3501F3 = 0,
   ID_BB3501F4 = 0,
   ID_BB3501F5 = 0,       --Small Other Base Plants-- None
   ID_BB3501F6 = 0,
   ID_BB3501F7 = 0,
   ID_BB3501F8 = 0,
   ID_BB3501F9 = 0,
   ID_BB3501FA = 0,       --Small Other Peak Plants-- None
   ID_BB3501FB = 0,
   ID_BB3501FC = 0,
   ID_BB3501FD = 0,
   ID_BB3501FE = 0
-- 1FF = Generator -- Generators do not have kVA ratings as they output Houshold voltage and thus their power can be used directly without transformers or substations.
}
mwh_rating = {
   ID_BB350000 = 20,     --Diesel Peak Generators--
   ID_BB350001 = 50,
   ID_BB350002 = 100,
   ID_BB350003 = 400,
   ID_BB350004 = 0,
   ID_BB350005 = 0,
   ID_BB350006 = 0,
   ID_BB350007 = 0,
   ID_BB350008 = 0,
   ID_BB350009 = 0,
   ID_BB35000A = 0,
   ID_BB35000B = 0,
   ID_BB35000C = 0,
   ID_BB35000D = 0,
   ID_BB35000E = 0,
   ID_BB35000F = 0,
   ID_BB350010 = 5,      --Solar Intermediate Generators--
   ID_BB350011 = 10,
   ID_BB350012 = 0,
   ID_BB350013 = 0,
   ID_BB350014 = 0,
   ID_BB350015 = 0,
   ID_BB350016 = 0,
   ID_BB350017 = 0,
   ID_BB350018 = 0,
   ID_BB350019 = 0,
   ID_BB35001A = 0,
   ID_BB35001B = 0,
   ID_BB35001C = 0,
   ID_BB35001D = 0,
   ID_BB35001E = 0,
   ID_BB35001F = 0,
-- 020-03F = Transformers and Substations which do not have any MWh rating
   ID_BB350040 = 15,     --Electrical Features-- 1.856 MWh capacity x 8.2125 cycles per month
   ID_BB350041 = 30,                  -- 3.712 MWh capacity x 8.2125 cycles per month
   ID_BB350042 = 76,                  -- 9.280 MWh capacity x 8.2125 cycles per month
   ID_BB350043 = 300,                 -- 37.12 MWh capacity x 8.2125 cycles per month; less 5 MWh for hot-swapability
   ID_BB350044 = 0,
   ID_BB350045 = 0,
   ID_BB350046 = 0,
   ID_BB350047 = 0,
   ID_BB350048 = 0,
   ID_BB350049 = 0,
   ID_BB35004A = 0,
   ID_BB35004B = 0,
   ID_BB35004C = 0,
   ID_BB35004D = 0,
   ID_BB35004E = 0,
   ID_BB35004F = 0,
   ID_BB350050 = 0,      --Large Intermediate Solar Plants-- None
   ID_BB350051 = 0,
   ID_BB350052 = 0,
   ID_BB350053 = 0,
   ID_BB350054 = 0,
   ID_BB350055 = 0,
   ID_BB350056 = 0,
   ID_BB350057 = 0,
   ID_BB350058 = 0,
   ID_BB350059 = 0,
   ID_BB35005A = 0,
   ID_BB35005B = 0,
   ID_BB35005C = 0,
   ID_BB35005D = 0,
   ID_BB35005E = 0,
   ID_BB35005F = 0,
   ID_BB350060 = 0,      --Large Intermediate Wind Plants-- None
   ID_BB350061 = 0,
   ID_BB350062 = 0,
   ID_BB350063 = 0,
   ID_BB350064 = 0,
   ID_BB350065 = 0,
   ID_BB350066 = 0,
   ID_BB350067 = 0,
   ID_BB350068 = 0,
   ID_BB350069 = 0,
   ID_BB35006A = 0,
   ID_BB35006B = 0,
   ID_BB35006C = 0,
   ID_BB35006D = 0,
   ID_BB35006E = 0,
   ID_BB35006F = 0,
   ID_BB350070 = 4600,   --Large Base Geothermal Plants--
   ID_BB350071 = 6000,
   ID_BB350072 = 0,
   ID_BB350073 = 0,
   ID_BB350074 = 0,
   ID_BB350075 = 0,
   ID_BB350076 = 0,
   ID_BB350077 = 0,
   ID_BB350078 = 16000,  --Large Base Fission Plants--
   ID_BB350079 = 75000,
   ID_BB35007A = 75000,
   ID_BB35007B = 0,
   ID_BB35007C = 0,
   ID_BB35007D = 0,
   ID_BB35007E = 0,
   ID_BB35007F = 0,
   ID_BB350080 = 800000, --Large Peak Load Following Fission Plants--
   ID_BB350081 = 0,
   ID_BB350082 = 0,
   ID_BB350083 = 0,
   ID_BB350084 = 0,
   ID_BB350085 = 0,
   ID_BB350086 = 0,
   ID_BB350087 = 0,
   ID_BB350088 = 50000,  --Large Peak Fusion Plants--
   ID_BB350089 = 0,
   ID_BB35008A = 0,
   ID_BB35008B = 0,
   ID_BB35008C = 0,
   ID_BB35008D = 0,
   ID_BB35008E = 0,
   ID_BB35008F = 0,
   ID_BB350090 = 7000,   --Large Peak Oil Plants--
   ID_BB350091 = 13000,
   ID_BB350092 = 0,
   ID_BB350093 = 0,
   ID_BB350094 = 0,
   ID_BB350095 = 0,
   ID_BB350096 = 0,
   ID_BB350097 = 0,
   ID_BB350098 = 0,
   ID_BB350099 = 0,
   ID_BB35009A = 0,
   ID_BB35009B = 0,
   ID_BB35009C = 0,
   ID_BB35009D = 0,
   ID_BB35009E = 0,
   ID_BB35009F = 0,
   ID_BB3500A0 = 15000,      --Large Peak Natural Gas Plants--
   ID_BB3500A1 = 0,
   ID_BB3500A2 = 0,
   ID_BB3500A3 = 0,
   ID_BB3500A4 = 0,
   ID_BB3500A5 = 0,
   ID_BB3500A6 = 0,
   ID_BB3500A7 = 0,
   ID_BB3500A8 = 0,
   ID_BB3500A9 = 0,
   ID_BB3500AA = 0,
   ID_BB3500AB = 0,
   ID_BB3500AC = 0,
   ID_BB3500AD = 0,
   ID_BB3500AE = 0,
   ID_BB3500AF = 0,
   ID_BB3500B0 = 0,      --Large Base Wood Plants-- None
   ID_BB3500B1 = 0,
   ID_BB3500B2 = 0,
   ID_BB3500B3 = 0,
   ID_BB3500B4 = 0,
   ID_BB3500B5 = 0,
   ID_BB3500B6 = 0,
   ID_BB3500B7 = 0,
   ID_BB3500B8 = 8800,   --Large Base Clean Coal Plants--
   ID_BB3500B9 = 15000,
   ID_BB3500BA = 21000,
   ID_BB3500BB = 0,
   ID_BB3500BC = 0,
   ID_BB3500BD = 0,
   ID_BB3500BE = 0,
   ID_BB3500BF = 0,
   ID_BB3500C0 = 6000,   --Large Base Coal Plants--
   ID_BB3500C1 = 17000,
   ID_BB3500C2 = 0,
   ID_BB3500C3 = 0,
   ID_BB3500C4 = 0,
   ID_BB3500C5 = 0,
   ID_BB3500C6 = 0,
   ID_BB3500C7 = 0,
   ID_BB3500C8 = 0,
   ID_BB3500C9 = 0,
   ID_BB3500CA = 0,
   ID_BB3500CB = 0,
   ID_BB3500CC = 0,
   ID_BB3500CD = 0,
   ID_BB3500CE = 0,
   ID_BB3500CF = 0,
   ID_BB3500D0 = 0,      --Large Base Waste Plants-- Special Case for W2E Plants; this value is adjusted according to trash converted to energy; Do not change these values from 0
   ID_BB3500D1 = 0,
   ID_BB3500D2 = 0,
   ID_BB3500D3 = 0,
   ID_BB3500D4 = 0,
   ID_BB3500D5 = 0,
   ID_BB3500D6 = 0,
   ID_BB3500D7 = 0,
   ID_BB3500D8 = 0,
   ID_BB3500D9 = 0,
   ID_BB3500DA = 0,
   ID_BB3500DB = 0,
   ID_BB3500DC = 0,
   ID_BB3500DD = 0,
   ID_BB3500DE = 0,
   ID_BB3500DF = 0,
   ID_BB3500D0_A = 5000, --Large Base Waste Plants-- None -- Special Case for W2E Plants; this value is their Maximum power output. The regular veriable is adjusted according to trash converted to energy
   ID_BB3500D1_A = 25000,
   ID_BB3500D2_A = 0,
   ID_BB3500D3_A = 0,
   ID_BB3500D4_A = 0,
   ID_BB3500D5_A = 0,
   ID_BB3500D6_A = 0,
   ID_BB3500D7_A = 0,
   ID_BB3500D8_A = 0,
   ID_BB3500D9_A = 0,
   ID_BB3500DA_A = 0,
   ID_BB3500DB_A = 0,
   ID_BB3500DC_A = 0,
   ID_BB3500DD_A = 0,
   ID_BB3500DE_A = 0,
   ID_BB3500DF_A = 0,
   ID_BB3500E0 = 0,      --Large Base Hydroelectric/Tidal Plants-- None
   ID_BB3500E1 = 0,
   ID_BB3500E2 = 0,
   ID_BB3500E3 = 0,
   ID_BB3500E4 = 0,
   ID_BB3500E5 = 0,
   ID_BB3500E6 = 0,
   ID_BB3500E7 = 0,
   ID_BB3500E8 = 0,
   ID_BB3500E9 = 0,
   ID_BB3500EA = 0,
   ID_BB3500EB = 0,
   ID_BB3500EC = 0,
   ID_BB3500ED = 0,
   ID_BB3500EE = 0,
   ID_BB3500EF = 0,
   ID_BB3500F0 = 0,      --Other Large Intermediate Plants-- None
   ID_BB3500F1 = 0,
   ID_BB3500F2 = 0,
   ID_BB3500F3 = 0,
   ID_BB3500F4 = 0,
   ID_BB3500F5 = 0,      --Other Large Base Plants-- None
   ID_BB3500F6 = 0,
   ID_BB3500F7 = 0,
   ID_BB3500F8 = 0,
   ID_BB3500F9 = 0,
   ID_BB3500FA = 0,      --Other Large Peak Plants-- None
   ID_BB3500FB = 0,
   ID_BB3500FC = 0,
   ID_BB3500FD = 0,
   ID_BB3500FE = 0,
   ID_BB3500FF = 0,      --Base Generator #1-- None
   ID_BB350100 = 75,     --Natural Gas Peak Generators--
   ID_BB350101 = 0,
   ID_BB350102 = 0,
   ID_BB350103 = 0,
   ID_BB350104 = 0,
   ID_BB350105 = 0,
   ID_BB350106 = 0,
   ID_BB350107 = 0,
   ID_BB350108 = 0,
   ID_BB350109 = 0,
   ID_BB35010A = 0,
   ID_BB35010B = 0,
   ID_BB35010C = 0,
   ID_BB35010D = 0,
   ID_BB35010E = 0,
   ID_BB35010F = 0,
   ID_BB350110 = 1,      --Wind Intermediate Generators--
   ID_BB350111 = 0,
   ID_BB350112 = 0,
   ID_BB350113 = 0,
   ID_BB350114 = 0,
   ID_BB350115 = 0,
   ID_BB350116 = 0,
   ID_BB350117 = 0,
   ID_BB350118 = 0,
   ID_BB350119 = 0,
   ID_BB35011A = 0,
   ID_BB35011B = 0,
   ID_BB35011C = 0,
   ID_BB35011D = 0,
   ID_BB35011E = 0,
   ID_BB35011F = 0,
-- 120-13F = Transmission Stations and Substations which do not have any MWh rating
   ID_BB350140 = 0,      --Misc. Electrical Features--
   ID_BB350141 = 0,
   ID_BB350142 = 0,
   ID_BB350143 = 0,
   ID_BB350144 = 0,
   ID_BB350145 = 0,
   ID_BB350146 = 0,
   ID_BB350147 = 0,
   ID_BB350148 = 0,
   ID_BB350149 = 0,
   ID_BB35014A = 0,
   ID_BB35014B = 0,
   ID_BB35014C = 0,
   ID_BB35014D = 0,
   ID_BB35014E = 0,
   ID_BB35014F = 0,
   ID_BB350150 = 73,     --Small Intermediate Solar Plants--
   ID_BB350151 = 500,
   ID_BB350152 = 0,
   ID_BB350153 = 0,
   ID_BB350154 = 0,
   ID_BB350155 = 0,
   ID_BB350156 = 0,
   ID_BB350157 = 0,
   ID_BB350158 = 0,
   ID_BB350159 = 0,
   ID_BB35015A = 0,
   ID_BB35015B = 0,
   ID_BB35015C = 0,
   ID_BB35015D = 0,
   ID_BB35015E = 0,
   ID_BB35015F = 0,
   ID_BB350160 = 200,    --Small Intermediate Wind Plants--
   ID_BB350161 = 0,
   ID_BB350162 = 0,
   ID_BB350163 = 0,
   ID_BB350164 = 0,
   ID_BB350165 = 0,
   ID_BB350166 = 0,
   ID_BB350167 = 0,
   ID_BB350168 = 0,
   ID_BB350169 = 0,
   ID_BB35016A = 0,
   ID_BB35016B = 0,
   ID_BB35016C = 0,
   ID_BB35016D = 0,
   ID_BB35016E = 0,
   ID_BB35016F = 0,
   ID_BB350170 = 1000,   --Small Base Geothermal Plants--
   ID_BB350171 = 2200,
   ID_BB350172 = 0,
   ID_BB350173 = 0,
   ID_BB350174 = 0,
   ID_BB350175 = 0,
   ID_BB350176 = 0,
   ID_BB350177 = 0,
   ID_BB350178 = 0,      --Small Base Fission Plants-- None
   ID_BB350179 = 0,
   ID_BB35017A = 0,
   ID_BB35017B = 0,
   ID_BB35017C = 0,
   ID_BB35017D = 0,
   ID_BB35017E = 0,
   ID_BB35017F = 0,
   ID_BB350180 = 0,      --Small Peak Load Following Fission Plants-- None
   ID_BB350181 = 0,
   ID_BB350182 = 0,
   ID_BB350183 = 0,
   ID_BB350184 = 0,
   ID_BB350185 = 0,
   ID_BB350186 = 0,
   ID_BB350187 = 0,
   ID_BB350188 = 0,      --Small Peak Fusion Plants-- None
   ID_BB350189 = 0,
   ID_BB35018A = 0,
   ID_BB35018B = 0,
   ID_BB35018C = 0,
   ID_BB35018D = 0,
   ID_BB35018E = 0,
   ID_BB35018F = 0,
   ID_BB350190 = 750,    --Small Peak Oil Plants--
   ID_BB350191 = 2000,
   ID_BB350192 = 0,
   ID_BB350193 = 0,
   ID_BB350194 = 0,
   ID_BB350195 = 0,
   ID_BB350196 = 0,
   ID_BB350197 = 0,
   ID_BB350198 = 0,
   ID_BB350199 = 0,
   ID_BB35019A = 0,
   ID_BB35019B = 0,
   ID_BB35019C = 0,
   ID_BB35019D = 0,
   ID_BB35019E = 0,
   ID_BB35019F = 0,
   ID_BB3501A0 = 550,    --Small Peak Natural Gas Plants--
   ID_BB3501A1 = 850,
   ID_BB3501A2 = 1050,
   ID_BB3501A3 = 1600,
   ID_BB3501A4 = 3000,
   ID_BB3501A5 = 0,
   ID_BB3501A6 = 0,
   ID_BB3501A7 = 0,
   ID_BB3501A8 = 0,
   ID_BB3501A9 = 0,
   ID_BB3501AA = 0,
   ID_BB3501AB = 0,
   ID_BB3501AC = 0,
   ID_BB3501AD = 0,
   ID_BB3501AE = 0,
   ID_BB3501AF = 0,
   ID_BB3501B0 = 650,    --Small Base Wood Plants--
   ID_BB3501B1 = 1700,
   ID_BB3501B2 = 0,
   ID_BB3501B3 = 0,
   ID_BB3501B4 = 0,
   ID_BB3501B5 = 0,
   ID_BB3501B6 = 0,
   ID_BB3501B7 = 0,
   ID_BB3501B8 = 0,      --Small Base Clean Coal Plants-- None
   ID_BB3501B9 = 0,
   ID_BB3501BA = 0,
   ID_BB3501BB = 0,
   ID_BB3501BC = 0,
   ID_BB3501BD = 0,
   ID_BB3501BE = 0,
   ID_BB3501BF = 0,
   ID_BB3501C0 = 1250,   --Small Base Coal Plants--
   ID_BB3501C1 = 4000,
   ID_BB3501C2 = 0,
   ID_BB3501C3 = 0,
   ID_BB3501C4 = 0,
   ID_BB3501C5 = 0,
   ID_BB3501C6 = 0,
   ID_BB3501C7 = 0,
   ID_BB3501C8 = 0,
   ID_BB3501C9 = 0,
   ID_BB3501CA = 0,
   ID_BB3501CB = 0,
   ID_BB3501CC = 0,
   ID_BB3501CD = 0,
   ID_BB3501CE = 0,
   ID_BB3501CF = 0,
   ID_BB3501D0 = 0,      --Small Base Waste Plants-- Special Case for W2E Plants; this value is adjusted according to trash converted to energy; Do not change these values from 0
   ID_BB3501D1 = 0,
   ID_BB3501D2 = 0,
   ID_BB3501D3 = 0,
   ID_BB3501D4 = 0,
   ID_BB3501D5 = 0,
   ID_BB3501D6 = 0,
   ID_BB3501D7 = 0,
   ID_BB3501D8 = 0,
   ID_BB3501D9 = 0,
   ID_BB3501DA = 0,
   ID_BB3501DB = 0,
   ID_BB3501DC = 0,
   ID_BB3501DD = 0,
   ID_BB3501DE = 0,
   ID_BB3501DF = 0,
   ID_BB3501D0_A = 2500, --Small Base Waste Plants-- Special Case for W2E Plants; this value is their Maximum power output. The regular veriable is adjusted according to trash converted to energy
   ID_BB3501D1_A = 0,
   ID_BB3501D2_A = 0,
   ID_BB3501D3_A = 0,
   ID_BB3501D4_A = 0,
   ID_BB3501D5_A = 0,
   ID_BB3501D6_A = 0,
   ID_BB3501D7_A = 0,
   ID_BB3501D8_A = 0,
   ID_BB3501D9_A = 0,
   ID_BB3501DA_A = 0,
   ID_BB3501DB_A = 0,
   ID_BB3501DC_A = 0,
   ID_BB3501DD_A = 0,
   ID_BB3501DE_A = 0,
   ID_BB3501DF_A = 0,
   ID_BB3501E0 = 0,      --Small Base Hydroelectric/Tidal Plants-- None
   ID_BB3501E1 = 0,
   ID_BB3501E2 = 0,
   ID_BB3501E3 = 0,
   ID_BB3501E4 = 0,
   ID_BB3501E5 = 0,
   ID_BB3501E6 = 0,
   ID_BB3501E7 = 0,
   ID_BB3501E8 = 0,
   ID_BB3501E9 = 0,
   ID_BB3501EA = 0,
   ID_BB3501EB = 0,
   ID_BB3501EC = 0,
   ID_BB3501ED = 0,
   ID_BB3501EE = 0,
   ID_BB3501EF = 0,
   ID_BB3501F0 = 0,      --Other Small Intermediate Plants-- None
   ID_BB3501F1 = 0,
   ID_BB3501F2 = 0,
   ID_BB3501F3 = 0,
   ID_BB3501F4 = 0,
   ID_BB3501F5 = 0,      --Other Small Base Plants-- None
   ID_BB3501F6 = 0,
   ID_BB3501F7 = 0,
   ID_BB3501F8 = 0,
   ID_BB3501F9 = 0,
   ID_BB3501FA = 0,      --Other Small Peak Plants-- None
   ID_BB3501FB = 0,
   ID_BB3501FC = 0,
   ID_BB3501FD = 0,
   ID_BB3501FE = 0,
   ID_BB3501FF = 0       --Base Generator #2-- None
}
power_storage_stacks ={
   ID_BB350040 = 8,
   ID_BB350041 = 16,
   ID_BB350042 = 40,
   ID_BB350043 = 160,
   ID_BB350044 = 0,
   ID_BB350045 = 0,
   ID_BB350046 = 0,
   ID_BB350047 = 0,
   ID_BB350048 = 0,
   ID_BB350049 = 0,
   ID_BB35004A = 0,
   ID_BB35004B = 0,
   ID_BB35004C = 0,
   ID_BB35004D = 0,
   ID_BB35004E = 0,
   ID_BB35004F = 0
}
amps_building_costs_monthly ={
   ID_BB350000 = 4,      --Diesel Peak Generators--
   ID_BB350001 = 9,
   ID_BB350002 = 16,
   ID_BB350003 = 60,
   ID_BB350004 = 0,
   ID_BB350005 = 0,
   ID_BB350006 = 0,
   ID_BB350007 = 0,
   ID_BB350008 = 0,
   ID_BB350009 = 0,
   ID_BB35000A = 0,
   ID_BB35000B = 0,
   ID_BB35000C = 0,
   ID_BB35000D = 0,
   ID_BB35000E = 0,
   ID_BB35000F = 0,
   ID_BB350010 = 0,      --Solar Intermediate Generators--
   ID_BB350011 = 2,
   ID_BB350012 = 0,
   ID_BB350013 = 0,
   ID_BB350014 = 0,
   ID_BB350015 = 0,
   ID_BB350016 = 0,
   ID_BB350017 = 0,
   ID_BB350018 = 0,
   ID_BB350019 = 0,
   ID_BB35001A = 0,
   ID_BB35001B = 0,
   ID_BB35001C = 0,
   ID_BB35001D = 0,
   ID_BB35001E = 0,
   ID_BB35001F = 0,
   ID_BB350020 = 1,       --Transformers--
   ID_BB350021 = 1,
   ID_BB350022 = 1,
   ID_BB350023 = 1,
   ID_BB350024 = 1,
   ID_BB350025 = 1,
   ID_BB350026 = 1,
   ID_BB350027 = 0,
   ID_BB350028 = 0,
   ID_BB350029 = 0,
   ID_BB35002A = 0,
   ID_BB35002B = 0,
   ID_BB35002C = 0,
   ID_BB35002D = 0,
   ID_BB35002E = 0,
   ID_BB35002F = 0,
   ID_BB350030 = 1,       --Distribution Substations--
   ID_BB350031 = 1,
   ID_BB350032 = 1,
   ID_BB350033 = 1,
   ID_BB350034 = 1,
   ID_BB350035 = 2,
   ID_BB350036 = 2,
   ID_BB350037 = 3,
   ID_BB350038 = 5,
   ID_BB350039 = 0,
   ID_BB35003A = 0,
   ID_BB35003B = 0,
   ID_BB35003C = 0,
   ID_BB35003D = 0,
   ID_BB35003E = 0,
   ID_BB35003F = 0,
   ID_BB350040 = 1,      --Power Storage Electrical Features--
   ID_BB350041 = 2,
   ID_BB350042 = 5,
   ID_BB350043 = 35,
   ID_BB350044 = 0,
   ID_BB350045 = 0,
   ID_BB350046 = 0,
   ID_BB350047 = 0,
   ID_BB350048 = 0,
   ID_BB350049 = 0,
   ID_BB35004A = 0,
   ID_BB35004B = 0,
   ID_BB35004C = 0,
   ID_BB35004D = 0,
   ID_BB35004E = 0,
   ID_BB35004F = 0,
   ID_BB350050 = 0,      --Large Intermediate Solar Plants-- None
   ID_BB350051 = 0,
   ID_BB350052 = 0,
   ID_BB350053 = 0,
   ID_BB350054 = 0,
   ID_BB350055 = 0,
   ID_BB350056 = 0,
   ID_BB350057 = 0,
   ID_BB350058 = 0,
   ID_BB350059 = 0,
   ID_BB35005A = 0,
   ID_BB35005B = 0,
   ID_BB35005C = 0,
   ID_BB35005D = 0,
   ID_BB35005E = 0,
   ID_BB35005F = 0,
   ID_BB350060 = 0,      --Large Intermediate Wind Plants-- None
   ID_BB350061 = 0,
   ID_BB350062 = 0,
   ID_BB350063 = 0,
   ID_BB350064 = 0,
   ID_BB350065 = 0,
   ID_BB350066 = 0,
   ID_BB350067 = 0,
   ID_BB350068 = 0,
   ID_BB350069 = 0,
   ID_BB35006A = 0,
   ID_BB35006B = 0,
   ID_BB35006C = 0,
   ID_BB35006D = 0,
   ID_BB35006E = 0,
   ID_BB35006F = 0,
   ID_BB350070 = 575,    --Large Base Geothermal Plants--
   ID_BB350071 = 750,
   ID_BB350072 = 0,
   ID_BB350073 = 0,
   ID_BB350074 = 0,
   ID_BB350075 = 0,
   ID_BB350076 = 0,
   ID_BB350077 = 0,
   ID_BB350078 = 3000,   --Large Base Fission Plants--
   ID_BB350079 = 13500,
   ID_BB35007A = 13500,
   ID_BB35007B = 0,
   ID_BB35007C = 0,
   ID_BB35007D = 0,
   ID_BB35007E = 0,
   ID_BB35007F = 0,
   ID_BB350080 = 100000, --Large Peak Load Following Fission Plants--
   ID_BB350081 = 0,
   ID_BB350082 = 0,
   ID_BB350083 = 0,
   ID_BB350084 = 0,
   ID_BB350085 = 0,
   ID_BB350086 = 0,
   ID_BB350087 = 0,
   ID_BB350088 = 10000,  --Large Peak Fusion Plants--
   ID_BB350089 = 0,
   ID_BB35008A = 0,
   ID_BB35008B = 0,
   ID_BB35008C = 0,
   ID_BB35008D = 0,
   ID_BB35008E = 0,
   ID_BB35008F = 0,
   ID_BB350090 = 900,   --Large Peak Oil Plants--
   ID_BB350091 = 1600,
   ID_BB350092 = 0,
   ID_BB350093 = 0,
   ID_BB350094 = 0,
   ID_BB350095 = 0,
   ID_BB350096 = 0,
   ID_BB350097 = 0,
   ID_BB350098 = 0,
   ID_BB350099 = 0,
   ID_BB35009A = 0,
   ID_BB35009B = 0,
   ID_BB35009C = 0,
   ID_BB35009D = 0,
   ID_BB35009E = 0,
   ID_BB35009F = 0,
   ID_BB3500A0 = 3250,      --Large Peak Natural Gas Plants--
   ID_BB3500A1 = 0,
   ID_BB3500A2 = 0,
   ID_BB3500A3 = 0,
   ID_BB3500A4 = 0,
   ID_BB3500A5 = 0,
   ID_BB3500A6 = 0,
   ID_BB3500A7 = 0,
   ID_BB3500A8 = 0,
   ID_BB3500A9 = 0,
   ID_BB3500AA = 0,
   ID_BB3500AB = 0,
   ID_BB3500AC = 0,
   ID_BB3500AD = 0,
   ID_BB3500AE = 0,
   ID_BB3500AF = 0,
   ID_BB3500B0 = 0,      --Large Base Wood Plants-- None
   ID_BB3500B1 = 0,
   ID_BB3500B2 = 0,
   ID_BB3500B3 = 0,
   ID_BB3500B4 = 0,
   ID_BB3500B5 = 0,
   ID_BB3500B6 = 0,
   ID_BB3500B7 = 0,
   ID_BB3500B8 = 800,    --Large Base Clean Coal Plants--
   ID_BB3500B9 = 1300,
   ID_BB3500BA = 1730,
   ID_BB3500BB = 0,
   ID_BB3500BC = 0,
   ID_BB3500BD = 0,
   ID_BB3500BE = 0,
   ID_BB3500BF = 0,
   ID_BB3500C0 = 250,    --Large Base Coal Plants--
   ID_BB3500C1 = 500,
   ID_BB3500C2 = 0,
   ID_BB3500C3 = 0,
   ID_BB3500C4 = 0,
   ID_BB3500C5 = 0,
   ID_BB3500C6 = 0,
   ID_BB3500C7 = 0,
   ID_BB3500C8 = 0,
   ID_BB3500C9 = 0,
   ID_BB3500CA = 0,
   ID_BB3500CB = 0,
   ID_BB3500CC = 0,
   ID_BB3500CD = 0,
   ID_BB3500CE = 0,
   ID_BB3500CF = 0,
   ID_BB3500D0 = 1000,   --Large Base Waste Plants--
   ID_BB3500D1 = 4400,
   ID_BB3500D2 = 0,
   ID_BB3500D3 = 0,
   ID_BB3500D4 = 0,
   ID_BB3500D5 = 0,
   ID_BB3500D6 = 0,
   ID_BB3500D7 = 0,
   ID_BB3500D8 = 0,
   ID_BB3500D9 = 0,
   ID_BB3500DA = 0,
   ID_BB3500DB = 0,
   ID_BB3500DC = 0,
   ID_BB3500DD = 0,
   ID_BB3500DE = 0,
   ID_BB3500DF = 0,
   ID_BB3500E0 = 0,      --Large Base Hydroelectric/Tidal Plants-- None
   ID_BB3500E1 = 0,
   ID_BB3500E2 = 0,
   ID_BB3500E3 = 0,
   ID_BB3500E4 = 0,
   ID_BB3500E5 = 0,
   ID_BB3500E6 = 0,
   ID_BB3500E7 = 0,
   ID_BB3500E8 = 0,
   ID_BB3500E9 = 0,
   ID_BB3500EA = 0,
   ID_BB3500EB = 0,
   ID_BB3500EC = 0,
   ID_BB3500ED = 0,
   ID_BB3500EE = 0,
   ID_BB3500EF = 0,
   ID_BB3500F0 = 0,      --Other Large Intermediate Plants-- None
   ID_BB3500F1 = 0,
   ID_BB3500F2 = 0,
   ID_BB3500F3 = 0,
   ID_BB3500F4 = 0,
   ID_BB3500F5 = 0,      --Other Large Base Plants-- None
   ID_BB3500F6 = 0,
   ID_BB3500F7 = 0,
   ID_BB3500F8 = 0,
   ID_BB3500F9 = 0,
   ID_BB3500FA = 0,      --Other Large Peak Plants-- None
   ID_BB3500FB = 0,
   ID_BB3500FC = 0,
   ID_BB3500FD = 0,
   ID_BB3500FE = 0,
   ID_BB3500FF = 0,      --Base Generator #1-- None
   ID_BB350100 = 20,     --Natural Gas Peak Generators--
   ID_BB350101 = 0,
   ID_BB350102 = 0,
   ID_BB350103 = 0,
   ID_BB350104 = 0,
   ID_BB350105 = 0,
   ID_BB350106 = 0,
   ID_BB350107 = 0,
   ID_BB350108 = 0,
   ID_BB350109 = 0,
   ID_BB35010A = 0,
   ID_BB35010B = 0,
   ID_BB35010C = 0,
   ID_BB35010D = 0,
   ID_BB35010E = 0,
   ID_BB35010F = 0,
   ID_BB350110 = 0,      --Wind Intermediate Generators--
   ID_BB350111 = 0,
   ID_BB350112 = 0,
   ID_BB350113 = 0,
   ID_BB350114 = 0,
   ID_BB350115 = 0,
   ID_BB350116 = 0,
   ID_BB350117 = 0,
   ID_BB350118 = 0,
   ID_BB350119 = 0,
   ID_BB35011A = 0,
   ID_BB35011B = 0,
   ID_BB35011C = 0,
   ID_BB35011D = 0,
   ID_BB35011E = 0,
   ID_BB35011F = 0,
   ID_BB350120 = 2,       --Transmission Substations--
   ID_BB350121 = 3,
   ID_BB350122 = 5,
   ID_BB350123 = 9,
   ID_BB350124 = 9,
   ID_BB350125 = 12,
   ID_BB350126 = 15,
   ID_BB350127 = 0,
   ID_BB350128 = 0,
   ID_BB350129 = 0,
   ID_BB35012A = 0,
   ID_BB35012B = 0,
   ID_BB35012C = 0,
   ID_BB35012D = 0,
   ID_BB35012E = 0,
   ID_BB35012F = 0,
   ID_BB350130 = 0,       --More Distribution Substations-- None
   ID_BB350131 = 0,
   ID_BB350132 = 0,
   ID_BB350133 = 0,
   ID_BB350134 = 0,
   ID_BB350135 = 0,
   ID_BB350136 = 0,
   ID_BB350137 = 0,
   ID_BB350138 = 0,
   ID_BB350139 = 0,
   ID_BB35013A = 0,
   ID_BB35013B = 0,
   ID_BB35013C = 0,
   ID_BB35013D = 0,
   ID_BB35013E = 0,
   ID_BB35013F = 0,
   ID_BB350140 = 100,    --Misc. Electrical Features--
   ID_BB350141 = 0,
   ID_BB350142 = 0,
   ID_BB350143 = 0,
   ID_BB350144 = 0,
   ID_BB350145 = 0,
   ID_BB350146 = 0,
   ID_BB350147 = 0,
   ID_BB350148 = 0,
   ID_BB350149 = 0,
   ID_BB35014A = 0,
   ID_BB35014B = 0,
   ID_BB35014C = 0,
   ID_BB35014D = 0,
   ID_BB35014E = 1,
   ID_BB35014F = 1,
   ID_BB350150 = 2,      --Small Intermediate Solar Plants--
   ID_BB350151 = 100,
   ID_BB350152 = 0,
   ID_BB350153 = 0,
   ID_BB350154 = 0,
   ID_BB350155 = 0,
   ID_BB350156 = 0,
   ID_BB350157 = 0,
   ID_BB350158 = 0,
   ID_BB350159 = 0,
   ID_BB35015A = 0,
   ID_BB35015B = 0,
   ID_BB35015C = 0,
   ID_BB35015D = 0,
   ID_BB35015E = 0,
   ID_BB35015F = 0,
   ID_BB350160 = 50,     --Small Intermediate Wind Plants--
   ID_BB350161 = 0,
   ID_BB350162 = 0,
   ID_BB350163 = 0,
   ID_BB350164 = 0,
   ID_BB350165 = 0,
   ID_BB350166 = 0,
   ID_BB350167 = 0,
   ID_BB350168 = 0,
   ID_BB350169 = 0,
   ID_BB35016A = 0,
   ID_BB35016B = 0,
   ID_BB35016C = 0,
   ID_BB35016D = 0,
   ID_BB35016E = 0,
   ID_BB35016F = 0,
   ID_BB350170 = 125,    --Small Base Geothermal Plants--
   ID_BB350171 = 275,
   ID_BB350172 = 0,
   ID_BB350173 = 0,
   ID_BB350174 = 0,
   ID_BB350175 = 0,
   ID_BB350176 = 0,
   ID_BB350177 = 0,
   ID_BB350178 = 0,      --Small Base Fission Plants-- None
   ID_BB350179 = 0,
   ID_BB35017A = 0,
   ID_BB35017B = 0,
   ID_BB35017C = 0,
   ID_BB35017D = 0,
   ID_BB35017E = 0,
   ID_BB35017F = 0,
   ID_BB350180 = 0,      --Small Peak Load Following Fission Plants-- None
   ID_BB350181 = 0,
   ID_BB350182 = 0,
   ID_BB350183 = 0,
   ID_BB350184 = 0,
   ID_BB350185 = 0,
   ID_BB350186 = 0,
   ID_BB350187 = 0,
   ID_BB350188 = 0,      --Small Peak Fusion Plants-- None
   ID_BB350189 = 0,
   ID_BB35018A = 0,
   ID_BB35018B = 0,
   ID_BB35018C = 0,
   ID_BB35018D = 0,
   ID_BB35018E = 0,
   ID_BB35018F = 0,
   ID_BB350190 = 105,    --Small Peak Oil Plants--
   ID_BB350191 = 270,
   ID_BB350192 = 0,
   ID_BB350193 = 0,
   ID_BB350194 = 0,
   ID_BB350195 = 0,
   ID_BB350196 = 0,
   ID_BB350197 = 0,
   ID_BB350198 = 0,
   ID_BB350199 = 0,
   ID_BB35019A = 0,
   ID_BB35019B = 0,
   ID_BB35019C = 0,
   ID_BB35019D = 0,
   ID_BB35019E = 0,
   ID_BB35019F = 0,
   ID_BB3501A0 = 138,    --Small Peak Natural Gas Plants--
   ID_BB3501A1 = 210,
   ID_BB3501A2 = 255,
   ID_BB3501A3 = 385,
   ID_BB3501A4 = 700,
   ID_BB3501A5 = 0,
   ID_BB3501A6 = 0,
   ID_BB3501A7 = 0,
   ID_BB3501A8 = 0,
   ID_BB3501A9 = 0,
   ID_BB3501AA = 0,
   ID_BB3501AB = 0,
   ID_BB3501AC = 0,
   ID_BB3501AD = 0,
   ID_BB3501AE = 0,
   ID_BB3501AF = 0,
   ID_BB3501B0 = 30,     --Small Base Wood Plants--
   ID_BB3501B1 = 75,
   ID_BB3501B2 = 0,
   ID_BB3501B3 = 0,
   ID_BB3501B4 = 0,
   ID_BB3501B5 = 0,
   ID_BB3501B6 = 0,
   ID_BB3501B7 = 0,
   ID_BB3501B8 = 0,      --Small Base Clean Coal Plants-- None
   ID_BB3501B9 = 0,
   ID_BB3501BA = 0,
   ID_BB3501BB = 0,
   ID_BB3501BC = 0,
   ID_BB3501BD = 0,
   ID_BB3501BE = 0,
   ID_BB3501BF = 0,
   ID_BB3501C0 = 75,     --Small Base Coal Plants--
   ID_BB3501C1 = 200,
   ID_BB3501C2 = 0,
   ID_BB3501C3 = 0,
   ID_BB3501C4 = 0,
   ID_BB3501C5 = 0,
   ID_BB3501C6 = 0,
   ID_BB3501C7 = 0,
   ID_BB3501C8 = 0,
   ID_BB3501C9 = 0,
   ID_BB3501CA = 0,
   ID_BB3501CB = 0,
   ID_BB3501CC = 0,
   ID_BB3501CD = 0,
   ID_BB3501CE = 0,
   ID_BB3501CF = 0,
   ID_BB3501D0 = 0,      --Small Base Waste Plants-- Special Case for W2E Plants; this value is adjusted according to trash converted to energy; Do not change these values from 0
   ID_BB3501D1 = 0,
   ID_BB3501D2 = 0,
   ID_BB3501D3 = 0,
   ID_BB3501D4 = 0,
   ID_BB3501D5 = 0,
   ID_BB3501D6 = 0,
   ID_BB3501D7 = 0,
   ID_BB3501D8 = 0,
   ID_BB3501D9 = 0,
   ID_BB3501DA = 0,
   ID_BB3501DB = 0,
   ID_BB3501DC = 0,
   ID_BB3501DD = 0,
   ID_BB3501DE = 0,
   ID_BB3501DF = 0,
   ID_BB3501E0 = 0,      --Small Base Hydroelectric/Tidal Plants-- None
   ID_BB3501E1 = 0,
   ID_BB3501E2 = 0,
   ID_BB3501E3 = 0,
   ID_BB3501E4 = 0,
   ID_BB3501E5 = 0,
   ID_BB3501E6 = 0,
   ID_BB3501E7 = 0,
   ID_BB3501E8 = 0,
   ID_BB3501E9 = 0,
   ID_BB3501EA = 0,
   ID_BB3501EB = 0,
   ID_BB3501EC = 0,
   ID_BB3501ED = 0,
   ID_BB3501EE = 0,
   ID_BB3501EF = 0,
   ID_BB3501F0 = 0,      --Other Small Intermediate Plants-- None
   ID_BB3501F1 = 0,
   ID_BB3501F2 = 0,
   ID_BB3501F3 = 0,
   ID_BB3501F4 = 0,
   ID_BB3501F5 = 0,      --Other Small Base Plants-- None
   ID_BB3501F6 = 0,
   ID_BB3501F7 = 0,
   ID_BB3501F8 = 0,
   ID_BB3501F9 = 0,
   ID_BB3501FA = 0,      --Other Small Peak Plants-- None
   ID_BB3501FB = 0,
   ID_BB3501FC = 0,
   ID_BB3501FD = 0,
   ID_BB3501FE = 0,
   ID_BB3501FF = 0       --Base Generator #2-- None
}
unlock_variables = {
   DIESEL_GEN_945_KW_MONTH_AVAIL = 3,
   DIESEL_GEN_945_KW_DISTRIB_AVAIL = 1000,
   NAT_GAS_GEN_180_KW_MONTH_AVAIL = 2,
   NAT_GAS_GEN_180_KW_DISTRIB_AVAIL = 1000,
   NAT_GAS_GEN_180_KW_POP = 10000,
   PAD_MOUNT_TRANS_50_KVA_R23_POP = 1000,
   COM_TRANS_1500_KVA_CS_POP = 1000,
   IND_TRANS_3_MVA_IDM_POP = 1000,
   IND_TRANS_6_MVA_IDM_POP = 5000,
   DIST_SUBSTATION_1_MVA_R23_POP = 5000,
   DIST_SUBSTATION_1_MVA_ENERGY_DEMAND = 2000,
   DIST_SUBSTATION_2_MVA_R3_POP = 800,
   DIST_SUBSTATION_2_MVA_ENERGY_DEMAND = 5000,
   DIST_SUBSTATION_7_MVA_R2_POP = 5000,
   DIST_SUBSTATION_7_MVA_ENERGY_DEMAND = 2500,
   DIST_SUBSTATION_10_MVA_ENERGY_DEMAND = 10000,
   DIST_SUBSTATION_15_MVA_ENERGY_DEMAND = 15000,
   DIST_SUBSTATION_25_MVA_ENERGY_DEMAND = 25000,
   TRANS_SUBSTATION_20_MVA_POWER_PLANT = 1,
   TRANS_SUBSTATION_20_MVA_ENERGY_DEMAND = 3000,
   TRANS_SUBSTATION_35_MVA_POWER_PLANT = 2,
   TRANS_SUBSTATION_35_MVA_ENERGY_DEMAND = 10000,
   TRANS_SUBSTATION_60_MVA_POWER_PLANT = 3,
   TRANS_SUBSTATION_60_MVA_ENERGY_DEMAND = 30000,
   TRANS_SUBSTATION_60_MVA_S_POWER_PLANT = 3,
   TRANS_SUBSTATION_60_MVA_S_ENERGY_DEMAND = 30000,
   TRANS_SUBSTATION_60_MVA_S_BRIDGE_TILES = 1,
   TRANS_SUBSTATION_60_MVA_S_BRIDGE = "No",
   TRANS_SUBSTATION_90_MVA_POWER_PLANT = 4,
   TRANS_SUBSTATION_90_MVA_ENERGY_DEMAND = 50000,
   TRANS_SUBSTATION_120_MVA_POWER_PLANT = 4,
   TRANS_SUBSTATION_120_MVA_ENERGY_DEMAND = 70000,
   TESLA_XS_IHT_POP = 1000,
   TESLA_XS_I_B_ENERGY_GEN = 15,
   TESLA_SM_IHT_POP = 2000,
   TESLA_SM_I_B_ENERGY_GEN = 30,
   TESLA_MD_IHT_POP = 3000,
   TESLA_MD_I_B_ENERGY_GEN = 76,
   TESLA_LG_IHT_POP = 5000,
   TESLA_LG_I_B_ENERGY_GEN = 300,
   GEOTHERMAL_2_MW_BASE_DEMAND = 1000,
   GEOTHERMAL_4_MW_BASE_DEMAND = 2200,
   GEOTHERMAL_8_MW_BASE_DEMAND = 4600,
   GEOTHERMAL_10_MW_BASE_DEMAND = 6000,
   FUSION_IHT_POP = 8000,
   FUSION_ENERGY_DEMAND = 30000,
   OIL_30_MW_ENERGY_DEMAND = 20000,
   NAT_GAS_2_4_MW_IMHT_POP = 2000,
   NAT_GAS_2_4_MW_ENERGY_DEMAND = 2500,
   NAT_GAS_3_5_MW_IMHT_POP = 4000,
   NAT_GAS_3_5_MW_ENERGY_DEMAND = 4000,
   NAT_GAS_6_5_MW_IMHT_POP = 6000,
   NAT_GAS_6_5_MW_ENERGY_DEMAND = 7500,
   NAT_GAS_34_MW_IMHT_POP = 10000,
   NAT_GAS_34_MW_ENERGY_DEMAND = 37500,
   CLEANCOAL_15_MW_ENERGY_DEMAND = 10000,
   CLEANCOAL_25_MW_ENERGY_DEMAND = 20000,
   CLEANCOAL_35_MW_ENERGY_DEMAND = 30000,
   CLEANCARBON_IHT_POP = 4000,
   COAL_28_MW_ENERGY_DEMAND = 25000,
   W2E_45_MW_GARBAGE_AVAILABLE = 150000,
   AMPS_MAINT_FACILITY_POWER_PLANT = 1,
   AMPS_MAIN_OFFICE_POWER_EXPORT = 25000,
   AMPS_RES_FACILITY_ENERGY_DEMAND = 10000,
   AMPS_CORP_HQ_CITY_POP = 400000,
   AMPS_CORP_HQ_REG_POP = 1000000
}
company_name = {
   ID_00 = "Allied Municipal Power of Simtropolis",
   ID_01 = "1Dera3 Solar Solutions",
   ID_02 = "The Andreas Roth Group",
   ID_03 = "BIWDC LLC",
   ID_04 = "Consorcio BurroDiablo ",
   ID_05 = "Carrot 1984 Innovations",
   ID_06 = "Cat Fan Coal Systems",
   ID_07 = "Colyn Power Products",
   ID_08 = "Deadwood Construction",
   ID_09 = "DK1 Electric Concepts",
   ID_0A = "Fukuda Corporation",
   ID_0B = "Homefryes Electronics",
   ID_0C = "JPouX International Power",
   ID_0D = "Kaos Home Power Systems",
   ID_0E = "Kloudkicker Industries",
   ID_0F = "Mathe Man GeoIndustries",
   ID_10 = "Maxis Power Consolidated",
   ID_11 = "Mr. Bison M and Associates",
   ID_12 = "Onlyplace4 Electric Power",
   ID_13 = "PEGPROD LLC",
   ID_14 = "Shortman 123 Motors",
   ID_15 = "Shydude Electric",
   ID_16 = "SimGoober Industrial",
   ID_17 = "SM2 Energy Corp.",
   ID_18 = "Subgrav Holdings Inc.",
   ID_19 = "Taking You There Machinery",
   ID_1A = "",
   ID_1B = "",
   ID_1C = "",
   ID_1D = "",
   ID_1E = "",
   ID_1F = "",
   ID_20 = "",
   ID_21 = "",
   ID_22 = "",
   ID_23 = "",
   ID_24 = "",
   ID_25 = "",
   ID_26 = "",
   ID_27 = "",
   ID_28 = "",
   ID_29 = "",
   ID_2A = "",
   ID_2B = "",
   ID_2C = "",
   ID_2D = "",
   ID_2E = "",
   ID_2F = "",
   ID_30 = "",
   ID_31 = "",
   ID_32 = "",
   ID_33 = "",
   ID_34 = "",
   ID_35 = "",
   ID_36 = "",
   ID_37 = "",
   ID_38 = "",
   ID_39 = "",
   ID_3A = "",
   ID_3B = "",
   ID_3C = "",
   ID_3D = "SFBT Power Unlimited",
   ID_3E = "BSC Integrated",
   ID_3F = "Independent Contractor"
}
POWER_COMPANY_NAME = "Allied Municipal Power" -- Shortened Power Co name used in some advisor messages
-- Set all grid logic variables to 0 to initalize them --
grid_logic_var ={
   PV_PANEL_SETS       = 0,
   STEPUP_TRANSFORMERS = 0,
   INVERTERS           = 0,
   PV_S_SOLAR_UNITS    = 0,
   PV_GENERATORS       = 0,
   OIL_GENERATOR_COUNT = 0,
   SOLAR_GENERAT_COUNT = 0,
   TRANSFORMER_COUNT   = 0,
   DISTRIBUTE_COUNT_A  = 0,
   BATTERY_LOT_COUNT   = 0,
   LARGE_SOLAR_COUNT   = 0,
   LARGE_WIND_COUNT    = 0,
   LARGE_GEO_COUNT     = 0,
   LARGE_FISSION_COUNT = 0,
   LARGE_FI_PEAK_COUNT = 0,
   LARGE_FUSION_COUNT  = 0,
   LARGE_OIL_COUNT     = 0,
   LARGE_NAT_GAS_COUNT = 0,
   LARGE_WOOD_COUNT    = 0,
   LARGE_C_COAL_COUNT  = 0,
   LARGE_COAL_COUNT    = 0,
   LARGE_WASTE_COUNT   = 0,
   LARGE_HYDRO_COUNT   = 0,
   LARGE_OTHER_I_COUNT = 0,
   LARGE_OTHER_B_COUNT = 0,
   LARGE_OTHER_P_COUNT = 0,
   BASE_GENERATE_COUNT = 0,
   NG_GENERATOR_COUNT  = 0,
   WIND_GENERATE_COUNT = 0,
   TRANSMISSION_COUNT  = 0,
   DISTRIBUTE_COUNT_B  = 0,
   MISC_ELEC_F_COUNT   = 0,
   SMALL_SOLAR_COUNT   = 0,
   SMALL_WIND_COUNT    = 0,
   SMALL_GEO_COUNT     = 0,
   SMALL_FISSION_COUNT = 0,
   SMALL_FI_PEAK_COUNT = 0,
   SMALL_FUSION_COUNT  = 0,
   SMALL_PETRO_I_COUNT = 0,
   SMALL_PETRO_B_COUNT = 0,
   SMALL_OIL_COUNT     = 0,
   SMALL_NAT_GAS_COUNT = 0,
   SMALL_CARBN_I_COUNT = 0,
   SMALL_WOOD_COUNT    = 0,
   SMALL_C_COAL_COUNT  = 0,
   SMALL_COAL_COUNT    = 0,
   SMALL_WASTE_COUNT   = 0,
   SMALL_HYDRO_COUNT   = 0,
   SMALL_OTHER_I_COUNT = 0,
   SMALL_OTHER_B_COUNT = 0,
   SMALL_OTHER_P_COUNT = 0,
   DISTRIBUTION_COUNT  = 0,
   I_GENERATOR_COUNT   = 0,
   B_GENERATOR_COUNT   = 0,
   P_GENERATOR_COUNT   = 0,
   LARGE_OTHER_COUNT   = 0,
   SMALL_OTHER_COUNT   = 0,
   LARGE_INTERM_COUNT  = 0,
   LARGE_BASE_COUNT    = 0,
   LARGE_PEAK_COUNT    = 0,
   SMALL_INTERM_COUNT  = 0,
   SMALL_BASE_COUNT    = 0,
   SMALL_PEAK_COUNT    = 0,
   LARGE_POWER_COUNT   = 0,
   SMALL_POWER_COUNT   = 0,
   BATTERY_COUNT       = 0,
   UNS_COAL_COUNT      = 0,
   UNS_NAT_GAS_COUNT   = 0,
   UNS_OIL_COUNT       = 0,
   UNS_WIND_COUNT      = 0,
   UNS_SOLAR_COUNT     = 0,
   UNS_FISSION_COUNT   = 0,
   UNS_WASTE_COUNT     = 0,
   UNS_FUSION_COUNT    = 0,
   UNS_OTHER_COUNT     = 0,
   UNS_PLANT_COUNT     = 0,

   TRANSFORMER_RATING  = 0,
   DISTRIBUTION_RATING = 0,
   DISTRIB_RATING_CAP  = 0,
   POWER_STORE_RATING  = 0,
   LARGE_SOLAR_RATING  = 0,
   LARGE_WIND_RATING   = 0,
   LARGE_GEO_RATING    = 0,
   LARGE_FISION_RATING = 0,
   LARGE_FI_FIS_RATING = 0,
   LARGE_FUSION_RATING = 0,
   LARGE_OIL_RATING    = 0,
   LARGE_NATGAS_RATING = 0,
   LARGE_WOOD_RATING   = 0,
   LARGE_CCOAL_RATING  = 0,
   LARGE_COAL_RATING   = 0,
   LARGE_WASTE_RATING  = 0,
   LARGE_HYDRO_RATING  = 0,
   LARGE_OTHERI_RATING = 0,
   LARGE_OTHERB_RATING = 0,
   LARGE_OTHERP_RATING = 0,
   TRANSMISSION_RATING = 0,
   MISC_ELEC_F_RATING  = 0,
   SMALL_SOLAR_RATING  = 0,
   SMALL_WIND_RATING   = 0,
   SMALL_GEO_RATING    = 0,
   SMALL_FISION_RATING = 0,
   SMALL_FI_FIS_RATING = 0,
   SMALL_FUSION_RATING = 0,
   SMALL_OIL_RATING    = 0,
   SMALL_NATGAS_RATING = 0,
   SMALL_WOOD_RATING   = 0,
   SMALL_CCOAL_RATING  = 0,
   SMALL_COAL_RATING   = 0,
   SMALL_WASTE_RATING  = 0,
   SMALL_HYDRO_RATING  = 0,
   SMALL_OTHERI_RATING = 0,
   SMALL_OTHERB_RATING = 0,
   SMALL_OTHERP_RATING = 0,

   LARGE_I_RATING      = 0,
   LARGE_B_RATING      = 0,
   LARGE_P_RATING      = 0,
   SMALL_I_RATING      = 0,
   SMALL_B_RATING      = 0,
   SMALL_P_RATING      = 0,
   LARGE_PLANTS_RATING = 0,
   SMALL_PLANTS_RATING = 0,
   LARGE_POWER_RATING  = 0,
   TRANSMIT_AVAILABLE  = 0,
   DISTRIB_AVAILABLE   = 0,
   TRANSFORM_AVAILABLE = 0,

   AVERAGE_PRODUCTION_CAPACITY = 0,

   L_WASTE_MAX_POWER   = 0,
   S_WASTE_MAX_POWER   = 0,

   DIESEL_GENER_POWER  = 0,
   SOLAR_GENERAT_POWER = 0,
   BATTERY_P_POWER     = 0,
   L_SOLAR_POWER       = 0,
   L_WIND_POWER        = 0,
   L_GEOTHERMAL_POWER  = 0,
   L_FISSION_POWER     = 0,
   L_FISSION_P_POWER   = 0,
   L_FUSION_POWER      = 0,
   L_OIL_POWER         = 0,
   L_NAT_GAS_POWER     = 0,
   L_WOOD_POWER        = 0,
   L_CLEAN_COAL_POWER  = 0,
   L_COAL_POWER        = 0,
   L_WASTE_POWER       = 0,
   L_HYDRO_POWER       = 0,
   L_OTHER_I_POWER     = 0,
   L_OTHER_B_POWER     = 0,
   L_OTHER_P_POWER     = 0,
   BASE_GENERATE_POWER = 0,
   NG_GENERATOR_POWER  = 0,
   WIND_GENERATE_POWER = 0,
   S_SOLAR_POWER       = 0,
   S_WIND_POWER        = 0,
   S_GEOTHERMAL_POWER  = 0,
   S_FISSION_POWER     = 0,
   S_FISSION_P_POWER   = 0,
   S_FUSION_POWER      = 0,
   S_OIL_POWER         = 0,
   S_NAT_GAS_POWER     = 0,
   S_WOOD_POWER        = 0,
   S_CLEAN_COAL_POWER  = 0,
   S_COAL_POWER        = 0,
   S_WASTE_POWER       = 0,
   S_HYDRO_POWER       = 0,
   S_OTHER_I_POWER     = 0,
   S_OTHER_B_POWER     = 0,
   S_OTHER_P_POWER     = 0,

   GENERATOR_I_POWER   = 0,
   GENERATOR_B_POWER   = 0,
   GENERATOR_P_POWER   = 0,
   LARGE_I_POWER       = 0,
   LARGE_B_POWER       = 0,
   LARGE_P_POWER       = 0,
   SMALL_I_POWER       = 0,
   SMALL_B_POWER       = 0,
   SMALL_P_POWER       = 0,
   DEV_I_POWER         = 0,
   DEV_B_POWER         = 0,
   DEV_P_POWER         = 0,
   SUP_GEN_I_POWER     = 0,
   SUP_GEN_B_POWER     = 0,
   SUP_GEN_P_POWER     = 0,
   POWER_DEVIATION     = 0,
   GEN_I_POWER         = 0,
   GEN_B_POWER         = 0,
   GEN_P_POWER         = 0,
   GENERATOR_I_D_POWER = 0,
   GENERATOR_B_D_POWER = 0,
   GENERATOR_P_D_POWER = 0,
   D_SOLAR_POWER       = 0,
   D_WIND_POWER        = 0,
   D_GEOTHERMAL_POWER  = 0,
   D_FISSION_POWER     = 0,
   D_FISSION_P_POWER   = 0,
   D_FUSION_POWER      = 0,
   D_OIL_POWER         = 0,
   D_NAT_GAS_POWER     = 0,
   D_WOOD_POWER        = 0,
   D_CLEAN_COAL_POWER  = 0,
   D_COAL_POWER        = 0,
   D_WASTE_POWER       = 0,
   D_HYDRO_POWER       = 0,
   D_OTHER_I_POWER     = 0,
   D_OTHER_B_POWER     = 0,
   D_OTHER_P_POWER     = 0,
   D_OTHER_POWER       = 0,
   ALL_I_POWER         = 0,
   ALL_B_POWER         = 0,
   ALL_P_POWER         = 0,
   BAT_UNUSED          = 0,

   MWH_DEMAND_TOTAL    = 0,
   MIN_P_POWER         = 0,
   MAX_I_POWER_A       = 0,
   MAX_I_POWER_B       = 0,
   MAX_I_POWER         = 0,
   USED_I_POWER        = 0,
   UNUSED_I_POWER      = 0,
   MAX_B_POWER_A       = 0,
   MAX_B_POWER_B       = 0,
   MAX_B_POWER         = 0,
   USED_B_POWER        = 0,
   UNUSED_B_POWER      = 0,
   USED_P_POWER_A      = 0,
   USED_P_POWER_B      = 0,
   USED_P_POWER        = 0,
   UNUSED_P_POWER      = 0,
   SHORT_P_POWER       = 0,
   DEMAND_PERCENT      = 1,
   I_PERCENT           = 0,
   B_PERCENT           = 0,
   P_PERCENT           = 0,
   I_MPERCENT          = 0.4,
   B_MPERCENT          = 0.6,
   P_MPERCENT          = 0.2,

   RANDVOLTAGE         = 0,
   VOLTPLUS            = "+",
   VOLTVALUE           = 0,

   DIST_SUB_COST_MONTHLY_A = 0,
   DIST_SUB_COST_MONTHLY_B = 0
}
power_company_buildings = {
   FRONT_OFFICE_COUNT  = 0,
   MAINT_BUILD_COUNT   = 0,
   CENT_OFFICE_COUNT   = 0,
   RES_FACILITY_COUNT  = 0,
   CORP_HQ_COUNT       = 0
}

-- The main function to call that processes all grid availability variables for new construction limits and load balancing
-- These variables are used by the Reward checks to determine if the grid is powerful enough to add a new power plant.
-- kVA is equal to 1.25 times kW rating; thus a 10 MW power plant has a potential kVA load of 12,500 kVA, or 12.5 MVA.
-- This is based on power industry standard definitions and practices, assuming a Power Factor of 0.8 on average.
-- Small Plants are those with less than an 8 MW rating. These power plants do not require Transmission Substations.
function run_grid_balance_variables(ret_type)
-- Math used to determine breakdown of PV Panels as Generators or Small Solar Plants; each Step-up Transformer converts 128 PV Panel Sets from Generators to Small Solar Plants
    grid_logic_var.PV_PANEL_SETS       = sc4game.automata.get_source_building_count(hex2dec("BB350010"))
    grid_logic_var.STEPUP_TRANSFORMERS = sc4game.automata.get_source_building_count(hex2dec("BB35014E"))
    grid_logic_var.INVERTERS           = sc4game.automata.get_source_building_count(hex2dec("BB35014F"))
    grid_logic_var.PV_S_SOLAR_UNITS    = math.min(grid_logic_var.PV_PANEL_SETS,grid_logic_var.STEPUP_TRANSFORMERS * 128)
    grid_logic_var.PV_GENERATORS       = (grid_logic_var.PV_PANEL_SETS - grid_logic_var.PV_S_SOLAR_UNITS)

-- Determine if a bridge is present
    if(game.g_bridge_tile_count < unlock_variables.TRANS_SUBSTATION_60_MVA_S_BRIDGE_TILES) then
            unlock_variables.TRANS_SUBSTATION_60_MVA_S_BRIDGE = "No"
        else
            unlock_variables.TRANS_SUBSTATION_60_MVA_S_BRIDGE = "Yes"
    end
	
-- Total Count of each grid section by type --
    grid_logic_var.OIL_GENERATOR_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB350000")) + sc4game.automata.get_source_building_count(hex2dec("BB350001")) + sc4game.automata.get_source_building_count(hex2dec("BB350002")) + sc4game.automata.get_source_building_count(hex2dec("BB350003")) + sc4game.automata.get_source_building_count(hex2dec("BB350004")) + sc4game.automata.get_source_building_count(hex2dec("BB350005")) + sc4game.automata.get_source_building_count(hex2dec("BB350006")) + sc4game.automata.get_source_building_count(hex2dec("BB350007")) + sc4game.automata.get_source_building_count(hex2dec("BB350008")) + sc4game.automata.get_source_building_count(hex2dec("BB350009")) + sc4game.automata.get_source_building_count(hex2dec("BB35000A")) + sc4game.automata.get_source_building_count(hex2dec("BB35000B")) + sc4game.automata.get_source_building_count(hex2dec("BB35000C")) + sc4game.automata.get_source_building_count(hex2dec("BB35000D")) + sc4game.automata.get_source_building_count(hex2dec("BB35000E")) + sc4game.automata.get_source_building_count(hex2dec("BB35000F")))
    grid_logic_var.SOLAR_GENERAT_COUNT = (grid_logic_var.PV_GENERATORS                                    + sc4game.automata.get_source_building_count(hex2dec("BB350011")) + sc4game.automata.get_source_building_count(hex2dec("BB350012")) + sc4game.automata.get_source_building_count(hex2dec("BB350013")) + sc4game.automata.get_source_building_count(hex2dec("BB350014")) + sc4game.automata.get_source_building_count(hex2dec("BB350015")) + sc4game.automata.get_source_building_count(hex2dec("BB350016")) + sc4game.automata.get_source_building_count(hex2dec("BB350017")) + sc4game.automata.get_source_building_count(hex2dec("BB350018")) + sc4game.automata.get_source_building_count(hex2dec("BB350019")) + sc4game.automata.get_source_building_count(hex2dec("BB35001A")) + sc4game.automata.get_source_building_count(hex2dec("BB35001B")) + sc4game.automata.get_source_building_count(hex2dec("BB35001C")) + sc4game.automata.get_source_building_count(hex2dec("BB35001D")) + sc4game.automata.get_source_building_count(hex2dec("BB35001E")) + sc4game.automata.get_source_building_count(hex2dec("BB35001F")))
    grid_logic_var.TRANSFORMER_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB350020")) + sc4game.automata.get_source_building_count(hex2dec("BB350021")) + sc4game.automata.get_source_building_count(hex2dec("BB350022")) + sc4game.automata.get_source_building_count(hex2dec("BB350023")) + sc4game.automata.get_source_building_count(hex2dec("BB350024")) + sc4game.automata.get_source_building_count(hex2dec("BB350025")) + sc4game.automata.get_source_building_count(hex2dec("BB350026")) + sc4game.automata.get_source_building_count(hex2dec("BB350027")) + sc4game.automata.get_source_building_count(hex2dec("BB350028")) + sc4game.automata.get_source_building_count(hex2dec("BB350029")) + sc4game.automata.get_source_building_count(hex2dec("BB35002A")) + sc4game.automata.get_source_building_count(hex2dec("BB35002B")) + sc4game.automata.get_source_building_count(hex2dec("BB35002C")) + sc4game.automata.get_source_building_count(hex2dec("BB35002D")) + sc4game.automata.get_source_building_count(hex2dec("BB35002E")) + sc4game.automata.get_source_building_count(hex2dec("BB35002F")))
    grid_logic_var.DISTRIBUTE_COUNT_A  = (sc4game.automata.get_source_building_count(hex2dec("BB350030")) + sc4game.automata.get_source_building_count(hex2dec("BB350031")) + sc4game.automata.get_source_building_count(hex2dec("BB350032")) + sc4game.automata.get_source_building_count(hex2dec("BB350033")) + sc4game.automata.get_source_building_count(hex2dec("BB350034")) + sc4game.automata.get_source_building_count(hex2dec("BB350035")) + sc4game.automata.get_source_building_count(hex2dec("BB350036")) + sc4game.automata.get_source_building_count(hex2dec("BB350037")) + sc4game.automata.get_source_building_count(hex2dec("BB350038")) + sc4game.automata.get_source_building_count(hex2dec("BB350039")) + sc4game.automata.get_source_building_count(hex2dec("BB35003A")) + sc4game.automata.get_source_building_count(hex2dec("BB35003B")) + sc4game.automata.get_source_building_count(hex2dec("BB35003C")) + sc4game.automata.get_source_building_count(hex2dec("BB35003D")) + sc4game.automata.get_source_building_count(hex2dec("BB35003E")) + sc4game.automata.get_source_building_count(hex2dec("BB35003F")))
    grid_logic_var.BATTERY_LOT_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB350040")) + sc4game.automata.get_source_building_count(hex2dec("BB350041")) + sc4game.automata.get_source_building_count(hex2dec("BB350042")) + sc4game.automata.get_source_building_count(hex2dec("BB350043")) + sc4game.automata.get_source_building_count(hex2dec("BB350044")) + sc4game.automata.get_source_building_count(hex2dec("BB350045")) + sc4game.automata.get_source_building_count(hex2dec("BB350046")) + sc4game.automata.get_source_building_count(hex2dec("BB350047")) + sc4game.automata.get_source_building_count(hex2dec("BB350048")) + sc4game.automata.get_source_building_count(hex2dec("BB350049")) + sc4game.automata.get_source_building_count(hex2dec("BB35004A")) + sc4game.automata.get_source_building_count(hex2dec("BB35004B")) + sc4game.automata.get_source_building_count(hex2dec("BB35004C")) + sc4game.automata.get_source_building_count(hex2dec("BB35004D")) + sc4game.automata.get_source_building_count(hex2dec("BB35004E")) + sc4game.automata.get_source_building_count(hex2dec("BB35004F")))
    grid_logic_var.LARGE_SOLAR_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB350050")) + sc4game.automata.get_source_building_count(hex2dec("BB350051")) + sc4game.automata.get_source_building_count(hex2dec("BB350052")) + sc4game.automata.get_source_building_count(hex2dec("BB350053")) + sc4game.automata.get_source_building_count(hex2dec("BB350054")) + sc4game.automata.get_source_building_count(hex2dec("BB350055")) + sc4game.automata.get_source_building_count(hex2dec("BB350056")) + sc4game.automata.get_source_building_count(hex2dec("BB350057")) + sc4game.automata.get_source_building_count(hex2dec("BB350058")) + sc4game.automata.get_source_building_count(hex2dec("BB350059")) + sc4game.automata.get_source_building_count(hex2dec("BB35005A")) + sc4game.automata.get_source_building_count(hex2dec("BB35005B")) + sc4game.automata.get_source_building_count(hex2dec("BB35005C")) + sc4game.automata.get_source_building_count(hex2dec("BB35005D")) + sc4game.automata.get_source_building_count(hex2dec("BB35005E")) + sc4game.automata.get_source_building_count(hex2dec("BB35005F")))
    grid_logic_var.LARGE_WIND_COUNT    = (sc4game.automata.get_source_building_count(hex2dec("BB350060")) + sc4game.automata.get_source_building_count(hex2dec("BB350061")) + sc4game.automata.get_source_building_count(hex2dec("BB350062")) + sc4game.automata.get_source_building_count(hex2dec("BB350063")) + sc4game.automata.get_source_building_count(hex2dec("BB350064")) + sc4game.automata.get_source_building_count(hex2dec("BB350065")) + sc4game.automata.get_source_building_count(hex2dec("BB350066")) + sc4game.automata.get_source_building_count(hex2dec("BB350067")) + sc4game.automata.get_source_building_count(hex2dec("BB350068")) + sc4game.automata.get_source_building_count(hex2dec("BB350069")) + sc4game.automata.get_source_building_count(hex2dec("BB35006A")) + sc4game.automata.get_source_building_count(hex2dec("BB35006B")) + sc4game.automata.get_source_building_count(hex2dec("BB35006C")) + sc4game.automata.get_source_building_count(hex2dec("BB35006D")) + sc4game.automata.get_source_building_count(hex2dec("BB35006E")) + sc4game.automata.get_source_building_count(hex2dec("BB35006F")))
    grid_logic_var.LARGE_GEO_COUNT     = (sc4game.automata.get_source_building_count(hex2dec("BB350070")) + sc4game.automata.get_source_building_count(hex2dec("BB350071")) + sc4game.automata.get_source_building_count(hex2dec("BB350072")) + sc4game.automata.get_source_building_count(hex2dec("BB350073")) + sc4game.automata.get_source_building_count(hex2dec("BB350074")) + sc4game.automata.get_source_building_count(hex2dec("BB350075")) + sc4game.automata.get_source_building_count(hex2dec("BB350076")) + sc4game.automata.get_source_building_count(hex2dec("BB350077")))
    grid_logic_var.LARGE_FISSION_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB350078")) + sc4game.automata.get_source_building_count(hex2dec("BB350079")) + sc4game.automata.get_source_building_count(hex2dec("BB35007A")) + sc4game.automata.get_source_building_count(hex2dec("BB35007B")) + sc4game.automata.get_source_building_count(hex2dec("BB35007C")) + sc4game.automata.get_source_building_count(hex2dec("BB35007D")) + sc4game.automata.get_source_building_count(hex2dec("BB35007E")) + sc4game.automata.get_source_building_count(hex2dec("BB35007F")))
    grid_logic_var.LARGE_FI_PEAK_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB350080")) + sc4game.automata.get_source_building_count(hex2dec("BB350081")) + sc4game.automata.get_source_building_count(hex2dec("BB350082")) + sc4game.automata.get_source_building_count(hex2dec("BB350083")) + sc4game.automata.get_source_building_count(hex2dec("BB350084")) + sc4game.automata.get_source_building_count(hex2dec("BB350085")) + sc4game.automata.get_source_building_count(hex2dec("BB350086")) + sc4game.automata.get_source_building_count(hex2dec("BB350087")))
    grid_logic_var.LARGE_FUSION_COUNT  = (sc4game.automata.get_source_building_count(hex2dec("BB350088")) + sc4game.automata.get_source_building_count(hex2dec("BB350089")) + sc4game.automata.get_source_building_count(hex2dec("BB35008A")) + sc4game.automata.get_source_building_count(hex2dec("BB35008B")) + sc4game.automata.get_source_building_count(hex2dec("BB35008C")) + sc4game.automata.get_source_building_count(hex2dec("BB35008D")) + sc4game.automata.get_source_building_count(hex2dec("BB35008E")) + sc4game.automata.get_source_building_count(hex2dec("BB35008F")))
    grid_logic_var.LARGE_OIL_COUNT     = (sc4game.automata.get_source_building_count(hex2dec("BB350090")) + sc4game.automata.get_source_building_count(hex2dec("BB350091")) + sc4game.automata.get_source_building_count(hex2dec("BB350092")) + sc4game.automata.get_source_building_count(hex2dec("BB350093")) + sc4game.automata.get_source_building_count(hex2dec("BB350094")) + sc4game.automata.get_source_building_count(hex2dec("BB350095")) + sc4game.automata.get_source_building_count(hex2dec("BB350096")) + sc4game.automata.get_source_building_count(hex2dec("BB350097")) + sc4game.automata.get_source_building_count(hex2dec("BB350098")) + sc4game.automata.get_source_building_count(hex2dec("BB350099")) + sc4game.automata.get_source_building_count(hex2dec("BB35009A")) + sc4game.automata.get_source_building_count(hex2dec("BB35009B")) + sc4game.automata.get_source_building_count(hex2dec("BB35009C")) + sc4game.automata.get_source_building_count(hex2dec("BB35009D")) + sc4game.automata.get_source_building_count(hex2dec("BB35009E")) + sc4game.automata.get_source_building_count(hex2dec("BB35009F")))
    grid_logic_var.LARGE_NAT_GAS_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3500A0")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A1")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A2")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A3")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A4")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A5")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A6")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A7")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A8")) + sc4game.automata.get_source_building_count(hex2dec("BB3500A9")) + sc4game.automata.get_source_building_count(hex2dec("BB3500AA")) + sc4game.automata.get_source_building_count(hex2dec("BB3500AB")) + sc4game.automata.get_source_building_count(hex2dec("BB3500AC")) + sc4game.automata.get_source_building_count(hex2dec("BB3500AD")) + sc4game.automata.get_source_building_count(hex2dec("BB3500AE")) + sc4game.automata.get_source_building_count(hex2dec("BB3500AF")))
    grid_logic_var.LARGE_WOOD_COUNT    = (sc4game.automata.get_source_building_count(hex2dec("BB3500B0")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B1")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B2")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B3")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B4")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B5")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B6")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B7")))
    grid_logic_var.LARGE_C_COAL_COUNT  = (sc4game.automata.get_source_building_count(hex2dec("BB3500B8")) + sc4game.automata.get_source_building_count(hex2dec("BB3500B9")) + sc4game.automata.get_source_building_count(hex2dec("BB3500BA")) + sc4game.automata.get_source_building_count(hex2dec("BB3500BB")) + sc4game.automata.get_source_building_count(hex2dec("BB3500BC")) + sc4game.automata.get_source_building_count(hex2dec("BB3500BD")) + sc4game.automata.get_source_building_count(hex2dec("BB3500BE")) + sc4game.automata.get_source_building_count(hex2dec("BB3500BF")))
    grid_logic_var.LARGE_COAL_COUNT    = (sc4game.automata.get_source_building_count(hex2dec("BB3500C0")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C1")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C2")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C3")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C4")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C5")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C6")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C7")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C8")) + sc4game.automata.get_source_building_count(hex2dec("BB3500C9")) + sc4game.automata.get_source_building_count(hex2dec("BB3500CA")) + sc4game.automata.get_source_building_count(hex2dec("BB3500CB")) + sc4game.automata.get_source_building_count(hex2dec("BB3500CC")) + sc4game.automata.get_source_building_count(hex2dec("BB3500CD")) + sc4game.automata.get_source_building_count(hex2dec("BB3500CE")) + sc4game.automata.get_source_building_count(hex2dec("BB3500CF")))
    grid_logic_var.LARGE_WASTE_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB3500D0")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D1")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D2")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D3")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D4")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D5")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D6")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D7")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D8")) + sc4game.automata.get_source_building_count(hex2dec("BB3500D9")) + sc4game.automata.get_source_building_count(hex2dec("BB3500DA")) + sc4game.automata.get_source_building_count(hex2dec("BB3500DB")) + sc4game.automata.get_source_building_count(hex2dec("BB3500DC")) + sc4game.automata.get_source_building_count(hex2dec("BB3500DD")) + sc4game.automata.get_source_building_count(hex2dec("BB3500DE")) + sc4game.automata.get_source_building_count(hex2dec("BB3500DF")))
    grid_logic_var.LARGE_HYDRO_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB3500E0")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E1")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E2")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E3")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E4")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E5")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E6")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E7")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E8")) + sc4game.automata.get_source_building_count(hex2dec("BB3500E9")) + sc4game.automata.get_source_building_count(hex2dec("BB3500EA")) + sc4game.automata.get_source_building_count(hex2dec("BB3500EB")) + sc4game.automata.get_source_building_count(hex2dec("BB3500EC")) + sc4game.automata.get_source_building_count(hex2dec("BB3500ED")) + sc4game.automata.get_source_building_count(hex2dec("BB3500EE")) + sc4game.automata.get_source_building_count(hex2dec("BB3500EF")))
    grid_logic_var.LARGE_OTHER_I_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3500F0")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F1")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F2")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F3")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F4")))
    grid_logic_var.LARGE_OTHER_B_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3500F5")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F6")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F7")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F8")) + sc4game.automata.get_source_building_count(hex2dec("BB3500F9")))
    grid_logic_var.LARGE_OTHER_P_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3500FA")) + sc4game.automata.get_source_building_count(hex2dec("BB3500FB")) + sc4game.automata.get_source_building_count(hex2dec("BB3500FC")) + sc4game.automata.get_source_building_count(hex2dec("BB3500FD")) + sc4game.automata.get_source_building_count(hex2dec("BB3500FE")))
    grid_logic_var.BASE_GENERATE_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3500FF")) + sc4game.automata.get_source_building_count(hex2dec("BB3501FF")))
    grid_logic_var.NG_GENERATOR_COUNT  = (sc4game.automata.get_source_building_count(hex2dec("BB350100")) + sc4game.automata.get_source_building_count(hex2dec("BB350101")) + sc4game.automata.get_source_building_count(hex2dec("BB350102")) + sc4game.automata.get_source_building_count(hex2dec("BB350103")) + sc4game.automata.get_source_building_count(hex2dec("BB350104")) + sc4game.automata.get_source_building_count(hex2dec("BB350105")) + sc4game.automata.get_source_building_count(hex2dec("BB350106")) + sc4game.automata.get_source_building_count(hex2dec("BB350107")) + sc4game.automata.get_source_building_count(hex2dec("BB350108")) + sc4game.automata.get_source_building_count(hex2dec("BB350109")) + sc4game.automata.get_source_building_count(hex2dec("BB35010A")) + sc4game.automata.get_source_building_count(hex2dec("BB35010B")) + sc4game.automata.get_source_building_count(hex2dec("BB35010C")) + sc4game.automata.get_source_building_count(hex2dec("BB35010D")) + sc4game.automata.get_source_building_count(hex2dec("BB35010E")) + sc4game.automata.get_source_building_count(hex2dec("BB35010F")))
    grid_logic_var.WIND_GENERATE_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB350110")) + sc4game.automata.get_source_building_count(hex2dec("BB350111")) + sc4game.automata.get_source_building_count(hex2dec("BB350112")) + sc4game.automata.get_source_building_count(hex2dec("BB350113")) + sc4game.automata.get_source_building_count(hex2dec("BB350114")) + sc4game.automata.get_source_building_count(hex2dec("BB350115")) + sc4game.automata.get_source_building_count(hex2dec("BB350116")) + sc4game.automata.get_source_building_count(hex2dec("BB350117")) + sc4game.automata.get_source_building_count(hex2dec("BB350118")) + sc4game.automata.get_source_building_count(hex2dec("BB350119")) + sc4game.automata.get_source_building_count(hex2dec("BB35011A")) + sc4game.automata.get_source_building_count(hex2dec("BB35011B")) + sc4game.automata.get_source_building_count(hex2dec("BB35011C")) + sc4game.automata.get_source_building_count(hex2dec("BB35011D")) + sc4game.automata.get_source_building_count(hex2dec("BB35011E")) + sc4game.automata.get_source_building_count(hex2dec("BB35011F")))
    grid_logic_var.TRANSMISSION_COUNT  = (sc4game.automata.get_source_building_count(hex2dec("BB350120")) + sc4game.automata.get_source_building_count(hex2dec("BB350121")) + sc4game.automata.get_source_building_count(hex2dec("BB350122")) + sc4game.automata.get_source_building_count(hex2dec("BB350123")) + sc4game.automata.get_source_building_count(hex2dec("BB350124")) + sc4game.automata.get_source_building_count(hex2dec("BB350125")) + sc4game.automata.get_source_building_count(hex2dec("BB350126")) + sc4game.automata.get_source_building_count(hex2dec("BB350127")) + sc4game.automata.get_source_building_count(hex2dec("BB350128")) + sc4game.automata.get_source_building_count(hex2dec("BB350129")) + sc4game.automata.get_source_building_count(hex2dec("BB35012A")) + sc4game.automata.get_source_building_count(hex2dec("BB35012B")) + sc4game.automata.get_source_building_count(hex2dec("BB35012C")) + sc4game.automata.get_source_building_count(hex2dec("BB35012D")) + sc4game.automata.get_source_building_count(hex2dec("BB35012E")) + sc4game.automata.get_source_building_count(hex2dec("BB35012F")))
    grid_logic_var.DISTRIBUTE_COUNT_B  = (sc4game.automata.get_source_building_count(hex2dec("BB350130")) + sc4game.automata.get_source_building_count(hex2dec("BB350131")) + sc4game.automata.get_source_building_count(hex2dec("BB350132")) + sc4game.automata.get_source_building_count(hex2dec("BB350133")) + sc4game.automata.get_source_building_count(hex2dec("BB350134")) + sc4game.automata.get_source_building_count(hex2dec("BB350135")) + sc4game.automata.get_source_building_count(hex2dec("BB350136")) + sc4game.automata.get_source_building_count(hex2dec("BB350137")) + sc4game.automata.get_source_building_count(hex2dec("BB350138")) + sc4game.automata.get_source_building_count(hex2dec("BB350139")) + sc4game.automata.get_source_building_count(hex2dec("BB35013A")) + sc4game.automata.get_source_building_count(hex2dec("BB35013B")) + sc4game.automata.get_source_building_count(hex2dec("BB35013C")) + sc4game.automata.get_source_building_count(hex2dec("BB35013D")) + sc4game.automata.get_source_building_count(hex2dec("BB35013E")) + sc4game.automata.get_source_building_count(hex2dec("BB35013F")))
    grid_logic_var.MISC_ELEC_F_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB350140")) + sc4game.automata.get_source_building_count(hex2dec("BB350141")) + sc4game.automata.get_source_building_count(hex2dec("BB350142")) + sc4game.automata.get_source_building_count(hex2dec("BB350143")) + sc4game.automata.get_source_building_count(hex2dec("BB350144")) + sc4game.automata.get_source_building_count(hex2dec("BB350145")) + sc4game.automata.get_source_building_count(hex2dec("BB350146")) + sc4game.automata.get_source_building_count(hex2dec("BB350147")) + sc4game.automata.get_source_building_count(hex2dec("BB350148")) + sc4game.automata.get_source_building_count(hex2dec("BB350149")) + sc4game.automata.get_source_building_count(hex2dec("BB35014A")) + sc4game.automata.get_source_building_count(hex2dec("BB35014B")) + sc4game.automata.get_source_building_count(hex2dec("BB35014C")) + sc4game.automata.get_source_building_count(hex2dec("BB35014D")) + sc4game.automata.get_source_building_count(hex2dec("BB35014E")) + sc4game.automata.get_source_building_count(hex2dec("BB35014F")))
    grid_logic_var.SMALL_SOLAR_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB350150")) + sc4game.automata.get_source_building_count(hex2dec("BB350151")) + sc4game.automata.get_source_building_count(hex2dec("BB350152")) + sc4game.automata.get_source_building_count(hex2dec("BB350153")) + sc4game.automata.get_source_building_count(hex2dec("BB350154")) + sc4game.automata.get_source_building_count(hex2dec("BB350155")) + sc4game.automata.get_source_building_count(hex2dec("BB350156")) + sc4game.automata.get_source_building_count(hex2dec("BB350157")) + sc4game.automata.get_source_building_count(hex2dec("BB350158")) + sc4game.automata.get_source_building_count(hex2dec("BB350159")) + sc4game.automata.get_source_building_count(hex2dec("BB35015A")) + sc4game.automata.get_source_building_count(hex2dec("BB35015B")) + sc4game.automata.get_source_building_count(hex2dec("BB35015C")) + sc4game.automata.get_source_building_count(hex2dec("BB35015D")) + sc4game.automata.get_source_building_count(hex2dec("BB35015E")) + sc4game.automata.get_source_building_count(hex2dec("BB35015F")) + grid_logic_var.STEPUP_TRANSFORMERS)
    grid_logic_var.SMALL_WIND_COUNT    = (sc4game.automata.get_source_building_count(hex2dec("BB350160")) + sc4game.automata.get_source_building_count(hex2dec("BB350161")) + sc4game.automata.get_source_building_count(hex2dec("BB350162")) + sc4game.automata.get_source_building_count(hex2dec("BB350163")) + sc4game.automata.get_source_building_count(hex2dec("BB350164")) + sc4game.automata.get_source_building_count(hex2dec("BB350165")) + sc4game.automata.get_source_building_count(hex2dec("BB350166")) + sc4game.automata.get_source_building_count(hex2dec("BB350167")) + sc4game.automata.get_source_building_count(hex2dec("BB350168")) + sc4game.automata.get_source_building_count(hex2dec("BB350169")) + sc4game.automata.get_source_building_count(hex2dec("BB35016A")) + sc4game.automata.get_source_building_count(hex2dec("BB35016B")) + sc4game.automata.get_source_building_count(hex2dec("BB35016C")) + sc4game.automata.get_source_building_count(hex2dec("BB35016D")) + sc4game.automata.get_source_building_count(hex2dec("BB35016E")) + sc4game.automata.get_source_building_count(hex2dec("BB35016F")))
    grid_logic_var.SMALL_GEO_COUNT     = (sc4game.automata.get_source_building_count(hex2dec("BB350170")) + sc4game.automata.get_source_building_count(hex2dec("BB350171")) + sc4game.automata.get_source_building_count(hex2dec("BB350172")) + sc4game.automata.get_source_building_count(hex2dec("BB350173")) + sc4game.automata.get_source_building_count(hex2dec("BB350174")) + sc4game.automata.get_source_building_count(hex2dec("BB350175")) + sc4game.automata.get_source_building_count(hex2dec("BB350176")) + sc4game.automata.get_source_building_count(hex2dec("BB350177")))
    grid_logic_var.SMALL_FISSION_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB350178")) + sc4game.automata.get_source_building_count(hex2dec("BB350179")) + sc4game.automata.get_source_building_count(hex2dec("BB35017A")) + sc4game.automata.get_source_building_count(hex2dec("BB35017B")) + sc4game.automata.get_source_building_count(hex2dec("BB35017C")) + sc4game.automata.get_source_building_count(hex2dec("BB35017D")) + sc4game.automata.get_source_building_count(hex2dec("BB35017E")) + sc4game.automata.get_source_building_count(hex2dec("BB35017F")))
    grid_logic_var.SMALL_FI_PEAK_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB350180")) + sc4game.automata.get_source_building_count(hex2dec("BB350181")) + sc4game.automata.get_source_building_count(hex2dec("BB350182")) + sc4game.automata.get_source_building_count(hex2dec("BB350183")) + sc4game.automata.get_source_building_count(hex2dec("BB350184")) + sc4game.automata.get_source_building_count(hex2dec("BB350185")) + sc4game.automata.get_source_building_count(hex2dec("BB350186")) + sc4game.automata.get_source_building_count(hex2dec("BB350187")))
    grid_logic_var.SMALL_FUSION_COUNT  = (sc4game.automata.get_source_building_count(hex2dec("BB350188")) + sc4game.automata.get_source_building_count(hex2dec("BB350189")) + sc4game.automata.get_source_building_count(hex2dec("BB35018A")) + sc4game.automata.get_source_building_count(hex2dec("BB35018B")) + sc4game.automata.get_source_building_count(hex2dec("BB35018C")) + sc4game.automata.get_source_building_count(hex2dec("BB35018D")) + sc4game.automata.get_source_building_count(hex2dec("BB35018E")) + sc4game.automata.get_source_building_count(hex2dec("BB35018F")))
    grid_logic_var.SMALL_OIL_COUNT     = (sc4game.automata.get_source_building_count(hex2dec("BB350190")) + sc4game.automata.get_source_building_count(hex2dec("BB350191")) + sc4game.automata.get_source_building_count(hex2dec("BB350192")) + sc4game.automata.get_source_building_count(hex2dec("BB350193")) + sc4game.automata.get_source_building_count(hex2dec("BB350194")) + sc4game.automata.get_source_building_count(hex2dec("BB350195")) + sc4game.automata.get_source_building_count(hex2dec("BB350196")) + sc4game.automata.get_source_building_count(hex2dec("BB350197")) + sc4game.automata.get_source_building_count(hex2dec("BB350198")) + sc4game.automata.get_source_building_count(hex2dec("BB350199")) + sc4game.automata.get_source_building_count(hex2dec("BB35019A")) + sc4game.automata.get_source_building_count(hex2dec("BB35019B")) + sc4game.automata.get_source_building_count(hex2dec("BB35019C")) + sc4game.automata.get_source_building_count(hex2dec("BB35019D")) + sc4game.automata.get_source_building_count(hex2dec("BB35019E")) + sc4game.automata.get_source_building_count(hex2dec("BB35019F")))
    grid_logic_var.SMALL_NAT_GAS_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3501A0")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A1")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A2")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A3")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A4")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A5")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A6")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A7")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A8")) + sc4game.automata.get_source_building_count(hex2dec("BB3501A9")) + sc4game.automata.get_source_building_count(hex2dec("BB3501AA")) + sc4game.automata.get_source_building_count(hex2dec("BB3501AB")) + sc4game.automata.get_source_building_count(hex2dec("BB3501AC")) + sc4game.automata.get_source_building_count(hex2dec("BB3501AD")) + sc4game.automata.get_source_building_count(hex2dec("BB3501AE")) + sc4game.automata.get_source_building_count(hex2dec("BB3501AF")))
    grid_logic_var.SMALL_WOOD_COUNT    = (sc4game.automata.get_source_building_count(hex2dec("BB3501B0")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B1")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B2")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B3")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B4")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B5")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B6")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B7")))
    grid_logic_var.SMALL_C_COAL_COUNT  = (sc4game.automata.get_source_building_count(hex2dec("BB3501B8")) + sc4game.automata.get_source_building_count(hex2dec("BB3501B9")) + sc4game.automata.get_source_building_count(hex2dec("BB3501BA")) + sc4game.automata.get_source_building_count(hex2dec("BB3501BB")) + sc4game.automata.get_source_building_count(hex2dec("BB3501BC")) + sc4game.automata.get_source_building_count(hex2dec("BB3501BD")) + sc4game.automata.get_source_building_count(hex2dec("BB3501BE")) + sc4game.automata.get_source_building_count(hex2dec("BB3501BF")))
    grid_logic_var.SMALL_COAL_COUNT    = (sc4game.automata.get_source_building_count(hex2dec("BB3501C0")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C1")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C2")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C3")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C4")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C5")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C6")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C7")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C8")) + sc4game.automata.get_source_building_count(hex2dec("BB3501C9")) + sc4game.automata.get_source_building_count(hex2dec("BB3501CA")) + sc4game.automata.get_source_building_count(hex2dec("BB3501CB")) + sc4game.automata.get_source_building_count(hex2dec("BB3501CC")) + sc4game.automata.get_source_building_count(hex2dec("BB3501CD")) + sc4game.automata.get_source_building_count(hex2dec("BB3501CE")) + sc4game.automata.get_source_building_count(hex2dec("BB3501CF")))
    grid_logic_var.SMALL_WASTE_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB3501D0")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D1")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D2")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D3")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D4")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D5")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D6")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D7")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D8")) + sc4game.automata.get_source_building_count(hex2dec("BB3501D9")) + sc4game.automata.get_source_building_count(hex2dec("BB3501DA")) + sc4game.automata.get_source_building_count(hex2dec("BB3501DB")) + sc4game.automata.get_source_building_count(hex2dec("BB3501DC")) + sc4game.automata.get_source_building_count(hex2dec("BB3501DD")) + sc4game.automata.get_source_building_count(hex2dec("BB3501DE")) + sc4game.automata.get_source_building_count(hex2dec("BB3501DF")))
    grid_logic_var.SMALL_HYDRO_COUNT   = (sc4game.automata.get_source_building_count(hex2dec("BB3501E0")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E1")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E2")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E3")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E4")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E5")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E6")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E7")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E8")) + sc4game.automata.get_source_building_count(hex2dec("BB3501E9")) + sc4game.automata.get_source_building_count(hex2dec("BB3501EA")) + sc4game.automata.get_source_building_count(hex2dec("BB3501EB")) + sc4game.automata.get_source_building_count(hex2dec("BB3501EC")) + sc4game.automata.get_source_building_count(hex2dec("BB3501ED")) + sc4game.automata.get_source_building_count(hex2dec("BB3501EE")) + sc4game.automata.get_source_building_count(hex2dec("BB3501EF")))
    grid_logic_var.SMALL_OTHER_I_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3501F0")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F1")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F2")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F3")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F4")))
    grid_logic_var.SMALL_OTHER_B_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3501F5")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F6")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F7")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F8")) + sc4game.automata.get_source_building_count(hex2dec("BB3501F9")))
    grid_logic_var.SMALL_OTHER_P_COUNT = (sc4game.automata.get_source_building_count(hex2dec("BB3501FA")) + sc4game.automata.get_source_building_count(hex2dec("BB3501FB")) + sc4game.automata.get_source_building_count(hex2dec("BB3501FC")) + sc4game.automata.get_source_building_count(hex2dec("BB3501FD")) + sc4game.automata.get_source_building_count(hex2dec("BB3501FE")))

    grid_logic_var.DISTRIBUTION_COUNT  = (grid_logic_var.DISTRIBUTE_COUNT_A  + grid_logic_var.DISTRIBUTE_COUNT_B)

    grid_logic_var.I_GENERATOR_COUNT   = (grid_logic_var.SOLAR_GENERAT_COUNT + grid_logic_var.WIND_GENERATE_COUNT)
    grid_logic_var.B_GENERATOR_COUNT   = (grid_logic_var.BASE_GENERATE_COUNT)
    grid_logic_var.P_GENERATOR_COUNT   = (grid_logic_var.OIL_GENERATOR_COUNT + grid_logic_var.NG_GENERATOR_COUNT)

    grid_logic_var.LARGE_OTHER_COUNT   = (grid_logic_var.LARGE_OTHER_I_COUNT + grid_logic_var.LARGE_OTHER_B_COUNT + grid_logic_var.LARGE_OTHER_P_COUNT)
    grid_logic_var.SMALL_OTHER_COUNT   = (grid_logic_var.SMALL_OTHER_I_COUNT + grid_logic_var.SMALL_OTHER_B_COUNT + grid_logic_var.SMALL_OTHER_P_COUNT)

    grid_logic_var.LARGE_INTERM_COUNT  = (grid_logic_var.LARGE_SOLAR_COUNT   + grid_logic_var.LARGE_WIND_COUNT    + grid_logic_var.LARGE_OTHER_I_COUNT)
    grid_logic_var.LARGE_BASE_COUNT    = (grid_logic_var.LARGE_GEO_COUNT     + grid_logic_var.LARGE_FISSION_COUNT + grid_logic_var.LARGE_WOOD_COUNT    + grid_logic_var.LARGE_C_COAL_COUNT  + grid_logic_var.LARGE_COAL_COUNT   + grid_logic_var.LARGE_WASTE_COUNT + grid_logic_var.LARGE_HYDRO_COUNT  + grid_logic_var.LARGE_OTHER_B_COUNT)
    grid_logic_var.LARGE_PEAK_COUNT    = (grid_logic_var.LARGE_FI_PEAK_COUNT + grid_logic_var.LARGE_FUSION_COUNT  + grid_logic_var.LARGE_OIL_COUNT     + grid_logic_var.LARGE_NAT_GAS_COUNT + grid_logic_var.LARGE_OTHER_P_COUNT)
    grid_logic_var.SMALL_INTERM_COUNT  = (grid_logic_var.SMALL_SOLAR_COUNT   + grid_logic_var.SMALL_WIND_COUNT    + grid_logic_var.SMALL_OTHER_I_COUNT)
    grid_logic_var.SMALL_BASE_COUNT    = (grid_logic_var.SMALL_GEO_COUNT     + grid_logic_var.SMALL_FISSION_COUNT + grid_logic_var.SMALL_WOOD_COUNT    + grid_logic_var.SMALL_C_COAL_COUNT  + grid_logic_var.SMALL_COAL_COUNT   + grid_logic_var.SMALL_WASTE_COUNT + grid_logic_var.SMALL_HYDRO_COUNT  + grid_logic_var.SMALL_OTHER_B_COUNT)
    grid_logic_var.SMALL_PEAK_COUNT    = (grid_logic_var.SMALL_FI_PEAK_COUNT + grid_logic_var.SMALL_FUSION_COUNT  + grid_logic_var.SMALL_OIL_COUNT     + grid_logic_var.SMALL_NAT_GAS_COUNT + grid_logic_var.SMALL_OTHER_P_COUNT)

    grid_logic_var.LARGE_POWER_COUNT   = (grid_logic_var.LARGE_INTERM_COUNT  + grid_logic_var.LARGE_BASE_COUNT    + grid_logic_var.LARGE_PEAK_COUNT)
    grid_logic_var.SMALL_POWER_COUNT   = (grid_logic_var.SMALL_INTERM_COUNT  + grid_logic_var.SMALL_BASE_COUNT    + grid_logic_var.SMALL_PEAK_COUNT)

-- Special section to total power storage stacks (no in-game use; strictly for ease of accounting)
    grid_logic_var.BATTERY_COUNT       = ((sc4game.automata.get_source_building_count(hex2dec("BB350040")) * power_storage_stacks.ID_BB350040) + (sc4game.automata.get_source_building_count(hex2dec("BB350041")) * power_storage_stacks.ID_BB350041) + (sc4game.automata.get_source_building_count(hex2dec("BB350042")) * power_storage_stacks.ID_BB350042) + (sc4game.automata.get_source_building_count(hex2dec("BB350043")) * power_storage_stacks.ID_BB350043) + (sc4game.automata.get_source_building_count(hex2dec("BB350044")) * power_storage_stacks.ID_BB350044) + (sc4game.automata.get_source_building_count(hex2dec("BB350045")) * power_storage_stacks.ID_BB350045) + (sc4game.automata.get_source_building_count(hex2dec("BB350046")) * power_storage_stacks.ID_BB350046) + (sc4game.automata.get_source_building_count(hex2dec("BB350047")) * power_storage_stacks.ID_BB350047) + (sc4game.automata.get_source_building_count(hex2dec("BB350048")) * power_storage_stacks.ID_BB350048) + (sc4game.automata.get_source_building_count(hex2dec("BB350049")) * power_storage_stacks.ID_BB350049) + (sc4game.automata.get_source_building_count(hex2dec("BB35004A")) * power_storage_stacks.ID_BB35004A) + (sc4game.automata.get_source_building_count(hex2dec("BB35004B")) * power_storage_stacks.ID_BB35004B) + (sc4game.automata.get_source_building_count(hex2dec("BB35004C")) * power_storage_stacks.ID_BB35004C) + (sc4game.automata.get_source_building_count(hex2dec("BB35004D")) * power_storage_stacks.ID_BB35004D) + (sc4game.automata.get_source_building_count(hex2dec("BB35004E")) * power_storage_stacks.ID_BB35004E) + (sc4game.automata.get_source_building_count(hex2dec("BB35004F")) * power_storage_stacks.ID_BB35004F))

-- This section counts unsupported power plants based on the Power Plant Type flag in the lot's Building Exemplar
    grid_logic_var.UNS_COAL_COUNT      = (game.g_power_plant_count_coal    - (grid_logic_var.LARGE_WOOD_COUNT    + grid_logic_var.SMALL_WOOD_COUNT    + grid_logic_var.LARGE_C_COAL_COUNT  + grid_logic_var.SMALL_C_COAL_COUNT  + grid_logic_var.LARGE_COAL_COUNT  + grid_logic_var.SMALL_COAL_COUNT))
    grid_logic_var.UNS_NAT_GAS_COUNT   = (game.g_power_plant_count_gas     - (grid_logic_var.LARGE_NAT_GAS_COUNT + grid_logic_var.SMALL_NAT_GAS_COUNT + grid_logic_var.NG_GENERATOR_COUNT))
    grid_logic_var.UNS_OIL_COUNT       = (game.g_power_plant_count_oil     - (grid_logic_var.LARGE_OIL_COUNT     + grid_logic_var.SMALL_OIL_COUNT     + grid_logic_var.OIL_GENERATOR_COUNT))
    grid_logic_var.UNS_WIND_COUNT      = (game.g_power_plant_count_wind    - (grid_logic_var.LARGE_WIND_COUNT    + grid_logic_var.SMALL_WIND_COUNT    + grid_logic_var.WIND_GENERATE_COUNT))
    grid_logic_var.UNS_SOLAR_COUNT     = (game.g_power_plant_count_solar   - (grid_logic_var.LARGE_SOLAR_COUNT   + grid_logic_var.SMALL_SOLAR_COUNT   + grid_logic_var.SOLAR_GENERAT_COUNT + (grid_logic_var.STEPUP_TRANSFORMERS*127)))
    grid_logic_var.UNS_FISSION_COUNT   = (game.g_power_plant_count_nuclear - (grid_logic_var.LARGE_FISSION_COUNT + grid_logic_var.SMALL_FISSION_COUNT + grid_logic_var.LARGE_FI_PEAK_COUNT + grid_logic_var.SMALL_FI_PEAK_COUNT))
    grid_logic_var.UNS_WASTE_COUNT     = (game.g_power_plant_count_waste   - (grid_logic_var.LARGE_WASTE_COUNT   + grid_logic_var.SMALL_WASTE_COUNT))
    grid_logic_var.UNS_FUSION_COUNT    = (game.g_power_plant_count_fusion  - (grid_logic_var.LARGE_FUSION_COUNT  + grid_logic_var.SMALL_FUSION_COUNT))
    grid_logic_var.UNS_OTHER_COUNT     = (game.g_power_plant_count         - (grid_logic_var.LARGE_GEO_COUNT     + grid_logic_var.SMALL_GEO_COUNT     + grid_logic_var.LARGE_HYDRO_COUNT   + grid_logic_var.SMALL_HYDRO_COUNT   + game.g_power_plant_count_coal    + game.g_power_plant_count_gas      + game.g_power_plant_count_oil    + game.g_power_plant_count_wind + game.g_power_plant_count_solar + game.g_power_plant_count_nuclear + game.g_power_plant_count_waste + game.g_power_plant_count_fusion))
    grid_logic_var.UNS_PLANT_COUNT     = (grid_logic_var.UNS_COAL_COUNT    + grid_logic_var.UNS_NAT_GAS_COUNT    + grid_logic_var.UNS_OIL_COUNT       + grid_logic_var.UNS_WIND_COUNT      + grid_logic_var.UNS_SOLAR_COUNT     + grid_logic_var.UNS_FISSION_COUNT + grid_logic_var.UNS_WASTE_COUNT    + grid_logic_var.UNS_FUSION_COUNT + grid_logic_var.UNS_OTHER_COUNT)

-- Total kVA of each grid section by type --
    grid_logic_var.TRANSFORMER_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB350020"))*kva_rating.ID_BB350020) + (sc4game.automata.get_source_building_count(hex2dec("BB350021"))*kva_rating.ID_BB350021) + (sc4game.automata.get_source_building_count(hex2dec("BB350022"))*kva_rating.ID_BB350022) + (sc4game.automata.get_source_building_count(hex2dec("BB350023"))*kva_rating.ID_BB350023) + (sc4game.automata.get_source_building_count(hex2dec("BB350024"))*kva_rating.ID_BB350024) + (sc4game.automata.get_source_building_count(hex2dec("BB350025"))*kva_rating.ID_BB350025) + (sc4game.automata.get_source_building_count(hex2dec("BB350026"))*kva_rating.ID_BB350026) + (sc4game.automata.get_source_building_count(hex2dec("BB350027"))*kva_rating.ID_BB350027) + (sc4game.automata.get_source_building_count(hex2dec("BB350028"))*kva_rating.ID_BB350028) + (sc4game.automata.get_source_building_count(hex2dec("BB350029"))*kva_rating.ID_BB350029) + (sc4game.automata.get_source_building_count(hex2dec("BB35002A"))*kva_rating.ID_BB35002A) + (sc4game.automata.get_source_building_count(hex2dec("BB35002B"))*kva_rating.ID_BB35002B) + (sc4game.automata.get_source_building_count(hex2dec("BB35002C"))*kva_rating.ID_BB35002C) + (sc4game.automata.get_source_building_count(hex2dec("BB35002D"))*kva_rating.ID_BB35002D) + (sc4game.automata.get_source_building_count(hex2dec("BB35002E"))*kva_rating.ID_BB35002E) + (sc4game.automata.get_source_building_count(hex2dec("BB35002F"))*kva_rating.ID_BB35002F))
    grid_logic_var.DISTRIBUTE_RATING_A = ((sc4game.automata.get_source_building_count(hex2dec("BB350030"))*kva_rating.ID_BB350030) + (sc4game.automata.get_source_building_count(hex2dec("BB350031"))*kva_rating.ID_BB350031) + (sc4game.automata.get_source_building_count(hex2dec("BB350032"))*kva_rating.ID_BB350032) + (sc4game.automata.get_source_building_count(hex2dec("BB350033"))*kva_rating.ID_BB350033) + (sc4game.automata.get_source_building_count(hex2dec("BB350034"))*kva_rating.ID_BB350034) + (sc4game.automata.get_source_building_count(hex2dec("BB350035"))*kva_rating.ID_BB350035) + (sc4game.automata.get_source_building_count(hex2dec("BB350036"))*kva_rating.ID_BB350036) + (sc4game.automata.get_source_building_count(hex2dec("BB350037"))*kva_rating.ID_BB350037) + (sc4game.automata.get_source_building_count(hex2dec("BB350038"))*kva_rating.ID_BB350038) + (sc4game.automata.get_source_building_count(hex2dec("BB350039"))*kva_rating.ID_BB350039) + (sc4game.automata.get_source_building_count(hex2dec("BB35003A"))*kva_rating.ID_BB35003A) + (sc4game.automata.get_source_building_count(hex2dec("BB35003B"))*kva_rating.ID_BB35003B) + (sc4game.automata.get_source_building_count(hex2dec("BB35003C"))*kva_rating.ID_BB35003C) + (sc4game.automata.get_source_building_count(hex2dec("BB35003D"))*kva_rating.ID_BB35003D) + (sc4game.automata.get_source_building_count(hex2dec("BB35003E"))*kva_rating.ID_BB35003E) + (sc4game.automata.get_source_building_count(hex2dec("BB35003F"))*kva_rating.ID_BB35003F))
    grid_logic_var.POWER_STORE_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB350040"))*kva_rating.ID_BB350040) + (sc4game.automata.get_source_building_count(hex2dec("BB350041"))*kva_rating.ID_BB350041) + (sc4game.automata.get_source_building_count(hex2dec("BB350042"))*kva_rating.ID_BB350042) + (sc4game.automata.get_source_building_count(hex2dec("BB350043"))*kva_rating.ID_BB350043) + (sc4game.automata.get_source_building_count(hex2dec("BB350044"))*kva_rating.ID_BB350044) + (sc4game.automata.get_source_building_count(hex2dec("BB350045"))*kva_rating.ID_BB350045) + (sc4game.automata.get_source_building_count(hex2dec("BB350046"))*kva_rating.ID_BB350046) + (sc4game.automata.get_source_building_count(hex2dec("BB350047"))*kva_rating.ID_BB350047) + (sc4game.automata.get_source_building_count(hex2dec("BB350048"))*kva_rating.ID_BB350048) + (sc4game.automata.get_source_building_count(hex2dec("BB350049"))*kva_rating.ID_BB350049) + (sc4game.automata.get_source_building_count(hex2dec("BB35004A"))*kva_rating.ID_BB35004A) + (sc4game.automata.get_source_building_count(hex2dec("BB35004B"))*kva_rating.ID_BB35004B) + (sc4game.automata.get_source_building_count(hex2dec("BB35004C"))*kva_rating.ID_BB35004C) + (sc4game.automata.get_source_building_count(hex2dec("BB35004D"))*kva_rating.ID_BB35004D) + (sc4game.automata.get_source_building_count(hex2dec("BB35004E"))*kva_rating.ID_BB35004E) + (sc4game.automata.get_source_building_count(hex2dec("BB35004F"))*kva_rating.ID_BB35004F))
    grid_logic_var.LARGE_SOLAR_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB350050"))*kva_rating.ID_BB350050) + (sc4game.automata.get_source_building_count(hex2dec("BB350051"))*kva_rating.ID_BB350051) + (sc4game.automata.get_source_building_count(hex2dec("BB350052"))*kva_rating.ID_BB350052) + (sc4game.automata.get_source_building_count(hex2dec("BB350053"))*kva_rating.ID_BB350053) + (sc4game.automata.get_source_building_count(hex2dec("BB350054"))*kva_rating.ID_BB350054) + (sc4game.automata.get_source_building_count(hex2dec("BB350055"))*kva_rating.ID_BB350055) + (sc4game.automata.get_source_building_count(hex2dec("BB350056"))*kva_rating.ID_BB350056) + (sc4game.automata.get_source_building_count(hex2dec("BB350057"))*kva_rating.ID_BB350057) + (sc4game.automata.get_source_building_count(hex2dec("BB350058"))*kva_rating.ID_BB350058) + (sc4game.automata.get_source_building_count(hex2dec("BB350059"))*kva_rating.ID_BB350059) + (sc4game.automata.get_source_building_count(hex2dec("BB35005A"))*kva_rating.ID_BB35005A) + (sc4game.automata.get_source_building_count(hex2dec("BB35005B"))*kva_rating.ID_BB35005B) + (sc4game.automata.get_source_building_count(hex2dec("BB35005C"))*kva_rating.ID_BB35005C) + (sc4game.automata.get_source_building_count(hex2dec("BB35005D"))*kva_rating.ID_BB35005D) + (sc4game.automata.get_source_building_count(hex2dec("BB35005E"))*kva_rating.ID_BB35005E) + (sc4game.automata.get_source_building_count(hex2dec("BB35005F"))*kva_rating.ID_BB35005F))
    grid_logic_var.LARGE_WIND_RATING   = ((sc4game.automata.get_source_building_count(hex2dec("BB350060"))*kva_rating.ID_BB350060) + (sc4game.automata.get_source_building_count(hex2dec("BB350061"))*kva_rating.ID_BB350061) + (sc4game.automata.get_source_building_count(hex2dec("BB350062"))*kva_rating.ID_BB350062) + (sc4game.automata.get_source_building_count(hex2dec("BB350063"))*kva_rating.ID_BB350063) + (sc4game.automata.get_source_building_count(hex2dec("BB350064"))*kva_rating.ID_BB350064) + (sc4game.automata.get_source_building_count(hex2dec("BB350065"))*kva_rating.ID_BB350065) + (sc4game.automata.get_source_building_count(hex2dec("BB350066"))*kva_rating.ID_BB350066) + (sc4game.automata.get_source_building_count(hex2dec("BB350067"))*kva_rating.ID_BB350067) + (sc4game.automata.get_source_building_count(hex2dec("BB350068"))*kva_rating.ID_BB350068) + (sc4game.automata.get_source_building_count(hex2dec("BB350069"))*kva_rating.ID_BB350069) + (sc4game.automata.get_source_building_count(hex2dec("BB35006A"))*kva_rating.ID_BB35006A) + (sc4game.automata.get_source_building_count(hex2dec("BB35006B"))*kva_rating.ID_BB35006B) + (sc4game.automata.get_source_building_count(hex2dec("BB35006C"))*kva_rating.ID_BB35006C) + (sc4game.automata.get_source_building_count(hex2dec("BB35006D"))*kva_rating.ID_BB35006D) + (sc4game.automata.get_source_building_count(hex2dec("BB35006E"))*kva_rating.ID_BB35006E) + (sc4game.automata.get_source_building_count(hex2dec("BB35006F"))*kva_rating.ID_BB35006F))
    grid_logic_var.LARGE_GEO_RATING    = ((sc4game.automata.get_source_building_count(hex2dec("BB350070"))*kva_rating.ID_BB350070) + (sc4game.automata.get_source_building_count(hex2dec("BB350071"))*kva_rating.ID_BB350071) + (sc4game.automata.get_source_building_count(hex2dec("BB350072"))*kva_rating.ID_BB350072) + (sc4game.automata.get_source_building_count(hex2dec("BB350073"))*kva_rating.ID_BB350073) + (sc4game.automata.get_source_building_count(hex2dec("BB350074"))*kva_rating.ID_BB350074) + (sc4game.automata.get_source_building_count(hex2dec("BB350075"))*kva_rating.ID_BB350075) + (sc4game.automata.get_source_building_count(hex2dec("BB350076"))*kva_rating.ID_BB350076) + (sc4game.automata.get_source_building_count(hex2dec("BB350077"))*kva_rating.ID_BB350077))
    grid_logic_var.LARGE_FISION_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350078"))*kva_rating.ID_BB350078) + (sc4game.automata.get_source_building_count(hex2dec("BB350079"))*kva_rating.ID_BB350079) + (sc4game.automata.get_source_building_count(hex2dec("BB35007A"))*kva_rating.ID_BB35007A) + (sc4game.automata.get_source_building_count(hex2dec("BB35007B"))*kva_rating.ID_BB35007B) + (sc4game.automata.get_source_building_count(hex2dec("BB35007C"))*kva_rating.ID_BB35007C) + (sc4game.automata.get_source_building_count(hex2dec("BB35007D"))*kva_rating.ID_BB35007D) + (sc4game.automata.get_source_building_count(hex2dec("BB35007E"))*kva_rating.ID_BB35007E) + (sc4game.automata.get_source_building_count(hex2dec("BB35007F"))*kva_rating.ID_BB35007F))
    grid_logic_var.LARGE_FI_FIS_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350080"))*kva_rating.ID_BB350080) + (sc4game.automata.get_source_building_count(hex2dec("BB350081"))*kva_rating.ID_BB350081) + (sc4game.automata.get_source_building_count(hex2dec("BB350082"))*kva_rating.ID_BB350082) + (sc4game.automata.get_source_building_count(hex2dec("BB350083"))*kva_rating.ID_BB350083) + (sc4game.automata.get_source_building_count(hex2dec("BB350084"))*kva_rating.ID_BB350084) + (sc4game.automata.get_source_building_count(hex2dec("BB350085"))*kva_rating.ID_BB350085) + (sc4game.automata.get_source_building_count(hex2dec("BB350086"))*kva_rating.ID_BB350086) + (sc4game.automata.get_source_building_count(hex2dec("BB350087"))*kva_rating.ID_BB350087))
    grid_logic_var.LARGE_FUSION_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350088"))*kva_rating.ID_BB350088) + (sc4game.automata.get_source_building_count(hex2dec("BB350089"))*kva_rating.ID_BB350089) + (sc4game.automata.get_source_building_count(hex2dec("BB35008A"))*kva_rating.ID_BB35008A) + (sc4game.automata.get_source_building_count(hex2dec("BB35008B"))*kva_rating.ID_BB35008B) + (sc4game.automata.get_source_building_count(hex2dec("BB35008C"))*kva_rating.ID_BB35008C) + (sc4game.automata.get_source_building_count(hex2dec("BB35008D"))*kva_rating.ID_BB35008D) + (sc4game.automata.get_source_building_count(hex2dec("BB35008E"))*kva_rating.ID_BB35008E) + (sc4game.automata.get_source_building_count(hex2dec("BB35008F"))*kva_rating.ID_BB35008F))
    grid_logic_var.LARGE_OIL_RATING    = ((sc4game.automata.get_source_building_count(hex2dec("BB350090"))*kva_rating.ID_BB350090) + (sc4game.automata.get_source_building_count(hex2dec("BB350091"))*kva_rating.ID_BB350091) + (sc4game.automata.get_source_building_count(hex2dec("BB350092"))*kva_rating.ID_BB350092) + (sc4game.automata.get_source_building_count(hex2dec("BB350093"))*kva_rating.ID_BB350093) + (sc4game.automata.get_source_building_count(hex2dec("BB350094"))*kva_rating.ID_BB350094) + (sc4game.automata.get_source_building_count(hex2dec("BB350095"))*kva_rating.ID_BB350095) + (sc4game.automata.get_source_building_count(hex2dec("BB350096"))*kva_rating.ID_BB350096) + (sc4game.automata.get_source_building_count(hex2dec("BB350097"))*kva_rating.ID_BB350097) + (sc4game.automata.get_source_building_count(hex2dec("BB350098"))*kva_rating.ID_BB350098) + (sc4game.automata.get_source_building_count(hex2dec("BB350099"))*kva_rating.ID_BB350099) + (sc4game.automata.get_source_building_count(hex2dec("BB35009A"))*kva_rating.ID_BB35009A) + (sc4game.automata.get_source_building_count(hex2dec("BB35009B"))*kva_rating.ID_BB35009B) + (sc4game.automata.get_source_building_count(hex2dec("BB35009C"))*kva_rating.ID_BB35009C) + (sc4game.automata.get_source_building_count(hex2dec("BB35009D"))*kva_rating.ID_BB35009D) + (sc4game.automata.get_source_building_count(hex2dec("BB35009E"))*kva_rating.ID_BB35009E) + (sc4game.automata.get_source_building_count(hex2dec("BB35009F"))*kva_rating.ID_BB35009F))
    grid_logic_var.LARGE_NATGAS_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3500A0"))*kva_rating.ID_BB3500A0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A1"))*kva_rating.ID_BB3500A1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A2"))*kva_rating.ID_BB3500A2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A3"))*kva_rating.ID_BB3500A3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A4"))*kva_rating.ID_BB3500A4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A5"))*kva_rating.ID_BB3500A5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A6"))*kva_rating.ID_BB3500A6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A7"))*kva_rating.ID_BB3500A7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A8"))*kva_rating.ID_BB3500A8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A9"))*kva_rating.ID_BB3500A9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AA"))*kva_rating.ID_BB3500AA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AB"))*kva_rating.ID_BB3500AB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AC"))*kva_rating.ID_BB3500AC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AD"))*kva_rating.ID_BB3500AD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AE"))*kva_rating.ID_BB3500AE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AF"))*kva_rating.ID_BB3500AF))
    grid_logic_var.LARGE_WOOD_RATING   = ((sc4game.automata.get_source_building_count(hex2dec("BB3500B0"))*kva_rating.ID_BB3500B0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B1"))*kva_rating.ID_BB3500B1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B2"))*kva_rating.ID_BB3500B2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B3"))*kva_rating.ID_BB3500B3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B4"))*kva_rating.ID_BB3500B4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B5"))*kva_rating.ID_BB3500B5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B6"))*kva_rating.ID_BB3500B6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B7"))*kva_rating.ID_BB3500B7))
    grid_logic_var.LARGE_CCOAL_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB3500B8"))*kva_rating.ID_BB3500B8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B9"))*kva_rating.ID_BB3500B9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BA"))*kva_rating.ID_BB3500BA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BB"))*kva_rating.ID_BB3500BB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BC"))*kva_rating.ID_BB3500BC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BD"))*kva_rating.ID_BB3500BD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BE"))*kva_rating.ID_BB3500BE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BF"))*kva_rating.ID_BB3500BF))
    grid_logic_var.LARGE_COAL_RATING   = ((sc4game.automata.get_source_building_count(hex2dec("BB3500C0"))*kva_rating.ID_BB3500C0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C1"))*kva_rating.ID_BB3500C1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C2"))*kva_rating.ID_BB3500C2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C3"))*kva_rating.ID_BB3500C3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C4"))*kva_rating.ID_BB3500C4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C5"))*kva_rating.ID_BB3500C5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C6"))*kva_rating.ID_BB3500C6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C7"))*kva_rating.ID_BB3500C7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C8"))*kva_rating.ID_BB3500C8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C9"))*kva_rating.ID_BB3500C9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CA"))*kva_rating.ID_BB3500CA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CB"))*kva_rating.ID_BB3500CB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CC"))*kva_rating.ID_BB3500CC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CD"))*kva_rating.ID_BB3500CD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CE"))*kva_rating.ID_BB3500CE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CF"))*kva_rating.ID_BB3500CF))
    grid_logic_var.LARGE_WASTE_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB3500D0"))*kva_rating.ID_BB3500D0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D1"))*kva_rating.ID_BB3500D1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D2"))*kva_rating.ID_BB3500D2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D3"))*kva_rating.ID_BB3500D3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D4"))*kva_rating.ID_BB3500D4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D5"))*kva_rating.ID_BB3500D5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D6"))*kva_rating.ID_BB3500D6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D7"))*kva_rating.ID_BB3500D7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D8"))*kva_rating.ID_BB3500D8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D9"))*kva_rating.ID_BB3500D9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DA"))*kva_rating.ID_BB3500DA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DB"))*kva_rating.ID_BB3500DB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DC"))*kva_rating.ID_BB3500DC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DD"))*kva_rating.ID_BB3500DD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DE"))*kva_rating.ID_BB3500DE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DF"))*kva_rating.ID_BB3500DF))
    grid_logic_var.LARGE_HYDRO_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB3500E0"))*kva_rating.ID_BB3500E0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E1"))*kva_rating.ID_BB3500E1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E2"))*kva_rating.ID_BB3500E2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E3"))*kva_rating.ID_BB3500E3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E4"))*kva_rating.ID_BB3500E4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E5"))*kva_rating.ID_BB3500E5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E6"))*kva_rating.ID_BB3500E6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E7"))*kva_rating.ID_BB3500E7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E8"))*kva_rating.ID_BB3500E8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E9"))*kva_rating.ID_BB3500E9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EA"))*kva_rating.ID_BB3500EA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EB"))*kva_rating.ID_BB3500EB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EC"))*kva_rating.ID_BB3500EC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500ED"))*kva_rating.ID_BB3500ED) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EE"))*kva_rating.ID_BB3500EE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EF"))*kva_rating.ID_BB3500EF))
    grid_logic_var.LARGE_OTHERI_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3500F0"))*kva_rating.ID_BB3500F0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F1"))*kva_rating.ID_BB3500F1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F2"))*kva_rating.ID_BB3500F2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F3"))*kva_rating.ID_BB3500F3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F4"))*kva_rating.ID_BB3500F4))
    grid_logic_var.LARGE_OTHERB_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3500F5"))*kva_rating.ID_BB3500F5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F6"))*kva_rating.ID_BB3500F6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F7"))*kva_rating.ID_BB3500F7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F8"))*kva_rating.ID_BB3500F8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F9"))*kva_rating.ID_BB3500F9))
    grid_logic_var.LARGE_OTHERP_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3500FA"))*kva_rating.ID_BB3500FA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FB"))*kva_rating.ID_BB3500FB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FC"))*kva_rating.ID_BB3500FC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FD"))*kva_rating.ID_BB3500FD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FE"))*kva_rating.ID_BB3500FE))
    grid_logic_var.TRANSMISSION_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350120"))*kva_rating.ID_BB350120) + (sc4game.automata.get_source_building_count(hex2dec("BB350121"))*kva_rating.ID_BB350121) + (sc4game.automata.get_source_building_count(hex2dec("BB350122"))*kva_rating.ID_BB350122) + (sc4game.automata.get_source_building_count(hex2dec("BB350123"))*kva_rating.ID_BB350123) + (sc4game.automata.get_source_building_count(hex2dec("BB350124"))*kva_rating.ID_BB350124) + (sc4game.automata.get_source_building_count(hex2dec("BB350125"))*kva_rating.ID_BB350125) + (sc4game.automata.get_source_building_count(hex2dec("BB350126"))*kva_rating.ID_BB350126) + (sc4game.automata.get_source_building_count(hex2dec("BB350127"))*kva_rating.ID_BB350127) + (sc4game.automata.get_source_building_count(hex2dec("BB350128"))*kva_rating.ID_BB350128) + (sc4game.automata.get_source_building_count(hex2dec("BB350129"))*kva_rating.ID_BB350129) + (sc4game.automata.get_source_building_count(hex2dec("BB35012A"))*kva_rating.ID_BB35012A) + (sc4game.automata.get_source_building_count(hex2dec("BB35012B"))*kva_rating.ID_BB35012B) + (sc4game.automata.get_source_building_count(hex2dec("BB35012C"))*kva_rating.ID_BB35012C) + (sc4game.automata.get_source_building_count(hex2dec("BB35012D"))*kva_rating.ID_BB35012D) + (sc4game.automata.get_source_building_count(hex2dec("BB35012E"))*kva_rating.ID_BB35012E) + (sc4game.automata.get_source_building_count(hex2dec("BB35012F"))*kva_rating.ID_BB35012F))
    grid_logic_var.DISTRIBUTE_RATING_B = ((sc4game.automata.get_source_building_count(hex2dec("BB350130"))*kva_rating.ID_BB350130) + (sc4game.automata.get_source_building_count(hex2dec("BB350131"))*kva_rating.ID_BB350131) + (sc4game.automata.get_source_building_count(hex2dec("BB350132"))*kva_rating.ID_BB350132) + (sc4game.automata.get_source_building_count(hex2dec("BB350133"))*kva_rating.ID_BB350133) + (sc4game.automata.get_source_building_count(hex2dec("BB350134"))*kva_rating.ID_BB350134) + (sc4game.automata.get_source_building_count(hex2dec("BB350135"))*kva_rating.ID_BB350135) + (sc4game.automata.get_source_building_count(hex2dec("BB350136"))*kva_rating.ID_BB350136) + (sc4game.automata.get_source_building_count(hex2dec("BB350137"))*kva_rating.ID_BB350137) + (sc4game.automata.get_source_building_count(hex2dec("BB350138"))*kva_rating.ID_BB350138) + (sc4game.automata.get_source_building_count(hex2dec("BB350139"))*kva_rating.ID_BB350139) + (sc4game.automata.get_source_building_count(hex2dec("BB35013A"))*kva_rating.ID_BB35013A) + (sc4game.automata.get_source_building_count(hex2dec("BB35013B"))*kva_rating.ID_BB35013B) + (sc4game.automata.get_source_building_count(hex2dec("BB35013C"))*kva_rating.ID_BB35013C) + (sc4game.automata.get_source_building_count(hex2dec("BB35013D"))*kva_rating.ID_BB35013D) + (sc4game.automata.get_source_building_count(hex2dec("BB35013E"))*kva_rating.ID_BB35013E) + (sc4game.automata.get_source_building_count(hex2dec("BB35013F"))*kva_rating.ID_BB35013F))
    grid_logic_var.MISC_ELEC_F_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB350140"))*kva_rating.ID_BB350140) + (sc4game.automata.get_source_building_count(hex2dec("BB350141"))*kva_rating.ID_BB350141) + (sc4game.automata.get_source_building_count(hex2dec("BB350142"))*kva_rating.ID_BB350142) + (sc4game.automata.get_source_building_count(hex2dec("BB350143"))*kva_rating.ID_BB350143) + (sc4game.automata.get_source_building_count(hex2dec("BB350144"))*kva_rating.ID_BB350144) + (sc4game.automata.get_source_building_count(hex2dec("BB350145"))*kva_rating.ID_BB350145) + (sc4game.automata.get_source_building_count(hex2dec("BB350146"))*kva_rating.ID_BB350146) + (sc4game.automata.get_source_building_count(hex2dec("BB350147"))*kva_rating.ID_BB350147) + (sc4game.automata.get_source_building_count(hex2dec("BB350148"))*kva_rating.ID_BB350148) + (sc4game.automata.get_source_building_count(hex2dec("BB350149"))*kva_rating.ID_BB350149) + (sc4game.automata.get_source_building_count(hex2dec("BB35014A"))*kva_rating.ID_BB35014A) + (sc4game.automata.get_source_building_count(hex2dec("BB35014B"))*kva_rating.ID_BB35014B) + (sc4game.automata.get_source_building_count(hex2dec("BB35014C"))*kva_rating.ID_BB35014C) + (sc4game.automata.get_source_building_count(hex2dec("BB35014D"))*kva_rating.ID_BB35014D) + (sc4game.automata.get_source_building_count(hex2dec("BB35014E"))*kva_rating.ID_BB35014E) + (sc4game.automata.get_source_building_count(hex2dec("BB35014F"))*kva_rating.ID_BB35014F))
    grid_logic_var.SMALL_SOLAR_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB350150"))*kva_rating.ID_BB350150) + (sc4game.automata.get_source_building_count(hex2dec("BB350151"))*kva_rating.ID_BB350151) + (sc4game.automata.get_source_building_count(hex2dec("BB350152"))*kva_rating.ID_BB350152) + (sc4game.automata.get_source_building_count(hex2dec("BB350153"))*kva_rating.ID_BB350153) + (sc4game.automata.get_source_building_count(hex2dec("BB350154"))*kva_rating.ID_BB350154) + (sc4game.automata.get_source_building_count(hex2dec("BB350155"))*kva_rating.ID_BB350155) + (sc4game.automata.get_source_building_count(hex2dec("BB350156"))*kva_rating.ID_BB350156) + (sc4game.automata.get_source_building_count(hex2dec("BB350157"))*kva_rating.ID_BB350157) + (sc4game.automata.get_source_building_count(hex2dec("BB350158"))*kva_rating.ID_BB350158) + (sc4game.automata.get_source_building_count(hex2dec("BB350159"))*kva_rating.ID_BB350159) + (sc4game.automata.get_source_building_count(hex2dec("BB35015A"))*kva_rating.ID_BB35015A) + (sc4game.automata.get_source_building_count(hex2dec("BB35015B"))*kva_rating.ID_BB35015B) + (sc4game.automata.get_source_building_count(hex2dec("BB35015C"))*kva_rating.ID_BB35015C) + (sc4game.automata.get_source_building_count(hex2dec("BB35015D"))*kva_rating.ID_BB35015D) + (sc4game.automata.get_source_building_count(hex2dec("BB35015E"))*kva_rating.ID_BB35015E) + (sc4game.automata.get_source_building_count(hex2dec("BB35015F"))*kva_rating.ID_BB35015F))
    grid_logic_var.SMALL_WIND_RATING   = ((sc4game.automata.get_source_building_count(hex2dec("BB350160"))*kva_rating.ID_BB350160) + (sc4game.automata.get_source_building_count(hex2dec("BB350161"))*kva_rating.ID_BB350161) + (sc4game.automata.get_source_building_count(hex2dec("BB350162"))*kva_rating.ID_BB350162) + (sc4game.automata.get_source_building_count(hex2dec("BB350163"))*kva_rating.ID_BB350163) + (sc4game.automata.get_source_building_count(hex2dec("BB350164"))*kva_rating.ID_BB350164) + (sc4game.automata.get_source_building_count(hex2dec("BB350165"))*kva_rating.ID_BB350165) + (sc4game.automata.get_source_building_count(hex2dec("BB350166"))*kva_rating.ID_BB350166) + (sc4game.automata.get_source_building_count(hex2dec("BB350167"))*kva_rating.ID_BB350167) + (sc4game.automata.get_source_building_count(hex2dec("BB350168"))*kva_rating.ID_BB350168) + (sc4game.automata.get_source_building_count(hex2dec("BB350169"))*kva_rating.ID_BB350169) + (sc4game.automata.get_source_building_count(hex2dec("BB35016A"))*kva_rating.ID_BB35016A) + (sc4game.automata.get_source_building_count(hex2dec("BB35016B"))*kva_rating.ID_BB35016B) + (sc4game.automata.get_source_building_count(hex2dec("BB35016C"))*kva_rating.ID_BB35016C) + (sc4game.automata.get_source_building_count(hex2dec("BB35016D"))*kva_rating.ID_BB35016D) + (sc4game.automata.get_source_building_count(hex2dec("BB35016E"))*kva_rating.ID_BB35016E) + (sc4game.automata.get_source_building_count(hex2dec("BB35016F"))*kva_rating.ID_BB35016F))
    grid_logic_var.SMALL_GEO_RATING    = ((sc4game.automata.get_source_building_count(hex2dec("BB350170"))*kva_rating.ID_BB350170) + (sc4game.automata.get_source_building_count(hex2dec("BB350171"))*kva_rating.ID_BB350171) + (sc4game.automata.get_source_building_count(hex2dec("BB350172"))*kva_rating.ID_BB350172) + (sc4game.automata.get_source_building_count(hex2dec("BB350173"))*kva_rating.ID_BB350173) + (sc4game.automata.get_source_building_count(hex2dec("BB350174"))*kva_rating.ID_BB350174) + (sc4game.automata.get_source_building_count(hex2dec("BB350175"))*kva_rating.ID_BB350175) + (sc4game.automata.get_source_building_count(hex2dec("BB350176"))*kva_rating.ID_BB350176) + (sc4game.automata.get_source_building_count(hex2dec("BB350177"))*kva_rating.ID_BB350177))
    grid_logic_var.SMALL_FISION_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350178"))*kva_rating.ID_BB350178) + (sc4game.automata.get_source_building_count(hex2dec("BB350179"))*kva_rating.ID_BB350179) + (sc4game.automata.get_source_building_count(hex2dec("BB35017A"))*kva_rating.ID_BB35017A) + (sc4game.automata.get_source_building_count(hex2dec("BB35017B"))*kva_rating.ID_BB35017B) + (sc4game.automata.get_source_building_count(hex2dec("BB35017C"))*kva_rating.ID_BB35017C) + (sc4game.automata.get_source_building_count(hex2dec("BB35017D"))*kva_rating.ID_BB35017D) + (sc4game.automata.get_source_building_count(hex2dec("BB35017E"))*kva_rating.ID_BB35017E) + (sc4game.automata.get_source_building_count(hex2dec("BB35017F"))*kva_rating.ID_BB35017F))
    grid_logic_var.SMALL_FI_FIS_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350180"))*kva_rating.ID_BB350180) + (sc4game.automata.get_source_building_count(hex2dec("BB350181"))*kva_rating.ID_BB350181) + (sc4game.automata.get_source_building_count(hex2dec("BB350182"))*kva_rating.ID_BB350182) + (sc4game.automata.get_source_building_count(hex2dec("BB350183"))*kva_rating.ID_BB350183) + (sc4game.automata.get_source_building_count(hex2dec("BB350184"))*kva_rating.ID_BB350184) + (sc4game.automata.get_source_building_count(hex2dec("BB350185"))*kva_rating.ID_BB350185) + (sc4game.automata.get_source_building_count(hex2dec("BB350186"))*kva_rating.ID_BB350186) + (sc4game.automata.get_source_building_count(hex2dec("BB350187"))*kva_rating.ID_BB350187))
    grid_logic_var.SMALL_FUSION_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB350188"))*kva_rating.ID_BB350188) + (sc4game.automata.get_source_building_count(hex2dec("BB350189"))*kva_rating.ID_BB350189) + (sc4game.automata.get_source_building_count(hex2dec("BB35018A"))*kva_rating.ID_BB35018A) + (sc4game.automata.get_source_building_count(hex2dec("BB35018B"))*kva_rating.ID_BB35018B) + (sc4game.automata.get_source_building_count(hex2dec("BB35018C"))*kva_rating.ID_BB35018C) + (sc4game.automata.get_source_building_count(hex2dec("BB35018D"))*kva_rating.ID_BB35018D) + (sc4game.automata.get_source_building_count(hex2dec("BB35018E"))*kva_rating.ID_BB35018E) + (sc4game.automata.get_source_building_count(hex2dec("BB35018F"))*kva_rating.ID_BB35018F))
    grid_logic_var.SMALL_OIL_RATING    = ((sc4game.automata.get_source_building_count(hex2dec("BB350190"))*kva_rating.ID_BB350190) + (sc4game.automata.get_source_building_count(hex2dec("BB350191"))*kva_rating.ID_BB350191) + (sc4game.automata.get_source_building_count(hex2dec("BB350192"))*kva_rating.ID_BB350192) + (sc4game.automata.get_source_building_count(hex2dec("BB350193"))*kva_rating.ID_BB350193) + (sc4game.automata.get_source_building_count(hex2dec("BB350194"))*kva_rating.ID_BB350194) + (sc4game.automata.get_source_building_count(hex2dec("BB350195"))*kva_rating.ID_BB350195) + (sc4game.automata.get_source_building_count(hex2dec("BB350196"))*kva_rating.ID_BB350196) + (sc4game.automata.get_source_building_count(hex2dec("BB350197"))*kva_rating.ID_BB350197) + (sc4game.automata.get_source_building_count(hex2dec("BB350198"))*kva_rating.ID_BB350198) + (sc4game.automata.get_source_building_count(hex2dec("BB350199"))*kva_rating.ID_BB350199) + (sc4game.automata.get_source_building_count(hex2dec("BB35019A"))*kva_rating.ID_BB35019A) + (sc4game.automata.get_source_building_count(hex2dec("BB35019B"))*kva_rating.ID_BB35019B) + (sc4game.automata.get_source_building_count(hex2dec("BB35019C"))*kva_rating.ID_BB35019C) + (sc4game.automata.get_source_building_count(hex2dec("BB35019D"))*kva_rating.ID_BB35019D) + (sc4game.automata.get_source_building_count(hex2dec("BB35019E"))*kva_rating.ID_BB35019E) + (sc4game.automata.get_source_building_count(hex2dec("BB35019F"))*kva_rating.ID_BB35019F))
    grid_logic_var.SMALL_NATGAS_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3501A0"))*kva_rating.ID_BB3501A0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A1"))*kva_rating.ID_BB3501A1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A2"))*kva_rating.ID_BB3501A2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A3"))*kva_rating.ID_BB3501A3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A4"))*kva_rating.ID_BB3501A4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A5"))*kva_rating.ID_BB3501A5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A6"))*kva_rating.ID_BB3501A6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A7"))*kva_rating.ID_BB3501A7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A8"))*kva_rating.ID_BB3501A8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A9"))*kva_rating.ID_BB3501A9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AA"))*kva_rating.ID_BB3501AA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AB"))*kva_rating.ID_BB3501AB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AC"))*kva_rating.ID_BB3501AC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AD"))*kva_rating.ID_BB3501AD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AE"))*kva_rating.ID_BB3501AE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AF"))*kva_rating.ID_BB3501AF))
    grid_logic_var.SMALL_WOOD_RATING   = ((sc4game.automata.get_source_building_count(hex2dec("BB3501B0"))*kva_rating.ID_BB3501B0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B1"))*kva_rating.ID_BB3501B1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B2"))*kva_rating.ID_BB3501B2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B3"))*kva_rating.ID_BB3501B3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B4"))*kva_rating.ID_BB3501B4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B5"))*kva_rating.ID_BB3501B5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B6"))*kva_rating.ID_BB3501B6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B7"))*kva_rating.ID_BB3501B7))
    grid_logic_var.SMALL_CCOAL_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB3501B8"))*kva_rating.ID_BB3501B8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B9"))*kva_rating.ID_BB3501B9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BA"))*kva_rating.ID_BB3501BA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BB"))*kva_rating.ID_BB3501BB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BC"))*kva_rating.ID_BB3501BC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BD"))*kva_rating.ID_BB3501BD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BE"))*kva_rating.ID_BB3501BE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BF"))*kva_rating.ID_BB3501BF))
    grid_logic_var.SMALL_COAL_RATING   = ((sc4game.automata.get_source_building_count(hex2dec("BB3501C0"))*kva_rating.ID_BB3501C0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C1"))*kva_rating.ID_BB3501C1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C2"))*kva_rating.ID_BB3501C2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C3"))*kva_rating.ID_BB3501C3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C4"))*kva_rating.ID_BB3501C4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C5"))*kva_rating.ID_BB3501C5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C6"))*kva_rating.ID_BB3501C6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C7"))*kva_rating.ID_BB3501C7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C8"))*kva_rating.ID_BB3501C8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C9"))*kva_rating.ID_BB3501C9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CA"))*kva_rating.ID_BB3501CA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CB"))*kva_rating.ID_BB3501CB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CC"))*kva_rating.ID_BB3501CC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CD"))*kva_rating.ID_BB3501CD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CE"))*kva_rating.ID_BB3501CE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CF"))*kva_rating.ID_BB3501CF))
    grid_logic_var.SMALL_WASTE_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB3501D0"))*kva_rating.ID_BB3501D0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D1"))*kva_rating.ID_BB3501D1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D2"))*kva_rating.ID_BB3501D2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D3"))*kva_rating.ID_BB3501D3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D4"))*kva_rating.ID_BB3501D4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D5"))*kva_rating.ID_BB3501D5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D6"))*kva_rating.ID_BB3501D6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D7"))*kva_rating.ID_BB3501D7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D8"))*kva_rating.ID_BB3501D8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D9"))*kva_rating.ID_BB3501D9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DA"))*kva_rating.ID_BB3501DA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DB"))*kva_rating.ID_BB3501DB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DC"))*kva_rating.ID_BB3501DC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DD"))*kva_rating.ID_BB3501DD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DE"))*kva_rating.ID_BB3501DE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DF"))*kva_rating.ID_BB3501DF))
    grid_logic_var.SMALL_HYDRO_RATING  = ((sc4game.automata.get_source_building_count(hex2dec("BB3501E0"))*kva_rating.ID_BB3501E0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E1"))*kva_rating.ID_BB3501E1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E2"))*kva_rating.ID_BB3501E2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E3"))*kva_rating.ID_BB3501E3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E4"))*kva_rating.ID_BB3501E4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E5"))*kva_rating.ID_BB3501E5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E6"))*kva_rating.ID_BB3501E6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E7"))*kva_rating.ID_BB3501E7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E8"))*kva_rating.ID_BB3501E8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E9"))*kva_rating.ID_BB3501E9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EA"))*kva_rating.ID_BB3501EA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EB"))*kva_rating.ID_BB3501EB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EC"))*kva_rating.ID_BB3501EC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501ED"))*kva_rating.ID_BB3501ED) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EE"))*kva_rating.ID_BB3501EE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EF"))*kva_rating.ID_BB3501EF))
    grid_logic_var.SMALL_OTHERI_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3501F0"))*kva_rating.ID_BB3501F0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F1"))*kva_rating.ID_BB3501F1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F2"))*kva_rating.ID_BB3501F2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F3"))*kva_rating.ID_BB3501F3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F4"))*kva_rating.ID_BB3501F4))
    grid_logic_var.SMALL_OTHERB_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3501F5"))*kva_rating.ID_BB3501F5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F6"))*kva_rating.ID_BB3501F6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F7"))*kva_rating.ID_BB3501F7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F8"))*kva_rating.ID_BB3501F8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F9"))*kva_rating.ID_BB3501F9))
    grid_logic_var.SMALL_OTHERP_RATING = ((sc4game.automata.get_source_building_count(hex2dec("BB3501FA"))*kva_rating.ID_BB3501FA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FB"))*kva_rating.ID_BB3501FB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FC"))*kva_rating.ID_BB3501FC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FD"))*kva_rating.ID_BB3501FD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FE"))*kva_rating.ID_BB3501FE))

    grid_logic_var.DISTRIBUTION_RATING = (grid_logic_var.DISTRIBUTE_RATING_A + grid_logic_var.DISTRIBUTE_RATING_B)
    grid_logic_var.DISTRIB_RATING_CAP  = (math.min(grid_logic_var.DISTRIBUTION_RATING,grid_logic_var.TRANSFORMER_RATING))

    grid_logic_var.LARGE_I_RATING      = (grid_logic_var.LARGE_SOLAR_RATING  + grid_logic_var.LARGE_WIND_RATING   + grid_logic_var.LARGE_OTHERI_RATING) -- Total kVA of all large Intermediate power plants --
    grid_logic_var.LARGE_B_RATING      = (grid_logic_var.LARGE_GEO_RATING    + grid_logic_var.LARGE_FISION_RATING + grid_logic_var.LARGE_WOOD_RATING   + grid_logic_var.LARGE_CCOAL_RATING  + grid_logic_var.LARGE_COAL_RATING   + grid_logic_var.LARGE_WASTE_RATING + grid_logic_var.LARGE_HYDRO_RATING + grid_logic_var.LARGE_OTHERB_RATING) -- Total kVA of all large Base power plants --
    grid_logic_var.LARGE_P_RATING      = (grid_logic_var.LARGE_FI_FIS_RATING + grid_logic_var.LARGE_FUSION_RATING + grid_logic_var.LARGE_OIL_RATING    + grid_logic_var.LARGE_NATGAS_RATING + grid_logic_var.LARGE_OTHERP_RATING) -- Total kVA of all large Peak power plants --
    grid_logic_var.SMALL_I_RATING      = (grid_logic_var.SMALL_SOLAR_RATING  + grid_logic_var.SMALL_WIND_RATING   + grid_logic_var.SMALL_OTHERI_RATING) -- Total kVA of all small Intermediate power plants --
    grid_logic_var.SMALL_B_RATING      = (grid_logic_var.SMALL_GEO_RATING    + grid_logic_var.SMALL_FISION_RATING + grid_logic_var.SMALL_WOOD_RATING   + grid_logic_var.SMALL_CCOAL_RATING  + grid_logic_var.SMALL_COAL_RATING   + grid_logic_var.SMALL_WASTE_RATING + grid_logic_var.SMALL_HYDRO_RATING + grid_logic_var.SMALL_OTHERB_RATING) -- Total kVA of all small Base power plants --
    grid_logic_var.SMALL_P_RATING      = (grid_logic_var.SMALL_FI_FIS_RATING + grid_logic_var.SMALL_FUSION_RATING + grid_logic_var.SMALL_OIL_RATING    + grid_logic_var.SMALL_NATGAS_RATING + grid_logic_var.SMALL_OTHERP_RATING) -- Total kVA of all small Peak power plants --

    grid_logic_var.LARGE_PLANTS_RATING = (grid_logic_var.LARGE_I_RATING      + grid_logic_var.LARGE_B_RATING      + grid_logic_var.LARGE_P_RATING) -- Total kVA of all large power plants --
    grid_logic_var.SMALL_PLANTS_RATING = (grid_logic_var.SMALL_I_RATING      + grid_logic_var.SMALL_B_RATING      + grid_logic_var.SMALL_P_RATING      + grid_logic_var.MISC_ELEC_F_RATING) -- Total kVA of all small power plants and electrical features --
    grid_logic_var.LARGE_POWER_RATING  = (grid_logic_var.LARGE_PLANTS_RATING + (math.abs(game.trend_value(game_trends.G_POWER_IMPORTED,0) - game.trend_value(game_trends.G_POWER_EXPORTED,0))/0.584)) -- Add the difference between Imported and Exported Power to the grid load requirement. The factor of 0.584 applied to Imported/Exported power coverts the units from MWh/month to kVA assuming an average 0.8 Power Factor--

    grid_logic_var.TRANSMIT_AVAILABLE  = (math.min(grid_logic_var.TRANSMISSION_RATING,grid_logic_var.DISTRIBUTION_RATING - grid_logic_var.SMALL_PLANTS_RATING,grid_logic_var.TRANSFORMER_RATING - grid_logic_var.SMALL_PLANTS_RATING) - grid_logic_var.LARGE_POWER_RATING) -- This value gives the difference between the grid's current power production versus the grid's transmission capacity --
    grid_logic_var.DISTRIB_AVAILABLE   = (grid_logic_var.DISTRIB_RATING_CAP - (grid_logic_var.TRANSMISSION_RATING + grid_logic_var.SMALL_PLANTS_RATING)) --This value gives the difference between the grid's current transmission capacity and small power plant load versus the grid's distribution capacity --
    grid_logic_var.TRANSFORM_AVAILABLE = (grid_logic_var.TRANSFORMER_RATING - grid_logic_var.DISTRIBUTION_RATING) --This value gives the difference between the current distribution grid capacity versus the grid's transformer capacity --

-- Generates a City-wide average production capacity
    grid_logic_var.AVERAGE_PRODUCTION_CAPACITY = game.g_power_consumed/math.max(game.g_power_production_capacity,1)

-- Sets W2E MWh Output to equal 1/10th of garbage burned to match in-game effects
    grid_logic_var.L_WASTE_MAX_POWER   = ((sc4game.automata.get_source_building_count(hex2dec("BB3500D0"))*mwh_rating.ID_BB3500D0_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D1"))*mwh_rating.ID_BB3500D1_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D2"))*mwh_rating.ID_BB3500D2_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D3"))*mwh_rating.ID_BB3500D3_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D4"))*mwh_rating.ID_BB3500D4_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D5"))*mwh_rating.ID_BB3500D5_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D6"))*mwh_rating.ID_BB3500D6_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D7"))*mwh_rating.ID_BB3500D7_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D8"))*mwh_rating.ID_BB3500D8_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D9"))*mwh_rating.ID_BB3500D9_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DA"))*mwh_rating.ID_BB3500DA_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DB"))*mwh_rating.ID_BB3500DB_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DC"))*mwh_rating.ID_BB3500DC_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DD"))*mwh_rating.ID_BB3500DD_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DE"))*mwh_rating.ID_BB3500DE_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DF"))*mwh_rating.ID_BB3500DF_A))
    grid_logic_var.S_WASTE_MAX_POWER   = ((sc4game.automata.get_source_building_count(hex2dec("BB3501D0"))*mwh_rating.ID_BB3501D0_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D1"))*mwh_rating.ID_BB3501D1_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D2"))*mwh_rating.ID_BB3501D2_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D3"))*mwh_rating.ID_BB3501D3_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D4"))*mwh_rating.ID_BB3501D4_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D5"))*mwh_rating.ID_BB3501D5_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D6"))*mwh_rating.ID_BB3501D6_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D7"))*mwh_rating.ID_BB3501D7_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D8"))*mwh_rating.ID_BB3501D8_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D9"))*mwh_rating.ID_BB3501D9_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DA"))*mwh_rating.ID_BB3501DA_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DB"))*mwh_rating.ID_BB3501DB_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DC"))*mwh_rating.ID_BB3501DC_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DD"))*mwh_rating.ID_BB3501DD_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DE"))*mwh_rating.ID_BB3501DE_A) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DF"))*mwh_rating.ID_BB3501DF_A))
    mwh_rating.ID_BB3500D0 = (math.floor((mwh_rating.ID_BB3500D0_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D1 = (math.floor((mwh_rating.ID_BB3500D1_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D2 = (math.floor((mwh_rating.ID_BB3500D2_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D3 = (math.floor((mwh_rating.ID_BB3500D3_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D4 = (math.floor((mwh_rating.ID_BB3500D4_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D5 = (math.floor((mwh_rating.ID_BB3500D5_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D6 = (math.floor((mwh_rating.ID_BB3500D6_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D7 = (math.floor((mwh_rating.ID_BB3500D7_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D8 = (math.floor((mwh_rating.ID_BB3500D8_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500D9 = (math.floor((mwh_rating.ID_BB3500D9_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500DA = (math.floor((mwh_rating.ID_BB3500DA_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500DB = (math.floor((mwh_rating.ID_BB3500DB_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500DC = (math.floor((mwh_rating.ID_BB3500DC_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500DD = (math.floor((mwh_rating.ID_BB3500DD_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500DE = (math.floor((mwh_rating.ID_BB3500DE_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3500DF = (math.floor((mwh_rating.ID_BB3500DF_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D0 = (math.floor((mwh_rating.ID_BB3501D0_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D1 = (math.floor((mwh_rating.ID_BB3501D1_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D2 = (math.floor((mwh_rating.ID_BB3501D2_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D3 = (math.floor((mwh_rating.ID_BB3501D3_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D4 = (math.floor((mwh_rating.ID_BB3501D4_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D5 = (math.floor((mwh_rating.ID_BB3501D5_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D6 = (math.floor((mwh_rating.ID_BB3501D6_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D7 = (math.floor((mwh_rating.ID_BB3501D7_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D8 = (math.floor((mwh_rating.ID_BB3501D8_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501D9 = (math.floor((mwh_rating.ID_BB3501D9_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501DA = (math.floor((mwh_rating.ID_BB3501DA_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501DB = (math.floor((mwh_rating.ID_BB3501DB_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501DC = (math.floor((mwh_rating.ID_BB3501DC_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501DD = (math.floor((mwh_rating.ID_BB3501DD_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501DE = (math.floor((mwh_rating.ID_BB3501DE_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))
    mwh_rating.ID_BB3501DF = (math.floor((mwh_rating.ID_BB3501DF_A / math.max(grid_logic_var.L_WASTE_MAX_POWER + grid_logic_var.S_WASTE_MAX_POWER,1)*game.trend_value(game_trends.G_GARBAGE_TO_ENERGY,0)*0.1)+0.5))

-- Total MWh of each grid section by type --
    grid_logic_var.DIESEL_GENER_POWER  = ((sc4game.automata.get_source_building_count(hex2dec("BB350000"))*mwh_rating.ID_BB350000) + (sc4game.automata.get_source_building_count(hex2dec("BB350001"))*mwh_rating.ID_BB350001) + (sc4game.automata.get_source_building_count(hex2dec("BB350002"))*mwh_rating.ID_BB350002) + (sc4game.automata.get_source_building_count(hex2dec("BB350003"))*mwh_rating.ID_BB350003) + (sc4game.automata.get_source_building_count(hex2dec("BB350004"))*mwh_rating.ID_BB350004) + (sc4game.automata.get_source_building_count(hex2dec("BB350005"))*mwh_rating.ID_BB350005) + (sc4game.automata.get_source_building_count(hex2dec("BB350006"))*mwh_rating.ID_BB350006) + (sc4game.automata.get_source_building_count(hex2dec("BB350007"))*mwh_rating.ID_BB350007) + (sc4game.automata.get_source_building_count(hex2dec("BB350008"))*mwh_rating.ID_BB350008) + (sc4game.automata.get_source_building_count(hex2dec("BB350009"))*mwh_rating.ID_BB350009) + (sc4game.automata.get_source_building_count(hex2dec("BB35000A"))*mwh_rating.ID_BB35000A) + (sc4game.automata.get_source_building_count(hex2dec("BB35000B"))*mwh_rating.ID_BB35000B) + (sc4game.automata.get_source_building_count(hex2dec("BB35000C"))*mwh_rating.ID_BB35000C) + (sc4game.automata.get_source_building_count(hex2dec("BB35000D"))*mwh_rating.ID_BB35000D) + (sc4game.automata.get_source_building_count(hex2dec("BB35000E"))*mwh_rating.ID_BB35000E) + (sc4game.automata.get_source_building_count(hex2dec("BB35000F"))*mwh_rating.ID_BB35000F))
    grid_logic_var.SOLAR_GENERAT_POWER = ((grid_logic_var.PV_GENERATORS * mwh_rating.ID_BB350010)                                  + (sc4game.automata.get_source_building_count(hex2dec("BB350011"))*mwh_rating.ID_BB350011) + (sc4game.automata.get_source_building_count(hex2dec("BB350012"))*mwh_rating.ID_BB350012) + (sc4game.automata.get_source_building_count(hex2dec("BB350013"))*mwh_rating.ID_BB350013) + (sc4game.automata.get_source_building_count(hex2dec("BB350014"))*mwh_rating.ID_BB350014) + (sc4game.automata.get_source_building_count(hex2dec("BB350015"))*mwh_rating.ID_BB350015) + (sc4game.automata.get_source_building_count(hex2dec("BB350016"))*mwh_rating.ID_BB350016) + (sc4game.automata.get_source_building_count(hex2dec("BB350017"))*mwh_rating.ID_BB350017) + (sc4game.automata.get_source_building_count(hex2dec("BB350018"))*mwh_rating.ID_BB350018) + (sc4game.automata.get_source_building_count(hex2dec("BB350019"))*mwh_rating.ID_BB350019) + (sc4game.automata.get_source_building_count(hex2dec("BB35001A"))*mwh_rating.ID_BB35001A) + (sc4game.automata.get_source_building_count(hex2dec("BB35001B"))*mwh_rating.ID_BB35001B) + (sc4game.automata.get_source_building_count(hex2dec("BB35001C"))*mwh_rating.ID_BB35001C) + (sc4game.automata.get_source_building_count(hex2dec("BB35001D"))*mwh_rating.ID_BB35001D) + (sc4game.automata.get_source_building_count(hex2dec("BB35001E"))*mwh_rating.ID_BB35001E) + (sc4game.automata.get_source_building_count(hex2dec("BB35001F"))*mwh_rating.ID_BB35001F))
    grid_logic_var.BATTERY_P_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB350040"))*mwh_rating.ID_BB350040) + (sc4game.automata.get_source_building_count(hex2dec("BB350041"))*mwh_rating.ID_BB350041) + (sc4game.automata.get_source_building_count(hex2dec("BB350042"))*mwh_rating.ID_BB350042) + (sc4game.automata.get_source_building_count(hex2dec("BB350043"))*mwh_rating.ID_BB350043) + (sc4game.automata.get_source_building_count(hex2dec("BB350044"))*mwh_rating.ID_BB350044) + (sc4game.automata.get_source_building_count(hex2dec("BB350045"))*mwh_rating.ID_BB350045) + (sc4game.automata.get_source_building_count(hex2dec("BB350046"))*mwh_rating.ID_BB350046) + (sc4game.automata.get_source_building_count(hex2dec("BB350047"))*mwh_rating.ID_BB350047) + (sc4game.automata.get_source_building_count(hex2dec("BB350048"))*mwh_rating.ID_BB350048) + (sc4game.automata.get_source_building_count(hex2dec("BB350049"))*mwh_rating.ID_BB350049) + (sc4game.automata.get_source_building_count(hex2dec("BB35004A"))*mwh_rating.ID_BB35004A) + (sc4game.automata.get_source_building_count(hex2dec("BB35004B"))*mwh_rating.ID_BB35004B) + (sc4game.automata.get_source_building_count(hex2dec("BB35004C"))*mwh_rating.ID_BB35004C) + (sc4game.automata.get_source_building_count(hex2dec("BB35004D"))*mwh_rating.ID_BB35004D) + (sc4game.automata.get_source_building_count(hex2dec("BB35004E"))*mwh_rating.ID_BB35004E) + (sc4game.automata.get_source_building_count(hex2dec("BB35004F"))*mwh_rating.ID_BB35004F))
    grid_logic_var.L_SOLAR_POWER       = ((sc4game.automata.get_source_building_count(hex2dec("BB350050"))*mwh_rating.ID_BB350050) + (sc4game.automata.get_source_building_count(hex2dec("BB350051"))*mwh_rating.ID_BB350051) + (sc4game.automata.get_source_building_count(hex2dec("BB350052"))*mwh_rating.ID_BB350052) + (sc4game.automata.get_source_building_count(hex2dec("BB350053"))*mwh_rating.ID_BB350053) + (sc4game.automata.get_source_building_count(hex2dec("BB350054"))*mwh_rating.ID_BB350054) + (sc4game.automata.get_source_building_count(hex2dec("BB350055"))*mwh_rating.ID_BB350055) + (sc4game.automata.get_source_building_count(hex2dec("BB350056"))*mwh_rating.ID_BB350056) + (sc4game.automata.get_source_building_count(hex2dec("BB350057"))*mwh_rating.ID_BB350057) + (sc4game.automata.get_source_building_count(hex2dec("BB350058"))*mwh_rating.ID_BB350058) + (sc4game.automata.get_source_building_count(hex2dec("BB350059"))*mwh_rating.ID_BB350059) + (sc4game.automata.get_source_building_count(hex2dec("BB35005A"))*mwh_rating.ID_BB35005A) + (sc4game.automata.get_source_building_count(hex2dec("BB35005B"))*mwh_rating.ID_BB35005B) + (sc4game.automata.get_source_building_count(hex2dec("BB35005C"))*mwh_rating.ID_BB35005C) + (sc4game.automata.get_source_building_count(hex2dec("BB35005D"))*mwh_rating.ID_BB35005D) + (sc4game.automata.get_source_building_count(hex2dec("BB35005E"))*mwh_rating.ID_BB35005E) + (sc4game.automata.get_source_building_count(hex2dec("BB35005F"))*mwh_rating.ID_BB35005F))
    grid_logic_var.L_WIND_POWER        = ((sc4game.automata.get_source_building_count(hex2dec("BB350060"))*mwh_rating.ID_BB350060) + (sc4game.automata.get_source_building_count(hex2dec("BB350061"))*mwh_rating.ID_BB350061) + (sc4game.automata.get_source_building_count(hex2dec("BB350062"))*mwh_rating.ID_BB350062) + (sc4game.automata.get_source_building_count(hex2dec("BB350063"))*mwh_rating.ID_BB350063) + (sc4game.automata.get_source_building_count(hex2dec("BB350064"))*mwh_rating.ID_BB350064) + (sc4game.automata.get_source_building_count(hex2dec("BB350065"))*mwh_rating.ID_BB350065) + (sc4game.automata.get_source_building_count(hex2dec("BB350066"))*mwh_rating.ID_BB350066) + (sc4game.automata.get_source_building_count(hex2dec("BB350067"))*mwh_rating.ID_BB350067) + (sc4game.automata.get_source_building_count(hex2dec("BB350068"))*mwh_rating.ID_BB350068) + (sc4game.automata.get_source_building_count(hex2dec("BB350069"))*mwh_rating.ID_BB350069) + (sc4game.automata.get_source_building_count(hex2dec("BB35006A"))*mwh_rating.ID_BB35006A) + (sc4game.automata.get_source_building_count(hex2dec("BB35006B"))*mwh_rating.ID_BB35006B) + (sc4game.automata.get_source_building_count(hex2dec("BB35006C"))*mwh_rating.ID_BB35006C) + (sc4game.automata.get_source_building_count(hex2dec("BB35006D"))*mwh_rating.ID_BB35006D) + (sc4game.automata.get_source_building_count(hex2dec("BB35006E"))*mwh_rating.ID_BB35006E) + (sc4game.automata.get_source_building_count(hex2dec("BB35006F"))*mwh_rating.ID_BB35006F))
    grid_logic_var.L_GEOTHERMAL_POWER  = ((sc4game.automata.get_source_building_count(hex2dec("BB350070"))*mwh_rating.ID_BB350070) + (sc4game.automata.get_source_building_count(hex2dec("BB350071"))*mwh_rating.ID_BB350071) + (sc4game.automata.get_source_building_count(hex2dec("BB350072"))*mwh_rating.ID_BB350072) + (sc4game.automata.get_source_building_count(hex2dec("BB350073"))*mwh_rating.ID_BB350073) + (sc4game.automata.get_source_building_count(hex2dec("BB350074"))*mwh_rating.ID_BB350074) + (sc4game.automata.get_source_building_count(hex2dec("BB350075"))*mwh_rating.ID_BB350075) + (sc4game.automata.get_source_building_count(hex2dec("BB350076"))*mwh_rating.ID_BB350076) + (sc4game.automata.get_source_building_count(hex2dec("BB350077"))*mwh_rating.ID_BB350077))
    grid_logic_var.L_FISSION_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB350078"))*mwh_rating.ID_BB350078) + (sc4game.automata.get_source_building_count(hex2dec("BB350079"))*mwh_rating.ID_BB350079) + (sc4game.automata.get_source_building_count(hex2dec("BB35007A"))*mwh_rating.ID_BB35007A) + (sc4game.automata.get_source_building_count(hex2dec("BB35007B"))*mwh_rating.ID_BB35007B) + (sc4game.automata.get_source_building_count(hex2dec("BB35007C"))*mwh_rating.ID_BB35007C) + (sc4game.automata.get_source_building_count(hex2dec("BB35007D"))*mwh_rating.ID_BB35007D) + (sc4game.automata.get_source_building_count(hex2dec("BB35007E"))*mwh_rating.ID_BB35007E) + (sc4game.automata.get_source_building_count(hex2dec("BB35007F"))*mwh_rating.ID_BB35007F))
    grid_logic_var.L_FISSION_P_POWER   = ((sc4game.automata.get_source_building_count(hex2dec("BB350080"))*mwh_rating.ID_BB350080) + (sc4game.automata.get_source_building_count(hex2dec("BB350081"))*mwh_rating.ID_BB350081) + (sc4game.automata.get_source_building_count(hex2dec("BB350082"))*mwh_rating.ID_BB350082) + (sc4game.automata.get_source_building_count(hex2dec("BB350083"))*mwh_rating.ID_BB350083) + (sc4game.automata.get_source_building_count(hex2dec("BB350084"))*mwh_rating.ID_BB350084) + (sc4game.automata.get_source_building_count(hex2dec("BB350085"))*mwh_rating.ID_BB350085) + (sc4game.automata.get_source_building_count(hex2dec("BB350086"))*mwh_rating.ID_BB350086) + (sc4game.automata.get_source_building_count(hex2dec("BB350087"))*mwh_rating.ID_BB350087))
    grid_logic_var.L_FUSION_POWER      = ((sc4game.automata.get_source_building_count(hex2dec("BB350088"))*mwh_rating.ID_BB350088) + (sc4game.automata.get_source_building_count(hex2dec("BB350089"))*mwh_rating.ID_BB350089) + (sc4game.automata.get_source_building_count(hex2dec("BB35008A"))*mwh_rating.ID_BB35008A) + (sc4game.automata.get_source_building_count(hex2dec("BB35008B"))*mwh_rating.ID_BB35008B) + (sc4game.automata.get_source_building_count(hex2dec("BB35008C"))*mwh_rating.ID_BB35008C) + (sc4game.automata.get_source_building_count(hex2dec("BB35008D"))*mwh_rating.ID_BB35008D) + (sc4game.automata.get_source_building_count(hex2dec("BB35008E"))*mwh_rating.ID_BB35008E) + (sc4game.automata.get_source_building_count(hex2dec("BB35008F"))*mwh_rating.ID_BB35008F))
    grid_logic_var.L_OIL_POWER         = ((sc4game.automata.get_source_building_count(hex2dec("BB350090"))*mwh_rating.ID_BB350090) + (sc4game.automata.get_source_building_count(hex2dec("BB350091"))*mwh_rating.ID_BB350091) + (sc4game.automata.get_source_building_count(hex2dec("BB350092"))*mwh_rating.ID_BB350092) + (sc4game.automata.get_source_building_count(hex2dec("BB350093"))*mwh_rating.ID_BB350093) + (sc4game.automata.get_source_building_count(hex2dec("BB350094"))*mwh_rating.ID_BB350094) + (sc4game.automata.get_source_building_count(hex2dec("BB350095"))*mwh_rating.ID_BB350095) + (sc4game.automata.get_source_building_count(hex2dec("BB350096"))*mwh_rating.ID_BB350096) + (sc4game.automata.get_source_building_count(hex2dec("BB350097"))*mwh_rating.ID_BB350097) + (sc4game.automata.get_source_building_count(hex2dec("BB350098"))*mwh_rating.ID_BB350098) + (sc4game.automata.get_source_building_count(hex2dec("BB350099"))*mwh_rating.ID_BB350099) + (sc4game.automata.get_source_building_count(hex2dec("BB35009A"))*mwh_rating.ID_BB35009A) + (sc4game.automata.get_source_building_count(hex2dec("BB35009B"))*mwh_rating.ID_BB35009B) + (sc4game.automata.get_source_building_count(hex2dec("BB35009C"))*mwh_rating.ID_BB35009C) + (sc4game.automata.get_source_building_count(hex2dec("BB35009D"))*mwh_rating.ID_BB35009D) + (sc4game.automata.get_source_building_count(hex2dec("BB35009E"))*mwh_rating.ID_BB35009E) + (sc4game.automata.get_source_building_count(hex2dec("BB35009F"))*mwh_rating.ID_BB35009F))
    grid_logic_var.L_NAT_GAS_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3500A0"))*mwh_rating.ID_BB3500A0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A1"))*mwh_rating.ID_BB3500A1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A2"))*mwh_rating.ID_BB3500A2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A3"))*mwh_rating.ID_BB3500A3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A4"))*mwh_rating.ID_BB3500A4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A5"))*mwh_rating.ID_BB3500A5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A6"))*mwh_rating.ID_BB3500A6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A7"))*mwh_rating.ID_BB3500A7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A8"))*mwh_rating.ID_BB3500A8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500A9"))*mwh_rating.ID_BB3500A9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AA"))*mwh_rating.ID_BB3500AA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AB"))*mwh_rating.ID_BB3500AB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AC"))*mwh_rating.ID_BB3500AC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AD"))*mwh_rating.ID_BB3500AD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AE"))*mwh_rating.ID_BB3500AE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500AF"))*mwh_rating.ID_BB3500AF))
    grid_logic_var.L_WOOD_POWER        = ((sc4game.automata.get_source_building_count(hex2dec("BB3500B0"))*mwh_rating.ID_BB3500B0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B1"))*mwh_rating.ID_BB3500B1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B2"))*mwh_rating.ID_BB3500B2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B3"))*mwh_rating.ID_BB3500B3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B4"))*mwh_rating.ID_BB3500B4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B5"))*mwh_rating.ID_BB3500B5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B6"))*mwh_rating.ID_BB3500B6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B7"))*mwh_rating.ID_BB3500B7))
    grid_logic_var.L_CLEAN_COAL_POWER  = ((sc4game.automata.get_source_building_count(hex2dec("BB3500B8"))*mwh_rating.ID_BB3500B8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500B9"))*mwh_rating.ID_BB3500B9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BA"))*mwh_rating.ID_BB3500BA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BB"))*mwh_rating.ID_BB3500BB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BC"))*mwh_rating.ID_BB3500BC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BD"))*mwh_rating.ID_BB3500BD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BE"))*mwh_rating.ID_BB3500BE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500BF"))*mwh_rating.ID_BB3500BF))
    grid_logic_var.L_COAL_POWER        = ((sc4game.automata.get_source_building_count(hex2dec("BB3500C0"))*mwh_rating.ID_BB3500C0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C1"))*mwh_rating.ID_BB3500C1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C2"))*mwh_rating.ID_BB3500C2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C3"))*mwh_rating.ID_BB3500C3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C4"))*mwh_rating.ID_BB3500C4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C5"))*mwh_rating.ID_BB3500C5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C6"))*mwh_rating.ID_BB3500C6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C7"))*mwh_rating.ID_BB3500C7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C8"))*mwh_rating.ID_BB3500C8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500C9"))*mwh_rating.ID_BB3500C9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CA"))*mwh_rating.ID_BB3500CA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CB"))*mwh_rating.ID_BB3500CB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CC"))*mwh_rating.ID_BB3500CC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CD"))*mwh_rating.ID_BB3500CD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CE"))*mwh_rating.ID_BB3500CE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500CF"))*mwh_rating.ID_BB3500CF))
    grid_logic_var.L_WASTE_POWER       = ((sc4game.automata.get_source_building_count(hex2dec("BB3500D0"))*mwh_rating.ID_BB3500D0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D1"))*mwh_rating.ID_BB3500D1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D2"))*mwh_rating.ID_BB3500D2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D3"))*mwh_rating.ID_BB3500D3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D4"))*mwh_rating.ID_BB3500D4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D5"))*mwh_rating.ID_BB3500D5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D6"))*mwh_rating.ID_BB3500D6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D7"))*mwh_rating.ID_BB3500D7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D8"))*mwh_rating.ID_BB3500D8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500D9"))*mwh_rating.ID_BB3500D9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DA"))*mwh_rating.ID_BB3500DA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DB"))*mwh_rating.ID_BB3500DB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DC"))*mwh_rating.ID_BB3500DC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DD"))*mwh_rating.ID_BB3500DD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DE"))*mwh_rating.ID_BB3500DE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500DF"))*mwh_rating.ID_BB3500DF))
    grid_logic_var.L_HYDRO_POWER       = ((sc4game.automata.get_source_building_count(hex2dec("BB3500E0"))*mwh_rating.ID_BB3500E0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E1"))*mwh_rating.ID_BB3500E1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E2"))*mwh_rating.ID_BB3500E2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E3"))*mwh_rating.ID_BB3500E3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E4"))*mwh_rating.ID_BB3500E4) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E5"))*mwh_rating.ID_BB3500E5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E6"))*mwh_rating.ID_BB3500E6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E7"))*mwh_rating.ID_BB3500E7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E8"))*mwh_rating.ID_BB3500E8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500E9"))*mwh_rating.ID_BB3500E9) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EA"))*mwh_rating.ID_BB3500EA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EB"))*mwh_rating.ID_BB3500EB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EC"))*mwh_rating.ID_BB3500EC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500ED"))*mwh_rating.ID_BB3500ED) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EE"))*mwh_rating.ID_BB3500EE) + (sc4game.automata.get_source_building_count(hex2dec("BB3500EF"))*mwh_rating.ID_BB3500EF))
    grid_logic_var.L_OTHER_I_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3500F0"))*mwh_rating.ID_BB3500F0) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F1"))*mwh_rating.ID_BB3500F1) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F2"))*mwh_rating.ID_BB3500F2) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F3"))*mwh_rating.ID_BB3500F3) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F4"))*mwh_rating.ID_BB3500F4))
    grid_logic_var.L_OTHER_B_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3500F5"))*mwh_rating.ID_BB3500F5) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F6"))*mwh_rating.ID_BB3500F6) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F7"))*mwh_rating.ID_BB3500F7) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F8"))*mwh_rating.ID_BB3500F8) + (sc4game.automata.get_source_building_count(hex2dec("BB3500F9"))*mwh_rating.ID_BB3500F9))
    grid_logic_var.L_OTHER_P_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3500FA"))*mwh_rating.ID_BB3500FA) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FB"))*mwh_rating.ID_BB3500FB) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FC"))*mwh_rating.ID_BB3500FC) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FD"))*mwh_rating.ID_BB3500FD) + (sc4game.automata.get_source_building_count(hex2dec("BB3500FE"))*mwh_rating.ID_BB3500FE))
    grid_logic_var.BASE_GENERATE_POWER = ((sc4game.automata.get_source_building_count(hex2dec("BB3500FF"))*mwh_rating.ID_BB3500FF) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FF"))*mwh_rating.ID_BB3501FF))
    grid_logic_var.NG_GENERATOR_POWER  = ((sc4game.automata.get_source_building_count(hex2dec("BB350100"))*mwh_rating.ID_BB350100) + (sc4game.automata.get_source_building_count(hex2dec("BB350101"))*mwh_rating.ID_BB350101) + (sc4game.automata.get_source_building_count(hex2dec("BB350102"))*mwh_rating.ID_BB350102) + (sc4game.automata.get_source_building_count(hex2dec("BB350103"))*mwh_rating.ID_BB350103) + (sc4game.automata.get_source_building_count(hex2dec("BB350104"))*mwh_rating.ID_BB350104) + (sc4game.automata.get_source_building_count(hex2dec("BB350105"))*mwh_rating.ID_BB350105) + (sc4game.automata.get_source_building_count(hex2dec("BB350106"))*mwh_rating.ID_BB350106) + (sc4game.automata.get_source_building_count(hex2dec("BB350107"))*mwh_rating.ID_BB350107) + (sc4game.automata.get_source_building_count(hex2dec("BB350108"))*mwh_rating.ID_BB350108) + (sc4game.automata.get_source_building_count(hex2dec("BB350109"))*mwh_rating.ID_BB350109) + (sc4game.automata.get_source_building_count(hex2dec("BB35010A"))*mwh_rating.ID_BB35010A) + (sc4game.automata.get_source_building_count(hex2dec("BB35010B"))*mwh_rating.ID_BB35010B) + (sc4game.automata.get_source_building_count(hex2dec("BB35010C"))*mwh_rating.ID_BB35010C) + (sc4game.automata.get_source_building_count(hex2dec("BB35010D"))*mwh_rating.ID_BB35010D) + (sc4game.automata.get_source_building_count(hex2dec("BB35010E"))*mwh_rating.ID_BB35010E) + (sc4game.automata.get_source_building_count(hex2dec("BB35010F"))*mwh_rating.ID_BB35010F))
    grid_logic_var.WIND_GENERATE_POWER = ((sc4game.automata.get_source_building_count(hex2dec("BB350110"))*mwh_rating.ID_BB350110) + (sc4game.automata.get_source_building_count(hex2dec("BB350111"))*mwh_rating.ID_BB350111) + (sc4game.automata.get_source_building_count(hex2dec("BB350112"))*mwh_rating.ID_BB350112) + (sc4game.automata.get_source_building_count(hex2dec("BB350113"))*mwh_rating.ID_BB350113) + (sc4game.automata.get_source_building_count(hex2dec("BB350114"))*mwh_rating.ID_BB350114) + (sc4game.automata.get_source_building_count(hex2dec("BB350115"))*mwh_rating.ID_BB350115) + (sc4game.automata.get_source_building_count(hex2dec("BB350116"))*mwh_rating.ID_BB350116) + (sc4game.automata.get_source_building_count(hex2dec("BB350117"))*mwh_rating.ID_BB350117) + (sc4game.automata.get_source_building_count(hex2dec("BB350118"))*mwh_rating.ID_BB350118) + (sc4game.automata.get_source_building_count(hex2dec("BB350119"))*mwh_rating.ID_BB350119) + (sc4game.automata.get_source_building_count(hex2dec("BB35011A"))*mwh_rating.ID_BB35011A) + (sc4game.automata.get_source_building_count(hex2dec("BB35011B"))*mwh_rating.ID_BB35011B) + (sc4game.automata.get_source_building_count(hex2dec("BB35011C"))*mwh_rating.ID_BB35011C) + (sc4game.automata.get_source_building_count(hex2dec("BB35011D"))*mwh_rating.ID_BB35011D) + (sc4game.automata.get_source_building_count(hex2dec("BB35011E"))*mwh_rating.ID_BB35011E) + (sc4game.automata.get_source_building_count(hex2dec("BB35011F"))*mwh_rating.ID_BB35011F))
    grid_logic_var.S_SOLAR_POWER       = ((sc4game.automata.get_source_building_count(hex2dec("BB350150"))*mwh_rating.ID_BB350150) + (sc4game.automata.get_source_building_count(hex2dec("BB350151"))*mwh_rating.ID_BB350151) + (sc4game.automata.get_source_building_count(hex2dec("BB350152"))*mwh_rating.ID_BB350152) + (sc4game.automata.get_source_building_count(hex2dec("BB350153"))*mwh_rating.ID_BB350153) + (sc4game.automata.get_source_building_count(hex2dec("BB350154"))*mwh_rating.ID_BB350154) + (sc4game.automata.get_source_building_count(hex2dec("BB350155"))*mwh_rating.ID_BB350155) + (sc4game.automata.get_source_building_count(hex2dec("BB350156"))*mwh_rating.ID_BB350156) + (sc4game.automata.get_source_building_count(hex2dec("BB350157"))*mwh_rating.ID_BB350157) + (sc4game.automata.get_source_building_count(hex2dec("BB350158"))*mwh_rating.ID_BB350158) + (sc4game.automata.get_source_building_count(hex2dec("BB350159"))*mwh_rating.ID_BB350159) + (sc4game.automata.get_source_building_count(hex2dec("BB35015A"))*mwh_rating.ID_BB35015A) + (sc4game.automata.get_source_building_count(hex2dec("BB35015B"))*mwh_rating.ID_BB35015B) + (sc4game.automata.get_source_building_count(hex2dec("BB35015C"))*mwh_rating.ID_BB35015C) + (sc4game.automata.get_source_building_count(hex2dec("BB35015D"))*mwh_rating.ID_BB35015D) + (sc4game.automata.get_source_building_count(hex2dec("BB35015E"))*mwh_rating.ID_BB35015E) + (sc4game.automata.get_source_building_count(hex2dec("BB35015F"))*mwh_rating.ID_BB35015F) + (grid_logic_var.PV_S_SOLAR_UNITS * mwh_rating.ID_BB350010))
    grid_logic_var.S_WIND_POWER        = ((sc4game.automata.get_source_building_count(hex2dec("BB350160"))*mwh_rating.ID_BB350160) + (sc4game.automata.get_source_building_count(hex2dec("BB350161"))*mwh_rating.ID_BB350161) + (sc4game.automata.get_source_building_count(hex2dec("BB350162"))*mwh_rating.ID_BB350162) + (sc4game.automata.get_source_building_count(hex2dec("BB350163"))*mwh_rating.ID_BB350163) + (sc4game.automata.get_source_building_count(hex2dec("BB350164"))*mwh_rating.ID_BB350164) + (sc4game.automata.get_source_building_count(hex2dec("BB350165"))*mwh_rating.ID_BB350165) + (sc4game.automata.get_source_building_count(hex2dec("BB350166"))*mwh_rating.ID_BB350166) + (sc4game.automata.get_source_building_count(hex2dec("BB350167"))*mwh_rating.ID_BB350167) + (sc4game.automata.get_source_building_count(hex2dec("BB350168"))*mwh_rating.ID_BB350168) + (sc4game.automata.get_source_building_count(hex2dec("BB350169"))*mwh_rating.ID_BB350169) + (sc4game.automata.get_source_building_count(hex2dec("BB35016A"))*mwh_rating.ID_BB35016A) + (sc4game.automata.get_source_building_count(hex2dec("BB35016B"))*mwh_rating.ID_BB35016B) + (sc4game.automata.get_source_building_count(hex2dec("BB35016C"))*mwh_rating.ID_BB35016C) + (sc4game.automata.get_source_building_count(hex2dec("BB35016D"))*mwh_rating.ID_BB35016D) + (sc4game.automata.get_source_building_count(hex2dec("BB35016E"))*mwh_rating.ID_BB35016E) + (sc4game.automata.get_source_building_count(hex2dec("BB35016F"))*mwh_rating.ID_BB35016F))
    grid_logic_var.S_GEOTHERMAL_POWER  = ((sc4game.automata.get_source_building_count(hex2dec("BB350170"))*mwh_rating.ID_BB350170) + (sc4game.automata.get_source_building_count(hex2dec("BB350171"))*mwh_rating.ID_BB350171) + (sc4game.automata.get_source_building_count(hex2dec("BB350172"))*mwh_rating.ID_BB350172) + (sc4game.automata.get_source_building_count(hex2dec("BB350173"))*mwh_rating.ID_BB350173) + (sc4game.automata.get_source_building_count(hex2dec("BB350174"))*mwh_rating.ID_BB350174) + (sc4game.automata.get_source_building_count(hex2dec("BB350175"))*mwh_rating.ID_BB350175) + (sc4game.automata.get_source_building_count(hex2dec("BB350176"))*mwh_rating.ID_BB350176) + (sc4game.automata.get_source_building_count(hex2dec("BB350177"))*mwh_rating.ID_BB350177))
    grid_logic_var.S_FISSION_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB350178"))*mwh_rating.ID_BB350178) + (sc4game.automata.get_source_building_count(hex2dec("BB350179"))*mwh_rating.ID_BB350179) + (sc4game.automata.get_source_building_count(hex2dec("BB35017A"))*mwh_rating.ID_BB35017A) + (sc4game.automata.get_source_building_count(hex2dec("BB35017B"))*mwh_rating.ID_BB35017B) + (sc4game.automata.get_source_building_count(hex2dec("BB35017C"))*mwh_rating.ID_BB35017C) + (sc4game.automata.get_source_building_count(hex2dec("BB35017D"))*mwh_rating.ID_BB35017D) + (sc4game.automata.get_source_building_count(hex2dec("BB35017E"))*mwh_rating.ID_BB35017E) + (sc4game.automata.get_source_building_count(hex2dec("BB35017F"))*mwh_rating.ID_BB35017F))
    grid_logic_var.S_FISSION_P_POWER   = ((sc4game.automata.get_source_building_count(hex2dec("BB350180"))*mwh_rating.ID_BB350180) + (sc4game.automata.get_source_building_count(hex2dec("BB350181"))*mwh_rating.ID_BB350181) + (sc4game.automata.get_source_building_count(hex2dec("BB350182"))*mwh_rating.ID_BB350182) + (sc4game.automata.get_source_building_count(hex2dec("BB350183"))*mwh_rating.ID_BB350183) + (sc4game.automata.get_source_building_count(hex2dec("BB350184"))*mwh_rating.ID_BB350184) + (sc4game.automata.get_source_building_count(hex2dec("BB350185"))*mwh_rating.ID_BB350185) + (sc4game.automata.get_source_building_count(hex2dec("BB350186"))*mwh_rating.ID_BB350186) + (sc4game.automata.get_source_building_count(hex2dec("BB350187"))*mwh_rating.ID_BB350187))
    grid_logic_var.S_FUSION_POWER      = ((sc4game.automata.get_source_building_count(hex2dec("BB350188"))*mwh_rating.ID_BB350188) + (sc4game.automata.get_source_building_count(hex2dec("BB350189"))*mwh_rating.ID_BB350189) + (sc4game.automata.get_source_building_count(hex2dec("BB35018A"))*mwh_rating.ID_BB35018A) + (sc4game.automata.get_source_building_count(hex2dec("BB35018B"))*mwh_rating.ID_BB35018B) + (sc4game.automata.get_source_building_count(hex2dec("BB35018C"))*mwh_rating.ID_BB35018C) + (sc4game.automata.get_source_building_count(hex2dec("BB35018D"))*mwh_rating.ID_BB35018D) + (sc4game.automata.get_source_building_count(hex2dec("BB35018E"))*mwh_rating.ID_BB35018E) + (sc4game.automata.get_source_building_count(hex2dec("BB35018F"))*mwh_rating.ID_BB35018F))
    grid_logic_var.S_OIL_POWER         = ((sc4game.automata.get_source_building_count(hex2dec("BB350190"))*mwh_rating.ID_BB350190) + (sc4game.automata.get_source_building_count(hex2dec("BB350191"))*mwh_rating.ID_BB350191) + (sc4game.automata.get_source_building_count(hex2dec("BB350192"))*mwh_rating.ID_BB350192) + (sc4game.automata.get_source_building_count(hex2dec("BB350193"))*mwh_rating.ID_BB350193) + (sc4game.automata.get_source_building_count(hex2dec("BB350194"))*mwh_rating.ID_BB350194) + (sc4game.automata.get_source_building_count(hex2dec("BB350195"))*mwh_rating.ID_BB350195) + (sc4game.automata.get_source_building_count(hex2dec("BB350196"))*mwh_rating.ID_BB350196) + (sc4game.automata.get_source_building_count(hex2dec("BB350197"))*mwh_rating.ID_BB350197) + (sc4game.automata.get_source_building_count(hex2dec("BB350198"))*mwh_rating.ID_BB350198) + (sc4game.automata.get_source_building_count(hex2dec("BB350199"))*mwh_rating.ID_BB350199) + (sc4game.automata.get_source_building_count(hex2dec("BB35019A"))*mwh_rating.ID_BB35019A) + (sc4game.automata.get_source_building_count(hex2dec("BB35019B"))*mwh_rating.ID_BB35019B) + (sc4game.automata.get_source_building_count(hex2dec("BB35019C"))*mwh_rating.ID_BB35019C) + (sc4game.automata.get_source_building_count(hex2dec("BB35019D"))*mwh_rating.ID_BB35019D) + (sc4game.automata.get_source_building_count(hex2dec("BB35019E"))*mwh_rating.ID_BB35019E) + (sc4game.automata.get_source_building_count(hex2dec("BB35019F"))*mwh_rating.ID_BB35019F))
    grid_logic_var.S_NAT_GAS_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3501A0"))*mwh_rating.ID_BB3501A0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A1"))*mwh_rating.ID_BB3501A1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A2"))*mwh_rating.ID_BB3501A2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A3"))*mwh_rating.ID_BB3501A3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A4"))*mwh_rating.ID_BB3501A4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A5"))*mwh_rating.ID_BB3501A5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A6"))*mwh_rating.ID_BB3501A6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A7"))*mwh_rating.ID_BB3501A7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A8"))*mwh_rating.ID_BB3501A8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501A9"))*mwh_rating.ID_BB3501A9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AA"))*mwh_rating.ID_BB3501AA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AB"))*mwh_rating.ID_BB3501AB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AC"))*mwh_rating.ID_BB3501AC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AD"))*mwh_rating.ID_BB3501AD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AE"))*mwh_rating.ID_BB3501AE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501AF"))*mwh_rating.ID_BB3501AF))
    grid_logic_var.S_WOOD_POWER        = ((sc4game.automata.get_source_building_count(hex2dec("BB3501B0"))*mwh_rating.ID_BB3501B0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B1"))*mwh_rating.ID_BB3501B1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B2"))*mwh_rating.ID_BB3501B2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B3"))*mwh_rating.ID_BB3501B3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B4"))*mwh_rating.ID_BB3501B4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B5"))*mwh_rating.ID_BB3501B5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B6"))*mwh_rating.ID_BB3501B6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B7"))*mwh_rating.ID_BB3501B7))
    grid_logic_var.S_CLEAN_COAL_POWER  = ((sc4game.automata.get_source_building_count(hex2dec("BB3501B8"))*mwh_rating.ID_BB3501B8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501B9"))*mwh_rating.ID_BB3501B9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BA"))*mwh_rating.ID_BB3501BA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BB"))*mwh_rating.ID_BB3501BB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BC"))*mwh_rating.ID_BB3501BC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BD"))*mwh_rating.ID_BB3501BD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BE"))*mwh_rating.ID_BB3501BE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501BF"))*mwh_rating.ID_BB3501BF))
    grid_logic_var.S_COAL_POWER        = ((sc4game.automata.get_source_building_count(hex2dec("BB3501C0"))*mwh_rating.ID_BB3501C0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C1"))*mwh_rating.ID_BB3501C1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C2"))*mwh_rating.ID_BB3501C2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C3"))*mwh_rating.ID_BB3501C3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C4"))*mwh_rating.ID_BB3501C4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C5"))*mwh_rating.ID_BB3501C5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C6"))*mwh_rating.ID_BB3501C6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C7"))*mwh_rating.ID_BB3501C7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C8"))*mwh_rating.ID_BB3501C8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501C9"))*mwh_rating.ID_BB3501C9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CA"))*mwh_rating.ID_BB3501CA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CB"))*mwh_rating.ID_BB3501CB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CC"))*mwh_rating.ID_BB3501CC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CD"))*mwh_rating.ID_BB3501CD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CE"))*mwh_rating.ID_BB3501CE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501CF"))*mwh_rating.ID_BB3501CF))
    grid_logic_var.S_WASTE_POWER       = ((sc4game.automata.get_source_building_count(hex2dec("BB3501D0"))*mwh_rating.ID_BB3501D0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D1"))*mwh_rating.ID_BB3501D1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D2"))*mwh_rating.ID_BB3501D2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D3"))*mwh_rating.ID_BB3501D3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D4"))*mwh_rating.ID_BB3501D4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D5"))*mwh_rating.ID_BB3501D5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D6"))*mwh_rating.ID_BB3501D6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D7"))*mwh_rating.ID_BB3501D7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D8"))*mwh_rating.ID_BB3501D8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501D9"))*mwh_rating.ID_BB3501D9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DA"))*mwh_rating.ID_BB3501DA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DB"))*mwh_rating.ID_BB3501DB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DC"))*mwh_rating.ID_BB3501DC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DD"))*mwh_rating.ID_BB3501DD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DE"))*mwh_rating.ID_BB3501DE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501DF"))*mwh_rating.ID_BB3501DF))
    grid_logic_var.S_HYDRO_POWER       = ((sc4game.automata.get_source_building_count(hex2dec("BB3501E0"))*mwh_rating.ID_BB3501E0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E1"))*mwh_rating.ID_BB3501E1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E2"))*mwh_rating.ID_BB3501E2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E3"))*mwh_rating.ID_BB3501E3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E4"))*mwh_rating.ID_BB3501E4) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E5"))*mwh_rating.ID_BB3501E5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E6"))*mwh_rating.ID_BB3501E6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E7"))*mwh_rating.ID_BB3501E7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E8"))*mwh_rating.ID_BB3501E8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501E9"))*mwh_rating.ID_BB3501E9) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EA"))*mwh_rating.ID_BB3501EA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EB"))*mwh_rating.ID_BB3501EB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EC"))*mwh_rating.ID_BB3501EC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501ED"))*mwh_rating.ID_BB3501ED) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EE"))*mwh_rating.ID_BB3501EE) + (sc4game.automata.get_source_building_count(hex2dec("BB3501EF"))*mwh_rating.ID_BB3501EF))
    grid_logic_var.S_OTHER_I_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3501F0"))*mwh_rating.ID_BB3501F0) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F1"))*mwh_rating.ID_BB3501F1) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F2"))*mwh_rating.ID_BB3501F2) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F3"))*mwh_rating.ID_BB3501F3) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F4"))*mwh_rating.ID_BB3501F4))
    grid_logic_var.S_OTHER_B_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3501F5"))*mwh_rating.ID_BB3501F5) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F6"))*mwh_rating.ID_BB3501F6) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F7"))*mwh_rating.ID_BB3501F7) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F8"))*mwh_rating.ID_BB3501F8) + (sc4game.automata.get_source_building_count(hex2dec("BB3501F9"))*mwh_rating.ID_BB3501F9))
    grid_logic_var.S_OTHER_P_POWER     = ((sc4game.automata.get_source_building_count(hex2dec("BB3501FA"))*mwh_rating.ID_BB3501FA) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FB"))*mwh_rating.ID_BB3501FB) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FC"))*mwh_rating.ID_BB3501FC) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FD"))*mwh_rating.ID_BB3501FD) + (sc4game.automata.get_source_building_count(hex2dec("BB3501FE"))*mwh_rating.ID_BB3501FE))

    grid_logic_var.GENERATOR_I_POWER   = (grid_logic_var.SOLAR_GENERAT_POWER + grid_logic_var.WIND_GENERATE_POWER)
    grid_logic_var.GENERATOR_B_POWER   = (grid_logic_var.BASE_GENERATE_POWER)
    grid_logic_var.GENERATOR_P_POWER   = (grid_logic_var.DIESEL_GENER_POWER  + grid_logic_var.NG_GENERATOR_POWER)
    grid_logic_var.LARGE_I_POWER       = (grid_logic_var.L_SOLAR_POWER       + grid_logic_var.L_WIND_POWER        + grid_logic_var.L_OTHER_I_POWER)
    grid_logic_var.LARGE_B_POWER       = (grid_logic_var.L_GEOTHERMAL_POWER  + grid_logic_var.L_FISSION_POWER     + grid_logic_var.L_WOOD_POWER        + grid_logic_var.L_CLEAN_COAL_POWER   + grid_logic_var.L_COAL_POWER        + grid_logic_var.L_WASTE_POWER + grid_logic_var.L_HYDRO_POWER + grid_logic_var.L_OTHER_B_POWER)
    grid_logic_var.LARGE_P_POWER       = (grid_logic_var.L_FISSION_P_POWER   + grid_logic_var.L_FUSION_POWER      + grid_logic_var.L_OIL_POWER         + grid_logic_var.L_NAT_GAS_POWER      + grid_logic_var.L_OTHER_P_POWER)
    grid_logic_var.SMALL_I_POWER       = (grid_logic_var.S_SOLAR_POWER       + grid_logic_var.S_WIND_POWER        + grid_logic_var.S_OTHER_I_POWER)
    grid_logic_var.SMALL_B_POWER       = (grid_logic_var.S_GEOTHERMAL_POWER  + grid_logic_var.S_FISSION_POWER     + grid_logic_var.S_WOOD_POWER        + grid_logic_var.S_CLEAN_COAL_POWER   + grid_logic_var.S_COAL_POWER        + grid_logic_var.S_WASTE_POWER + grid_logic_var.S_HYDRO_POWER + grid_logic_var.S_OTHER_B_POWER)
    grid_logic_var.SMALL_P_POWER       = (grid_logic_var.S_FISSION_P_POWER   + grid_logic_var.S_FUSION_POWER      + grid_logic_var.S_OIL_POWER         + grid_logic_var.S_NAT_GAS_POWER      + grid_logic_var.S_OTHER_P_POWER)
    grid_logic_var.SUP_GEN_I_POWER     = (grid_logic_var.LARGE_I_POWER       + grid_logic_var.SMALL_I_POWER       + grid_logic_var.GENERATOR_I_POWER)
    grid_logic_var.SUP_GEN_B_POWER     = (grid_logic_var.LARGE_B_POWER       + grid_logic_var.SMALL_B_POWER       + grid_logic_var.GENERATOR_B_POWER)
    grid_logic_var.SUP_GEN_P_POWER     = (grid_logic_var.LARGE_P_POWER       + grid_logic_var.SMALL_P_POWER       + grid_logic_var.GENERATOR_P_POWER)

-- Calculates the difference bewteen actual and ideal power generation. Used to account for both Unsuported Power Plants as well as power plant degradation over time
    grid_logic_var.POWER_DEVIATION     = (game.trend_value(game_trends.G_POWER_PRODUCED,0) - (grid_logic_var.SUP_GEN_I_POWER + grid_logic_var.SUP_GEN_B_POWER + grid_logic_var.SUP_GEN_P_POWER))
    if ((grid_logic_var.SUP_GEN_I_POWER + grid_logic_var.SUP_GEN_B_POWER     + grid_logic_var.SUP_GEN_P_POWER) == 0) then
            grid_logic_var.DEV_I_POWER = 0
            grid_logic_var.DEV_B_POWER = 0
            grid_logic_var.DEV_P_POWER = grid_logic_var.POWER_DEVIATION
        else
            grid_logic_var.DEV_I_POWER = (grid_logic_var.POWER_DEVIATION     * (grid_logic_var.SUP_GEN_I_POWER    / (grid_logic_var.SUP_GEN_I_POWER    + grid_logic_var.SUP_GEN_B_POWER      + grid_logic_var.SUP_GEN_P_POWER)))
            grid_logic_var.DEV_B_POWER = (grid_logic_var.POWER_DEVIATION     * (grid_logic_var.SUP_GEN_B_POWER    / (grid_logic_var.SUP_GEN_I_POWER    + grid_logic_var.SUP_GEN_B_POWER      + grid_logic_var.SUP_GEN_P_POWER)))
            grid_logic_var.DEV_P_POWER = (grid_logic_var.POWER_DEVIATION     * (grid_logic_var.SUP_GEN_P_POWER    / (grid_logic_var.SUP_GEN_I_POWER    + grid_logic_var.SUP_GEN_B_POWER      + grid_logic_var.SUP_GEN_P_POWER)))
    end
    grid_logic_var.GEN_I_POWER         = (grid_logic_var.SUP_GEN_I_POWER     + grid_logic_var.DEV_I_POWER)
    grid_logic_var.GEN_B_POWER         = (grid_logic_var.SUP_GEN_B_POWER     + grid_logic_var.DEV_B_POWER)
    grid_logic_var.GEN_P_POWER         = (grid_logic_var.SUP_GEN_P_POWER     + grid_logic_var.DEV_P_POWER)

    grid_logic_var.GENERATOR_I_D_POWER = (grid_logic_var.GENERATOR_I_POWER   + (grid_logic_var.DEV_I_POWER        * (grid_logic_var.GENERATOR_I_POWER  / math.max(grid_logic_var.SUP_GEN_I_POWER,1))))
    grid_logic_var.GENERATOR_B_D_POWER = (grid_logic_var.GENERATOR_B_POWER   + (grid_logic_var.DEV_B_POWER        * (grid_logic_var.GENERATOR_B_POWER  / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.GENERATOR_P_D_POWER = (grid_logic_var.GENERATOR_P_POWER   + (grid_logic_var.DEV_P_POWER        * (grid_logic_var.GENERATOR_P_POWER  / math.max(grid_logic_var.SUP_GEN_P_POWER,1))))
    grid_logic_var.D_SOLAR_POWER       = ((grid_logic_var.L_SOLAR_POWER      + grid_logic_var.S_SOLAR_POWER)      + (grid_logic_var.DEV_I_POWER        * ((grid_logic_var.L_SOLAR_POWER      + grid_logic_var.S_SOLAR_POWER)      / math.max(grid_logic_var.SUP_GEN_I_POWER,1))))
    grid_logic_var.D_WIND_POWER        = ((grid_logic_var.L_WIND_POWER       + grid_logic_var.S_WIND_POWER)       + (grid_logic_var.DEV_I_POWER        * ((grid_logic_var.L_WIND_POWER       + grid_logic_var.S_WIND_POWER)       / math.max(grid_logic_var.SUP_GEN_I_POWER,1))))
    grid_logic_var.D_GEOTHERMAL_POWER  = ((grid_logic_var.L_GEOTHERMAL_POWER + grid_logic_var.S_GEOTHERMAL_POWER) + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_GEOTHERMAL_POWER + grid_logic_var.S_GEOTHERMAL_POWER) / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_FISSION_POWER     = ((grid_logic_var.L_FISSION_POWER    + grid_logic_var.S_FISSION_POWER)    + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_FISSION_POWER    + grid_logic_var.S_FISSION_POWER)    / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_FISSION_P_POWER   = ((grid_logic_var.L_FISSION_P_POWER  + grid_logic_var.S_FISSION_P_POWER)  + (grid_logic_var.DEV_P_POWER        * ((grid_logic_var.L_FISSION_P_POWER  + grid_logic_var.S_FISSION_P_POWER)  / math.max(grid_logic_var.SUP_GEN_P_POWER,1))))
    grid_logic_var.D_FUSION_POWER      = ((grid_logic_var.L_FUSION_POWER     + grid_logic_var.S_FUSION_POWER)     + (grid_logic_var.DEV_P_POWER        * ((grid_logic_var.L_FUSION_POWER     + grid_logic_var.S_FUSION_POWER)     / math.max(grid_logic_var.SUP_GEN_P_POWER,1))))
    grid_logic_var.D_OIL_POWER         = ((grid_logic_var.L_OIL_POWER        + grid_logic_var.S_OIL_POWER)        + (grid_logic_var.DEV_P_POWER        * ((grid_logic_var.L_OIL_POWER        + grid_logic_var.S_OIL_POWER)        / math.max(grid_logic_var.SUP_GEN_P_POWER,1))))
    grid_logic_var.D_NAT_GAS_POWER     = ((grid_logic_var.L_NAT_GAS_POWER    + grid_logic_var.S_NAT_GAS_POWER)    + (grid_logic_var.DEV_P_POWER        * ((grid_logic_var.L_NAT_GAS_POWER    + grid_logic_var.S_NAT_GAS_POWER)    / math.max(grid_logic_var.SUP_GEN_P_POWER,1))))
    grid_logic_var.D_WOOD_POWER        = ((grid_logic_var.L_WOOD_POWER       + grid_logic_var.S_WOOD_POWER)       + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_WOOD_POWER       + grid_logic_var.S_WOOD_POWER)       / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_CLEAN_COAL_POWER  = ((grid_logic_var.L_CLEAN_COAL_POWER + grid_logic_var.S_CLEAN_COAL_POWER) + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_CLEAN_COAL_POWER + grid_logic_var.S_CLEAN_COAL_POWER) / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_COAL_POWER        = ((grid_logic_var.L_COAL_POWER       + grid_logic_var.S_COAL_POWER)       + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_COAL_POWER       + grid_logic_var.S_COAL_POWER)       / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_WASTE_POWER       = ((grid_logic_var.L_WASTE_POWER      + grid_logic_var.S_WASTE_POWER)      + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_WASTE_POWER      + grid_logic_var.S_WASTE_POWER)      / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_HYDRO_POWER       = ((grid_logic_var.L_HYDRO_POWER      + grid_logic_var.S_HYDRO_POWER)      + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_HYDRO_POWER      + grid_logic_var.S_HYDRO_POWER)      / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_OTHER_I_POWER     = ((grid_logic_var.L_OTHER_I_POWER    + grid_logic_var.S_OTHER_I_POWER)    + (grid_logic_var.DEV_I_POWER        * ((grid_logic_var.L_OTHER_I_POWER    + grid_logic_var.S_OTHER_I_POWER)    / math.max(grid_logic_var.SUP_GEN_I_POWER,1))))
    grid_logic_var.D_OTHER_B_POWER     = ((grid_logic_var.L_OTHER_B_POWER    + grid_logic_var.S_OTHER_B_POWER)    + (grid_logic_var.DEV_B_POWER        * ((grid_logic_var.L_OTHER_B_POWER    + grid_logic_var.S_OTHER_B_POWER)    / math.max(grid_logic_var.SUP_GEN_B_POWER,1))))
    grid_logic_var.D_OTHER_P_POWER     = ((grid_logic_var.L_OTHER_P_POWER    + grid_logic_var.S_OTHER_P_POWER)    + (grid_logic_var.DEV_P_POWER        * ((grid_logic_var.L_OTHER_P_POWER    + grid_logic_var.S_OTHER_P_POWER)    / math.max(grid_logic_var.SUP_GEN_P_POWER,1))))
    grid_logic_var.D_OTHER_POWER       = (grid_logic_var.D_OTHER_I_POWER + grid_logic_var.D_OTHER_B_POWER + grid_logic_var.D_OTHER_P_POWER)

-- Adjust power loads based on the presence and quanitity in MWh of battry lots
    if (grid_logic_var.BATTERY_P_POWER <= grid_logic_var.GEN_I_POWER) then -- conditional that checks to see if Battery Power Available is less than or equal to Intermediate Power Produced -- if true then
            grid_logic_var.ALL_I_POWER = (grid_logic_var.GEN_I_POWER - grid_logic_var.BATTERY_P_POWER) -- subtract Battery Power Available from Intermediate Power Produced
            grid_logic_var.ALL_B_POWER = (grid_logic_var.GEN_B_POWER)
            grid_logic_var.ALL_P_POWER = (grid_logic_var.GEN_P_POWER + grid_logic_var.BATTERY_P_POWER + game.trend_value(game_trends.G_POWER_IMPORTED,0)) -- add Peak Power Produced, Battery Power, and Imported Power
            grid_logic_var.BAT_UNUSED  = 0 -- Set Battery Power Unused to 0
        elseif ((grid_logic_var.BATTERY_P_POWER - grid_logic_var.GEN_I_POWER) <= grid_logic_var.GEN_B_POWER) then -- conditional that checks to see if Battery Power Available minus Intermediate Power Produced is less than or equal to Base Power Produced -- if true then
            grid_logic_var.ALL_I_POWER = 0 -- Set Intermediate Power Produced to 0
            grid_logic_var.ALL_B_POWER = (grid_logic_var.GEN_B_POWER - (grid_logic_var.BATTERY_P_POWER - grid_logic_var.GEN_I_POWER)) -- subtract Battery Power minus Intermediate Power Produced from Base Power Produced
            grid_logic_var.ALL_P_POWER = (grid_logic_var.GEN_P_POWER + grid_logic_var.BATTERY_P_POWER + game.trend_value(game_trends.G_POWER_IMPORTED,0)) -- add Peak Power Produced, Battery Power, and Imported Power
            grid_logic_var.BAT_UNUSED  = 0 -- Set Battery Power Unused to 0
        else -- if neither condition above is true, then Battery Power Available must be greater than both Intermediate Power Produced plus Base Power Produced -- that being true
            grid_logic_var.ALL_I_POWER = 0 -- Set Intermediate Power Produced to 0
            grid_logic_var.ALL_B_POWER = 0 -- Set Base Power Produced to 0
            grid_logic_var.ALL_P_POWER = (grid_logic_var.GEN_P_POWER + grid_logic_var.GEN_B_POWER + grid_logic_var.GEN_I_POWER + game.trend_value(game_trends.G_POWER_IMPORTED,0)) -- add Peak Power Produced, Intermediate Power Produced, Base Power Produced, and Imported Power
            grid_logic_var.BAT_UNUSED  = (grid_logic_var.BATTERY_P_POWER - (grid_logic_var.GEN_I_POWER + grid_logic_var.GEN_B_POWER)) -- Set Battery Power Unused to Battery Power Available minus the sum of Intermediate Power Produced and Base Power Produced
    end

-- The following section is the building count for any Power Company buildings
-- This is used to check if there is a power company office of that type in the city for unlock requirements and to set Grid Limits based on Maintenance Facility presence
    power_company_buildings.FRONT_OFFICE_COUNT  = sc4game.automata.get_source_building_count(hex2dec("BB350200"))
    power_company_buildings.MAINT_BUILD_COUNT   = sc4game.automata.get_source_building_count(hex2dec("BB350201"))
    power_company_buildings.CENT_OFFICE_COUNT   = sc4game.automata.get_source_building_count(hex2dec("BB350202"))
    power_company_buildings.RES_FACILITY_COUNT  = sc4game.automata.get_source_building_count(hex2dec("BB350203"))
    power_company_buildings.CORP_HQ_COUNT       = sc4game.automata.get_source_building_count(hex2dec("BB350204"))

-- Set Grid limits based on Difficulty and Maintenance Facility present
    if     ((game.difficulty_level() == game_difficulty_level.EASY) and (power_company_buildings.MAINT_BUILD_COUNT < 1)) then
            grid_logic_var.I_MPERCENT  = 0.4
            grid_logic_var.B_MPERCENT  = 0.6
            grid_logic_var.P_MPERCENT  = 0.2
    elseif ((game.difficulty_level() == game_difficulty_level.EASY) and (power_company_buildings.MAINT_BUILD_COUNT > 0)) then
            grid_logic_var.I_MPERCENT  = 0.4
            grid_logic_var.B_MPERCENT  = 0.6
            grid_logic_var.P_MPERCENT  = 0.2
    elseif ((game.difficulty_level() == game_difficulty_level.MEDIUM) and (power_company_buildings.MAINT_BUILD_COUNT < 1)) then
            grid_logic_var.I_MPERCENT  = 0.3
            grid_logic_var.B_MPERCENT  = 0.5
            grid_logic_var.P_MPERCENT  = 0.3
    elseif ((game.difficulty_level() == game_difficulty_level.MEDIUM) and (power_company_buildings.MAINT_BUILD_COUNT > 0)) then
            grid_logic_var.I_MPERCENT  = 0.4
            grid_logic_var.B_MPERCENT  = 0.6
            grid_logic_var.P_MPERCENT  = 0.2
    elseif ((game.difficulty_level() == game_difficulty_level.HARD) and ((power_company_buildings.MAINT_BUILD_COUNT + power_company_buildings.RES_FACILITY_COUNT) < 1)) then
            grid_logic_var.I_MPERCENT  = 0.2
            grid_logic_var.B_MPERCENT  = 0.4
            grid_logic_var.P_MPERCENT  = 0.4
    elseif ((game.difficulty_level() == game_difficulty_level.HARD) and ((power_company_buildings.MAINT_BUILD_COUNT + power_company_buildings.RES_FACILITY_COUNT) < 2)) then
            grid_logic_var.I_MPERCENT  = 0.3
            grid_logic_var.B_MPERCENT  = 0.5
            grid_logic_var.P_MPERCENT  = 0.3
    elseif ((game.difficulty_level() == game_difficulty_level.HARD) and ((power_company_buildings.MAINT_BUILD_COUNT + power_company_buildings.RES_FACILITY_COUNT) > 1)) then
            grid_logic_var.I_MPERCENT  = 0.4
            grid_logic_var.B_MPERCENT  = 0.6
            grid_logic_var.P_MPERCENT  = 0.2
    end

-- The main load balancing equations
    grid_logic_var.MWH_DEMAND_TOTAL    = (game.trend_value(game_trends.G_POWER_DEMANDED,0) + game.trend_value(game_trends.G_POWER_EXPORTED,0)) -- The sum of city Power Demand and Power Exports
    grid_logic_var.MIN_P_POWER         = (math.ceil((game.trend_value(game_trends.G_POWER_DEMANDED,0) * grid_logic_var.P_MPERCENT) + game.trend_value(game_trends.G_POWER_EXPORTED,0))) -- At least 20% of Demand plus all exported power MUST come from Peak Load power plants, rounded up to the next whole number
    grid_logic_var.MAX_I_POWER_A       = (game.trend_value(game_trends.G_POWER_DEMANDED,0) * grid_logic_var.I_MPERCENT) -- No more than 40% of demand can come from Intermediate Load power plants
    grid_logic_var.MAX_I_POWER_B       = (game.trend_value(game_trends.G_POWER_DEMANDED,0) - grid_logic_var.MIN_P_POWER) -- Power demand minus the minimum Peak power you MUST use
	grid_logic_var.MAX_I_POWER         = (math.floor(math.min(grid_logic_var.MAX_I_POWER_A,grid_logic_var.MAX_I_POWER_B))) -- The maximum Intermediate Load power equals 40% of Demand or the previous factor, whichever is less, rounded down to the previous whole number
    grid_logic_var.USED_I_POWER        = (math.min(grid_logic_var.MAX_I_POWER,grid_logic_var.ALL_I_POWER)) -- The amount of Intermediate power used is equal to the maximum I power alloawable or all I Power produced, whichever is less
    grid_logic_var.UNUSED_I_POWER      = (math.floor((grid_logic_var.ALL_I_POWER - grid_logic_var.USED_I_POWER)+0.5)) -- The Intermediate Power Produced that cannot be used or sold, rounded off to the nearest whole number
    grid_logic_var.MAX_B_POWER_A       = (game.trend_value(game_trends.G_POWER_DEMANDED,0) * grid_logic_var.B_MPERCENT) -- No more than 60% of demand can come from Base Load power plants
    grid_logic_var.MAX_B_POWER_B       = (game.trend_value(game_trends.G_POWER_DEMANDED,0) - (grid_logic_var.MIN_P_POWER + grid_logic_var.USED_I_POWER)) -- Power demand minus the sum of Intermediate power you are using and the minimum Peak power you MUST use
    grid_logic_var.MAX_B_POWER         = (math.floor(math.min(grid_logic_var.MAX_B_POWER_A,grid_logic_var.MAX_B_POWER_B))) -- The maximum Base Load power equals 60% of Demand or the previous factor, whichever is less, rounded down to the previous whole number
    grid_logic_var.USED_B_POWER        = (math.min(grid_logic_var.MAX_B_POWER,grid_logic_var.ALL_B_POWER)) -- Base Power used equals the maximum Base power allowed or all B power produced, whichever is less
    grid_logic_var.UNUSED_B_POWER      = (math.floor((grid_logic_var.ALL_B_POWER - grid_logic_var.USED_B_POWER)+0.5)) -- The Base Power Produced that cannot be used or sold, rounded off to the nearest whole number
    grid_logic_var.USED_P_POWER_A      = (grid_logic_var.MWH_DEMAND_TOTAL - (grid_logic_var.USED_I_POWER + grid_logic_var.USED_B_POWER)) -- Power Demand plus Exports minus the sum of Intermediate and Base Power Used
    grid_logic_var.USED_P_POWER_B      = (math.max(grid_logic_var.USED_P_POWER_A,grid_logic_var.MIN_P_POWER)) -- The greater of the Peak power needed or the minimum Peak power required
    grid_logic_var.USED_P_POWER        = (math.min(grid_logic_var.USED_P_POWER_B,grid_logic_var.ALL_P_POWER)) -- Peak power used equals Power needed or all Peak power produced, whichever is less
    grid_logic_var.UNUSED_P_POWER      = (math.floor((grid_logic_var.ALL_P_POWER - grid_logic_var.USED_P_POWER)+0.5)) -- Peak Power Produced that is not being used, rounded off to the nearest whole number
    grid_logic_var.SHORT_P_POWER       = (math.max(grid_logic_var.MIN_P_POWER - grid_logic_var.USED_P_POWER,0)) -- Peak Power Shortage equals Peak minnimum required minus Peak used (positive integer only)
    grid_logic_var.I_PERCENT           = (grid_logic_var.USED_I_POWER / math.max(grid_logic_var.ALL_I_POWER,1))
    grid_logic_var.B_PERCENT           = (grid_logic_var.USED_B_POWER / math.max(grid_logic_var.ALL_B_POWER,1))
    grid_logic_var.P_PERCENT           = (grid_logic_var.USED_P_POWER / math.max(grid_logic_var.ALL_P_POWER,1))
    grid_logic_var.DEMAND_PERCENT      = ((grid_logic_var.UNUSED_I_POWER + grid_logic_var.UNUSED_B_POWER + grid_logic_var.SHORT_P_POWER + game.trend_value(game_trends.G_POWER_DEMANDED,0)) / math.max(game.trend_value(game_trends.G_POWER_DEMANDED,0),1)) -- The ratio of the sum of Unused Intermediate Power, Unused Base Power, Peak Power Shortage, and Power Demand to just Power Demand (i.e. the percent of power demand that should be increased to cause brownouts)

-- Function call return values --
    if (ret_type == "T") then
        return math.max(grid_logic_var.TRANSMIT_AVAILABLE,0) -- Return to the calling function (usually an LTEXT file) the current Transmission Capacity, unless it is negative, then return 0 --
    elseif (ret_type == "D") then
        return math.max(grid_logic_var.DISTRIB_AVAILABLE,0) -- Return to the calling function (usually an LTEXT file) the current Distribution Capacity, unless it is negative, then return 0  --
    elseif (ret_type == "X") then
        return math.max(grid_logic_var.TRANSFORM_AVAILABLE,0) -- Return to the calling function (usually an LTEXT file) the current Transformer Capacity, unless it is negative, then return 0  --
    elseif (ret_type == "I") then
        return grid_logic_var.ALL_I_POWER -- Return to the calling function (usually an LTEXT file) the current Intermediate Power generated --
    elseif (ret_type == "B") then
        return grid_logic_var.ALL_B_POWER -- Return to the calling function (usually an LTEXT file) the current Base Power generated --
    elseif (ret_type == "P") then
        return (grid_logic_var.ALL_P_POWER-game.trend_value(game_trends.G_POWER_IMPORTED,0)) -- Return to the calling function (usually an LTEXT file) the current Peak Power generated --
    end
end
function voltage_variance ()
    grid_logic_var.RANDVOLTAGE = math.random()
    if (grid_logic_var.RANDVOLTAGE > 0.500090439276485) then
        grid_logic_var.VOLTPLUS = "+"
    else
        grid_logic_var.VOLTPLUS = " "
    end
    grid_logic_var.VOLTVALUE = math.floor((36000*grid_logic_var.RANDVOLTAGE*(math.min(grid_logic_var.MIN_P_POWER,grid_logic_var.ALL_P_POWER)/math.max(grid_logic_var.ALL_P_POWER,0.1)))-(18000*(math.min(grid_logic_var.MIN_P_POWER,grid_logic_var.ALL_P_POWER)/math.max(grid_logic_var.ALL_P_POWER,0.1))))/1000
    return grid_logic_var.VOLTPLUS..grid_logic_var.VOLTVALUE.." volts"
end
function get_dist_substation_cost_monthly ()
    grid_logic_var.DIST_SUB_COST_MONTHLY_A = ((sc4game.automata.get_source_building_count(hex2dec("BB350030"))*amps_building_costs_monthly.ID_BB350030)+(sc4game.automata.get_source_building_count(hex2dec("BB350031"))*amps_building_costs_monthly.ID_BB350031)+(sc4game.automata.get_source_building_count(hex2dec("BB350032"))*amps_building_costs_monthly.ID_BB350032)+(sc4game.automata.get_source_building_count(hex2dec("BB350033"))*amps_building_costs_monthly.ID_BB350033)+(sc4game.automata.get_source_building_count(hex2dec("BB350034"))*amps_building_costs_monthly.ID_BB350034)+(sc4game.automata.get_source_building_count(hex2dec("BB350035"))*amps_building_costs_monthly.ID_BB350035)+(sc4game.automata.get_source_building_count(hex2dec("BB350036"))*amps_building_costs_monthly.ID_BB350036)+(sc4game.automata.get_source_building_count(hex2dec("BB350037"))*amps_building_costs_monthly.ID_BB350037)+(sc4game.automata.get_source_building_count(hex2dec("BB350038"))*amps_building_costs_monthly.ID_BB350038)+(sc4game.automata.get_source_building_count(hex2dec("BB350039"))*amps_building_costs_monthly.ID_BB350039)+(sc4game.automata.get_source_building_count(hex2dec("BB35003A"))*amps_building_costs_monthly.ID_BB35003A)+(sc4game.automata.get_source_building_count(hex2dec("BB35003B"))*amps_building_costs_monthly.ID_BB35003B)+(sc4game.automata.get_source_building_count(hex2dec("BB35003C"))*amps_building_costs_monthly.ID_BB35003C)+(sc4game.automata.get_source_building_count(hex2dec("BB35003D"))*amps_building_costs_monthly.ID_BB35003D)+(sc4game.automata.get_source_building_count(hex2dec("BB35003E"))*amps_building_costs_monthly.ID_BB35003E)+(sc4game.automata.get_source_building_count(hex2dec("BB35003F"))*amps_building_costs_monthly.ID_BB35003F))
    grid_logic_var.DIST_SUB_COST_MONTHLY_B = ((sc4game.automata.get_source_building_count(hex2dec("BB350130"))*amps_building_costs_monthly.ID_BB350130)+(sc4game.automata.get_source_building_count(hex2dec("BB350131"))*amps_building_costs_monthly.ID_BB350131)+(sc4game.automata.get_source_building_count(hex2dec("BB350132"))*amps_building_costs_monthly.ID_BB350132)+(sc4game.automata.get_source_building_count(hex2dec("BB350133"))*amps_building_costs_monthly.ID_BB350133)+(sc4game.automata.get_source_building_count(hex2dec("BB350134"))*amps_building_costs_monthly.ID_BB350134)+(sc4game.automata.get_source_building_count(hex2dec("BB350135"))*amps_building_costs_monthly.ID_BB350135)+(sc4game.automata.get_source_building_count(hex2dec("BB350136"))*amps_building_costs_monthly.ID_BB350136)+(sc4game.automata.get_source_building_count(hex2dec("BB350137"))*amps_building_costs_monthly.ID_BB350137)+(sc4game.automata.get_source_building_count(hex2dec("BB350138"))*amps_building_costs_monthly.ID_BB350138)+(sc4game.automata.get_source_building_count(hex2dec("BB350139"))*amps_building_costs_monthly.ID_BB350139)+(sc4game.automata.get_source_building_count(hex2dec("BB35013A"))*amps_building_costs_monthly.ID_BB35013A)+(sc4game.automata.get_source_building_count(hex2dec("BB35013B"))*amps_building_costs_monthly.ID_BB35013B)+(sc4game.automata.get_source_building_count(hex2dec("BB35013C"))*amps_building_costs_monthly.ID_BB35013C)+(sc4game.automata.get_source_building_count(hex2dec("BB35013D"))*amps_building_costs_monthly.ID_BB35013D)+(sc4game.automata.get_source_building_count(hex2dec("BB35013E"))*amps_building_costs_monthly.ID_BB35013E)+(sc4game.automata.get_source_building_count(hex2dec("BB35013F"))*amps_building_costs_monthly.ID_BB35013F))
    return (grid_logic_var.DIST_SUB_COST_MONTHLY_A + grid_logic_var.DIST_SUB_COST_MONTHLY_B)
end
function get_trans_station_cost_monthly ()
    return ((sc4game.automata.get_source_building_count(hex2dec("BB350120"))*amps_building_costs_monthly.ID_BB350120)+(sc4game.automata.get_source_building_count(hex2dec("BB350121"))*amps_building_costs_monthly.ID_BB350121)+(sc4game.automata.get_source_building_count(hex2dec("BB350122"))*amps_building_costs_monthly.ID_BB350122)+(sc4game.automata.get_source_building_count(hex2dec("BB350123"))*amps_building_costs_monthly.ID_BB350123)+(sc4game.automata.get_source_building_count(hex2dec("BB350124"))*amps_building_costs_monthly.ID_BB350124)+(sc4game.automata.get_source_building_count(hex2dec("BB350125"))*amps_building_costs_monthly.ID_BB350125)+(sc4game.automata.get_source_building_count(hex2dec("BB350126"))*amps_building_costs_monthly.ID_BB350126)+(sc4game.automata.get_source_building_count(hex2dec("BB350127"))*amps_building_costs_monthly.ID_BB350127)+(sc4game.automata.get_source_building_count(hex2dec("BB350128"))*amps_building_costs_monthly.ID_BB350128)+(sc4game.automata.get_source_building_count(hex2dec("BB350129"))*amps_building_costs_monthly.ID_BB350129)+(sc4game.automata.get_source_building_count(hex2dec("BB35012A"))*amps_building_costs_monthly.ID_BB35012A)+(sc4game.automata.get_source_building_count(hex2dec("BB35012B"))*amps_building_costs_monthly.ID_BB35012B)+(sc4game.automata.get_source_building_count(hex2dec("BB35012C"))*amps_building_costs_monthly.ID_BB35012C)+(sc4game.automata.get_source_building_count(hex2dec("BB35012D"))*amps_building_costs_monthly.ID_BB35012D)+(sc4game.automata.get_source_building_count(hex2dec("BB35012E"))*amps_building_costs_monthly.ID_BB35012E)+(sc4game.automata.get_source_building_count(hex2dec("BB35012F"))*amps_building_costs_monthly.ID_BB35012F))
end
------------------------------------------------------
------------- unlocker news message ------------------
-- introducing the utility advisor
a = create_advice_utilities('0a5f8597')

a.trigger  = "1"
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@ca4f92f9]]
a.message   = [[text@ea4f9311]]
a.priority  = tuning_constants.ADVICE_PRIORITY_MEDIUM
a.mood = advice_moods.GREAT_JOB
a.event = nil

-- introducing base, peak, and intermediate loads
a = create_advice_utilities('bb354100')

a.trigger  = "grid_logic_var.DISTRIBUTION_RATING > 0"
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@bb354200]]
a.message   = [[text@bb354300]]
a.priority  = tuning_constants.ADVICE_PRIORITY_MEDIUM
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record 50 kVA Transformer ----
-- Needs $$ and $$$ Res Population >= 1000 --
a = create_reward_cityplanning(transformer_hex_id.PAD_50_KVA_L)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_r2_population + game.g_city_r3_population) < unlock_variables.PAD_MOUNT_TRANS_50_KVA_R23_POP) then
		return [[text@BB352421]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352021]] -- title instance ID
a.message = [[text@BB352821]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

a = create_reward_cityplanning(transformer_hex_id.PAD_50_KVA_U)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_r2_population + game.g_city_r3_population) < unlock_variables.PAD_MOUNT_TRANS_50_KVA_R23_POP) then
		return [[text@BB352421]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record 1500 kVA Transformer ----
-- Needs CS Population > 1,000 --
a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_1)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352024]] -- title instance ID
a.message = [[text@BB352824]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_2)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_3)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_4)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_5)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_6)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.COM_1_5_MVA_7)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_cs1_population+game.g_city_cs2_population+game.g_city_cs3_population) < unlock_variables.COM_TRANS_1500_KVA_CS_POP) then
		return [[text@BB352424]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record 3 MVA Transformer ----
-- Needs D+IM Population > 1,000 --
a = create_reward_cityplanning(transformer_hex_id.IND_3_MVA_1)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_3_MVA_IDM_POP) then
		return [[text@BB352425]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352025]] -- title instance ID
a.message = [[text@BB352825]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

a = create_reward_cityplanning(transformer_hex_id.IND_3_MVA_2)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_3_MVA_IDM_POP) then
		return [[text@BB352425]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_3_MVA_3)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_3_MVA_IDM_POP) then
		return [[text@BB352425]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_3_MVA_4)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_3_MVA_IDM_POP) then
		return [[text@BB352425]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_3_MVA_5)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_3_MVA_IDM_POP) then
		return [[text@BB352425]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_3_MVA_6)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_3_MVA_IDM_POP) then
		return [[text@BB352425]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record 6 MVA Transformer ----
-- Needs D+IM Population > 5,000 --
a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_1)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352026]] -- title instance ID
a.message = [[text@BB352826]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_2)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_3)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_4)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_5)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_6)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_7)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transformer_hex_id.IND_6_MVA_8)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_im_population+game.g_city_id_population) < unlock_variables.IND_TRANS_6_MVA_IDM_POP) then
		return [[text@BB352426]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record 500 kVA Distribution Substation ----
-- Needs Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.KVA_500)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350030) then
		return [[text@BB352430]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352030]] -- title instance ID
a.message = [[text@BB352830]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 1 MVA Distribution Substation ----
-- Needs R$$+R$$$ Population > 5,000, Power Demand > 2,000 MWh/mo, and Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_01)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350031) or ((game.g_city_r2_population+game.g_city_r3_population) < unlock_variables.DIST_SUBSTATION_1_MVA_R23_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.DIST_SUBSTATION_1_MVA_ENERGY_DEMAND)) then
		return [[text@BB352431]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352031]] -- title instance ID
a.message = [[text@BB352831]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 2 MVA Distribution Substation ----
-- Needs R$$$ Population > 800, Power Demand > 5,000 MWh/mo, and Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_02)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350032) or (game.g_city_r3_population < unlock_variables.DIST_SUBSTATION_2_MVA_R3_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.DIST_SUBSTATION_2_MVA_ENERGY_DEMAND)) then
		return [[text@BB352432]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352032]] -- title instance ID
a.message = [[text@BB352832]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 3 MVA Distribution Substation ----
-- Needs Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_03)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350033) then
		return [[text@BB352433]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352033]] -- title instance ID
a.message = [[text@BB352833]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 5 MVA Distribution Substation ----
-- Needs Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_05)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350034) then
		return [[text@BB352434]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352034]] -- title instance ID
a.message = [[text@BB352834]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 7 MVA Distribution Substation ----
-- Needs R$$ Population > 5,000, Power Demand > 2,500 MWh/mo, and Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_07)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350035) or (game.g_city_r2_population < unlock_variables.DIST_SUBSTATION_7_MVA_R2_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.DIST_SUBSTATION_7_MVA_ENERGY_DEMAND)) then
		return [[text@BB352435]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352035]] -- title instance ID
a.message = [[text@BB352835]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 10 MVA Distribution Substation ----
-- Needs Power Demand > 10,000 MWh/mo, and Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_10)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350036) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.DIST_SUBSTATION_10_MVA_ENERGY_DEMAND)) then
		return [[text@BB352436]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352036]] -- title instance ID
a.message = [[text@BB352836]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 15 MVA Distribution Substation ----
-- Needs Power Demand > 15,000 MWh/mo, and Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_15)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350037) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.DIST_SUBSTATION_15_MVA_ENERGY_DEMAND)) then
		return [[text@BB352437]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352037]] -- title instance ID
a.message = [[text@BB352837]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 25 MVA Distribution Substation ----
-- Needs Power Demand > 25,000 MWh/mo, and Unused Transformer Capacity --
a = create_reward_cityplanning(dist_substation_hex_id.MVA_25)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSFORM_AVAILABLE < kva_rating.ID_BB350038) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.DIST_SUBSTATION_25_MVA_ENERGY_DEMAND)) then
		return [[text@BB352438]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352038]] -- title instance ID
a.message = [[text@BB352838]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 10 MVA Transmission Substation ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_10_1)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350120) then
		return [[text@BB352520]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352120]] -- title instance ID
a.message = [[text@BB352920]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

a = create_reward_cityplanning(transmission_station_hex_id.MVA_10_2)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350120) then
		return [[text@BB352520]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

a = create_reward_cityplanning(transmission_station_hex_id.MVA_10_3)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350120) then
		return [[text@BB352520]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record 20 MVA Transmission Substation ----
-- Needs Large Power Plant count > 0, Power Demand > 3,000 MWh/mo, and Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_20)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350121) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.TRANS_SUBSTATION_20_MVA_POWER_PLANT) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.TRANS_SUBSTATION_20_MVA_ENERGY_DEMAND)) then
		return [[text@BB352521]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352121]] -- title instance ID
a.message = [[text@BB352921]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 35 MVA Transmission Substation ----
-- Needs Power Plant count > 1, Power Demand > 10,000 MWh/mo, and Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_35)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350122) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.TRANS_SUBSTATION_35_MVA_POWER_PLANT) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.TRANS_SUBSTATION_35_MVA_ENERGY_DEMAND)) then
		return [[text@BB352522]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352122]] -- title instance ID
a.message = [[text@BB352922]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 60 MVA Transmission Substation ----
-- Needs Power Plant count > 2, Power Demand > 30,000 MWh/mo, and Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_60)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350123) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.TRANS_SUBSTATION_60_MVA_POWER_PLANT) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.TRANS_SUBSTATION_60_MVA_ENERGY_DEMAND)) then
		return [[text@BB352523]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352123]] -- title instance ID
a.message = [[text@BB352923]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 60 MVA Shoreline Substation ----
-- Needs Power Plant count > 2, Power Demand > 30,000 MWh/mo, Bridges > 0, and Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_60_S)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350124) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.TRANS_SUBSTATION_60_MVA_S_POWER_PLANT) or (game.g_bridge_tile_count < unlock_variables.TRANS_SUBSTATION_60_MVA_S_BRIDGE_TILES) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.TRANS_SUBSTATION_60_MVA_S_ENERGY_DEMAND)) then
		return [[text@BB352524]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352124]] -- title instance ID
a.message = [[text@BB352924]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 90 MVA Transmission Substation ----
-- Needs Power Plant count > 3, Power Demand > 50,000 MWh/mo, and Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_90)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350125) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.TRANS_SUBSTATION_90_MVA_POWER_PLANT) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.TRANS_SUBSTATION_90_MVA_ENERGY_DEMAND)) then
		return [[text@BB352525]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352125]] -- title instance ID
a.message = [[text@BB352925]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 120 MVA Transmission Substation ----
-- Needs Power Plant count > 3, Power Demand > 70,000 MWh/mo, and Unused Distribution Capacity --
a = create_reward_cityplanning(transmission_station_hex_id.MVA_120)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350126) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.TRANS_SUBSTATION_120_MVA_POWER_PLANT) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.TRANS_SUBSTATION_120_MVA_ENERGY_DEMAND)) then
		return [[text@BB352526]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352126]] -- title instance ID
a.message = [[text@BB352926]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 1.9 MWh Tesla Powerpack Station ----
-- Needs High-tech population > 1,000 and Intermediate plus Base power generated > 15 MWh --
a = create_reward_cityplanning(elec_feature_hex_id.TESLA_POWERPACK_1_9_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_iht_population < unlock_variables.TESLA_XS_IHT_POP) or ((grid_logic_var.GEN_I_POWER + grid_logic_var.GEN_B_POWER) < unlock_variables.TESLA_XS_I_B_ENERGY_GEN)) then
		return [[text@bb352440]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352040]] -- title instance ID
a.message = [[text@bb352840]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 3.7 MWh Tesla Powerpack Station ----
-- Needs High-tech population > 2,000 and Intermediate plus Base power generated > 30 MWh --
a = create_reward_cityplanning(elec_feature_hex_id.TESLA_POWERPACK_3_7_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_iht_population < unlock_variables.TESLA_SM_IHT_POP) or ((grid_logic_var.GEN_I_POWER + grid_logic_var.GEN_B_POWER) < unlock_variables.TESLA_SM_I_B_ENERGY_GEN)) then
		return [[text@bb352441]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352041]] -- title instance ID
a.message = [[text@bb352841]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 9.3 MWh Tesla Powerpack Station ----
-- Needs Needs High-tech population > 3,000 and Intermediate plus Base power generated > 76 MWh --
a = create_reward_cityplanning(elec_feature_hex_id.TESLA_POWERPACK_9_3_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_iht_population < unlock_variables.TESLA_MD_IHT_POP) or ((grid_logic_var.GEN_I_POWER + grid_logic_var.GEN_B_POWER) < unlock_variables.TESLA_MD_I_B_ENERGY_GEN)) then
		return [[text@bb352442]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352042]] -- title instance ID
a.message = [[text@bb352842]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 37 MWh Tesla Powerpack Station ----
-- Needs Needs High-tech population > 5,000 and Intermediate plus Base power generated > 300 MWh --
a = create_reward_cityplanning(elec_feature_hex_id.TESLA_POWERPACK_37_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((game.g_city_iht_population < unlock_variables.TESLA_LG_IHT_POP) or ((grid_logic_var.GEN_I_POWER + grid_logic_var.GEN_B_POWER) < unlock_variables.TESLA_LG_I_B_ENERGY_GEN)) then
		return [[text@bb352443]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352043]] -- title instance ID
a.message = [[text@bb352843]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 3.3 MW Step-up Transformer ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(elec_feature_hex_id.STEP_UP_TRANSFORMER_3_3_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB35014E) then
		return [[text@bb35254e]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb35214e]] -- title instance ID
a.message = [[text@bb35294e]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 410 kW Inverter ----
-- Needs 1 Step-up Transformer for every 8 Inverters after the first 8 --
a = create_reward_cityplanning(elec_feature_hex_id.INVERTER_410_KW)
function a.condition()
	run_grid_balance_variables ()
	if  (((grid_logic_var.STEPUP_TRANSFORMERS*8)+8) <= grid_logic_var.INVERTERS) then
		return [[text@bb35254f]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb35214f]] -- title instance ID
a.message = [[text@bb35294f]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 25 kW PV Panel Set ----
-- Needs 1 Inverter for every 16 panel sets --
a = create_reward_cityplanning(generator_hex_id.PV_PANEL_SET_25_KW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.INVERTERS*16) <= grid_logic_var.PV_PANEL_SETS) then
		return [[text@bb352410]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352010]] -- title instance ID
a.message = [[text@bb352810]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 370 kW Solar Power Plant ----
-- Needs Unused Distribution Capacity and 128 or more PV Panel Sets --
a = create_reward_cityplanning(power_plant_hex_id.SOLAR_POWER_PLANT_370_KW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350150) or (grid_logic_var.PV_PANEL_SETS < 128)) then
		return [[text@bb352550]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352150]] -- title instance ID
a.message = [[text@bb352950]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 2.5 MW Solar Thermal Plant----
--  Needs R$$$ > 3000 and Mayor Rating > 55 OR Complete Monorail Ride UDI Mission, and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.SOLAR_THERMAL_PLANT_2_5_MW)
function a.condition()
	run_grid_balance_variables ()
	if ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350151) or (not missions_completed( { '2c2541f5'} ) and ( game.g_city_r3_population < tuning_constants.SOLAR_RH_POP or game.ga_mayor_rating < tuning_constants.SOLAR_MR))) then
		return [[text@6aa6dc7f]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@aaa6dc46]]
a.message   = [[text@6aa6dc58]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record 1 MW Wind Turbine ----
-- Needs Wind Farm Maintenance Facility and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.WIND_TURBINE_1_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350160) or ((sc4game.automata.get_source_building_count(hex2dec("BB350140"))*25) <= sc4game.automata.get_source_building_count(hex2dec("BB350160")))) then
		return [[text@bb352560]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352160]] -- title instance ID
a.message = [[text@bb352960]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 2 MW Geothermal Power Plant ----
-- Needs (Base Power Cap - Base Power Production) > 1,000 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.GEOTHERMAL_2_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350170) or ((grid_logic_var.MAX_B_POWER - grid_logic_var.USED_B_POWER) < unlock_variables.GEOTHERMAL_2_MW_BASE_DEMAND)) then
		return [[text@BB352570]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352170]] -- title instance ID
a.message = [[text@BB352970]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 4 MW Geothermal Power Plant ----
-- Needs (Base Power Cap - Base Power Production) > 2,200 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.GEOTHERMAL_4_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350171) or ((grid_logic_var.MAX_B_POWER - grid_logic_var.USED_B_POWER) < unlock_variables.GEOTHERMAL_4_MW_BASE_DEMAND)) then
		return [[text@BB352571]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352171]] -- title instance ID
a.message = [[text@BB352971]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 8 MW Geothermal Power Plant ----
-- Needs (Base Power Cap - Base Power Production) > 4,600 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.GEOTHERMAL_8_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350070) or ((grid_logic_var.MAX_B_POWER - grid_logic_var.USED_B_POWER) < unlock_variables.GEOTHERMAL_8_MW_BASE_DEMAND)) then
		return [[text@BB352470]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352070]] -- title instance ID
a.message = [[text@BB352870]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 10 MW Geothermal Power Plant ----
-- Needs (Base Power Cap - Base Power Production) > 6,000 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.GEOTHERMAL_10_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350063) or ((grid_logic_var.MAX_B_POWER - grid_logic_var.USED_B_POWER) < unlock_variables.GEOTHERMAL_10_MW_BASE_DEMAND)) then
		return [[text@BB352471]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352071]] -- title instance ID
a.message = [[text@BB352871]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 25 MW Fission Power Plant----
-- Needs Population > 85,000, Power Demand > 25,000 MWH/month, and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.FISSION_25_MW)
function a.condition()
	run_grid_balance_variables ()
	if ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350078) or (not missions_completed( { '8c0ad6a8'} ) and ( (game.g_city_rci_population < tuning_constants.NUKE_CITY_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < tuning_constants.NUKE_ENERGY_DEMAND) or game.ordinance_is_on(ordinance_ids.ORDINANCE_NUKEFREE)))) then
		return [[text@6aa6dc83]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@4aa6dc60]]
a.message   = [[text@aaa6dc65]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record 112 MW Inland Fission Plant ----
-- Needs Any Fission Power Plant and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.FISSION_112_MW)
function a.condition()
	run_grid_balance_variables ()
	if ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350079) or (grid_logic_var.LARGE_FISSION_COUNT < 1)) then
		return [[text@bb352479]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@bb352079]]
a.message   = [[text@bb352879]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record 112 MW Coastal Fission Plant ----
-- Needs Any Fission Power Plant and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.FISSION_112_MW_S)
function a.condition()
	run_grid_balance_variables ()
	if ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB35007A) or (grid_logic_var.LARGE_FISSION_COUNT < 1)) then
		return [[text@bb35247a]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@bb35207a]]
a.message   = [[text@bb35287a]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1

----------- Reward record 1.2 GW Fission Power Facility ----
-- Needs 112 MW Fission Power Plant (either) OR 1.2 GW Fission Power Plant and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.FISSION_1_2_GW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350080) or ((grid_logic_var.LARGE_FISSION_COUNT - sc4game.automata.get_source_building_count(hex2dec("BB350078"))) < 1)) then
		return [[text@bb352480]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352080]] -- title instance ID
a.message = [[text@bb352880]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record Fusion Power Plant----
-- Needs IHT > 8,000 and Power Demand > 30,000 MWH/month OR Complete Cripple [City Name] Industrial Complex Mission and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.FUSION_75_MW)
function a.condition()
	run_grid_balance_variables ()
	if ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350088) or (not missions_completed( { '0c1434f7'} ) and ( (game.g_city_iht_population < unlock_variables.FUSION_IHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL  < unlock_variables.FUSION_ENERGY_DEMAND)))) then
		return [[text@aaa6dc87]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title   = [[text@6aa6dc6a]]
a.message   = [[text@4aa6dc6e]]
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
a.mood = advice_moods.GREAT_JOB
a.persist = 1  

----------- Reward record 945 kW Diesel Generator ----
-- Needs Game Month > 3 in Year 0 or Game Year Count > 0 and Unused Distribution Capacity less than 1,000 kVA --
a = create_reward_cityplanning(generator_hex_id.DIESEL_945_KW)
function a.condition()
	run_grid_balance_variables ()
	if  (((game.g_month < unlock_variables.DIESEL_GEN_945_KW_MONTH_AVAIL) and (game.g_year_count < 1))or (grid_logic_var.DISTRIB_AVAILABLE > unlock_variables.DIESEL_GEN_945_KW_DISTRIB_AVAIL)) then
		return [[text@BB352403]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352003]] -- title instance ID
a.message = [[text@BB352803]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 1.8 MW Diesel Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.OIL_1_8_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350190) then
		return [[text@BB352590]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352190]] -- title instance ID
a.message = [[text@BB352990]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

---------- Reward record 4.5 MW Oil Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.OIL_4_5_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB350191) then
		return [[text@BB352591]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352191]] -- title instance ID
a.message = [[text@BB352991]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 15 MW Oil Power Plant ----
-- Needs Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.OIL_15_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350090) then
		return [[text@bb352490]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352090]] -- title instance ID
a.message = [[text@bb352890]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 30 MW Oil Power Plant ----
-- Needs Power Demand > 32,500 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.OIL_30_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB350091) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.OIL_30_MW_ENERGY_DEMAND)) then
		return [[text@bb352491]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb352091]] -- title instance ID
a.message = [[text@bb352891]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 180 kW Natural Gas Generator ----
-- Needs Unused Distribution Capacity less than 1,000 kVA and City R Population less than 5,000 --
a = create_reward_cityplanning(generator_hex_id.NAT_GAS_180_KW)
function a.condition()
	run_grid_balance_variables ()
	if  (((game.g_month < unlock_variables.NAT_GAS_GEN_180_KW_MONTH_AVAIL) and (game.g_year_count < 1)) or (grid_logic_var.DISTRIB_AVAILABLE >= unlock_variables.NAT_GAS_GEN_180_KW_DISTRIB_AVAIL) or (game.g_city_r_population >= unlock_variables.NAT_GAS_GEN_180_KW_POP)) then
		return [[text@BB352500]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352100]] -- title instance ID
a.message = [[text@BB352900]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 1.3 MW Natural Gas Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.NAT_GAS_1_3_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501A0) then
		return [[text@BB3525A0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521A0]] -- title instance ID
a.message = [[text@BB3529A0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 2 MW Natural Gas Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.NAT_GAS_2_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501A1) then
		return [[text@BB3525A1]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521A1]] -- title instance ID
a.message = [[text@BB3529A1]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 2.4 MW Natural Gas Power Plant ----
-- Needs IM+IHT Pop > 2,000, Power Demand > 2,500, and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.NAT_GAS_2_4_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501A2) or ((game.g_city_im_population + game.g_city_iht_population) < unlock_variables.NAT_GAS_2_4_MW_IMHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.NAT_GAS_2_4_MW_ENERGY_DEMAND)) then
		return [[text@BB3525A2]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521A2]] -- title instance ID
a.message = [[text@BB3529A2]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 3.5 MW Natural Gas Power Plant ----
-- Needs IM+IHT Pop > 4,000 - Power Demand > 4,000 - and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.NAT_GAS_3_5_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501A3) or ((game.g_city_im_population + game.g_city_iht_population) < unlock_variables.NAT_GAS_3_5_MW_IMHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.NAT_GAS_3_5_MW_ENERGY_DEMAND)) then
		return [[text@BB3525A3]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521A3]] -- title instance ID
a.message = [[text@BB3529A3]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 6.5 MW Natural Gas Power Plant ----
-- Needs IM+IHT Pop > 6,000 - Power Demand > 7,500 - and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.NAT_GAS_6_5_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501A4) or ((game.g_city_im_population + game.g_city_iht_population) < unlock_variables.NAT_GAS_6_5_MW_IMHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.NAT_GAS_6_5_MW_ENERGY_DEMAND)) then
		return [[text@bb3525a4]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb3521a4]] -- title instance ID
a.message = [[text@bb3529a4]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 34 MW Natural Gas Power Plant ----
-- Needs IM+IHT Pop > 10,000 - Energy Demand > 37,500 - and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.NAT_GAS_34_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500A0) or ((game.g_city_im_population + game.g_city_iht_population) < unlock_variables.NAT_GAS_34_MW_IMHT_POP) or (game.g_power_consumed < unlock_variables.NAT_GAS_34_MW_ENERGY_DEMAND)) then
		return [[text@bb3524a0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb3520a0]] -- title instance ID
a.message = [[text@bb3528a0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 1 MW Wood Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.WOOD_1_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501B0) then
		return [[text@BB3525B0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521B0]] -- title instance ID
a.message = [[text@BB3529B0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 3 MW Woodpulp Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.WOOD_PULP_3_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501B1) then
		return [[text@BB3525B1]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521B1]] -- title instance ID
a.message = [[text@BB3529B1]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 15 MW Clean Coal Power Plant ----
-- Needs IHT Population > 4,000, Power Demand > 10,000, and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.CLEAN_COAL_15_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500B8) or (game.g_city_iht_population < unlock_variables.CLEANCARBON_IHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.CLEANCOAL_15_MW_ENERGY_DEMAND)) then
		return [[text@BB3524B8]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3520B8]] -- title instance ID
a.message = [[text@BB3528B8]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 25 MW Clean Coal Power Plant ----
-- Needs IHT Population > 4,000, Power Demand > 20,000, and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.CLEAN_COAL_25_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500B9) or (game.g_city_iht_population < unlock_variables.CLEANCARBON_IHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.CLEANCOAL_25_MW_ENERGY_DEMAND)) then
		return [[text@BB3524B9]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3520B9]] -- title instance ID
a.message = [[text@BB3528B9]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 35 MW Clean Coal Power Plant ----
-- Needs IHT Population > 4,000, Power Demand > 30,000, and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.CLEAN_COAL_35_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500BA) or (game.g_city_iht_population < unlock_variables.CLEANCARBON_IHT_POP) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.CLEANCOAL_35_MW_ENERGY_DEMAND)) then
		return [[text@BB3524BA]]
	else
		return reward_state.AVAILABLE
	end
end
a.once = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3520BA]] -- title instance ID
a.message = [[text@BB3528BA]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 2 MW Coal Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.COAL_2_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501C0) then
		return [[text@BB3525C0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521C0]] -- title instance ID
a.message = [[text@BB3529C0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 6.5 MW Coal Power Plant ----
-- Needs Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.COAL_6_5_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501C1) then
		return [[text@BB3525C1]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3521C1]] -- title instance ID
a.message = [[text@BB3529C1]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 10 MW Coal Power Plant ----
-- Needs Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.COAL_10_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500C0) then
		return [[text@bb3524c0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb3520c0]] -- title instance ID
a.message = [[text@bb3528c0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 28 MW Coal Power Plant ----
-- Needs Power Demand > 25,000 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.COAL_28_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500C1) or (grid_logic_var.MWH_DEMAND_TOTAL < unlock_variables.COAL_28_MW_ENERGY_DEMAND)) then
		return [[text@bb3524c1]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb3520c1]] -- title instance ID
a.message = [[text@bb3528c1]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 4.5 MW Clean Waste to Energy Plant ----
-- Needs IHT Population > 4,000 and Unused Distribution Capacity --
a = create_reward_cityplanning(power_plant_hex_id.CLEAN_WASTE_2_E_4_5_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.DISTRIB_AVAILABLE < kva_rating.ID_BB3501D0) or (game.g_city_iht_population < unlock_variables.CLEANCARBON_IHT_POP)) then
		return [[text@bb3525d0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb3521d0]] -- title instance ID
a.message = [[text@bb3529d0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 9 MW Waste to Energy Plant ----
-- Needs Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.WASTE_2_E_9_MW)
function a.condition()
	run_grid_balance_variables ()
	if  (grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500D0) then
		return [[text@bb3524d0]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@bb3520d0]] -- title instance ID
a.message = [[text@bb3528d0]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record 45 MW Waste to Energy Plant ----
-- Needs Garbage Produced/Imported > 200,000 and Unused Transmission Capacity --
a = create_reward_cityplanning(power_plant_hex_id.WASTE_2_E_45_MW)
function a.condition()
	run_grid_balance_variables ()
	if  ((grid_logic_var.TRANSMIT_AVAILABLE < kva_rating.ID_BB3500D1) or ((game.g_garbage_produced + game.g_garbage_imported) - (game.g_garbage_exported + game.g_garbage_recycled) < unlock_variables.W2E_45_MW_GARBAGE_AVAILABLE)) then
		return [[text@BB3524D1]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB3520D1]] -- title instance ID
a.message = [[text@BB3528D1]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

----------- Reward record Power Co Maintenance Facility ----
-- Needs Power Company Front Office --
-- Simmer2's Small Town Maintenance Facility --
a = create_reward_cityplanning(amps_building_hex_id.SM2_MANTENANCE_LOT)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.FRONT_OFFICE_COUNT < 1) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.AMPS_MAINT_FACILITY_POWER_PLANT)) then
		return [[text@BB352601]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352201]] -- title instance ID
a.message = [[text@BB352A01]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

-- Kloudkicker's Rural Maintenance Facility --
a = create_reward_cityplanning(amps_building_hex_id.KK_MANTENANCE_LOT)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.FRONT_OFFICE_COUNT < 1) or (grid_logic_var.LARGE_POWER_COUNT < unlock_variables.AMPS_MAINT_FACILITY_POWER_PLANT)) then
		return [[text@BB352611]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record Power Co Central Office ----
-- Needs Power Company Maintenance Facility --
-- Simmer2's Central Office --
a = create_reward_cityplanning(amps_building_hex_id.SM2_CENTRAL_OFFICE)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.MAINT_BUILD_COUNT < 1) or (game.trend_value(game_trends.G_POWER_EXPORTED,0) < unlock_variables.AMPS_MAIN_OFFICE_POWER_EXPORT)) then
		return [[text@BB352602]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352202]] -- title instance ID
a.message = [[text@BB352A02]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

-- Kloudkicker's Power Company Central Office --
a = create_reward_cityplanning(amps_building_hex_id.KK_CENTRAL_OFFICE)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.MAINT_BUILD_COUNT < 1) or (game.trend_value(game_trends.G_POWER_EXPORTED,0) < unlock_variables.AMPS_MAIN_OFFICE_POWER_EXPORT)) then
		return [[text@BB352612]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record Power Co Research Facility ----
-- Needs Power Company Central Office and Power generated from all three types (I/B/P) in excess of 10 GWh/mo. each --
-- Simmer2's Energy Research Facility --
a = create_reward_cityplanning(amps_building_hex_id.SM2_RESEARCH_FACILITY)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.CENT_OFFICE_COUNT < 1) or (grid_logic_var.GEN_I_POWER < unlock_variables.AMPS_RES_FACILITY_ENERGY_DEMAND) or (grid_logic_var.GEN_B_POWER < unlock_variables.AMPS_RES_FACILITY_ENERGY_DEMAND) or (grid_logic_var.GEN_P_POWER < unlock_variables.AMPS_RES_FACILITY_ENERGY_DEMAND)) then
		return [[text@BB352603]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352203]] -- title instance ID
a.message = [[text@BB352A03]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1

-- Kloudkicker's Power Company Research Facility --
a = create_reward_cityplanning(amps_building_hex_id.KK_RESEARCH_FACILITY)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.CENT_OFFICE_COUNT < 1) or (grid_logic_var.GEN_I_POWER < unlock_variables.AMPS_RES_FACILITY_ENERGY_DEMAND) or (grid_logic_var.GEN_B_POWER < unlock_variables.AMPS_RES_FACILITY_ENERGY_DEMAND) or (grid_logic_var.GEN_P_POWER < unlock_variables.AMPS_RES_FACILITY_ENERGY_DEMAND)) then

		return [[text@BB352613]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1

----------- Reward record Power Co HQ ----
-- Needs Power Co Research Facility, City Residential Population of 400k, and Regional Residential Population in excess of 1 million --
-- Kloudkicker's Power Company Corporate HQ --
a = create_reward_cityplanning(amps_building_hex_id.KK_CORPORATE_HQ)
function a.condition()
	run_grid_balance_variables ()
	if  ((power_company_buildings.RES_FACILITY_COUNT < 1) or (game.g_city_r_population < unlock_variables.AMPS_CORP_HQ_CITY_POP) or (game.g_region_r_population < unlock_variables.AMPS_CORP_HQ_REG_POP)) then
		return [[text@BB352614]]
	else
		return reward_state.AVAILABLE
	end
end
a.frequency = 1
a.timeout = tuning_constants.ADVICE_TIMEOUT_LONG
a.title = [[text@BB352204]] -- title instance ID
a.message = [[text@BB352A04]] -- body text instance ID
a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT -- triggers popup
a.mood = advice_moods.GREAT_JOB -- green title
a.persist = 1


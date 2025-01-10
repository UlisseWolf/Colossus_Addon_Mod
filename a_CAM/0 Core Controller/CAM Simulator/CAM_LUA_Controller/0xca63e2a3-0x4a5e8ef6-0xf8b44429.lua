--#-package:7ab44429# -- package signature
--


-- Reassign Plop Codes
building_tool_types.LOCAL_PRECINCT_4CAR   = hex2dec('EC4DA352')
building_tool_types.LOCAL_PRECINCT_36CAR  = hex2dec('25726A2C')
building_tool_types.DELUXE_POLICE_STATION = hex2dec('9AC7835A')


-- Local Police Station says "Mayor Don't Care!"
delete_advice('8a63c426') -- Remove this because we have disabled strikes so peeps have complete control of the funding levels.

--#city# has Gaps in Police Coverage
delete_advice('ea6cb278') -- Delete it. It's way too annoying.

-- Jailbreak started
delete_advice('ca6167ba') -- Delete so we can recreate it.

a          = create_advice_safety('ca6167ba')
a.event    = game_events.POLICE_JAILBREAK_STARTED
a.trigger  = "game.g_jailbreak > 0"
a.title    = "text@8a6df6f1 Jailbreak!"
a.message  = [[text@2a6df6fb Prisoners are escaping!]] 
a.priority = tuning_constants.ADVICE_PRIORITY_URGENT
a.timeout  = tuning_constants.ADVICE_TIMEOUT_MEDIUM
a.mood     = advice_moods.BAD_JOB


-- Jailbreak ended
delete_advice('0a616893') -- Becomes annoying as the game self regulates by releasing prisoners


-- EOF
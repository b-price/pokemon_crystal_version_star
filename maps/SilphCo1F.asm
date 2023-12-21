	object_const_def
	const SILPHCO1F_RECEPTIONIST
	const SILPHCO1F_OFFICER1
	const SILPHCO1F_OFFICER2
	const SILPHCO1F_GENTLEMAN
	const SILPHCO1F_CLERK

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SilphCo1FOfficer1Callback
	
SilphCo1FOfficer1Callback:
	checkevent EVENT_SILPH_CO_1F_OFFICER_1
	iftrue .NoAppear
	sjump .Appear
.NoAppear:
	disappear SILPHCO1F_OFFICER1
	endcallback
.Appear:
	appear SILPHCO1F_OFFICER1
	endcallback
	
SilphCoReceptionistScript:
	jumptextfaceplayer SilphCoReceptionistText

SilphCoOfficerScript:
	jumptextfaceplayer SilphCoOfficerText
	
SilphCoOfficerFrom2FScript:
	jumptextfaceplayer SilphCoOfficerText_OpenedSilphCo2F

SilphCoGentlemanScript:
	faceplayer
	opentext
	checkevent EVENT_OPENED_SILPH_CO_2F
	iftrue .OpenedSilphCo2F
	writetext SilphCoGentlemanText
	waitbutton
	checkevent EVENT_BEAT_RED
	iftrue .BeatRed
	closetext
	end
.OpenedSilphCo2F:
	writetext SilphCoGentlemanText_OpenedSilphCo2F
	waitbutton
	closetext
	end
.BeatRed:
	writetext SilphCoGentlemanText_BeatRed
	setevent EVENT_OPENED_SILPH_CO_2F
	applymovement SILPHCO1F_OFFICER1, SilphCo_OfficerMovementL
	setevent EVENT_SILPH_CO_1F_OFFICER_1
	clearevent EVENT_SILPH_CO_1F_OFFICER_2
	waitbutton
	closetext
	end
	
SilphCoClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_UP_GRADE
	iftrue .GotUpGrade
	writetext SilphCoClerkText
	promptbutton
	verbosegiveitem UP_GRADE
	iffalse .NoRoom
	writetext SilphCoClerkText_UpGrade
	setevent EVENT_GOT_UP_GRADE
	waitbutton
	closetext
	end
.GotUpGrade:
	writetext SilphCoClerkText_UpGrade
	waitbutton
	closetext
	end
.NoRoom:
	closetext
	end
	
SilphCo_OfficerMovementL:
	turn_head LEFT
	step LEFT
	turn_head DOWN
	step_end
	
SilphCo_OfficerMovementR:
	turn_head RIGHT
	step RIGHT
	turn_head DOWN
	step_end	

SilphCoReceptionistText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."
	done

SilphCoClerkText:
	text "Thanks for coming"
	line "all this way."

	para "Take a souveneir"
	line "for your trouble!"
	done
	
SilphCoClerkText_UpGrade:
	text "It's SILPH CO.'s"
	line "latest product."

	para "It's not for sale"
	line "anywhere yet."
	done
	
SilphCoOfficerText:
	text "Only employees are"
	line "permitted to go"
	cont "upstairs."
	done
	
SilphCoOfficerText_OpenedSilphCo2F:
	text "Oh, it's you."
	line "Go right ahead."
	done
	
SilphCoGentlemanText:
	text "You look like a"
	line "strong trainer."
	
	para "SILPH CO. will"
	line "offer some serious"
	cont "perks to the best"
	
	para "trainer in the"
	line "region."
	
	para "I hear he's alone"
	line "in a cave"
	cont "somewhere."
	done
	
SilphCoGentlemanText_BeatRed:
	text "WHAT?!"
	line "You know him?"
	
	para "AND you actually"
	line "beat him in"
	cont "battle?!"
	
	para "Wow. I'll let you"
	line "into our super-"
	cont "secret company"
	
	para "store. Let this"
	line "kid in, guard!"
	done
	
SilphCoGentlemanText_OpenedSilphCo2F:
	text "How goes it,"
	line "ultimate #MON"
	cont "trainer?"
	done

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7
	warp_event 13,  0, SILPH_CO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, EVENT_SILPH_CO_1F_OFFICER_1
	object_event 12,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerFrom2FScript, EVENT_SILPH_CO_1F_OFFICER_2
	object_event 13,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilphCoGentlemanScript, -1
	object_event  2,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilphCoClerkScript, -1

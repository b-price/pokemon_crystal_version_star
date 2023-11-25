	object_const_def
	const SAFARIZONESECRETHOUSE_SUPER_NERD
	const SAFARIZONESECRETHOUSE_KANGASKHAN
	
SafariZoneSecretHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SuperNerdInHouse:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SECRET_HOUSE_GUY
	iffalse .FirstTime
	writetext SuperNerdSubstituteText
	yesorno
	iffalse .TutorRefused1
	setval SUBSTITUTE
	writetext SecretHouseMoveTutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove1
.TutorRefused1
	writetext SuperNerdRefusedText
	waitbutton
	closetext
	end

.TeachMove1
	writetext SuperNerdTaughtText
	waitbutton
	closetext
	end
.FirstTime:
	writetext SuperNerdSecretKeyText
	setevent EVENT_TALKED_TO_SECRET_HOUSE_GUY
	waitbutton
	writetext SuperNerdSubstituteText
	yesorno
	iffalse .TutorRefused2
	setval SUBSTITUTE
	writetext SecretHouseMoveTutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove2
.TutorRefused2
	writetext SuperNerdRefusedText
	waitbutton
	closetext
	end

.TeachMove2
	writetext SuperNerdTaughtText
	waitbutton
	closetext
	end

SafariZoneSecretHousePhone:
	jumptext SafariZoneSecretHousePhoneText
	
SafariZoneSecretHouseTrashCan:
	jumpstd TrashCanScript
	
SecretHouseKangaskhan:
	faceplayer
	opentext
	writetext SecretHouseKangaskhanText
	cry KANGASKHAN
	waitbutton
	closetext
	end
	
SuperNerdSecretKeyText:
	text "Who are you?!"
	
	para "What do you want"
	line "with me?"
	
	para "If you leave…"
	line "…and keep your"
	cont "mouth shut…"
	
	para "I'll make it worth"
	line "your while."
	
	para "I can teach your"
	line "#MON an"
	cont "advanced move…"
	done
	
SuperNerdSubstituteText:
	text "Shall I teach one"
	line "of your #MON"
	cont "SUBSTITUTE?"
	done
	
SuperNerdTaughtText:
	text "I don't know how"
	line "you found me, but"
	
	para "remember, we have"
	line "a deal. Not a"
	
	para "word of this to"
	line "anyone!"
	done
	
SuperNerdRefusedText:
	text "Alright, but my"
	line "offer is still"
	cont "on the table."
	done
	
SecretHouseMoveTutorClear:
	text_start
	done
	
SecretHouseKangaskhanText:
	text "KANGASKHAN"
	line "has an untrusting"
	cont "look…"
	done
	
SafariZoneSecretHousePhoneText:
	text "…It's been"
	line "disconnected."
	done

SafariZoneSecretHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, SafariZoneSecretHousePhone
	bg_event  7,  7, BGEVENT_READ, SafariZoneSecretHouseTrashCan

	def_object_events
	object_event  3,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SuperNerdInHouse, -1
	object_event  6,  4, SPRITE_DRAGON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SecretHouseKangaskhan, -1

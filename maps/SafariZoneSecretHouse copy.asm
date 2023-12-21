	object_const_def
	const SAFARIZONESECRETHOUSE_SUPER_NERD
	
SafariZoneSecretHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SuperNerdInHouse:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKE_FLUTE
	iftrue .GotPokeFlute
	writetext SuperNerdSecretKeyText
	promptbutton
	verbosegiveitem POKE_FLUTE
	iffalse .NoRoomForPokeFlute
	setevent EVENT_GOT_POKE_FLUTE
	closetext
	end

.GotPokeFlute:
	writetext SuperNerdGotPokeFluteText
	waitbutton
.NoRoomForPokeFlute:
	closetext
	end
	
SafariZoneSecretHousePhone:
	jumptext SafariZoneSecretHousePhoneText
	
SafariZoneSecretHouseTrashCan:
	jumpstd TrashCanScript
	
SuperNerdSecretKeyText:
	text "Who are you?!"
	
	para "What do you want"
	line "with me?"
	
	para "If you leave…"
	line "…and keep your"
	cont "mouth shut…"
	
	para "I'll make it worth"
	line "your while."
	
	para "Here, take this"
	line "weird flute."

	para "It awakens any"
	line "sleeping #MON."
	cont "in battle."
	done
	
SuperNerdGotPokeFluteText:
	text "I don't know how"
	line "you found me, but"
	
	para "remember, we have"
	line "a deal. Not a"
	
	para "word of this to"
	line "anyone!"
	
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

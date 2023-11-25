	object_const_def
	const SAFARIZONEOFFICE_OFFICER

SafariZoneMainOffice_MapScripts:
	def_scene_scripts
	scene_script SafariZoneMainOfficeNoop1Scene, SCENE_SAFARIZONEMAINOFFICE_REFUSE_ENTRY
	scene_script SafariZoneMainOfficeNoop2Scene, SCENE_SAFARIZONEMAINOFFICE_NOOP

	def_callbacks

SafariZoneMainOfficeNoop1Scene:
	end

SafariZoneMainOfficeNoop2Scene:
	end
	
SafariZoneOfficeGuard:
	jumptextfaceplayer SafariZoneOfficeGuardText1
	
SafariZoneMainOfficeRefuseEntry:
	turnobject SAFARIZONEOFFICE_OFFICER, RIGHT
	showemote EMOTE_SHOCK, SAFARIZONEOFFICE_OFFICER, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_SHOWED_WARDEN_GDAUGHTER_LEGEND_BIRD
	iftrue .AllowIn
	opentext
	writetext SafariZoneOfficeGuardRefuseText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneRefuseMovement
	end
.AllowIn:
	opentext
	writetext SafariZoneOfficeGuardAllowText
	setmapscene SAFARI_ZONE_MAIN_OFFICE, SCENE_SAFARIZONEMAINOFFICE_NOOP
	waitbutton
	closetext
	end

SafariZoneRefuseMovement:
	step DOWN
	step_end
	
SafariZoneMainOfficePhone:
	jumptext SafariZoneMainOfficePhoneText
	
SafariZoneMainOfficeTrashCan:
	jumpstd TrashCanScript
	
SafariZoneOfficeGuardRefuseText:
	text "Hey!"
	
	para "Didn't you see"
	line "the sign?"
	
	para "The SAFARI ZONE"
	line "is closed."
	
	para "That means you"
	line "gotta turn back"
	cont "around, kid!"
	done
	
SafariZoneOfficeGuardAllowText:
	text "Hey!"
	
	para "Oh, you must be"
	line "<PLAY_G>."
	
	para "The warden's"
	line "granddaughter told"
	cont "me about you."
	
	para "Go on through!"
	
	para "Don't let anyone"
	line "know about this,"
	cont "though!"
	done
	
SafariZoneOfficeGuardText1:
	text "The SAFARI ZONE"
	line "is closed."
	
	para "It's too bad, but"
	line "the warden's gone."
	
	para "His granddaughter"
	line "lives in town."
	
	para "She's like a"
	line "daughter to me!"
	done
	
SafariZoneOfficeGuardText2:
	text "Just don't tell"
	line "anyone."
	done	
	
SafariZoneMainOfficePhoneText:
	text "Ring…"
	
	para "Ring…"
	
	para "Ring…"
	
	para "No one picked up."
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2
	warp_event  2,  0, SAFARI_ZONE_CENTER, 1
	warp_event  3,  0, SAFARI_ZONE_CENTER, 2

	def_coord_events
	coord_event  2,  2, SCENE_SAFARIZONEMAINOFFICE_REFUSE_ENTRY, SafariZoneMainOfficeRefuseEntry
	coord_event  3,  2, SCENE_SAFARIZONEMAINOFFICE_REFUSE_ENTRY, SafariZoneMainOfficeRefuseEntry

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, SafariZoneMainOfficePhone
	bg_event  7,  7, BGEVENT_READ, SafariZoneMainOfficeTrashCan

	def_object_events
	object_event  0,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SafariZoneOfficeGuard, -1

	object_const_def
	const SAFARIZONEWEST_POKE_BALL1
	const SAFARIZONEWEST_POKE_BALL2
	const SAFARIZONEWEST_POKE_BALL3
	const SAFARIZONEWEST_POKE_BALL4
	
SafariZoneWest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SafariZoneWestCheckSecretKeyCallback

SafariZoneWestTMSleepTalk:
	itemball TM_SLEEP_TALK
	
SafariZoneWestRareCandy:
	itemball RARE_CANDY
	
SafariZoneWestNugget:
	itemball NUGGET
	
SafariZoneWestMaxElixer:
	itemball MAX_ELIXER
	
SafariZoneWestSign:
	jumptext SafariZoneWestSignText
	
SafariZoneWestHouseSign:
	jumptext SafariZoneWestHouseSignText

SafariZoneWestHiddenPPUp:
	hiddenitem PP_UP, EVENT_SAFARI_ZONE_WEST_HIDDEN_PP_UP
	
SafariZoneWestCheckSecretKeyCallback:
	checkevent EVENT_USED_SECRET_KEY
	iffalse .LockHouseDoor
	endcallback

.LockHouseDoor:
	changeblock 3, 3, $38 ; locked door
	endcallback
	
HouseDoorScript::
	opentext
	checkevent EVENT_USED_SECRET_KEY
	iftrue .Open
	checkitem SECRET_KEY
	iftrue .Unlock
	writetext SafariZoneWestTheDoorsLockedText
	waitbutton
	closetext
	end

.Unlock:
	playsound SFX_TRANSACTION
	writetext SafariZoneWestSecretKeyOpenedDoorText
	waitbutton
	closetext
	changeblock 3, 3, $56 ; unlocked door
	reloadmappart
	closetext
	setevent EVENT_USED_SECRET_KEY
	end
	
.Open:
	writetext SafariZoneWestTheDoorIsOpenText
	waitbutton
	closetext
	end
	
SafariZoneWestSignText:
	text "SAFARI ZONE"
	line "WEST AREA"
	done
	
SafariZoneWestHouseSignText:
	text "Rest house no. 3"
	done
	
SafariZoneWestTheDoorsLockedText:
	text "It's locked."
	done
	
SafariZoneWestSecretKeyOpenedDoorText:
	text "Fits kind of"
	line "weirdly…"
	
	para "But it opened!"
	done
	
SafariZoneWestTheDoorIsOpenText:
	text "The door is open."
	done

SafariZoneWest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 22, SAFARI_ZONE_CENTER, 7
	warp_event 29, 23, SAFARI_ZONE_CENTER, 8
	warp_event 26,  0, SAFARI_ZONE_NORTH, 5
	warp_event 27,  0, SAFARI_ZONE_NORTH, 6
	warp_event 20,  0, SAFARI_ZONE_NORTH, 7
	warp_event 21,  0, SAFARI_ZONE_NORTH, 8
	warp_event 11, 11, SAFARI_ZONE_WEST_HOUSE, 1
	warp_event  3,  3, SAFARI_ZONE_SECRET_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  3,  3, BGEVENT_READ, HouseDoorScript
	bg_event 24, 22, BGEVENT_READ, SafariZoneWestSign
	bg_event 12, 12, BGEVENT_READ, SafariZoneWestHouseSign
	bg_event  2, 23, BGEVENT_ITEM, SafariZoneWestHiddenPPUp

	def_object_events
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestTMSleepTalk, EVENT_SAFARI_ZONE_WEST_TM_SLEEP_TALK
	object_event 17, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestRareCandy, EVENT_SAFARI_ZONE_WEST_RARE_CANDY
	object_event 19,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestNugget, EVENT_SAFARI_ZONE_WEST_NUGGET
	object_event 18, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestMaxElixer, EVENT_SAFARI_ZONE_WEST_MAX_ELIXER

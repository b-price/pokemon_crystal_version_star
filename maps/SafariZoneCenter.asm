	object_const_def
	const SAFARIZONECENTER_POKE_BALL1
	

SafariZoneCenter_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneCenterNugget:
	itemball NUGGET
	
SafariZoneCenterSign:
	jumptext SafariZoneCenterSignText
	
SafariZoneCenterHouseSign:
	jumptext SafariZoneCenterHouseSignText

SafariZoneCenterHiddenPPUp:
	hiddenitem PP_UP, EVENT_SAFARI_ZONE_CENTER_HIDDEN_PP_UP
	
SafariZoneCenterSignText:
	text "SAFARI ZONE CLOSED"
	line "NO TRESPASSING!"
	done
	
SafariZoneCenterHouseSignText:
	text "Rest house no. 1"
	done

SafariZoneCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 25, SAFARI_ZONE_MAIN_OFFICE, 3
	warp_event 15, 25, SAFARI_ZONE_MAIN_OFFICE, 4
	warp_event 29, 11, SAFARI_ZONE_EAST, 1
	warp_event 29, 10, SAFARI_ZONE_EAST, 2
	warp_event 14,  0, SAFARI_ZONE_NORTH, 3
	warp_event 15,  0, SAFARI_ZONE_NORTH, 4
	warp_event  0, 10, SAFARI_ZONE_WEST, 1
	warp_event  0, 11, SAFARI_ZONE_WEST, 2
	warp_event 17, 19, SAFARI_ZONE_CENTER_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 14, 22, BGEVENT_READ, SafariZoneCenterSign
	bg_event 18, 20, BGEVENT_READ, SafariZoneCenterHouseSign
	bg_event 10, 15, BGEVENT_ITEM, SafariZoneCenterHiddenPPUp

	def_object_events
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneCenterNugget, EVENT_SAFARI_ZONE_CENTER_NUGGET

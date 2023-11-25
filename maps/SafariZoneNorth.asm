	object_const_def
	const SAFARIZONENORTH_POKE_BALL1
	const SAFARIZONENORTH_POKE_BALL2
	const SAFARIZONENORTH_POKE_BALL3
	const SAFARIZONENORTH_POKE_BALL4
	

SafariZoneNorth_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorthTMSnore:
	itemball TM_SNORE
	
SafariZoneNorthRareCandy:
	itemball RARE_CANDY
	
SafariZoneNorthNugget:
	itemball NUGGET
	
SafariZoneNorthMaxRevive:
	itemball MAX_REVIVE
	
SafariZoneNorthSign:
	jumptext SafariZoneNorthSignText
	
SafariZoneNorthHouseSign:
	jumptext SafariZoneNorthHouseSignText

SafariZoneNorthHiddenPPUp:
	hiddenitem PP_UP, EVENT_SAFARI_ZONE_NORTH_HIDDEN_PP_UP
	
SafariZoneNorthSignText:
	text "SAFARI ZONE CLOSED"
	line "NO TRESPASSING!"
	done
	
SafariZoneNorthHouseSignText:
	text "Rest house no. 3"
	done

SafariZoneNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 39, 31, SAFARI_ZONE_EAST, 3
	warp_event 39, 30, SAFARI_ZONE_EAST, 4
	warp_event 20, 35, SAFARI_ZONE_CENTER, 5
	warp_event 21, 35, SAFARI_ZONE_CENTER, 6
	warp_event  8, 35, SAFARI_ZONE_WEST, 3
	warp_event  9, 35, SAFARI_ZONE_WEST, 4
	warp_event  2, 35, SAFARI_ZONE_WEST, 5
	warp_event  3, 35, SAFARI_ZONE_WEST, 6
	warp_event 35,  3, SAFARI_ZONE_NORTH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 18, 32, BGEVENT_READ, SafariZoneNorthSign
	bg_event 26, 28, BGEVENT_READ, SafariZoneNorthSign
	bg_event 12, 30, BGEVENT_READ, SafariZoneNorthSign
	bg_event 36,  4, BGEVENT_READ, SafariZoneNorthHouseSign
	bg_event 38,  2, BGEVENT_ITEM, SafariZoneNorthHiddenPPUp

	def_object_events
	object_event 19,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthTMSnore, EVENT_SAFARI_ZONE_NORTH_TM_SNORE
	object_event 25,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthRareCandy, EVENT_SAFARI_ZONE_NORTH_RARE_CANDY
	object_event  6, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthNugget, EVENT_SAFARI_ZONE_NORTH_NUGGET
	object_event 17, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthMaxRevive, EVENT_SAFARI_ZONE_NORTH_MAX_REVIVE

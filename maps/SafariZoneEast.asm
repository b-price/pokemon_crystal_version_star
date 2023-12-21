	object_const_def
	const SAFARIZONEEAST_POKE_BALL1
	const SAFARIZONEEAST_POKE_BALL2
	const SAFARIZONEEAST_POKE_BALL3
	const SAFARIZONEEAST_POKE_BALL4
	

SafariZoneEast_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneEastCarbos:
	itemball CARBOS
	
SafariZoneEastMaxRevive:
	itemball MAX_REVIVE
	
SafariZoneEastMaxEther:
	itemball MAX_ETHER
	
SafariZoneEastUltraBall:
	itemball ULTRA_BALL
	
SafariZoneEastSign:
	jumptext SafariZoneEastSignText
	
SafariZoneEastHouseSign:
	jumptext SafariZoneEastHouseSignText

SafariZoneEastHiddenPPUp:
	hiddenitem PP_UP, EVENT_SAFARI_ZONE_EAST_HIDDEN_PP_UP
	
SafariZoneEastSignText:
	text "SAFARI ZONE"
	line "EAST AREA"
	done
	
SafariZoneEastHouseSignText:
	text "Rest house no. 2"
	done

SafariZoneEast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 23, SAFARI_ZONE_CENTER, 3
	warp_event  0, 22, SAFARI_ZONE_CENTER, 4
	warp_event  0,  5, SAFARI_ZONE_NORTH, 1
	warp_event  0,  4, SAFARI_ZONE_NORTH, 2
	warp_event 25,  9, SAFARI_ZONE_EAST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  4, 22, BGEVENT_READ, SafariZoneEastSign
	bg_event  6,  4, BGEVENT_READ, SafariZoneEastSign
	bg_event 26, 10, BGEVENT_READ, SafariZoneEastHouseSign
	bg_event  2,  2, BGEVENT_ITEM, SafariZoneEastHiddenPPUp

	def_object_events
	object_event 20, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastCarbos, EVENT_SAFARI_ZONE_EAST_CARBOS
	object_event 15, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastMaxRevive, EVENT_SAFARI_ZONE_EAST_MAX_REVIVE
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastMaxEther, EVENT_SAFARI_ZONE_EAST_MAX_ETHER
	object_event 18,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneEastUltraBall, EVENT_SAFARI_ZONE_EAST_ULTRA_BALL

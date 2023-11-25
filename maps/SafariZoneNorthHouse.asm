	object_const_def
	const SAFARIZONENORTHHOUSE_POKE_BALL1
	
SafariZoneNorthHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneNorthHouseTMRest:
	itemball TM_REST
	
SafariZoneNorthHousePhone:
	jumptext SafariZoneNorthHousePhoneText
	
SafariZoneNorthHouseTrashCan:
	jumpstd TrashCanScript

SafariZoneNorthHousePhoneText:
	text "…It's been"
	line "disconnected."
	done
	

SafariZoneNorthHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_NORTH, 9
	warp_event  3,  7, SAFARI_ZONE_NORTH, 9

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, SafariZoneNorthHousePhone
	bg_event  7,  7, BGEVENT_READ, SafariZoneNorthHouseTrashCan

	def_object_events
	object_event  0,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneNorthHouseTMRest, EVENT_SAFARI_ZONE_NORTH_HOUSE_TM_REST

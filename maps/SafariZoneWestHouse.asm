	object_const_def
	const SAFARIZONEWESTHOUSE_POKE_BALL1
	
SafariZoneWestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneWestHouseScopeLens:
	itemball SCOPE_LENS
	
SafariZoneWestHousePhone:
	jumptext SafariZoneWestHousePhoneText
	
SafariZoneWestHouseTrashCan:
	jumpstd TrashCanScript

SafariZoneWestHousePhoneText:
	text "…It's been"
	line "disconnected."
	done
	

SafariZoneWestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, SafariZoneWestHousePhone
	bg_event  7,  7, BGEVENT_READ, SafariZoneWestHouseTrashCan

	def_object_events
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariZoneWestHouseScopeLens, EVENT_SAFARI_ZONE_WEST_HOUSE_SCOPE_LENS

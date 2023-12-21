SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
SeafoamIslands1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_SEAFOAM_ISLANDS_1F_HIDDEN_RARE_CANDY
	

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 11, ROUTE_20, 1
	warp_event  5, 11, ROUTE_20, 2
	warp_event 23, 11, SEAFOAM_GYM, 1
	warp_event 19,  7, SEAFOAM_ISLANDS_B1F, 1
	warp_event  7,  7, SEAFOAM_ISLANDS_B1F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_ITEM, SeafoamIslands1FHiddenRareCandy


	
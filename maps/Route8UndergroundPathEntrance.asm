Route8UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route8UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_8, 3
	warp_event  4,  7, ROUTE_8, 3
	warp_event  4,  3, UNDERGROUND_KPF, 1

	def_coord_events

	def_bg_events

	def_object_events
	


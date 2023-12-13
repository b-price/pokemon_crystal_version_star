	object_const_def
	const ROUTE10NORTH_OFFICER

Route10North_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route10NorthOfficer:
	jumptextfaceplayer Route10NorthOfficerText

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd PokecenterSignScript
	
Route10NorthOfficerText:
	text "In here is what"
	line "remains of the"
	cont "old POWER PLANT."
	
	para "It remains a"
	line "habitat for"
	cont "extremely strong"
	cont "electric #MON."
	
	para "It's off limits!"
	done

PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  1, ROUTE_10_POKECENTER_1F, 1
	warp_event  3,  9, POWER_PLANT, 1
	warp_event 14,  9, POWER_PLANT_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  5, 11, BGEVENT_READ, PowerPlantSign
	bg_event 12,  1, BGEVENT_READ, Route10PokecenterSign

	def_object_events
	object_event 14, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route10NorthOfficer, EVENT_ROUTE_10_OFFICER

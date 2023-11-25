	object_const_def
	const ROUTE2VIRIDIANFORESTGATESOUTH_OFFICER
	const ROUTE2VIRIDIANFORESTGATESOUTH_BUG_CATCHER
	const ROUTE2VIRIDIANFORESTGATESOUTH_WEEDLE

Route2ViridianForestGateSouth_MapScripts:
	def_scene_scripts

	def_callbacks

Route2ViridianForestGateSouthOfficerScript:
	jumptextfaceplayer Route2ViridianForestGateSouthOfficerText
	
Route2ViridianForestGateSouthBugCatcherScript:
	jumptextfaceplayer Route2ViridianForestGateSouthBugCatcherText
	
Route2ViridianForestGateSouthWeedleScript:
	opentext
	writetext Route2ViridianForestGateSouthWeedleText
	cry WEEDLE
	waitbutton
	closetext
	end

Route2ViridianForestGateSouthOfficerText:
	text "There are strong"
	line "bug #MON in"
	cont "VIRIDIAN FOREST."

	para "Bring ANTIDOTE."
	line "I don't want to"
	cont "have to come"
	cont "and rescue you!"
	done
	
Route2ViridianForestGateSouthBugCatcherText:
	text "I love my WEEDLE!"

	para "Even if it uses"
	line "POISON STING on"
	cont "me sometimes…"
	done
	
Route2ViridianForestGateSouthWeedleText:
	text "WEEDLE: Weed!"
	done
	
Route2ViridianForestGateSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 1
	warp_event  5,  0, VIRIDIAN_FOREST, 2
	warp_event  4,  7, ROUTE_2, 8
	warp_event  5,  7, ROUTE_2, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2ViridianForestGateSouthOfficerScript, -1
	object_event  7,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2ViridianForestGateSouthBugCatcherScript, -1
	object_event  8,  6, SPRITE_WEEDLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2ViridianForestGateSouthWeedleScript, -1

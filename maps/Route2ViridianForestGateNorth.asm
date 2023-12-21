	object_const_def
	const ROUTE2VIRIDIANFORESTGATENORTH_GRANNY
	const ROUTE2VIRIDIANFORESTGATENORTH_GENGAR

Route2ViridianForestGateNorth_MapScripts:
	def_scene_scripts

	def_callbacks

Route2ViridianForestGateNorthGrannyScript:
	jumptextfaceplayer Route2ViridianForestGateNorthGrannyText
	
Route2ViridianForestGateNorthGengarScript:
	opentext
	writetext Route2ViridianForestGateNorthGengarText
	cry GENGAR
	waitbutton
	closetext
	end

Route2ViridianForestGateNorthGrannyText:
	text "My sister likes to"
	line "wander the forest."

	para "She says she's"
	line "felt a warm, yet"
	
	para "unfamiliar"
	line "presence there"
	cont "recently."
	done
	
Route2ViridianForestGateNorthGengarText:
	text "…"
	
	para "GENGAR's grin"
	line "pierces your soul…"
	done

Route2ViridianForestGateNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 6
	warp_event  5,  0, ROUTE_2, 7
	warp_event  4,  7, VIRIDIAN_FOREST, 3
	warp_event  5,  7, VIRIDIAN_FOREST, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2ViridianForestGateNorthGrannyScript, -1
	object_event  9,  4, SPRITE_GENGAR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2ViridianForestGateNorthGengarScript, -1
	

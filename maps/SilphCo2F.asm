	object_const_def
	const SILPHCO2F_CLERK1
	const SILPHCO2F_CLERK2
	const SILPHCO2F_CLERK3
	const SILPHCO2F_CLERK4
	const SILPHCO2F_OFFICER

SilphCo2F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCo2FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SILPH_TM_1
	closetext
	end
	
SilphCo2FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SILPH_TM_2
	closetext
	end
	
SilphCo2FClerk3Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SILPH_TM_3
	closetext
	end
	
SilphCo2FClerk4Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SILPH_STONES
	closetext
	end
	
SilphCo2FOfficerScript:
	jumptextfaceplayer SilphCo2FOfficerText
	
SilphCo2FOfficerText:
	text "Upstairs is off-"
	line "limits."
	
	para "They're conducting"
	line "important"
	cont "business, kid!"
	done

SilphCo2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  2, SILPH_CO_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2FClerk1Script, -1
	object_event  5,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2FClerk2Script, -1
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2FClerk3Script, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2FClerk4Script, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCo2FOfficerScript, -1

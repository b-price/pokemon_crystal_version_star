	object_const_def
	const SEAFOAMISLANDSB3F_BOULDER
	const SEAFOAMISLANDSB3F_POKE_BALL1
	const SEAFOAMISLANDSB3F_POKE_BALL2
	const SEAFOAMISLANDSB3F_POKE_BALL3

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB3FBoulder:
	jumpstd StrengthBoulderScript
	
SeafoamIslandsB3FMoonStone:
	itemball MOON_STONE
	
SeafoamIslandsB3FTMIceBeam:
	itemball TM_ICE_BEAM
	
SeafoamIslandsB3FMaxPotion:
	itemball MAX_POTION

SeafoamIslandsB3FHiddenHPUp:
	hiddenitem HP_UP, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_HP_UP
	
SeafoamIslandsB3FHiddenPPUp:
	hiddenitem PP_UP, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_PP_UP
	
SeafoamIslandsB3FHiddenStarPiece:
	hiddenitem STAR_PIECE, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_STAR_PIECE
	

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33,  9, SEAFOAM_ISLANDS_B2F, 5
	warp_event 35, 19, SEAFOAM_ISLANDS_B2F, 6
	warp_event 19, 11, SEAFOAM_ISLANDS_B2F, 7
	warp_event  3, 19, SEAFOAM_ISLANDS_B2F, 8
	warp_event 37, 19, SEAFOAM_ISLANDS_B4F, 1
	warp_event 29, 17, SEAFOAM_ISLANDS_B4F, 2
	warp_event 27,  3, SEAFOAM_ISLANDS_B4F, 3
	warp_event 19,  5, SEAFOAM_ISLANDS_B4F, 4
	warp_event  9, 15, SEAFOAM_ISLANDS_B4F, 5
	warp_event  5,  3, SEAFOAM_ISLANDS_B4F, 6

	def_coord_events

	def_bg_events
	bg_event  8,  6, BGEVENT_ITEM, SeafoamIslandsB3FHiddenHPUp
	bg_event 24, 15, BGEVENT_ITEM, SeafoamIslandsB3FHiddenPPUp
	bg_event 30, 20, BGEVENT_ITEM, SeafoamIslandsB3FHiddenStarPiece

	def_object_events
	object_event 24,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB3FBoulder, -1
	object_event 17, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FMoonStone, EVENT_SEAFOAM_ISLANDS_B3F_MOON_STONE
	object_event 17,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FTMIceBeam, EVENT_SEAFOAM_ISLANDS_B3F_TM_ICE_BEAM
	object_event 16, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB3FMaxPotion, EVENT_SEAFOAM_ISLANDS_B3F_MAX_POTION
	
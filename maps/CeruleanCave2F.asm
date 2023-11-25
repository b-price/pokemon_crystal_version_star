	object_const_def
	const CERULEANCAVE2F_POKE_BALL1
	const CERULEANCAVE2F_POKE_BALL2
	const CERULEANCAVE2F_POKE_BALL3

CeruleanCave2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanCave2FFTMThunder:
	itemball TM_THUNDER

CeruleanCave2FTMBlizzard:
	itemball TM_BLIZZARD
	
CeruleanCave2FTMFireBlast:
	itemball TM_FIRE_BLAST

CeruleanCave2FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_2F_HIDDEN_PP_UP
	
CeruleanCave2FHiddenNugget:
	hiddenitem NUGGET, EVENT_CERULEAN_CAVE_2F_HIDDEN_NUGGET
	
CeruleanCave2FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_CERULEAN_CAVE_2F_HIDDEN_MAX_ELIXER

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, CERULEAN_CAVE_1F, 2
	warp_event 31,  3, CERULEAN_CAVE_1F, 3
	warp_event 11,  3, CERULEAN_CAVE_1F, 4
	warp_event 21,  9, CERULEAN_CAVE_1F, 5
	warp_event  5, 13, CERULEAN_CAVE_1F, 6
	warp_event  3,  5, CERULEAN_CAVE_1F, 7
	
	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_ITEM, CeruleanCave2FHiddenPPUp
	bg_event 12, 14, BGEVENT_ITEM, CeruleanCave2FHiddenNugget
	bg_event 26, 17, BGEVENT_ITEM, CeruleanCave2FHiddenMaxElixer

	def_object_events
	object_event  7, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FFTMThunder, EVENT_CERULEAN_CAVE_2F_TM_THUNDER
	object_event 15,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FTMBlizzard, EVENT_CERULEAN_CAVE_2F_TM_BLIZZARD
	object_event 31, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave2FTMFireBlast, EVENT_CERULEAN_CAVE_2F_TM_FIRE_BLAST

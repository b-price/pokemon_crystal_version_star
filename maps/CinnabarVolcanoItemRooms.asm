	object_const_def
	const CINNABARVOLCANOITEM_POKE_BALL1
	const CINNABARVOLCANOITEM_POKE_BALL2
	const CINNABARVOLCANOITEM_POKE_BALL3
	const CINNABARVOLCANOITEM_POKE_BALL4
	

CinnabarVolcanoItemRooms_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarVolcanoItemTM:
	itemball TM_FLAMETHROWER

CinnabarVolcanoItemMaxRevive:
	itemball MAX_REVIVE
	
CinnabarVolcanoItemDomeFossil:
	itemball DOME_FOSSIL
	
CinnabarVolcanoItemSunStone:
	itemball SUN_STONE

CinnabarVolcanoItemHiddenPPUp:
	hiddenitem PP_UP, EVENT_CINNABAR_VOLCANO_ITEM_HIDDEN_PP_UP
	
CinnabarVolcanoItemHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_CINNABAR_VOLCANO_ITEM_HIDDEN_MAX_ETHER
	
CinnabarVolcanoItemHiddenEther:
	hiddenitem ETHER, EVENT_CINNABAR_VOLCANO_ITEM_HIDDEN_ETHER

CinnabarVolcanoItemRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, CINNABAR_VOLCANO_B1F, 2
	warp_event 15,  7, CINNABAR_VOLCANO_B1F, 3
	warp_event 15,  3, CINNABAR_VOLCANO_1F, 2
	warp_event 27,  7, CINNABAR_VOLCANO_B1F, 4

	def_coord_events

	def_bg_events
	bg_event  2,  6, BGEVENT_ITEM, CinnabarVolcanoItemHiddenPPUp
	bg_event 26,  5, BGEVENT_ITEM, CinnabarVolcanoItemHiddenMaxEther
	bg_event 14,  4, BGEVENT_ITEM, CinnabarVolcanoItemHiddenEther

	def_object_events
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoItemTM, EVENT_CINNABAR_VOLCANO_ITEM_TM_FLAMETHROWER
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoItemMaxRevive, EVENT_CINNABAR_VOLCANO_ITEM_MAX_REVIVE
	object_event 26,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoItemDomeFossil, EVENT_CINNABAR_VOLCANO_ITEM_DOME_FOSSIL
	object_event 29,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoItemSunStone, EVENT_CINNABAR_VOLCANO_ITEM_SUN_STONE

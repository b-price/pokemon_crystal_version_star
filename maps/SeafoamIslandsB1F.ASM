	object_const_def
	const SEAFOAMISLANDSB1F_BOULDER1
	const SEAFOAMISLANDSB1F_BOULDER2
	const SEAFOAMISLANDSB1F_BOULDER3
	const SEAFOAMISLANDSB1F_BOULDER4
	const SEAFOAMISLANDSB1F_BOULDER5
	const SEAFOAMISLANDSB1F_POKE_BALL1
	const SEAFOAMISLANDSB1F_POKE_BALL2

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsB1FBoulder1:
SeafoamIslandsB1FBoulder2:
SeafoamIslandsB1FBoulder3:
SeafoamIslandsB1FBoulder4:
SeafoamIslandsB1FBoulder5:
	jumpstd StrengthBoulderScript
	
SeafoamIslandsB1FIceHeal:
	itemball ICE_HEAL
	
SeafoamIslandsB1FWaterStone:
	itemball WATER_STONE

SeafoamIslandsB1FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_MAX_REVIVE
	
SeafoamIslandsB1FHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_MAX_ETHER
	
SeafoamIslandsB1FHiddenCalcium:
	hiddenitem CALCIUM, EVENT_SEAFOAM_ISLANDS_B1F_HIDDEN_CALCIUM
	

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 51, 15, SEAFOAM_ISLANDS_1F, 4
	warp_event  5,  5, SEAFOAM_ISLANDS_1F, 5
	warp_event 41, 15, SEAFOAM_ISLANDS_B2F, 1
	warp_event 25,  7, SEAFOAM_ISLANDS_B2F, 2
	warp_event 21, 13, SEAFOAM_ISLANDS_B2F, 3
	warp_event 11, 15, SEAFOAM_ISLANDS_B2F, 4

	def_coord_events

	def_bg_events
	bg_event 37,  8, BGEVENT_ITEM, SeafoamIslandsB1FHiddenMaxRevive
	bg_event 26, 17, BGEVENT_ITEM, SeafoamIslandsB1FHiddenMaxEther
	bg_event 11,  3, BGEVENT_ITEM, SeafoamIslandsB1FHiddenCalcium

	def_object_events
	object_event 47, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder1, -1
	object_event 46, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder2, -1
	object_event 19, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder3, -1
	object_event 16, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder4, -1
	object_event  9, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamIslandsB1FBoulder5, -1
	object_event 36,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FIceHeal, EVENT_SEAFOAM_ISLANDS_B1F_ICE_HEAL
	object_event 28,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB1FWaterStone, EVENT_SEAFOAM_ISLANDS_B1F_WATER_STONE

	
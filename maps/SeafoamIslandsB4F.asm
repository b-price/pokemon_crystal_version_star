	object_const_def
	const SEAFOAMISLANDSB4F_ARTICUNO
	const SEAFOAMISLANDSB4F_POKE_BALL1
	const SEAFOAMISLANDSB4F_POKE_BALL2

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsB4FArticunoCallback

SeafoamIslandsB4FArticunoCallback:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear SEAFOAMISLANDSB4F_ARTICUNO
	endcallback

.NoAppear:
	disappear SEAFOAMISLANDSB4F_ARTICUNO
	endcallback

Articuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 70
	startbattle
	disappear SEAFOAMISLANDSB4F_ARTICUNO
	reloadmapafterbattle
	end

ArticunoText:
	text "Gyaooo!"
	done
	
SeafoamIslandsB4FBoulder:
	jumpstd StrengthBoulderScript
	
SeafoamIslandsB4FHelixFossil:
	itemball HELIX_FOSSIL
	
SeafoamIslandsB4FMaxRevive:
	itemball MAX_REVIVE

SeafoamIslandsB4FHiddenBigPearl:
	hiddenitem BIG_PEARL, EVENT_SEAFOAM_ISLANDS_B4F_HIDDEN_BIG_PEARL
	
SeafoamIslandsB4FHiddenMysticWater:
	hiddenitem MYSTIC_WATER, EVENT_SEAFOAM_ISLANDS_B4F_HIDDEN_MYSTIC_WATER
	
SeafoamIslandsB4FHiddenRevive:
	hiddenitem REVIVE, EVENT_SEAFOAM_ISLANDS_B4F_HIDDEN_REVIVE
	

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 37, 15, SEAFOAM_ISLANDS_B3F, 5
	warp_event 31, 15, SEAFOAM_ISLANDS_B3F, 6
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 7
	warp_event 23,  9, SEAFOAM_ISLANDS_B3F, 8
	warp_event  7, 13, SEAFOAM_ISLANDS_B3F, 9
	warp_event  5,  5, SEAFOAM_ISLANDS_B3F, 10


	def_coord_events

	def_bg_events
	bg_event  9,  6, BGEVENT_ITEM, SeafoamIslandsB4FHiddenBigPearl
	bg_event 34, 12, BGEVENT_ITEM, SeafoamIslandsB4FHiddenMysticWater
	bg_event 27, 12, BGEVENT_ITEM, SeafoamIslandsB4FHiddenRevive

	def_object_events
	object_event 21, 15, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_SEAFOAM_ISLANDS_B4F_ARTICUNO
	object_event 23,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FHelixFossil, EVENT_SEAFOAM_ISLANDS_B4F_HELIX_FOSSIL
	object_event 33,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB4FMaxRevive, EVENT_SEAFOAM_ISLANDS_B4F_MAX_REVIVE

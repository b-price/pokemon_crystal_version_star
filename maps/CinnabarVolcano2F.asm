	object_const_def
	const CINNABARVOLCANO2F_MOLTRES

CinnabarVolcano2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CinnabarVolcano2FMoltresCallback

CinnabarVolcano2FMoltresCallback:
	checkevent EVENT_FOUGHT_MOLTRES
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear CINNABARVOLCANO2F_MOLTRES
	endcallback

.NoAppear:
	disappear CINNABARVOLCANO2F_MOLTRES
	endcallback

Moltres:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_FOUGHT_MOLTRES
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MOLTRES, 70
	startbattle
	disappear CINNABARVOLCANO2F_MOLTRES
	reloadmapafterbattle
	end

MoltresText:
	text "Gyaooo!"
	done


CinnabarVolcano2FHiddenCharcoal:
	hiddenitem CHARCOAL, EVENT_CINNABAR_VOLCANO_2F_HIDDEN_CHARCOAL

CinnabarVolcano2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, CINNABAR_VOLCANO_1F, 4

	def_coord_events

	def_bg_events
	bg_event  8, 11, BGEVENT_ITEM, CinnabarVolcano2FHiddenCharcoal

	def_object_events
	object_event 10,  6, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Moltres, EVENT_CINNABARVOLCANO2F_MOLTRES

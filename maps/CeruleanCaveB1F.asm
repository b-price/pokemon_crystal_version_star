	object_const_def
	const CERULEANCAVEB1F_MEWTWO
	const CERULEANCAVEB1F_POKE_BALL1
	const CERULEANCAVEB1F_POKE_BALL2
	const CERULEANCAVEB1F_POKE_BALL3
	const CERULEANCAVEB1F_RED

CeruleanCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CeruleanCaveB1FMewtwoCallback

CeruleanCaveB1FMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear CERULEANCAVEB1F_MEWTWO
	endcallback

.NoAppear:
	disappear CERULEANCAVEB1F_MEWTWO
	checkevent EVENT_BEAT_RED
	iftrue .Red2
	endcallback

.Red2:
	appear CERULEANCAVEB1F_RED
	endcallback

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 80
	startbattle
	disappear CERULEANCAVEB1F_MEWTWO
	disappear CERULEANCAVEB1F_RED
	reloadmapafterbattle
	end

CeruleanCaveRed:
	special FadeOutMusic
	faceplayer
	opentext
	writetext CeruleanCaveRedSeenText
	waitbutton
	closetext
	winlosstext CeruleanCaveRedWinLossText, CeruleanCaveRedWinLossText
	loadtrainer RED, RED2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext CeruleanCaveRedLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear CERULEANCAVEB1F_RED
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	credits
	end

CeruleanCaveRedSeenText:
	text "<……>"
	line "<……>"
	done

CeruleanCaveRedWinLossText:
	text "…"
	done

CeruleanCaveRedLeavesText:
	text "<……>"
	line "<……>"
	done

MewtwoText:
	text "…"
	done
	
CeruleanCaveB1FFTMHyperBeam:
	itemball TM_HYPER_BEAM

CeruleanCaveB1FOldAmber:
	itemball OLD_AMBER
	
CeruleanCaveB1FMaxElixer:
	itemball MAX_ELIXER

CeruleanCaveB1FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_B1F_HIDDEN_PP_UP
	
CeruleanCaveB1FHiddenTwistedSpoon:
	hiddenitem PP_UP, EVENT_CERULEAN_CAVE_B1F_HIDDEN_TWISTEDSPOON

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, CERULEAN_CAVE_1F, 8
	
	def_coord_events

	def_bg_events
	bg_event 13, 16, BGEVENT_ITEM, CeruleanCaveB1FHiddenPPUp
	bg_event 24,  9, BGEVENT_ITEM, CeruleanCaveB1FHiddenTwistedSpoon

	def_object_events
	object_event 29, 15, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_CERULEANCAVEB1F_MEWTWO
	object_event 22,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FFTMHyperBeam, EVENT_CERULEAN_CAVE_B1F_TM_HYPER_BEAM
	object_event 21,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FOldAmber, EVENT_CERULEAN_CAVE_B1F_OLD_AMBER
	object_event 12,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxElixer, EVENT_CERULEAN_CAVE_B1F_MAX_ELIXER
	object_event 29, 15, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCaveRed, EVENT_CERULEAN_CAVE_RED

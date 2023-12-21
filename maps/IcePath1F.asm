	object_const_def
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_PRYCE

IcePath1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, IcePath1FPryceCallback

IcePath1FPryceCallback:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .PryceCanAppear
	ifequal WEDNESDAY, .PryceCanAppear
	disappear ICEPATH1F_PRYCE
	endcallback

.PryceCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .PryceAppears
	disappear ICEPATH1F_PRYCE
	endcallback

.PryceAppears:
	appear ICEPATH1F_PRYCE
	endcallback

IcePath1FPryce:
    faceplayer
    opentext
    checkflag ENGINE_PRYCE_REMATCH
    iftrue .FightDone
    writetext IcePath1FPryceIntroText
    yesorno
    iffalse .RefusedBattle
    writetext IcePath1FPryceAcceptText
    waitbutton
    closetext
    winlosstext IcePath1FPryceBeatenText, 0
    loadtrainer PRYCE, PRYCE2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_PRYCE_REMATCH
    opentext
    writetext IcePath1FPryceAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext IcePath1FPryceRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext IcePath1FPryceAfterBattleText
	waitbutton
	closetext
	end
	
IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP

IcePath1FProtein:
	itemball PROTEIN

IcePath1FPryceIntroText:
	text "…"
	
	para "…"

	para "Huh?"
	line "Oh, it's you,"
	cont "<PLAYER>."

	para "Forgive me,"
	line "I was meditating."

	para "What's that?"
	line "A battle?"
	done

IcePath1FPryceAcceptText:
	text "Alright."
	line "Don't think be-"
	cont "cause of my age"

	para "I'm not always"
	line "improving still!"
	done

IcePath1FPryceRefusedText:
	text "Oh, must have"
	line "misheard."
	done

IcePath1FPryceBeatenText:
	text "Good show!"
	done

IcePath1FPryceAfterBattleText:
	text "Ah, to be young."
	line "Make sure you"

	para "remember to sit"
	line "back and enjoy"
	cont "the journey."

	para "You're only"
	line "young once!"
	done

IcePath1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
	object_event  5, 16, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IcePath1FPryce, EVENT_PRYCE_REMATCH

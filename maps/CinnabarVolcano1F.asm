	object_const_def
	const CINNABARVOLCANO1F_POKE_BALL1
	const CINNABARVOLCANO1F_POKE_BALL2
	const CINNABARVOLCANO1F_BLAINE

CinnabarVolcano1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CinnabarVolcano1FBlaineCallback

CinnabarVolcano1FBlaineCallback:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .BlaineCanAppear
	ifequal WEDNESDAY, .BlaineCanAppear
	disappear CINNABARVOLCANO1F_BLAINE
	endcallback

.BlaineCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .BlaineAppears
	disappear CINNABARVOLCANO1F_BLAINE
	endcallback

.BlaineAppears:
	appear CINNABARVOLCANO1F_BLAINE
	endcallback

CinnabarVolcano1FFBurnHeal:
	itemball BURN_HEAL

CinnabarVolcano1FEscapeRope:
	itemball ESCAPE_ROPE

CinnabarVolcano1FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CINNABAR_VOLCANO_1F_HIDDEN_PP_UP

CinnabarVolcano1FBlaine:
    faceplayer
    opentext
    checkflag ENGINE_BLAINE_REMATCH
    iftrue .FightDone
    writetext CinnabarVolcano1FBlaineIntroText
    yesorno
    iffalse .RefusedBattle
    writetext CinnabarVolcano1FBlaineAcceptText
    waitbutton
    closetext
    winlosstext CinnabarVolcano1FBlaineBeatenText, 0
    loadtrainer BLAINE, BLAINE2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_BLAINE_REMATCH
    opentext
    writetext CinnabarVolcano1FBlaineAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext CinnabarVolcano1FBlaineRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext CinnabarVolcano1FBlaineAfterBattleText
	waitbutton
	closetext
	end

CinnabarVolcano1FBlaineIntroText:
	text "BLAINE: …Such de-"
	line "struction… Still,"
	cont "from the"

	para "ashes rises the"
	line "phoenix…"

	para "Oh, it's you,"
	line "<PLAYER>."

	para "Sorry, coming back"
	line "here gets me all"
	cont "sentimental…"

	para "Well, I said last"
	line "time we met that"
	cont "we'd have a"
	cont "rematch."

	para "How about it?"
	done

CinnabarVolcano1FBlaineAcceptText:
	text "Splendid!"
	line "Get ready!"
	done

CinnabarVolcano1FBlaineRefusedText:
	text "No? How"
	line "dissappointing…"
	done

CinnabarVolcano1FBlaineBeatenText:
	text "As hot as ever!"
	done

CinnabarVolcano1FBlaineAfterBattleText:
	text "Thanks for that"
	line "blistering battle!"

	para "You've really"
	line "lifted my spirits,"
	cont "kid."

	para "It's time we start"
	line "rebuilding"
	cont "CINNABAR ISLAND."
	done

CinnabarVolcano1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, CINNABAR_ISLAND, 2
	warp_event  9,  5, CINNABAR_VOLCANO_B1F, 1
	warp_event 21,  9, CINNABAR_VOLCANO_ITEM_ROOMS, 3
	warp_event 23,  3, CINNABAR_VOLCANO_2F, 1

	def_coord_events

	def_bg_events
	bg_event 14,  5, BGEVENT_ITEM, CinnabarVolcano1FHiddenPPUp

	def_object_events
	object_event 11,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcano1FFBurnHeal, EVENT_CINNABAR_VOLCANO_1F_BURN_HEAL
	object_event 20,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcano1FEscapeRope, EVENT_CINNABAR_VOLCANO_1F_ESCAPE_ROPE
	object_event  3,  3, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarVolcano1FBlaine, EVENT_BLAINE_REMATCH

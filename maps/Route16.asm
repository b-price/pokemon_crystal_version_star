	object_const_def
	const ROUTE16_BIKER1
	const ROUTE16_BIKER2
	const ROUTE16_FALKNER

Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback
	callback MAPCALLBACK_OBJECTS, Route16FalknerCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 5, .CanWalk
	readvar VAR_XCOORD
	ifgreater 13, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route16FalknerCallback:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .FalknerCanAppear
	ifequal SUNDAY, .FalknerCanAppear
	disappear ROUTE16_FALKNER
	endcallback

.FalknerCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .FalknerAppears
	disappear ROUTE16_FALKNER
	endcallback

.FalknerAppears:
	appear ROUTE16_FALKNER
	endcallback
	
TrainerBikerRishi:
	trainer BIKER, RISHI, EVENT_BEAT_BIKER_RISHI, BikerRishiSeenText, BikerRishiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRishiAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerSaul:
	trainer BIKER, SAUL, EVENT_BEAT_BIKER_SAUL, BikerSaulSeenText, BikerSaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerSaulAfterBattleText
	waitbutton
	closetext
	end

Route16Falkner:
    faceplayer
    opentext
    checkflag ENGINE_FALKNER_REMATCH
    iftrue .FightDone
    writetext Route16FalknerIntroText
    yesorno
    iffalse .RefusedBattle
    writetext Route16FalknerAcceptText
    waitbutton
    closetext
    winlosstext Route16FalknerBeatenText, 0
    loadtrainer FALKNER, FALKNER2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_FALKNER_REMATCH
    opentext
    writetext Route16FalknerAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext Route16FalknerRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext Route16FalknerAfterBattleText
	waitbutton
	closetext
	end

CyclingRoadSign:
	jumptext CyclingRoadSignText
	
BikerRishiSeenText:
	text "Do you know who"
	line "you're messing"
	cont "with, kid?"

	para "We're the KANTO"
	line "#MON"
	cont "FEDERATION!"
	done

BikerRishiBeatenText:
	text "Um, nevermind…"
	done

BikerRishiAfterBattleText:
	text "Move along…"
	done
	
BikerSaulSeenText:
	text "Get outta here!"
	done

BikerSaulBeatenText:
	text "Argghh!"
	done

BikerSaulAfterBattleText:
	text "You're making me"
	line "angry, kid, but I"
	cont "lost fair and"
	cont "square."
	done

Route16FalknerIntroText:
	text "FALKNER: Hey,"
	para "<PLAYER>. Fancy"
    line "seeing you out"
    cont "here in KANTO."

    para "I've gotten much"
    line "stronger since"
    cont "we last met."

    para "How about a"
    line "battle?"
	done

Route16FalknerBeatenText:
	text "Wow. Such power!"
	done

Route16FalknerAfterBattleText:
	text "I like to come"
	line "out here on the"
	cont "weekends."

	para "The bird #MON"
	line "around here are"
	cont "quite strong!"
	done

Route16FalknerAcceptText:
	text "Right on. My"
	line "bird #MON and"
	cont "I won't hold back!"
	done

Route16FalknerRefusedText:
	text "Fair enough."
	done

CyclingRoadSignText:
	text "CYCLING ROAD"

	para "DOWNHILL COASTING"
	line "ALL THE WAY!"
	done

Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  1, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 14,  6, ROUTE_16_GATE, 3
	warp_event 14,  7, ROUTE_16_GATE, 4
	warp_event  9,  6, ROUTE_16_GATE, 1
	warp_event  9,  7, ROUTE_16_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5,  5, BGEVENT_READ, CyclingRoadSign

	def_object_events
	object_event  4,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerBikerRishi, -1
	object_event  9, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBikerSaul, -1
	object_event  11, 2, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route16Falkner, EVENT_FALKNER_REMATCH

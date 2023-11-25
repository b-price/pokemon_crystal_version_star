	object_const_def
	const BATTLETOWEROUTSIDE_BLUE
	const BATTLETOWEROUTSIDE_STANDING_YOUNGSTER
	const BATTLETOWEROUTSIDE_BEAUTY
	const BATTLETOWEROUTSIDE_SAILOR
	const BATTLETOWEROUTSIDE_LASS

BattleTowerOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, BattleTowerOutsideBlueCallback
	callback MAPCALLBACK_TILES, BattleTowerOutsideNoopCallback
	callback MAPCALLBACK_OBJECTS, BattleTowerOutsideShowCiviliansCallback

BattleTowerOutsideBlueCallback:
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .BlueCanAppear
	ifequal SUNDAY, .BlueCanAppear
	disappear BATTLETOWEROUTSIDE_BLUE
	endcallback

.BlueCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .BlueAppears
	disappear BATTLETOWEROUTSIDE_BLUE
	endcallback

.BlueAppears:
	appear BATTLETOWEROUTSIDE_BLUE
	endcallback
		
BattleTowerOutsideNoopCallback:
	endcallback

BattleTowerOutsideShowCiviliansCallback:
	clearevent EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	endcallback

BattleTowerOutsideYoungsterScript:
	jumptextfaceplayer BattleTowerOutsideYoungsterText

BattleTowerOutsideBeautyScript:
	jumptextfaceplayer BattleTowerOutsideBeautyText

BattleTowerOutsideSailorScript:
	jumptextfaceplayer BattleTowerOutsideSailorText

BattleTowerOutsideSign:
	jumptext BattleTowerOutsideSignText

BattleTowerOutsideBlue:
    faceplayer
    opentext
    checkflag ENGINE_BLUE_REMATCH
    iftrue .FightDone
    writetext BattleTowerOutsideBlueIntroText
    yesorno
    iffalse .RefusedBattle
    writetext BattleTowerOutsideBlueAcceptText
    waitbutton
    closetext
    winlosstext BattleTowerOutsideBlueBeatenText, 0
    loadtrainer BLUE, BLUE2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_BLUE_REMATCH
    opentext
    writetext BattleTowerOutsideBlueAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext BattleTowerOutsideBlueRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext BattleTowerOutsideBlueAfterBattleText
	waitbutton
	closetext
	end

BattleTowerOutsideYoungsterText_NotYetOpen: ; unreferenced
	text "Wow, the BATTLE"
	line "TOWER is huge! My"

	para "neck is tired from"
	line "looking up at it."
	done

BattleTowerOutsideYoungsterText_Mobile: ; unreferenced
	text "Wow, the BATTLE"
	line "TOWER is huge!"

	para "Since there are a"
	line "whole bunch of"

	para "trainers inside,"
	line "there must also be"

	para "a wide variety of"
	line "#MON."
	done

BattleTowerOutsideYoungsterText:
	text "Wow, the BATTLE"
	line "TOWER is huge!"

	para "There must be many"
	line "kinds of #MON"
	cont "in there!"
	done

BattleTowerOutsideBeautyText_NotYetOpen: ; unreferenced
	text "What on earth do"
	line "they do here?"

	para "If the name says"
	line "anything, I guess"

	para "it must be for"
	line "#MON battles."
	done

BattleTowerOutsideBeautyText:
	text "You can use only"
	line "three #MON."

	para "It's so hard to"
	line "decide which three"

	para "should go into"
	line "battle…"
	done

BattleTowerOutsideSailorText_Mobile: ; unreferenced
	text "Ehehehe…"
	line "I sneaked out of"
	cont "work to come here."

	para "I'm never giving"
	line "up until I become"
	cont "a LEADER!"
	done

BattleTowerOutsideSailorText:
	text "Hehehe, I snuck"
	line "out from work."

	para "I can't bail out"
	line "until I've won!"

	para "I have to win it"
	line "all. That I must!"
	done

BattleTowerOutsideSignText_NotYetOpen: ; unreferenced
; originally shown when the Battle Tower was closed
	text "BATTLE TOWER"
	done

BattleTowerOutsideSignText:
	text "BATTLE TOWER"

	para "Take the Ultimate"
	line "Trainer Challenge!"
	done

BattleTowerOutsideText_DoorsClosed: ; unreferenced
; originally shown when the Battle Tower was closed
	text "The BATTLE TOWER's"
	line "doors are closed…"
	done

BattleTowerOutsideText_DoorsOpen: ; unreferenced
; originally shown after the Battle Tower opened
	text "It's open!"
	done

BattleTowerOutsideBlueIntroText:
	text "BLUE: Yo,"
	line "<PLAYER>!"

	para "I see you're also"
	line "challenging the"
	cont "BATTLE TOWER."

	para "You know, I've"
	line "beefed up my team"
	cont "since we last met."

	para "How about we warm"
	line "up with a little"
	cont "battle?"
	done

BattleTowerOutsideBlueAcceptText:
	text "Don't be cocky"
	line "just because you"
	cont "me once!"
	done

BattleTowerOutsideBlueRefusedText:
	text "Oh, what's the"
	line "matter? Afraid of"
	cont "losing?"
	done

BattleTowerOutsideBlueBeatenText:
	text "Darn it! You"
	line "really are strong!"
	done

BattleTowerOutsideBlueAfterBattleText:
	text "Ugh… I need to"
	line "get better…"

	para "First losing to"
	line "RED and then you…"

	para "One day, you'll"
	line "see… I'll beat"
	cont "you both!"
	done

BattleTowerOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 21, ROUTE_40_BATTLE_TOWER_GATE, 3
	warp_event  9, 21, ROUTE_40_BATTLE_TOWER_GATE, 4
	warp_event  8,  9, BATTLE_TOWER_1F, 1
	warp_event  9,  9, BATTLE_TOWER_1F, 2

	def_coord_events

	def_bg_events
	bg_event 10, 10, BGEVENT_READ, BattleTowerOutsideSign

	def_object_events
	object_event 11, 10, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideBlue, EVENT_BLUE_REMATCH
	object_event  6, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideYoungsterScript, -1
	object_event 13, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideBeautyScript, -1
	object_event 12, 18, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideSailorScript, EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	object_event 12, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

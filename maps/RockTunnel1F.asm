	object_const_def
	const ROCKTUNNEL1F_POKE_BALL1
	const ROCKTUNNEL1F_POKE_BALL2
	const ROCKTUNNEL1F_BROCK

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RockTunnel1FBrockCallback

RockTunnel1FAlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 5, .CanWalk
	readvar VAR_XCOORD
	ifgreater 13, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

RockTunnel1FBrockCallback:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .BrockCanAppear
	ifequal THURSDAY, .BrockCanAppear
	disappear ROCKTUNNEL1F_BROCK
	endcallback

.BrockCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .BrockAppears
	disappear ROCKTUNNEL1F_BROCK
	endcallback

.BrockAppears:
	appear ROCKTUNNEL1F_BROCK
	endcallback

RockTunnel1FBrock:
    faceplayer
    opentext
    checkflag ENGINE_BROCK_REMATCH
    iftrue .FightDone
    writetext RockTunnel1FBrockIntroText
    yesorno
    iffalse .RefusedBattle
    writetext RockTunnel1FBrockAcceptText
    waitbutton
    closetext
    winlosstext RockTunnel1FBrockBeatenText, 0
    loadtrainer BROCK, BROCK2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_BROCK_REMATCH
    opentext
    writetext RockTunnel1FBrockAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext RockTunnel1FBrockRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext RockTunnel1FBrockAfterBattleText
	waitbutton
	closetext
	end

RockTunnel1FElixer:
	itemball ELIXER

RockTunnel1FTMSteelWing:
	itemball TM_STEEL_WING

RockTunnel1FHiddenXAccuracy:
	hiddenitem X_ACCURACY, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_ACCURACY

RockTunnel1FHiddenXDefend:
	hiddenitem X_DEFEND, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_DEFEND

RockTunnel1FBrockIntroText:
	text "BROCK: What's up,"
	line "<PLAYER>?"

	para "I've been training"
	line "here a lot since"
	cont "our battle."

	para "How about a"
	line "rematch?"
	done

RockTunnel1FBrockAcceptText:
	text "Alright! Get"
	line "ready to rock!"
	done

RockTunnel1FBrockRefusedText:
	text "Alright, maybe"
	line "another time."
	done

RockTunnel1FBrockBeatenText:
	text "Hard as stone!"
	done

RockTunnel1FBrockAfterBattleText:
	text "You're one of the"
	line "toughest trainers"
	cont "I've ever met!"

	para "You remind me of"
	line "a very strong"
	cont "trainer named RED…"

	para "I haven't seen him"
	line "in awhile."

	para "I hope he's doing"
	line "OK!"
	done

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  3, ROUTE_9, 1
	warp_event 11, 25, ROUTE_10_SOUTH, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 3
	warp_event 15,  9, ROCK_TUNNEL_B1F, 2
	warp_event 27,  3, ROCK_TUNNEL_B1F, 4
	warp_event 27, 13, ROCK_TUNNEL_B1F, 1

	def_coord_events

	def_bg_events
	bg_event 24,  4, BGEVENT_ITEM, RockTunnel1FHiddenXAccuracy
	bg_event 21, 15, BGEVENT_ITEM, RockTunnel1FHiddenXDefend

	def_object_events
	object_event  4, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FElixer, EVENT_ROCK_TUNNEL_1F_ELIXER
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FTMSteelWing, EVENT_ROCK_TUNNEL_1F_TM_STEEL_WING
	object_event 15,  2, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RockTunnel1FBrock, EVENT_BROCK_REMATCH

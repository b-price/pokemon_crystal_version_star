	object_const_def
	const CERULEANCAVE1F_POKE_BALL1
	const CERULEANCAVE1F_POKE_BALL2
	const CERULEANCAVE1F_POKE_BALL3
	const CERULEANCAVE1F_SABRINA

CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CeruleanCave1FSabrinaCallback

CeruleanCave1FSabrinaCallback:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .SabrinaCanAppear
	ifequal WEDNESDAY, .SabrinaCanAppear
	disappear CERULEANCAVE1F_SABRINA
	endcallback

.SabrinaCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .SabrinaAppears
	disappear CERULEANCAVE1F_SABRINA
	endcallback

.SabrinaAppears:
	appear CERULEANCAVE1F_SABRINA
	endcallback

CeruleanCave1FFMaxElixer:
	itemball MAX_ELIXER

CeruleanCave1FNugget:
	itemball NUGGET
	
CeruleanCave1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCave1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CERULEAN_CAVE_1F_HIDDEN_RARE_CANDY
	
CeruleanCave1FHiddenStarPiece:
	hiddenitem STAR_PIECE, EVENT_CERULEAN_CAVE_1F_HIDDEN_STAR_PIECE

CeruleanCave1FSabrina:
    faceplayer
    opentext
    checkflag ENGINE_SABRINA_REMATCH
    iftrue .FightDone
    writetext CeruleanCave1FSabrinaIntroText
    yesorno
    iffalse .RefusedBattle
    writetext CeruleanCave1FSabrinaAcceptText
    waitbutton
    closetext
    winlosstext CeruleanCave1FSabrinaBeatenText, 0
    loadtrainer SABRINA, SABRINA2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_SABRINA_REMATCH
    opentext
    writetext CeruleanCave1FSabrinaAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext CeruleanCave1FSabrinaRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext CeruleanCave1FSabrinaAfterBattleText
	waitbutton
	closetext
	end

CeruleanCave1FSabrinaIntroText:
	text "SABRINA: …"

	para "I knew you'd come."

	para "You want to have a"
	line "rematch."
	done

CeruleanCave1FSabrinaAcceptText:
	text "Prepare yourself…"
	done

CeruleanCave1FSabrinaRefusedText:
	text "Changed your mind?"
	line "Very well…"
	done

CeruleanCave1FSabrinaBeatenText:
	text "…"
	done

CeruleanCave1FSabrinaAfterBattleText:
	text "…You've really"
	line "demonstrated to me"

	para "that life isn't at"
	line "all predictable…"

	para "…It's important to"
	line "be present in the"
	cont "moment."
	done

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 17, ROUTE_4, 2
	warp_event 25,  7, CERULEAN_CAVE_2F, 1
	warp_event 29,  1, CERULEAN_CAVE_2F, 2
	warp_event  9,  1, CERULEAN_CAVE_2F, 3
	warp_event 19,  9, CERULEAN_CAVE_2F, 4
	warp_event  5, 11, CERULEAN_CAVE_2F, 5
	warp_event  3,  3, CERULEAN_CAVE_2F, 6
	warp_event  3,  7, CERULEAN_CAVE_B1F, 1
	
	def_coord_events

	def_bg_events
	bg_event 17, 11, BGEVENT_ITEM, CeruleanCave1FHiddenRareCandy
	bg_event  5, 14, BGEVENT_ITEM, CeruleanCave1FHiddenStarPiece

	def_object_events
	object_event 21,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FFMaxElixer, EVENT_CERULEAN_CAVE_1F_MAX_ELIXER
	object_event  7,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FMaxRevive, EVENT_CERULEAN_CAVE_1F_NUGGET
	object_event  9, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCave1FMaxRevive, EVENT_CERULEAN_CAVE_1F_MAX_REVIVE
	object_event 23, 12, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCave1FSabrina, EVENT_SABRINA_REMATCH

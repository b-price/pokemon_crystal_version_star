	object_const_def
	const VIRIDIAN_FOREST_BUGSY
	const VIRIDIAN_FOREST_MEW
	const VIRIDIAN_FOREST_BUG_CATCHER1
	const VIRIDIAN_FOREST_BUG_CATCHER2
	const VIRIDIAN_FOREST_BUG_CATCHER3
	const VIRIDIAN_FOREST_BUG_CATCHER4
	const VIRIDIAN_FOREST_SUPER_NERD
	const VIRIDIAN_FOREST_GRANNY
	const VIRIDIAN_FOREST_POKE_BALL1
	const VIRIDIAN_FOREST_POKE_BALL2
	const VIRIDIAN_FOREST_POKE_BALL3
	const VIRIDIAN_FOREST_POKE_BALL4
	const VIRIDIAN_FOREST_FRUIT_TREE

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, ViridianForestBugsyMewCallback

ViridianForestBugsyMewCallback:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .MewCanAppear
	ifequal SATURDAY, .BugsyCanAppear
	ifequal FRIDAY, .BugsyCanAppear
	disappear VIRIDIAN_FOREST_BUGSY
	disappear VIRIDIAN_FOREST_MEW
	endcallback

.BugsyCanAppear:
	disappear VIRIDIAN_FOREST_MEW
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .BugsyAppears
	disappear VIRIDIAN_FOREST_BUGSY
	endcallback

.BugsyAppears:
	appear VIRIDIAN_FOREST_BUGSY
	endcallback

.MewCanAppear:
	disappear VIRIDIAN_FOREST_BUGSY
	checkflag EVENT_FOUGHT_MEW
	iftrue .NoAppear
	appear VIRIDIAN_FOREST_MEW
	endcallback

.NoAppear:
	disappear VIRIDIAN_FOREST_MEW
	endcallback

ViridianForestMew:
	cry MEW
	loadwildmon MEW, 40
	startbattle
	disappear VIRIDIAN_FOREST_MEW
	setevent EVENT_FOUGHT_MEW
	reloadmapafterbattle
	end

TrainerBugCatcherSilias:
	trainer BUG_CATCHER, SILIAS, EVENT_BEAT_BUG_CATCHER_SILIAS, BugCatcherSiliasSeenText, BugCatcherSiliasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSiliasAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherTerry:
	trainer BUG_CATCHER, TERRY, EVENT_BEAT_BUG_CATCHER_TERRY, BugCatcherTerrySeenText, BugCatcherTerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherTerryAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherSal:
	trainer BUG_CATCHER, SAL, EVENT_BEAT_BUG_CATCHER_SAL, BugCatcherSalSeenText, BugCatcherSalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSalAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPokemaniacMaurice:
	trainer POKEMANIAC, MAURICE, EVENT_BEAT_POKEMANIAC_MAURICE, PokemaniacMauriceSeenText, PokemaniacMauriceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMauriceAfterBattleText
	waitbutton
	closetext
	end
	
ViridianForestBugCatcher:
	jumptextfaceplayer ViridianForestBugCatcherText
	
ViridianForestGranny:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_MEW
	iftrue .MewFought
	writetext ViridianForestGrannyText
	waitbutton
	closetext 
	end
.MewFought:
	writetext ViridianForestGranny2Text
	waitbutton
	closetext 
	end

ViridianForestBugsy:
	faceplayer
    opentext
    checkflag ENGINE_BUGSY_REMATCH
    iftrue .FightDone
    writetext ViridianForestBugsyIntroText
    yesorno
    iffalse .RefusedBattle
    writetext ViridianForestBugsyAcceptText
    waitbutton
    closetext
    winlosstext ViridianForestBugsyBeatenText, 0
    loadtrainer BUGSY, BUGSY2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_BUGSY_REMATCH
    opentext
    writetext ViridianForestBugsyAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext ViridianForestBugsyRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext ViridianForestBugsyAfterBattleText
	waitbutton
	closetext
	end

ViridianForestSign1:
	jumptext ViridianForestSign1Text
	
ViridianForestSign2:
	jumptext ViridianForestSign2Text

ViridianForestTMFuryCutter:
	itemball TM_FURY_CUTTER

ViridianForestAntidote:
	itemball ANTIDOTE

ViridianForestElixer:
	itemball ELIXER
	
ViridianForestLeafStone:
	itemball LEAF_STONE

ViridianForestFruitTree:
	fruittree FRUITTREE_VIRIDIAN_FOREST

ViridianForestHiddenSilverPowder:
	hiddenitem SILVERPOWDER, EVENT_VIRIDIAN_FOREST_HIDDEN_SILVER_POWDER

ViridianForestHiddenGoldBerry:
	hiddenitem GOLD_BERRY, EVENT_VIRIDIAN_FOREST_HIDDEN_GOLD_BERRY

ViridianForestHiddenMysteryBerry:
	hiddenitem MYSTERYBERRY, EVENT_VIRIDIAN_FOREST_HIDDEN_MYSTERYBERRY

ViridianForestHiddenBitterBerry:
	hiddenitem BITTER_BERRY, EVENT_VIRIDIAN_FOREST_HIDDEN_BITTER_BERRY

BugCatcherSiliasSeenText:
	text "Good luck beating"
	line "my bug #MON!"
	done

BugCatcherSiliasBeatenText:
	text "You got me…"
	done

BugCatcherSiliasAfterBattleText:
	text "Even after all of"
	line "our training…"
	done

BugCatcherTerrySeenText:
	text "Don't come to"
	line "the forest"
	cont "unprepared!"
	done

BugCatcherTerryBeatenText:
	text "Dang!"
	done

BugCatcherTerryAfterBattleText:
	text "Looks like I was"
	line "the one who was"
	cont "unprepared."
	done

BugCatcherSalSeenText:
	text "Hope you're not"
	line "scared of bug"
	cont "#MON!"
	done

BugCatcherSalBeatenText:
	text "You clearly"
	line "weren't scared…"
	done

BugCatcherSalAfterBattleText:
	text "Did you know you"
	line "can find sleeping"
	
	para "#MON by using"
	line "HEADBUTT on some"
	cont "trees?"
	done
	
PokemaniacMauriceSeenText:
	text "Look at the rare"
	line "bug #MON I just"
	cont "found!"
	done

PokemaniacMauriceBeatenText:
	text "I guess having"
	line "#MON doesn't"
	cont "mean I'll win."
	done

PokemaniacMauriceAfterBattleText:
	text "There are some"
	line "#MON you can"

	para "only find in"
	line "this forest."
	done
	
ViridianForestBugCatcherText:
	text "VIRIDIAN FOREST"
	line "is world-famous"
	cont "for bug #MON!"
	
	para "BUGSY, JOHTO's"
	line "bug master even"
	cont "hangs out here."
	done
	
ViridianForestGrannyText:
	text "…Young one…"
	
	para "I've felt a"
	line "calming presence"
	cont "here lately…"
	
	para "…early in the"
	line "week…"
	
	para "It shows itself"
	line "only to the pure"
	cont "of heart…"
	done
	
ViridianForestGranny2Text:
	text "…Hmmmm…"
	
	para "I haven't felt the"
	line "calming presence"
	cont "here lately…"
	done

ViridianForestBugsyIntroText:
	text "BUGSY: Oh!"
	line "<PLAYER>!"
	cont "You startled me!"

	para "I was looking for"
	line "bug #MON."

	para "How's it going?"
	line "My #MON are"
	cont "stronger than"
	cont "ever!"

	para "Let's have a"
	line "rematch!"
	done

ViridianForestBugsyAcceptText:
	text "Yes!"
	line "Don't under-"
	cont "estimate us!"
	done

ViridianForestBugsyRefusedText:
	text "Aww, maybe"
	line "next time."
	done

ViridianForestBugsyBeatenText:
	text "Dang. You're"
	line "also much"
	cont "stronger!"
	done

ViridianForestBugsyAfterBattleText:
	text "ILEX FOREST is"
	line "cool and all, but"

	para "nothing beats"
	line "VIRIDIAN FOREST"
	cont "for bug #MON!"
	done
	
ViridianForestSign1Text:
	text "Make sure to carry"
	line "ANTIDOTE in case"
	
	para "of a bug"
	line "#MON bite!"
	done

ViridianForestSign2Text:
	text "VIRIDIAN FOREST"

	para "THE bug"
	line "destination!"
	done
		
ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  16, 45, ROUTE_2_VIRIDIAN_FOREST_GATE_SOUTH, 1
	warp_event  17, 45, ROUTE_2_VIRIDIAN_FOREST_GATE_SOUTH, 2
	warp_event  1, 3, ROUTE_2_VIRIDIAN_FOREST_GATE_NORTH, 3

	def_coord_events

	def_bg_events
	bg_event 18, 44, BGEVENT_READ, ViridianForestSign1
	bg_event  2,  5, BGEVENT_READ, ViridianForestSign2
	bg_event 15, 44, BGEVENT_ITEM, ViridianForestHiddenSilverPowder
	bg_event 17, 34, BGEVENT_ITEM, ViridianForestHiddenGoldBerry
	bg_event 10, 19, BGEVENT_ITEM, ViridianForestHiddenMysteryBerry
	bg_event  6,  1, BGEVENT_ITEM, ViridianForestHiddenBitterBerry

	def_object_events
	object_event 29, 40, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestBugsy, EVENT_BUGSY_REMATCH
	object_event 18, 22, SPRITE_MEW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianForestMew, EVENT_VIRIDIAN_FOREST_MEW
	object_event 30, 33, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherSilias, -1
	object_event 30, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherTerry, -1
	object_event 14, 16, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherSal, -1
	object_event 22, 40, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianForestBugCatcher, -1
	object_event  2, 19, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPokemaniacMaurice, -1
	object_event  7, 31, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianForestGranny, -1
	object_event  1, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestTMFuryCutter, EVENT_VIRIDIAN_FOREST_TM_FURY_CUTTER
	object_event 25, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestAntidote, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	object_event  1, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestElixer, EVENT_VIRIDIAN_FOREST_ELIXER
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestLeafStone, EVENT_VIRIDIAN_FOREST_LEAF_STONE
	object_event 30,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFruitTree, -1

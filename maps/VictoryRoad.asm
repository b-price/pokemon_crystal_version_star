	object_const_def
	const VICTORYROAD_RIVAL
	const VICTORYROAD_COOLTRAINER_M1
	const VICTORYROAD_COOLTRAINER_M2
	const VICTORYROAD_COOLTRAINER_M3
	const VICTORYROAD_COOLTRAINER_M4
	const VICTORYROAD_COOLTRAINER_F1
	const VICTORYROAD_COOLTRAINER_F2
	const VICTORYROAD_COOLTRAINER_F3
	const VICTORYROAD_POKE_BALL1
	const VICTORYROAD_POKE_BALL2
	const VICTORYROAD_POKE_BALL3
	const VICTORYROAD_POKE_BALL4
	const VICTORYROAD_POKE_BALL5

VictoryRoad_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadNoop1Scene, SCENE_VICTORYROAD_RIVAL_BATTLE
	scene_script VictoryRoadNoop2Scene, SCENE_VICTORYROAD_NOOP

	def_callbacks

VictoryRoadNoop1Scene:
	end

VictoryRoadNoop2Scene:
	end

VictoryRoadRivalLeft:
	moveobject VICTORYROAD_RIVAL, 18, 11
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_RIVAL
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleApproachMovement1
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleExitMovement1
	disappear VICTORYROAD_RIVAL
	setscene SCENE_VICTORYROAD_NOOP
	playmapmusic
	end

VictoryRoadRivalRight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_RIVAL
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleApproachMovement2
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_RIVAL, VictoryRoadRivalBattleExitMovement2
	disappear VICTORYROAD_RIVAL
	setscene SCENE_VICTORYROAD_NOOP
	playmapmusic
	end

VictoryRoadRivalNext:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext VictoryRoadRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_RIVAL
	loadtrainer RIVAL1, RIVAL1_5_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext VictoryRoadRivalAfterText
	waitbutton
	closetext
	end

VictoryRoadTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoadMaxRevive:
	itemball MAX_REVIVE

VictoryRoadFullRestore:
	itemball FULL_RESTORE

VictoryRoadFullHeal:
	itemball FULL_HEAL

VictoryRoadHPUp:
	itemball HP_UP

VictoryRoadHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

VictoryRoadHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL

VictoryRoadRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleApproachMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleExitMovement1:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

VictoryRoadRivalBattleExitMovement2:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end
	
TrainerCooltrainermErick:
	trainer COOLTRAINERM, ERICK, EVENT_BEAT_COOLTRAINERM_ERICK, CooltrainermErickSeenText, CooltrainermErickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermErickAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainermAndy:
	trainer COOLTRAINERM, ANDY, EVENT_BEAT_COOLTRAINERM_ANDY, CooltrainermAndySeenText, CooltrainermAndyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAndyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainermTyler:
	trainer COOLTRAINERM, TYLER, EVENT_BEAT_COOLTRAINERM_TYLER, CooltrainermTylerSeenText, CooltrainermTylerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermTylerAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainermSteve:
	trainer COOLTRAINERM, STEVE, EVENT_BEAT_COOLTRAINERM_STEVE, CooltrainermSteveSeenText, CooltrainermSteveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermSteveAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainerfSally:
	trainer COOLTRAINERF, SALLY, EVENT_BEAT_COOLTRAINERF_SALLY, CooltrainerfSallySeenText, CooltrainerfSallyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfSallyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainerfWinona:
	trainer COOLTRAINERF, WINONA, EVENT_BEAT_COOLTRAINERF_WINONA, CooltrainerfWinonaSeenText, CooltrainerfWinonaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfWinonaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainerfMarian:
	trainer COOLTRAINERF, MARIAN, EVENT_BEAT_COOLTRAINERF_MARIAN, CooltrainerfMarianSeenText, CooltrainerfMarianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfMarianAfterBattleText
	waitbutton
	closetext
	end

VictoryRoadRivalBeforeText:
	text "Hold it."

	para "…Are you going to"
	line "take the #MON"
	cont "LEAGUE challenge?"

	para "…Don't make me"
	line "laugh."

	para "You're so much"
	line "weaker than I am."

	para "I'm not like I was"
	line "before."

	para "I now have the"
	line "best and strongest"

	para "#MON with me."
	line "I'm invincible!"

	para "<PLAYER>!"
	line "I challenge you!"
	done

VictoryRoadRivalDefeatText:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"

	para "What you possess,"
	line "and what I lack…"

	para "I'm beginning to"
	line "understand what"

	para "that dragon master"
	line "said to me…"
	done

VictoryRoadRivalAfterText:
	text "…I haven't given up"
	line "on becoming the"
	cont "greatest trainer…"

	para "I'm going to find"
	line "out why I can't"

	para "win and become"
	line "stronger…"

	para "When I do, I will"
	line "challenge you."

	para "And I'll beat you"
	line "down with all my"
	cont "power."

	para "…Humph! You keep"
	line "at it until then."
	done

VictoryRoadRivalVictoryText:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done
	
CooltrainermErickSeenText:
	text "VICTORY ROAD is"
	line "the last test for"
	
	para "trainers before"
	line "the ELITE FOUR!"
	done

CooltrainermErickBeatenText:
	text "I didn't pass the"
	line "test…"
	done

CooltrainermErickAfterBattleText:
	text "You must have what"
	line "it takes to "
	cont "succeed."
	done
	
CooltrainermAndySeenText:
	text "I can see it in"
	line "your eyes, you're"
	cont "tough!"
	done

CooltrainermAndyBeatenText:
	text "I wasn't wrong…"
	done

CooltrainermAndyAfterBattleText:
	text "Those eyes…"
	
	para "You've seen a lot,"
	line "haven't you?"
	done
	
CooltrainermTylerSeenText:
	text "You're from JOHTO?"
	
	para "I hear the gyms"
	line "are much easier"
	cont "over there."
	done

CooltrainermTylerBeatenText:
	text "Maybe not!"
	done

CooltrainermTylerAfterBattleText:
	text "It wasn't easy"
	line "getting all eight"
	cont "KANTO badges…"
	
	para "I need to train"
	line "harder."
	done
	
CooltrainermSteveSeenText:
	text "All of our train-"
	line "ing has led us to"
	cont "this point…"
	
	para "We can't lose!"
	done

CooltrainermSteveBeatenText:
	text "Was it all for"
	line "naught?"
	done

CooltrainermSteveAfterBattleText:
	text "Good luck with the"
	line "ELITE FOUR."
	done
	
CooltrainerfSallySeenText:
	text "Give me a great"
	line "battle! Don't let"
	cont "me down!"
	done

CooltrainerfSallyBeatenText:
	text "That was good,"
	line "even if I lost."
	done

CooltrainerfSallyAfterBattleText:
	text "The closer I get"
	line "to INDIGO PLATEAU,"
	
	para "the tougher the"
	line "trainers are!"
	done
	
CooltrainerfWinonaSeenText:
	text "We can do it, just"
	line "a little longer…"
	done

CooltrainerfWinonaBeatenText:
	text "Ack!"
	done

CooltrainerfWinonaAfterBattleText:
	text "We were so close"
	line "to INDIGO PLATEAU…"
	done
	
CooltrainerfMarianSeenText:
	text "I've been through"
	line "a lot to be here."
	
	para "I won't lose!"
	done

CooltrainerfMarianBeatenText:
	text "What?!"
	done

CooltrainerfMarianAfterBattleText:
	text "We just need to"
	line "keep trying!"
	done

VictoryRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 67, VICTORY_ROAD_GATE, 5
	warp_event  1, 49, VICTORY_ROAD, 3
	warp_event  1, 35, VICTORY_ROAD, 2
	warp_event 13, 31, VICTORY_ROAD, 5
	warp_event 13, 17, VICTORY_ROAD, 4
	warp_event 17, 33, VICTORY_ROAD, 7
	warp_event 17, 19, VICTORY_ROAD, 6
	warp_event  0, 11, VICTORY_ROAD, 9
	warp_event  0, 27, VICTORY_ROAD, 8
	warp_event 13,  5, ROUTE_23, 3

	def_coord_events
	coord_event 12,  8, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalLeft
	coord_event 13,  8, SCENE_VICTORYROAD_RIVAL_BATTLE, VictoryRoadRivalRight

	def_bg_events
	bg_event  3, 29, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion
	bg_event  3, 65, BGEVENT_ITEM, VictoryRoadHiddenFullHeal

	def_object_events
	object_event 18, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	object_event  1, 53, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermErick, -1
	object_event  7, 34, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermAndy, -1
	object_event 12, 36, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermTyler, -1
	object_event 10, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermSteve, -1
	object_event  8, 60, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfSally, -1
	object_event  9, 52, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfWinona, -1
	object_event  4, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfMarian, -1
	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	object_event 12, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMaxRevive, EVENT_VICTORY_ROAD_MAX_REVIVE
	object_event 18, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullRestore, EVENT_VICTORY_ROAD_FULL_RESTORE
	object_event 15, 48, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadFullHeal, EVENT_VICTORY_ROAD_FULL_HEAL
	object_event  7, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadHPUp, EVENT_VICTORY_ROAD_HP_UP

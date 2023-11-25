	object_const_def
	const FIGHTINGDOJO_CHUCK
	const FIGHTINGDOJO_BLACK_BELT1
	const FIGHTINGDOJO_MACHOKE
	const FIGHTINGDOJO_BLACK_BELT2
	const FIGHTINGDOJO_BLACK_BELT3
	const FIGHTINGDOJO_BLACK_BELT4
	const FIGHTINGDOJO_BLACK_BELT5
	const FIGHTINGDOJO_BLACK_BELT6
	const FIGHTINGDOJO_POKE_BALL

FightingDojo_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, KiyoCallback

KiyoCallback:
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue .Appear
	sjump .NoAppear
	
.Appear:
	appear FIGHTINGDOJO_BLACK_BELT6
	appear FIGHTINGDOJO_BLACK_BELT2
	appear FIGHTINGDOJO_BLACK_BELT3
	appear FIGHTINGDOJO_BLACK_BELT4
	appear FIGHTINGDOJO_BLACK_BELT5
	disappear FIGHTINGDOJO_BLACK_BELT1
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .ChuckCanAppear
	disappear FIGHTINGDOJO_CHUCK
	endcallback
	
.NoAppear:
	appear FIGHTINGDOJO_BLACK_BELT1
	disappear FIGHTINGDOJO_BLACK_BELT6
	disappear FIGHTINGDOJO_BLACK_BELT2
	disappear FIGHTINGDOJO_BLACK_BELT3
	disappear FIGHTINGDOJO_BLACK_BELT4
	disappear FIGHTINGDOJO_BLACK_BELT5
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .ChuckCanAppear
	disappear FIGHTINGDOJO_CHUCK
	endcallback

.ChuckCanAppear:
	readvar VAR_WEEKDAY
	ifequal THURSDAY, .ChuckAppears
	ifequal FRIDAY, .ChuckAppears
	disappear FIGHTINGDOJO_CHUCK
	endcallback

.ChuckAppears:
	appear FIGHTINGDOJO_CHUCK
	endcallback

FightingDojoBlackBelt1:
	jumptextfaceplayer FightingDojoBlackBelt1Text
	
FightingDojoMachoke:
	faceplayer
	opentext
	writetext MachokeText
	cry MACHOKE
	waitbutton
	closetext
	end
	
TrainerBlackbeltHiroshi: ;REPLACING KENJI
	trainer BLACKBELT_T, HIROSHI, EVENT_BEAT_BLACKBELT_HIROSHI, BlackbeltHiroshiSeenText, BlackbeltHiroshiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltHiroshiAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackbeltKensuke: ;REPLACING KENJI2
	trainer BLACKBELT_T, KENSUKE, EVENT_BEAT_BLACKBELT_KENSUKE, BlackbeltKensukeSeenText, BlackbeltKensukeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltKensukeAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackbeltSatoru:
	trainer BLACKBELT_T, SATORU, EVENT_BEAT_BLACKBELT_SATORU, BlackbeltSatoruSeenText, BlackbeltSatoruBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltSatoruAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackbeltTakashi:
	trainer BLACKBELT_T, TAKASHI, EVENT_BEAT_BLACKBELT_TAKASHI, BlackbeltTakashiSeenText, BlackbeltTakashiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltTakashiAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackbeltKiyo:
	trainer BLACKBELT_T, KIYO2, EVENT_BEAT_BLACKBELT_KIYO2, BlackbeltKiyoSeenText, BlackbeltKiyoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	applymovement FIGHTINGDOJO_MACHOKE, FightingDojoMachokeMovement
	writetext BlackbeltKiyoAfterBattleText
	waitbutton
	setevent EVENT_BEAT_BLACKBELT_HIROSHI
	setevent EVENT_BEAT_BLACKBELT_KENSUKE
	setevent EVENT_BEAT_BLACKBELT_SATORU
	setevent EVENT_BEAT_BLACKBELT_TAKASHI
	closetext
	end

FightingDojoChuck:
    faceplayer
    opentext
    checkflag ENGINE_CHUCK_REMATCH
    iftrue .FightDone
    writetext FightingDojoChuckIntroText
    yesorno
    iffalse .RefusedBattle
    writetext FightingDojoChuckAcceptText
    waitbutton
    closetext
    winlosstext FightingDojoChuckBeatenText, 0
    loadtrainer CHUCK, CHUCK2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_CHUCK_REMATCH
    opentext
    writetext FightingDojoChuckAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext FightingDojoChuckRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext FightingDojoChuckAfterBattleText
	waitbutton
	closetext
	end

FightingDojoSign1:
	jumptext FightingDojoSign1Text

FightingDojoSign2:
	jumptext FightingDojoSign2Text

FightingDojoFocusBand:
	itemball FOCUS_BAND

FightingDojoMachokeMovement:
	step DOWN
	step RIGHT
	step_end

FightingDojoBlackBelt1Text:
	text "Hello!"

	para "KARATE KING, the"
	line "FIGHTING DOJO's"

	para "master, is in a"
	line "cave in JOHTO for"
	cont "training."
	done
	
MachokeText:
	text "Macho!"
	done
	
BlackbeltHiroshiSeenText:
	text "Hi-yaa!"

	para "Welcome to the"
	line "FIGHTING DOJO!"
	done

BlackbeltHiroshiBeatenText:
	text "But you don't even"
	line "have a white belt!"
	done

BlackbeltHiroshiAfterBattleText:
	text "It would be a"
	line "different story if"

	para "it was just you"
	line "and I fighting,"
	cont "kid!"
	done
	
BlackbeltKensukeSeenText:
	text "Can you last"
	line "against all of us?"
	done

BlackbeltKensukeBeatenText:
	text "Maybe you have a"
	line "shot!"
	done

BlackbeltKensukeAfterBattleText:
	text "Time to double-"
	line "down on our"
	cont "technique!"
	done
	
BlackbeltSatoruSeenText:
	text "Getting tired yet?"
	done

BlackbeltSatoruBeatenText:
	text "I should have"
	line "drank more water!"
	done

BlackbeltSatoruAfterBattleText:
	text "Our master KIYO"
	line "won't be so easy."
	done
	
BlackbeltTakashiSeenText:
	text "Master KIYO barely"
	line "gets to fight 'cuz"

	para "nobody makes it"
	line "past me!"
	done

BlackbeltTakashiBeatenText:
	text "Haven't seen such"
	line "power in a while!"
	done

BlackbeltTakashiAfterBattleText:
	text "I can't believe"
	line "you won!"

	para "Our master will"
	line "show you true"
	cont "strength."
	done
	
BlackbeltKiyoSeenText:
	text "Ah!"

	para "Good to see you"
	line "again, <PLAYER>!"
	
	para "I had a feeling"
	line "you would show up."
	
	para "I've gone through"
	line "intense training"
	cont "since last time."
	
	para "Don't hold back."
	line "Hoo-hah!"
	done

BlackbeltKiyoBeatenText:
	text "Beaten again?!"
	line "You really are"
	cont "something!"
	done

BlackbeltKiyoAfterBattleText:
	text "Such power!"
	line "Move aside,"
	cont "MACHOKE!"

	para "I want you to have"
	line "this item as proof"
	cont "of your victory."
	
	para "Though the taste"
	line "of defeat is"

	para "bitter, I still"
	line "must thank you"
	
	para "for that incred-"
	line "ible battle!"
	
	para "By the way,"
	line "how's TYROGUE"
	cont "doing?"
	
	para "I hope you've"
	line "evolved him into"
	
	para "a strong"
	line "fighting #MON!"
	done

FightingDojoChuckIntroText:
	text "Ungh!"
	line "This is a workout!"

	para "Oh hey, kid!"
	line "Me and my #MON"
	cont "have been hitting"
	cont "the gym!"

	para "Our power is way"
	line "beyond anything"
	cont "before!"

	para "We need to have"
	line "a rematch!"
	done

FightingDojoChuckAcceptText:
	text "Ungh!"
	line "Let's go!"
	done

FightingDojoChuckRefusedText:
	text "What, are you"
	line "scared?"
	done

FightingDojoChuckBeatenText:
	text "Urrrgh!"
	line "Beaten again!"
	done

FightingDojoChuckAfterBattleText:
	text "Well, this means"
	line "I can't stop this"
	cont "intense training"
	cont "anytime soon."

	para "Maybe I can at"
	line "least shed a few"
	cont "pounds like my"
	cont "wife tells me to!"
	done

FightingDojoSign1Text:
	text "What goes around"
	line "comes around!"
	done

FightingDojoSign2Text:
	text "Enemies on every"
	line "side!"
	done

FightingDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 1
	warp_event  5, 11, SAFFRON_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, FightingDojoSign1
	bg_event  5,  0, BGEVENT_READ, FightingDojoSign2

	def_object_events
	object_event  2, 10, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FightingDojoChuck, EVENT_CHUCK_REMATCH
	object_event  4,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt1, EVENT_FIGHTINGDOJO_BLACKBELT
	object_event  5,  3, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FightingDojoMachoke, -1
	object_event  6,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltHiroshi, EVENT_FIGHTINGDOJO_KIYOANDCO
	object_event  3,  7, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, TrainerBlackbeltKensuke, EVENT_FIGHTINGDOJO_KIYOANDCO
	object_event  6,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, TrainerBlackbeltSatoru, EVENT_FIGHTINGDOJO_KIYOANDCO
	object_event  3,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltTakashi, EVENT_FIGHTINGDOJO_KIYOANDCO
	object_event  4,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBlackbeltKiyo, EVENT_FIGHTINGDOJO_KIYOANDCO
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoFocusBand, EVENT_PICKED_UP_FOCUS_BAND
	
	object_const_def
	const ROUTE21_SWIMMER_GIRL1
	const ROUTE21_SWIMMER_GIRL2
	const ROUTE21_SWIMMER_GIRL3
	const ROUTE21_SWIMMER_GUY1
	const ROUTE21_SWIMMER_GUY2
	const ROUTE21_SWIMMER_GUY3
	const ROUTE21_FISHER1
	const ROUTE21_FISHER2
	const ROUTE21_FISHER3

Route21_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmermSeth:
	trainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmermSethSeenText, SwimmermSethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSethAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermDaryl:
	trainer SWIMMERM, DARYL, EVENT_BEAT_SWIMMERM_DARYL, SwimmermDarylSeenText, SwimmermDarylBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermDarylAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermWalter:
	trainer SWIMMERM, WALTER, EVENT_BEAT_SWIMMERM_WALTER, SwimmermWalterSeenText, SwimmermWalterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermWalterAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfNikki:
	trainer SWIMMERF, NIKKI, EVENT_BEAT_SWIMMERF_NIKKI, SwimmerfNikkiSeenText, SwimmerfNikkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNikkiAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfKatie:
	trainer SWIMMERF, KATIE, EVENT_BEAT_SWIMMERF_KATIE, SwimmerfKatieSeenText, SwimmerfKatieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKatieAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfTara:
	trainer SWIMMERF, TARA, EVENT_BEAT_SWIMMERF_TARA, SwimmerfTaraSeenText, SwimmerfTaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfTaraAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFisherJaz:
	trainer FISHER, JAZ, EVENT_BEAT_FISHER_JAZ, FisherJazSeenText, FisherJazBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJazAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFisherMando:
	trainer FISHER, MANDO, EVENT_BEAT_FISHER_MANDO, FisherMandoSeenText, FisherMandoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMandoAfterBattleText
	waitbutton
	closetext
	end

SwimmermSethSeenText:
	text "Land ho! Gotta"
	line "keep going!"
	done

SwimmermSethBeatenText:
	text "Glug…"
	done

SwimmermSethAfterBattleText:
	text "This arrogant guy"
	line "was at CINNABAR's"
	cont "volcano."
	done
	
SwimmermDarylSeenText:
	text "Phew! I'm really"
	line "getting a workout!"
	done

SwimmermDarylBeatenText:
	text "I was tired!"
	done

SwimmermDarylAfterBattleText:
	text "It takes a lot of"
	line "training to swim"
	
	para "across the sea to"
	line "CINNABAR ISLAND."
	done
	
SwimmermWalterSeenText:
	text "I don't need a"
	line "#MON to surf!"
	done

SwimmermWalterBeatenText:
	text "Maybe it wouldn't"
	line "hurt…"
	done

SwimmermWalterAfterBattleText:
	text "I once saw a"
	line "PIKACHU surfing"
	cont "out here."
	
	para "It was wild!"
	done

SwimmerfNikkiSeenText:
	text "If I win, you have"
	line "to help me with my"
	cont "suntan lotion!"
	done

SwimmerfNikkiBeatenText:
	text "I'm worried about"
	line "sunburn…"
	done

SwimmerfNikkiAfterBattleText:
	text "I have to watch"
	line "out for blemishes"
	cont "caused by the sun."
	done
	
SwimmerfKatieSeenText:
	text "I gotta get in my"
	line "cardio!"
	done

SwimmerfKatieBeatenText:
	text "That was definite-"
	line "ly a workout…"
	done

SwimmerfKatieAfterBattleText:
	text "Thanks for the"
	line "exilihirating"
	cont "battle!"
	done
	
SwimmerfTaraSeenText:
	text "Don't under-"
	line "estimate the power"
	cont "of water!"
	done

SwimmerfTaraBeatenText:
	text "Maybe I under-"
	line "estimated you…"
	done

SwimmerfTaraAfterBattleText:
	text "There are more"
	line "WATER-type #MON"
	cont "than any other!"
	done

FisherArnoldSeenText:
	text "I'm bored by fish-"
	line "ing. Let's battle!"
	done

FisherArnoldBeatenText:
	text "Utter failure…"
	done

FisherArnoldAfterBattleText:
	text "I'll just go back"
	line "to fishing…"
	done
	
FisherJazSeenText:
	text "Fishing is so"
	line "peaceful."
	done

FisherJazBeatenText:
	text "No biggie…"
	done

FisherJazAfterBattleText:
	text "I'd rather fish"
	line "than battle…"
	done
	
FisherMandoSeenText:
	text "I have the"
	line "strongest"
	cont "MAGIKARP anywhere!"
	done

FisherMandoBeatenText:
	text "Hmmmm…"
	done

FisherMandoAfterBattleText:
	text "Maybe that isn't"
	line "saying much…"
	
	para "But I love my"
	line "MAGIKARP all the"
	cont "same!"
	done

Route21_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNikki, -1
	object_event 13, 30, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfKatie, -1
	object_event 13, 11, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfTara, -1
	object_event  2, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSeth, -1
	object_event  2, 24, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermDaryl, -1
	object_event  7, 20, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermWalter, -1
	object_event 14, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherArnold, -1
	object_event  4, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherJaz, -1
	object_event  7, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisherMando, -1

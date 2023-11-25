	object_const_def
	const ROUTE20_SWIMMER_GIRL1
	const ROUTE20_SWIMMER_GIRL2
	const ROUTE20_SWIMMER_GIRL3
	const ROUTE20_SWIMMER_GIRL4
	const ROUTE20_SWIMMER_GIRL5
	const ROUTE20_SWIMMER_GUY1
	const ROUTE20_SWIMMER_GUY2
	const ROUTE20_SWIMMER_GUY3
	const ROUTE20_FISHER

Route20_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route20ClearRocksCallback

Route20ClearRocksCallback:
	setevent EVENT_CINNABAR_ROCKS_CLEARED
	endcallback

TrainerSwimmerfNicole:
	trainer SWIMMERF, NICOLE, EVENT_BEAT_SWIMMERF_NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLori:
	trainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLoriAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfLisa:
	trainer SWIMMERF, LISA, EVENT_BEAT_SWIMMERF_LISA, SwimmerfLisaSeenText, SwimmerfLisaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLisaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfJill:
	trainer SWIMMERF, JILL, EVENT_BEAT_SWIMMERF_JILL, SwimmerfJillSeenText, SwimmerfJillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfJillAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfMary:
	trainer SWIMMERF, MARY, EVENT_BEAT_SWIMMERF_MARY, SwimmerfMarySeenText, SwimmerfMaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfMaryAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermHal:
	trainer SWIMMERM, HAL, EVENT_BEAT_SWIMMERM_HAL, SwimmermHalSeenText, SwimmermHalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermHalAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmermPaton:
	trainer SWIMMERM, PATON, EVENT_BEAT_SWIMMERM_PATON, SwimmermPatonSeenText, SwimmermPatonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermPatonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFisherHung:
	trainer FISHER, HUNG, EVENT_BEAT_FISHER_HUNG, FisherHungSeenText, FisherHungBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHungAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCameronAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSign:
	jumptext CinnabarGymSignText
	
SeafoamIslandsSign:
	jumptext SeafoamIslandsSignText

SwimmerfNicoleSeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerfNicoleBeatenText:
	text "Oh, no!"
	done

SwimmerfNicoleAfterBattleText:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done

SwimmerfLoriSeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerfLoriBeatenText:
	text "No!"
	done

SwimmerfLoriAfterBattleText:
	text "SURF is no longer"
	line "the only HM move"
	cont "you use in water."
	done
	
SwimmerfLisaSeenText:
	text "I lost everything"
	line "in the eruption…"
	done

SwimmerfLisaBeatenText:
	text "That's ok…"
	done

SwimmerfLisaAfterBattleText:
	text "I had to move to"
	line "FUSCHIA. I won't"
	cont "let that stop me"
	cont "from swimming,"
	cont "though!"
	done
	
SwimmerfJillSeenText:
	text "I'd stay away from"
	line "that cave if I"
	cont "were you…"
	done

SwimmerfJillBeatenText:
	text "Oh!"
	done

SwimmerfJillAfterBattleText:
	text "It's cold in the"
	line "cave!"
	
	para "But you'll be OK."
	line "you're strong!"
	done
	
SwimmerfMarySeenText:
	text "Maybe you should"
	line "give your #MON"

	para "a break. The"
	line "water's nice!"
	done

SwimmerfMaryBeatenText:
	text "Phew!"
	done

SwimmerfMaryAfterBattleText:
	text "Well, alright!"
	
	para "You're #MON"
	line "are obviously"
	cont "strong enough!"
	done

SwimmermCameronSeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way to"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

SwimmermCameronAfterBattleText:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done
	
SwimmermHalSeenText:
	text "Yeowch!"

	para "I got stung by a"
	line "TENTACOOL!"
	done

SwimmermHalBeatenText:
	text "Not fair!"
	done

SwimmermHalAfterBattleText:
	text "I wasn't at my"
	line "best!"
	done
	
SwimmermPatonSeenText:
	text "That's quite a"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmermPatonBeatenText:
	text "No!"
	done

SwimmermPatonAfterBattleText:
	text "You're from JOHTO"
	line "eh?"
	
	para "I hear the seas"
	line "are rough there,"
	
	para "but there's a"
	line "huge lake there."
	done
	
FisherHungSeenText:
	text "A battle? I'm"
	line "trying to catch"
	cont "my dinner!"
	done

FisherHungBeatenText:
	text "…Grumble…"
	done

FisherHungAfterBattleText:
	text "Times have been"
	line "tough since the"
	cont "VOLCANO erupted."
	
	para "I can only afford"
	line "to eat what I"
	cont "catch!"
	done

CinnabarGymSignText:
	text "What does this"
	line "sign say?"

	para "CINNABAR GYM"
	line "LEADER: BLAINE"
	done
	
SeafoamIslandsSignText:
	text "SEAFOAM ISLANDS"
	done

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 38,  7, SEAFOAM_ISLANDS_1F, 1
	warp_event 28,  5, SEAFOAM_ISLANDS_1F, 2

	def_coord_events

	def_bg_events
	bg_event 37, 11, BGEVENT_READ, CinnabarGymSign
	bg_event 31,  7, BGEVENT_READ, SeafoamIslandsSign

	def_object_events
	object_event 52,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 45, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLori, -1
	object_event 23, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerfLisa, -1
	object_event 27, 12, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerfJill, -1
	object_event 35, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerfMary, -1
	object_event 12, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCameron, -1
	object_event 55, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermHal, -1
	object_event 29, 14, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSwimmermPaton, -1
	object_event 14,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFisherHung, -1

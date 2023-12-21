	object_const_def
	const ROUTE3_FISHER1
	const ROUTE3_YOUNGSTER1
	const ROUTE3_YOUNGSTER2
	const ROUTE3_YOUNGSTER3
	const ROUTE3_SUPER_NERD
	const ROUTE3_POKEFAN_M
	const ROUTE3_FISHER2

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFirebreatherOtis:
	trainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterWarren:
	trainer YOUNGSTER, WARREN, EVENT_BEAT_YOUNGSTER_WARREN, YoungsterWarrenSeenText, YoungsterWarrenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterWarrenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJimmy:
	trainer YOUNGSTER, JIMMY, EVENT_BEAT_YOUNGSTER_JIMMY, YoungsterJimmySeenText, YoungsterJimmyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJimmyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCamperHarvey:
	trainer CAMPER, HARVEY, EVENT_BEAT_CAMPER_HARVEY, CamperHarveySeenText, CamperHarveyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperHarveyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSupernerdJay:
	trainer SUPER_NERD, JAY, EVENT_BEAT_SUPER_NERD_JAY, SupernerdJaySeenText, SupernerdJayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdJayAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPokefanMDwight:
	trainer POKEFANM, DWIGHT, EVENT_BEAT_POKEFAN_M_DWIGHT, PokefanMDwightSeenText, PokefanMDwightBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanMDwightAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBurt:
	trainer FIREBREATHER, BURT, EVENT_BEAT_FIREBREATHER_BURT, FirebreatherBurtSeenText, FirebreatherBurtBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBurtAfterBattleText
	waitbutton
	closetext
	end

Route3MtMoonSquareSign:
	jumptext Route3MtMoonSquareSignText

FirebreatherOtisSeenText:
	text "Ah! The weather's"
	line "as fine as ever."
	done

FirebreatherOtisBeatenText:
	text "It's sunny, but"
	line "I'm all wet…"
	done

FirebreatherOtisAfterBattleText:
	text "When it rains,"
	line "it's hard to get"
	cont "ignition…"
	done

YoungsterWarrenSeenText:
	text "Hmmm… I don't know"
	line "what to do…"
	done

YoungsterWarrenBeatenText:
	text "I knew I'd lose…"
	done

YoungsterWarrenAfterBattleText:
	text "You looked strong."

	para "I was afraid to"
	line "take you on…"
	done

YoungsterJimmySeenText:
	text "I can run like the"
	line "wind!"
	done

YoungsterJimmyBeatenText:
	text "Blown away!"
	done

YoungsterJimmyAfterBattleText:
	text "I wear shorts the"
	line "whole year round."

	para "That's my fashion"
	line "policy."
	done
	
CamperHarveySeenText:
	text "Rough terrain is"
	line "ahead!"
	
	para "Are you prepared"
	line "for the elements?"
	done

CamperHarveyBeatenText:
	text "That was rough!"
	done

CamperHarveyAfterBattleText:
	text "I always bring"
	line "rations when I'm"
	cont "on this ROUTE."
	
	para "You can never be"
	line "too prepared!"
	done
	
SupernerdJaySeenText:
	text "I saw you from"
	line "the grass…"
	done

SupernerdJayBeatenText:
	text "Shouldn't have"
	line "bothered…"
	done

SupernerdJayAfterBattleText:
	text "Nobody wants to"
	line "be my friend…"

	para "At least I have my"
	line "#MON…"
	done
	
PokefanMDwightSeenText:
	text "You can find a lot"
	line "of cute #MON"
	cont "around here!"
	done

PokefanMDwightBeatenText:
	text "Take it easy!"
	done

PokefanMDwightAfterBattleText:
	text "I love my #MON"
	line "even if they're"

	para "not the best at"
	line "battling."
	done

FirebreatherBurtSeenText:
	text "Step right up and"
	line "take a look!"
	done

FirebreatherBurtBeatenText:
	text "Yow! That's hot!"
	done

FirebreatherBurtAfterBattleText:
	text "The greatest fire-"
	line "breather in KANTO,"
	cont "that's me."

	para "But not the best"
	line "trainer…"
	done

Route3MtMoonSquareSignText:
	text "MT.MOON SQUARE"

	para "Just go up the"
	line "stairs."
	done

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 52,  1, MOUNT_MOON, 1

	def_coord_events

	def_bg_events
	bg_event 49, 13, BGEVENT_READ, Route3MtMoonSquareSign

	def_object_events
	object_event 26, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherOtis, -1
	object_event 10,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterWarren, -1
	object_event 16,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterJimmy, -1
	object_event 10,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperHarvey, -1
	object_event 48, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdJay, -1
	object_event 18,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPokefanMDwight, -1
	object_event 49,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherBurt, -1

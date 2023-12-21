	object_const_def
	const SEAFOAMISLANDSB2F_ROCKER1
	const SEAFOAMISLANDSB2F_ROCKER2
	const SEAFOAMISLANDSB2F_BEAUTY
	const SEAFOAMISLANDSB2F_POKE_BALL

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerBoarderBinx:
	trainer BOARDER, BINX, EVENT_BEAT_BOARDER_BINX, BoarderBinxSeenText, BoarderBinxBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderBinxAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBoarderShorty:
	trainer BOARDER, SHORTY, EVENT_BEAT_BOARDER_SHORTY, BoarderShortySeenText, BoarderShortyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderShortyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSkierMiami:
	trainer SKIER, MIAMI, EVENT_BEAT_SKIER_MIAMI, SkierMiamiSeenText, SkierMiamiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierMiamiAfterBattleText
	waitbutton
	closetext
	end
	
SeafoamIslandsB2FKingsRock:
	itemball KINGS_ROCK
	
SeafoamIslandsB2FHiddenNevermeltice:
	hiddenitem NEVERMELTICE, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_NEVERMELTICE
	
SeafoamIslandsB2FHiddenElixer:
	hiddenitem ELIXER, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_ELIXER
	
BoarderBinxSeenText:
	text "WAAAAAHHH!"
	done

BoarderBinxBeatenText:
	text "Phew…"
	done

BoarderBinxAfterBattleText:
	text "Didn't expect to"
	line "see someone here."

	para "It's a secret,"
	line "cold-climate"
	cont "getaway!"
	done
	
BoarderShortySeenText:
	text "What's wrong,"
	line "never seen cave"
	cont "boarding before?"
	done

BoarderShortyBeatenText:
	text "Well alright,"
	line "then!"
	done

BoarderShortyAfterBattleText:
	text "Don't get me"
	line "wrong, this is a"
	cont "blast!"

	para "…But do you know"
	line "how to get out"
	cont "of here?"
	done
	
SkierMiamiSeenText:
	text "Ack!"
	line "You almost made"
	cont "me fall!"
	done

SkierMiamiBeatenText:
	text "I'm not here for"
	line "#MON, though!"
	done

SkierMiamiAfterBattleText:
	text "I come to this"
	line "cavern every week"
	cont "to practice!"

	para "It's the only"
	line "place around that"
	cont "gets this cold!"
	done

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 17, SEAFOAM_ISLANDS_B1F, 3
	warp_event 11,  9, SEAFOAM_ISLANDS_B1F, 4
	warp_event  7, 15, SEAFOAM_ISLANDS_B1F, 5
	warp_event  3, 15, SEAFOAM_ISLANDS_B1F, 6
	warp_event 31,  7, SEAFOAM_ISLANDS_B3F, 1
	warp_event 31, 15, SEAFOAM_ISLANDS_B3F, 2
	warp_event 17, 11, SEAFOAM_ISLANDS_B3F, 3
	warp_event  3, 17, SEAFOAM_ISLANDS_B3F, 4

	def_coord_events

	def_bg_events
	bg_event  1, 11, BGEVENT_ITEM, SeafoamIslandsB2FHiddenNevermeltice
	bg_event 20, 10, BGEVENT_ITEM, SeafoamIslandsB2FHiddenElixer

	def_object_events
	object_event 13,  4, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBinx, -1
	object_event 25,  7, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBoarderShorty, -1
	object_event  4,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSkierMiami, -1
	object_event 12, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandsB2FKingsRock, EVENT_SEAFOAM_ISLANDS_B2F_KINGS_ROCK

	
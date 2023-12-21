	object_const_def
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3
	const ROUTE6_LASS
	const ROUTE6_YOUNGSTER1
	const ROUTE6_YOUNGSTER2
	const ROUTE6_BEAUTY1
	const ROUTE6_BEAUTY2
	const ROUTE6_SUPER_NERD

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLassTrish:
	trainer LASS, TRISH, EVENT_BEAT_LASS_TRISH, LassTrishSeenText, LassTrishBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassTrishAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperDale:
	trainer CAMPER, DALE, EVENT_BEAT_CAMPER_DALE, CamperDaleSeenText, CamperDaleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDaleAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCamperThomas:
	trainer CAMPER, THOMAS, EVENT_BEAT_CAMPER_THOMAS, CamperThomasSeenText, CamperThomasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperThomasAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyJulie:
	trainer BEAUTY, JULIE, EVENT_BEAT_BEAUTY_JULIE, BeautyJulieSeenText, BeautyJulieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJulieAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyJaclyn:
	trainer BEAUTY, JACLYN, EVENT_BEAT_BEAUTY_JACLYN, BeautyJaclynSeenText, BeautyJaclynBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJaclynAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdDave:
	trainer SUPER_NERD, DAVE, EVENT_BEAT_SUPER_NERD_DAVE, SupernerdDaveSeenText, SupernerdDaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdDaveAfterBattleText
	waitbutton
	closetext
	end

Route6PokefanMScript:
	jumptextfaceplayer Route6PokefanMText

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

PokefanmRexSeenText:
	text "My PHANPY is the"
	line "cutest in the"
	cont "world."
	done

PokefanmRexBeatenText:
	text "My PHANPY!"
	done

PokefanmRexAfterBattleText:
	text "Look how adorable"
	line "my PHANPY acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My TEDDIURSA is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My TEDDIURSA!"
	done

PokefanmAllanAfterBattleText:
	text "Look how adorable"
	line "my TEDDIURSA acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done
	
LassTrishSeenText:
	text "You!"
	line "Battle me!"
	done

LassTrishBeatenText:
	text "I didn't think"
	line "I'd win."
	done

LassTrishAfterBattleText:
	text "This kid's kinda"
	line "bothering me!"

	para "Thanks for that"
	line "battle, it must've"
	cont "distracted him!"
	done
	
CamperDaleSeenText:
	text "Oh, a trainer!"
	line "A battle will"
	cont "impress TRISH!"
	done

CamperDaleBeatenText:
	text "Not what I needed!"
	done

CamperDaleAfterBattleText:
	text "Now she'll never"
	line "like me…"
	done
	
CamperThomasSeenText:
	text "Shhhh!"
	line "You'll disturb the"
	cont "wild #MON!"
	done

CamperThomasBeatenText:
	text "Wow!"
	done

CamperThomasAfterBattleText:
	text "Hey, I'm trying to"
	line "set up camp here!"
	done
	
BeautyJulieSeenText:
	text "Oh, you wanna"
	line "battle?"
	done

BeautyJulieBeatenText:
	text "Saw that one"
	line "coming!"
	done

BeautyJulieAfterBattleText:
	text "Y'know, life isn't"
	line "all about"
	cont "battles!"
	done
	
BeautyJaclynSeenText:
	text "I'm on the way to"
	line "the beach, but I"
	
	para "guess we can have"
	line "a battle."
	done

BeautyJaclynBeatenText:
	text "Sigh…"
	done

BeautyJaclynAfterBattleText:
	text "I'd rather be at"
	line "the beach!"
	done
	
SupernerdDaveSeenText:
	text "I'll beat you with"
	line "my smarter"
	cont "strategies!"
	done

SupernerdDaveBeatenText:
	text "But…"
	done

SupernerdDaveAfterBattleText:
	text "Oh bother…"

	para "I stayed up late"
	line "strategizing!"
	done

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  3, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19,  5, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event 17,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  9, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event 10, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
	object_event  9,  8, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassTrish, -1
	object_event 10,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCamperDale, -1
	object_event 18, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperThomas, -1
	object_event  6, 14, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulie, -1
	object_event  6, 15, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJaclyn, -1
	object_event 14, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSupernerdDave, -1

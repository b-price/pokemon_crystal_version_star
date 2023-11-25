	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_YOUNGSTER2
	const ROUTE14_BEAUTY1
	const ROUTE14_BEAUTY2
	const ROUTE14_POKEFAN_F

Route14_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCamperJohn:
	trainer CAMPER, JOHN, EVENT_BEAT_CAMPER_JOHN, CamperJohnSeenText, CamperJohnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJohnAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyJessica:
	trainer BEAUTY, JESSICA, EVENT_BEAT_BEAUTY_JESSICA, BeautyJessicaSeenText, BeautyJessicaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJessicaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBeautyRachael:
	trainer BEAUTY, RACHAEL, EVENT_BEAT_BEAUTY_RACHAEL, BeautyRachaelSeenText, BeautyRachaelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyRachaelAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPokefanfJanet:
	trainer POKEFANF, JANET, EVENT_BEAT_POKEFANF_JANET, PokefanfJanetSeenText, PokefanfJanetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanfJanetAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "Let me tell you,"
	line "I had a hard time"

	para "catching my prized"
	line "#MON."
	done

PokefanmCarterBeatenText:
	text "Awaaah!"
	done

PokefanmCarterAfterBattleText:
	text "BLASTOISE, CHARI-"
	line "ZARD and VENUSAUR…"

	para "I think that's a"
	line "well-balanced mix."
	done

BirdKeeperRoySeenText:
	text "My dream is to fly"
	line "with my beloved"
	cont "bird #MON."
	done

BirdKeeperRoyBeatenText:
	text "I can dream, but I"
	line "can't ever fly…"
	done

BirdKeeperRoyAfterBattleText:
	text "You have #MON"
	line "that know the HM"

	para "move FLY, don't"
	line "you? I envy you."
	done

PokefanmTrevorSeenText:
	text "Hi. Did you know…?"

	para "#MON get more"
	line "friendly if you"

	para "train them in a"
	line "place that they"
	cont "remember."
	done

PokefanmTrevorBeatenText:
	text "Where did I meet"
	line "this PSYDUCK?"
	done

PokefanmTrevorAfterBattleText:
	text "If only there were"
	line "an easy way to"

	para "identify where I"
	line "got my #MON…"
	done
	
CamperJohnSeenText:
	text "This CAMPER outfit"
	line "sure is itchy!"
	done

CamperJohnBeatenText:
	text "I was distracted!"
	done

CamperJohnAfterBattleText:
	text "I wish I had some"
	line "shorts, so comfy"
	cont "and easy to wear…"
	done
	
BeautyJessicaSeenText:
	text "Hey there…"

	para "Will you help me"
	line "with #MON"
	cont "battling?"
	done

BeautyJessicaBeatenText:
	text "I'm not so sure"
	line "that helped…"
	done

BeautyJessicaAfterBattleText:
	text "I like #MON"
	line "battles."

	para "If only I had a"
	line "mentor…"
	done
	
BeautyRachaelSeenText:
	text "There's real power"
	line "in attraction!"
	done

BeautyRachaelBeatenText:
	text "My power didn't"
	line "add up…"
	done

BeautyRachaelAfterBattleText:
	text "For a real demon-"
	line "stration of the"

	para "power of"
	line "attraction, "
	
	para "check out the move"
	line "ATTRACT!"
	done
	
PokefanfJanetSeenText:
	text "My #MON are"
	line "so attached to me!"
	done

PokefanfJanetBeatenText:
	text "They did their"
	line "best…"
	done

PokefanfJanetAfterBattleText:
	text "It was recently"
	line "discovered that"

	para "some #MON"
	line "evolve when they"
	cont "are very happy."
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  6, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event  6, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJohn, -1
	object_event 11,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyJessica, -1
	object_event  5, 27, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyRachael, -1
	object_event 14, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPokefanfJanet, -1

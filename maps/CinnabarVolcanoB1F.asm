	object_const_def
	const CINNABARVOLCANOB1F_POKE_BALL1
	const CINNABARVOLCANOB1F_POKE_BALL2
	const CINNABARVOLCANOB1F_POKE_BALL3
	const CINNABARVOLCANOB1F_POKE_BALL4
	const CINNABARVOLCANOB1F_POKE_BALL5
	const CINNABARVOLCANOB1F_BURGLAR1
	const CINNABARVOLCANOB1F_BURGLAR2

CinnabarVolcanoB1F_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarVolcanoB1FFireStone:
	itemball FIRE_STONE

CinnabarVolcanoB1FRevive:
	itemball REVIVE
	
CinnabarVolcanoB1FNugget:
	itemball NUGGET
	
CinnabarVolcanoB1FMaxElixer:
	itemball MAX_ELIXER
	
CinnabarVolcanoB1FMaxRevive:
	itemball MAX_REVIVE
	
TrainerBurglarRaul:
	trainer BURGLAR, RAUL, EVENT_BEAT_BURGLAR_RAUL, BurglarRaulSeenText, BurglarRaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarRaulAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBurglarTose:
	trainer BURGLAR, TOSE, EVENT_BEAT_BURGLAR_TOSE, BurglarToseSeenText, BurglarToseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarToseAfterBattleText
	waitbutton
	closetext
	end

CinnabarVolcanoB1FHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_MAX_ETHER

CinnabarVolcanoB1FHiddenPPUp:
	hiddenitem PP_UP, EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_PP_UP

CinnabarVolcanoB1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_RARE_CANDY
	
CinnabarVolcanoB1FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_FULL_RESTORE
	
CinnabarVolcanoB1FHiddenStardust:
	hiddenitem STARDUST, EVENT_CINNABAR_VOLCANO_B1F_HIDDEN_STARDUST
	
BurglarRaulSeenText:
	text "Who're you?!"

	para "Nothing to see"
	line "here!"
	done

BurglarRaulBeatenText:
	text "You're not a"
	line "narc, right?"
	done

BurglarRaulAfterBattleText:
	text "Between you and me"
	line "..."

	para "We're not supposed"
	line "to be here. But,"
	cont "WOW!"

	para "This place is full"
	line "of treasure!"
	cont "Heh heh heh…"
	done
	
BurglarToseSeenText:
	text "Whaddya lookin'"
	line "at, kiddo?"

	para "Just enjoying"
	line "this new cave!"
	done

BurglarToseBeatenText:
	text "OK, I'll hit the"
	line "ol' dusty trail…"
	done

BurglarToseAfterBattleText:
	text "Phew! It's so"
	line "hot in here!"
	done

CinnabarVolcanoB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  1, CINNABAR_VOLCANO_1F, 2
	warp_event 22,  3, CINNABAR_VOLCANO_ITEM_ROOMS, 1
	warp_event 27,  3, CINNABAR_VOLCANO_ITEM_ROOMS, 2
	warp_event 37,  5, CINNABAR_VOLCANO_ITEM_ROOMS, 4

	def_coord_events

	def_bg_events
	bg_event  1, 28, BGEVENT_ITEM, CinnabarVolcanoB1FHiddenMaxEther
	bg_event 16, 10, BGEVENT_ITEM, CinnabarVolcanoB1FHiddenPPUp
	bg_event 19,  7, BGEVENT_ITEM, CinnabarVolcanoB1FHiddenRareCandy
	bg_event 18, 27, BGEVENT_ITEM, CinnabarVolcanoB1FHiddenFullRestore
	bg_event 23, 15, BGEVENT_ITEM, CinnabarVolcanoB1FHiddenStardust

	def_object_events
	object_event  8, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoB1FFireStone, EVENT_CINNABAR_VOLCANO_B1F_FIRE_STONE
	object_event  3, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoB1FRevive, EVENT_CINNABAR_VOLCANO_B1F_REVIVE
	object_event 12, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoB1FNugget, EVENT_CINNABAR_VOLCANO_B1F_NUGGET
	object_event 38, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoB1FMaxElixer, EVENT_CINNABAR_VOLCANO_B1F_MAX_ELIXER
	object_event 25,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CinnabarVolcanoB1FMaxRevive, EVENT_CINNABAR_VOLCANO_B1F_MAX_REVIVE
	object_event 19, 24, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerBurglarRaul, -1
	object_event  6, 21, SPRITE_PHARMACIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerBurglarTose, -1
	object_const_def
	const ROUTE7UNDERGROUNDENTRANCE_BIKER_1
	const ROUTE7UNDERGROUNDENTRANCE_BIKER_2

Route7UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerBikerMick:
	trainer BIKER, MICK, EVENT_BEAT_BIKER_MICK, BikerMickSeenText, BikerMickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerMickAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJebediah:
	trainer BIKER, JEBEDIAH, EVENT_BEAT_BIKER_JEBEDIAH, BikerJebediahSeenText, BikerJebediahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJebediahAfterBattleText
	waitbutton
	closetext
	end
	
BikerMickSeenText:
	text "Where do you think"
	line "you're going?"
	done

BikerMickBeatenText:
	text "Dang! We might"
	line "have to let you"
	cont "through."
	done

BikerMickAfterBattleText:
	text "You don't look"
	line "like you're with"
	cont "the cops…"
	
	para "Maybe you're okay?"
	done
	
BikerJebediahSeenText:
	text "Do you know who"
	line "you're dealing"
	cont "with?"
	
	para "The KANTO #MON"
	line "FEDERATION, chump!"
	done

BikerJebediahBeatenText:
	text "Shoot, this one's"
	line "strong!"
	done

BikerJebediahAfterBattleText:
	text "It's ok…"
	line "There's no way you"
	cont "can beat"
	cont "all of us!"
	done

Route7UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_7, 3
	warp_event  4,  7, ROUTE_7, 3
	warp_event  4,  3, UNDERGROUND_KPF, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBikerMick, -1
	object_event  5,  4, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBikerJebediah, -1
	object_const_def
	const UNDERGROUNDKPF_BIKER1
	const UNDERGROUNDKPF_BIKER2
	const UNDERGROUNDKPF_BIKER3
	const UNDERGROUNDKPF_BIKER4
	const UNDERGROUNDKPF_BIKER5
	const UNDERGROUNDKPF_BIKER6
	const UNDERGROUNDKPF_BIKER7
	const UNDERGROUNDKPF_BIKER8
	const UNDERGROUNDKPF_POKE_BALL1
	const UNDERGROUNDKPF_POKE_BALL2
	const UNDERGROUNDKPF_POKE_BALL3
	const UNDERGROUNDKPF_POKE_BALL4

UndergroundKPF_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBikerLiam:
	trainer BIKER, LIAM, EVENT_BEAT_BIKER_LIAM, BikerLiamSeenText, BikerLiamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerLiamAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerLee:
	trainer BIKER, LEE, EVENT_BEAT_BIKER_LEE, BikerLeeSeenText, BikerLeeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerLeeAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJesse:
	trainer BIKER, JESSE, EVENT_BEAT_BIKER_JESSE, BikerJesseSeenText, BikerJesseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJesseAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRoberto:
	trainer BIKER, ROBERTO, EVENT_BEAT_BIKER_ROBERTO, BikerRobertoSeenText, BikerRobertoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRobertoAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerKazu:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BIKER_KAZU
	iftrue .FightDone
	writetext BikerKazuSeenText
	waitbutton
	closetext
	winlosstext BikerKazuBeatenText, 0
	loadtrainer BIKER, KAZU
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIKER_KAZU
	setevent EVENT_BEAT_BIKER_HORACE
	setevent EVENT_BEAT_BIKER_DIGBY
	setevent EVENT_BEAT_BIKER_LEE
	setevent EVENT_BEAT_BIKER_ROBERTO
	setevent EVENT_BEAT_BIKER_LIAM
	setevent EVENT_BEAT_BIKER_NIC
	setevent EVENT_BEAT_BIKER_JESSE
	setevent EVENT_KPF_BIKERS
	opentext
	writetext BikerKazuAfterBattleText
	waitbutton
	verbosegiveitem SECRET_KEY
	writetext BikerKazuKeyText
	waitbutton
	closetext
	end
	
.FightDone:
	writetext BikerKazuLivesHereText
	waitbutton
	closetext
	end
	
TrainerBikerHorace:
	trainer BIKER, HORACE, EVENT_BEAT_BIKER_HORACE, BikerHoraceSeenText, BikerHoraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerHoraceAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerDigby:
	trainer BIKER, DIGBY, EVENT_BEAT_BIKER_DIGBY, BikerDigbySeenText, BikerDigbyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerDigbyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerNic:
	trainer BIKER, NIC, EVENT_BEAT_BIKER_NIC, BikerNicSeenText, BikerNicBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerNicAfterBattleText
	waitbutton
	closetext
	end

UndergroundKPFNugget:
	itemball NUGGET

UndergroundKPFXAttack:
	itemball X_ATTACK

UndergroundKPFPoisonBarb:
	itemball POISON_BARB

UndergroundKPFSecretKey:
	itemball SECRET_KEY

BikerLeeSeenText:
	text "You're in KANTO"
	line "#MON FEDERATION"
	cont "territory, kid!"
	done

BikerLeeBeatenText:
	text "OK, OK, I give!"
	done

BikerLeeAfterBattleText:
	text "You're not with"
	line "the cops are you?"
	done

BikerLiamSeenText:
	text "What's a matter?"

	para "Choking on my"
	line "exhaust?"
	done

BikerLiamBeatenText:
	text "I guess I'm the"
	line "one who choked."
	done

BikerLiamAfterBattleText:
	text "What's a kid like"
	line "you doing down"
	cont "here, anyway?"
	done

BikerJesseSeenText:
	text "You really took a"
	line "wrong turn coming"
	cont "down here!"
	done

BikerJesseBeatenText:
	text "You must know what"
	line "you're doing."
	done

BikerJesseAfterBattleText:
	text "Be careful. Our"
	line "leader's tough!"
	done

BikerRobertoSeenText:
	text "Ohh, a newcomer!"
	done

BikerRobertoBeatenText:
	text "We got a tough"
	line "one here!"
	done

BikerRobertoAfterBattleText:
	text "OK kid, see what"
	line "the others have"
	cont "in store for you!"
	done

BikerKazuSeenText:
	text "So, you're the"
	line "little trouble-"
	cont "maker my guys are"

	para "telling me about."
	line "You messed with"
	
	para "the wrong fella,"
	line "punk!"
	done

BikerKazuBeatenText:
	text "Wha-what?"
	done

BikerKazuAfterBattleText:
	text "Dang, you beat us"
	line "fair and square."
	
	para "Maybe we aren't"
	line "the toughest"
	cont "around after all."
	
	para "We'd never listen"
	line "to the police,"	
	cont "they're always"
	cont "hasslin' us."
	
	para "You're tough for"
	line "real, though."
	
	para "We'll try to be"
	line "more respectful"
	cont "of the space."

	para "One more thing,"
	line "I want to give"
	cont "you this key."
	done

BikerKazuKeyText:
	text "I don't have any"
	line "use for it, but"

	para "take it as a"
	line "memento of our"
	cont "battle."

	para "What's it for?"
	line "Beats me."

	para "All I know is some"
	line "weird guy dropped"
	cont "it in FUCHSIA."
	done

BikerKazuLivesHereText:
	text "Truth be told,"
	line "I live down here."

	para "I just like to"
	line "hang out with my"
	cont "friends!"
	done
	
BikerHoraceSeenText:
	text "No one gets"
	line "though me!"
	done

BikerHoraceBeatenText:
	text "Boss ain't gonna"
	line "be happy…"
	done

BikerHoraceAfterBattleText:
	text "Well, I guess I"
	line "gotta let you"
	cont "through."
	done
	
BikerDigbySeenText:
	text "You got something"
	line "to say, kid?"
	done

BikerDigbyBeatenText:
	text "The strong, silent"
	line "type, eh?"
	done

BikerDigbyAfterBattleText:
	text "We ain't doing"
	line "nothing wrong!"
	done
	
BikerNicSeenText:
	text "Get lost,"
	line "pipsqueak!"
	done

BikerNicBeatenText:
	text "My mistake…"
	done

BikerNicAfterBattleText:
	text "Sorry boss, I let"
	line "this one through…"
	done

UndergroundKPF_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  2, ROUTE_8_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event  3,  2, ROUTE_7_UNDERGROUND_PATH_ENTRANCE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  1, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerJesse, EVENT_KPF_BIKERS
	object_event 11,  4, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBikerLiam, EVENT_KPF_BIKERS
	object_event 18,  1, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerLee, EVENT_KPF_BIKERS
	object_event 16,  7, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, TrainerBikerKazu, -1
	object_event 24,  4, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBikerRoberto, EVENT_KPF_BIKERS
	object_event  2,  4, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBikerHorace, EVENT_KPF_BIKERS
	object_event  4,  6, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBikerDigby, -1
	object_event  8,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBikerNic, -1
	object_event  1,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndergroundKPFNugget, EVENT_UNDERGROUND_KPF_NUGGET
	object_event 17,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndergroundKPFXAttack, EVENT_UNDERGROUND_KPF_X_ATTACK
	object_event  9,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndergroundKPFPoisonBarb, EVENT_UNDERGROUND_KPF_POISONBARB
	;object_event 18,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UndergroundKPFSecretKey, EVENT_UNDERGROUND_KPF_SECRET_KEY

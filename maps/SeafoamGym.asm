	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_FISHER1
	const SEAFOAMGYM_FISHER2
	const SEAFOAMGYM_SUPER_NERD1
	const SEAFOAMGYM_SUPER_NERD2
	const SEAFOAMGYM_SUPER_NERD3
	const SEAFOAMGYM_GYM_GUIDE

SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script SeafoamGymNoopScene ; unusable

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SeafoamGymBlaineCallback

SeafoamGymBlaineCallback:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .BlaineCanDisappear
	appear SEAFOAMGYM_BLAINE
	endcallback
.BlaineCanDisappear:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .BlaineDisappear
	ifequal WEDNESDAY, .BlaineDisappear
	appear SEAFOAMGYM_BLAINE
	endcallback
.BlaineDisappear:
	disappear SEAFOAMGYM_BLAINE
	endcallback

SeafoamGymNoopScene:
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUIDE
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_JUGGLER_KAI
	setevent EVENT_BEAT_JUGGLER_KORY
	setevent EVENT_BEAT_JUGGLER_KOSMO
	setevent EVENT_BEAT_FIREBREATHER_DICK
	setevent EVENT_BEAT_FIREBREATHER_NED
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	end

.FightDone:
	writetext BlaineFightDoneText
	waitbutton
	closetext
	end
	
TrainerFirebreatherNed:
	trainer FIREBREATHER, NED, EVENT_BEAT_FIREBREATHER_NED, FirebreatherNedSeenText, FirebreatherNedBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherNedAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFirebreatherDick:
	trainer FIREBREATHER, DICK, EVENT_BEAT_FIREBREATHER_DICK, FirebreatherDickSeenText, FirebreatherDickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherDickAfterBattleText
	waitbutton
	closetext
	end
	
TrainerJugglerKory:
	trainer JUGGLER, KORY, EVENT_BEAT_JUGGLER_KORY, JugglerKorySeenText, JugglerKoryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerKoryAfterBattleText
	waitbutton
	closetext
	end
	
TrainerJugglerKosmo:
	trainer JUGGLER, KOSMO, EVENT_BEAT_JUGGLER_KOSMO, JugglerKosmoSeenText, JugglerKosmoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerKosmoAfterBattleText
	waitbutton
	closetext
	end
	
TrainerJugglerKai:
	trainer JUGGLER, KAI, EVENT_BEAT_JUGGLER_KAI, JugglerKaiSeenText, JugglerKaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerKaiAfterBattleText
	waitbutton
	closetext
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext SeafoamGymGuideWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	end

.TalkedToSeafoamGymGuideScript:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .SeafoamGymGuideBlaineHint
	writetext SeafoamGymGuideWinText2
	waitbutton
	closetext
	end

.SeafoamGymGuideBlaineHint:
	writetext SeafoamGymGuideHintText
	waitbutton
	closetext
	end

BlaineIntroText:
	text "BLAINE: Waaah!"

	para "My GYM in CINNABAR"
	line "burned down."

	para "My fire-breathing"
	line "#MON and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "But I'm back in"
	line "business as a GYM"

	para "LEADER here in"
	line "this cave."

	para "If you can beat"
	line "me, I'll give you"
	cont "a BADGE."

	para "Ha! You'd better"
	line "have BURN HEAL!"
	done

BlaineWinLossText:
	text "BLAINE: Awesome."
	line "I've burned out…"

	para "You've earned"
	line "VOLCANOBADGE!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineAfterBattleText:
	text "BLAINE: I did lose"
	line "this time, but I'm"

	para "going to win the"
	line "next time."

	para "When I rebuild my"
	line "CINNABAR GYM,"

	para "we'll have to have"
	line "a rematch."
	done

BlaineFightDoneText:
	text "BLAINE: My fire"
	line "#MON will be"

	para "even stronger."
	line "Just you watch!"
	done
	
FirebreatherNedSeenText:
	text "My #MON and I"
	line "light up this"

	para "dismal cave with"
	line "fire!"
	done

FirebreatherNedBeatenText:
	text "You put out our"
	line "fire!"
	done

FirebreatherNedAfterBattleText:
	text "Don't tell BLAINE,"
	line "but this new gym"
	cont "really stinks…"
	
	para "Literally and"
	line "figuratively!"
	done
	
FirebreatherDickSeenText:
	text "My #MON will"
	line "burn you with"
	cont "intense flame!"
	done

FirebreatherDickBeatenText:
	text "Burnt out…"
	done

FirebreatherDickAfterBattleText:
	text "Losing my hometown"
	line "and losing a"
	cont "battle…"

	para "I've had it rough"
	line "lately."
	
	para "All you can do is"
	line "keep fighting,"
	cont "though."
	done
	
JugglerKorySeenText:
	text "Down but not out!"
	line "The flame of our"
	cont "gym burns on!"
	done

JugglerKoryBeatenText:
	text "We'll be OK…"
	done

JugglerKoryAfterBattleText:
	text "Losing to some kid"
	line "isn't much in"
	cont "comparison to the"

	para "devastation caused"
	line "by the eruption. "
	cont "We persevere."
	done
	
JugglerKosmoSeenText:
	text "Oh, a trainer!"
	line "It's been awhile"

	para "since someone"
	line "came by."
	done

JugglerKosmoBeatenText:
	text "Gah!"
	done

JugglerKosmoAfterBattleText:
	text "I don't know if"
	line "people know that"

	para "BLAINE still has"
	line "a gym."
	done
	
JugglerKaiSeenText:
	text "Despite the circ-"
	line "umstances, we're"

	para "still putting our"
	line "all into battling!"
	done

JugglerKaiBeatenText:
	text "My all wasn't"
	line "enough!"
	done

JugglerKaiAfterBattleText:
	text "A lot of people"
	line "are without homes"

	para "after the"
	line "eruption."
	
	para "It really puts"
	line "things into"
	cont "perspective."
	done

SeafoamGymGuideWinText:
	text "Yo!"

	para "… Huh? It's over"
	line "already?"

	para "Sorry, sorry!"

	para "CINNABAR GYM was"
	line "gone, so I didn't"

	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done

SeafoamGymGuideWinText2:
	text "A #MON GYM can"
	line "be anywhere as"

	para "long as the GYM"
	line "LEADER is there."

	para "There's no need"
	line "for a building."
	done

SeafoamGymGuideHintText:
	text "Hey, <PLAYER>!"
	line "I can't forget"
	
	para "that amazing"
	line "battle you had"
	cont "with BLAINE."

	para "I hear he goes"
	line "back and visits"

	para "CINNABAR ISLAND"
	line "on TUESDAYs and"
	cont "WEDNESDAYs."

	para "Maybe he'd have"
	line "a rematch with"
	cont "you!"
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 17, SEAFOAM_ISLANDS_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, EVENT_BLAINE_IN_GYM
	object_event  7, 13, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherNed, -1
	object_event 12,  9, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherDick, -1
	object_event  2,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerJugglerKory, -1
	object_event  6,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerJugglerKosmo, -1
	object_event 14,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerKai, -1
	object_event 12, 16, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, EVENT_SEAFOAM_GYM_GYM_GUIDE

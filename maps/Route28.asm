	object_const_def
	const ROUTE28_COOLTRAINER_F

Route28_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerCooltrainerfDomino:
	trainer COOLTRAINERF, DOMINO, EVENT_BEAT_COOLTRAINER_F_DOMINO, CooltrainerfDominoSeenText, CooltrainerfDominoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfDominoAfterBattleText
	waitbutton
	closetext
	end

Route28Sign:
	jumptext Route28SignText

Route28HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_28_HIDDEN_RARE_CANDY
	
CooltrainerfDominoSeenText:
	text "…"

	para "What do you want?"
	done

CooltrainerfDominoBeatenText:
	text "Whatever…"
	done

CooltrainerfDominoAfterBattleText:
	text "Are you done?"
	done

Route28SignText:
	text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_28_STEEL_WING_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	def_coord_events

	def_bg_events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenRareCandy
	
	def_object_events
	object_event 21, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerCooltrainerfDomino, -1

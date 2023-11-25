	object_const_def
	const TESTWARPROOM_POKE_BALL
	const TESTWARPROOM_BILL
	
TestWarpRoom_MapScripts:
	def_scene_scripts

	def_callbacks
	
BillTestScript:
	faceplayer
	opentext
	writetext BillTestText1
	givepoke TYRANITAR, 250
	writetext BillTestText2
	setflag ENGINE_FOGBADGE
	setflag ENGINE_HIVEBADGE
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
	setevent EVENT_OPENED_MT_SILVER
	setevent EVENT_BEAT_RED
	waitbutton
	closetext
	end

TestWarpRoomMasterBall:
	itemball HM_CUT
	
TestWarpRoomItem2:
	itemball HM_SURF

BillTestText1:
	text "Text then"
	
	para "para."
	done
	
BillTestText2:
	text "Text then"
	line "line then,"

	para "para."
	done
	
TestWarpRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  7, ELMS_LAB, 2
	warp_event  3,  7, LAKE_OF_RAGE, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1
	warp_event  7,  7, VIOLET_GYM, 1
	warp_event  9,  7, POWER_PLANT_B1F, 1
	warp_event 11,  7, ECRUTEAK_GYM, 1
	warp_event 13,  7, AZALEA_GYM, 1
	warp_event 15,  7, GOLDENROD_CITY, 1
	warp_event 17,  7, OLIVINE_CITY, 1
	warp_event  1,  1, SEAFOAM_GYM, 1
	warp_event  3,  1, CERULEAN_CAVE_1F, 1
	warp_event  5,  1, LAKE_OF_RAGE, 2
	warp_event  7,  1, CINNABAR_VOLCANO_1F, 1
	warp_event  9,  1, VERMILION_GYM, 1
	warp_event 11,  1, CELADON_GYM, 1
	warp_event 13,  1, CERULEAN_CITY, 1
	warp_event 15,  1, FIGHTING_DOJO, 1
	warp_event 17,  1, OLIVINE_LIGHTHOUSE_6F, 1
	warp_event 13,  5, CIANWOOD_CITY, 1
	warp_event 15,  5, FUCHSIA_CITY, 1
	warp_event 17,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TestWarpRoomMasterBall, EVENT_TEST_WARP_ROOM_MASTER_BALL
	object_event  10,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TestWarpRoomItem2, EVENT_TEST_WARP_ROOM_ITEM_2
	object_event  1,  6, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillTestScript, -1
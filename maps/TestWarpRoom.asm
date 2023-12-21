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
	givepoke TYRANITAR, 250, MAX_REPEL
	writetext BillTestText2
	setflag ENGINE_FOGBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_PLAINBADGE
	setevent EVENT_OPENED_MT_SILVER
	clearevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	setevent EVENT_ROUTE_10_OFFICER
	setevent EVENT_BEAT_RED
	setevent EVENT_FOREST_IS_RESTLESS
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_CINNABAR
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_GOLDENROD
	waitbutton
	closetext
	end

TestWarpRoomMasterBall:
	itemball BICYCLE
	
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
	warp_event  3,  7, RADIO_TOWER_5F, 2 
	warp_event  5,  7, ROUTE_44, 1 
	warp_event  7,  7, ROUTE_16, 4
	warp_event  9,  7, POWER_PLANT_B1F, 1
	warp_event 11,  7, LAVENDER_TOWN, 1 
	warp_event 13,  7, AZALEA_GYM, 1 
	warp_event 15,  7, GOLDENROD_CITY, 1
	warp_event 17,  7, OLIVINE_CITY, 1
	warp_event  1,  1, SEAFOAM_GYM, 1
	warp_event  3,  1, CERULEAN_CAVE_B1F, 1
	warp_event  5,  1, SAFARI_ZONE_SECRET_HOUSE, 1
	warp_event  7,  1, CINNABAR_VOLCANO_B1F, 1
	warp_event  9,  1, ROUTE_28_STEEL_WING_HOUSE, 1 
	warp_event 11,  1, UNDERGROUND_KPF, 2
	warp_event 13,  1, CERULEAN_CITY, 1
	warp_event 15,  1, FIGHTING_DOJO, 1 
	warp_event 17,  1, OLIVINE_LIGHTHOUSE_6F, 1
	warp_event 13,  5, VIOLET_CITY, 1 
	warp_event 15,  5, SAFARI_ZONE_CENTER, 1
	warp_event 17,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TestWarpRoomMasterBall, EVENT_TEST_WARP_ROOM_MASTER_BALL
	object_event  10,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TestWarpRoomItem2, EVENT_TEST_WARP_ROOM_ITEM_2
	object_event  1,  6, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillTestScript, -1
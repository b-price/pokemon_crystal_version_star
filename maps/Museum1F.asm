	object_const_def
	const MUSEUM1F_SCIENTIST
	const MUSEUM1F_RECEPTIONIST
	const MUSEUM1F_CLERK
	const MUSEUM1F_SUPER_NERD

Museum1F_MapScripts:
	def_scene_scripts

	def_callbacks

FossilScientist:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove the next two lines to immediately receive the fossil
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	writetext FossilScientistIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	sjump .No

.OldAmber:
	checkitem OLD_AMBER
	iffalse .No
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext FossilScientistNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext FossilScientistTimeText
	waitbutton
	closetext
	; special FadeBlackQuickly ; uncomment the next five lines to immediately receive the fossil
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end ; replace this with "sjump FossilScientist" to immediately receive the fossil

.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke AERODACTYL, 30
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke KABUTO, 30
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke OMANYTE, 30
	closetext
	end

.NoRoom:
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "CANCEL@"
	
Museum1FReceptionist:
	jumptextfaceplayer Museum1FReceptionistText
	
Museum1FClerk:
	jumptextfaceplayer Museum1FClerkText
	
Museum1FSuperNerd:
	jumptextfaceplayer Museum1FSuperNerdText
	
Museum1FSign1:
	jumptext Museum1FSign1Text
	
Museum1FSign2:
	jumptext Museum1FSign2Text
	
Museum1FSign3:
	jumptext Museum1FSign3Text
	
Museum1FComputer1:
	jumptext Museum1FComputer1Text
	
Museum1FComputer2:
	jumptext Museum1FComputer2Text

FossilScientistIntroText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	done

FossilScientistNoText:
	text "No! Is too bad!"

	para "You come again!"
	done

FossilScientistPartyFullText:
	text "No! Is too bad!"

	para "Your party is"
	line "already full!"
	done

FossilScientistTimeText:
	text "I take a little"
	line "time!"

	para "You go for walk a"
	line "little while!"
	done

FossilScientistDoneText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"
	done

FossilScientistMonText:
	text "Oh! That is"
	line "a fossil!"

	para "It is fossil of"
	line "@"
	text_ram wStringBuffer3
	text ", a"

	para "#MON that is"
	line "already extinct!"

	para "My Resurrection"
	line "Machine will make"
	cont "that #MON live"
	cont "again!"
	done

FossilScientistGiveText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

FossilScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
Museum1FReceptionistText:
	text "Welcome to the"
	line "Pewter City"
	cont "Museum of Science!"
	
	para "As part of our"
	line "grand reopening,"
	cont "we're offering"
	cont "free admission!"
	done
	
Museum1FClerkText:
	text "Please enjoy the"
	line "exhibits!"
	done
	
Museum1FSuperNerdText:
	text "Ugh…"
	
	para "To think I was"
	line "born too late to"
	cont "live among these"
	cont "awesome, ancient"
	cont "#MON…"
	done
	
Museum1FSign1Text:
	text "Fossils of ancient"
	line "#MON found"
	
	para "at the bottom"
	line "of the sea."
	done

Museum1FSign2Text:
	text "In ancient times,"
	line "some modern land"
	cont "areas were under"
	cont "the ocean."
	done	

Museum1FSign3Text:
	text "This way to"
	line "exhibits!"
	done	
	
Museum1FComputer1Text:
	text "Complicated code"
	line "fills the screen…"
	
	para "Better not touch"
	line "anything!"
	done

Museum1FComputer2Text:
	text "Looks hi-tech!"
	
	para "Better not touch"
	line "anything…"
	done
	
Museum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 20,  7, PEWTER_CITY, 7
	warp_event 21,  7, PEWTER_CITY, 7
	warp_event  7,  7, MUSEUM_2F, 1



	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, Museum1FSign1
	bg_event  2,  6, BGEVENT_READ, Museum1FSign2
	bg_event  7,  0, BGEVENT_READ, Museum1FSign3
	bg_event  9,  0, BGEVENT_READ, Museum1FSign3
	bg_event 20,  2, BGEVENT_READ, Museum1FComputer1
	bg_event 21,  2, BGEVENT_READ, Museum1FComputer1
	bg_event 22,  1, BGEVENT_READ, Museum1FComputer2

	def_object_events
	object_event 20,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FossilScientist, -1
	object_event 12,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum1FReceptionist, -1
	object_event 12,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Museum1FClerk, -1
	object_event  7,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum1FSuperNerd, -1

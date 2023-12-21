SafariZoneCenterHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
SafariZoneCenterHouseTrashcan:
	checkevent EVENT_SAFARI_ZONE_CENTER_HOUSE_HIDDEN_RARE_CANDY
	iftrue .TrashEmpty
	giveitem RARE_CANDY
	iffalse .PackFull
	opentext
	writetext FoundRareCandyText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_SAFARI_ZONE_CENTER_HOUSE_HIDDEN_RARE_CANDY
	end

.PackFull:
	opentext
	writetext FoundRareCandyText
	promptbutton
	writetext NoRoomForRareCandyText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd TrashCanScript
	
SafariZoneCenterHousePhone:
	jumptext SafariZoneCenterHousePhoneText

SafariZoneCenterHousePhoneText:
	text "…It's been"
	line "disconnected."
	done
	
FoundRareCandyText:
	text "<PLAYER> found"
	line "RARE CANDY!"
	done

NoRoomForRareCandyText:
	text "But <PLAYER> can't"
	line "hold another item…"
	done

SafariZoneCenterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_CENTER, 9
	warp_event  3,  7, SAFARI_ZONE_CENTER, 9

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, SafariZoneCenterHouseTrashcan
	bg_event  7,  1, BGEVENT_READ, SafariZoneCenterHousePhone

	def_object_events
	

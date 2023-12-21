SafariZoneEastHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneEastHouseTrashcan:
	checkevent EVENT_SAFARI_ZONE_EAST_HOUSE_HIDDEN_LEFTOVERS
	iftrue .TrashEmpty
	giveitem LEFTOVERS
	iffalse .PackFull
	opentext
	writetext FoundSFLeftoversText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_SAFARI_ZONE_EAST_HOUSE_HIDDEN_LEFTOVERS
	end

.PackFull:
	opentext
	writetext FoundSFLeftoversText
	promptbutton
	writetext NoRoomLeftoversText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd TrashCanScript
	
SafariZoneEastHousePhone:
	jumptext SafariZoneEastHousePhoneText

SafariZoneEastHousePhoneText:
	text "…It's been"
	line "disconnected."
	done

FoundSFLeftoversText:
	text "<PLAYER> found"
	line "LEFTOVERS!"
	done

NoRoomLeftoversText:
	text "But <PLAYER> can't"
	line "hold another item…"
	done

SafariZoneEastHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, SafariZoneEastHouseTrashcan
	bg_event  7,  1, BGEVENT_READ, SafariZoneEastHousePhone

	def_object_events
	

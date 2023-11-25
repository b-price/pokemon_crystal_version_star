	object_const_def
	const SAFARIZONEWARDENSHOME_LASS

SafariZoneWardensHome_MapScripts:
	def_scene_scripts

	def_callbacks

WardensGranddaughter:
	faceplayer
	opentext
	checkevent EVENT_SHOWED_WARDEN_GDAUGHTER_LEGEND_BIRD
	iftrue .ShowedBird
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iffalse .NotMet
	writetext WardensGranddaughterAskBirdText
	waitbutton
	yesorno
	iffalse .SaidNo
	promptbutton
	special BillsGrandfather
	iffalse .SaidNo
	ifequal ARTICUNO, .CorrectBird
	ifequal ZAPDOS, .CorrectBird
	ifequal MOLTRES, .CorrectBird
	writetext WardensGranddaughterNoBirdText
	waitbutton
	closetext
	end
.ShowedBird:
	writetext WardensGranddaughterShowedBirdText
	waitbutton
	closetext
	end
.NotMet:
	writetext WardensGranddaughterText1
	setevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	waitbutton
	writetext WardensGranddaughterAskBirdText
	waitbutton
	yesorno
	iffalse .SaidNo
	promptbutton
	special BillsGrandfather
	iffalse .SaidNo
	ifequal ARTICUNO, .CorrectBird
	ifequal ZAPDOS, .CorrectBird
	ifequal MOLTRES, .CorrectBird
	writetext WardensGranddaughterNoBirdText
	waitbutton
	closetext
	end
.SaidNo:
	writetext WardensGranddaughterSaidNoText
	waitbutton
	closetext
	end
.CorrectBird:
	setevent EVENT_SHOWED_WARDEN_GDAUGHTER_LEGEND_BIRD
	writetext WardensGranddaughterBirdSafariEntryText
	waitbutton
	closetext
	end
	
WardenPhoto:
	jumptext WardenPhotoText

SafariZonePhoto:
	jumptext SafariZonePhotoText

WardensHomeBookshelf:
	jumpstd PictureBookshelfScript

WardensGranddaughterText1:
	text "My grandpa is the"
	line "SAFARI ZONE WAR-"
	cont "DEN."

	para "At least he was…"

	para "He decided to go"
	line "on a vacation and"

	para "took off overseas"
	line "all by himself."

	para "He quit running"
	line "SAFARI ZONE just"
	cont "like that."
	
	para "Many people were"
	line "disappointed that"

	para "SAFARI ZONE closed"
	line "down, but Grandpa"
	cont "is so stubborn…"
	
	para "He went on a trip"
	line "to go find some"
	cont "legendary bird"
	cont "#MON."
	
	para "He said there were"
	line "three legendary"
	cont "birds, each with a"
	
	para "different elemen-"
	line "tal power."
	
	para "They sound really"
	line "cool! I sure would"
	cont "love to see one…"
	done

WardensGranddaughterAskBirdText:
	text "Can you show me a"
	line "legendary bird"
	cont "#MON?"
	done

WardensGranddaughterNoBirdText:
	text "That's not what"
	line "I was looking for!"
	done
	
WardensGranddaughterSaidNoText:
	text "Oh, OK."
	done
	
WardensGranddaughterShowedBirdText:
	text "Don't tell anyone"
	line "I let you into the"
	cont "SAFARI ZONE!"
	
	para "It's our little"
	line "secret."
	done
	
WardensGranddaughterBirdSafariEntryText:
	text "WOW!!!"
	
	para "That…"
	
	para "Is…"
	
	para "AWESOME!"
	
	para "Grandpa will be"
	line "so jealous!"
	
	para "You know what?"
	line "I'll let you go"
	cont "into the SAFARI"
	cont "ZONE."
	
	para "There are so many"
	line "cool #MON in"
	cont "there!"
	
	para "A trainer like you"
	line "could get a lot"
	cont "out of it."
	
	para "Just don't get"
	line "greedy!"
	
	para "I'll let the guard"
	line "know you can pass."
	
	para "He'd do anything"
	line "for me!"
	done

WardenPhotoText:
	text "It's a photo of a"
	line "grinning old man"

	para "who's surrounded"
	line "by #MON."
	done

SafariZonePhotoText:
	text "It's a photo of a"
	line "huge grassy plain"

	para "with rare #MON"
	line "frolicking in it."
	done

SafariZoneWardensHome_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 6
	warp_event  3,  7, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  1,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  7,  0, BGEVENT_READ, WardenPhoto
	bg_event  9,  0, BGEVENT_READ, SafariZonePhoto

	def_object_events
	object_event  2,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, WardensGranddaughter, -1

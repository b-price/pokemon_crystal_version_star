	object_const_def
	const CERULEANBIKESHOP_CLERK
	const CERULEANBIKESHOP_SUPER_NERD

CeruleanBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext CeruleanBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext CeruleanBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext BorrowedBicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext CeruleanBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext CeruleanBikeShopClerkRefusedText
	waitbutton
	closetext
	end

CeruleanBikeShopSupernerdScript: 
	jumptext CeruleanBikeShopSupernerdText

CeruleanBikeShopBicycle:
	jumptext CeruleanBikeShopBicycleText

CeruleanBikeShopClerkIntroText:
	text "You need a"
	line "BICYCLE?"

	para "You're in luck."
	line "I'm running a"
	cont "special where"

	para "I loan you a"
	line "BICYCLE and you"
	cont "ride it around,"
	
	para "advertising the"
	line "shop. You want in?"
	done

CeruleanBikeShopClerkAgreedText:
	text "Excellent!"

	para "Give me your name"

	para "and I'll loan you"
	line "a BICYCLE."
	done

BorrowedBicycleText:
	text "<PLAYER> borrowed a"
	line "BICYCLE."
	done

CeruleanBikeShopClerkFirstRateBikesText:
	text "That's a nice"
	line "BICYCLE you've"

	para "got there!"
	done

CeruleanBikeShopClerkRefusedText:
	text "…well OK, then."
	
	para "This is a very"
	line "limited offer!"
	done

CeruleanBikeShopSupernerdText:
	text "This shop does the"
	line "best repairs!"

	para "Thery're not"
	line "quick, though."
	done

CeruleanBikeShopBicycleText:
	text "It's a slick new"
	line "BICYCLE!"
	done

CeruleanBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CERULEAN_CITY, 7
	warp_event  5,  7, CERULEAN_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  1,  4, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  0,  4, BGEVENT_READ, CeruleanBikeShopBicycle

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopClerkScript, -1
	object_event  1,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopSupernerdScript, -1

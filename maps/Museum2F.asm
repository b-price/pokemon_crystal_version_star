	object_const_def
	const MUSEUM2F_GIANCARLO
	const MUSEUM2F_RECEPTIONIST
	const MUSEUM2F_TEACHER
	const MUSEUM2F_YOUNGSTER1
	const MUSEUM2F_YOUNGSTER2
	const MUSEUM2F_LASS
	const MUSEUM2F_PHARMACIST

Museum2F_MapScripts:
	def_scene_scripts

	def_callbacks

Giancarlo:
	faceplayer
	opentext
	trade NPC_TRADE_GIANCARLO
	waitbutton
	closetext
	end

Museum2FReceptionist:
	jumptextfaceplayer Museum2FReceptionistText
	
Museum2FTeacher:
	jumptextfaceplayer Museum2FTeacherText
	
Museum2FYoungster1:
	jumptextfaceplayer Museum2FYoungster1Text
	
Museum2FYoungster2:
	jumptextfaceplayer Museum2FYoungster2Text
	
Museum2FLass:
	jumptextfaceplayer Museum2FLassText
	
Museum2FBurglar:
	jumptextfaceplayer Museum2FBurglarText
	
Museum2FSign1:
	jumptext Museum2FSign1Text
	
Museum2FSign2:
	jumptext Museum2FSign2Text

Museum2FReceptionistText:
	text "20 years ago,"
	line "this space shuttle"
	
	para "launched the first"
	line "joint #MON-"
	
	para "human space"
	line "expedition!"
	done
	
Museum2FTeacherText:
	text "Attention, class!"
	
	para "Line up and follow"
	line "me to the last"
	cont "fossil exhibit!"
	done
	
Museum2FYoungster1Text:
	text "Ancient #MON"
	line "are so cool!"
	done
	
Museum2FYoungster2Text:
	text "Museums are"
	line "boring!"
	
	para "I wanna go"
	line "outside!"
	done
	
Museum2FLassText:
	text "Nobody listens"
	line "to our teacher…"
	done
	
Museum2FBurglarText:
	text "Some real nice"
	line "specimens here…"
	
	para "Would be such a"
	line "shame if someone"
	cont "were to steal-"
	
	para "Huh?"
	line "I didn't say"
	cont "anything!"
	done
	
Museum2FSign1Text:
	text "DNA of ancient"
	line "#MON was found"
	cont "fossilized in"
	cont "tree sap."
	done

Museum2FSign2Text:
	text "More fossils"
	line "this way!"
	done	


Museum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, MUSEUM_1F, 5

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_READ, Museum2FSign1
	bg_event  7,  0, BGEVENT_READ, Museum2FSign2

	def_object_events
	object_event  0,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Giancarlo, -1
	object_event  9,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum2FReceptionist, -1
	object_event 11,  5, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum2FTeacher, -1
	object_event 10,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum2FYoungster1, -1
	object_event 12,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum2FYoungster2, -1
	object_event 12,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FLass, -1
	object_event  2,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FBurglar, -1

	object_const_def
	const SILVERCAVE_HIKER
	
SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilverCaveOutsideFlypointCallback

SilverCaveOutsideFlypointCallback:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback
	
SilverCaveMoveTutorScript:
	faceplayer
	opentext
	writetext SilverCaveTutorExplosionText
	waitbutton
	writetext SilverCaveTutorExplosionText2
	yesorno
	iffalse .TutorRefused
	setval EXPLOSION
	writetext SilverCaveTutorExplosionClear
	special MoveTutor
	ifequal FALSE, .TeachMove
.TutorRefused
	writetext SilverCaveTutorExplosionRefused
	waitbutton
	closetext
	end

.TeachMove
	writetext SilverCaveTutorExplosionTaught
	waitbutton
	closetext
	end

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done
	
SilverCaveTutorExplosionText:
	text "BOOM!"

	para "I've got loads"
	line "of dynamite and"
	cont "I'm not afraid to"
	cont "use it!"
	done

SilverCaveTutorExplosionText2:
	text "That means I can"
	line "teach your"

	para "#MON to use"
	line "EXPLOSION!"
	done

SilverCaveTutorExplosionRefused:
	text "Your loss!"
	done

SilverCaveTutorExplosionClear:
	text_start
	done

SilverCaveTutorExplosionTaught:
	text "Have fun!"

	para "KABOOM!"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event 22, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilverCaveMoveTutorScript, -1

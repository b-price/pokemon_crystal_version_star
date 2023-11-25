	object_const_def
	const POWERPLANTB1F_LT_SURGE
	const POWERPLANTB1F_ZAPDOS
	const POWERPLANTB1F_ELECTRODE1
	const POWERPLANTB1F_ELECTRODE2
	const POWERPLANTB1F_ELECTRODE3
	const POWERPLANTB1F_VOLTORB1
	const POWERPLANTB1F_VOLTORB2
	const POWERPLANTB1F_VOLTORB3
	const POWERPLANTB1F_POKE_BALL1
	const POWERPLANTB1F_POKE_BALL2
	const POWERPLANTB1F_POKE_BALL3
	const POWERPLANTB1F_POKE_BALL4
	const POWERPLANTB1F_POKE_BALL5
	const POWERPLANTB1F_POKE_BALL6

PowerPlantB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FLtSurgeCallback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FZapdosCallback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FVoltorb1Callback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FVoltorb2Callback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FVoltorb3Callback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FElectrode1Callback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FElectrode2Callback
	callback MAPCALLBACK_OBJECTS, PowerPlantB1FElectrode3Callback

PowerPlantB1FLtSurgeCallback:
	readvar VAR_WEEKDAY
	ifequal THURSDAY, .LtSurgeCanAppear
	ifequal SUNDAY, .LtSurgeCanAppear
	disappear POWERPLANTB1F_LT_SURGE
	endcallback

.LtSurgeCanAppear:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .LtSurgeAppears
	disappear POWERPLANTB1F_LT_SURGE
	endcallback

.LtSurgeAppears:
	appear POWERPLANTB1F_LT_SURGE
	endcallback
	
PowerPlantB1FZapdosCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_ZAPDOS
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_ZAPDOS
	endcallback
	
PowerPlantB1FVoltorb1Callback:
	checkevent EVENT_POWER_PLANT_B1F_VOLTORB_1
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_VOLTORB1
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_VOLTORB1
	endcallback
	
PowerPlantB1FVoltorb2Callback:
	checkevent EVENT_POWER_PLANT_B1F_VOLTORB_2
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_VOLTORB2
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_VOLTORB2
	endcallback
	
PowerPlantB1FVoltorb3Callback:
	checkevent EVENT_POWER_PLANT_B1F_VOLTORB_3
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_VOLTORB3
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_VOLTORB3
	endcallback
	
PowerPlantB1FElectrode1Callback:
	checkevent EVENT_POWER_PLANT_B1F_ELECTRODE_1
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_ELECTRODE1
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_ELECTRODE1
	endcallback

PowerPlantB1FElectrode2Callback:
	checkevent EVENT_POWER_PLANT_B1F_ELECTRODE_2
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_ELECTRODE2
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_ELECTRODE2
	endcallback

PowerPlantB1FElectrode3Callback:
	checkevent EVENT_POWER_PLANT_B1F_ELECTRODE_3
	iftrue .NoAppear
	sjump .Appear

.Appear:
	appear POWERPLANTB1F_ELECTRODE3
	endcallback

.NoAppear:
	disappear POWERPLANTB1F_ELECTRODE3
	endcallback

PowerPlantB1FLtSurge:
    faceplayer
    opentext
    checkflag ENGINE_LT_SURGE_REMATCH
    iftrue .FightDone
    writetext PowerPlantB1FLtSurgeIntroText
    yesorno
    iffalse .RefusedBattle
    writetext PowerPlantB1FLtSurgeAcceptText
    waitbutton
    closetext
    winlosstext PowerPlantB1FLtSurgeBeatenText, 0
    loadtrainer LT_SURGE, LT_SURGE2
    startbattle
    reloadmapafterbattle
    setflag ENGINE_LT_SURGE_REMATCH
    opentext
    writetext PowerPlantB1FLtSurgeAfterBattleText
    waitbutton
    closetext
    end

.RefusedBattle:
	writetext PowerPlantB1FLtSurgeRefusedText
	waitbutton
	closetext
	end

.FightDone:
	writetext PowerPlantB1FLtSurgeAfterBattleText
	waitbutton
	closetext
	end

Zapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 70
	startbattle
	disappear POWERPLANTB1F_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaooo!"
	done
	
PowerPlantVoltorb1:
	cry VOLTORB
	setevent EVENT_POWER_PLANT_B1F_VOLTORB_1
	loadwildmon VOLTORB, 65
	startbattle
	disappear POWERPLANTB1F_VOLTORB1
	reloadmapafterbattle	
	end
	
PowerPlantVoltorb2:
	cry VOLTORB
	setevent EVENT_POWER_PLANT_B1F_VOLTORB_2
	loadwildmon VOLTORB, 65
	startbattle
	disappear POWERPLANTB1F_VOLTORB2
	reloadmapafterbattle	
	end
	
PowerPlantVoltorb3:
	cry VOLTORB
	setevent EVENT_POWER_PLANT_B1F_VOLTORB_3
	loadwildmon VOLTORB, 75
	startbattle
	disappear POWERPLANTB1F_VOLTORB3
	reloadmapafterbattle	
	end

PowerPlantElectrode1:
	cry ELECTRODE
	setevent EVENT_POWER_PLANT_B1F_ELECTRODE_1
	loadwildmon ELECTRODE, 70
	startbattle
	disappear POWERPLANTB1F_ELECTRODE1
	reloadmapafterbattle
	end
	
PowerPlantElectrode2:
	cry ELECTRODE
	setevent EVENT_POWER_PLANT_B1F_ELECTRODE_2
	loadwildmon ELECTRODE, 80
	startbattle
	disappear POWERPLANTB1F_ELECTRODE2
	reloadmapafterbattle
	end
	
PowerPlantElectrode3:
	cry ELECTRODE
	setevent EVENT_POWER_PLANT_B1F_ELECTRODE_3
	loadwildmon ELECTRODE, 70
	startbattle
	disappear POWERPLANTB1F_ELECTRODE3
	reloadmapafterbattle
	end
	
PowerPlantB1FTMThunderbolt:
	itemball TM_THUNDERBOLT
	
PowerPlantB1FUltraBall:
	itemball ULTRA_BALL
	
PowerPlantB1FThunderstone:
	itemball THUNDERSTONE
	
PowerPlantB1FMetalCoat:
	itemball METAL_COAT

PowerPlantB1FParalyzeHeal:
	itemball PARLYZ_HEAL
	
PowerPlantB1FEscapeRope:
	itemball ESCAPE_ROPE

PowerPlantB1FHiddenMagnet:
	hiddenitem MAGNET, EVENT_POWER_PLANT_B1F_HIDDEN_MAGNET
	
PowerPlantB1FHiddenPPUp:
	hiddenitem PP_UP, EVENT_POWER_PLANT_B1F_HIDDEN_PP_UP
	
PowerPlantB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_POWER_PLANT_B1F_HIDDEN_MAX_ELIXER
	
PowerPlantB1FHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_POWER_PLANT_B1F_HIDDEN_MAX_ETHER

PowerPlantB1FLtSurgeIntroText:
	text "SURGE: Oh, hey,"
	line "kid!"

	para "Come here to do"
	line "some training as"
	cont "well?"

	para "Better be careful"
	line "not to get zapped!"

	para "Let's have a"
	line "little spar!"
	done

PowerPlantB1FLtSurgeAcceptText:
	text "Right on! No cry-"
	line "-ing if you lose!"
	done

PowerPlantB1FLtSurgeRefusedText:
	text "Wahaha! Come back"
	line "when you get a"

	para "little backbone,"
	line "kid!"
	done

PowerPlantB1FLtSurgeBeatenText:
	text "Oooooh! You got"
	line "guts, kid!"
	done

PowerPlantB1FLtSurgeAfterBattleText:
	text "What an electri-"
	line "fying battle!"

	para "Let's do it again"
	line "sometime, kid!"
	done

PowerPlantB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 26, ROUTE_10_NORTH, 3

	def_coord_events

	def_bg_events
	bg_event 17, 25, BGEVENT_ITEM, PowerPlantB1FHiddenMagnet
	bg_event  1,  1, BGEVENT_ITEM, PowerPlantB1FHiddenPPUp
	bg_event  1, 13, BGEVENT_ITEM, PowerPlantB1FHiddenMaxElixer
	bg_event 28, 11, BGEVENT_ITEM, PowerPlantB1FHiddenMaxEther

	def_object_events
	object_event  3, 22, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PowerPlantB1FLtSurge, EVENT_LT_SURGE_REMATCH
	object_event  2,  7, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Zapdos, EVENT_POWERPLANTB1F_ZAPDOS
	object_event 21,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode1, EVENT_POWER_PLANT_B1F_ELECTRODE_1
	object_event 15, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode2, EVENT_POWER_PLANT_B1F_ELECTRODE_2
	object_event 18, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrode3, EVENT_POWER_PLANT_B1F_ELECTRODE_3
	object_event 10, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorb1, EVENT_POWER_PLANT_B1F_VOLTORB_1
	object_event 19, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorb2, EVENT_POWER_PLANT_B1F_VOLTORB_2
	object_event 19, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorb3, EVENT_POWER_PLANT_B1F_VOLTORB_3
	object_event 22,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1FTMThunderbolt, EVENT_POWER_PLANT_B1F_TM_THUNDERBOLT
	object_event 28, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1FUltraBall, EVENT_POWER_PLANT_B1F_ULTRA_BALL
	object_event 20, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1FThunderstone, EVENT_POWER_PLANT_B1F_THUNDERSTONE
	object_event 15, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1FMetalCoat, EVENT_POWER_PLANT_B1F_METAL_COAT
	object_event  1, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1FParalyzeHeal, EVENT_POWER_PLANT_B1F_PARLYZ_HEAL
	object_event  5,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantB1FEscapeRope, EVENT_POWER_PLANT_B1F_ESCAPE_ROPE
	
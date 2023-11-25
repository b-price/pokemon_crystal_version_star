TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 50, SPEAROW,    10
	db 15, SPEAROW,    15
	db 15, SPEAROW,    20
	db 10, AIPOM,      10
	db  5, AIPOM,      15
	db  5, AIPOM,      20
	db -1
; rare
	db 50, FEAROW,    15
	db 15, HERACROSS,  15
	db 15, HERACROSS,  20
	db 10, AIPOM,      10
	db  5, AIPOM,      15
	db  5, AIPOM,      20
	db -1

TreeMonSet_Town:
; common
	db 50, SPEAROW,    10
	db 15, EKANS,      15
	db 15, PINECO,    15
	db 10, AIPOM,      10
	db  5, AIPOM,      15
	db  5, AIPOM,      20
	db -1
; rare
	db 50, PINECO,    10
	db 15, HERACROSS,  15
	db 15, HERACROSS,  20
	db 10, AIPOM,      10
	db  5, AIPOM,      15
	db  5, AIPOM,      20
	db -1

TreeMonSet_Route:
; common
	db 50, HOOTHOOT,   10
	db 15, SPINARAK,   10
	db 15, LEDYBA,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  20
	db -1
; rare
	db 50, PINECO,   10
	db 15, PINECO,     15
	db 15, PINECO,    20
	db 10, NOCTOWL,  15
	db  5, KAKUNA,  10
	db  5, METAPOD,  10
	db -1

TreeMonSet_Kanto:
; common
	db 50, HOOTHOOT,   40
	db 15, EKANS,      40
	db 15, MANKEY,   40
	db 10, NOCTOWL,  40
	db  5, BEEDRILL,  40
	db  5, BUTTERFREE,  40
	db -1
; rare
	db 50, NOCTOWL,   50
	db 15, PINECO,     50
	db 15, TANGELA,     50
	db 10, PINSIR,  50
	db  5, SCYTHER,  50
	db  5, FORRETRESS,  50
	db -1

TreeMonSet_Lake:
; common
	db 50, HOOTHOOT,   20
	db 15, VENONAT,    20
	db 15, HOOTHOOT,   20
	db 10, EXEGGCUTE,  20
	db  5, EXEGGCUTE,  20
	db  5, VENOMOTH,  20
	db -1
; rare
	db 50, HOOTHOOT,   30
	db 15, PINECO,     30
	db 15, PINECO,     30
	db 10, EXEGGCUTE,  30
	db  5, ARBOK,  30
	db  5, NOCTOWL,  30
	db -1

TreeMonSet_Forest:
; common
	db 50, HOOTHOOT,   10
	db 15, PINECO,     10
	db 15, PINECO,     15
	db 10, NOCTOWL,    15
	db  5, BUTTERFREE, 15
	db  5, BEEDRILL,   15
	db -1
; rare
	db 50, PINECO,   10
	db 15, CATERPIE,   10
	db 15, WEEDLE,     10
	db 10, NOCTOWL,   15
	db  5, METAPOD,    10
	db  5, KAKUNA,     10
	db -1

TreeMonSet_Rock:
	db 90, KRABBY,     15
	db 10, SHUCKLE,    15
	db -1

; kanto maps for mew
RoamMapsKanto:	
	roam_map ROUTE_1, ROUTE_2, ROUTE_3, ROUTE_4, ROUTE_5
	roam_map ROUTE_2, ROUTE_22, ROUTE_1
	roam_map ROUTE_3, ROUTE_4, ROUTE_24, ROUTE_25
	roam_map ROUTE_4, ROUTE_3, ROUTE_2, ROUTE_1, ROUTE_21
	roam_map ROUTE_5, ROUTE_6, ROUTE_11, ROUTE_12, ROUTE_13
	roam_map ROUTE_6, ROUTE_5, ROUTE_4, ROUTE_3
	roam_map ROUTE_7, ROUTE_17, ROUTE_18
	roam_map ROUTE_8, ROUTE_12, ROUTE_13, ROUTE_14, ROUTE_15
	roam_map ROUTE_9, ROUTE_24, ROUTE_25
	roam_map ROUTE_10, ROUTE_9, ROUTE_24, ROUTE_25
	roam_map ROUTE_11, ROUTE_6, ROUTE_8, ROUTE_7
	roam_map ROUTE_12, ROUTE_13, ROUTE_14, ROUTE_15
	roam_map ROUTE_13, ROUTE_12, ROUTE_11, ROUTE_6
	roam_map ROUTE_14, ROUTE_13, ROUTE_14, ROUTE_15, ROUTE_18
	roam_map ROUTE_15, ROUTE_18, ROUTE_17
	roam_map ROUTE_17, ROUTE_18, ROUTE_15, ROUTE_14
	roam_map ROUTE_18, ROUTE_17, ROUTE_7, ROUTE_5
	roam_map ROUTE_21, ROUTE_1, ROUTE_22, ROUTE_2, ROUTE_3
	roam_map ROUTE_22, ROUTE_2, ROUTE_3, ROUTE_4
	roam_map ROUTE_24, ROUTE_25, ROUTE_24, ROUTE_5
	roam_map ROUTE_25, ROUTE_24, ROUTE_9
	assert_list_length NUM_ROAMMON_MAPS
	db -1 ; end
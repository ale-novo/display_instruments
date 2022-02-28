-- Pop-out 2D Aspen Avionics PFD

size = {517, 1034}
			
--Custom Datarefs (Integer)	








-- Sim Datarefs Integer			
DRI("FN",  									"frame_number" ) 
DRI("frame_number",  						"com/dkmp/frame_number" ) 
DRF("frame_time",  							"frame_time" ) 
DRI("delay",  								"com/dkmp/delay" ) 
DRI("MouseDn",  							"com/dkmp/MouseDn" ) 
DRI("MouseUp",  							"com/dkmp/MouseUp" ) 
DRI("sim_speed",         					"sim/time/sim_speed")
DRI("window_height", 						"sim/graphics/view/window_height")
DRI("window_width",							"sim/graphics/view/window_width")
DRI("external", 							"sim/graphics/view/view_is_external")
DRI("scroll",    							"sim/graphics/misc/current_scroll_pos")
DRI("RAlt_Min",          					"sim/cockpit/misc/radio_altimeter_minimum")
DRI("RAlt_DH",           					"sim/cockpit2/gauges/indicators/radio_altimeter_dh_lit_pilot")
DRI("FD_mode",           					"sim/cockpit2/autopilot/flight_director_mode")
DRI("AP_source",         					"sim/cockpit2/autopilot/autopilot_source")
DRI("NAV1_from_to",      					"sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot")
DRI("NAV2_from_to",      					"sim/cockpit2/radios/indicators/nav2_flag_from_to_pilot")
DRI("GPS_from_to",       					"sim/cockpit/radios/gps_fromto")
DRI("NAV1_CDI",          					"sim/cockpit/radios/nav1_CDI")
DRI("NAV2_CDI",          					"sim/cockpit/radios/nav2_CDI")
DRI("COM1sim",           					"sim/cockpit2/radios/actuators/com1_frequency_hz")
DRI("NAV1sim",           					"sim/cockpit2/radios/actuators/nav1_frequency_hz")
DRI("COM2sim",           					"sim/cockpit2/radios/actuators/com2_frequency_hz")
DRI("NAV2sim",           					"sim/cockpit2/radios/actuators/nav2_frequency_hz")
DRI("EFIS_Map_Mode",     					"sim/cockpit2/EFIS/map_mode")
DRI("EFIS_is_HSI",       					"sim/cockpit2/EFIS/map_mode_is_HSI")
DRI("EFIS_Map_Range",    					"sim/cockpit2/EFIS/map_range")
DRI("EFIS_apt",          					"sim/cockpit2/EFIS/EFIS_airport_on")
DRI("EFIS_fix",          					"sim/cockpit2/EFIS/EFIS_fix_on")
DRI("EFIS_vor",          					"sim/cockpit2/EFIS/EFIS_vor_on")
DRI("EFIS_ndb",          					"sim/cockpit2/EFIS/EFIS_ndb_on")
			
			
-- Sim Datarefs Floating Point			
DRF("Time",                     			"sim/time/total_flight_time_sec")
DRF("InstBrt",                  			"sim/cockpit2/switches/instrument_brightness_ratio[0]")
DRF("phi",                      			"sim/flightmodel/position/phi")
DRF("psi",                      			"sim/flightmodel/position/psi")
DRF("theta",                    			"sim/flightmodel/position/theta")
DRF("elevation",                			"sim/flightmodel/position/elevation")
DRF("y_agl",                    			"sim/flightmodel/position/y_agl")
DRF("X",                        			"sim/flightmodel/position/lat_ref")
DRF("Y",                        			"sim/flightmodel/position/lon_ref")
DRF("local_x",                  			"sim/flightmodel/position/local_x")
DRF("local_y",                  			"sim/flightmodel/position/local_y")
DRF("local_z",                  			"sim/flightmodel/position/local_z")
DRF("groundspeed",              			"sim/flightmodel/position/groundspeed")
DRF("hpath",                    			"sim/flightmodel/position/hpath")
DRF("var",                      			"sim/flightmodel/position/magnetic_variation")
DRF("pitch",                    			"sim/cockpit2/gauges/indicators/pitch_vacuum_deg_pilot")
DRF("heading",                  			"sim/cockpit2/gauges/indicators/heading_AHARS_deg_mag_pilot")
DRF("mapX",                     			"sim/cockpit2/switches/generic_lights_switch[0]")
DRF("mapY",                     			"sim/cockpit2/switches/generic_lights_switch[1]")
DRF("Roll",                     			"sim/cockpit2/gauges/indicators/roll_electric_deg_pilot")
DRF("Pitch",                    			"sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot")
DRF("HDG",                      			"sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot")
DRF("HDG_Bug_Pilot",            			"sim/cockpit2/autopilot/heading_dial_deg_mag_pilot")
DRF("OBS1",                     			"sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot")
DRF("OBS2",                     			"sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot")
DRF("airspeed_kts_pilot",       			"sim/cockpit2/gauges/indicators/airspeed_kts_pilot")
DRF("TrueAirspeed",             			"sim/flightmodel/position/true_airspeed")
DRF("GroundSpeed",              			"sim/flightmodel/position/groundspeed")
DRF("TurnRate",                 			"sim/cockpit2/gauges/indicators/turn_rate_heading_deg_copilot")
DRF("airspeedDial",             			"sim/cockpit2/autopilot/airspeed_dial_kts_mach")
DRF("bus_volts",                			"sim/cockpit2/electrical/bus_volts[0]")
DRF("baro",                     			"sim/cockpit2/gauges/actuators/barometer_setting_in_hg_pilot")
DRF("OAT",                      			"sim/cockpit2/temperature/outside_air_temp_degc")
DRF("wind_deg",                 			"sim/cockpit2/gauges/indicators/wind_heading_deg_mag")
DRF("wind_kts",                 			"sim/cockpit2/gauges/indicators/wind_speed_kts")
DRF("pos_lat",                  			"sim/flightmodel/position/latitude")
DRF("pos_lon",                  			"sim/flightmodel/position/longitude")
DRF("altitude_ft_pilot",        			"sim/cockpit2/gauges/indicators/altitude_ft_pilot")
DRF("altitude_dial",            			"sim/cockpit2/autopilot/altitude_dial_ft")
DRF("RAlt",                     			"sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot")
DRF("VVI",                      			"sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
DRF("has_SC_FD",                			"sim/aircraft/view/acf_has_SC_fd")
DRF("FD_on",                    			"sim/cockpit2/annunciators/flight_director")
DRF("FD_pitch",                 			"sim/cockpit2/autopilot/flight_director_pitch_deg")
DRF("FD_roll",                  			"sim/cockpit2/autopilot/flight_director_roll_deg")
DRF("SideSlip",                 			"sim/cockpit2/gauges/indicators/slip_deg")
DRF("HSI_source_select",        			"sim/cockpit2/radios/actuators/HSI_source_select_pilot")
DRF("NAV1_OBS_Needle",          			"sim/cockpit/radios/nav1_obs_degm")
DRF("NAV1_CDI",                 			"sim/cockpit/radios/nav1_CDI")
DRF("NAV1_display_v",           			"sim/cockpit2/radios/indicators/nav1_display_vertical")
DRF("NAV1_display_h",           			"sim/cockpit2/radios/indicators/nav1_display_horizontal")
DRF("NAV2_OBS_Needle",          			"sim/cockpit/radios/nav2_obs_degm")
DRF("NAV2_CDI",                 			"sim/cockpit/radios/nav2_CDI")
DRF("NAV2_display_v",           			"sim/cockpit2/radios/indicators/nav2_display_vertical")
DRF("NAV2_display_h",           			"sim/cockpit2/radios/indicators/nav2_display_horizontal")
DRF("HSI_vert",                 			"sim/cockpit2/radios/indicators/hsi_display_vertical_pilot")
DRF("GPS_hdef_dots",            			"sim/cockpit2/radios/indicators/gps_hdef_dots_pilot")
DRF("NAV1_hdef_dots",           			"sim/cockpit2/radios/indicators/nav1_hdef_dots_pilot")
DRF("NAV2_hdef_dots",           			"sim/cockpit2/radios/indicators/nav2_hdef_dots_pilot")
DRF("NAV1_vdef_dots",           			"sim/cockpit2/radios/indicators/nav1_vdef_dots_pilot")
DRF("NAV2_vdef_dots",           			"sim/cockpit2/radios/indicators/nav2_vdef_dots_pilot")
DRF("hsi_vdef_dots",            			"sim/cockpit2/radios/indicators/nav1_vdef_dots_pilot")
DRF("NAV1_relative_bearing",    			"sim/cockpit2/radios/indicators/nav1_relative_bearing_deg")
DRF("NAV2_relative_bearing",    			"sim/cockpit2/radios/indicators/nav2_relative_bearing_deg")
DRF("ADF1_relative_bearing",    			"sim/cockpit2/radios/indicators/adf1_relative_bearing_deg")
DRF("ADF2_relative_bearing",    			"sim/cockpit2/radios/indicators/adf2_relative_bearing_deg")
DRF("RMI_left_use_adf_pilot",   			"sim/cockpit2/radios/actuators/RMI_left_use_adf_pilot")
DRF("RMI_right_use_adf_pilot",  			"sim/cockpit2/radios/actuators/RMI_right_use_adf_pilot")
DRF("ADFsim",                   			"sim/cockpit2/radios/actuators/adf1_frequency_hz")
DRF("NAV1_has_dme",             			"sim/cockpit2/radios/indicators/nav1_has_dme")
DRF("NAV2_has_dme",             			"sim/cockpit2/radios/indicators/nav2_has_dme")
DRF("NAV1_dme_speed",           			"sim/cockpit2/radios/indicators/nav1_dme_speed_kts")
DRF("NAV2_dme_speed",           			"sim/cockpit2/radios/indicators/nav2_dme_speed_kts")
DRF("GPS_dme_speed",           				"sim/cockpit2/radios/indicators/gps_dme_speed_kts")
DRF("NAV1_dme_dist",            			"sim/cockpit2/radios/indicators/nav1_dme_distance_nm")
DRF("NAV2_dme_dist",            			"sim/cockpit2/radios/indicators/nav2_dme_distance_nm")
DRF("GPS_dme_dist",            				"sim/cockpit2/radios/indicators/gps_dme_distance_nm")
DRF("NAV1_dme_time",            			"sim/cockpit2/radios/indicators/nav1_dme_time_min")
DRF("NAV2_dme_time",            			"sim/cockpit2/radios/indicators/nav2_dme_time_min")
DRF("GPS_dme_time",            				"sim/cockpit2/radios/indicators/gps_dme_time_min")
DRF("NAV1_bearing",             			"sim/cockpit2/radios/indicators/nav1_bearing_deg_mag")
DRF("NAV2_bearing",             			"sim/cockpit2/radios/indicators/nav2_bearing_deg_mag")
DRF("GPS_bearing",             				"sim/cockpit2/radios/indicators/gps_bearing_deg_mag")
DRF("HSI_GS_flag",              			"sim/cockpit2/radios/indicators/hsi_flag_glideslope_pilot")
DRF("ADF1_has_dme",             			"sim/cockpit2/radios/indicators/adf1_has_dme")
DRF("ADF2_has_dme",             			"sim/cockpit2/radios/indicators/adf2_has_dme")
DRF("DME_has_dme",              			"sim/cockpit2/radios/indicators/dme_has_dme")
DRF("gps_has_dme",              			"sim/cockpit2/radios/indicators/gps_has_dme")
DRF("dist",              					"sim/flightmodel/controls/dist")
	
			
drs("nav1_id",								"sim/cockpit2/radios/indicators/nav1_nav_id")
drs("nav2_id",								"sim/cockpit2/radios/indicators/nav2_nav_id")
drs("adf1_id",								"sim/cockpit2/radios/indicators/adf1_nav_id")
drs("adf2_id",								"sim/cockpit2/radios/indicators/adf2_nav_id")			
drs("gps_id", 								"sim/cockpit2/radios/indicators/gps_nav_id")
drs("dme_id", 								"sim/cockpit2/radios/indicators/dme_nav_id")
			
			
			





--IMAGES

--________________________________________________________________________________________________________
defineProperty("PFD", 						loadImage("pfd_bg_hires.png", 0, 0, 1024, 2048)) 
defineProperty("alt_alerter", 				loadImage("pfd_alt_alerter.png", 0, 0, 128, 64)) 
defineProperty("alt_bug_selected",			loadImage("pfd_alt_bug_selected.png", 0, 0, 32, 512)) 
defineProperty("alt_bug", 					loadImage("pfd_alt_bug.png", 0, 0, 32, 512)) 
defineProperty("alt_drum_digits1_mask", 	loadImage("pfd_alt_drum_digits1_mask.png", 0, 0, 32, 64)) 
defineProperty("alt_drum", 					loadImage("pfd_alt_drum.png", 0, 0, 128, 64)) 
defineProperty("alt_selected", 				loadImage("pfd_alt_selected.png", 0, 0, 128, 64)) 
defineProperty("alt_tape_0", 				loadImage("alt_tape_0.png", 0, 0, 128, 512))
defineProperty("alt_tape_1", 				loadImage("alt_tape_1.png", 0, 0, 128, 512))
defineProperty("alt_tape_2", 				loadImage("alt_tape_2.png", 0, 0, 128, 512))
defineProperty("alt_tape_3", 				loadImage("alt_tape_3.png", 0, 0, 128, 512))
defineProperty("alt_tape_4", 				loadImage("alt_tape_4.png", 0, 0, 128, 512))
defineProperty("alt_tape_5", 				loadImage("alt_tape_5.png", 0, 0, 128, 512))
defineProperty("alt_tape_6", 				loadImage("alt_tape_6.png", 0, 0, 128, 512))
defineProperty("alt_tape_7", 				loadImage("alt_tape_7.png", 0, 0, 128, 512))
defineProperty("alt_tape_8", 				loadImage("alt_tape_8.png", 0, 0, 128, 512))
defineProperty("alt_tape_9", 				loadImage("alt_tape_9.png", 0, 0, 128, 512))
defineProperty("alt_tape_10", 				loadImage("alt_tape_10.png", 0, 0, 128, 512))
defineProperty("alt_tape_11", 				loadImage("alt_tape_11.png", 0, 0, 128, 512))
defineProperty("alt_tape_12", 				loadImage("alt_tape_12.png", 0, 0, 128, 512))
defineProperty("alt_tape_13", 				loadImage("alt_tape_13.png", 0, 0, 128, 512))
defineProperty("alt_tape_14", 				loadImage("alt_tape_14.png", 0, 0, 128, 512))
defineProperty("alt_tape_15", 				loadImage("alt_tape_15.png", 0, 0, 128, 512))
defineProperty("alt_tape_16", 				loadImage("alt_tape_16.png", 0, 0, 128, 512))
defineProperty("alt_tape_17", 				loadImage("alt_tape_17.png", 0, 0, 128, 512))
defineProperty("alt_tape_18", 				loadImage("alt_tape_18.png", 0, 0, 128, 512))
defineProperty("alt_tape_19", 				loadImage("alt_tape_19.png", 0, 0, 128, 512))
defineProperty("alt_tape_20", 				loadImage("alt_tape_20.png", 0, 0, 128, 512))
defineProperty("alt_tape_21", 				loadImage("alt_tape_21.png", 0, 0, 128, 512))
defineProperty("alt_tape_22", 				loadImage("alt_tape_22.png", 0, 0, 128, 512))
defineProperty("alt_tape_23", 				loadImage("alt_tape_23.png", 0, 0, 128, 512))
defineProperty("alt_tape_24", 				loadImage("alt_tape_24.png", 0, 0, 128, 512))
defineProperty("alt_tape_25", 				loadImage("alt_tape_25.png", 0, 0, 128, 512))
defineProperty("alt_tape_26", 				loadImage("alt_tape_26.png", 0, 0, 128, 512))
defineProperty("asi_bug_selected", 			loadImage("pfd_asi_bug_selected.png", 0, 0, 32, 512)) 
defineProperty("asi_bug", 					loadImage("pfd_asi_bug.png", 0, 0, 32, 512)) 
defineProperty("asi_drum", 					loadImage("pfd_asi_drum.png", 0, 0, 64, 64)) 
defineProperty("asi_selected", 				loadImage("pfd_asi_selected.png", 0, 0, 128, 64)) 
defineProperty("asi_tape", 					loadImage("pfd_asi_tape.png", 0, 0, 128, 428)) 
defineProperty("asi_green_range", 			loadImage("ASI_green_range.png", 0, 0, 8, 512)) 
defineProperty("auto_course_icon", 			loadImage("pfd_auto_course_icon.png", 0, 0, 32, 32)) 
defineProperty("bottom_bar", 				loadImage("pfd_bottom_bar.png", 0, 0, 512, 128)) 
defineProperty("cdi_deviation_hollow", 		loadImage("pfd_cdi_deviation_hollow.png", 0, 0, 512, 512)) 
defineProperty("cdi_deviation", 			loadImage("pfd_cdi_deviation.png", 0, 0, 512, 512)) 
defineProperty("cdi_from_arc", 				loadImage("pfd_cdi_from_arc.png", 0, 0, 256, 512)) 
defineProperty("cdi_from", 					loadImage("pfd_cdi_from.png", 0, 0, 256, 512)) 
defineProperty("cdi_needle_arc", 			loadImage("pfd_cdi_needle_arc.png", 0, 0, 256, 512)) 
defineProperty("cdi_needle_arc_stub",		loadImage("pfd_cdi_needle_arc_stub.png", 0, 0, 256, 512)) 
defineProperty("cdi_needle", 				loadImage("pfd_cdi_needle.png", 0, 0, 256, 512)) 
defineProperty("cdi_source_label", 			loadImage("pfd_cdi_source_label.png", 0, 0, 64, 32)) 
defineProperty("cdi_to_arc", 				loadImage("pfd_cdi_to_arc.png", 0, 0, 256, 512)) 
defineProperty("cdi_to", 					loadImage("pfd_cdi_to.png", 0, 0, 256, 512)) 
defineProperty("compass_arc", 				loadImage("pfd_compass_arc.png", 0, 0, 1024, 1024)) 
defineProperty("compass_arrows", 			loadImage("pfd_compass_arrows.png", 0, 0, 512, 512)) 
defineProperty("compass_plane", 			loadImage("pfd_compass_plane.png", 0, 0, 128, 128)) 
defineProperty("compass", 					loadImage("pfd_compass.png", 0, 0, 512, 512)) 
defineProperty("data_bar", 					loadImage("pfd_data_bar.png", 0, 0, 512, 128)) 
defineProperty("dh_icon", 					loadImage("pfd_dh_icon.png", 0, 0, 1024, 2048)) 
defineProperty("double_line_pointer_icon", 	loadImage("pfd_double_line_pointer_icon.png", 0, 0, 16, 32)) 
defineProperty("double_line_pointer", 		loadImage("pfd_double_line_pointer.png", 0, 0, 32, 512)) 
defineProperty("flight_director", 			loadImage("pfd_flight_director.png", 0, 0, 256, 256)) 
defineProperty("gps_annunciator", 			loadImage("pfd_gps_annunciator.png", 0, 0, 1024, 2048)) 
defineProperty("gps_invalid", 				loadImage("pfd_gps_invalid.png", 0, 0, 1024, 2048)) 
defineProperty("hdg_bug_selected",			loadImage("pfd_hdg_bug_selected.png", 0, 0, 64, 512))
defineProperty("hdg_bug_selected_Arc",		loadImage("pfd_hdg_bug_selected.png", 0, 0, 64, 1024))
defineProperty("GPS_bug",					loadImage("pfd_GPS_bug.png", 0, 0, 64, 512)) 
defineProperty("LDI",						loadImage("LDI.png", 0, 0, 128, 32)) 
defineProperty("VDI",						loadImage("VDI.png", 0, 0, 32, 128)) 
defineProperty("hdg_bug", 					loadImage("pfd_hdg_bug.png", 0, 0, 64, 512)) 
defineProperty("hdg_bug_Arc", 				loadImage("pfd_hdg_bug.png", 0, 0, 64, 1024)) 
defineProperty("heading_indicator", 		loadImage("pfd_heading_indicator.png", 0, 0, 64, 64)) 
defineProperty("horizon", 					loadImage("pfd_horizon.png", 0, 0, 1024, 1024)) 
defineProperty("ldi_scale", 				loadImage("pfd_ldi_scale.png", 0, 0, 256, 32)) 
defineProperty("ldi_source", 				loadImage("pfd_ldi_source.png", 0, 0, 64, 16)) 
defineProperty("minimums", 					loadImage("pfd_minimums.png", 0, 0, 256, 32)) 
defineProperty("over_pitch", 				loadImage("pfd_over_pitch.png", 0, 0, 512, 512)) 
defineProperty("pitchimg", 					loadImage("pfd_pitch.png", 0, 0, 512, 512)) 
defineProperty("plane", 					loadImage("pfd_plane.png", 0, 0, 256, 32)) 
defineProperty("roll_Pointer", 				loadImage("pfd_roll_Pointer.png", 0, 0, 32, 32)) 
defineProperty("rollimg", 					loadImage("pfd_roll.png", 0, 0, 512, 512)) 
defineProperty("single_line_pointer_icon", 	loadImage("pfd_single_line_pointer_icon.png", 0, 0, 16, 32)) 
defineProperty("single_line_pointer", 		loadImage("pfd_single_line_pointer.png", 0, 0, 32, 512)) 
defineProperty("slip", 						loadImage("pfd_slip.png", 0, 0, 128, 32)) 
defineProperty("turn_rate_arc", 			loadImage("pfd_turn_rate_arc.png", 0, 0, 128, 32)) 
defineProperty("turn_rate_neg_arrow", 		loadImage("pfd_turn_rate_neg_arrow.png", 0, 0, 16, 16)) 
defineProperty("turn_rate_pos_arrow", 		loadImage("pfd_turn_rate_pos_arrow.png", 0, 0, 16, 16)) 
defineProperty("turn_rate_tape_arc", 		loadImage("pfd_turn_rate_tape_arc.png", 0, 0, 1024, 1024)) 
defineProperty("turn_rate_tape", 			loadImage("pfd_turn_rate_tape.png", 0, 0, 512, 512)) 
defineProperty("turn_rate", 				loadImage("pfd_turn_rate.png", 0, 0, 128, 32)) 
defineProperty("vdi_scale", 				loadImage("pfd_vdi_scale.png", 0, 0, 32, 256)) 
defineProperty("vsi_neg", 					loadImage("pfd_vsi_neg.png", 0, 0, 32, 256)) 
defineProperty("vsi_pos", 					loadImage("pfd_vsi_pos.png", 0, 0, 32, 256)) 
defineProperty("wind_arrow", 				loadImage("pfd_wind_arrow.png", 0, 0, 32, 32)) 
defineProperty("WhiteDigits", 				loadImage("white_digits.png", 3, 0, 20, 392))
defineProperty("PurpleDigits", 				loadImage("PurpleDigits.png", 3, 0, 20, 392))
defineProperty("GreenDigits", 				loadImage("GreenDigits.png", 3, 0, 20, 392))
defineProperty("RedDigits", 				loadImage("red_digits.png", 3, 0, 20, 392))
defineProperty("GPSS_Grey", 				loadImage("GPSS_Grey.png", 0, 0, 32, 64))
defineProperty("GPSS_Green", 				loadImage("GPSS_Green.png", 0, 0, 32, 64))
defineProperty("MIN_Grey", 					loadImage("MIN_Grey.png", 0, 0, 32, 64))
defineProperty("MIN_Green", 				loadImage("MIN_Green.png", 0, 0, 32, 64))
defineProperty("TPS_Grey", 					loadImage("TPS_Grey.png", 0, 0, 32, 64))
defineProperty("TPS_Green", 				loadImage("TPS_Green.png", 0, 0, 32, 64))
defineProperty("ARC", 						loadImage("ARC.png", 0, 0, 32, 64))
defineProperty("C360Deg", 					loadImage("360.png", 0, 0, 32, 64))
defineProperty("MAP_Green", 				loadImage("MAP_Green.png", 0, 0, 32, 64))
defineProperty("MAP_Grey", 					loadImage("MAP_Grey.png", 0, 0, 32, 64))
defineProperty("PgIndGrn", 					loadImage("PgIndGrn.png", 0, 0, 32, 32))
defineProperty("PgIndGry", 					loadImage("PgIndGry.png", 0, 0, 128, 32))
defineProperty("MapDetail", 				loadImage("MapDetail.png", 0, 0, 128, 32))
defineProperty("TealDigits", 				loadImage("teal_digits.png", 3, 0, 20, 392)) 
defineProperty("TealKt", 					loadImage("teal_kt.png", 3, 0, 32, 32)) 
defineProperty("DoubleDigits", 				loadImage("double_digits.png", 3, 0, 24, 392)) 





defineProperty("N", 						loadImage("N.png", 0, 0, 512, 512)) 
defineProperty("S", 						loadImage("S.png", 0, 0, 512, 512)) 
defineProperty("E", 						loadImage("E.png", 0, 0, 512, 512)) 
defineProperty("W", 						loadImage("W.png", 0, 0, 512, 512)) 
defineProperty("d0", 						loadImage("0.png", 0, 0, 512, 512)) 
defineProperty("d3", 						loadImage("3.png", 0, 0, 512, 512)) 
defineProperty("d6", 						loadImage("6.png", 0, 0, 512, 512)) 
defineProperty("d9", 						loadImage("9.png", 0, 0, 512, 512)) 
defineProperty("d12", 						loadImage("12.png", 0, 0, 512, 512)) 
defineProperty("d15", 						loadImage("15.png", 0, 0, 512, 512)) 
defineProperty("d18", 						loadImage("18.png", 0, 0, 512, 512)) 
defineProperty("d21", 						loadImage("21.png", 0, 0, 512, 512)) 
defineProperty("d24", 						loadImage("24.png", 0, 0, 512, 512)) 
defineProperty("d27", 						loadImage("27.png", 0, 0, 512, 512)) 
defineProperty("d30", 						loadImage("30.png", 0, 0, 512, 512)) 
defineProperty("d33", 						loadImage("33.png", 0, 0, 512, 512)) 
defineProperty("AN", 						loadImage("N.png",  0, 0, 1024, 1024)) 
defineProperty("ArcS", 						loadImage("S.png",  0, 0, 1024, 1024)) 
defineProperty("AE", 						loadImage("E.png",  0, 0, 1024, 1024)) 
defineProperty("AW", 						loadImage("W.png",  0, 0, 1024, 1024)) 
defineProperty("Ad0", 						loadImage("0.png",  0, 0, 1024, 1024)) 
defineProperty("Ad3", 						loadImage("3.png",  0, 0, 1024, 1024)) 
defineProperty("Ad6", 						loadImage("6.png",  0, 0, 1024, 1024)) 
defineProperty("Ad9", 						loadImage("9.png",  0, 0, 1024, 1024)) 
defineProperty("Ad12", 						loadImage("12.png", 0, 0, 1024, 1024)) 
defineProperty("Ad15", 						loadImage("15.png", 0, 0, 1024, 1024)) 
defineProperty("Ad18", 						loadImage("18.png", 0, 0, 1024, 1024)) 
defineProperty("Ad21", 						loadImage("21.png", 0, 0, 1024, 1024)) 
defineProperty("Ad24", 						loadImage("24.png", 0, 0, 1024, 1024)) 
defineProperty("Ad27", 						loadImage("27.png", 0, 0, 1024, 1024)) 
defineProperty("Ad30", 						loadImage("30.png", 0, 0, 1024, 1024)) 
defineProperty("Ad33", 						loadImage("33.png", 0, 0, 1024, 1024)) 
defineProperty("green_line", 				loadImage("green_line.png", 0, 0, 512, 512))
defineProperty("white_line", 				loadImage("white_line.png", 0, 0, 512, 512))
defineProperty("MagentaPixel", 				loadImage("MagentaPixel.png", 0, 0, 512, 1024)) 
defineProperty("digitsImageD", 				loadImage("dark_digits.png", 3, 0, 10, 196)) 
defineProperty("Knob", 						loadImage("RotaryKnob.png", 0, 0, 128, 128))
defineProperty("MapCircle", 				loadImage("Map-CircleWhite.png", 0, 0, 64, 64)) 



					
local font1 = 								loadFont('Fonts/APfont.fnt')
local DigitalSystem = 						loadFont('Fonts/digitalism22.fnt')
local digitalism = 							loadFont('Fonts/digitalism22.fnt')
					
local QuartzRegular14 = 					loadFont('Fonts/QuartzRegular14.fnt')
local QuartzRegular16 = 					loadFont('Fonts/QuartzRegular16.fnt')
local QuartzRegular18 = 					loadFont('Fonts/QuartzRegular18.fnt')
local QuartzRegular22 = 					loadFont('Fonts/QuartzRegular22.fnt')
local QuartzRegular24 = 					loadFont('Fonts/QuartzRegular24.fnt')
local QuartzRegular26 = 					loadFont('Fonts/QuartzRegular26.fnt')
local QuartzRegular28 = 					loadFont('Fonts/QuartzRegular28.fnt')
local QuartzRegular30 = 					loadFont('Fonts/QuartzRegular30.fnt')
								
local lcddot_tr = 							loadFont('Fonts/lcddot_tr22.fnt')
local Digital = 							loadFont('Fonts/Digital22.fnt')
					
local values = {}					


values["VaNum"] = 140				
values["VbgNum"] = 110
values["VrefNum"] = 70
values["VrNum"] = 73
values["VxNum"] = 78
values["VyNum"] = 96
values["VloNum"] = 153
values["VleNum"] = 153
values["ExtVoltage"] = 28
values["BatNum"] = 100

values["NAV1_bearing"] = 0
values["NAV2_bearing"] = 0 
values["GPS_bearing"] = 0 

values["NAV1_dme_speed"] = 0
values["NAV2_dme_speed"] = 0 
values["GPS_dme_speed"] = 0 

values["NAV1_dme_dist"] = 0
values["NAV2_dme_dist"] = 0 
values["GPS_dme_dist"] = 0 

values["NAV1_dme_time"] = "00:00"
values["NAV2_dme_time"] = "00:00"
values["GPS_dme_time"] = 0 



set(Va, 140)   --maneuvering speed
set(Vbg, 110)  --Best glide speed
set(Vref, 70)  -- landing reference speed
set(Vr, 73)    -- rotation speed
set(Vx, 78)    -- best angle of climb speed
set(Vy, 96)    -- best rate of climb speed
set(Vlo, 153)  -- maximum landing gear operating speed
set(Vle, 153)  -- maximum landing gear extended speed







local Vne  = 204
local Vno  = 166
local Vfe  = 123 --(Max flap speed)
local Vs   = 68  --(Stall speed no flaps)
local Vso  = 62  --(Stall speed with flaps)
local Vrt   = 20	--(Start of red vtape)


local mfloor = math.floor
local mmin = math.min
local mmax = math.max
local mrad = math.rad
local msin = math.sin
local mcos = math.cos
local mtan = math.tan
local mmod = math.mod
local mmodf = math.modf
local mabs = math.abs

local sformat = string.format
local ssub = string.sub




local line = {"", "", "", "", ""}
local Vspeed = {"", "", "", "", ""}



function draw()



--this DrawAll refers to all the graphic components that would be drawn beneath the layer the following text is on.
drawAll(components)



local textlineX = mfloor(get(DPX1)*0.5)
local textlineY = mfloor(get(DPY1))
local br = get(Brt)




local page = get(Page)


if page == 0 then
	
	if get(BaroUnits) == 0 then	
	line[1] = "BARO (UNITS):                  IN"
	elseif get(BaroUnits) == 1 then	
	line[1] = "BARO (UNITS):                 mB"
	end
	
	
	if get(VSpeeds) == 0 then	
	line[2] = "DISPLAY VSPEEDS:     OFF"
	elseif get(VSpeeds) == 1 then
	line[2] = "DISPLAY VSPEEDS:       ON"
	end


	if get(AutoCRS) == 0 then 
	line[3] = "AUTOCRS:                      OFF"
	elseif get(AutoCRS) == 1 then
	line[3] = "AUTOCRS:                        ON"
	end



	if get(ArcMode) == 0 then
	line[4] = "ARC MODE:                     HSI"
	elseif get(ArcMode) == 1 then
	line[4] = "ARC MODE:                     CDI"
	end




	if get(AHRS) == 0 then
	line[5] = "AHRS:                        RESET"
	elseif get(AHRS) == 1 then 
	line[5] = "AHRS:                         SET"
	end



line[6] = "GENERAL SETTINGS"
line[7] = "PAGE 1 OF 7"

elseif page == 1 then

	if get(FltPln) == 0 then
	line[1] = "360 FLT PLN:                  OFF"
	elseif get(FltPln) == 1 then
	line[1] = "360 FLT PLN:               AUTO"
	elseif get(FltPln) == 2 then	
	line[1] = "360 FLT PLN:                   ON"
	end
	
	if get(Arpt) == 0 then
	line[2] = "360 ARPT:                       OFF"
	elseif get(Arpt) == 1 then
	line[2] = "360 ARPT:                    AUTO"
	elseif get(Arpt) == 2 then	
	line[2] = "360 ARPT:                        ON"
	end	
	
	if get(NDB) == 0 then
	line[3] = "360 NDB:                         OFF"
	elseif get(NDB) == 1 then
	line[3] = "360 NDB:                      AUTO"
	elseif get(NDB) == 2 then	
	line[3] = "360 NDB:                          ON"
	end	
	
	if get(VOR) == 0 then
	line[4] = "360 VOR:                         OFF"
	elseif get(VOR) == 1 then
	line[4] = "360 VOR:                      AUTO"
	elseif get(VOR) == 2 then	
	line[4] = "360 VOR:                          ON"
	end	

	if get(INT) == 0 then
	line[5] = "360 INT:                           OFF"
	elseif get(INT) == 1 then
	line[5] = "360 INT:                        AUTO"
	elseif get(INT) == 2 then	
	line[5] = "360 INT:                            ON"
	end	
			


line[6] = "360 MAP SETTINGS"
line[7] = "PAGE 2 OF 7"

elseif page == 2 then

	if get(FltPlnArc) == 0 then
	line[1] = "ARC FLT PLN:                 OFF"
	elseif get(FltPlnArc) == 1 then
	line[1] = "ARC FLT PLN:              AUTO"
	elseif get(FltPlnArc) == 2 then	
	line[1] = "ARC FLT PLN:                  ON"
	end
	
	if get(ArptArc) == 0 then
	line[2] = "ARC ARPT:                      OFF"
	elseif get(ArptArc) == 1 then	
	line[2] = "ARC ARPT:                   AUTO"
	elseif get(ArptArc) == 2 then	
	line[2] = "ARC ARPT:                       ON"
	end	
	
	if get(NDBArc) == 0 then
	line[3] = "ARC NDB:                        OFF"
	elseif get(NDBArc) == 1 then	
	line[3] = "ARC NDB:                     AUTO"
	elseif get(NDBArc) == 2 then	
	line[3] = "ARC NDB:                         ON"
	end	
	
	if get(VORArc) == 0 then
	line[4] = "ARC VOR:                        OFF"
	elseif get(VORArc) == 1 then	
	line[4] = "ARC VOR:                     AUTO"
	elseif get(VORArc) == 2 then	
	line[4] = "ARC VOR:                         ON"
	end	

	if get(INTArc) == 0 then
	line[5] = "ARC INT:                          OFF"
	elseif get(INTArc) == 1 then	
	line[5] = "ARC INT:                       AUTO"
	elseif get(INTArc) == 2 then	
	line[5] = "ARC INT:                           ON"
	end	

line[6] = "Arc MAP SETTINGS"
line[7] = "PAGE 3 OF 7"

elseif page == 3 then

line[1] = "Va:                                     "   .. values["VaNum"] .. ""
line[2] = "Vbg:                                   "      .. values["VbgNum"] .. ""
line[3] = "Vref:                                   "   .. values["VrefNum"] .. ""
line[4] = "Vr:                                      "   .. values["VrNum"] .. ""
line[5] = "Vx:                                     "   .. values["VxNum"] .. ""

line[6] = "VSPEEDS A"
line[7] = "PAGE 4 OF 7"

elseif page == 4 then

line[1] = "Vy:                                     "   .. values["VyNum"] .. ""
line[2] = "Vlo:                                    "   .. values["VloNum"] .. ""
line[3] = "Vle:                                    "   .. values["VleNum"] .. ""
line[4] = ""
line[5] = ""

line[6] = "VSPEEDS B"
line[7] = "PAGE 5 OF 7"

elseif page == 5 then

	line[1] = "BATTERY"

	line[2] = "EXTERNAL"

	if  get(MBt3) == 0  then
	line[3] = "SHUTDOWN"
	elseif  get(MBt3) == 1  then
	line[3] = "SHUTDOWN OK? PRESS >>"
	end

line[4] = "EXT PWR:                 "   .. values["ExtVoltage"] .. " V"
line[5] = "BAT:                         "   .. values["BatNum"] .. "%"

line[6] = "POWER SETTINGS"
line[7] = "PAGE 6 OF 7"

elseif page == 6 then

line[1] = "App Ver:                            1.0" 
line[2] = "I/O Ver:                             1.0"
line[3] = "Features:                     DLINK"
line[4] = ""
line[5] = ""

line[6] = "SYSTEM STATUS"
line[7] = "PAGE 7 OF 7"



end




if get(MB) == 0 then
	if get(NAV1_CDI) == 0 and get(NAV1sim) > 11195 then
	line[28] = "VOR1"
	elseif get(NAV1_CDI) == 1 and get(NAV1sim) <= 11195 then
	line[28] = "ILS1"
	end

line[8] = "VOR1"
line[9] = "VLOC1"

elseif get(MB) == 1 then
	if get(NAV2_CDI) == 0 and get(NAV2sim) > 11195 then
	line[28] = "VOR2"
	elseif get(NAV2_CDI) == 1 and get(NAV2sim) <= 11195 then
	line[28] = "ILS2"
	end
	
line[8] = "VOR2"
line[9] = "VLOC2"

elseif get(MB) == 2 then

line[28] = "GPS1"
line[8] = "GPS1"
line[9] = " GPS1"

elseif get(MB) == 3 then
line[8] = ""
line[9] = ""
end

if get(AARC) == 0		then
		if get(LB) == 0 then
		line[10] ="NAV1"
		elseif get(LB) == 1 then
		line[10] = "NAV2"
		elseif get(LB) == 2 then
		line[10] = "GPS"
		elseif get(LB) == 3 then
		line[10] = ""
		end
		
		if get(RB) == 0 then
		line[11] ="NAV1"
		elseif get(RB) == 1 then
		line[11] = "NAV2"
		elseif get(RB) == 2 then
		line[11] = "GPS"
		elseif get(RB) == 3 then
		line[11] = ""
		end
else
line[10] = ""
line[11] = ""




end
	





if get(MB) == 0 and get(NAV1_has_dme) == 1 then
	line[12] = "".. values["NAVAID1"] ..""											--..  values["nav1_id_0"] ..    ""
	line[13] = "".. values["NAV1_bearing"] .."º/"
	line[14] = "".. values["NAV1_dme_dist"] ..""
	line[15] = "".. values["NAV1_dme_time"] ..""
elseif get(MB) == 1 and get(NAV2_has_dme) == 1 then
	line[12] = "".. values["NAVAID2"] ..""	
	line[13] = "".. values["NAV2_bearing"] .."º/"
	line[14] = "".. values["NAV2_dme_dist"] ..""
	line[15] = "".. values["NAV2_dme_time"] ..""
elseif get(MB) == 2 and get(gps_has_dme) == 1 then
	line[12] = "".. values["gps_id"] ..""	
	line[13] = "".. values["GPS_bearing"] .."º/"
	line[14] = "".. values["GPS_dme_dist"] ..""
	line[15] = "".. values["GPS_dme_time"] ..""
elseif get(MB) == 3 then
	line[12] = ""
	line[13] = ""
	line[14] = ""
	line[15] = ""
end



if get(LB) == 0 and get(NAV1_has_dme) == 1 and get(AARC) == 0  then
	line[16] = "".. values["NAVAID1"] ..""	
	line[17] = "".. values["NAV1_dme_dist"] .. " NM"
elseif get(LB) == 1 and get(NAV2_has_dme) == 1 and get(AARC) == 0  then
	line[16] = "".. values["NAVAID2"] ..""	
	line[17] = "".. values["NAV2_dme_dist"] .. " NM"
elseif get(LB) == 2 and get(gps_has_dme) == 1 and get(AARC) == 0  then
	line[16] = "".. values["gps_id"] ..""	
	line[17] = "".. values["GPS_dme_dist"] .. " NM"
else
	line[16] = ""
	line[17] = ""
end



if get(RB) == 0  and get(NAV1_has_dme) == 1 and get(AARC) == 0 then
	line[18] = "".. values["NAVAID1"] ..""	
	line[19] = "".. values["NAV1_dme_dist"] .. " NM"
elseif get(RB) == 1 and get(NAV2_has_dme) == 1 and get(AARC) == 0  then
	line[18] = "".. values["NAVAID2"] ..""	
	line[19] = "".. values["NAV2_dme_dist"] .. " NM"
elseif get(RB) == 2 and get(gps_has_dme) == 1 and get(AARC) == 0  then
	line[18] = "".. values["gps_id"] ..""	
	line[19] = "".. values["GPS_dme_dist"] .. " NM"	
else
	line[18] = ""
	line[19] = ""		
end	
	


if get(LeftKnobBut) == 0 then	
	line[20] = "CRS"
elseif get(LeftKnobBut) == 1 then
	line[20] = "CRS"
elseif get(LeftKnobBut) == 2 then
	line[20] = "IAS"
elseif get(LeftKnobBut) == 3 then
	line[20] = ""

end	
	

if get(RightKnobBut) == 0 then	
	line[21] = "HDG"
elseif get(RightKnobBut) == 1 then
	line[21] = "HDG"
elseif get(RightKnobBut) == 2 then
	line[21] = "ALT"
elseif get(RightKnobBut) == 3 then
	line[21] = "BARO"
elseif get(RightKnobBut) == 4 then
	line[21] = "MIN"	
end
	
	

	line[22] = "".. values["RAltMin"] .. ""	


if get(EFIS_Map_Range) == 0 then
	line[23] = "6 NM"
elseif get(EFIS_Map_Range) == 1 then
	line[23] = "12 NM"
elseif get(EFIS_Map_Range) == 2 then
	line[23] = "20 NM"
elseif get(EFIS_Map_Range) == 3 then
	line[23] = "40 NM"
elseif get(EFIS_Map_Range) == 4 then
	line[23] = "60 NM"
elseif get(EFIS_Map_Range) == 5 then
	line[23] = "80 NM"
elseif get(EFIS_Map_Range) == 6 then
	line[23] = "100 NM"

end
	

		if get(AARC) == 1 and get(ArcMode) == 1 and  get(MB) == 0 and get(NAV1_from_to) == 1 then 	
			line[24] = "TO"
		elseif get(AARC) == 1 and get(ArcMode) == 1 and  get(MB) == 1 and get(NAV2_from_to) == 1 then 
			line[24] = "TO"
		elseif get(AARC) == 1 and get(ArcMode) == 1 and  get(MB) == 0 and get(NAV1_from_to) == 2 then 
			line[24] = "                               FROM"
		elseif get(AARC) == 1 and get(ArcMode) == 1 and  get(MB) == 1 and get(NAV2_from_to) == 2 then 
			line[24] = "                               FROM"
		end		
	
	


	
	
	
if get(VSpeeds) == 1 and get(ATPS) == 1 then			
		if  (get(Va)*4) -	(get(airspeed_kts_pilot)*4) > -130 and  (get(Va)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Va) ~= 0 		then	Vspeed[1] = "- Va"	else	Vspeed[1] = ""	end
		if  (get(Vbg)*4) - 	(get(airspeed_kts_pilot)*4) > -130 and  (get(Vbg)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Vbg) ~= 0 	then	Vspeed[2] = "- Vbg"	else	Vspeed[2] = ""	end	
		if  (get(Vref)*4) - (get(airspeed_kts_pilot)*4) > -130 and  (get(Vref)*4) - (get(airspeed_kts_pilot)*4) < 160 and get(Vref) ~= 0 	then	Vspeed[3] = "- Vref" else	Vspeed[3] = ""	end	
		if  (get(Vr)*4) - 	(get(airspeed_kts_pilot)*4) > -130 and  (get(Vr)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Vr) ~= 0 		then	Vspeed[4] = "- Vr"	else	Vspeed[4] = ""	end	
		if  (get(Vx)*4) - 	(get(airspeed_kts_pilot)*4) > -130 and  (get(Vx)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Vx) ~= 0 		then	Vspeed[5] = "- Vx"	else	Vspeed[5] = ""	end	
		if  (get(Vy)*4) - 	(get(airspeed_kts_pilot)*4) > -130 and  (get(Vy)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Vy) ~= 0 		then	Vspeed[6] = "- Vy"	else	Vspeed[6] = ""	end	
		if  (get(Vlo)*4) - 	(get(airspeed_kts_pilot)*4) > -130 and  (get(Vlo)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Vlo) ~= 0 	then	Vspeed[7] = "- Vlo"	else	Vspeed[7] = ""	end	
		if  (get(Vle)*4) - 	(get(airspeed_kts_pilot)*4) > -130 and  (get(Vle)*4) - 	(get(airspeed_kts_pilot)*4) < 160 and get(Vle) ~= 0 	then	Vspeed[8] = "- Vle"	else	Vspeed[8] = ""	end		
		
else
Vspeed[1] = ""
Vspeed[2] = ""
Vspeed[3] = ""
Vspeed[4] = ""
Vspeed[5] = ""
Vspeed[6] = ""
Vspeed[7] = ""
Vspeed[8] = ""
end
	
	
	
	
	
	
	

	
	
	
	
drawAll(components2)	
	
	
	
	
	
local menu = get(Menu)	
	
	
--drawText(QuartzRegular16, get(DPX1)*0.5, get(DPY1), "" .. textlineX .. "x," .. textlineY .. "y", 1,1,1)

drawText(QuartzRegular18, 111, 736 + (get(Va)*4)    -  (get(airspeed_kts_pilot)*4), Vspeed[1], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vbg)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[2], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vref)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[3], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vr)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[4], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vx)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[5], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vy)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[6], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vlo)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[7], 1,1,1, 1)
drawText(QuartzRegular18, 111, 736 + (get(Vle)*4)   -  (get(airspeed_kts_pilot)*4), Vspeed[8], 1,1,1, 1)

                                
--White = 1, 1, 1   Magenta = 1, 0, 1    Teal = 0, 1, 1  Green = 0, 1, 0
--Menu Text
drawText(QuartzRegular22, 200, 518, line[1],   1,1-get(MBt1),1, 1*menu)
drawText(QuartzRegular22, 200, 443, line[2],   1,1-get(MBt2),1, 1*menu)
drawText(QuartzRegular22, 200, 368, line[3],   1,1-get(MBt3),1, 1*menu)
drawText(QuartzRegular22, 200, 293, line[4],   1,1-get(MBt4),1, 1*menu)
drawText(QuartzRegular22, 200, 223, line[5],   1,1-get(MBt5),1, 1*menu)

drawText(QuartzRegular14, 195, 190, line[6],   0,1,0, 1*menu)
drawText(QuartzRegular14, 385, 190, line[7],   0,1,0, 1*menu)



drawText(QuartzRegular18, 141, 594, line[28], 	0,1,0, 1 * get(ATPS))


drawText(QuartzRegular22, 96, 909, "kt", 		get(ASPD),1-get(ASPD),1, 1*(get(AS)))

drawText(QuartzRegular26, 66, 909, "---", 		get(ASPD),1-get(ASPD),1, 1*(1-get(AS)))


drawText(QuartzRegular18, 432, 584, "IN", 		get(ABARO),1-get(ABARO),1, 1*(1-get(BaroUnits)))

drawText(QuartzRegular18, 424, 584, "mB", 		get(ABARO),1-get(ABARO),1, 1*get(BaroUnits))

 
drawText(QuartzRegular16, 50, 580, "TAS", 		1,1,1, 1)
drawText(QuartzRegular16, 118, 580, "kt", 		1,1,1, 1)
 
drawText(QuartzRegular18, 56, 554, "GS", 		1,1,1, 1)
drawText(QuartzRegular18, 134, 554, "kt", 		1,1,1, 1)

drawText(QuartzRegular18, 165, 554, "OAT", 		1,1,1, 1)

drawText(QuartzRegular26, 239, 554, "ºc", 		1,1,1, 1)

drawText(QuartzRegular26, 367, 554, "º/", 		1,1,1, 1)
drawText(QuartzRegular18, 425, 554, "kt", 		1,1,1, 1)





drawText(QuartzRegular16, 406, 512, "FPM", 		1,1,1, 1*1-menu)
drawText(QuartzRegular22, 318, 528, "HDG", 		1,1,1, 1*(1-menu))

drawText(QuartzRegular22, 143, 528, "CRS", 		1,1,1, 1*mmin(1, (-get(MB)+3)))

drawText(QuartzRegular22, 181, 511, "º", 		get(ACRS),1-get(ACRS),get(ACRS), 1*(1-menu)*mmin(1, (-get(MB)+3)))

drawText(QuartzRegular22, 356, 511, "º", 		get(AHDG),1-get(AHDG),1, 1*1-menu)

drawText(QuartzRegular22, 50, 523, line[8], 		0,1,0, 1)



drawText(QuartzRegular22, 155, 172, line[10], 	0,1,1, 1*1-menu)
drawText(QuartzRegular22, 313, 172, line[11], 	0,1,1, 1*1-menu)


drawText(QuartzRegular22, 46, 504, line[12], 	0,1,0, 1)
drawText(QuartzRegular22, 47, 486, line[13], 	0,1,0, 1)
drawText(QuartzRegular22, 96, 486, line[14], 	0,1,0, 1)
drawText(QuartzRegular22, 47, 468, line[15], 	0,1,0, 1)


drawText(QuartzRegular18, 110, 193, line[16], 	0,1,1, 1*1-menu)
drawText(QuartzRegular16, 100, 210, line[17], 	0,1,1, 1*1-menu)


drawText(QuartzRegular18, 378, 193, line[18], 		0,1,1, 1*1-menu)
drawText(QuartzRegular16, 360, 210, line[19], 		0,1,1, 1*1-menu)


drawText(QuartzRegular18, 325, 633, "MIN", 		get(AMIN),1-get(AMIN),1, 1 * get(ATPS)*(1-menu)*get(Bt2) )

drawText(QuartzRegular22, 323, 614, line[22], 	get(AMIN),1-get(AMIN),1, 1 * get(ATPS)*(1-menu)*get(Bt2) )



--When Middle Button is at value 2, then CRS is green.  010 Otherwise it's teal. 011  When ACRS is at value 1, it's purple. 101


drawText(QuartzRegular26, 218, 165, line[9], 	0,1,0, 1*1-menu)

drawText(QuartzRegular24, 69, 168, line[20], 		get(LeftKnobBut),1-get(LeftKnobBut),1, 1*1-menu)

drawText(QuartzRegular24, 396, 168, line[21], 		get(RightKnobBut),1-get(RightKnobBut),1, 1*1-menu)

drawText(QuartzRegular22, 323, 614, line[22], 	get(AMIN),1-get(AMIN),1, 1 * get(ATPS)*(1-menu)*get(Bt2) )

drawText(QuartzRegular16, 55, 198, line[23], 		0,1,0, 1*1-menu)

drawText(QuartzRegular22, 155, 195, line[24], 		0,1,0, 1*1-menu)


drawText(QuartzRegular22, 355, 168, "SEL PAGE", 		get(MenuKnobBut),1-get(MenuKnobBut),get(MenuKnobBut), 1*menu)




drawAll(components3)


--drawText(digitalism, 33, 73, "This is a different font", W[1],W[2],W[3])

end






local coef = get(window_height) / 1024
if coef > 1 then coef = 1 end  -- set initial coefficient for float panel's size - make 'em smaller, if screen resolution less then 1024 by height.


--local popx2 = get(window_width) - 100
--local popy2 = get(window_height)- 100
--local sizx2 = get(window_width) - 100
--local sizy2 = get(window_height)- 100



local baro2 = get(BaroUnits)
local arcmode2 = get(ArcMode)

local scrolllast = 800




set(RAlt_DH, 0)
set(airspeedDial, 0)
set(altitude_dial, 0)

	if get(Pwr) == 0  then
		set(Power, 0)
	else
	set(Power, 1)
	end
		





------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------

Pwr_last = get(Pwr)
gps_id_last = get(gps_id)
dist_last = get(dist)

lon_lastX= get(pos_lon)
lat_lastY= get(pos_lat)
	
popx_last = get(popx)
popy_last = get(popy)

sizx_last = get(sizx)
sizy_last = get(sizy)

OBS1_last = get(OBS1)
OBS2_last = get(OBS2)
GPS_bearing_last = get(GPS_bearing)

MouseUpLast =  get(MouseUp)
MouseDnLast = get(MouseDn)


RightKnobLast = get(RightKnob)
RightKnobButLast = get(RightKnobBut)

--RightKnobButHold = get(RightKnobBut)

LeftKnobLast = get(LeftKnob)
LeftKnobButLast = get(LeftKnobBut)

Bt5Last = get(Bt5)
MenuLast = get(Menu)

LBLast = get(LB)
MBLast = get(MB)
RBLast = get(RB)

MBt1Last = get(MBt1)
MBt2Last = get(MBt2)
MBt3Last = get(MBt3)
MBt4Last = get(MBt4)
MBt5Last = get(MBt5)

PageLast = get(Page)
MenuKnobButLast = get(MenuKnobBut)


timeLast = get(Time)





set(X_old, get(X)+1)
set(Y_old, get(Y)+1)


--_________________________FUNCTION UPDATE_____________________________________


function update()


if Pwr_last ~= get(Pwr) and get(Pwr) == 1 then 
set(Power, 1)
elseif Pwr_last ~= get(Pwr) and get(Pwr) == 1 then 
set(Power, 0)
end


set(Brt, mmin(1, (get(InstBrt))* get(Power)))


mapzoom = get(MapZoom)

--conditional update

if popx_last - get(popx)  ~= 0 or popy_last - get(popy) ~=0 or sizx_last - get(sizx) ~= 0 or sizy_last - get(sizy) ~= 0 or MenuLast - get(Menu) ~= 0  then



--WRITE VALUES TO TEXT FILE TO BE LOADED UP AT NEXT ACF LOAD

local popx2 = mmax(0, mmin(1500, get(popx)))
local popy2 = mmax(-1000, mmin(1000, get(popy)))

local sizx2 = mmax(50, get(sizx))
local sizy2 = mmax(100, get(sizy))


local barounit = get(BaroUnits)
local arcmode = get(ArcMode)
local gps_id = get(gps_id)


	local filename = panelDir .. "/AspenConfig.txt"
	local file = io.open(filename, "w")

	file:write("#\n  DO NOT MODIFY THIS FILE!\n###########################\n")
	file:write("#popx" .. popx2 .. "\n" )
	file:write("#popy" .. popy2 .. "\n" )
	file:write("#sizx" .. sizx2 .. "\n" )
	file:write("#sizy" .. sizy2 .. "\n" )
	
	
	file:write("#Barounit" .. barounit .. "\n" )
	file:write("#ArcMode" .. arcmode .. "\n\n" )
--	file:write("#gps_id" .. gps_id .. "\n\n" )

	file:close()

end
--end of conditional update



		values["NAV1_bearing"] = sformat("%03d",get(NAV1_bearing))
		values["NAV2_bearing"] = sformat("%03d",get(NAV2_bearing))
		values["GPS_bearing"] = sformat("%03d",get(GPS_bearing))


		values["NAV1_dme_speed"] = sformat("%03.2f", get(NAV1_dme_speed))
		values["NAV2_dme_speed"] = sformat("%03.2f", get(NAV2_dme_speed))
		values["GPS_dme_speed"] = sformat("%03.2f", get(GPS_dme_speed))
		
		values["NAV1_dme_dist"] = sformat("%03.2f", get(NAV1_dme_dist))
		values["NAV2_dme_dist"] = sformat("%03.2f", get(NAV2_dme_dist))
		values["GPS_dme_dist"] = sformat("%03.2f", get(GPS_dme_dist))
	
		
		values["NAV1_dme_time"] = sformat("%02d:%02d", get(NAV1_dme_time)/120, (get(NAV1_dme_time)-(mfloor(get(NAV1_dme_time)/60)*60)))
		values["NAV2_dme_time"] = sformat("%02d:%02d", get(NAV2_dme_time)/120, (get(NAV2_dme_time)-(mfloor(get(NAV2_dme_time)/60)*60)))
		values["GPS_dme_time"] = sformat("%02d:%02d",  get(GPS_dme_time)/120, (get(GPS_dme_time)-(mfloor(get(GPS_dme_time)/60)*60)))


		values["NAVAID1"] = get(nav1_id)
		values["NAVAID2"] = get(nav2_id)
		
		values["ADF_ID1"] = get(adf1_id)
		values["ADF_ID2"] = get(adf2_id)		

		values["gps_id"] = get(gps_id)
		values["DME_ID"] = get(dme_id)	
		
		values["RAltMin"] = get(RAlt_Min)	

		values["ExtVoltage"] = sformat("%03.2f", get(bus_volts))	

		values["BatNum"] = sformat("%d", get(AspenBattery))	

		values["barounit"] = 0	

	
		if get(sim_speed) ~= 0 and get(bus_volts) == 0 then
		set(AspenBattery, mmax(0, get(AspenBattery)-0.0007))
		set(Battery, 1)
		set(External, 0)
		elseif get(sim_speed) ~= 0 and get(bus_volts) ~= 0 then
		set(AspenBattery, mmin(100, get(AspenBattery)+0.0004))
		set(Battery, 0)
		set(External, 1)
		end		
		
		if get(AspenBattery) == 0 and get(bus_volts) == 0 then
		set(Power, 0)
		end
		
		if get(airspeedDial) == 52 then
		set(AS, 0)
		else
		set(AS, 1)
		end
		

		if get(RightKnobBut) == 0 then
			set(AHDG, 0)
			set(AALT, 0)
			set(ABARO, 0)
			set(AMIN, 0)
		elseif get(RightKnobBut) == 1  then
			set(AHDG, 1)
			if  get(delay) == 1  then 
			set(HDG_Bug_Pilot, get(HDG))  

			
			
			elseif RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(HDG_Bug_Pilot)*10)

			else
				if get(HDG_Bug_Pilot) >= -360 and get(HDG_Bug_Pilot) < 0 then
				set(HDG_Bug_Pilot, (get(RightKnob)*0.1)+360)
				elseif get(HDG_Bug_Pilot) >= 0 and get(HDG_Bug_Pilot) < 360 then
				set(HDG_Bug_Pilot, (get(RightKnob)*0.1)+0)
				elseif get(HDG_Bug_Pilot) >= 360 and get(HDG_Bug_Pilot) < 720 then
				set(HDG_Bug_Pilot, (get(RightKnob)*0.1)-360)
				elseif get(HDG_Bug_Pilot) >= -720 and get(HDG_Bug_Pilot) < -360 then
				set(HDG_Bug_Pilot, (get(RightKnob)*0.1)+720)
				elseif get(HDG_Bug_Pilot) < -720 or get(HDG_Bug_Pilot) >= 720 then
				set(HDG_Bug_Pilot, 0)


				end
			end
		set(AALT, 0)
		set(ABARO, 0)
		set(AMIN, 0)
		elseif get(RightKnobBut) == 2 then
		set(AHDG, 0)
		set(AALT, 1)
			if  get(delay) == 1  then 
			
			set(altitude_dial, get(altitude_ft_pilot))
			
			elseif RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, mmax(0, get(altitude_dial)))

			else
			set(altitude_dial, mmax(0, get(RightKnob)))


			end
		set(ABARO, 0)
		set(AMIN, 0)
		elseif get(RightKnobBut) == 3 then
		set(AHDG, 0)
		set(AALT, 0)
		set(ABARO, 1)			
			if get(delay) == 1   then 
			set(baro, 29.91)
			
			elseif RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, mmax(0, get(baro)*1000))

			else
			set(baro, mmax(0, get(RightKnob)*0.001))

			end
		set(AMIN, 0)
		elseif get(RightKnobBut) == 4 then

		set(AHDG, 0)
		set(AALT, 0)
		set(ABARO, 0)
		set(AMIN, 1)
			if   get(delay) == 1   then 
			set(RAlt_Min, 100)
			
			elseif RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, mmax(0, get(RAlt_Min)))

			else
			set(RAlt_Min, mmax(0, get(RightKnob)))

			end
	end



	
	

	if LeftKnobButLast - get(LeftKnobBut) ~= 0 then set(RightKnobBut, 0) end
	if RightKnobButLast -  get(RightKnobBut) ~= 0 then set(LeftKnobBut, 0) end


	if get(Menu) == 0 then
		if MenuLast ~= get(Menu) then set(LeftKnob, get(Course)*10) end
		--if LeftKnobButLast < get(LeftKnobBut) then set(Course, get(HDG)) end 
		
		if get(LeftKnobBut) == 0 then
			set(ASPD, 0)
			set(ACRS, 0)
			--set(delay, 0)
		
	
			elseif get(LeftKnobBut) == 1 and get(MB) < 2 then
			set(ASPD, 0)
			set(ACRS, 1)
				if  get(delay) == 1  then 
				set(Course, get(HDG))
				end
				if LeftKnobLast - get(LeftKnob) == 0 then
				set(LeftKnob, get(Course)*10)
				else
				set(Course, get(LeftKnob)*0.1)
				end
			elseif get(LeftKnobBut) == 1 and get(MB) >= 2 then
				set(LeftKnobBut, 2)
			elseif get(LeftKnobBut) == 2 then
			set(ASPD, 1)
			set(ACRS, 0)
				if  get(delay) == 1  then 
				set(airspeedDial, get(airspeed_kts_pilot))
			
				elseif LeftKnobLast - get(LeftKnob) == 0 then
				set(LeftKnob, get(airspeedDial)*10)
				else
				set(airspeedDial, get(LeftKnob)*0.1)
				end	
		end
	elseif get(Menu) == 1 then
			if MenuLast ~= get(Menu) then set(LeftKnob, mmin(1000, mmax(0, get(InstBrt)*1000))) end
	
			if  get(LeftKnobBut) == 0 then
					if LeftKnobButLast ~= get(LeftKnobBut) then set(LeftKnob, mmin(1000, mmax(0, get(InstBrt)*1000))) end
					
					if LeftKnobLast - get(LeftKnob) == 0 then
					set(LeftKnob, mmin(1000, mmax(0, get(InstBrt)*1000)))
					else
					set(InstBrt, get(LeftKnob)*0.001)
					end
			elseif LeftKnobButLast ~= get(LeftKnobBut) and get(LeftKnobBut) == 1 then
					set(LeftKnob, get(Course))
			elseif LeftKnobButLast ~= get(LeftKnobBut) and get(LeftKnobBut) == 2 then		
					set(LeftKnob, mmin(1000, mmax(0, get(InstBrt)*1000)))
			end		
	end
	




if get(Course) >= -720 and get(Course) < -360 then
	set(Course, get(Course)+720)
	elseif get(Course) >= -360 and get(Course) < 0 then
	set(Course, get(Course)+360)
	elseif get(Course) >= 0 and get(Course) < 360 then
	set(Course, get(Course))
	elseif get(Course) >= 360 and get(Course) < 720 then
	set(Course, get(Course)-360)
end



if get(MB) == 0 then
	set(HSI_source_select, 0)
	if MBLast - get(MB) ~= 0 or OBS1_last ~= get(OBS1) then
	set(Course, get(OBS1))
	else
	set(OBS1, get(Course))
	end
elseif get(MB) == 1 then
	set(HSI_source_select, 1)
	if MBLast - get(MB) ~= 0 or OBS2_last ~= get(OBS2)  then
	set(Course, get(OBS2))
	else
	set(OBS2, get(Course))
	end
elseif get(MB) == 2 then
	set(HSI_source_select, 2)
	if MBLast - get(MB) ~= 0 or GPS_bearing_last ~= get(GPS_bearing)  then
	set(Course, get(GPS_bearing))
	else
	set(GPS_bearing, get(Course))
	end
end


if MBt1Last - get(MBt1) < 0  then
set(MenuKnobBut, 0)
set(MBt2, 0)
set(MBt3, 0)
set(MBt4, 0)
set(MBt5, 0)
elseif MBt2Last - get(MBt2) < 0  then
set(MenuKnobBut, 0)
set(MBt1, 0)
set(MBt3, 0)
set(MBt4, 0)
set(MBt5, 0)
elseif MBt3Last - get(MBt3) < 0  then
set(MenuKnobBut, 0)
set(MBt1, 0)
set(MBt2, 0)
set(MBt4, 0)
set(MBt5, 0)
elseif MBt4Last - get(MBt4) < 0  then
set(MenuKnobBut, 0)
set(MBt1, 0)
set(MBt2, 0)
set(MBt3, 0)
set(MBt5, 0)
elseif MBt5Last - get(MBt5) < 0  then
set(MenuKnobBut, 0)
set(MBt1, 0)
set(MBt2, 0)
set(MBt3, 0)
set(MBt4, 0)
elseif get(MenuKnobBut) == 1 then
set(MBt1, 0)
set(MBt2, 0)
set(MBt3, 0)
set(MBt4, 0)
set(MBt5, 0)
end




if get(Menu) == 0 then
set(ATPS, get(Bt1))
set(AARC, get(Bt3))
set(AMAP, get(Bt4))
set(AGPSS, get(Bt5))
elseif get(Menu) == 1 then

			if RightKnobLast - get(RightKnob)  == 0 and get(MenuKnobBut) == 1 then
			set(Page, (get(RightKnob))/10)						
			elseif RightKnobLast - get(RightKnob)  < 0 and get(MenuKnobBut) == 1  then
			set(Page, (get(RightKnob)+1)/10)
			elseif RightKnobLast - get(RightKnob)  > 0 and get(MenuKnobBut) == 1  then
			set(Page, (get(RightKnob)-1)/10)
			end
			if get(RightKnob) == -10 and get(MBt1) == 0 and get(MBt2) == 0  and get(MBt3) == 0 and get(MBt4) == 0 and get(MBt5) == 0   then
			set(RightKnob, 60)
			elseif get(RightKnob) == 70 and get(MBt1) == 0 and get(MBt2) == 0  and get(MBt3) == 0 and get(MBt4) == 0 and get(MBt5) == 0   then
			set(RightKnob, 0)
			end
end








if MenuKnobButLast - get(MenuKnobBut) ~= 0 then
set(RightKnob, 0)
set(LeftKnob, 1000)
end

if MenuLast - get(Menu) ~= 0 then
set(RightKnob, 0)
set(MenuKnobBut, 1)

set(RightKnobBut, 0)
set(LeftKnobBut, 0)

set(MBt1, 0)
set(MBt2, 0)
set(MBt3, 0)
set(MBt4, 0)
set(MBt5, 0)

end


if PageLast - get(Page) ~= 0 then
set(MBt1, 0)
set(MBt2, 0)
set(MBt3, 0)
set(MBt4, 0)
set(MBt5, 0)
set(MenuKnobBut, 1)

end



	if RightKnobLast - get(RightKnob) ~= 0  
	or LeftKnobLast - get(LeftKnob) ~= 0  
	or RightKnobButLast - get(RightKnobBut) ~= 0  	
	or LeftKnobButLast - get(LeftKnobBut) ~= 0  
	or MBt1Last - get(MBt1) ~= 0
	or MBt2Last - get(MBt2) ~= 0
	or MBt3Last - get(MBt3) ~= 0
	or MBt4Last - get(MBt4) ~= 0
	or MBt5Last - get(MBt5) ~= 0
	or MouseDnLast - get(MouseDn) ~= 0
	or MouseUpLast - get(MouseUp) ~= 0
	then timeLast = get(Time)  set(sec, 0)  --set(delay, 0) 
	end


if get(Menu) == 1 and   get(Time) - timeLast > 10 then set(Menu, 0) end

if get(Time) - timeLast > 10 then set(RightKnobBut, 0)  set(LeftKnobBut, 0)  end
	

set(sec, get(Time) - timeLast)


if get(MouseDn) == 1 and get(MouseUp) == 0 then set(delay, mmin(1, get(sec)*0.5))  else set(delay, 0) end	



	
if get(Menu) == 1 then 
	if get(Page) == 0  then
		if get(MBt1) == 1 then
			if 		RightKnobLast - get(RightKnob)  > 0 then			set(BaroUnits, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then			set(BaroUnits, 1)		end
		elseif get(MBt2) == 1 then
			if		RightKnobLast - get(RightKnob)  > 0 then			set(VSpeeds, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then			set(VSpeeds, 1)			end
		elseif get(MBt3) == 1 then
			if 		RightKnobLast - get(RightKnob)  > 0 then			set(AutoCRS, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then			set(AutoCRS, 1)			end
		elseif get(MBt4) == 1 then
			if 		RightKnobLast - get(RightKnob)  > 0 then			set(ArcMode, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then			set(ArcMode, 1)			end
		elseif get(MBt5) == 1 then
			if 		RightKnobLast - get(RightKnob)  > 0 then			set(AHRS, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then			set(AHRS, 1)			end	
		end	
	elseif get(Page) == 1 then
		if MBt1Last ~= get(MBt1) then set(RightKnob, get(FltPln)*10) end
		if MBt2Last ~= get(MBt2) then set(RightKnob, get(Arpt)*10) end		
		if MBt3Last ~= get(MBt3) then set(RightKnob, get(NDB)*10) end		
		if MBt4Last ~= get(MBt4) then set(RightKnob, get(VOR)*10) end		
		if MBt5Last ~= get(MBt5) then set(RightKnob, get(INT)*10) end		
		
			if MBt1Last == get(MBt1) and get(MBt1) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(FltPln) == 0 then			set(FltPln, 1)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(FltPln) == 1  then			set(FltPln, 2)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(FltPln) == 2  then			set(FltPln, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(FltPln) == 2  then			set(FltPln, 1)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(FltPln) == 1  then			set(FltPln, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(FltPln) == 0  then			set(FltPln, 2)
				end	
			elseif MBt2Last == get(MBt2) and get(MBt2) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(Arpt) == 0 then				set(Arpt, 1)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(Arpt) == 1  then			set(Arpt, 2)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(Arpt) == 2  then			set(Arpt, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(Arpt) == 2  then			set(Arpt, 1)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(Arpt) == 1  then			set(Arpt, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(Arpt) == 0  then			set(Arpt, 2)
				end	
			elseif MBt3Last == get(MBt3) and get(MBt3) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(NDB) == 0 then				set(NDB, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(NDB) == 1  then				set(NDB, 2) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(NDB) == 2  then				set(NDB, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(NDB) == 2  then				set(NDB, 1) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(NDB) == 1  then				set(NDB, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(NDB) == 0  then				set(NDB, 2) 
				end	
			elseif MBt4Last == get(MBt4) and get(MBt4) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(VOR) == 0 then				set(VOR, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(VOR) == 1  then				set(VOR, 2) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(VOR) == 2  then				set(VOR, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(VOR) == 2  then				set(VOR, 1) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(VOR) == 1  then				set(VOR, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(VOR) == 0  then				set(VOR, 2) 
				end	 
			elseif MBt5Last == get(MBt5) and get(MBt5) == 1 then 
				if 		RightKnobLast - get(RightKnob)  < 0 and get(INT) == 0 then				set(INT, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(INT) == 1  then				set(INT, 2) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(INT) == 2  then				set(INT, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(INT) == 2  then				set(INT, 1) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(INT) == 1  then				set(INT, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(INT) == 0  then				set(INT, 2) 
				end	
			end			
			
	elseif get(Page) == 2 then
		if MBt1Last ~= get(MBt1) then set(RightKnob, get(FltPlnArc)*10) end		--EFIS_apt
		if MBt2Last ~= get(MBt2) then set(RightKnob, get(ArptArc)*10) end		--EFIS_fix
		if MBt3Last ~= get(MBt3) then set(RightKnob, get(NDBArc)*10) end		--EFIS_vor
		if MBt4Last ~= get(MBt4) then set(RightKnob, get(VORArc)*10) end		--EFIS_ndb
		if MBt5Last ~= get(MBt5) then set(RightKnob, get(INTArc)*10) end		
		
			if MBt1Last == get(MBt1) and get(MBt1) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(FltPlnArc) == 0 then		set(FltPlnArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(FltPlnArc) == 1  then		set(FltPlnArc, 2)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(FltPlnArc) == 2  then		set(FltPlnArc, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(FltPlnArc) == 2  then		set(FltPlnArc, 1)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(FltPlnArc) == 1  then		set(FltPlnArc, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(FltPlnArc) == 0  then		set(FltPlnArc, 2)
				end	
			elseif MBt2Last == get(MBt2) and get(MBt2) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(ArptArc) == 0 then			set(ArptArc, 1)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(ArptArc) == 1  then			set(ArptArc, 2)
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(ArptArc) == 2  then			set(ArptArc, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(ArptArc) == 2  then			set(ArptArc, 1)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(ArptArc) == 1  then			set(ArptArc, 0)
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(ArptArc) == 0  then			set(ArptArc, 2)
				end	
			elseif MBt3Last == get(MBt3) and get(MBt3) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(NDBArc) == 0 then			set(NDBArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(NDBArc) == 1  then			set(NDBArc, 2) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(NDBArc) == 2  then			set(NDBArc, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(NDBArc) == 2  then			set(NDBArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(NDBArc) == 1  then			set(NDBArc, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(NDBArc) == 0  then			set(NDBArc, 2) 
				end	
			elseif MBt4Last == get(MBt4) and get(MBt4) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(VORArc) == 0 then			set(VORArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(VORArc) == 1  then			set(VORArc, 2) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(VORArc) == 2  then			set(VORArc, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(VORArc) == 2  then			set(VORArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(VORArc) == 1  then			set(VORArc, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(VORArc) == 0  then			set(VORArc, 2) 
				end	
			elseif MBt5Last == get(MBt5) and get(MBt5) == 1 then
				if 		RightKnobLast - get(RightKnob)  < 0 and get(INTArc) == 0 then			set(INTArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(INTArc) == 1  then			set(INTArc, 2) 
				elseif  RightKnobLast - get(RightKnob)  < 0 and get(INTArc) == 2  then			set(INTArc, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(INTArc) == 2  then			set(INTArc, 1) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(INTArc) == 1  then			set(INTArc, 0) 
				elseif  RightKnobLast - get(RightKnob)  > 0 and get(INTArc) == 0  then			set(INTArc, 2) 
				end	
			end			
		
		
	elseif get(Page) == 3 then
		if get(MBt1) == 1 then
		values["VaNum"] = mmodf(get(Va))
			if MBt1Last ~= get(MBt1) then  set(RightKnob, get(Va)*10) end			
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Va)*10)
			else
			set(Va,  math.max(0, get(RightKnob)*0.1))
			end
		elseif get(MBt2) == 1 then
		values["VbgNum"] = mmodf(get(Vbg))
			if MBt2Last ~= get(MBt2) then  set(RightKnob, get(Vbg)*10) end			
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vbg)*10)
			else
			set(Vbg, math.max(0, get(RightKnob)*0.1))
			end
		elseif get(MBt3) == 1 then
		values["VrefNum"] = mmodf(get(Vref))		
			if MBt3Last ~= get(MBt3) then  set(RightKnob, get(Vref)*10) end			
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vref)*10)
			else
			set(Vref,  math.max(0, get(RightKnob)*0.1))
			end
		elseif get(MBt4) == 1 then
		values["VrNum"] = mmodf(get(Vr))
			if MBt4Last ~= get(MBt4) then  set(RightKnob, get(Vr)*10) end	
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vr)*10)
			else
			set(Vr,  math.max(0, get(RightKnob)*0.1))
			end
		elseif get(MBt5) == 1 then
		values["VxNum"] = mmodf(get(Vx))		
			if MBt5Last ~= get(MBt5) then  set(RightKnob, get(Vx)*10) end
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vx)*10)
			else
			set(Vx,  math.max(0, get(RightKnob)*0.1))
			end
		end							
	elseif get(Page) == 4 then
		if get(MBt1) == 1 then
		values["VyNum"] = mmodf(get(Vy))
			if MBt1Last ~= get(MBt1) then  set(RightKnob, get(Vy)*10) end
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vy)*10)
			else
			set(Vy,  math.max(0, get(RightKnob)*0.1))
			end
		elseif get(MBt2) == 1 then
		values["VloNum"] = mmodf(get(Vlo))
			if MBt2Last ~= get(MBt2) then  set(RightKnob, get(Vlo)*10) end
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vlo)*10)
			else
			set(Vlo,  math.max(0, get(RightKnob)*0.1))
			end
		elseif get(MBt3) == 1 then
		values["VleNum"] = mmodf(get(Vle))		
			if MBt3Last ~= get(MBt3) then  set(RightKnob, get(Vle)*10) end
			if RightKnobLast - get(RightKnob) == 0 then
			set(RightKnob, get(Vle)*10)
			else
			set(Vle,  math.max(0, get(RightKnob)*0.1))
			end	
		end							
	elseif get(Page) == 5 then
		if get(MBt1) == 1 then
			if RightKnobLast - get(RightKnob)  > 0 then
			set(Battery, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then
			set(Battery, 1)
			end	
		elseif get(MBt2) == 1 then
			if RightKnobLast - get(RightKnob)  > 0 then
			set(External, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then
			set(External, 1)
			end
		elseif get(MBt3) == 1 then
			if RightKnobLast - get(RightKnob)  > 0 then
			set(Shutdown, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then
			set(Shutdown, 1)
			set(Power, 0)
			end
		elseif get(MBt4) == 1 then
			if RightKnobLast - get(RightKnob)  > 0 then
			set(ExtPower, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then
			set(ExtPower, 1)
			end
		elseif get(MBt5) == 1 then
			if RightKnobLast - get(RightKnob)  > 0 then
			set(BatPercent, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then
			set(BatPercent, 1)
			end	
		end											
	elseif get(Page) == 5 then
		if get(MBt1) == 3 then
			if RightKnobLast - get(RightKnob)  > 0 then
			set(Features, 0)
			elseif  RightKnobLast - get(RightKnob)  < 0 then
			set(Features, 1)
			end	
	
		end											
		
	end
end




if get(AMAP) == 0 or get(Menu) == 1 then
	set(EFIS_apt, 0)
	set(EFIS_ndb, 0)
	set(EFIS_vor, 0)
	set(EFIS_fix, 0)	
elseif get(AARC) == 0 and get(AMAP) == 1 then 
		if get(Arpt) == 0 then	set(EFIS_apt, 0) elseif get(Arpt) == 1 then set(EFIS_apt, 1) elseif get(Arpt) == 2 then set(EFIS_apt, 1) end
		if get(NDB) == 0 then	set(EFIS_ndb, 0) elseif get(NDB) == 1 then set(EFIS_ndb, 1) elseif get(NDB) == 2 then set(EFIS_ndb, 1) end
		if get(VOR) == 0 then	set(EFIS_vor, 0) elseif get(VOR) == 1 then set(EFIS_vor, 1) elseif get(VOR) == 2 then set(EFIS_vor, 1) end
		if get(INT) == 0 then	set(EFIS_fix, 0) elseif get(INT) == 1 then set(EFIS_fix, 1) elseif get(INT) == 2 then set(EFIS_fix, 1) end
elseif get(AARC) == 0 and get(AMAP) == 2 then 
		if get(Arpt) == 0 then	set(EFIS_apt, 0) elseif get(Arpt) == 1 then set(EFIS_apt, 1) elseif get(Arpt) == 2 then set(EFIS_apt, 1) end
		if get(NDB) == 0 then	set(EFIS_ndb, 0) elseif get(NDB) == 1 then set(EFIS_ndb, 1) elseif get(NDB) == 2 then set(EFIS_ndb, 1) end
		if get(VOR) == 0 then	set(EFIS_vor, 0) elseif get(VOR) == 1 then set(EFIS_vor, 1) elseif get(VOR) == 2 then set(EFIS_vor, 1) end
		if get(INT) == 0 then	set(EFIS_fix, 0) elseif get(INT) == 1 then set(EFIS_fix, 0) elseif get(INT) == 2 then set(EFIS_fix, 1) end
elseif get(AARC) == 0 and get(AMAP) == 3 then 
		if get(Arpt) == 0 then	set(EFIS_apt, 0) elseif get(Arpt) == 1 then set(EFIS_apt, 1) elseif get(Arpt) == 2 then set(EFIS_apt, 1) end
		if get(NDB) == 0 then	set(EFIS_ndb, 0) elseif get(NDB) == 1 then set(EFIS_ndb, 1) elseif get(NDB) == 2 then set(EFIS_ndb, 1) end
		if get(VOR) == 0 then	set(EFIS_vor, 0) elseif get(VOR) == 1 then set(EFIS_vor, 0) elseif get(VOR) == 2 then set(EFIS_vor, 1) end
		if get(INT) == 0 then	set(EFIS_fix, 0) elseif get(INT) == 1 then set(EFIS_fix, 0) elseif get(INT) == 2 then set(EFIS_fix, 1) end
elseif get(AARC) == 0 and get(AMAP) == 4 then 
		if get(Arpt) == 0 then	set(EFIS_apt, 0) elseif get(Arpt) == 1 then set(EFIS_apt, 1) elseif get(Arpt) == 2 then set(EFIS_apt, 1) end
		if get(NDB) == 0 then	set(EFIS_ndb, 0) elseif get(NDB) == 1 then set(EFIS_ndb, 0) elseif get(NDB) == 2 then set(EFIS_ndb, 1) end
		if get(VOR) == 0 then	set(EFIS_vor, 0) elseif get(VOR) == 1 then set(EFIS_vor, 0) elseif get(VOR) == 2 then set(EFIS_vor, 1) end
		if get(INT) == 0 then	set(EFIS_fix, 0) elseif get(INT) == 1 then set(EFIS_fix, 0) elseif get(INT) == 2 then set(EFIS_fix, 1) end
					
elseif get(AARC) == 1 and get(AMAP) == 1 then 
		if get(ArptArc) == 0 then	set(EFIS_apt, 0) elseif get(ArptArc) == 1 then set(EFIS_apt, 1) elseif get(ArptArc) == 2 then set(EFIS_apt, 1) end
		if get(NDBArc) == 0 then	set(EFIS_ndb, 0) elseif get(NDBArc) == 1 then set(EFIS_ndb, 1) elseif get(NDBArc) == 2 then set(EFIS_ndb, 1) end
		if get(VORArc) == 0 then	set(EFIS_vor, 0) elseif get(VORArc) == 1 then set(EFIS_vor, 1) elseif get(VORArc) == 2 then set(EFIS_vor, 1) end
		if get(INTArc) == 0 then	set(EFIS_fix, 0) elseif get(INTArc) == 1 then set(EFIS_fix, 1) elseif get(INTArc) == 2 then set(EFIS_fix, 1) end
elseif get(AARC) == 1 and get(AMAP) == 2 then 
		if get(ArptArc) == 0 then	set(EFIS_apt, 0) elseif get(ArptArc) == 1 then set(EFIS_apt, 1) elseif get(ArptArc) == 2 then set(EFIS_apt, 1) end
		if get(NDBArc) == 0 then	set(EFIS_ndb, 0) elseif get(NDBArc) == 1 then set(EFIS_ndb, 1) elseif get(NDBArc) == 2 then set(EFIS_ndb, 1) end
		if get(VORArc) == 0 then	set(EFIS_vor, 0) elseif get(VORArc) == 1 then set(EFIS_vor, 1) elseif get(VORArc) == 2 then set(EFIS_vor, 1) end
		if get(INTArc) == 0 then	set(EFIS_fix, 0) elseif get(INTArc) == 1 then set(EFIS_fix, 0) elseif get(INTArc) == 2 then set(EFIS_fix, 1) end
elseif get(AARC) == 1 and get(AMAP) == 3 then 
		if get(ArptArc) == 0 then	set(EFIS_apt, 0) elseif get(ArptArc) == 1 then set(EFIS_apt, 1) elseif get(ArptArc) == 2 then set(EFIS_apt, 1) end
		if get(NDBArc) == 0 then	set(EFIS_ndb, 0) elseif get(NDBArc) == 1 then set(EFIS_ndb, 1) elseif get(NDBArc) == 2 then set(EFIS_ndb, 1) end
		if get(VORArc) == 0 then	set(EFIS_vor, 0) elseif get(VORArc) == 1 then set(EFIS_vor, 0) elseif get(VORArc) == 2 then set(EFIS_vor, 1) end
		if get(INTArc) == 0 then	set(EFIS_fix, 0) elseif get(INTArc) == 1 then set(EFIS_fix, 0) elseif get(INTArc) == 2 then set(EFIS_fix, 1) end
elseif get(AARC) == 1 and get(AMAP) == 4 then 
		if get(ArptArc) == 0 then	set(EFIS_apt, 0) elseif get(ArptArc) == 1 then set(EFIS_apt, 1) elseif get(ArptArc) == 2 then set(EFIS_apt, 1) end
		if get(NDBArc) == 0 then	set(EFIS_ndb, 0) elseif get(NDBArc) == 1 then set(EFIS_ndb, 0) elseif get(NDBArc) == 2 then set(EFIS_ndb, 1) end
		if get(VORArc) == 0 then	set(EFIS_vor, 0) elseif get(VORArc) == 1 then set(EFIS_vor, 0) elseif get(VORArc) == 2 then set(EFIS_vor, 1) end
		if get(INTArc) == 0 then	set(EFIS_fix, 0) elseif get(INTArc) == 1 then set(EFIS_fix, 0) elseif get(INTArc) == 2 then set(EFIS_fix, 1) end
				
		
end	


	
	



if get(AARC) == 0 then
set(EFIS_Map_Mode, 5)
elseif get(AARC) == 1 then
set(EFIS_Map_Mode, 2)
end


if get(AMAP) == 0 then
set(EFIS_is_HSI, 1)
elseif get(AMAP) >= 1 then
set(EFIS_is_HSI, 0)
end





	AspenP.position["value"][2] = AspenP.position["value"][2] 
	--Aspen.size


	scrolllast = get(scrollpos)*1.25
	set(popx, AspenP.position["value"][1])
	set(popy, AspenP.position["value"][2])
	set(sizx, AspenP.position["value"][3])
	set(sizy, AspenP.position["value"][4])
	







--	set(BaroUnits, Aspen.position["value"][1])

if gps_id_last ~= get(gps_id)  then
	dist_last = get(dist)	
	lon_lastX= get(pos_lon)
	lat_lastY= get(pos_lat)
	
end	

Pwr_last = get(Pwr)

gps_id_last = get(gps_id)
	
popx_last = get(popx)
popy_last = get(popy)

sizx_last = get(sizx)
sizy_last = get(sizy)	
	
	
MouseUpLast =  get(MouseUp)
MouseDnLast = get(MouseDn)
	
	
	
RightKnobLast = get(RightKnob)
RightKnobButLast = get(RightKnobBut)

RightKnobButHold = (get(RightKnobBut)+0.001)

	
LeftKnobLast = get(LeftKnob)
LeftKnobButLast = get(LeftKnobBut)

OBS1_last = get(OBS1)
OBS2_last = get(OBS2)
GPS_bearing_last = get(GPS_bearing)

Bt5Last = get(Bt5)
MenuLast = get(Menu)

LBLast = get(LB)
MBLast = get(MB)
RBLast = get(RB)

MBt1Last = get(MBt1)
MBt2Last = get(MBt2)
MBt3Last = get(MBt3)
MBt4Last = get(MBt4)
MBt5Last = get(MBt5)

PageLast = get(Page)
MenuKnobButLast = get(MenuKnobBut)


end   





components = {
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



	--Pitch
		rotated_tape {
				position = { 249 - 300/2, 742 - 300/2, 300, 300 },
			image = get(pitchimg),
		
			scrollY = function()
				if get(Pwr) == 1 and get(Pitch) - get(theta) < 2  and get(Pitch) - get(theta) > -2 then
				return (1.5+(-get(Pitch))*0.0219);
				else
				return (1.5+(-get(theta))*0.0219);
				end;
			end,
			angle = function()
				if get(Pwr) == 1 and get(Roll) - get(phi) < 2  and get(Roll) - get(phi) > -2 then
				return (-get(Roll));
				else			
				return (-get(phi));
				end;
			end,
			

		
		};
	
	--Over_Pitch
		rotated_tape {
				position = { 249 - 300/2, 742 - 300/2, 300, 300 },
			image = get(over_pitch),
		
					scrollY = function()
				if get(Pwr) == 1 and get(Pitch) - get(theta) < 2  and get(Pitch) - get(theta) > -2 then
				return (1.5+(-get(Pitch))*0.0219);
				else
				return (1.5+(-get(theta))*0.0219);
				end;
			end,
			angle = function()
				if get(Pwr) == 1 and get(Roll) - get(phi) < 2  and get(Roll) - get(phi) > -2 then
				return (-get(Roll));
				else			
				return (-get(phi));
				end;
			end,
			
		
		};

	--Yellow Plane		
		texture {
			position = { 134, 715, 230, 32  };
			image = get(plane),
	
			};
	
	--Flight Director
		rotated_tape {
			position = { 249 - 233/2, 739 - 233/2, 233, 233  };
			image = get(flight_director),
			visible = function()
				if get(has_SC_FD) == 1  then return true
				else return false
				end
			end,
			scrollY = function()
			return (-0.485 - (get(Pitch)*0.03) + (get(FD_pitch)*0.03));  --75
			end,        
			angle = function() 
				 return (get(FD_roll) - get(Roll));
			end,
			
			};

	--minimums			
		texture {
			position = { 249 -156/2, 670 - 22/2, 156, 22  };
			image = get(minimums),
			visible = function()
				if get(RAlt_DH) == 1 then
				return true
				else
				return false
				end
			end,
			};
			
	--Blue rectangle along the Right side of the display... way in the background   
  		rectangle {
		position = { 438, 170, 15, 400  };
	 	color = {0.0, 0.0, 0.5, 1.00},
	 		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
        end,		
	};
	  
    

    
    
    
--Roll Pointer and Side Slip Indicator    
    
    	needle {
        position = { 249 - 322/2, 742 -322/2, 322, 322 },
        image = get(rollimg),
        angle = function() 
				if get(Pwr) == 1 and get(Roll) - get(phi) < 2  and get(Roll) - get(phi) > -2 then
				return (-get(Roll));
				else
				return (-get(phi));
				end;
			end,
	
    },  

		texture { 
        position = { 249 - 22/2, 875 -20/2, 22, 20 };
        image = get(roll_Pointer);
	        
    };

    	tape { 
        position = { 249 - 88/2, 856 -20/2, 88, 20 };
        image = get(slip);
        scrollX = function()
        return (-0.375 + get(SideSlip)*0.06);
        end;
	        
    };
  
  
  
   
 
    texture { 
        position = { 40, 597, 73, 320 };
        image = get(alt_drum_digits1_mask);
        
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,		
    };
    



--Green ASI Zone Rectangle
   	rectangle2 {
 	origX = function()	 return (100); end,
 	origY = function()	 return (741 - mmin(170, (get(airspeed_kts_pilot)-Vs)*4.0)+0.492); end,
 	sizeX = function()	 return (12); end,
 	sizeY = function()	 return ( mmin(170,  ((get(airspeed_kts_pilot)- Vno - 0.2)*-4.0)) + mmin(170, (get(airspeed_kts_pilot)- Vs )*4.0)+0.492); end,
 	color = {0.0, 1.0, 0.0, 1.0},
 	brt2 = function()	return (get(ATPS)); end,

 };
    

--White ASI Zone Rectangle
   	rectangle2 {
 	origX = function()	 return (100); end,
 	origY = function()	 return (741 - mmin(170, (get(airspeed_kts_pilot)-Vs )*4.0)+0.492); end,
 	sizeX = function()	 return (6); end,
 	sizeY = function()	 return ( mmin(170,  ((get(airspeed_kts_pilot)- Vfe -0.2)*-4.0)) + mmin(170, (get(airspeed_kts_pilot)- Vs )*4.0)+0.492); end,
 	color = {1.0, 1.0, 1.0, 1.0},
 	brt2 = function()	return (get(ATPS)); end,

 };
  
  
 
--Intermediate White ASI Zone Rectangle
   	rectangle2 {
 	origX = function()	 return (100); end,
 	origY = function()	 return (741 - mmin(170, (get(airspeed_kts_pilot)-Vso)*4.0)+0.492); end,
 	sizeX = function()	 return (12); end,
 	sizeY = function()	 return ( mmin(170,  ((get(airspeed_kts_pilot)- Vs -0.2)*-4.0)) + mmin(170, (get(airspeed_kts_pilot) - Vso)*4.0)+0.492); end,
 	color = {1.0, 1.0, 1.0, 1.0},
 	brt2 = function()	return (get(ATPS)); end,

 };
   
  --Lo-Spd Red ASI Zone Rectangle
   	rectangle2 {
 	origX = function()	 return (100); end,
 	origY = function()	 return (741 - mmin(170, (get(airspeed_kts_pilot)-Vrt)*4.0)+0.492); end,
 	sizeX = function()	 return (12); end,
 	sizeY = function()	 return ( mmin(170,  ((get(airspeed_kts_pilot)- Vso - 0.2)*-4.0)) + mmin(170, (get(airspeed_kts_pilot)- Vrt)*4.0)+0.492); end,
 	color = {1.0, 0.0, 0.0, 1.0},
 	brt2 = function()	return (get(ATPS)); end,

 };
   
  
  
   --Hi-Spd Yellow ASI Zone Rectangle
   	rectangle2 {
 	origX = function()	 return (100); end,
 	origY = function()	 return (741 - mmin(170, (get(airspeed_kts_pilot)-Vno)*4.0)+0.492); end,
 	sizeX = function()	 return (12); end,
 	sizeY = function()	 return ( mmin(170,  ((get(airspeed_kts_pilot)- Vne -0.2)*-4.0)) + mmin(170, (get(airspeed_kts_pilot)-Vno)*4.0)+0.492); end,
 	color = {1.0, 1.0, 0.0, 1.0},
 	brt2 = function()	return (get(ATPS)); end,

 };
      
  
  
   --Hi-Spd Red ASI Zone Rectangle
   	rectangle2 {
 	origX = function()	 return (100); end,
 	origY = function()	 return (741 - mmin(170, (get(airspeed_kts_pilot)-Vne)*4.0)+0.492); end,
 	sizeX = function()	 return (12); end,
 	sizeY = function()	 return ( mmin(170,  ((get(airspeed_kts_pilot)-556)*-4.0)) + mmin(170, (get(airspeed_kts_pilot)-Vne)*4.0)+0.492); end,
 	color = {1.0, 0.0, 0.0, 1.0},
 	brt2 = function()	return (get(ATPS)); end,

 };
    
  
  
    

  
 
    
 		--Air Speed Indicator Tape

--ASI Scrolling numbers tape
		tape {
		position = { 42, 560, 70, 370 };
		image = get(asi_tape);
		scrollY = function()
		return (-get(airspeed_kts_pilot)*0.01089)+4.44;
		end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,				
		},
    
    
--ASI Bug  (BlueGreen)  
	tape  {
		position = { 93 , 746 -370/2, 20, 370  };
		image = get(asi_bug);
	
		scrollY = function()
		return (-get(airspeed_kts_pilot)*0.01089)-0.45 + (get(airspeedDial)*0.01089);
			end,
		visible = function()
			if get(ASPD) == 0 and get(ATPS) == 1 then return true
			else return false
			end
        end,		
		};	

--ASI Bug  (Teal)  

	tape  {
		position = { 93 , 746 -370/2, 20, 370  };
		image = get(asi_bug_selected);
	
		scrollY = function()
		return (-get(airspeed_kts_pilot)*0.01089)-0.45 + (get(airspeedDial)*0.01089);
			end,
		visible = function()
			if get(ASPD) == 1 and get(ATPS) == 1  then return true
			else return false
			end
        end,		
		};	




--Number Drum background 
		texture { 
        position = { 42, 711, 59, 64 };
        image = get(asi_drum);
        
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	        
    };
  
  
--ASI magnified digits drum

		digitstape {
		position = { 45, 724, 41, 35 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return mmax(0, get(airspeed_kts_pilot));
		end;
			visible = function()
				if get(ATPS) == 1 and get(airspeed_kts_pilot) < 203 then return true
				else return false
				end
			end,			
		
	};     

--ASI RED magnified digits drum

		digitstape {
		position = { 45, 724, 41, 35 };
		image = RedDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return mmax(0, get(airspeed_kts_pilot));
		end;
			visible = function()
				if get(ATPS) == 1 and get(airspeed_kts_pilot) > 203 then return true
				elseif get(ATPS) == 1 and get(airspeed_kts_pilot) < 56 and get(RAlt) > 10 then return true
				else return false
				end
			end,			
		
	};     



   
   
   
 --Altitude Tape Mask BG  
     texture { 
        position = { 371, 597, 87, 320 };
        image = get(alt_drum_digits1_mask);
        
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	        
    };
 		  
   
   --Altitude Tape

 			tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_0);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53;
		end,
		
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,			
		},
 			tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_1);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 4;
		end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,			
		},  
 			tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_2);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 8;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		}, 
    		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_3);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 12;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
    		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_4);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 16;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
      		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_5);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 20;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
      		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_6);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 24;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_7);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 28;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
      		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_8);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 32;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_9);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 36;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_10);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 40;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_11);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 44;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
    		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_12);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 48;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_13);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 52;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_14);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 56;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_15);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 60;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_16);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 64;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_17);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 68;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_18);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 72;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_19);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 76;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_20);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 80;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_21);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 84;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_22);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 88;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_23);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 92;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_24);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 96;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},  
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_25);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 100;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},   
       		tape {
		position = { 372, 570, 78, 340 };
		image = get(alt_tape_26);
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.53 + 104;
				end,
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	
		},
   
   
       
--ALT Bug  Deselected
	tape  {
		position = { 368 , 746 -370/2, 20, 340  };
		image = get(alt_bug);
	
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.415 + (get(altitude_dial)*0.002);    end,
				visible = function()
			if get(AALT) == 0 and get(ATPS) == 1 then return true
			else return false
			end
        end,		
			
		};	
		
--ALT Bug    Selected
	tape  {
		position = { 368 , 746 -370/2, 20, 340  };
		image = get(alt_bug_selected);
	
		scrollY = function()
		return (-get(altitude_ft_pilot)*0.002)-0.415 + (get(altitude_dial)*0.002);    end,
				visible = function()
			if get(AALT) == 1 and get(ATPS) == 1 then return true
			else return false
			end
        end,		
			
		};			

--Altitude Drum   
   texture { 
        position = { 367, 714, 86, 60 };
        image = get(alt_drum);
        
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,	        
    };

 
   		--digits
    	digitstape {
		position = { 380, 724, 41, 35 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return mfloor(get(altitude_ft_pilot)*0.01);
		end;
        
			visible = function()
				if get(ATPS) == 1 and get(altitude_ft_pilot) >= 0 then return true
				else return false
				end
			end,			
	};     
     
   		--digits
    	digitstape {
		position = { 380, 724, 41, 35 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		showSign = true,
		
		showLeadingZeros = true,
		value = function()
			return mfloor(get(altitude_ft_pilot)*0.01);
		end;
        
			visible = function()
				if get(ATPS) == 1 and get(altitude_ft_pilot) < 0 then return true
				else return false
				end
			end,			
	};        
     
     	--DoubleDigits
       	digitstape {
		position = { 425, 728, 20, 28 };
		image = DoubleDigits;
		digits = 1;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return (get(altitude_ft_pilot)*0.1);
		end;
        
			visible = function()
				if get(ATPS) == 1 then return true
				else return false
				end
			end,			
	};      
    


	







-- (TOP LEFT CORNER BOX)  ASI Air Speed Indicator selected
	texture {
		position = { 45, 903, 98, 34  };
		image = get(asi_selected);
		
        
		
		};


	digitstape {
		position = { 49, 898, 45, 40 };
		image = TealDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(airspeedDial));
		end;
		visible = function()
			if get(ASPD) == 0 and get(AS) == 1 then return true
			else return false
			end
        end,	
	}; 


	digitstape {
		position = { 49, 898, 45, 40 };
		image = PurpleDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(airspeedDial));
		end;
		visible = function()
			if get(ASPD) == 1  and get(AS) == 1 then return true
			else return false
			end
        end,	
	}; 

		


	
--(TOP RIGHT CORNER BOX)  Altitude Alerter (Top Right Corner)	
	texture {
		position = { 342, 903, 114, 34  };
		image = get(alt_selected);
        

		
		};
		
--AltAlerter On		
	texture {
		position = { 342, 903, 114, 34  };
		image = get(alt_alerter);
		visible = function()
			if get(alert) == 1 then return true
			else return false
			end;
        end,		
		
		};

--Deselected
	digitstape {
		position = { 380, 899, 68, 40 };
		image = TealDigits;
		digits = 5;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(altitude_dial));
		end;
		visible = function()
			if get(AALT) == 0 then return true
			else return false
			end
        end,				
	}; 

--SELECTED
	digitstape {
		position = { 380, 899, 68, 40 };
		image = PurpleDigits;
		digits = 5;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(altitude_dial));
		end;
		visible = function()
			if get(AALT) == 1 then return true
			else return false
			end
        end,				
	}; 










--HDef and VDef indicators

--LDI (Lateral Deviation Indicator)
	texture {
		position = { 186, 578, 127, 20  };
		image = get(ldi_scale);
			visible = function()
				if  get(ATPS) == 1 and get(MB) == 0 then
					if  get(NAV1_CDI) == 1 and get(NAV1_display_h) == 1 and get(NAV1_from_to) ~= 0  then return true	else return false 	end

					
					
				elseif get(ATPS) == 1 and get(MB) == 1 then
					if  get(NAV2_CDI) == 1 and get(NAV2_display_h) == 1 and get(NAV2_from_to) ~= 0  then return true	else return false 	end


				
				else return false
					
				end	
			end,		
		};
		

		
		
		
	tape  {
			position = { 247 - 144/2, 583, 144, 32  };
			image = get(LDI);
			visible = function()
				if  get(ATPS) == 1 and get(MB) == 0 then
					if  get(NAV1_CDI) == 1 and get(NAV1_display_h) == 1 and get(NAV1_from_to) ~= 0 then return true	else return false 	end

					
					
				elseif get(ATPS) == 1 and get(MB) == 1 then
					if  get(NAV2_CDI) == 1 and get(NAV2_display_h) == 1 and get(NAV2_from_to) ~= 0  then return true	else return false 	end
				

				else return false
					
				end	
			end,				
	        scrollX = function()
        		if get(MB) == 0 then
				return (-0.4 - (get(NAV1_hdef_dots)*0.16));
 				elseif get(MB) == 1 then
				return (-0.4 - (get(NAV2_hdef_dots)*0.16));
				elseif get(MB) == 2 then
 				return (-0.4 - (get(GPS_hdef_dots)*0.16));
  				end
    	end,	
			};	


--VDI (Vertical Deviation Indicator)

	texture {
		position = { 341, 677, 22, 130  };
		image = get(vdi_scale);
			visible = function()
				if  get(ATPS) == 1 and get(MB) == 0 then
					if get(NAV1_CDI) == 1 and get(NAV1sim) < 11195   then return true	else return false 	end

					
					
				elseif get(ATPS) == 1 and get(MB) == 1 then
					if get(NAV2_CDI) == 1 and get(NAV2sim) < 11195 then return true	else return false 	end

				
				else return false
					
				end	
			end,		
		};


	tape  {
		position = { 325 , 746 -144/2, 32, 144  };
		image = get(VDI);
			visible = function()
				if  get(ATPS) == 1 and get(MB) == 0 then
					if get(NAV1_CDI) == 1 and get(NAV1sim) < 11195   then return true	else return false 	end

																				--		if get(NAV1_CDI) == 1 and get(NAV1sim) < 11195 then
																				--  if get(NAV1_display_v) == 1 and get(HSI_GS_flag) == 0 
					
				elseif get(ATPS) == 1 and get(MB) == 1 then
					if get(NAV2_CDI) == 1 and get(NAV2sim) < 11195 then return true	else return false 	end

				
				else return false
					
				end	
			end,				
		scrollY = function()
				if get(MB) == 0 then
				return (-0.4 - (get(NAV1_vdef_dots)*0.16));
 				elseif get(MB) == 1 then
				return (-0.4 - (get(NAV2_vdef_dots)*0.16));
				elseif get(MB) == 2 then
 				return (-0.4 - (get(GPS_vdef_dots)*0.16));
  				end
			end,
		};	

   



--LDI Source

	texture {
		position = { 138, 591, 48, 18  };
		image = get(ldi_source);
        
			visible = function()
				if get(ATPS) == 1 and get(MB) == 0 and get(NAV1_CDI) == 0 and get(NAV1sim) > 11195  then return true
				elseif get(ATPS) == 1 and get(MB) == 0 and get(NAV1_CDI) == 1 and get(NAV1sim) <= 11195  then return true
				elseif get(ATPS) == 1 and get(MB) == 1 and get(NAV2_CDI) == 0 and get(NAV2sim) > 11195  then return true
				elseif get(ATPS) == 1 and get(MB) == 1 and get(NAV2_CDI) == 1 and get(NAV2sim) <= 11195  then return true
				elseif get(ATPS) == 1 and get(MB) == 2  then return true

				else return false
				end
			end,	
		};


--	if get(NAV2_CDI) == 0 and get(NAV2sim) > 11195 then


--DIVIDING BAR BETWEEN TOP AND BOTTOM HALF OF DISPLAY
--|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	texture {
		position = { 42, 539, 413, 64  };
		image = get(data_bar)
		};
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||








--True Airspeed

		digitstape {
		position = { 76, 571, 39, 30 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return mfloor(get(TrueAirspeed)*1.94384449);
		end;
		
	};    


--Ground Speed

		digitstape {
		position = { 87, 545, 39, 30 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return mfloor(get(GroundSpeed)*1.94384449);
		end;
		
	};    



--Barometric Pressure InHg
	digitstape {
		position = { 362, 568, 68, 36 };
		image = TealDigits;
		digits = 4;
		fractional = 2;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(baro)*100)*0.01;
		end;
 		visible = function()
			if get(ABARO) == 0 and get(BaroUnits) == 0 then return true
			else return false
			end
        end,				
	}; 
	
	

	
	
	
	
	digitstape {
		position = { 362, 568, 68, 36 };
		image = PurpleDigits;
		digits = 4;
		fractional = 2;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(baro)*100)*0.01;
		end;
 		visible = function()
			if get(ABARO) == 1 and get(BaroUnits) == 0  then return true
			else return false
			end
        end,				
	}; 





--Barometric Pressure  mB  
	digitstape {
		position = { 360, 568, 60, 36 };
		image = TealDigits;
		digits = 4;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(baro)*33.8637526);
		end;
 		visible = function()
			if get(ABARO) == 0 and get(BaroUnits) == 1 then return true
			else return false
			end
        end,				
	}; 
	

--Barometric Pressure  mB   Selected
	digitstape {
		position = { 360, 568, 60, 36 };
		image = PurpleDigits;
		digits = 4;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(baro)*33.8637526);
		end;
 		visible = function()
			if get(ABARO) == 1 and get(BaroUnits) == 1 then return true
			else return false
			end
        end,				
	}; 
	


--OAT (Outside Air Temperature)

	digitstape {
		position = { 200, 545, 39, 30 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = false,
		showSign = true,
		
		value = function()
			return mfloor(get(OAT));
		end;
		
	}; 



--Wind Direction (Deg)

	digitstape {
		position = { 326, 545, 39, 30 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
		    if get(wind_deg) < 359.5 then
			return mfloor(get(wind_deg));
			else
			return 0
			end;
		end;
		
	}; 


	needle {
		position = { 306, 551, 22, 22 };
		image = get(wind_arrow);
		angle = function()
			return (-get(HDG)+get(wind_deg));
			end;
	
	};




--Wind Speed (Kts)

	digitstape {
		position = { 383, 545, 39, 30 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = false,
		value = function()
			return mfloor(get(wind_kts));
		end;
		
	}; 




-- EVERYTHING BELOW DIVIDING BAR BETWEEN TOP AND BOTTOM HALF OF DISPLAY
--|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
  
  
  
  rectangle {
        position = { 150, 488, 200, 30 },
 		color = {0.0, 0.0, 0.0, 1.0},
 	 },

--TurnRate Tape  360º
	rotated_tape {
        position = { 83, 179, 336, 336 },
        image = get(turn_rate_tape),
        scrollX = function()
        return (0);
        end,
        scrollY = function()
        return (0);
        end,        
        angle = function() 
        
        	if get(TurnRate) > 0 then
             return (mmin(10, (get(TurnRate)-14)));
            elseif get(TurnRate) < 0 then
             return (mmax(-10, (get(TurnRate)+14)));
			end
        end,
			visible = function()
				if get(AARC) == 0 then
					if get(TurnRate) < -2 or get (TurnRate) > 2 then
					return true
					else return false
					end
				else return false
				end
			end,	        
    },  



--Turn rate arrows 360º

 
	texture {
		position = { 176, 489, 12, 15  };
		image = get(turn_rate_neg_arrow);	
			visible = function()
				if get(AARC) == 0 and get(TurnRate) < -24 then return true
				else return false
				end
			end,		
	};



 
	texture {
		position = { 314, 489, 12, 15  };
		image = get(turn_rate_pos_arrow);	
			visible = function()
				if get(AARC) == 0 and get(TurnRate) > 24 then return true
				else return false
				end
			end,		
	};





--TurnRate Tape  Arc
	rotated_tape {
        position = { 252 - 539/2, 250 - 539/2, 539, 539 },
        image = get(turn_rate_tape_arc),
        scrollX = function()
        return (0);
        end,
        scrollY = function()
        return (0);
        end,        
        angle = function() 
        
        	if get(TurnRate) > 0 then
             return (mmin(7, (get(TurnRate)-12)));
            elseif get(TurnRate) < 0 then
             return (mmax(-7, (get(TurnRate)+12)));
			end
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(TurnRate) < -2 or get (TurnRate) > 2 then
					return true
					else return false
					end
				else return false
				end
			end,	        
    },  





--Turn rate arrows Arc

 
	texture {
		position = { 164, 495, 12, 15  };
		image = get(turn_rate_neg_arrow);	
			visible = function()
				if get(AARC) == 1 and get(TurnRate) < -20 then return true
				else return false
				end
			end,		
	};



 
	texture {
		position = { 326, 495, 12, 15  };
		image = get(turn_rate_pos_arrow);	
			visible = function()
				if get(AARC) == 1 and get(TurnRate) > 20 then return true
				else return false
				end
			end,		
	};






--Turn Rate Tape Mask
 	rectangle {
        position = { 250, 488, 90, 30 },
 		color = {0.0, 0.0, 0.0, 1.0},
		visible = function()
			if get(TurnRate) < -2 then return true
			else return false
			end
        end,			

 };



  	rectangle {
        position = { 160, 488, 90, 30 },
 		color = {0.0, 0.0, 0.0, 1.0},
		visible = function()
			if get(TurnRate) > 2 then return true
			else return false
			end
        end,			



 };

 
 
 
 
--turn_rate BG  360
	texture {
		position = { 195, 498, 113, 20  };
		image = get(turn_rate);	
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,		
	};



--turn_rate BG  360
	texture {
		position = { 193, 498, 118, 21  };
		image = get(turn_rate_arc);	
			visible = function()
				if get(AARC) == 1 then return true
				else return false
				end
			end,		
	};








--HDG bug digital readout (Degrees)


	digitstape {
		position = { 313, 500, 42, 30 };
		image = TealDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			if get(HDG_Bug_Pilot) >= 0 and get(HDG_Bug_Pilot) < 360 then
			return mfloor(get(HDG_Bug_Pilot));
			elseif get(HDG_Bug_Pilot) >= 360 and get(HDG_Bug_Pilot) < 721 then
			return mfloor(get(HDG_Bug_Pilot)-360);
			elseif get(HDG_Bug_Pilot) >= -361 and get(HDG_Bug_Pilot) < 0 then
			return mfloor(get(HDG_Bug_Pilot)+360);	
			elseif get(HDG_Bug_Pilot) >= -721 and get(HDG_Bug_Pilot) < 0 then
			return mfloor(get(HDG_Bug_Pilot)+720);				
			end;
		end;	
			visible = function()
				if get(AHDG) == 0 then return true
				else return false
				end
			end,				
		
	}; 
	
--SELECTED HDG bug digital readout (Degrees)

	digitstape {
		position = { 313, 500, 42, 30 };
		image = PurpleDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			if get(HDG_Bug_Pilot) >= 0 and get(HDG_Bug_Pilot) < 360 then
			return mfloor(get(HDG_Bug_Pilot));
			elseif get(HDG_Bug_Pilot) >= 360 and get(HDG_Bug_Pilot) < 721 then
			return mfloor(get(HDG_Bug_Pilot)-360);
			elseif get(HDG_Bug_Pilot) >= -361 and get(HDG_Bug_Pilot) < 0 then
			return mfloor(get(HDG_Bug_Pilot)+360);	
			elseif get(HDG_Bug_Pilot) >= -721 and get(HDG_Bug_Pilot) < 0 then
			return mfloor(get(HDG_Bug_Pilot)+720);				
			end;
		end;	
			visible = function()
				if get(AHDG) == 1 then return true
				else return false
				end
			end,				
		
	}; 




--NAV1 bug digital readout (Degrees)

	digitstape {
		position = { 138, 500, 42, 30 };
		image = GreenDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
				return mfloor(get(OBS1));
			end;
			visible = function()
				if get(MB) == 0  and get(ACRS) == 0 then return true
				else return false
				end
			end,			
	}; 

--NAV2 bug digital readout (Degrees)

	digitstape {
		position = { 138, 500, 42, 30 };
		image = GreenDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
				return mfloor(get(OBS2));
			end;
			visible = function()
				if get(MB) == 1 and get(ACRS) == 0 then return true
				else return false
				end
			end,			
	}; 


--GPS bug digital readout (Degrees)

	digitstape {
		position = { 138, 500, 42, 30 };
		image = GreenDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
				return mfloor(get(GPS_bearing));
			end;
			visible = function()
				if get(MB) == 2  and get(ACRS) == 0 then return true
				else return false
				end
			end,			
	}; 

--NAV1 bug digital readout (Degrees)

	digitstape {
		position = { 138, 500, 42, 30 };
		image = PurpleDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
				return mfloor(get(OBS1));
			end;
			visible = function()
				if get(MB) == 0  and get(ACRS) == 1 then return true
				else return false
				end
			end,			
	}; 

--NAV2 bug digital readout (Degrees)

	digitstape {
		position = { 138, 500, 42, 30 };
		image = PurpleDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
				return mfloor(get(OBS2));
			end;
			visible = function()
				if get(MB) == 1 and get(ACRS) == 1 then return true
				else return false
				end
			end,			
	}; 


--GPS bug digital readout (Degrees)

	digitstape {
		position = { 138, 500, 42, 30 };
		image = PurpleDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
				return mfloor(get(GPS_bearing));
			end;
			visible = function()
				if get(MB) == 2  and get(ACRS) == 1 then return true
				else return false
				end
			end,			
	}; 




--Vertical Speed

		digitstape {
		position = { 360, 516, 73, 36 };
		image = WhiteDigits;
		digits = 6;
		fractional = 0;
		
		showLeadingZeros = false,
		showSign = true,
		value = function()
			if get(airspeed_kts_pilot) < 10 then return (0);
			else
			return mfloor(get(VVI));
			end;		
		end;
		
	};    

-- VVI tape
 	rectangle2 {
 	origX = function()	 return (417); end,
 	origY = function()	 return (352); end,
 	sizeX = function()	 return (9); end,
 	sizeY = function()	 return (mmin(100, get(VVI)*0.1)); end,
 	color = {1.0, 1.0, 1.0, 1.0},
 	brt2 = function()	return (1); end,

 };
   	rectangle2 {
 	origX = function()	 return (417); end,
 	origY = function()	 return (452); end,
 	sizeX = function()	 return (9); end,
 	sizeY = function()	 return (mmin(50, (get(VVI)-1000)*0.05)); end,
 	color = {1.0, 1.0, 1.0, 1.0},
 	brt2 = function()	return (1); end,

 };
 
 
   -- VVI tape (lower half)
 	rectangle2 {
 	origX = function()	 return (417); end,
 	origY = function()	 return (352-mmin(100, get(VVI)*-0.1)); end,
 	sizeX = function()	 return (9); end,
 	sizeY = function()	 return (mmin(100, get(VVI)*-0.1)); end,
 	color = {1.0, 1.0, 1.0, 1.0},
 	brt2 = function()	return (1); end,

 };   
	rectangle2 {
 	origX = function()	 return (417); end,
 	origY = function()	 return (252-mmin(50, (get(VVI)+1000)*-0.05)); end,
 	sizeX = function()	 return (9); end,
 	sizeY = function()	 return (mmin(50, (get(VVI)+1000)*-0.05)); end,
 	color = {1.0, 1.0, 1.0, 1.0},
 	brt2 = function()	return (1); end,

 };   
 
 
--VSI scale


	texture {
		position = { 415, 193, 24, 160  };
		image = get(vsi_neg);
		visible = function()
			if get(VVI) < -100 then return true
			else return false
			end
        end,	
		};

	texture {
		position = { 415, 350, 24, 160  };
		image = get(vsi_pos);
		visible = function()
			if get(VVI) > 100 then return true
			else return false
			end
        end,
		};




--CDI Source Label

	texture {
		position = { 44, 518, 66, 22  };
		image = get(cdi_source_label);
			visible = function()
				if get(MB) ~= 3 then return true
				else return false
				end
			end,	

		};



--Single-line Pointer Icon

	texture {
		position = { 137, 169, 16, 22  };
		image = get(single_line_pointer_icon);
	 		visible = function()
			if get(Menu) == 0 and get(AARC) == 0 then return true
			else return false
			end
        end,		
		};




		
		
--Double-line Pointer Icon

	texture {
		position = { 366, 169, 16, 22  };
		image = get(double_line_pointer_icon);
	 		visible = function()
			if get(Menu) == 0 and get(AARC) == 0  then return true
			else return false
			end
        end,		
		};



	

--_______________________________________________________________________________


--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________

   
						--  Knobs and Buttons 

 --Left Knob "paddles"      
 	  rotary {
	position = { 82 -140/2, 60 - 50/2, 140, 50 };
            value = LeftKnob,
            step = 10.0, 
            hold = 100.0,
          adjuster = function(v)
  --        if v > 120 then v = 120 end
    --      if v < 15 then v = 15 end
          return v
       end,   
	}, 
  
   
  --Left Knob click-and-drag Manipulator
		knob {
		position = { 82 -66/2, 60 - 66/2, 66, 66  };
       	value = LeftKnob,
--       lever_img = get(TKnob),
       	minimum = 0,
       	maximum = 100,

   },
  	    draggable {
		position = { 82 -66/2, 60 - 66/2, 66, 66  };
        
       cursor = { 
            x = 8, 
            y = 26, 
            width = 32, 
            height = 32, 
            shape = loadImage("draggable.png")
        },     
      },   
 

		--Delta switch       
		switch {
		position = { 82 -30/2, 60 - 30/2, 30, 30  };
        onMouseDown = function ()
			if get(LeftKnobBut) == 0 and get(Menu) == 0 then
				--set(delay, 0)
				set(LeftKnobBut, 0)     
			elseif get(LeftKnobBut) == 1 and get(Menu) == 0  then
			    set(LeftKnobBut, 1)
			   -- set(delay, 0)
		    elseif get(LeftKnobBut) == 2 and get(Menu) == 0  then
			    set(LeftKnobBut, 2)
			  --  set(delay, 0)

				
			end;
			set(MouseDn, 1)
			set(MouseUp, 0)
            return true
        end;

        onMouseUp = function ()
	        
			if get(LeftKnobBut) == 0 and get(Menu) == 0 then
					
					if get(delay) == 0 then  	set(LeftKnobBut, 1) else set(LeftKnobBut, 0) end;
				
			elseif get(LeftKnobBut) == 1 and get(Menu) == 0  then
			
					if get(delay) == 0  then  	set(LeftKnobBut, 2) else set(LeftKnobBut, 1) end;
			
		    elseif get(LeftKnobBut) == 2 and get(Menu) == 0  then
		    
					if get(delay) == 0  then  	set(LeftKnobBut, 0) else set(LeftKnobBut, 2) end;
			
			end;
			set(MouseUp, 1)
			set(MouseDn, 0)
            return true
        end;
       	
    };
       	








	--Right Knob "paddles"      
 		rotary {
	position = { 437 -140/2, 60 - 50/2, 140, 50 };
            value = RightKnob,
            step = 10.0, 
            hold = 100.0,
          adjuster = function(v)
  --        if v > 120 then v = 120 end
    --      if v < 15 then v = 15 end
          return v
       end,   
	}, 
   
 	 --Right Knob click-and-drag Manipulator
		knob {
		position = { 437 -66/2, 60 - 66/2, 66, 66  };
       	value = RightKnob,
--       lever_img = get(TKnob),
       	minimum = 0,
       	maximum = 100,
		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
		end,
   },

  	    draggable {
		position = { 437 -66/2, 60 - 66/2, 66, 66  };
        
       cursor = { 
            x = 8, 
            y = 26, 
            width = 32, 
            height = 32, 
            shape = loadImage("draggable.png");

        }, 
    		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
		end,    
      },   


	--Right Knob Center Button Press
		
		--  Delta switch - in regular mode, NOT in Menu mode                RightKnobButHold
		switch {
		position = { 437 -20/2, 60 - 20/2, 20, 20  };
        onMouseDown = function ()
			if get(RightKnobBut) == 0 and get(Menu) == 0 then
				--set(delay, 0)
				set(RightKnobBut, 0)     
			elseif get(RightKnobBut) == 1 and get(Menu) == 0  then
			    set(RightKnobBut, 1)
			   -- set(delay, 0)
		    elseif get(RightKnobBut) == 2 and get(Menu) == 0  then
			    set(RightKnobBut, 2)
			  --  set(delay, 0)
   		    elseif get(RightKnobBut) == 3 and get(Menu) == 0  then
			    set(RightKnobBut, 3)
			  --  set(delay, 0)
		    elseif get(RightKnobBut) == 4 and get(Menu) == 0  then
			    set(RightKnobBut, 4)
				
			end;
			set(MouseDn, 1)
			set(MouseUp, 0)
            return true
        end;

        onMouseUp = function ()
	        
			if get(RightKnobBut) == 0 and get(Menu) == 0 then
					
					if get(delay) == 0 then  	set(RightKnobBut, 1) else set(RightKnobBut, 0) end;
				
			elseif get(RightKnobBut) == 1 and get(Menu) == 0  then
			
					if get(delay) == 0  then  	set(RightKnobBut, 2) else set(RightKnobBut, 1) end;
			
		    elseif get(RightKnobBut) == 2 and get(Menu) == 0  then
		    
					if get(delay) == 0  then  	set(RightKnobBut, 3) else set(RightKnobBut, 2) end;
			
   		    elseif get(RightKnobBut) == 3 and get(Menu) == 0  then	
   		    
					if get(delay) == 0  then  	set(RightKnobBut, 4) else set(RightKnobBut, 3) end;

		    elseif get(RightKnobBut) == 4 and get(Menu) == 0  then
		    
					if get(delay) == 0  then  	set(RightKnobBut, 0) else set(RightKnobBut, 4) end;

			end;
			set(MouseUp, 1)
			set(MouseDn, 0)
            return true
        end;
        
        
    	visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
		end,            
        
    };
   
    		--Delta switch - in Menu mode

 		switch {
		position = { 437 -30/2, 60 - 30/2, 30, 30  };
        onMouseDown = function ()
            if get(MenuKnobBut) == 0 then
                set(MenuKnobBut, 1)       
			elseif get(MenuKnobBut) == 1 then
                set(MenuKnobBut, 0)       
			end;
            return true
        end;
        
    	visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
		end,            
        
    };      	
    	

  	    clickable {
		position = { 437 -30/2, 60 - 30/2, 30, 30  };
        
       cursor = { 
            x = 8, 
            y = 26, 
            width = 16, 
            height = 16, 
            shape = loadImage("clickable.png")
        },  
        



};
	



		
		
		
  	    clickable {
		position = { 0, 0, 30, 30  };
        
       cursor = { 
            x = 8, 
            y = 26, 
            width = 16, 
            height = 16, 
            shape = loadImage("clickable.png")
        },  
        
      },   





--_______________________________________________________________________________

   
      

						 --Buttons
						 
						 
--Map Range	Plus					 
		switch {
        position = {478, 750, 40, 60};
        onMouseDown = function ()
			if get(EFIS_Map_Range) == 0 then
                set(EFIS_Map_Range, 1)       
			elseif get(EFIS_Map_Range) == 1 then
			    set(EFIS_Map_Range, 2)
   			elseif get(EFIS_Map_Range) == 2 then
			    set(EFIS_Map_Range, 3)
  			elseif get(EFIS_Map_Range) == 3 then
			    set(EFIS_Map_Range, 4)
  			elseif get(EFIS_Map_Range) == 4 then
			    set(EFIS_Map_Range, 5)
  			elseif get(EFIS_Map_Range) == 5 then
			    set(EFIS_Map_Range, 6)
  			elseif get(EFIS_Map_Range) == 6 then
			    set(EFIS_Map_Range, 6)
			end;
            return true
        end;
    };						 
			
			
--Map Range	Minus					 
		switch {
        position = {478, 680, 40, 60};
        onMouseDown = function ()
			if get(EFIS_Map_Range) == 6 then
                set(EFIS_Map_Range, 5)       
   			elseif get(EFIS_Map_Range) == 5 then
			    set(EFIS_Map_Range, 4)
  			elseif get(EFIS_Map_Range) == 4 then
			    set(EFIS_Map_Range, 3)
  			elseif get(EFIS_Map_Range) == 3 then
			    set(EFIS_Map_Range, 2)
  			elseif get(EFIS_Map_Range) == 2 then
			    set(EFIS_Map_Range, 1)
  			elseif get(EFIS_Map_Range) == 1 then
			    set(EFIS_Map_Range, 0)
  			elseif get(EFIS_Map_Range) == 0 then
			    set(EFIS_Map_Range, 0)
			end;
            return true
        end;
    };						 
						
			
			
 
 --Power Switch
switch {
        position = {478, 850, 40, 60};
        state = function () return 1 == get(Power); end;
        onMouseDown = function ()
            if 1 == get(Power)  then
                set(Power, 0)         
            else
                set(Power, 1)  
                set(Menu, 0)
    	     end
            return true
        end;
       -- btnOn = get(Button);
    };
 
 --Menu button
switch {
        position = {478, 570, 40, 80};
        state = function () return 1 == get(Menu); end;
        onMouseDown = function ()
            if 1 == get(Menu)  then
                set(Menu, 0)         
            else
                set(Menu, 1)       
    	     end
            return true
        end;
       -- btnOn = get(Button);
    };
 
 --Side buttons
switch {
        position = {478, 500, 40, 60};
        state = function () return 1 == get(Bt1); end;
        onMouseDown = function ()
        	if get(Menu) == 0 then
				if 1 == get(Bt1)  then
					set(Bt1, 0)         
				else
					set(Bt1, 1)       
				end
    	    else
    	    	if 1 == get(MBt1)  then
					set(MBt1, 0)         
				else
					set(MBt1, 1)       
				end
    	    end
    	    
            return true
        end;
       -- btnOn = get(Button);
    }; 
switch {
        position = {478, 425, 40, 60};
        state = function () return 1 == get(Bt2); end;
        onMouseDown = function ()
           	if get(Menu) == 0 then
				if 1 == get(Bt2)  then
					set(Bt2, 0)         
				else
					set(Bt2, 1)       
				end
    	    else
    	    	if 1 == get(MBt2)  then
					set(MBt2, 0)         
				else
					set(MBt2, 1)       
				end
    	    end
    	    
            return true
        end;
       -- btnOn = get(Button);
    }; 
switch {
        position = {478, 350, 40, 60};
        state = function () return 1 == get(Bt3); end;
        onMouseDown = function ()
   	if get(Menu) == 0 then
				if 1 == get(Bt3)  then
					set(Bt3, 0)         
				else
					set(Bt3, 1)       
				end
    	    else
    	    	if 1 == get(MBt3)  then
					set(MBt3, 0)         
				else
					set(MBt3, 1)       
				end
    	    end
    	    
            return true
        end;
       -- btnOn = get(Button);
    }; 
switch {
        position = {478, 275, 40, 60};
        state = function () return 1 == get(Bt4); end;
        onMouseDown = function ()
            if get(Menu) == 0 then
				if 		get(Bt4) == 0  then	set(Bt4, 1)	
				elseif  get(Bt4) == 1  then	set(Bt4, 2)	
				elseif  get(Bt4) == 2  then	set(Bt4, 3)	
				elseif  get(Bt4) == 3  then	set(Bt4, 4)	
				elseif  get(Bt4) == 4  then	set(Bt4, 0)	

				end
    	    else
    	    	if 1 == get(MBt4)  then
					set(MBt4, 0)         
				else
					set(MBt4, 1)       
				end
    	    end
    	    
            return true
        end;
       -- btnOn = get(Button);
    }; 
switch {
        position = {478, 200, 40, 60};
        state = function () return 1 == get(Bt5); end;
        onMouseDown = function ()
             if get(Menu) == 0 then
				if 1 == get(Bt5)  then
					set(Bt5, 0)         
				else
					set(Bt5, 1)       
				end
    	    else
    	    	if 1 == get(MBt5)  then
					set(MBt5, 0)         
				else
					set(MBt5, 1)       
				end
    	    end
    	    
            return true
        end;
       -- btnOn = get(Button);
    }; 
    
--Left, Middle, Right buttons at bottom of screen    
switch {
        position = {141, 64, 70, 50};
        state = function () return 1 == get(LB); end;
        onMouseDown = function ()
			if get(LB) == 0 then
                set(LB, 1)       
			elseif get(LB) == 1 then
			    set(LB, 2)
			elseif get(LB) == 2 then
			    set(LB, 3)	
			elseif get(LB) == 3 then
			    set(LB, 0)					    
			end;
            return true
        end;
    }; 
switch {
        position = {225, 64, 70, 50};
        state = function () return 1 == get(MB); end;
        onMouseDown = function ()
			if get(MB) == 0 then
                set(MB, 1)       
			elseif get(MB) == 1 then
			    set(MB, 2)
			elseif get(MB) == 2 then
			    set(MB, 3)	
			elseif get(MB) == 3 then
			    set(MB, 0)					    
			end;
            return true
        end;
       -- btnOn = get(Button);
    }; 
switch {
        position = {310, 64, 70, 50};
        state = function () return 1 == get(RB); end;
        onMouseDown = function ()
			if get(RB) == 0 then
                set(RB, 1)       
			elseif get(RB) == 1 then
			    set(RB, 2)
			elseif get(RB) == 2 then
			    set(RB, 3)	
			elseif get(RB) == 3 then
			    set(RB, 0)					    
			end;
            return true
        end;
       -- btnOn = get(Button);
    }; 
    
 






};







	

      
      








components2 = {

  
 
 
--Compass numbers  360º Mode
	    	tape {
        position = { 89, 189, 324, 324 },
        image = get(N),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+90))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+90))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    
    	    tape {
        position = { 89, 189, 324, 324 },
        image = get(d3),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+60))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+60))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    
            tape {
        position = { 89, 189, 324, 324 },
        image = get(d6),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+30))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+30))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
 			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	          
    },   	
    
	    	tape {
        position = { 89, 189, 324, 324 },
        image = get(E),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    		
    	    tape {
        position = { 89, 189, 324, 324 },
        image = get(d12),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-30))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-30))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    
   	    	tape {
        position = { 89, 189, 324, 324 },
        image = get(d15),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-60))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-60))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    
	    	tape {
        position = { 89, 189, 324, 324 },
        image = get(S),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-90))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-90))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    	  	
      	    tape {
        position = { 89, 189, 324, 324 },
        image = get(d21),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-120))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-120))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
     	
      	    tape {
        position = { 89, 189, 324, 324 },
        image = get(d24),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-150))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-150))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
     	
	   		tape {
        position = { 89, 189, 324, 324 },
        image = get(W),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-180))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-180))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },   	
    	
      	    tape {
        position = { 89, 189, 324, 324 },
        image = get(d30),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+150))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+150))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	
    },   	
        	
        	tape {
        position = { 89, 189, 324, 324 },
        image = get(d33),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+120))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+120))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	
    },   	   	


 
--Compass numbers  Arc Mode
	    	tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(AN),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+90))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+90))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then
				
					if get(HDG) > 270 or get(HDG) < 90 then return true
					else return false
					end
				end
			end,	           
    },   	
    
    	    tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad3),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+60))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+60))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then
					if get(HDG) > 330 or get(HDG) < 150 then return true
					else return false
					end
				else return false
				end
			end,	           
    },   	
    
            tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad6),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+30))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+30))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
 			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 0 and get(HDG) < 180 then return true
					else return false
					end
				else return false
				end
			end,	          
    },   	
    
	    	tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(AE),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 30 and get(HDG) < 210 then return true
					else return false
					end			
				else return false
				end
			end,	           
    },   	
    		
    	    tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad12),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-30))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-30))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 60 and get(HDG) < 240 then return true
					else return false
					end
				else return false
				end
			end,	           
    },   	
    
   	    	tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad15),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-60))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-60))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 90 and get(HDG) < 270 then return true
					else return false
					end			
				else return false
				end
			end,	           
    },   	
    
	    	tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(ArcS),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-90))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-90))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 120 and get(HDG) < 300 then return true
					else return false
					end			
				else return false
				end
			end,	           
    },   	
    	  	
      	    tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad21),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-120))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-120))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 150 and get(HDG) < 330 then return true
					else return false
					end			
				else return false
				end
			end,	           
    },   	
     	
      	    tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad24),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-150))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-150))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
	
					if get(HDG) > 180 and get(HDG) < 360 then return true
					else return false
					end	
				end
			end,	           
    },   	
     	
	   		tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(AW),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)-180))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)-180))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 180 then return true
					else return false
					end				
				else return false
				end
			end,	           
    },   	
    	
      	    tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad30),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+150))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+150))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then
					if get(HDG) > 210 or get(HDG) < 30 then return true
					else return false
					end				
				
				else return false
				end
			end,	
    },   	
        	
        	tape {
        position = { 260 - 644/2, 225 - 644/2, 644, 644 },
        image = get(Ad33),
        scrollX = function()
        return (-0.472 - mcos(mrad(get(HDG)+120))/2.66);
        end,
        scrollY = function()
        return (-0.478 + msin(mrad(get(HDG)+120))/2.66);
        end,        
        angle = function() 
             return (0);
        end,
			visible = function()
				if get(AARC) == 1 then 
					if get(HDG) > 240 or get(HDG) < 60 then return true
					else return false
					end				
				else return false
				end
			end,	
    },   	   	









--______________________NEEDLES________________________________



--Smaller Solid Needle  360
	    needle {
        position = { 114, 214, 274, 274 },
        image = get(single_line_pointer),
        angle = function() 
        		if get(LB) == 0 then
            	 return (get(NAV1_relative_bearing));
				elseif get(LB) == 1 then
				 return (get(NAV2_relative_bearing));
				elseif get(LB) == 2 then
				 return (get(GPS_bearing)-get(HDG));
				end
        end,
			visible = function()
				if get(AARC) == 0 and get(LB) ~= 3 then return true
				else return false
				end
			end,	           
    },  
    
  --Hollow Needle    360
 	    needle {
        position = { 114, 214, 274, 274 },
        image = get(double_line_pointer),
        angle = function() 
        		if get(RB) == 0 then
            	 return (get(NAV1_relative_bearing));
				elseif get(RB) == 1 then
				 return (get(NAV2_relative_bearing));
				elseif get(RB) == 2 then
				 return (get(GPS_bearing)-get(HDG));
				end
        end,
			visible = function()
				if get(AARC) == 0 and get(RB) ~= 3 then return true
				else return false
				end
			end,	           
    },  
    
       

         
    
--Big Green Needle  360º view

	    needle {
        position = { 114, 214, 274, 274 },
        image = get(cdi_needle),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 0 and  get(MB) ~= 3 then return true


				else return false
				end
			end,	           
    },  

--CDI To  360º view

	    needle {
        position = { 114, 214, 274, 274 },
        image = get(cdi_to),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 0 and  get(MB) == 0 and get(NAV1_from_to) == 1 then return true
				elseif get(AARC) == 0 and  get(MB) == 1 and get(NAV2_from_to) == 1 then return true


				else return false
				end
			end,	           
    },  

--CDI From  360º view

	    needle {
        position = { 114, 214, 274, 274 },
        image = get(cdi_from),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 0 and  get(MB) == 0 and get(NAV1_from_to) == 2 then return true
				elseif get(AARC) == 0 and  get(MB) == 1 and get(NAV2_from_to) == 2 then return true


				else return false
				end
			end,	           
    },  




--CDI To  Arc view

	    needle {
        position = { 251 - 324/2, 238 - 324/2, 324, 324 },
        image = get(cdi_to_arc),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 1  and get(ArcMode) == 0 and  get(MB) == 0 and get(NAV1_from_to) == 1 then return true
				elseif get(AARC) == 1  and get(ArcMode) == 0 and  get(MB) == 1 and get(NAV2_from_to) == 1 then return true


				else return false
				end
			end,	           
    },  



--CDI From  Arc view

	    needle {
        position = { 251 - 324/2, 238 - 324/2, 324, 324 },
        image = get(cdi_from_arc),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 1  and get(ArcMode) == 0 and  get(MB) == 0 and get(NAV1_from_to) == 2 then return true
				elseif get(AARC) == 1  and get(ArcMode) == 0 and  get(MB) == 1 and get(NAV2_from_to) == 2 then return true


				else return false
				end
			end,	           
    },  









--CDI Deviation Bar (Solid) 360 view
	    rotated_tape {
        position = { 89, 189, 324, 324 },
        image = get(cdi_deviation),

        scrollX = function()
        		if get(MB) == 0 then
				return (-0.486 - (get(NAV1_hdef_dots)*0.088));
 				elseif get(MB) == 1 then
				return (-0.486 - (get(NAV2_hdef_dots)*0.088));
				elseif get(MB) == 2 then
 				return (-0.486 - (get(GPS_hdef_dots)*0.088));
  				end
    	end,
        scrollY = function()
        return (-0.375);
        end,        
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
			visible = function()
				if get(AARC) == 0  then 
						if get(MB) == 0 and get(NAV1_from_to) ~= 0  and get(NAV1_hdef_dots) > -2.4999 and get(NAV1_hdef_dots) < 2.4999 then 				return true
						elseif get(MB) == 1 and get(NAV2_from_to) ~= 0  and get(NAV2_hdef_dots) > -2.4999 and get(NAV2_hdef_dots) < 2.4999 then				return true
						elseif get(MB) == 2 and get(GPS_from_to) ~= 0  and get(GPS_hdef_dots) > -2.4999 and get(GPS_hdef_dots) < 2.4999 then				return true
						else return false
						end
				else return false
				end
			end,	           
    },  
    

--CDI Deviation Bar (Outline)  360 view
	    rotated_tape {
        position = { 89, 189, 324, 324 },
        image = get(cdi_deviation_hollow),

        scrollX = function()
        		if get(MB) == 0 and get(NAV1_from_to) ~= 0  then
				return (-0.486 - (get(NAV1_hdef_dots)*0.088));
 				elseif get(MB) == 1 and get(NAV2_from_to) ~= 0  then
				return (-0.486 - (get(NAV2_hdef_dots)*0.088));
				elseif get(MB) == 2  and get(GPS_from_to) ~= 0 then
 				return (-0.486 - (get(GPS_hdef_dots)*0.088));
  				end
    	end,
        scrollY = function()
        return (-0.375);
        end,        
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
			visible = function()
				if get(AARC) == 0    then 
						if get(MB) == 0 and get(NAV1_from_to) ~= 0  then
							if get(NAV1_hdef_dots) <= -2.4999 then 			return true 
							elseif get(NAV1_hdef_dots) >= 2.4999 then		return true
							else return false
							end
						elseif get(MB) == 1  and get(NAV2_from_to) ~= 0   then
							if get(NAV2_hdef_dots) <= -2.4999 then 			return true 
							elseif get(NAV2_hdef_dots) >= 2.4999 then		return true
							else return false
							end
						elseif get(MB) == 2  and get(GPS_from_to) ~= 0    then
							if get(GPS_hdef_dots) <= -2.4999 then 			return true 
							elseif get(GPS_hdef_dots) >= 2.4999 then		return true
							else return false
							end
						else return false
						end
				else return false
				end
			end,	           
    },  











--CDI Deviation Bar (Solid) Arc view
	    rotated_tape {
        position = { 251 - 324/2, 238 - 324/2, 324, 324 },
        image = get(cdi_deviation),

        scrollX = function()
        		if get(MB) == 0 then
				return (-0.486 - (get(NAV1_hdef_dots)*0.088));
 				elseif get(MB) == 1 then
				return (-0.486 - (get(NAV2_hdef_dots)*0.088));
				elseif get(MB) == 2 then
 				return (-0.486 - (get(GPS_hdef_dots)*0.088));
  				end
    	end,
        scrollY = function()
        return (-0.375);
        end,        
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
			visible = function()
				if get(AARC) == 1 and get(ArcMode) == 0    then 
						if get(MB) == 0 and get(NAV1_from_to) ~= 0   and get(NAV1_hdef_dots) > -2.4999 and get(NAV1_hdef_dots) < 2.4999 then 				return true
						elseif get(MB) == 1 and get(NAV2_from_to) ~= 0   and get(NAV2_hdef_dots) > -2.4999 and get(NAV2_hdef_dots) < 2.4999 then			return true
						elseif get(MB) == 2  and get(GPS_from_to) ~= 0  and get(GPS_hdef_dots) > -2.4999 and get(GPS_hdef_dots) < 2.4999 then				return true
						else return false
						end
				else return false
				end
			end,	           
    },  
    	           

    
--CDI Deviation Bar (Outline)  arc view
	    rotated_tape {
        position = { 251 - 324/2, 238 - 324/2, 324, 324 },
        image = get(cdi_deviation_hollow),
 image = get(cdi_deviation_hollow),

        scrollX = function()
        		if get(MB) == 0 then
				return (-0.486 - (get(NAV1_hdef_dots)*0.088));
 				elseif get(MB) == 1 then
				return (-0.486 - (get(NAV2_hdef_dots)*0.088));
				elseif get(MB) == 2 then
 				return (-0.486 - (get(GPS_hdef_dots)*0.088));
  				end
    	end,
        scrollY = function()
        return (-0.375);
        end,        
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
			visible = function()
				if get(AARC) == 1 and get(ArcMode) == 0    then 
						if get(MB) == 0 and get(NAV1_from_to) ~= 0   then
							if get(NAV1_hdef_dots) <= -2.4999 then 			return true 
							elseif get(NAV1_hdef_dots) >= 2.4999 then		return true
							else return false
							end
						elseif get(MB) == 1 and get(NAV2_from_to) ~= 0   then
							if get(NAV2_hdef_dots) <= -2.4999 then 			return true 
							elseif get(NAV2_hdef_dots) >= 2.4999 then		return true
							else return false
							end
						elseif get(MB) == 2  and get(GPS_from_to) ~= 0    then
							if get(GPS_hdef_dots) <= -2.4999 then 			return true 
							elseif get(GPS_hdef_dots) >= 2.4999 then		return true
							else return false
							end
						else return false
						end
				else return false
				end
			end,	           
    },  















--LDI (Lateral Deviation Indicator)
	texture {
		position = { 186, 190, 127, 20  };
		image = get(ldi_scale);
			visible = function()
				if  get(AARC) == 1 and get(ArcMode) == 1   and get(MB) == 0 then
					if get(NAV1_from_to) ~= 0  then return true	else return false 	end

					
					
				elseif get(AARC) == 1 and get(ArcMode) == 1    and get(MB) == 1 then
					if  get(NAV2_from_to) ~= 0  then return true	else return false 	end


				
				else return false
					
				end	
			end,		
		};
		

		
		
		
	tape  {
			position = { 247 - 144/2, 195, 144, 32  };
			image = get(LDI);
			visible = function()
				if  get(AARC) == 1 and get(ArcMode) == 1    and get(MB) == 0 then
					if  get(NAV1_from_to) ~= 0 then return true	else return false 	end

					
					
				elseif get(AARC) == 1 and get(ArcMode) == 1    and get(MB) == 1 then
					if  get(NAV2_from_to) ~= 0  then return true	else return false 	end
				

				else return false
					
				end	
			end,				
	        scrollX = function()
        		if get(MB) == 0 then
				return (-0.4 - (get(NAV1_hdef_dots)*0.16));
 				elseif get(MB) == 1 then
				return (-0.4 - (get(NAV2_hdef_dots)*0.16));
				elseif get(MB) == 2 then
 				return (-0.4 - (get(GPS_hdef_dots)*0.16));
  				end
    	end,	
			};	














--Big Green Needle  Arc view (HSI mode)

	    needle {
        position = { 251 - 410/2, 238 - 410/2, 410, 410 },
        image = get(cdi_needle_arc),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 1 and  get(MB) ~= 3 and get(ArcMode) == 0 then return true


				else return false
				end
			end,	           
    },  


--Big Green Needle  Arc view (HSI mode)

	    needle {
        position = { 251 - 410/2, 238 - 410/2, 410, 410 },
        image = get(cdi_needle_arc_stub),
        angle = function()
        		if get(MB) == 0 then
            	 return (-get(HDG)+get(NAV1_OBS_Needle));
				elseif get(MB) == 1 then
				 return (-get(HDG)+get(NAV2_OBS_Needle));
				elseif get(MB) == 2 then
				 return (-get(HDG)+get(GPS_bearing));
				end
        
            end,
        
			visible = function()
				if get(AARC) == 1 and  get(MB) ~= 3 and get(ArcMode) == 1 then return true


				else return false
				end
			end,	           
    },  



--360º Compass
    needle {
        position = { 251 - 310/2, 351 -310/2, 310, 310 },
        image = get(compass),
        angle = function() 
             return (-get(HDG));
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },  






-- Arc Plane
	texture { 
        position = { 251 - 539/2, 238 -539/2, 539, 539 },
     --   image = get(compass);
			visible = function()
				if get(AARC) == 1 then return true
				else return false
				end
			end,	
	
    };
    	

--Stationary Compass Components	

-- 360º Plane
	texture { 
        position = { 270 - (73/2), 330 - (73/2), 73, 73 };
        image = get(compass_plane);
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    };
    	
	
-- Arc Plane
	texture { 
        position = { 270 - (73/2), 219 - (73/2), 73, 73 };
        image = get(compass_plane);
			visible = function()
				if get(AARC) == 1 then return true
				else return false
				end
			end,	           
    };
    	
	texture { 
        position = { 251 - (333/2), 351 - (333/2), 333, 333 };
        image = get(compass_arrows);
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    };


--Heading Bug Needle    	
    needle {
        position = { 252 - 313/2, 351 -313/2, 313, 313 },
        image = get(hdg_bug),
        angle = function() 
             return (get(HDG_Bug_Pilot)-get(HDG));
        end,
        
        visible = function()
			if get(AHDG) == 0 and get(AARC) == 0 then return true
			else return false
			end
        end,		
    },     
    
    
    --Heading Bug Needle (Selected)   	

     needle {
        position = { 252 - 313/2, 351 -313/2, 313, 313 },
        image = get(hdg_bug_selected),
        angle = function() 
             return (get(HDG_Bug_Pilot)-get(HDG));
        end,
 		visible = function()
			if get(AHDG) == 1 and get(AARC) == 0 then return true
			else return false
			end
        end,		       
        
    },  
    
 


--Heading Bug Needle   ARC  	
    needle {
        position = { 252 - 539/2, 238 -539/2, 539, 539 },
        image = get(hdg_bug_Arc),
        angle = function() 
             return (get(HDG_Bug_Pilot)-get(HDG));
        end,
        
        visible = function()
			if get(AHDG) == 0 and get(AARC) == 1 then 
			
					if 		get(HDG_Bug_Pilot) - get(HDG) > -55 and get(HDG_Bug_Pilot) - get(HDG) <= 55  then	return true 
					elseif 	get(HDG_Bug_Pilot) - get(HDG) > 305 or get(HDG_Bug_Pilot) - get(HDG) <= -305  then	return true 
					else return false end
			else return false
			end
        end,		
    },     
    
    
    
    
    
    
    --Heading Bug Needle (Selected)   	ARC

     needle {
        position = { 252 - 539/2, 238 -539/2, 539, 539 },
        image = get(hdg_bug_selected_Arc),
        angle = function() 
             return (get(HDG_Bug_Pilot)-get(HDG));
        end,
 		visible = function()
			if get(AHDG) == 1 and get(AARC) == 1 then 
					if 		get(HDG_Bug_Pilot) - get(HDG) > -55 and get(HDG_Bug_Pilot) - get(HDG) <= 55  then	return true 
					elseif 	get(HDG_Bug_Pilot) - get(HDG) > 305 or get(HDG_Bug_Pilot) - get(HDG) <= -305  then	return true 
					else return false end

			else return false
			end
        end,		       
        
    },  
    





      needle {
        position = { 251 - 313/2, 351 -313/2, 313, 313 },
        image = get(GPS_bug),
        angle = function() 
             return (get(GPS_bearing)-get(HDG));
        end,
			visible = function()
				if get(AARC) == 0 then return true
				else return false
				end
			end,	           
    },  

 
 
 
 

--Heading Indicator 
			texture { 
        position = { 219, 499, 62, 43  };
        image = get(heading_indicator)
    };

			digitstape {
		position = { 225, 506, 43, 35 };
		image = WhiteDigits;
		digits = 3;
		fractional = 0;
		
		showLeadingZeros = true,
		value = function()
			return mfloor(get(HDG));
		end;
		
	}; 






  	
	

--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________
--_______________________________________________________________________________


--overlays




 --Blue rectangle along the Right side of the display
  	rectangle {
		position = { 438, 190, 15, 340  };
	 	color = {0.0, 0.0, 0.5, 1.00},
	 		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
        end,		
	};
	  

	
	rectangle {
		position = { 190, 510, 260, 28  };
	 	color = {0.0, 0.0, 0.5, 1.0},
	 		visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
        end,		
	};

	rectangle {
		position = { 190, 435, 260, 28  };
	 	color = {0.0, 0.0, 0.5, 1.0},
	 		visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
        end,		
	};
	
	rectangle {
		position = { 190, 360, 260, 28  };
	 	color = {0.0, 0.0, 0.5, 1.0},
	 		visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
        end,		
	};

	rectangle {
		position = { 190, 285, 260, 28  };
	 	color = {0.0, 0.0, 0.5, 1.0},
	 		visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
        end,			
	};
	
	rectangle {
		position = { 190, 215, 260, 28  };
	 	color = {0.0, 0.0, 0.5, 1.0},
	 		visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
        end,		
	};
	
	
	rectangle {
		position = { 40, 166, 410, 38  };
	 	color = {0.0, 0.0, 0.0, 1.0},
	 		visible = function()
			if get(Menu) == 1 then return true
			else return false
			end
        end,		
	};
		

--TPS vertical text (Grey)

	texture {
		position = { 440, 468, 25, 72  };
		image = get(TPS_Grey);
		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
		end,
		};
		
		
--TPS vertical text (Green)

	texture {
		position = { 440, 468, 25, 72  };
		image = get(TPS_Green);
		visible = function()
			if get(Menu) == 0 and get(Bt1) == 1 then return true
			else return false
			end
		end,
		};

--MIN vertical text (Green)
	texture {
		position = { 440, 400, 25, 72  };
		image = get(MIN_Grey);
		visible = function()
			if get(Menu) == 0 and get(Bt2) == 0 then return true
			else return false
			end
		end,
		};

--MIN vertical text (Green)
	texture {
		position = { 440, 400, 25, 72  };
		image = get(MIN_Green);
		visible = function()
			if get(Menu) == 0 and get(Bt2) == 1 then return true
			else return false
			end
		end,
		};

--360 vertical text (Green)
	texture {
		position = { 440, 330, 25, 72  };
		image = get(C360Deg);
		visible = function()
			if get(Menu) == 0 and get(Bt3) == 0 then return true
			else return false
			end
		end,
		};
		
--360 vertical text (Green)
	texture {
		position = { 440, 330, 25, 72  };
		image = get(ARC);
		visible = function()
			if get(Menu) == 0 and get(Bt3) == 1 then return true
			else return false
			end
		end,
		};
				
		
	--MAP vertical text (Grey)
	texture {
		position = { 440, 260, 25, 72  };
		image = get(MAP_Grey);
		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
		end,
		};	

		
	--MAP vertical text (Green)
	texture {
		position = { 440, 260, 25, 72  };
		image = get(MAP_Green);
		visible = function()
			if get(Menu) == 0 and get(Bt4) >= 1 then return true
			else return false
			end
		end,
		};	

	--GPSS vertical text (Grey)
	texture {
		position = { 440, 195, 25, 72  };
		image = get(GPSS_Grey);
		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
		end,
		};	


	--GPSS vertical text (Green)
	texture {
		position = { 440, 195, 25, 72  };
		image = get(GPSS_Green);
		visible = function()
			if get(Menu) == 0 and get(Bt5) == 1 then return true
			
			else return false
			end
		end,
		};	


	--Map Clutter Indicator BG (Grey)
	texture {
		position = { 44, 169, 96, 32  };
		image = get(MapDetail);
		visible = function()
			if get(Menu) == 0 then return true
			
			else return false
			end
		end,
		};	




		
		
		
	--Page Indicator BG (Grey)
	texture {
		position = { 200, 155, 96, 32  };
		image = get(PgIndGry);
		visible = function()
			if get(Menu) == 1 then return true
			
			else return false
			end
		end,
		};	
	--Page 1 Indicator (Green
	texture {
		position = { 200, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 0 then return true
			
			else return false
			end
		end,
		};	
	--Page 2 Indicator (Green
	texture {
		position = { 213, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 1 then return true
			
			else return false
			end
		end,
		};	
	--Page 3 Indicator (Green
	texture {
		position = { 226, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 2 then return true
			
			else return false
			end
		end,
		};	
	--Page 4 Indicator (Green
	texture {
		position = { 239, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 3 then return true
			
			else return false
			end
		end,
		};		
	--Page 5 Indicator (Green
	texture {
		position = { 252, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 4 then return true
			
			else return false
			end
		end,
		};		
	--Page 6 Indicator (Green
	texture {
		position = { 265, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 5 then return true
			
			else return false
			end
		end,
		};			
	--Page 7 Indicator (Green
	texture {
		position = { 278, 155, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 1 and get(Page) >= 6 then return true
			
			else return false
			end
		end,
		};		
	
	
	
	--Map Detail Indicator

	texture {
		position = { 44, 169, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 0 and get(AMAP) <= 4 and get(AMAP) ~= 0 then return true
			
			else return false
			end
		end,
		};	
		
		
	texture {
		position = { 57, 169, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 0 and get(AMAP) <= 3 and get(AMAP) ~= 0  then return true
			
			else return false
			end
		end,
		};			


	texture {
		position = { 70, 169, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 0 and get(AMAP) <= 2 and get(AMAP) ~= 0  then return true
			
			else return false
			end
		end,
		};	
		
		
	texture {
		position = { 83, 169, 32, 32  };
		image = get(PgIndGrn);
		visible = function()
			if get(Menu) == 0 and get(AMAP) <= 1 and get(AMAP) ~= 0  then return true
			
			else return false
			end
		end,
		};			
	
	rectangle {
		position = { 445, 192, 2, 77  };
	 	color = {1.0, 0.0, 0.0, 1.00},
	 		visible = function()
			if get(Menu) == 0   then 
				if  get(GPS_from_to) == 0 then			return true
				
				else 														return false
				end
			else return false
			end
        end,		
	};
   
   
	
	 
  
  
   
  
  
  
  
  


























--PFD


--____________________________________________________________
	textureLit { 
	
        position = { 0, 0, 520, 1034 };
        
 --  		clip = { 0, 0, 520, 1034 }; -- { x, y, width, height }

        image = get(PFD)
    };
--____________________________________________________________    
    



--bottom bar

--|||||||||||||||||||||||||||||||||||||||||||||||||||
	texture {
		position = { 42, 130, 412, 64  };
		image = get(bottom_bar);
	 		visible = function()
			if get(Menu) == 0 then return true
			else return false
			end
        end,				
		};
--|||||||||||||||||||||||||||||||||||||||||||||||||||

--Little green "A" in a box

	texture {
		position = { 125, 526, 18, 18  };
		image = get(auto_course_icon);
	 		visible = function()
			if get(Menu) == 0 and get(MB) == 2 then return true
			else return false
			end
        end,		
		};


	texture {
		position = { 48, 167, 18, 18  };
		image = get(auto_course_icon);
	 		visible = function()
			if get(Menu) == 0  and get(MB) == 2 then return true
			else return false
			end
        end,		
		};











  
--Left Knob Image

 needle {
		position = { 82 - 128/2, 60 - 128/2, 128, 128  };
		image = get(Knob);
 		angle = function() 
             return (get(LeftKnob));
        end, 
 };
 

	--Right Knob Image
		needle {
		position = { 437 - 128/2, 60 - 128/2, 128, 128  };
		image = get(Knob);
 		angle = function() 
             return (get(RightKnob));
        end, 
 };
 
 
 










}





--Components that get overlaid on text as well
components3 = {




--Red Line crossing out Left Side	       
    	rectangle {
		position = { 152, 177, 55, 2  };
	 	color = {1.0, 0.0, 0.0, 1.00},
	 		visible = function()
			if get(Menu) == 0 and get(AARC) == 0  then 
				
					if  get(LB) == 0 and get(NAV1_from_to) == 0 then			return true
					elseif  get(LB) == 1 and get(NAV2_from_to) == 0 then			return true
					elseif  get(LB) == 2 and get(GPS_from_to) == 0 then			return true
					
					else 														return false
					end
			else return false
			end
        end,		
	};


--Red Line crossing out Middle
  
    	rectangle {
		position = { 215, 172, 88, 2  };
	 	color = {1.0, 0.0, 0.0, 1.00},
	 		visible = function()
			if get(Menu) == 0     then 
				if  get(MB) == 0 and get(NAV1_from_to) == 0 then			return true
				elseif  get(MB) == 1 and get(NAV2_from_to) == 0 then			return true
				elseif  get(MB) == 2 and get(GPS_from_to) == 0 then			return true
				
				else 														return false
				end
			else return false
			end
        end,		
	};


--Red Line crossing out right side	  
    	rectangle {
		position = { 309, 177, 55, 2  };
	 	color = {1.0, 0.0, 0.0, 1.00},
	 		visible = function()
			if get(Menu) == 0 and get(AARC) == 0     then 
				if  get(RB) == 0 and get(NAV1_from_to) == 0 then			return true
				elseif  get(RB) == 1 and get(NAV2_from_to) == 0 then			return true
				elseif  get(RB) == 2 and get(GPS_from_to) == 0 then			return true
				
				else 														return false
				end
			else return false
			end
        end,		
};
	
	
--Main Brightness Rectangle

 	rectangle2 {
 	origX = function()	 return (43); end,
 	origY = function()	 return (156); end,
 	sizeX = function()	 return (417); end,
 	sizeY = function()	 return (781); end,
 	color = {0.0, 0.0, 0.0, 1.0},
 	brt2 = function()	return (1-get(Brt)); end,

 };
	

	--Semi-transparent rectangle to denote knob click zones (Right)
 	rectangle {
		position = { 437 -66/2, 60 - 66/2, 66, 66  };
	 	color = {0.7, 0.7, 0.2, 0.30},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
		

  	rectangle {
 		position = { 437 -30/2, 60 - 30/2, 30, 30  };
	 	color = {0.9, 0.1, 0.9, 0.30},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
	
	
 
  	rectangle {

	position = { 437 -70, 60 - 50/2, 37, 50 };
	color = {0.0, 0.5, 0.5, 0.20},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
	
  	rectangle {

	position = { 437 +33, 60 - 50/2, 37, 50 };
	color = {0.0, 0.5, 0.5, 0.20},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
	
	

	--Semi-transparent rectangle to denote knob click zones (Left)
 	rectangle {
		position = { 82 -66/2, 60 - 66/2, 66, 66  };
	 	color = {0.7, 0.7, 0.2, 0.30},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
		

  	rectangle {
 		position = { 82 -30/2, 60 - 30/2, 30, 30  };
	 	color = {0.9, 0.1, 0.9, 0.30},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
	
	
 
  	rectangle {

	position = { 82 -70, 60 - 50/2, 37, 50 };
	color = {0.0, 0.5, 0.5, 0.20},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
	
  	rectangle {

	position = { 82 +33, 60 - 50/2, 37, 50 };
	color = {0.0, 0.5, 0.5, 0.20},
	 		visible = function()
			if get(Helper) == 1 then return true
			else return false
			end
        end,		
	};
	
	
	
	
	
}

### Global.gd

extends Node

# Collection of body sprites
var bodies_collection = {
	"01" : preload("res://Assets/body/char_a_p1_0bas_humn_v01.png")
}

# Collection of hair sprites
var hair_collection = {
	"none" : null,
	"01" : preload("res://Assets/hair/char_a_p1_4har_bob1_v01.png"),
	"02" : preload("res://Assets/hair/char_a_p1_4har_dap1_v01.png"),
}

# Collection of outfit sprites
var outfit_collection = {
	"01" : preload("res://Assets/outfit/char_a_p1_1out_boxr_v01.png"),
	"02" : preload("res://Assets/outfit/char_a_p1_1out_fstr_v04.png"),
	"03" : preload("res://Assets/outfit/char_a_p1_1out_pfpn_v04.png"),
	"04" : preload("res://Assets/outfit/char_a_p1_1out_undi_v01.png"),
}

# Collection of accessory sprites
var accessory_collection = {
	"none" : null,
	"01" : preload("res://Assets/accessories/char_a_p1_5hat_pfht_v04.png"),
	"02" : preload("res://Assets/accessories/char_a_p1_5hat_pnty_v04.png"),
}

# Skintones
var body_color_options = [
	Color(1, 1, 1), # Default
	Color(0.96, 0.80, 0.69), # Light Skin
	Color(0.72, 0.54, 0.39), # Medium Skin
	Color(0.45, 0.34, 0.27), # Brown Skin
]

# Hair colos
var hair_color_options = [
	Color(1, 1, 1), # Default
	Color(0.1, 0.1, 0.1), # Black
	Color(0.4, 0.2, 0.1), # Brown
	Color(0.9, 0.6, 0.2), # Blonde
	Color(0.5, 0.25, 0), # Auburn
]

# Outfit & accessory colors
var color_options = [
	Color(1, 1, 1), # Default
	Color(1, 0, 0), # Red
	Color(0, 1, 0), # Green
	Color(0, 0, 1), # Blue
	Color(0, 0, 0), # Black
	Color(1, 1, 1), # White
]

# Selected values
var selected_body = ""
var selected_hair = ""
var selected_outfit = ""
var selected_accessory = ""
var selected_body_color = ""
var selected_hair_color = ""
var selected_outfit_color = ""
var selected_accessory_color = ""
var player_name = ""














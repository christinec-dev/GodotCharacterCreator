### Body.gd

extends Node2D

# Node ref
@onready var body_sprite = $Sprite2D

# Keys
var body_keys = []
var color_keys = []
var current_body_index = 0
var current_color_index = 0

func _ready():
	set_sprite_keys()
	update_sprite()
	
# Set keys
func set_sprite_keys():
	body_keys = Global.bodies_collection.keys()

# Updates texture & modulate
func update_sprite():
	var current_sprite = body_keys[current_body_index]	
	body_sprite.texture = Global.bodies_collection[current_sprite]
	body_sprite.modulate = Global.body_color_options[current_color_index]
	
	Global.selected_body = current_sprite
	Global.selected_body_color = Global.body_color_options[current_color_index]	

# Change body
func _on_collection_button_pressed():
	current_body_index = (current_body_index + 1) % body_keys.size()
	update_sprite()

# Change skintone
func _on_color_button_pressed():
	current_color_index = (current_color_index + 1) % Global.body_color_options.size()
	update_sprite()

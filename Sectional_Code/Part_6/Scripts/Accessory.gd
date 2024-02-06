### Accessory.gd

extends Node2D

# Node ref
@onready var accessory_sprite = $Sprite2D

# Keys
var accessory_keys = []
var color_keys = []
var current_accessory_index = 0
var current_color_index = 0

func _ready():
	set_sprite_keys()
	update_sprite()
	
# Set keys
func set_sprite_keys():
	accessory_keys = Global.accessory_collection.keys()

# Updates texture & modulate
func update_sprite():
	var current_sprite = accessory_keys[current_accessory_index]	
	if current_sprite == "none":
		accessory_sprite.texture = null
	else:
		accessory_sprite.texture = Global.accessory_collection[current_sprite]
		accessory_sprite.modulate = Global.color_options[current_color_index]
	
	Global.selected_accessory = current_sprite
	Global.selected_accessory_color = Global.color_options[current_color_index]	

func _on_collection_button_pressed():
	pass

func _on_color_button_pressed():
	pass
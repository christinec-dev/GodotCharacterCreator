### Character_Creator.gd

extends Node2D

# Node ref
@onready var name_box = $CreatorScreen/ColorRect/Details/TextEdit
var player_name = ""

# Player name
func _on_text_edit_text_changed():
	player_name = name_box.text

# Change scene
func _on_confirm_button_pressed():
	Global.player_name = player_name
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

### Player.gd

extends CharacterBody2D

# Node ref
@onready var body = $Skeleton/Body
@onready var hair = $Skeleton/Hair
@onready var outfit = $Skeleton/Outfit
@onready var accessory = $Skeleton/Accessory
@onready var name_label = $Skeleton/Name
@onready var animation_player = $AnimationPlayer

var last_direction = Vector2.ZERO
const speed = 200

func _ready():
	initialize_player()
	
func _physics_process(delta):
	var direction = Vector2.ZERO
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	
	# store the last direction
	if direction != last_direction:
		last_direction = direction
		
	# update direction and velocity
	if direction.x != 0:
		velocity.x = direction.x * speed
		if direction.x < 0:
			animation_player.play("walk_left")
		else:
			animation_player.play("walk_right")
	else: 
		velocity.x = move_toward(velocity.x, 0, speed * delta)
		
	if direction.y != 0:
		velocity.y = direction.y * speed
		if direction.y < 0:
			animation_player.play("walk_up")
		else:
			animation_player.play("walk_down")
	else: 
		velocity.y = move_toward(velocity.y, 0, speed * delta)
	
	# Idle animations
	if direction == Vector2.ZERO:
		if last_direction.x < 0:
			animation_player.play("idle_left")
		if last_direction.x > 0:
			animation_player.play("idle_right")
		if last_direction.y < 0:
			animation_player.play("idle_up")
		if last_direction.y > 0:
			animation_player.play("idle_down")
		else:
			# default animation
			animation_player.play("idle_down")
			
	move_and_slide()

func initialize_player():
	# Body and color
	body.texture = Global.bodies_collection[Global.selected_body]
	body.modulate = Global.selected_body_color
	
	# Hair and color
	hair.texture = Global.hair_collection[Global.selected_hair]
	hair.modulate = Global.selected_hair_color
		
	# Outfit and color
	outfit.texture = Global.outfit_collection[Global.selected_outfit]
	outfit.modulate = Global.selected_outfit_color
	
	# Accessory and color
	accessory.texture = Global.accessory_collection[Global.selected_accessory]
	accessory.modulate = Global.selected_accessory_color
	
	# Player name
	name_label.text = Global.player_name
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

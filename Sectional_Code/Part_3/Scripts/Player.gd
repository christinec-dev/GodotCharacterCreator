### Player.gd

extends CharacterBody2D

var last_direction = Vector2.ZERO
const speed = 200

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
	else: 
		velocity.x = move_toward(velocity.x, 0, speed * delta)
		
	if direction.y != 0:
		velocity.y = direction.y * speed
	else: 
		velocity.y = move_toward(velocity.y, 0, speed * delta)
	
	move_and_slide()


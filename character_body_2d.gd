extends CharacterBody2D

@export var speed = 400

var target = position
		
func _physics_process(delta):
	var event = Input.is_action_pressed("click")
	if (event):
		target=get_global_mouse_position()
	velocity = position.direction_to(target) * speed
	look_at(target)
	if position.distance_to(target) > 10:
		move_and_slide()

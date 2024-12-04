extends CharacterBody2D

@export var speed = 100
@export var sprint_speed = 450
@onready var sprite = $AnimatedSprite2D
var target = position

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	if Input.is_action_pressed("click"):
		target = get_global_mouse_position()
	velocity.x = direction.x * speed
	velocity.y = direction.y * speed
	#fix code
	if direction.x ==0 && direction.y ==0:
		sprite.play("idle")

	if direction.x > 0:
		sprite.play("right")
		sprite.flip_h = false

	if direction.x < 0:
		sprite.play("right")
		sprite.flip_h = true

	if Input.is_action_pressed("sprint"):
		velocity = velocity.normalized() * sprint_speed
	else:
		velocity = velocity.normalized() * speed
func _physics_process(_delta):

	move_and_slide()

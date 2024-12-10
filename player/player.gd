extends CharacterBody2D

@export var speed = 60
@export var sprint_speed = 120
@onready var sprite = $AnimatedSprite2D
var target = position
var isAttacking = false
enum Directions{UP,DOWN,LEFT,RIGHT}
var facing : Directions = Directions.DOWN

func _process(_delta):
	print(isAttacking)
	var direction = Input.get_vector("left", "right", "up", "down")
	if Input.is_action_pressed("click"):
		target = get_global_mouse_position()
	velocity.x = direction.x * speed
	velocity.y = direction.y * speed
	#fix code
	if direction.x ==0 && direction.y ==0 && !isAttacking:
		sprite.play("idle")

	if direction.x ==0 && direction.y ==0 && facing == Directions.UP && !isAttacking:
		sprite.play("idle_up")

	if direction.x > 0 && !isAttacking:
		sprite.play("right")
		sprite.flip_h = false
		facing = Directions.RIGHT

	if direction.x < 0 && !isAttacking:
		sprite.play("right")
		sprite.flip_h = true
		facing = Directions.LEFT

	if direction.y < 0 && !isAttacking:
		sprite.play("up")
		sprite.flip_h = false
		facing = Directions.UP

	if direction.y > 0 && !isAttacking:
		sprite.play("down")
		sprite.flip_h = false
		facing = Directions.DOWN

	if Input.is_action_just_pressed("attack"):
		isAttacking = true
		if facing == Directions.LEFT && isAttacking :
			sprite.play("attack_right")
			sprite.flip_h = true

		if facing == Directions.RIGHT && isAttacking :
			sprite.play("attack_right")
			sprite.flip_h = false

		if facing == Directions.UP && isAttacking :
			sprite.play("attack_up")
			sprite.flip_h = false

	if Input.is_action_pressed("sprint") && !isAttacking:
		velocity = velocity.normalized() * sprint_speed
	else:
		velocity = velocity.normalized() * speed

	if Input.is_action_just_pressed("attack"):#.is_action_pressed("attack"):
		isAttacking = true
		if facing == Directions.LEFT && isAttacking :
			sprite.play("attack_right")
			sprite.flip_h= true

		elif facing == Directions.RIGHT && isAttacking :
			sprite.play("attack_right")
			sprite.flip_h= false

		elif facing == Directions.DOWN && isAttacking :
			sprite.play("attack_down")
			sprite.flip_h= false

		else:
			pass

func _physics_process(_delta):

	move_and_slide()


func _on_animated_sprite_2d_animation_finished():
	if (sprite.animation == "attack_right"):
		isAttacking = false
		sprite.play("idle")

	elif (sprite.animation == "attack_down"):
		isAttacking = false
		sprite.play("idle")

	elif (sprite.animation == "attack_up"):
		isAttacking = false
		sprite.play("idle_up")

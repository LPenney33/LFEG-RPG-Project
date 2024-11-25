extends CharacterBody2D

@export var speed = 50
@export var sprint_speed = 100
@onready var sprite = $AnimatedSprite2D
var target = position
var isAttacking =false
enum Directions{UP,DOWN, LEFT,RIGHT}
var facing: Directions = Directions.DOWN
####continue later

func _process(_delta):
	print(isAttacking)
	var direction = Input.get_vector("left", "right", "up", "down")
	if Input.is_action_pressed("click"):
		target = get_global_mouse_position()
	velocity.x = direction.x * speed
	velocity.y = direction.y * speed
	#fix code
	if direction.x ==0 && direction.y ==0 && isAttacking == false:
		sprite.play("idle")
	
	if direction.x > 0 && isAttacking== false:
		sprite.play("right")
		sprite.flip_h = false
		facing = Directions.RIGHT

	if direction.x < 0 && isAttacking == false:
		sprite.play("right")
		sprite.flip_h = true
		facing = Directions.LEFT

	if Input.is_action_pressed("sprint") && !isAttacking:
		velocity = velocity.normalized() * sprint_speed
	else:
		velocity = velocity.normalized() * speed
	
	if Input.is_action_just_pressed("attack"):#.is_action_pressed("attack"):
		isAttacking = true
		if facing == Directions.LEFT && isAttacking :
			sprite.play("attack")
			sprite.flip_h= true
	
		if facing == Directions.RIGHT && isAttacking :
			sprite.play("attack")
			sprite.flip_h= false
	
func _physics_process(_delta):

	move_and_slide()


func _on_animated_sprite_2d_animation_finished() -> void:
	if (sprite.animation == "attack"):
		isAttacking = false
		sprite.play("idle")

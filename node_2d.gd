extends Node2D
class_name Enemy

@onready var detection_range = $Range
@export var _Enemy_SPEED = 55





#func _physics_process(_delta):
	#var bodies = detection_range.get_overlapping_bodies()
	#for body in bodies:
		#look_at(body.global_position)
# Called when the node enters the scene
# Called when the node enters the scene tree for the first time.

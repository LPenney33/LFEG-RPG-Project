extends Node2D


func _on_hoa_1inside_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/hoa_1_main_hall.tscn")


func _on_househoa_1_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/house_outside.tscn")

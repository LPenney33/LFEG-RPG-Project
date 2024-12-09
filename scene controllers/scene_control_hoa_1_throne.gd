extends Node2D


func _on_hoa_1hall_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/hoa_1_main_hall.tscn")

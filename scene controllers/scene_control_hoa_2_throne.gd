extends Node2D


func _on_hoa_2hall_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/hoa_2_main_hall.tscn")

extends Node2D



func _on_hoa_1_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/hoa_1.tscn")


func _on_hoa_2_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/hoa_2.tscn")


func _on_house_teleport_child_entered_tree(body):
	if body.name == ("player"):
		get_tree().change_scene_to_file("res://scenes/house_inside.tscn")

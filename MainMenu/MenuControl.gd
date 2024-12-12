extends Node2D


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/house_outside.tscn")

func _on_quit_button_pressed():
	print("You’ve turned your back on an opportunity to make a difference. The villagers needed someone to bring peace, to end the years of fighting and suffering, and you—you—chose to walk away. Do you feel no responsibility? No sense of duty to help those in need? Instead of stepping up, you’ve abandoned them to their struggles, their fears, their endless conflict. What kind of person does that make you? The kings will keep fighting, the villages will keep suffering, and all because you didn’t have the courage to try. You’ve let them all down. Is this the legacy you want to leave behind? A legacy of selfishness, of turning away when you were needed most?\n\nHow disappointed your Mother would be if she wasn't a disappointment herself.\n\nShame Shame.\n")
	get_tree().quit()

extends Control


##MainMenucontrol reference
@onready var mainControl = get_node("MainMenu")
##ToggleButton reference
@onready var toggleButton = get_node("HamburgerButton")
##MainMenuBackButton reference
@onready var mainBackButton = get_node("MainMenu/BackButton")
##MainMenuMoreButton reference
@onready var moreButton = get_node("MainMenu/VBoxContainer/BackButton")
##ExtendedMenucontrol reference
@onready var xtendmenu = get_node("ExtendedMenu")


#Hamburger Menu Toggling Function
func _on_hamburger_button_pressed():
	#Show the mainmenu and  hide the toggle button
	toggleButton.visible = false
	mainControl.visible = true

#Main Menu Back Button Function
func _on_back_button_pressed():
	#If the MainMenu is visible, hide it and show the toggle button
	if mainControl.visible == true:
		mainControl.visible = false
		toggleButton.visible = true







#Mor Menu Toggling Button Function
func _on_more_menu_button_pressed():
	mainControl.visible = false
	xtendmenu.visible = true

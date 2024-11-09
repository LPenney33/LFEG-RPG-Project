extends Control


##############   REFERENCES   ################

##MainMenucontrol reference
@onready var mainMenuControl = get_node("MainMenu")
##ToggleButton reference
@onready var toggleButton = get_node("HamburgerButton")
##MainMenuBackButton reference
@onready var mainBackButton = get_node("MainMenu/BackButton")
##MainMenuMoreButton reference
@onready var moreButton = get_node("MainMenu/VBoxContainer/BackButton")
##ExtendedMenucontrol reference
@onready var xTendMenuControl = get_node("ExtendedMenu")



##############   TOGGLING   ################

#Hamburger Menu Toggling Function
func _on_hamburger_button_pressed():
	#Show the mainmenu and  hide the toggle button
	toggleButton.visible = false
	mainMenuControl.visible = true


##############   MAIN MENU   ################

#Main Menu Back Button Function
func _on_back_button_pressed():
	#If the MainMenu is visible, hide it and show the toggle button
	if mainMenuControl.visible == true:
		mainMenuControl.visible = false
		toggleButton.visible = true
	

##############   EXTENDED MENU   ################

func _on_extended_back_button_pressed():
	#If the MoreMenu is visible, hide it and show the Main Menu
	if xTendMenuControl.visible == true:
		mainMenuControl.visible = true
		xTendMenuControl.visible = false

extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Options/StartButton.grab_focus()
	
	if !OS.has_feature("pc"):
		$Options/Fullscreen.hide()
		$Options/Quit.hide()

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Levels/Level01.tscn")


func _on_credit_pressed():
	get_tree().change_scene_to_file("res://UI/credits.tscn")

func _on_quit_pressed():
		get_tree().quit()
		

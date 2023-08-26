extends Node2D
		
@export var level_num = 0
		
func _ready():
	$HUD.level(level_num)
	set_coins_label()
	for coin in $Coins.get_children(): 
		coin.coin_collected.connect(_on_coins_collected)
		
func _on_coins_collected():
	set_coins_label() 
		
func set_coins_label():
	$HUD.coins(Global.coins_collected) 
		
func _on_door_player_entered(level):
		get_tree().change_scene_to_file(level)
		
func _input(event):
	if event.is_action_pressed("Reset Level"):
		get_tree().reload_current_scene.call_deferred()

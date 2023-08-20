extends Area2D

signal coin_collected

func _on_body_entered(body):
	if body.name == "Player":
		Global.coins_collected += 1
		coin_collected.emit()
		$CollectedSFX.play()
		hide()
		
	
func _on_collected_sfx_finished():
	queue_free()

extends Node2D

class_name DamageablePlayer

signal playerdead

@export var health : float = 100 :
	get:
		return health
	set(value):
		SignalBus.emit_signal("on_player_health_changed", get_parent(), value - health)
		health = value

func hit(damage : int):
	health -= damage

	if health <= 0:
		emit_signal("playerdead")
		get_tree().paused = true
		get_tree().change_scene_to_file("res://UI/GameOver.tscn")
		get_parent().queue_free()


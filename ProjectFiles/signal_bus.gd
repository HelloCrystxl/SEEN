extends Node

signal on_health_changed(node: Node, amount_changed: int)
signal on_player_health_changed(node: Node, amount_changed: int)

const MAX_HEALTH = 5
var health = MAX_HEALTH


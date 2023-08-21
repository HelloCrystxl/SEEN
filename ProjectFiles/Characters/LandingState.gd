extends State

@export var landing_animation_name : String = "jump_end"
@export var ground_state : State

func _on_animation_tree_animation_finished(anim_name):
	if(anim_name == landing_animation_name):
		next_state = ground_state

		
func _on_inturrupt_state(new_state):
	pass # Replace with function body. ("inturrupt_state", air_state)

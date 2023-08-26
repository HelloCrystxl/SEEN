extends State

class_name AirState

@export var landing_state : State
@export var double_jump_velocity : float = -150
@export var double_jump_animation : String = "double_jump"
@export var landing_animation : String = "landing"
@export var attack1_name : String = "attack1"
@export var attack_node : String = "attack1"
@export var attack_state : State

var has_double_jumped = false

func state_process(delta):
	if(character.is_on_floor()):
		next_state = landing_state
		
func state_input(event : InputEvent):
	if(event.is_action_pressed("jump") && !has_double_jumped):
		double_jump()
	if(event.is_action_pressed("attack") && !character.is_on_floor()):
		emit_signal("inturrupt_state", attack_state)
		playback.travel(attack_node)
	

func on_exit():
	if(next_state == landing_state):
		playback.travel(landing_animation)
		has_double_jumped = false

func double_jump():
	character.velocity.y = double_jump_velocity
	playback.travel(double_jump_animation)
	has_double_jumped = true


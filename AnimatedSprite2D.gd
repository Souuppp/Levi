extends CharacterBody2D


const SPEED = 75.0
const JUMP_VELOCITY = -400.0
@onready var sprite = $sprite
@onready var player = get_tree().get_first_node_in_group("Player")


func _physics_process(delta):
	var direction_to_player = global_position.direction_to(player.global_position)
	velocity = direction_to_player * SPEED
	
	if velocity.x > 0:
		sprite.flip_h = true
	else:
		sprite.flip_h = false

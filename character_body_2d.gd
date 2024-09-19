extends CharacterBody2D

@export var change = false
@export var SPEED = 50
@export var ACCELERATION = 20.0
@export var FRICTION = 10.0
enum state {idle , up , right , down , death}
@onready var Player = "res://scenes/player.tscn"

var anim_state = state.idle
var playerDetectionRange = 200
var follow
@onready var animator = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var player = get_tree().get_first_node_in_group("Player")


func update_animation(direction):
	if direction.x > 0:
		animator.flip_h = false

func _physics_process(delta: float) -> void:
	if change == true:
			if Input.is_action_pressed("assassinate"): 
				queue_free()
			else:
				pass




func _on_killzone_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		change = true
	else:
		change = false

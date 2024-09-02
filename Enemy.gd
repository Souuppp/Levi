extends CharacterBody2D


@export var SPEED = 50
@export var ACCELERATION = 20.0
@export var FRICTION = 10.0
enum state {idle , up , right , down , death}
@onready var Player = "res://scenes/player.tscn"

var anim_state = state.idle
var playerDetectionRange = 200
var follow
@onready var animator = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var player = get_tree().get_first_node_in_group("Player")


func update_animation(direction):
	if direction.x > 0:
		animator.flip_h = false
	
	if direction.x < 0:
		animator.flip_h = true
	match anim_state:
		state.idle:
			animation_player.play("idle")
		state.right:
			animation_player.play("right")
		state.down:
			animation_player.play("down")
		state.up:
			animation_player.play("up")
		state.death:
			animation_player.play("death")



func _on_area_2d_area_shape_entered():
	if $CollisionShape2D.is_in_group():
		get_tree().change_scene_to_file("res://desynchronised.tscn")

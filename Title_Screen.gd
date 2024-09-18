extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_pressed("select"):
		load("res://scenes/world.tscn")


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/world2.tscn")


func _on_quit_pressed():
	get_tree().quit()

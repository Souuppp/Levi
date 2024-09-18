extends Node2D




func _on_enter_door_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://inside.tscn")

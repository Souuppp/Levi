extends Node2D

func _on_enter_door_body_entered():
	get_tree().change_scene_to_file("res://inside.tscn")



func _on_area_2d_area_entered():
	print("Desynchronised")

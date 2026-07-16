extends Node2D

func _on_yggrdrasil_pressed() -> void:
	Global.characterAndWeapon = 1
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")

func _on_zephyra_pressed() -> void:
	Global.characterAndWeapon = 2
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")

func _on_mark_pressed() -> void:
	Global.characterAndWeapon = 3
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")

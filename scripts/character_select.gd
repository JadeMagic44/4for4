extends Node2D

func _on_yggrdrasil_pressed() -> void:
	#Global.characterAndWeapon = 1
	Global.playerArt = Loaded.Yggdrasil.character
	Global.bulletArt = Loaded.Yggdrasil.attack
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")

func _on_zephyra_pressed() -> void:
	#Global.characterAndWeapon = 2
	Global.playerArt = Loaded.Zephyra.character
	Global.bulletArt = Loaded.Zephyra.attack
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")

func _on_mark_pressed() -> void:
	Global.playerArt = Loaded.Mark.character
	Global.bulletArt = Loaded.Mark.attack
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")

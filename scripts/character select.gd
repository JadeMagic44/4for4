extends Control

func _on_yggdrasil_pressed() -> void:
	Global.playerArt = Loaded.Yggdrasil.character
	Global.bulletArt = Loaded.Yggdrasil.attack
	get_tree().change_scene_to_file("res://scenes/levels/test_level.tscn")

func _on_zephyra_pressed() -> void:
	Global.playerArt = Loaded.Zephyra.character
	Global.bulletArt = Loaded.Zephyra.attack
	get_tree().change_scene_to_file("res://scenes/levels/test_level.tscn")

func _on_mark_pressed() -> void:
	Global.playerArt = Loaded.Mark.character
	Global.bulletArt = Loaded.Mark.attack
	get_tree().change_scene_to_file("res://scenes/levels/test_level.tscn")

func _on_taylor_pressed() -> void:
	Global.playerArt = Loaded.Taylor.character
	Global.bulletArt = Loaded.Taylor.attack
	get_tree().change_scene_to_file("res://scenes/levels/test_level.tscn")

func _on_lyla_pressed() -> void:
	Global.playerArt = Loaded.Lyla.character
	Global.bulletArt = Loaded.Lyla.attack
	get_tree().change_scene_to_file("res://scenes/levels/test_level.tscn")

extends Node

func mode(mode = null):
	if Input.is_action_just_pressed("test"):
		match mode:
			"select":
				get_tree().change_scene_to_file("res://scenes/Character select.tscn")
			"attack":
				Global.take_damage(Global.playerHealth, Global.damage_calc(10, 15, 10))
	if mode == null:
		print("debug")

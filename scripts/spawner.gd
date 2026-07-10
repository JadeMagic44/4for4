extends Node2D

@onready var timer: Timer = $Timer

func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	#var rng = randi_range(1, 100)
	var melee = Loaded.enemyMelee.instantiate()
	Global.spawn_location(150, 600, melee)
	add_child(melee)

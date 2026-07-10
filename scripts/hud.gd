extends Control
@onready var health: Label = $health

func _process(delta: float) -> void:
	health.text = str(int(Global.playerHealth))

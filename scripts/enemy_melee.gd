extends CharacterBody2D

var speed = 50.0

func _ready() -> void:
	Global.enemyBody = self

func _process(_delta: float) -> void:
	follow()
	move_and_slide()

func follow():
	var dir = (Global.playerBody.position - position).normalized()
	velocity = dir*speed

func enemyMelee():
	pass

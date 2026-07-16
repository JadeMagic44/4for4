extends Node2D
@onready var bullet: CharacterBody2D = $"."
@onready var onScreen: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D

var speed = 150
var health = Global.playerHealth
@onready var sprite: Sprite2D = $Sprite2D
@onready var collision: CollisionShape2D = $CollisionShape2D
var weapon = Global.characterAndWeapon

func _ready() -> void:
	sprite.texture = Global.bulletArt
	sprite.flip_h = false

func _process(delta: float) -> void:
	position += transform.x*speed*delta
	if sprite.texture == Loaded.Yggdrasil.attack:
		sprite.rotation += 1
	elif sprite.texture == Loaded.Mark.attack:
		sprite.rotation -= 1
	
	

func Weapon():
	if sprite.texture == Loaded.YggdrasilAttack:
		spriteScale(0.25, 0.25)
	elif sprite.texture == Loaded.ZephyraAttack:
		spriteScale(0.25, 0.25)
		#sprite.rotate(rad_to_deg(90))
	elif sprite.texture == Loaded.MarkAttack:
		spriteScale(0.17, 0.17)

func spriteScale(w: float, h: float):
	sprite.scale.x = w
	sprite.scale.y = h

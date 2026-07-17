extends CharacterBody2D

#variables
var speed = 7.0
var input : Vector2
var hurt : bool = false
var health 
var cooldown : bool = false
@onready var Player: CharacterBody2D = $"."
@onready var aim: Sprite2D = $aim
@onready var collision: CollisionShape2D = $CollisionShape2D
@onready var sprite: Sprite2D = $Sprite2D
@onready var bullet_cooldown: Timer = $"bullet cooldown"

func _ready():
	sprite.texture = Global.playerArt
	Global.playerBody = self

func _process(_delta):
	player()
	Debug.mode("select")
	health = Global.playerHealth
	var playerInput = get_input()
	global_position += playerInput*speed
	aim.look_at(get_global_mouse_position())
	move_and_slide()
	
	if hurt:
		Global.take_damage(health, Global.damage_calc(5, 15, 10))
		print(health)
	
func spriteScale(a: float, b: float):
	sprite.scale.x = a
	sprite.scale.y = b
func collisonSize(r: float, h: float):
	collision.shape.radius = r
	collision.shape.height = h

func player():
	if sprite.texture == Loaded.placeholder.character:
		spriteScale(0.25, 0.25)
		collisonSize(164.0, 408.0)
	elif sprite.texture == Loaded.Yggdrasil.character:
		spriteScale(0.2, 0.208)
		collisonSize(96.0, 368.0)
	elif sprite.texture == Loaded.Zephyra.character:
		pass
	elif sprite.texture == Loaded.Mark.character:
		collisonSize(100.0, 424.0)
		spriteScale(0.25, 0.25)
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("left_mouse"):
		shoot()

func Melee():
	pass

func shoot():
	if cooldown == false:
		cooldown = true
		var bullet = Loaded.bullet.instantiate()
		add_child(bullet)
		bullet.position = Player.position
		bullet.rotation = aim.rotation
		bullet_cooldown.start()

func get_input():
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	return input.normalized()


func _on_bullet_cooldown_timeout() -> void:
	cooldown = false


func _on_hitbox_area_entered(area: Area2D) -> void:
	if area.has_method("MeleeEnemyHitBox"):
		hurt = true


func _on_hitbox_area_exited(area: Area2D) -> void:
	if area.has_method("MeleeEnemyHitBox"):
		hurt = false

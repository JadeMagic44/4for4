extends Node
class Art:
	var attack
	var character
	
	func _init(atk, cha):
		attack = atk
		character = cha

# bullet art
var placeholder = Art.new(preload("res://art/icon.svg"), preload("res://art/characters/placeholder.png"))
var Yggdrasil = Art.new(preload("res://art/attack/melee/Forrest_Tree-attack.png"), preload("res://art/characters/Forrest_character.png"))
var Zephyra = Art.new(preload("res://art/attack/ranged/Zephyra_attack.png"), preload("res://art/characters/Zephyra_character.png"))
var Mark = Art.new(preload("res://art/attack/ranged/MarkAttack.png"), preload("res://art/characters/Mark.png"))

#scenes
var bullet = preload("res://scenes/bullet.tscn")
var enemyMelee = preload("res://scenes/enemy_melee.tscn")

extends Node
class Art:
	var attack
	var character
	
	func _init(atk, cha):
		attack = atk
		character = cha

# bullet art
var placeholder = Art.new(preload("res://art/characters/placeholder/icon.svg"), preload("res://art/characters/placeholder/placeholder.png"))
var Yggdrasil = Art.new(preload("res://art/characters/Yggrasil/Forrest_Tree-attack.png"), preload("res://art/characters/Yggrasil/Forrest_character.png"))
var Zephyra = Art.new(preload("res://art/characters/Zephyra/Zephyra_attack.png"), preload("res://art/characters/Zephyra/Zephyra_character.png"))
var Mark = Art.new(preload("res://art/characters/Mark/MarkAttack.png"), preload("res://art/characters/Mark/Mark.png"))
var Taylor = Art.new(preload("res://art/characters/Taylor/TaylorAttack.png"), preload("res://art/characters/Taylor/Taylor.png"))
var Lyla = Art.new(preload("res://art/characters/Lyla/LylaAttack.png"), preload("res://art/characters/Lyla/Lyla.png"))

#let = preload("res://scenes/bullet.tscn")
var bullet = preload("res://scenes/player/bullet.tscn")
var enemyMelee = preload("res://scenes/enemy_melee.tscn")

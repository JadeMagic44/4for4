extends Node

# character numbers
# 1 is Yggrdrasil
# 2 is Zephyra
# 3 is Mark(the mug thrower)

var playerHealth : float = 100
var enemyHealth : float = 50
var playerArt
var bulletArt
var playerBody : CharacterBody2D
var enemyBody : CharacterBody2D
var sixbynine = 1.777777777777778 # 16/9


func damage_calc(min_dmg : int, max_dmg : int, critChance : int):
	var damage = randi_range(min_dmg, max_dmg)
	var crit = randi_range(1, 100)
	if crit <= critChance:
		damage *= 2
		return damage
	else:
		return damage

func take_damage(health : int, dmg : int):
	health -= dmg
	if health <= 0:
		pass
	else:
		return health

func spawn_location(playerDistance, itemDistance, entity):
	# create bounding boxes, playerDistance is the no spawn zone, while itemDistance is the spawn zone
	var playerx = Vector2(playerBody.position.x - playerDistance, playerBody.position.x + playerDistance)
	var playery = Vector2(playerBody.position.y - playerDistance / sixbynine, playerBody.position.y + playerDistance / sixbynine) # compensate 16:9 screen size
	var itemx = Vector2(playerBody.position.x - itemDistance, playerBody.position.x + itemDistance)
	var itemy = Vector2(playerBody.position.y - itemDistance / sixbynine, playerBody.position.y + itemDistance / sixbynine)
	# Randomize entity position in item bounding box (itemDistance)
	entity.position = Vector2(randi_range(itemx.x, itemx.y), randi_range(itemy.x, itemy.y))
	# Check if entity position is within player bounding box, if it is, reRandomize position within item bounding box
	# and check again
	while entity.position.x > playerx.x and entity.position.x < playerx.y and entity.position.y > playery.x and entity.position.y < playery.y:
		entity.position = Vector2(randi_range(itemx.x, itemx.y), randi_range(itemy.x, itemy.y))

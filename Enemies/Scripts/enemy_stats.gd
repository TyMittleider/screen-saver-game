extends Node
class_name EnemyStats

@export var data: EnemyData

var current_health: float

# Called when the node enters the scene tree for the first time.
func _ready():
	if data:
		current_health = data.max_health
	
func get_damage() -> float:
	return data.damage if data else 0.0

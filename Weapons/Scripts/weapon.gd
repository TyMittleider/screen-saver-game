extends Node2D
class_name Weapon

@export var data : WeaponData
@export var enabled: bool = true

var attack_timer: Timer
var level: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func setup_timer():
	attack_timer = Timer.new()
	add_child(attack_timer)
	if data:
		attack_timer.wait_time = data.attack_rate
		attack_timer.timeout.connect(_on_attack_timer_timeout)
		attack_timer.start()
	
func _on_attack_timer_timeout():
	if enabled:
		attack()

func attack():
	pass
	
func level_up():
	level += 1

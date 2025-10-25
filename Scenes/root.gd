extends Node

@export var enemy_scene: PackedScene
var enemies

# Called when the node enters the scene tree for the first time.
func _ready():
	$spawn_timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_timer_timeout():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(1,1)
	add_child(enemy)

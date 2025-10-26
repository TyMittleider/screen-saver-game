extends Node

@export var enemy_scene: PackedScene
@export var cat_enemy: PackedScene
@export var blank_guy: PackedScene

var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport().size
	$spawn_timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_spawn_timer_timeout():
	var player = find_child('player', true, false)
	
	var enemy = enemy_scene.instantiate()
	var enemy2 = cat_enemy.instantiate()
	var blank = blank_guy.instantiate()
	
	var spawn_position = Vector2(randf_range(0, screen_size.x), randf_range(0, screen_size.y))
	
	enemy.position = Vector2(randf_range(0, screen_size.x), randf_range(0, screen_size.y))
	enemy2.position = Vector2(randf_range(0, screen_size.x), randf_range(0, screen_size.y))
	blank.position = Vector2(randf_range(0, screen_size.x), randf_range(0, screen_size.y))
	
	#add_child(enemy)
	#add_child(enemy2)
	add_child(blank)

extends RigidBody2D

@onready var stats: EnemyStats = $EnemyStats

var screen_size
var velocity

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	velocity = Vector2(1,1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var player = get_tree().root.find_child('player', true, false)
	var direction = (player.position - position).normalized()
	apply_force(direction * stats.data.speed)

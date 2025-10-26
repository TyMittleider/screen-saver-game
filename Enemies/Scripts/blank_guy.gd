extends RigidBody2D

const FRICTION = 25

@onready var stats: EnemyStats = $EnemyStats

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var friction_force = calc_friction(linear_velocity)
	apply_force(friction_force)


func _on_timer_timeout():
	var player = get_tree().root.find_child('player', true, false)
	var direction = (player.position - position).normalized()
	apply_force(direction * stats.data.speed)


func calc_friction(velocity):
	var f_x
	var f_y
	if velocity.x < 0:
		f_x = FRICTION
	else:
		f_x = -FRICTION
	if velocity.y < 0:
		f_y = FRICTION
	else:
		f_y = -FRICTION
	return Vector2(f_x, f_y)

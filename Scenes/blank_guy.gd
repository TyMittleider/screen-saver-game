extends RigidBody2D

const FRICTION = 25
const SPEED = 10000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var f_x
	var f_y
	if linear_velocity.x < 0:
		f_x = FRICTION
	else:
		f_x = -FRICTION
	if linear_velocity.y < 0:
		f_y = FRICTION
	else:
		f_y = -FRICTION
	var friction_force = Vector2(f_x, f_y)
	apply_force(friction_force)


func _on_timer_timeout():
	var player = get_tree().root.find_child('player', true, false)
	var direction = (player.position - position).normalized()
	apply_force(direction * SPEED)

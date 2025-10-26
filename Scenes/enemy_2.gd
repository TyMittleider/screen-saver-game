extends CharacterBody2D


const SPEED = 50.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta):
	var player = get_tree().root.find_child('player', true, false)
	var direction = (player.position - position).normalized()
	velocity = direction * SPEED
	move_and_slide()

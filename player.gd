extends Area2D

@export var speed = 200
var screen_size
var velocity

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	velocity = Vector2(randf_range(-100, 100), randf_range(-100, 100))
	position = Vector2(screen_size.x / 2, screen_size.y / 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta
	if position.x > screen_size.x or position.x < 0:
		velocity.x = -velocity.x
	if position.y > screen_size.y or position.y < 0:
		velocity.y = -velocity.y
	#position = position.clamp(Vector2.ZERO, screen_size)

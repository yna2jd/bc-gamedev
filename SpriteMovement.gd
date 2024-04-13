extends CharacterBody2D
@export var speed: float;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("Move Right"):
		velocity.x = 50;
	if Input.is_action_pressed("Move Left"):
		velocity.x = -50;
	position += velocity * delta;

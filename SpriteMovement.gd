extends CharacterBody2D
@export var speed: float;
const accel: float = 200;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func  _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("Move Right"):
		velocity.x = 50
	if Input.is_action_pressed("Move Left"):
		velocity.x = -50
	if(not is_on_floor()):
		velocity.y += accel * delta;
	elif(Input.is_action_just_pressed("Jump")):
		velocity.y -= 300;
	
	move_and_collide(Vector2(velocity.x/abs(velocity.x+1), 1)) # Move down 1 pixel per physics frame
	#move_and_slide()

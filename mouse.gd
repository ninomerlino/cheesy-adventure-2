extends CharacterBody2D

@export var base_speed = 10000

var speed
# Called when the node enters the scene tree for the first time.
func _ready():
	speed = base_speed
	$"AnimatedSprite2D".play("idle")
	
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var movement_vector = Input.get_vector("left","right","up","down")
	if movement_vector.x != 0 or movement_vector.y != 0:
		rotation = movement_vector.angle() + PI / 2 
	velocity = movement_vector*delta*speed
	move_and_slide()
	pass

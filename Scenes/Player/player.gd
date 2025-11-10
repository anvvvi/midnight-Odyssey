extends CharacterBody2D

var direction: Vector2

var speed = 500

var health = 5

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	direction = Input.get_vector("Move_Left","Move_Right","Move_Up","Move_Down")
	velocity = speed * direction
	if (move_and_slide()):
		print("Collided")
		health -= 1
	else:
		print("NotColliding")  

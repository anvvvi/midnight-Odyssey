extends CharacterBody2D

var direction: Vector2

var speed = 300

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	direction = Input.get_vector("Move_Left","Move_Right","Move_Up","Move_Down")
	velocity = speed * direction
	move_and_slide()

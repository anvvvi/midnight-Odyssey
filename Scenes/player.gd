extends CharacterBody2D

var direction: Vector2

var speed = 300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	direction = Input.get_vector("Move_Left","Move_Right","Move_Up","Move_Down")
	velocity = speed * direction
	move_and_slide()

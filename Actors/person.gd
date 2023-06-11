extends RigidBody2D

class_name Person

var teleport := false
var teleport_position : Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_location(new_position : Vector2):
	teleport_position = new_position
	teleport = true

# this will constantly be running, basically the rigidbody version of process
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if teleport:
		state.linear_velocity = Vector2.ZERO
		state.angular_velocity = 0.0
		state.transform.origin = teleport_position
		teleport = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

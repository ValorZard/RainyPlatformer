extends StaticBody2D

class_name Scoop
# Scoops up people and put them in the hat
@export var spawn_point : Node2D
@export var player : Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	#self.global_position = player.global_position
	pass

## this will constantly be running, basically the rigidbody version of process
#func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
#	state.linear_velocity = Vector2.ZERO
#	state.angular_velocity = 0.0
#	state.transform.origin = player.global_position
#	print('lolo')


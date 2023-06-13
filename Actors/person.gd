extends RigidBody2D

class_name Person

var teleport := false
var teleport_position : Vector2
var player : Player

var max_speed = 100

@export var can_report := false

# Called when the node enters the scene tree for the first time.
func _ready():
	self.contact_monitor = true
	self.max_contacts_reported = 4
	self.connect("body_entered", _body_entered)
	self.connect("body_exited", _body_exited)
	pass # Replace with function body.

func set_location(new_position : Vector2, player : Player):
	teleport_position = new_position
	teleport = true
	self.player = player

# this will constantly be running, basically the rigidbody version of process
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if teleport:
		state.linear_velocity = player.velocity
		state.angular_velocity = 0.0
		state.transform.origin = teleport_position
		teleport = false
	if abs(get_linear_velocity().length()) > max_speed:
		var new_speed = get_linear_velocity().normalized()
		new_speed *= max_speed
		set_linear_velocity(new_speed)

func _body_entered(body):
	if can_report and !(body is Scoop):
		print(body.name + " entered by " + self.name + " with speed " + str(self.linear_velocity))
	
func _body_exited(body):
	if can_report and !(body is Scoop):
		print(body.name + " exited by " + self.name + " with speed " + str(self.linear_velocity))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Area2D

@export var scoop : Scoop
@export var player : Player

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("body_entered", pick_up_person)

func pick_up_person(person):
	print(person.name)
	if person is Person:
		# put the person in the scoop
		person.global_position = scoop.spawn_point.global_position
		person.linear_velocity = Vector2.ZERO
		person.angular_velocity = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Area2D

@export var scoop : Scoop
@export var player : Player

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("body_entered", pick_up_person)

func pick_up_person(person):
	#print(person.name)
	if person is Person:
		# put the person in the scoop
		person.set_location(scoop.spawn_point.global_position, player.velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


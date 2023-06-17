extends Area2D

@export var player : Player
@export var person_card: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("body_entered", pick_up_person)

func pick_up_person(person):
	#print(person.name)
	if person is Person:
		# put the person in the scoop
		# person.set_location(scoop.spawn_point.global_position, player)
		Deltascript.play_event(load("res://Dialogue/Events/event_" + str(person.person_data.name) + "_C.res"))
		player.people_array.append(person.person_data)
		var instance = person_card.instantiate()
		player.person_dex.add_card(instance)
		person.queue_free()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


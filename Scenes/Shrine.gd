extends Area2D

class_name Shrine

var ended = false

func _ready():
	self.connect("body_entered", pick_up_person)

func pick_up_person(player):
	# print(person.name)
	if player is Player:
		# print("shrine")
		# put the person in the scoop
		Gamemanager.score += player.people_array.size()
		$scoretext.text = "score" + str(Gamemanager.score)
		player.people_array.clear()

func _process(delta):
	if !ended:
		if Gamemanager.score == 7:
			Deltascript.play_event(load("res://Dialogue/Events/ending_event_C.res"))
			ended = true


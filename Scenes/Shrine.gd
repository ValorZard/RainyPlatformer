extends Area2D



func _ready():
	self.connect("body_entered", pick_up_person)

func pick_up_person(person):
	# print(person.name)
	if person is Person:
		# print("shrine")
		# put the person in the scoop
		person.queue_free()
		Gamemanager.score += 1
		$scoretext.text = "score" + str(Gamemanager.score)


extends Area2D

class_name Shrine

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


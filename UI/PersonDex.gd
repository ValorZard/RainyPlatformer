extends Control

class_name PersonDex
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_card(person_card: PersonCard):
	$Panel/GridContainer.add_child(person_card)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

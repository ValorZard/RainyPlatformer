extends Control

@export var person_data : PersonData

# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/VBoxContainer/NameLabel.text = person_data.name
	$Panel/VBoxContainer/DescriptionLabel.text = person_data.description
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Control

class_name DialogueBox

signal dialogue_closed

var name_label : String
var word_text : String
# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true
	$Panel/VBoxContainer/Name.text = name_label
	$Panel/VBoxContainer/Dialogue.text = word_text
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("jump"):
		get_tree().paused = false
		dialogue_closed.emit()
		queue_free()
	pass

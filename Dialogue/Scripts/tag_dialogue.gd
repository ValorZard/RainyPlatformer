extends DeltascriptTagDialogueBase

var dialogue_prefab = preload("res://UI/DialogueBox.tscn")

func _line_start():
	var current_dialogue = dialogue_prefab.instantiate();
	current_dialogue.word_text = line_text
	current_dialogue.name_label = event_player.get_event_metadata("Speaker")
	
	tree_context.get_root().add_child.call_deferred(current_dialogue)

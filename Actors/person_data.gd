extends Resource

class_name PersonData

@export var name : String
@export var description : String

func _init(p_name : String = "", p_description : String = ""):
	name = p_name
	description = p_description

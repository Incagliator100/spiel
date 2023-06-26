extends Node2D


func _on_outdoor_pressed():
		get_node("..").set_current_level("level_1", false, 0, 0)

func save():
	var save_dict = {
		"filename" : get_scene_file_path(),
		"parent" : get_parent().get_path()
	}
	return save_dict

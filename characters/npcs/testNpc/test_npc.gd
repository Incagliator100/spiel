extends CharacterBody2D

#Jonas S
var mouseTouch: bool = false
var areaEntered: bool = false
#Jonas S
func _on_area_2d_input_event(_viewport, _event, _shape_idx):
	mouseTouch = true
#Jonas S
func _on_area_2d_body_entered(body):
	if body.name == "player":
		areaEntered = true
#Jonas S
func _on_area_2d_body_exited(body):
	if body.name == "player":
		areaEntered = false
#Jonas S
func _input(event : InputEvent):
	if (event is InputEventMouseButton && mouseTouch == true && areaEntered == true):
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			DialogueManager.show_example_dialogue_balloon(load("res://data/dialogue/test.dialogue"), "start")
			mouseTouch = false
			areaEntered = false

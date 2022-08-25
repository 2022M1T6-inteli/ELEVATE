extends Area2D


func changeScene():
	return get_tree().change_scene("res://Node2D.tscn")

func _input(event):
	if event is InputEventKey and event.is_action_pressed("ui_accept"):
		changeScene()

func _on_Area2D2_body_entered(_body):
	_input(Input)

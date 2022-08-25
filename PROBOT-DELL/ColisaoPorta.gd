extends Area2D

var control= false 

func changeScene():
	return get_tree().change_scene("res://TileMap_Recepcao.tscn")

func _input(event):
	if event is InputEventKey and event.is_action_pressed("ui_accept"):
		changeScene()

func _on_Area2D_body_entered(_body):
	_input(Input)


		

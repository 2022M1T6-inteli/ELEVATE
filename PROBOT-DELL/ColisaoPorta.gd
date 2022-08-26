extends Area2D

var LiberaPorta= false 

func _on_Area2D_body_entered(_body):
	LiberaPorta= true


func _on_Area2D_body_exited(_body):
	LiberaPorta= false
	
func _physics_process(_delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		return get_tree().change_scene("res://TileMap_Recepcao.tscn")

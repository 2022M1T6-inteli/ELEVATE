extends Area2D


var LiberaPorta= false

func _on_Area2D_body_entered(_body):
	LiberaPorta= true
	

func _on_Area2D_body_exited(body):
	LiberaPorta= false

func _physics_process(delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://painelpreto.tscn")
	

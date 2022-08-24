extends Area2D

func _on_Area2D_body_entered(_body):
	return get_tree().change_scene("res://painelpreto.tscn")
	


func _on_Area2D2_body_entered(body):
	pass # Replace with function body.

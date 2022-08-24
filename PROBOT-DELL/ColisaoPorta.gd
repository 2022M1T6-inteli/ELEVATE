extends Area2D



func _on_Area2D_body_entered(_body):
	return get_tree().change_scene("res://TileMap_Recepcao.tscn")

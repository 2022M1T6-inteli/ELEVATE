extends Popup

#função que fecha o popup de configurações ao clicar no botão "X"
func _on_CloseButton_pressed():
	return get_tree().change_scene("res://menu_inicial.tscn")
	

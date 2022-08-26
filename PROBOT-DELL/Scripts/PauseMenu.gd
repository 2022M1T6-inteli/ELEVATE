extends Control

var is_paused = false setget set_is_paused


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused
		
# funçao que defini se é true ou false a variavel 
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	

func _on_ContinueButton_pressed():
	self.is_paused = false
	
# funçao que chama outra cena ao clicar no botao
func _on_QuitButton_pressed():
	self.is_paused = false
	return get_tree().change_scene("res://menu_inicial.tscn")

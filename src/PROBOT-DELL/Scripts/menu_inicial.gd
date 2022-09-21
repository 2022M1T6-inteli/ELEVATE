extends Node2D

func _ready():
	Global.Dialogoutcontrol= false

func _on_jogar_button_pressed():
	return get_tree().change_scene("res://Node2D.tscn")

func _on_config_button_pressed():
	$Control.visible = true

func _on_sair_button_pressed():
	get_tree().quit()

func _on_TextureButton_pressed():
	$Control.visible = false

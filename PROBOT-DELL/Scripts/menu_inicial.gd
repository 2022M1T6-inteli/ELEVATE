extends Node2D

onready var SettingsMenu= $SettingsMenu

func _on_jogar_button_pressed():
	return get_tree().change_scene("res://Node2D.tscn")

func _on_config_button_pressed():
	SettingsMenu.popup_centered()

func _on_sair_button_pressed():
	get_tree().quit()


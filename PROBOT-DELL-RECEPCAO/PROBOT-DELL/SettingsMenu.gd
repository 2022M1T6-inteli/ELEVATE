extends Popup

onready var SettingsMenu= $SettingsMenu


func _ready():
	pass 

func _on_ExibicaoButton_item_selected(index):
	pass # Replace with function body.


func _on_HSlider_value_changed(value):
	pass # Replace with function body.


func _on_MainVolumeSlider_value_changed(value):
	pass # Replace with function body.


func _on_MusicVolumeSlider_value_changed(value):
	pass # Replace with function body.


func _on_CloseButton_pressed():
	get_tree().change_scene("res://menu_inicial.tscn")
	

extends Node2D

var i
var NewDialog= Dialogic.start('Dialogo_elevador')

func _ready():
	add_child(NewDialog)

<<<<<<< HEAD
func _process(delta):
	if i == 0:		
=======
func _process(_delta):
	if i == 0:
		
>>>>>>> 4c1080161ffe07dc7470b69d89095b5be61080ba
		return get_tree().change_scene("res://TileMap_Recepcao.tscn")

#função que recebe um valor inserido pelo jogador no botão e retorna na tela
func _on_Button1_pressed():
	$Label.text=str(1)

func _on_Button2_pressed():
	$Label.text=str(2)
	
func _on_Button3_pressed():
	$Label.text=str(3)
	
func _on_Button4_pressed():
	$Label.text=str(4)
	
func _on_Button5_pressed():
	$Label.text=str(5)
	
func _on_Button6_pressed():
	$Label.text=str(6)
	
func _on_Button7_pressed():
	$Label.text=str(7)
	
func _on_Button8_pressed():
	$Label.text=str(8)
	
func _on_Button9_pressed():
	$Label.text=str(9)
	
func _on_Button0_pressed():
	$Label.text=str(0)
	i = 0

extends Node2D

#declaração de variaveis
var i
var NewDialog= Dialogic.start('Dialogo_elevador')
var cont=0


#função que começa o dialógo assim que o personagem entrar na cena
func _ready():
	pass
	

#funçao que verifica se o botao zero foi pressionado para mudar de cena
func _process(_delta):
	if i == 0:		
		return get_tree().change_scene("res://TileMap_Recepcao.tscn")
	if cont == 0:
		add_child(NewDialog)
		cont += 1

#funções que recebem um valor inserido pelo jogador no botão e retorna na tela
func _on_Button1_pressed():
	$Label.text=str(1)
	return get_tree().change_scene("res://Primeiro_Plano.tscn")

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

extends Area2D

#declaração de variáveis
var LiberaPorta= false
onready var popup_E= $Popup_tecla_E


#Define a variavel de controle como true. E mostra o popup na tela
func _on_Area_elevador_body_entered(_body):
	popup_E.visible= true	
	popup_E.set_global_position(Vector2(170, 340))
	print("eita eita eita")
	Global.portaElevador = true

#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_Area_elevador_body_exited(_body):
	popup_E.visible= false
	Global.portaElevador = false

#funcao process delta que está fazendo a verificação da variavel de controle e de qual botão do teclado foi pressionado, para então trocar para a cena da recepção
func _process(_delta):
	if Global.portaElevador == true and Input.is_action_just_pressed("ui_e"):
		print("Im entering")
		return get_tree().change_scene("res://painelpreto.tscn")
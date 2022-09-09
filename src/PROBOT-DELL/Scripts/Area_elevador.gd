extends Area2D

#declaração de variáveis
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup
var LiberaPorta= false

#Define a variavel de controle como true. E mostra o popup na tela
func _on_Area_elevador_body_entered(_body):
	LiberaPorta= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[0]	
	InfoPopup.set_global_position(Vector2(110, 330))

#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_Area_elevador_body_exited(_body):
	LiberaPorta= false
	InfoPopup.visible= false
	

#funcao process delta que está fazendo a verificação da variavel de controle e de qual botão do teclado foi pressionado, para então trocar para a cena da recepção
func _physics_process(_delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		return get_tree().change_scene("res://painelpreto.tscn")

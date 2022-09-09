extends Area2D

var LiberaPorta= false
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup

#Define a variavel de controle como true. E mostra o popup na tela
func _on_Area2D_body_entered(_body):
	LiberaPorta= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[0]
	InfoPopup.set_global_position(Vector2(1000, 330))
	
#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_Area2D_body_exited(_body):
	LiberaPorta= false
	InfoPopup.visible= false

#funçao que verifica se a variavel é verdadeira e o botao foi pressionado para liberar uma mecanica de mudança de cena
func _physics_process(_delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		return get_tree().change_scene("res://painelpreto.tscn")
	

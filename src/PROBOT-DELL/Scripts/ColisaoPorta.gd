extends Area2D

#declaração de variáveis
var LiberaPorta= false 
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup


#Define a variavel de controle como true. E mostra o popup na tela
func _on_Area2D_body_entered(_body):
	LiberaPorta= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[1]
	InfoPopup.set_global_position(Vector2(930, 340))
	

#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_Area2D_body_exited(_body):
	LiberaPorta= false
	InfoPopup.visible= false
	
# funçao que controla se a varivel é verdadeira e o botao foi pressionado para mudar de cena
func _physics_process(_delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		return get_tree().change_scene("res://TileMap_Recepcao.tscn")

	

extends Area2D

var LiberaPorta= false 

#funçao que verifica se algo entrou em contato com a AREA2D
func _on_Area2D_body_entered(_body):
	LiberaPorta= true

#funçao que verifica se algo saiu de contato com a AREA2D
func _on_Area2D_body_exited(_body):
	LiberaPorta= false
	
# funçao que controla se a varivel é verdadeira e o botao foi pressionado para mudar de cena
func _physics_process(_delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		return get_tree().change_scene("res://TileMap_Recepcao.tscn")

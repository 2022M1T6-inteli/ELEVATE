extends Area2D

var direcao_atual = Vector2(0,0)
var direcoes = []
var pos_array = []

func _process(delta):
	position +=  direcao_atual/2
	if direcoes.size() > 0:
		if position == pos_array[0]:
			direcao_atual = direcoes[0]
			tirar_da_cauda()

func tirar_da_cauda():
	direcoes.pop_front()
	pos_array.pop_front()
	
func add_na_cauda(head_pos,dir):
		pos_array.append(head_pos)
		direcoes.append(dir)
	
	
	



func _on_cauda_area_entered(area):
	if area.name == "cabeca":
		get_tree().reload_current_scene()

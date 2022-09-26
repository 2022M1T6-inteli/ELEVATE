extends Area2D

var velocidade = 1000

func _process(delta):
	global_position.y += -velocidade * delta

func _on_laserjogador_area_entered(area):
	if area.is_in_group("inimigos"):
		area.levar_dano(1)
		queue_free()
		Global.pontuacao += 10
		

extends Area2D

var velocidade = 250
var vida = 1



func _process(delta):
	global_position.y += velocidade * delta
	
	if global_position.y >= 623:
		Global.contfail += 1
		Global.vida_global -= 1
		queue_free()

func levar_dano(dano):
	vida -= dano
	if vida <= 0:
		queue_free()


func _on_inimigo_area_entered(area):
	if area is jogador:
		area.levar_dano(1)
		

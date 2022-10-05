extends KinematicBody2D

#declaracao de variaveis
signal atualizar 
export var velocidade_movimento = 200
var direcao = Vector2()



#atualizar posicao
func _process(delta):
	emit_signal("atualizar")
#checar colisao 
func _physics_process(delta):
	if direcao.length() > 0:
		direcao = direcao.normalized() * velocidade_movimento
		move_and_collide(direcao * delta)
#restar posicao
func resetar_raquete2():
	position = Vector2(1200,350)

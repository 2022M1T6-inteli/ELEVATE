extends KinematicBody2D


export var velocidade_inicial_bola = 300
export var comutador_bola = 50
var velocidade_bola = velocidade_inicial_bola

var contador_hits = 0
var contador_hits_maximo = 12
var direcao = Vector2()


func _ready():
	randomize()
	set_direcao_inicial()
	
func set_direcao_inicial():
	var random_x = 0
	
	if randi()%10 < 5:
		random_x = 1
		
	else:
		random_x = -1
		
	direcao = Vector2(random_x,rand_range(-1,1))
	direcao = direcao.normalized() * velocidade_bola
	
	
func _physics_process(delta):
	var colisao = move_and_collide(direcao * delta)
	
	if colisao:
		direcao.direcao.bounce(colisao.normal)
		if colisao.colider.is_in_group("raquetes"):
			direcao = direcao.normalized() * (velocidade_bola + contador_hits * comutador_bola)
			
			
			

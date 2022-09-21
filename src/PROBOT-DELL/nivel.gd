extends Node2D

	#declaração de variaveis
onready var pontuacao = 0
onready var comida = preload("res://comida.tscn")
	#faz adicionar comida ao inicio da cena
func _ready():
	add_comida()
	
	#definicao de nascimento da proxima comida
func add_comida():
	var instance = comida.instance()
	instance.position = Vector2(rand_range(0,1260),rand_range(0,647))
	instance.connect("comida_usada",self,"nasceu_nova")
	add_child(instance)
	
	#faz comida nova aparecer e adiciona pontuacao
func nasceu_nova():
	pontuacao += 1
	add_comida()
	get_node("cobra").add_cauda()
	

	#pontuacao
func _process(delta):
	$Label.text = str(pontuacao)	
	if pontuacao == 20:
		$Label.text = "voce conseguiu!"

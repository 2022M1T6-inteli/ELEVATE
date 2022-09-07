extends Node2D

onready var visibility_card_front= $FlashCard_Frente
onready var visibility_card_back= $FlashCard_Tras

onready var texto_frente= $FlashCard_Frente/Texto_Button_Frente
onready var texto_tras= $FlashCard_Tras/Texto_Button_Tras 

var cont= 0    
var quest= ["Você gosta de pipoca?", "Você é legal?", "O que é Visão", "Yo soy cabrero?"]
var answer= ["Gosto", "Sou", "Visão é o que usamos para enxergar", "Soy si"]
#var perguntas= {
	#"Você gosta de pipoca??": "Gosto",
	#"Você é legal": "Sou"
	
#}
var ListaPontos= []
var pontos= 0

func _ready():
	texto_frente.text= quest[0]
	texto_tras.text= answer[0]
	
	
func PassCards():
	cont += 1
	if cont == 1:
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[1]
		texto_tras.text= answer[1]
	
	if cont == 2:
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[2]
		texto_tras.text= answer[2]
	if cont == 3:
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[3]
		texto_tras.text= answer[3]
	
#funcao que mostra qual foi a medalha ganha pelo usuário
func Premiacao():
	if cont == 4:
		if pontos == 4:
			print("PLATINA")
		if pontos == 3:
			print ("OURO")
		if pontos == 2:
			print ("PRATA")
		if pontos == 1:
			print ("BRONZE")
		if pontos == 0:
			print ("Você não atingiu a pontuação suficiente para passar de fase")

func _on_Button_Flashcard_Front_pressed():
	visibility_card_front.visible= false
	visibility_card_back.visible= true
	
func _process(delta):
	#Premiacao()
	pass
		
		
func _on_Button_Certo_pressed():
	PassCards()
	pontos= pontos + 1
	print("Pontos: ", pontos)
	Premiacao()	
	

func _on_Button_Errado_pressed():
	PassCards()
	print ("Pontos: ", pontos)
	Premiacao()
	

	

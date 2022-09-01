extends Node2D

onready var visibility_card_front= $FlashCard_Frente
onready var visibility_card_back= $FlashCard_Tras

onready var texto_frente= $FlashCard_Frente/Texto_Button_Frente
onready var texto_tras= $FlashCard_Tras/Texto_Button_Tras 

var cont= 0    

var quest= ["Você gosta de pipoca?", "Você é legal?", "Oii meu chapa"]
var answer= ["Gosto", "Sou", "Oi amigo"]

func _ready():
	texto_frente.text= quest[0]
	texto_tras.text= answer[0]

func _on_Button_Flashcard_Front_pressed():
	visibility_card_front.visible= false
	visibility_card_back.visible= true
	
func _process(delta):
	pass
		
func _on_Button_Certo_pressed():
	cont += 1
	if cont == 1:
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[1]
		texto_tras.text= answer[1]
		print (cont)
	
	if cont == 2:
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[2]
		texto_tras.text= answer[2]


func _on_Button_Errado_pressed():
	pass 
	
	

	
	

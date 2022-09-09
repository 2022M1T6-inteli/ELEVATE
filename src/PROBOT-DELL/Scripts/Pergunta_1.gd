extends Node2D

onready var visibility_card_front= $FlashCard_Frente
onready var visibility_card_back= $FlashCard_Tras
onready var texto_frente= $FlashCard_Frente/Texto_Button_Frente
onready var texto_tras= $FlashCard_Tras/Texto_Button_Tras 
var cont= 0    
var quest= ["What is the vision's dimension of the product model?", 
			"What is a vision statement?", 
			"What is OGSM and why is it important to the vision´s dimension?", 
			"What is PLM and what are our advantages in adopting it?"]
			
var answer= ["A statement of intent unit indicating what a company, business, or team wants to become and guiding transformational initiatives by setting a defined direction for future growth.", 
			"The vision statement works like the Mission Statement for the product. Basically it explains why your product exists and involves setting a specific, realistic, long-term goal that shows where you want your product to be in the future.",
			"The OGSM structure is an acronym for Objectives, Goals, Strategies and measures. It is very important to Vision because it allows companies to define what they wanna do first and then how they will get there.",
			"The Product Lifecycle Management (PLM) is a management system of the product life cycle. One of the main advantages is a bigger comprehension of the market, facilitating the creation and development  of new products and raising market share."]

var ListaPontos= []
var pontos= 0

#chama 
func _ready():
	texto_frente.text= quest[0]
	texto_tras.text= answer[0]
	
#Sempre que a função for executada, o contador irá contar incrementar mais um
#então irá fazer um if, onde dependendo do valor do cont, ele irá mostrar uma 
#nova pergunta e uma nova resposta
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
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Platina".visible= true
		if pontos == 3:
			print ("OURO")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Ouro".visible= true
		if pontos == 2:
			print ("PRATA")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Prata".visible= true
		if pontos == 1:
			print ("BRONZE")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Bronze".visible= true
		if pontos == 0:
			print ("Você não atingiu a pontuação suficiente para passar de fase")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/SemMedalha".visible= true

#funcao que vira o flashcard e mostra a parte traseira
func _on_Button_Flashcard_Front_pressed():
	visibility_card_front.visible= false
	visibility_card_back.visible= true
	

#funcao que, caso o usuario acerte a pergunta, incrementa mais um na variavel pontos
#e chama a função "Premiação()"	
func _on_Button_Certo_pressed():
	PassCards()
	pontos= pontos + 1
	print("Pontos: ", pontos)
	Premiacao()	
	
#funcao que, caso o usuario erre a pergunta, decrementa menos um na variavel pontos
#e chama a função "Premiação()"	
func _on_Button_Errado_pressed():
	PassCards()
	print ("Pontos: ", pontos)
	Premiacao()
	

#Funções que trocam de cena ao player apertar o botão home depois que ele terminar
#todos os flashcards daquela dimensão
func _on_Home_Button_Platina_pressed():
	get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_Ouro_pressed():
	get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_Prata_pressed():
	get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_Bronze_pressed():
	get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_SemMedalha_pressed():
	get_tree().change_scene("res://Primeiro_Plano.tscn")

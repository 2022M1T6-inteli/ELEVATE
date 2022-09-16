extends Node2D

onready var visibility_card_front= $FlashCard_Frente
onready var visibility_card_back= $FlashCard_Tras
onready var texto_frente= $FlashCard_Frente/Texto_Button_Frente
onready var texto_tras= $FlashCard_Tras/Texto_Button_Tras 
var conta= 0    
var botaoCerto = 0;
var botaoErrado = 0;
var quest= ["Welcome to the game, click on the screen to proceed",
			"What is the vision's dimension of the product model?", 
			"What is a vision statement?", 
			"What is OGSM and why is it important to the vision´s dimension?", 
			"What is PLM and what are our advantages in adopting it?"]
			
var answer= ["Here the statements about the questions will appear. If you think the statement is correct, press check, if you think the statement is false, press X.",
			"It is a statement of intent indicating what a company, business unit or team wants to become and guiding transformational initiatives, setting a defined direction for future growth.", 
			"It is a detailed document on how the project will reach the desired result, involving all stages of the process",
			"The OGSM structure is an acronym for Objectives, Goals, Strategies and measures. It is very important to Vision because it allows companies to define what they wanna do first and then how they will get there.",
			"The Product Lifecycle Management (PLM) is a management system of the product life cycle. One of the main advantages is a bigger comprehension of the market, facilitating the creation and development  of new products and raising market share."]

var ListaPontos= []
var pontos= 0

#chama 
func _ready():
	texto_frente.text = quest[0]
	texto_tras.text = answer[0]
	
	
#Sempre que a função for executada, o contador irá contar incrementar mais um
#então irá fazer um if, onde dependendo do valor do cont, ele irá mostrar uma 
#nova pergunta e uma nova resposta
func PassCards():
	
	conta += 1
	if conta == 1:
		pontos = 0
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[1]
		texto_tras.text= answer[1]
		print(quest[1])
		botaoCerto = 0
		botaoErrado = 0
		
	if conta == 2:
		if botaoCerto == 1:
			pontos = pontos + 1
			botaoCerto = 0
			print("VOCE ACERTOU")
		else:
			print("VOCE ERROU")
		print("Pontos 1 perg: ", pontos)
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[2]
		texto_tras.text= answer[2]
	
	if conta == 3:
		if botaoErrado == 1:
			pontos = pontos + 1
			botaoErrado = 0
			print("VOCE ACERTOU")
		else:
			print("VOCE ERROU")
		print("Pontos 2 perg: ", pontos)
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[3]
		texto_tras.text= answer[3]
	
	if conta == 4:
		if botaoCerto == 1:
			pontos = pontos + 1
			botaoCerto = 0
			print("VOCE ACERTOU")
		else:
			print("VOCE ERROU")
		print("Pontos 3 perg: ", pontos)
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[4]
		texto_tras.text= answer[4]
		
	if conta == 5:
		if botaoCerto == 1:
			pontos = pontos + 1
			botaoCerto = 0
			print("VOCE ACERTOU")
		else:
			print("VOCE ERROU")
		print("Pontos 4 perg: ", pontos)
	
	
#funcao que mostra qual foi a medalha ganha pelo usuário
func Premiacao():
	if conta == 5:
		if pontos == 4:
			print("PLATINA")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Platina".visible= true
		elif pontos == 3:
			print ("OURO")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Ouro".visible= true
		elif pontos == 2:
			print ("PRATA")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Prata".visible= true
		elif pontos == 1:
			print ("BRONZE")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			$"/root/Visao/Bronze".visible= true
		elif pontos == 0:
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
	botaoCerto = 1
	PassCards()
	
	Premiacao()	
	
#funcao que, caso o usuario erre a pergunta, decrementa menos um na variavel pontos
#e chama a função "Premiação()"	
func _on_Button_Errado_pressed():
	botaoErrado = 1
	PassCards()
	
	Premiacao()
	

#Funções que trocam de cena ao player apertar o botão home depois que ele terminar
#todos os flashcards daquela dimensão
func _on_Home_Button_Platina_pressed():
	Global.Inventario_Itens[0]= false
	return get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_Ouro_pressed():
	Global.Inventario_Itens[0]= false
	return get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_Prata_pressed():
	Global.Inventario_Itens[0]= false
	return get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_Bronze_pressed():
	Global.Inventario_Itens[0]= false
	return get_tree().change_scene("res://Primeiro_Plano.tscn")


func _on_Home_Button_SemMedalha_pressed():
	Global.Inventario_Itens[0]= false
	return get_tree().change_scene("res://Primeiro_Plano.tscn")

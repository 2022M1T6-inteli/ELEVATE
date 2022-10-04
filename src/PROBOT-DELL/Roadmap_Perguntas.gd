
extends Node2D

onready var visibility_card_front= $FlashCard_Frente
onready var visibility_card_back= $FlashCard_Tras
onready var texto_frente= $FlashCard_Frente/Texto_Button_Frente
onready var texto_tras= $FlashCard_Tras/Texto_Button_Tras 
onready var LabelFeedback= $Feedback/Label_Feedback
onready var ButtonFeedback= $Feedback/Button_Feedback
onready var feedback= $Feedback
var conta= 0    
var botaoCerto = 0;
var botaoErrado = 0;
var quest= ["Welcome to the game, click on the screen to proceed",
			" What is a roadmap and what is it for?", 
			"What is the only expected result that is present in all maturity levels of the Roadmap?", 
			"What is a results-based roadmap for each release and why is it important?", 
			" How should continuous use of data collection and user feedback be made to plan future results to be prioritized in the product roadmap?"]
			
var answer= ["Here the statements about the questions will appear. If you think the statement is correct, press check, if you think the statement is false, press X.",
			"It is a kind of 'map' that aims to organize the goals of software development, created independently of the users' needs.", 
			"Outcome Based Roadmap",
			"It is the vision of the product, of how we are going to arrive or create the product based on what we want to achieve. With each release, we determine the goals and what we want to achieve with that product and what we want to achieve with that result. Each quarter we develop a component of the product.",
			"An example: if you want your software to arrive in the PM to start as soon as possible, then you measure that time. It makes features or stories and complements them. Meanwhile, validate with the user, to reduce the time further. What takes the longest is this, so I know I should take that data and automate those fields."]

var feedback_certo= ["You got right, the entire roadmap is created according to the user's needs", 
"That's right, Outcome Based Roadmap is the only expected result at all maturity levels",
"That's right, a complete answer, straight from our Scrum Master", 
"Wrong, this example well illustrates how we should collect user feedback to plan future outcomes to be prioritized in the product roadmap"
	
]
var feedback_errado= ["You got it wrong, the entire roadmap is created according to the user's needs", 
"You got it wrong, Outcome Based Roadmap is the only expected result at all maturity levels",
"Wrong, a results-based roadmap is exactly that.",
"That's right, a complete example, straight from our Scrum Master"
	
]

var ListaPontos= []
var pontos= 0
var ContFeedback= 0
onready var platina = $"../Platina"
onready var ouro = $"../Ouro"
onready var prata = $"../Prata"
onready var bronze = $"../Bronze"
onready var sem_medalha = $"../SemMedalha"


func _ready():
	BackgroundMusic.stop()
	$pcligandosfx.play()
	texto_frente.text = quest[0]
	texto_tras.text = answer[0]
	Global.contador = 11
	Global.Inventario_Itens[1] = false
		
	
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
		botaoCerto = 0
		botaoErrado = 0
		
	if conta == 2:
		if botaoErrado == 1:
			botaoErrado = 0
			feedback.visible= true
			LabelFeedback.text= feedback_certo[0]
			pontos = pontos + 1
			feedback.color= Color(0.258824, 0.682353, 0.086275)
		else:
			feedback.visible= true
			LabelFeedback.text= feedback_errado[0]
			feedback.color= Color(0.6, 0.078431, 0.078431)
		print(pontos)
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[2]
		texto_tras.text= answer[2]
	
	if conta == 3:
		if botaoCerto == 1:
			botaoCerto = 0
			pontos = pontos + 1
			feedback.visible= true
			LabelFeedback.text= feedback_certo[1]
			feedback.color= Color(0.258824, 0.682353, 0.086275)
			
		else:
			feedback.visible= true
			LabelFeedback.text= feedback_errado[1]
			feedback.color= Color(0.6, 0.078431, 0.078431)
		print(pontos)
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[3]
		texto_tras.text= answer[3]
	
	if conta == 4:
		if botaoCerto == 1:
			pontos = pontos + 1
			botaoCerto = 0
			feedback.visible= true
			print("VOCE ACERTOU")
			LabelFeedback.text= feedback_certo[2]
			feedback.color= Color(0.258824, 0.682353, 0.086275)
		else:
			print("VOCE ERROU")
			feedback.visible= true
			LabelFeedback.text= feedback_errado[2]
			feedback.color= Color(0.6, 0.078431, 0.078431)
		print(pontos)
		visibility_card_front.visible= true
		visibility_card_back.visible= false
		texto_frente.text= quest[4]
		texto_tras.text= answer[4]
		
	if conta == 5:
		if botaoCerto == 1:
			pontos = pontos + 1
			botaoCerto = 0
			feedback.visible= true
			LabelFeedback.text= feedback_errado[3]
			feedback.color= Color(0.258824, 0.682353, 0.086275)
		else:
			feedback.visible= true
			LabelFeedback.text= feedback_certo[3]
			feedback.color= Color(0.6, 0.078431, 0.078431)
		print(pontos)
	print("Pergunta:", conta)
	
#funcao que mostra qual foi a medalha ganha pelo usuário
func Premiacao():
	if conta == 5:
		if pontos == 4:
			print("PLATINA")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			platina.visible= true
			Global.medalha_2 = 1
		elif pontos == 3:
			print ("OURO")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			ouro.visible= true
			Global.medalha_2 = 2
		elif pontos == 2:
			print ("PRATA")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			prata.visible= true
			Global.medalha_2 = 3
		elif pontos == 1:
			print ("BRONZE")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			bronze.visible= true
			Global.medalha_2 = 4
		elif pontos == 0:
			print ("Você não atingiu a pontuação suficiente para passar de fase")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			sem_medalha.visible= true
			Global.medalha_2 = 0
		
#funcao que vira o flashcard e mostra a parte traseira
func _on_Button_Flashcard_Front_pressed():
	visibility_card_front.visible= false
	visibility_card_back.visible= true
	

#funcao que, caso o usuario acerte a pergunta, incrementa mais um na variavel pontos
#e chama a função "Premiação()"	
func _on_Button_Certo_pressed():
	botaoCerto = 1
	PassCards()
	#if ContFeedback == 4:
		#Premiacao()
	
#funcao que, caso o usuario erre a pergunta, decrementa menos um na variavel pontos
#e chama a função "Premiação()"	
func _on_Button_Errado_pressed():
	botaoErrado = 1
	PassCards()
	#if ContFeedback == 4:
		#Premiacao()
	

#Funções que trocam de cena ao player apertar o botão home depois que ele terminar
#todos os flashcards daquela dimensão
func _on_Home_Button_Platina_pressed():
	Global.Inventario_Itens[0]= false
	BackgroundMusic.play()
	return get_tree().change_scene("res://Segundo_Plano.tscn")


func _on_Home_Button_Ouro_pressed():
	Global.Inventario_Itens[0]= false
	BackgroundMusic.play()
	return get_tree().change_scene("res://Segundo_Plano.tscn")


func _on_Home_Button_Prata_pressed():
	Global.Inventario_Itens[0]= false
	BackgroundMusic.play()
	return get_tree().change_scene("res://Segundo_Plano.tscn")


func _on_Home_Button_Bronze_pressed():
	Global.Inventario_Itens[0]= false
	BackgroundMusic.play()
	return get_tree().change_scene("res://Segundo_Plano.tscn")


func _on_Home_Button_SemMedalha_pressed():
	Global.Inventario_Itens[0]= false
	BackgroundMusic.play()
	return get_tree().change_scene("res://Segundo_Plano.tscn")



func _on_Button_Feedback_pressed():
	feedback.visible= false
	ContFeedback += 1
	if ContFeedback == 4:
		Premiacao()
	print ("Botao feedback: ", ContFeedback)
	

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
var quest= ["Bem vindo ao jogo, clique na tela para prosseguir",
"O que a métrica Stakeholders visa medir?",
"O que é o mapa RACI e para que serve?",
"Devemos usar a entrada das partes interessadas para converter em itens de ação conforme necessário, como essas entradas devem ser atualizadas?",
"Como devemos aplicar regularmente os princípios de aprendizagem de medidas de construção?"]
			
var answer= ["Aqui as declarações sobre as perguntas aparecerão. Se você acha que a afirmação está correta, aperte check, se você acha que a afirmação é falsa, aperte X.",
"Esta métrica destina-se a medir a comunicação e o engajamento para alinhamento e parceria compartilhados.",
"Significa Responsável, Responsável, Consultado e Informado e é uma matriz de responsabilidades para as atividades de um processo.",
"Os itens de ação devem ser atualizados com base em seu nível de impacto, no caso de nível de iteração para histórias ou no caso de nível de estratégia para itens de script",
"Compartilhando o aprendizado validado dos ciclos de construção-medidas-aprendizagem com as partes interessadas, alavancando negócios/usuários"]

var feedback_certo= ["Você acertou, essa métrica é muito importante, pois mede a comunicação entre as partes",
"Você está certo, esta alternativa é falsa. A declaração de visão é uma breve descrição do objetivo final de um projeto. Deve ser sucinta e memorável para que todos os envolvidos tenham algum nível de compreensão de onde queremos ir. Não não fornece muitos detalhes, mas dá uma boa compreensão do que é o trabalho.",
"Você acertou, a dimensão da visão é exatamente isso!",
"Você acertou, a dimensão da visão é exatamente isso!"
	
]
var feedback_errado= ["Você entendeu errado, essa métrica mede exatamente isso",
"Você entendeu errado, na verdade a declaração de visão é uma breve descrição do objetivo final de um projeto. Deve ser sucinta e memorável para que todos os envolvidos tenham algum nível de compreensão de onde queremos ir. Não fornece muito detalhes, mas dá uma boa compreensão do que é o trabalho.",
"Você entendeu errado, essa afirmação é verdadeira",
"Você entendeu errado, essa afirmação é verdadeira"
	
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
	Global.controlPlacaVideo == false
	BackgroundMusic.stop()
	$pcligandosfx.play()
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
		botaoCerto = 0
		botaoErrado = 0
		
	if conta == 2:
		if botaoCerto == 1:
			botaoCerto = 0
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
		if botaoErrado == 1:
			botaoErrado = 0
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
			LabelFeedback.text= feedback_certo[3]
			feedback.color= Color(0.258824, 0.682353, 0.086275)
		else:
			feedback.visible= true
			LabelFeedback.text= feedback_errado[3]
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
			Global.medalha_3= 1
		elif pontos == 3:
			print ("OURO")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			ouro.visible= true
			Global.medalha_3 = 2
		elif pontos == 2:
			print ("PRATA")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			prata.visible= true
			Global.medalha_3 = 3
		elif pontos == 1:
			print ("BRONZE")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			bronze.visible= true
			Global.medalha_3 = 4
		elif pontos == 0:
			print ("Você não atingiu a pontuação suficiente para passar de fase")
			$FlashCard_Tras.visible= false
			$FlashCard_Frente.visible= false
			sem_medalha.visible= true
			Global.medalha_3 = 0
		
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
	Global.Inventario_Itens[2]= false
	if Global.controlMusic == true:
		BackgroundMusic.play()
	return get_tree().change_scene("res://Terceiro_Plano.tscn")


func _on_Home_Button_Ouro_pressed():
	Global.Inventario_Itens[2]= false
	if Global.controlMusic == true:
		BackgroundMusic.play()
	return get_tree().change_scene("res://Terceiro_Plano.tscn")


func _on_Home_Button_Prata_pressed():
	Global.Inventario_Itens[2]= false
	if Global.controlMusic == true:
		BackgroundMusic.play()
	return get_tree().change_scene("res://Terceiro_Plano.tscn")


func _on_Home_Button_Bronze_pressed():
	Global.Inventario_Itens[2]= false
	if Global.controlMusic == true:
		BackgroundMusic.play()
	return get_tree().change_scene("res://Terceiro_Plano.tscn")


func _on_Home_Button_SemMedalha_pressed():
	Global.Inventario_Itens[2]= false
	if Global.controlMusic == true:
		BackgroundMusic.play()
	return get_tree().change_scene("res://Terceiro_Plano.tscn")



func _on_Button_Feedback_pressed():
	feedback.visible= false
	ContFeedback += 1
	if ContFeedback == 4:
		Premiacao()
	print ("Botao feedback: ", ContFeedback)
	
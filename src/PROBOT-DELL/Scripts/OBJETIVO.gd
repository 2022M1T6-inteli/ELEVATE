extends ColorRect



var vet_objetivos = ["Entre no predio","Fale com a Ellen","Va no primeiro andar","Fale com Marcos","Fale com a pinky no segundo andar","Pegue o Pen Drive","Conecte o Pen drive no computador do andar 1","Va no terceiro andar", "Fale com hawking", "Pegue a RAM", "Conserte o computador no segundo andar", "Fale com norman no quarto andar", "Pegue a placa de vídeo","Conserte o computador no terceiro andar"]
	
	
func _physics_process(_delta):
	$Label.text = vet_objetivos[Global.contador]

		

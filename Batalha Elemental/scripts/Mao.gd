extends Node2D

#precarregar cena cartas
@onready var cena_cartas = preload("res://cenas/cartas.tscn")
@export var lista = []
#@onready var cartas = get_parent()
#adicionar aleatoriedade aqui
func _ready():
	var c = cena_cartas.instantiate()
	add_child(c)
	var i = 1
	match i: #similar ao switch case
		1: 			
			#lista.append(cartas.conteudo2["fogo"][0])
			
			lista.append(c.fogo1)			
			print(lista[0].valor)		
			c.fogo1.global_position = Vector2(70,520)				
			lista.append(c.fogo2)			
			print(lista[1].valor)		
			c.fogo2.global_position = Vector2(190,520)
			lista.append(c.agua1)			
			print(lista[2].valor)		
			c.agua1.global_position = Vector2(310,520)
			lista.append(c.agua2)			
			print(lista[3].valor)		
			c.agua2.global_position = Vector2(430,520)
			lista.append(c.folha1)			
			print(lista[4].valor)		
			c.folha1.global_position = Vector2(550,520)
			lista.append(c.folha2)			
			print(lista[5].valor)		
			c.folha2.global_position = Vector2(670,520)
			lista.append(c.pedra1)			
			print(lista[6].valor)		
			c.pedra1.global_position = Vector2(790,520)
			lista.append(c.pedra2)			
			print(lista[7].valor)		
			c.pedra2.global_position = Vector2(910,520)
			lista.append(c.eletricidade1)			
			print(lista[8].valor)		
			c.eletricidade1.global_position = Vector2(1030,520)	
			lista.append(c.eletricidade2)			
			print(lista[9].valor)		
			c.eletricidade2.global_position = Vector2(1150,520)								
			
		#2: add_child(cartas.Baixo)



# Called when the node enters the scene tree for the first time.
func _input(event):
	if Input.is_key_pressed(KEY_SPACE):
		pass


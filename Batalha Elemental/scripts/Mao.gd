extends Node2D

#precarregar cena cartas
@onready var cena_cartas = preload("res://cenas/cartas.tscn")
@export var lista = []

#carregar variavel global
@onready var pontosp1 = preload("res://scripts/pontos_p_1.gd")
@onready var pontosp2 = preload("res://scripts/pontos_p_2.gd")


#adicionar aleatoriedade aqui
func _ready():
	var c = cena_cartas.instantiate()
	c.global_position = Vector2(-300,-300)
	#pontosp2.pontos = 10
	#print("GLOBAL NA MAO ",pontosp2.pontos)
	add_child(c)
	var i = 1
	match i: #similar ao switch case
		1: 			
			#lista.append(cartas.conteudo2["fogo"][0])
			
			lista.append(c.fogo1)			
			c.fogo1.global_position = Vector2(70,520)				
			lista.append(c.fogo2)	
			c.fogo2.global_position = Vector2(190,520)
			lista.append(c.agua1)		
			c.agua1.global_position = Vector2(310,520)
			lista.append(c.agua2)		
			c.agua2.global_position = Vector2(430,520)
			lista.append(c.folha1)			
			c.folha1.global_position = Vector2(550,520)
			lista.append(c.folha2)		
			c.folha2.global_position = Vector2(670,520)
			lista.append(c.pedra1)	
			c.pedra1.global_position = Vector2(790,520)
			lista.append(c.pedra2)	
			c.pedra2.global_position = Vector2(910,520)
			lista.append(c.eletricidade1)		
			c.eletricidade1.global_position = Vector2(1030,520)	
			lista.append(c.eletricidade2)			
	
			c.eletricidade2.global_position = Vector2(1150,520)
			
			#carta duplicada								
			var c2 = cena_cartas.instantiate()
			add_child(c2)
			c2.global_position = Vector2(-300,-300)
			c2.folha1.global_position = Vector2(750,410)



# Called when the node enters the scene tree for the first time.
func _input(event):
	if Input.is_key_pressed(KEY_SPACE):
		pass


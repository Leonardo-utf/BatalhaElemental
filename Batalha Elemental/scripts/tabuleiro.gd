extends Node2D

@onready var mao = $Mao
@onready var tempo = 5000

var conteudo = {
	"fogo1": ["fogo",1],
	"fogo2": ["fogo",2],
	"fogo3": ["fogo",3]	
}



#var cartas = [conteudo[0], conteudo[1]] 

func _ready():
	print("Valor da carta: ",mao.lista[0].tipo)
	#var fundo1 = mao.fundo
	#var fundo2 = mao.fundo
	#fundo1.global_position = Vector2(-100,-100)
	#fundo2.global_position = Vector2(-100,-100)
	
func _process(delta):
	#tempo = tempo-delta
	pass
	
func _combate(carta1,carta2):
	
	
	
	carta1.global_position = Vector2(500,320)
	carta2.global_position = Vector2(620,320)
	print("Combate entre ", carta1.tipo, carta1.valor, " e ", carta2.tipo, carta2.valor)
	
	#tempo = 500
	#if tempo>10:
#		get_tree().paused = true
		#if Input.is_key_pressed(KEY_SPACE):
		#	get_tree().paused = false
		
	var aux = 0
	aux = _checa_vantagem(carta1.tipo, carta2.tipo)
	if aux == 1:
		print("carta 1 ganhou VANTAGEM!")
		return 1
	if aux == 2 :
		print("carta 2 ganhou VANTAGEM!")
		return 2
	if aux == 0:
		if carta1.valor > carta2.valor:
			print("Carta 1 ganhou por pontos!")
			return 1
		if carta1.valor < carta2.valor:
			print("Carta 2 ganhou por pontos")
			return 2
		if carta1.valor == carta2.valor:
			print("Empate!")
			return 1
	pass
	
	
func _checa_vantagem(carta1,carta2):
	
	match carta1:
		"fogo":
			match carta2:
				"agua": return 2
				"folha": return 1
				_: return 0
				
		"agua":
			match carta2:				
				"eletrecidade": return 2
				"fogo": return 1
				_: return 0
				
		"folha":
			match carta2:
				"fogo": return 2
				"pedra": return 1
				_: return 0
				
		"pedra":
			match carta2:
				"folha": return 2
				"eletricidade": return 1
				_: return 0
				
		"eletricidade":
			match carta2:
				"pedra": return 2
				"agua": return 1
				_: return 0		


func _input(event):
	if Input.is_key_pressed(KEY_SPACE):
		_combate(mao.lista[2],mao.lista[5])
		#print(mao.lista[0].tipo)

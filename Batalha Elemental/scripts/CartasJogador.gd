extends HBoxContainer

@onready var cartas =  $Cartas
@onready var vbox = $"../../VBoxContainer"
@onready var baralho = $"../Baralho/Preencher"
@onready var mao = baralho.get_node("HBoxContainer/Preencher")
@onready var mao2 = mao.lista

func _ready():
	#mao = baralho.get_child(1)
	print("do tabuleiro ")
	print(mao2.valor)



extends Control

#@onready var cartas =  preload("res://cenas/cartas.tscn")
@onready var cartas =  $Cartas

@onready var vbox = $"../../VBoxContainer"



@export var lista = []
@onready var l = cartas.listaCartas
#a ideia de utilizar TextureButton veio do site godot engine Q&A
#https://ask.godotengine.org/81341/how-to-make-a-button-fit-the-size-of-its-icon

func _process(delta):
	_escreve()
	pass



func _escreve():
	if lista.size() > 0:
		#var aux = 1
		for t in lista.size():
			#AVISO: esse estilo de texto formatado eu peguei na própria documentação do godot
			#https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_format_string.html
			var formatado = "%s %s"
			var finalizado = formatado % [lista[t].tipo, lista[t].valor]
			#AVISO consegui acessar os nós label com a ajuda do godot engine Q&A
			#https://ask.godotengine.org/127520/invalid-set-index-text-on-base-nil-with-value-of-type-string
			var formlabel = "Label%s"
			var finalabel = formlabel %[t+1]
			vbox.get_node(finalabel).text = finalizado


func _on_bfg_1_pressed():
	if  lista.size() < 15:
		$bfg1.hide()
		lista.append(l[1])
		


func _on_bfg_2_pressed():
	if  lista.size() < 15:
		$bfg2.hide()
		lista.append(l[2])


func _on_bfg_3_pressed():
	if  lista.size() < 15:
		$bfg3.hide()
		lista.append(l[3])


func _on_bfg_4_pressed():
	if  lista.size() < 15:
		$bfg4.hide()
		lista.append(l[4])
	
	
func _on_bfg_5_pressed():
	if  lista.size() < 15:
		$bfg5.hide()
		lista.append(l[5])


func _on_bag_1_pressed():
	if  lista.size() < 15:
		$bag1.hide()
		lista.append(l[6])


func _on_bag_2_pressed():
	if  lista.size() < 15:
		$bag2.hide()
		lista.append(l[7])


func _on_bag_3_pressed():
	if  lista.size() < 15:
		$bag3.hide()
		lista.append(l[8])


func _on_bag_4_pressed():
	if  lista.size() < 15:
		$bag4.hide()
		lista.append(l[9])	


func _on_bag_5_pressed():
	if  lista.size() < 15:
		$bag5.hide()
		lista.append(l[10])


func _on_bfl_1_pressed():
	if  lista.size() < 15:
		$bfl1.hide()
		lista.append(l[11])


func _on_bfl_2_pressed():
	if  lista.size() < 15:
		$bfl2.hide()
		lista.append(l[12])


func _on_bfl_3_pressed():
	if  lista.size() < 15:
		$bfl3.hide()
		lista.append(l[13])


func _on_bfl_4_pressed():
	if  lista.size() < 15:
		$bfl4.hide()
		lista.append(l[14])


func _on_bfl_5_pressed():
	if  lista.size() < 15:
		$bfl5.hide()
		lista.append(l[15])


func _on_bpd_1_pressed():
	if  lista.size() < 15:
		$bpd1.hide()
		lista.append(l[16])


func _on_bpd_2_pressed():
	if  lista.size() < 15:
		$bpd2.hide()
		lista.append(l[17])


func _on_bpd_3_pressed():
	if  lista.size() < 15:
		$bpd3.hide()
		lista.append(l[18])


func _on_bpd_4_pressed():
	if  lista.size() < 15:
		$bpd4.hide()
		lista.append(l[19])


func _on_bpd_5_pressed():
	if  lista.size() < 15:
		$bpd5.hide()
		lista.append(l[20])


func _on_bel_1_pressed():
	if  lista.size() < 15:
		$bel1.hide()
		lista.append(l[21])


func _on_bel_2_pressed():
	if  lista.size() < 15:
		$bel2.hide()
		lista.append(l[22])


func _on_bel_3_pressed():
	if  lista.size() < 15:
		$bel3.hide()
		lista.append(l[23])


func _on_bel_4_pressed():
	if  lista.size() < 15:
		$bel4.hide()
		lista.append(l[24])


func _on_bel_5_pressed():
	if  lista.size() < 15:
		$bel5.hide()
		lista.append(l[25])


func _on_bt_limpar_pressed():
	var n = 0
	lista.clear()
	#o comando seguinte eu peguei do site godot engine Q&A
	#https://ask.godotengine.org/6454/reload-current-scene
	get_tree().reload_current_scene()


func _on_bt_salvar_pressed():
	($"../../Salvo").visible = true
	'
	var savelista = []
	var i = 0
	for s in lista:
		if s.tipo == "fogo":
			savelista.append(s.valor)
			i = i +1
		if s.tipo == "agua":
			savelista.append(5 + s.valor)
			i = i +1
		if s.tipo == "folha":
			savelista.append(10 + s.valor)
			i = i +1
		if s.tipo == "pedra":
			savelista[i] = 15 + s.valor
			i = i +1
		if s.tipo == "eletricidade":
			savelista[i] = 20 + s.valor
			i = i +1
			
	#está inutilizavel
	var save = FileAccess.open("user://SAVEDOGODOT.save", FileAccess.WRITE)
	#save.store_line(str(savelista))
	for p in savelista:
		save.store_line(str(p))
	var load = FileAccess.open("user://SAVEDOGODOT.save", FileAccess.READ)	
'



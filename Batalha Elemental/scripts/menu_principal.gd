extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#AVISO: como criar essa cena e como ativar os botões foi retirado de um video tutorial no youtube
#https://youtu.be/Mx3iyz8AUAE?si=DJcfqgABo7RsuFXT
#nome do video: Godot Main Menu in 4 Minutes
#canal: Master Albert


func _on_bt_jogar_pressed():
	get_tree().change_scene_to_file("res://cenas/tabuleiro.tscn")


func _on_bt_baralho_pressed():
	get_tree().change_scene_to_file("res://cenas/baralho.tscn")
	


func _on_bt_sair_pressed():
	get_tree().quit()

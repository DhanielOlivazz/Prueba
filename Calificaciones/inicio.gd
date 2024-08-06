extends VBoxContainer



func _on_Iniciar_pressed():
	get_tree().change_scene("res://Mundo/Mundo 1.tscn")


func _on_Select_pressed():
	get_tree().change_scene("res://Calificaciones/Selector.tscn")


func _on_Salir_pressed():
	get_tree().quit()

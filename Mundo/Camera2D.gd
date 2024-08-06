extends Node2D

# Referencia al nodo del jugador
onready var player = $Player
# Referencia a la cámara
onready var camera = $Camera2D

func _ready():
	# Asegúrate de que la cámara esté configurada como actual
	camera.current = true

func _process(delta):
	# Actualiza la posición de la cámara en el eje X para seguir al jugador
	var camera_position = camera.position
	camera_position.x = player.position.x
	camera.position = camera_position

func _on_Spikes_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos pinchado")
		get_tree().reload_current_scene()
	pass

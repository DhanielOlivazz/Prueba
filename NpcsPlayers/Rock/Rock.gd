extends KinematicBody2D

# Variables para el movimiento
var direction = Vector2(1, 0)
var speed = 80
var left_limit = 8480
var right_limit = 8600

# Referencia al jugador
onready var animation_player = $AnimationPlayer
onready var sprite = $Sprite

func _ready():
	# Aquí no es necesario conectar ninguna señal
	pass  # Si no tienes nada en ready, puedes usar pass

func _process(delta):
	var velocity = direction * speed * delta
	var collision = move_and_collide(velocity)

	# Verifica los límites y cambia la dirección si es necesario
	if position.x > right_limit:
		direction = Vector2(-1, 0)
		sprite.flip_h = false
	elif position.x < left_limit:
		direction = Vector2(1, 0)
		sprite.flip_h = true

	# Si hay colisión, verifica si es con el jugador
	if collision and collision.collider.name == "Player":
		print("Nos han rockeado")
		get_tree().reload_current_scene()


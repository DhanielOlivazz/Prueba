extends KinematicBody2D

const maxSpeed = 100
const moveSpeed = 70

const jumpHeight = 450
const trampolineBoost = 600  # Añadimos una variable específica para el impulso del trampolín
const golpeDeNpc = 200
const up = Vector2(0, -1)
const gravity = 15
var is_dead = false

onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer

var motion = Vector2()

func _ready():
	set_process(true)
	for trampoline in get_tree().get_nodes_in_group("Trampolines"):  # Asegurarse de que coincide con el grupo
		trampoline.connect("bounce", self, "_on_Trampoline_bounce")
	set_process(true)
	for np in get_tree().get_nodes_in_group("Npc."):  # Asegurarse de que coincide con el grupo
		np.connect("coli", self, "_on_Npc_col")

func _physics_process(delta):
	motion.y += gravity
	var friction = false

	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		animationPlayer.play("Walk")
		motion.x = min(motion.x + moveSpeed, maxSpeed)
	elif Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
		animationPlayer.play("Walk")
		motion.x = max(motion.x - moveSpeed, -maxSpeed)
	else:
		animationPlayer.play("idle")
		friction = true

	if is_on_floor():
		if Input.is_action_pressed("ui_accept"):
			$Jump.playing = true
			motion.y = -jumpHeight
		if friction:
			motion.x = lerp(motion.x, 0, 0.5)
	else:
		if friction:
			motion.x = lerp(motion.x, 0, 0.1)

	motion = move_and_slide(motion, up)

func _on_Spikes_body_entered(body):
	if body.get_name() == "Player":
		print("Hemos muerto")
		get_tree().reload_current_scene()

func die():
	if not is_dead:
		is_dead = true
		get_tree().reload_current_scene()

func is_on_top_of(npc):
	var npc_top = npc.position.y - (npc.get_node("CollisionShape2D").shape.extents.y)
	return position.y < npc_top

func _on_Trampoline_bounce(body):
	if body == self:
		print("El Jugador Reboto")
		# Elevar al jugador con un impulso mayor específico del trampolín
		motion.y = -trampolineBoost

func _on_Npc_col(body):
	if body == self:
		print("el npc murio :( Q.E.P.D )")
		motion.y = -golpeDeNpc

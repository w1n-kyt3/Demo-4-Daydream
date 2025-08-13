extends CharacterBody2D

var posGoTo : Vector2
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		posGoTo = get_global_mouse_position()

func _physics_process(delta: float) -> void:
	var vel = (posGoTo - self.global_position)
	velocity = vel.clamp(Vector2(-100,-100), Vector2(100,100))
	move_and_slide()

@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta):
	if Input.is_action_pressed("click"):
		_animated_sprite.play("walk")
	else:
		_animated_sprite.stop()

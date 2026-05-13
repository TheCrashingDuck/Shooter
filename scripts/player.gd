extends CharacterBody2D

var speed = 300
 
@onready var sprite: Sprite2D = $Sprite2D
 
 
func _process(_delta: float) -> void:
	if get_global_mouse_position().x < global_position.x:
		sprite.flip_h = true
	else:
		sprite.flip_h = false
 

func get_input():
	var input_direction = Input.get_vector("a", "d", "w", "s")
	velocity = input_direction * speed
	
func _physics_process(_delta):
	get_input()
	move_and_slide()

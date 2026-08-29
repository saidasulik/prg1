extends Node2D
var speed = 10
var direction = 1
@onready var rayright: RayCast2D = $Rayright
@onready var rayleft: RayCast2D = $Rayleft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rayright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if rayleft.is_colliding():
		direction = +1
		animated_sprite_2d.flip_h = false
	position.x = position.x + direction * speed * delta
	

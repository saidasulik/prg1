extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('монета' ) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_coin_body_entered(body: Node2D) -> void:
	print('нет монетки') # Replace with function body.
	queue_free()

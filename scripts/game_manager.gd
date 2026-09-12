extends Node2D
var score = 0
@onready var scorela: Label = $scorela
@onready var scorel: Label = $"../CharacterBody2D/scorel"


func add_point():
	score += 1
	scorela.text = "your money: " + str(score)
	scorel.text = str(score)

extends Node2D

@onready var enemy = preload("res://enemy.tscn")


func _process(_delta):
	pass
	

func _on_enemy_timer_timeout():
	var enemy_scene = enemy.instantiate()
	#position it
	var random_y = randi_range(30,500)
	enemy_scene.position = Vector2(900,random_y)
	add_child(enemy_scene)

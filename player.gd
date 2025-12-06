extends Area2D

@onready var laser_prefab = preload("res://laser.tscn")

func _physics_process(_delta):
	if Input.is_action_pressed("player_down") and position.y < 500 :
		position.y += 10.0
	
	if Input.is_action_pressed("player_up") and position.y >  30:
		position.y += -10
		
	if Input.is_action_pressed("player_right") and position.x < 400:
		position.x += 10
		
	if Input.is_action_pressed("player_left") and position.x > 24:
		position.x += -10
	
	if Input.is_action_just_pressed("shoot"):
		#make a laser
		var laser = laser_prefab.instantiate()
		laser.position = position
		get_parent().add_child(laser)

extends Node2D

class_name Enemy
var entity:Entity=null
var health:Health_System=null
var attack:Attack_System=null

func _init(unit_name):
	self.entity = Entity.new(unit_name)
	self.health = Health_System.new(10)
	self.attack = Attack_System.new(5)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Node
class_name Health_System
var health: int

func _init(health: int) -> void:
	self.health = health

func takeDamage(damage: int) -> void:
	if health -damage > 0:
		self.health -= damage
	else:
		self.death()
func healthDamage(damage: int) -> void:
	self.health += damage
	
func death():
	get_parent().death()
	pass	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

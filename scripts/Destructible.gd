extends Node2D
class_name Destructible

@onready var sprites = $Sprites

var entity:Entity=null
var health:Health_System=null

func _init(unit_name,max_health):
	self.entity = Entity.new(unit_name)
	self.health = Health_System.new(max_health)

func death():
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

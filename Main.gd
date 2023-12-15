extends Node2D
var _world := preload("res://World.tscn" )
func _ready():
	
	var scenario = preload("res://scenes/scenario/scenario.tscn" )
	var instance =scenario.instantiate()
	instance.position=Vector2(0,0)
	instance.ready
	add_child(instance)
	
	
	
	
	var A_cord=Vector2(-48*16,-53*16)
	print(A_cord)
	var A = preload("res://scenes/scenario/zone/A/A_a.tscn")
	var A_instance=A.instantiate()
	A_instance.position=A_cord
	add_child(A_instance)
	
	var I_cord=Vector2(16*16,-53*16)
	print(I_cord)
	var I = preload("res://scenes/scenario/zone/I/I_a.tscn")
	var I_instance=I.instantiate()
	I_instance.position=I_cord
	add_child(I_instance)
	
	
	var K_cord=Vector2(48*16,-53*16)
	print(K_cord)
	var K = preload("res://scenes/scenario/zone/K/K_a.tscn")
	var K_instance=K.instantiate()
	K_instance.position=K_cord
	add_child(K_instance)
	
	var B_cord=Vector2(-48*16,-21*16)
	print(B_cord)
	var B = preload("res://scenes/scenario/zone/B/B_a.tscn")
	var B_instance=B.instantiate()
	B_instance.position=B_cord
	add_child(B_instance)	
	
	var C_cord=Vector2(-48*16,11*16)
	print(C_cord)
	var C = preload("res://scenes/scenario/zone/C/C_a.tscn")
	var C_instance=C.instantiate()
	C_instance.position=C_cord
	add_child(C_instance)
	
	
	var H_cord=Vector2(-16*16,-21*16)
	print(H_cord)
	var H = preload("res://scenes/scenario/zone/H/H_a.tscn")
	var H_instance=H.instantiate()
	H_instance.position=H_cord
	add_child(H_instance)
	
	
	var J_cord=Vector2(16*16,-21*16)
	print(J_cord)
	var J = preload("res://scenes/scenario/zone/J/J_a.tscn")
	var J_instance=J.instantiate()
	J_instance.position=J_cord
	add_child(J_instance)
	
	
	var G_cord=Vector2(-16*16,11*16)
	print(G_cord)
	var G = preload("res://scenes/scenario/zone/G/G_a.tscn")
	var G_instance=G.instantiate()
	G_instance.position=G_cord
	add_child(G_instance)		
	
	
	
	
	var D_cord=Vector2(-48*16,43*16)
	print(D_cord)
	var D = preload("res://scenes/scenario/zone/D/D_a.tscn")
	var D_instance=D.instantiate()
	D_instance.position=D_cord
	add_child(D_instance)	
	
	var E_cord=Vector2(16*16,43*16)
	print(E_cord)
	var E = preload("res://scenes/scenario/zone/E/E_a.tscn")
	var E_instance=E.instantiate()
	E_instance.position=E_cord
	add_child(E_instance)
	
	var F_cord=Vector2(48*16,43*16)
	print(F_cord)
	var F = preload("res://scenes/scenario/zone/F/F_a.tscn")
	var F_instance=F.instantiate()
	F_instance.position=F_cord
	add_child(F_instance)
	
	
	
	#_init_scenario(Scenario.new("Scnario_1"))
	# Create scenarios
	#var forest_scenario = Scenario.new("Dark Forest", "Adventure", [])
	#
	#var rescue_kingdom = Mission.new("Rescue the Kingdom", "Free the kingdom from darkness", 3, ["Magic Sword", "Health Potions"],forest_scenario)
	#var first_chapter = Chapter.new("Chapter 1", "Begin your epic adventure", [rescue_kingdom])
	#var epic_campaign = Campaign.new("The Legend of Valeria", [], "In a world full of magic and creatures, darkness threatens to destroy everything.","epilogue", [first_chapter])
#
#
	## Print campaign details
	#print("Campaign Name:", epic_campaign.campaign_name)
	#print("Characters:", epic_campaign.characters)
	#print("prologue:", epic_campaign.prologue)
	#print("Epilogue:", epic_campaign.epilogue)
	#
	#
	## Print details of the first chapter
	#var first_chapter_details = epic_campaign.chapters[0]
	#print("\nChapter Name:", first_chapter_details.chapter_name)
	#print("Chapter Description:", first_chapter_details.description)
	#var first_mission_details = first_chapter_details.missions[0]
	#print("Mission Title:", first_mission_details.title)
	#print("\nMission Description:", first_mission_details.description)
	#print("\nMission Rewards:", first_mission_details.rewards)
	#print("Scenario Name:", first_mission_details.scenario.scenario_name)
	#print("\nScenario Biome:", first_mission_details.scenario.biome)
##	var world :World= _world.instance()
##	world.position= Vector2(0,0)
##	get_parent().add_child(world)
	#var instance = load("res://World.tscn")
	#var spawn = instance.instantiate()
	#spawn._ready()
	#get_parent().add_child(spawn)
	#print("Scenario Camps:", first_mission_details.scenario.camps)
func _init_scenario(scenario):
	scenario.instance()
	add_child(scenario)
	#var map_scenario:= preload("res://scenes/scenario/scenario.tscn" )
	#map_scenario.instantiate()
	

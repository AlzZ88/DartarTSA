extends Node2D
class_name Main
var _world := preload("res://World.tscn" )

func _ready():
																																																																																																																																																																																																																																									 
	#add_scenario("Alcardia forest","forest")
	var mision_2=Mission.new()
	mision_2.add_title("En busqueda del mal").add_description("se te ha encomendado la tarea de buscar el paradero del slime oscuro")
	mision_2.add_scenario("Bosques de Alcardia","forest",self)
	print("Mission Title:",mision_2.title)
	print("Mission Description:", mision_2.description)
	print("\nMission Rewards:", mision_2.rewards)
	print("\nScenario Name:", mision_2.scenario.scenario_name)
	print("Scenario Biome:",mision_2.scenario.biome)
	
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
	
	
#func add_scenario(scenario_name,biome) -> Main:
	#var scenario_instance =preload("res://scenes/scenario/scenario.tscn").instantiate()
	#scenario_instance.position=Vector2(0,0)
	#scenario_instance._init_(scenario_name,biome)
	#add_child(scenario_instance)
	#return self
	

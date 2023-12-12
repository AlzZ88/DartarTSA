extends Node2D
var _world := preload("res://World.tscn" )
func _ready():
	_init_scenario(Scenario.new("Scnario_1"))
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
	var map_scenario:= preload("res://scenes/scenario/scenario.tscn" )
	map_scenario.instantiate()
	

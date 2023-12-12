extends Node2D
class_name World
@onready var land= $Land
@onready var water= $Water
const MAP_SIZE= Vector2(128,128)
const LAND_CAP =0.3
const deathLimit=4
const birthLimit=4
const numberOfSteps=15
func _ready():
	generate_world()

#
#func generate_world():
#	var noise = FastNoiseLite.new()
#	noise.seed=100
#	var cells =[]
#
#	var cellmap=[]
#	for x in range(128):
#		cellmap.append([])
#		cellmap[x]=[]
#		for y in range(128):
#			cellmap[x].append([])
#			cellmap[x][y]=false
#
#	cellmap=initialiseMap(cellmap)
#	for x in range(0,numberOfSteps):
#		cellmap = doSimulationStep(cellmap)
#
#	for x in Map_SIZE.x:
#		for y in Map_SIZE.y:
#			var a= noise.get_noise_2d(x,y)
#			if a< LAND_CAP:
#				if(cellmap[x][y]==false):
#					#Puede haber arboles
#					tilemap.set_cell(0,Vector2(x,y),1,Vector2(4,5),0)
#					#tilemap.set_pattern(0,Vector2(x,y),tilemap.get_pattern(0,Vector2(0,0)))
#
#				else:
#					#transitable
#					cells.append(Vector2(x,y))	
#			else:
#				tilemap.set_cell(0,Vector2(x,y),1,Vector2(0,5),0)
#	tilemap.set_cells_terrain_connect(0, cells,0,0 )	
	
	
	
#func generate_world():
#	var noise = FastNoiseLite.new()
#	noise.seed=100
#	var cells =[]
#	for x in Map_SIZE.x:
#		for y in Map_SIZE.y:
#			var a= noise.get_noise_2d(x,y)
#			if a< LAND_CAP:
#				cells.append(Vector2(x,y))
#			else:
#				pass
#				#tilemap.set_cell(0,Vector2(x,y),1,Vector2(0,5),0)
#	tilemap.set_cells_terrain_connect(0, cells,0,0 )



#func generate_world():
#
#	var cells =[]
#	var cellmap=[]
#	for x in range(128):
#		cellmap.append([])
#		cellmap[x]=[]
#		for y in range(128):
#			cellmap[x].append([])
#			cellmap[x][y]=false
#
#	cellmap=initialiseMap(cellmap)
#	for x in range(0,numberOfSteps):
#		cellmap = doSimulationStep(cellmap)
#
#
#	for x in range(128):
#		for y in range(128):
#			if cellmap[x][y]==false:
#
#				tilemap.set_cell(0,Vector2(x,y),3,Vector2(0,0),0)
#			else:
#				cells.append(Vector2(x,y))
#	tilemap.set_cells_terrain_connect(0, cells,0,0 )
	
	
func initialiseMap(map):
	var rng = RandomNumberGenerator.new()

	var chanceToStartAlive = 0.45;
	for x in range(128):
		for y in range(128):
			if(rng.randf_range(0.0, 1.0) < chanceToStartAlive):
				map[x][y]=true
	return map;
func countAliveNeighbours(map,x,y):
	var count = 0
	for i in range(-1,2):
		for j in range(-1,2):	
			var neighbour_x = x+i
			var neighbour_y = y+j
			if(i == 0 && j == 0):
				pass
			elif(neighbour_x < 0 || neighbour_y < 0 || neighbour_x >= map.size()  || neighbour_y >= map[0].size() ):
				count = count + 1
			elif(map[neighbour_x][neighbour_y]):
				count = count + 1
	return count			
func doSimulationStep(oldMap):
	var newMap=[]
	for x in range(128):
		newMap.append([])
		newMap[x]=[]
		for y in range(128):
			newMap[x].append([])
			newMap[x][y]=false
			
	for x in range(0,oldMap.size() ):
		for y in range(0,oldMap[0].size() ):	
			var nbs = countAliveNeighbours(oldMap, x, y);
			
			if(oldMap[x][y]):
				if(nbs < deathLimit):
					newMap[x][y] = false
				else:
					newMap[x][y] = true
			else:
				if(nbs > birthLimit):
					newMap[x][y] = true
				else:
					newMap[x][y] = false		
	return newMap
	
	
func generate_world():
	var spawn = land.local_to_map(Vector2(0, 0))
	
	var moisture = FastNoiseLite.new()
	var temperature = FastNoiseLite.new()
	var altitude = FastNoiseLite.new()
	
	var cliff_cells = []
	var water_cells =[]
	
	moisture.seed = -686559431 #randi()
	temperature.seed = -175673643 #randi()
	altitude.seed = 778520879 #randi()
	altitude.frequency = 0.001
#	for  in MAP_SIZE.x:
#		for y in MAP_SIZE.y:
#			water_cells.append(Vector2(MAP_SIZE.x,MAP_SIZE.y))
#	water.set_cells_terrain_connect(0, water_cells,0,0 )
	for x in MAP_SIZE.x:
		for y in MAP_SIZE.y:
			var coords = Vector2i(spawn.x - MAP_SIZE.x / 2 + x, spawn.y - MAP_SIZE.y / 2 + y)
			var moist = moisture.get_noise_2d(coords.x, coords.y) * 10
			var temp = temperature.get_noise_2d(coords.x, coords.y) * 10
			var alt = altitude.get_noise_2d(coords.x, coords.y) * 150
			
			var atlas_coords = Vector2(3 if alt < 2 else round((moist + 10) / 5), round((temp + 10) / 5))
			
			#tilemap.set_cell(0, coords,4, atlas_coords, 0)
			#water.set_cell(0,coords,5,Vector2(2,1),0)
			if atlas_coords.x != 3:
				cliff_cells.append(coords)
	
	land.set_cells_terrain_connect(0, cliff_cells,0,0 )
	

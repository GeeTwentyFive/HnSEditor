extends MapObject


func _init() -> void:
	mesh = BoxMesh.new()
	
	data = {
		"Color R": 255.0,
		"Color G": 255.0,
		"Color B": 255.0
	}

@onready var material := StandardMaterial3D.new()
func _physics_process(_delta: float) -> void:
	if position.y < 0.0: position.y = 0.0
		
	data["Color R"] = roundf(data["Color R"])
	if data["Color R"] < 0.0: data["Color R"] = 0.0
	elif data["Color R"] > 255.0: data["Color R"] = 255.0
	material.albedo_color.r8 = int(data["Color R"])
	
	data["Color G"] = roundf(data["Color G"])
	if data["Color G"] < 0.0: data["Color G"] = 0.0
	elif data["Color G"] > 255.0: data["Color G"] = 255.0
	material.albedo_color.g8 = int(data["Color G"])
	
	data["Color B"] = roundf(data["Color B"])
	if data["Color B"] < 0.0: data["Color B"] = 0.0
	elif data["Color B"] > 255.0: data["Color B"] = 255.0
	material.albedo_color.b8 = int(data["Color B"])
	
	set_surface_override_material(0, material)

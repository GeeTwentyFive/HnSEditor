extends MapObject


func _init() -> void:
	mesh = BoxMesh.new()
	
	data = {
		"Color_R": 255.0,
		"Color_G": 255.0,
		"Color_B": 255.0
	}

@onready var material := StandardMaterial3D.new()
func _physics_process(_delta: float) -> void:
	if position.y < 0.0: position.y = 0.0
	
	data["Color_R"] = roundf(data["Color_R"])
	if data["Color_R"] < 0.0: data["Color_R"] = 0.0
	elif data["Color_R"] > 255.0: data["Color_R"] = 255.0
	material.albedo_color.r8 = int(data["Color_R"])
	
	data["Color_G"] = roundf(data["Color_G"])
	if data["Color_G"] < 0.0: data["Color_G"] = 0.0
	elif data["Color_G"] > 255.0: data["Color_G"] = 255.0
	material.albedo_color.g8 = int(data["Color_G"])
	
	data["Color_B"] = roundf(data["Color_B"])
	if data["Color_B"] < 0.0: data["Color_B"] = 0.0
	elif data["Color_B"] > 255.0: data["Color_B"] = 255.0
	material.albedo_color.b8 = int(data["Color_B"])
	
	set_surface_override_material(0, material)

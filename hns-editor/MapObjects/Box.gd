extends MapObject


func _init() -> void:
	mesh = BoxMesh.new()
	
	data = {
		"Color R": 1.0,
		"Color G": 1.0,
		"Color B": 1.0,
		"Color A": 1.0
	}

func _process(_delta: float) -> void:
	var material := StandardMaterial3D.new()
	material.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA_DEPTH_PRE_PASS
	material.albedo_color.r = data["Color R"]
	material.albedo_color.g = data["Color G"]
	material.albedo_color.b = data["Color B"]
	material.albedo_color.a = data["Color A"]
	set_surface_override_material(0, material)

extends MapObject


var light: OmniLight3D


func _init() -> void:
	var _mesh = SphereMesh.new()
	_mesh.height = 0.2
	_mesh.radius = 0.1
	mesh = _mesh
	
	cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	
	var material := StandardMaterial3D.new()
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	set_surface_override_material(0, material)
	
	light = OmniLight3D.new()
	light.omni_attenuation = 2.0
	light.shadow_enabled = true
	add_child(light)
	
	data = {
		"Brightness": light.light_energy,
		"Range": light.omni_range
	}

func _process(_delta: float) -> void:
	transform.basis = Basis() # Reset rotation & scaling
	
	light.light_energy = data["Brightness"]
	light.omni_range = data["Range"]

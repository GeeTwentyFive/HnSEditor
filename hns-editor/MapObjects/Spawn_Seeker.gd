extends MapObject


func _init() -> void:
	var _mesh = SphereMesh.new()
	mesh = _mesh
	
	cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	
	var material := StandardMaterial3D.new()
	material.albedo_color = Color(1.0, 0.0, 0.0)
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	set_surface_override_material(0, material)

func _process(_delta: float) -> void:
	transform.basis = Basis() # Reset rotation & scaling

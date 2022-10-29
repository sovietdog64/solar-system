extends MeshInstance

export (float) var x_length = 0
export (float) var z_width = 0
export (float) var velocity = 0

var t = 0
var x = 0
var z = 0
var b = 0

func orbit(a):
	translate(Vector3(-x, 0, -z))
	x = x_length * sin(a)
	z = z_width * cos(a)
	translate(Vector3(x, 0, z))
	
func _process(delta):
	b = PI * velocity * 0.5 * delta
	t += b
	orbit(t)

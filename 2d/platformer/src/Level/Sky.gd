extends ParallaxLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	# This file continuously fades and unfades the sky over time
	var INTEGER = 1
	var N = 1;
	while(INTEGER !=0):
		modulate = Color(N,N,N)
		yield(get_tree().create_timer(20.0), "timeout")
		for n in range(1,20):
			yield(get_tree().create_timer(5.0), "timeout")
			N = N * 0.9
			modulate = Color(N,N,N)
		yield(get_tree().create_timer(20.0), "timeout")
		for n in range(1,20):
			yield(get_tree().create_timer(5.0), "timeout")
			N = N / 0.9
			modulate = Color(N,N,N)
		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

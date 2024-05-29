extends ParallaxBackground

var scrooling_speed = 25

func _process(delta):
	scroll_offset.x -= scrooling_speed * delta
	

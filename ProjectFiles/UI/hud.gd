extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func level(num):
	$CurrentLevel.text = "Level: " + str(num)
	
func coins(num):
	$CoinsLabel.text = "Coins: " + str(num)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

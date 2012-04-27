from myro import *
init("/dev/rfcomm0")

threshold = 1

def navigate(threshold):
	obstacle = getObstacle()

	if obstacle[1] < threshold:
		move(.75,0)
	elif obstacle[0] <= obstacle[2]:
		move(.5,.5)
	else:
		move(.5,-.5)
	if obstacle[1] > 1000:
		move(0,.5)
	while getStall() == 1:
		move(-.75, 0)
	navigate(threshold)
	

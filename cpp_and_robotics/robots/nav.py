## Peter Lynn and Jay Bolton.
## Navigation program for scribbler robot.
## Summer 2010



from myro import *
init("/dev/rfcomm0")

threshold = 300
speed = .75
obsAv  = [0,0,0]

def cruise():
	return True, speed, 0

def placeTurn(obsAv):
	##beep(.1, 1200)
	if obsAv[0] < obsAv[2]:
		turnLeft(speed,.35)
		return False, 0, 0
	if obsAv[0] >= obsAv[2]:
		turnRight(speed,.35)
		return False, 0, 0

def cruiseTurn(obsAv):
	if (obsAv[0] > 200) or (obsAv[2] > 200):
		##beep(.1, 1000)
		if obsAv[0] < obsAv[2]:
			return True, speed, speed-.45
		if obsAv[0] >= obsAv[2]:
			return True, speed, -speed-.45
	return False, 0, 0

def reverseTurn(obsAv):
		##beep(.1, 1100);
		backward(speed, 1)
		return placeTurn(obsAv)

def avoid():
	obstacle = getObstacle()
##	print obsAv
	for i in range(3):
		obsAv[i] = int(obsAv[i]*.3 + obstacle[i]*.7)
	if getStall() == 1:
		rear = getIR()
		if not rear[0] or not rear[1]:
			return placeTurn(obsAv)
		return reverseTurn(obsAv)
	if obsAv[1] < threshold:
		return cruiseTurn(obsAv)
	if obsAv[1] > 800:
		return placeTurn(obsAv)	
	##beep(.1, 1300);
	return cruiseTurn(obsAv)
	
behaviors = [avoid, cruise]

def arbitrate():
	for behavior in behaviors:
		output, T, R = behavior()
		if output:
			 return T, R
		
def main():
	while True:
		T, R = arbitrate()
		move(T, R)
main()

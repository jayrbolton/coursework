from myro import *
init("/dev/rfcomm0")

def main(): 
	while True:
		l, r = getLine()
		white = 0
		lineDirection = False 
			 ## lineDirection keeps track of where the line used to be
			 ## only used when the robot is completely off the line
			 ## False: line was to the right
			 ## True: line was to the left
	##	if r == white and l == white:
	##		print "both"
	##		if not lineDirection: ## if line was to the left 
	##			move(0,-.5) ## sharp left
	##		else:
	##			move(0,.5) ## sharp right
		if (r == white) and (l != white):
			move(0,.5) ## arc right
			lineDirection = False
		if (l == white) and (r != white):
			move(0,-.5) ## arc left
			lineDirection = True
		print "one or neither"	
		move(-.5,0) ## forward


main()

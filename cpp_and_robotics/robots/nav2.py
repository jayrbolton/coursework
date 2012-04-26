from myro import *
initialize("/dev/rfcomm0")

# program settings...

cruiseSpeed = 0.6
turnSpeed = 0.5     # this is a left turn, -0.5 will be right turn

def main():
    while True:
       # get sensor values for left and right IR sensors
       L, R = getIR()
       L = 1 - L
       R = 1 - R
       
       # decide how to act based on sensors values
       if L and R:
          # obstacle straight ahead, turn (randomly)
          move(0, turnSpeed)
       elif L:
          # obstacle on left, turn right
          move(cruiseSpeed, -turnSpeed)
       elif R:
          # obstacle on right, turn left
          move(cruiseSpeed, turnSpeed)
       else:
          # no obstacles
          move(cruiseSpeed, 0)
main()


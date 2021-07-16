import sys
import termios
import copy


if len(sys.argv) < 2:
    print("Please only call me with 2 parameter")
    sys.exit()

if len(sys.argv) > 3:
    print("Please only call me with 2 parameter")
    sys.exit()


def maior(a,b):
  if (a > b):
     print(a + " é maior que " + b)
  elif (a == b):
     print ("São iguais!!")
  else:
     print(b + " é maior que " + a)
     sys.exit()

maior(sys.argv[1],sys.argv[2])

import sys, os
print ("Hello guys!!")
str = ""
try:
  while True:
    c = sys.stdin.read(1) # reads one byte at a time, similar to getchar()
    str += c
except KeyboardInterrupt:
  os.system('clear');
  print(str)
  sys.exit()

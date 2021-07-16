import sys, os


print ("Insira 2 números")
i = 0
num = [0,0]


while i<2:
  c = input()
  if (c.isdigit()):
    num[i]=c
    i=i+1
  else:
    print ("Não inseriste um número!")

os.system('python maior.py '+ num[0] + ' '+ num[1])
sys.exit()


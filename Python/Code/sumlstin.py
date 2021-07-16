import sys, os


print ("Insira números:")

soma = 0
lst = [-1]
i = 0

try:
  while True:
    c = input()
    if (c.isdigit()):
      soma = soma + int(c)
      lst.append(int(c))
    else:
      print ("Não inseriste um número velho!")
except KeyboardInterrupt:
  lst.remove(min(lst))
  print ("\nlst = [", end='')
  while (i<len(lst)):
    if (i==len(lst)-1):
      print("%d]" %lst[i])
    else:
      print("%d, " %lst[i], end='')
    i=i+1

  print("\nA soma total é: %d\n" % soma)
  sys.exit()




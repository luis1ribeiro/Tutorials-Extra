import sys, os


print ("Insira números:")

i = 0
i1 = 0
lst = [-1]
lst2 = [-1]

c = input()
lst[0] = int(c)


try:
  while True:
    c = input()
    if (c.isdigit()):
      lst.append(int(c))
    else:
      print ("Não inseriste um número velho!")
except KeyboardInterrupt:
  i = 0
  l = len(lst)
  lst2 = [-1] * len(lst)
  while (i<l):
    lst2[i] = min(lst)
    lst.remove(min(lst))
    i=i+1
  print("\nA lista ordenada fica assim: \n")
  print ("lst = [", end='')
  while (i1<len(lst2)):
    if (i1==len(lst2)-1):
      print("%d]" %lst2[i1])
    else:
      print("%d, " %lst2[i1], end='')
    i1=i1+1


  sys.exit()




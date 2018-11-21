#!/usr/bin/python -w -s

print 'The pez dispenser is empty.\n\n'

num = 0
pez = []

while num < 10:
	color = raw_input('Please give me a color: ')
	pez.append(color);
	num += 1

print(pez)

while(pez):
	print(pez.pop())
	print(pez)







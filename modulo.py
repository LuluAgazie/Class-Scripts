#This is a simple python script for calculating modulos using primitive root generators and remainders
p=raw_input("Enter prime number:")
g=raw_input("Enter generator:")
r=raw_input("Enter desired remainder:")
p=int(p)
g=int(g)
r=int(r)

for i in range(1,p):
        if (g**i)%p == r:
                print i
                print (g**i)%p

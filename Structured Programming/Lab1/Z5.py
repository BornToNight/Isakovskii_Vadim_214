import math

print("Введите k")
k=int(input())
m=1.8

x=math.e**(m*k)
c=math.cos(m)**2 +k**2
y=(x**2 + c**2)**(1/3)

print("x,y,c=",x,y,c)
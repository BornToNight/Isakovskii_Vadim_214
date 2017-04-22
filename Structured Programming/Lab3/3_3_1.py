import math

n=int(input())
x=float(input())
y=5
for i in range(1,n):
    x+=x**y/math.factorial(y)
    y+=4
print(x)
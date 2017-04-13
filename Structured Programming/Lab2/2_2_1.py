import math
print("Введите a и R")
a=float(input())
R=float(input())
a=a**2
R=math.pi*R**2
print("Площадь квадрата и круга =", a, R)
if a>R:
    print("Плозадь квадрата больше")
else:
    print("Площадь круга больше")

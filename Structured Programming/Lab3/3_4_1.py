import matplotlib.pyplot as plt
import numpy as np
x = 2.0

print('x       y')
while x <= 4:
    y = x**3+3*x**2-3
    print(round(x,3),"   ",round(y,3))
    x += 0.2


x=np.arange(-10,100,0.2)
plt.plot(x,x**3+3*x**2-3)
plt.grid(True) #Сетка
plt.show() #Показать график
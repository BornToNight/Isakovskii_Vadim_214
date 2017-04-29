import math
X=[]
Z=[]
for i in range(0,15):
    X.append(int(input()))
    Z.append(X[i])
Y=[]
for i in range(0,15):
    Y.append(math.cos((X[i])**2)+2.97*(math.log((i+1)**2))**2) #Тут ошибка из-за нуля, поэтому i+1
    Z.append(Y[i])

Z.sort(reverse=True)
for i in range(0,30):
    print(Z[i])
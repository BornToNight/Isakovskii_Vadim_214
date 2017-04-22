import math
W=0.0
k=int(input())

for i in range(1,k+1):
    W=W+((-1**i)*(i-3)**2)/math.factorial(i)
print(W)
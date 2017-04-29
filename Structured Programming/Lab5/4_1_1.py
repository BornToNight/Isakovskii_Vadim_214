array= [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
sum=0
sa=0
for i in range(0,15):
    sum+=array[i]
array2=[]
for i in range(0,15):
    array2.append(array[i] - sum/15)
    print(array2[i])
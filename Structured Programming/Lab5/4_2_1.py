X=[[1,2,3,4,5,6],[6,5,4,3,2,1],[9,8,7,6,5,4],[4,5,6,7,8,9],[1,2,3,4,5,6]]
sum=0
max=min=X[1][1]
for i in range(0,5):
    for j in range(0,6):
        print(X[i][j], end=' ')
    print()

print()
for i in range(0,6):
    for j in range(0,5):
        sum+=X[j][i]
    print('Среднее арифметическое',i+1,'столбца= ',sum/5)
    sum=0
print()
for i in range(0,5):
    for j in range(0,6):
        if X[i][j]>max:
            max=X[i][j]
        if X[i][j]<min:
            min=X[i][j]
    print('В',i+1, 'строке max=',max,'min=',min)
    max=min=X[i][0]
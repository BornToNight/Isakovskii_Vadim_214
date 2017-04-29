import random
N=int(input())
M=int(input())
A = [0] * N
for i in range(N):
    A[i] = [0] * M

for i in range(N):
    for j in range(M):
        A[i][j]=random.randint(1,10)
        print(A[i][j], end=' ')
    print()

#Я не понимаю смысл задачи. Поэтому я создал массив из 1-ых номеров строк
print()
B=[0]*N
for i in range(N):
    B[i]=A[i][0]
    print(B[i])

print()
#А тут просто номера строк (количество)
B2=[0] * N
for i in range(N):
    B2[i]=i+1
    print(B2[i])
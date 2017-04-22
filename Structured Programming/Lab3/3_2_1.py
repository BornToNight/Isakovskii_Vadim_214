x=int(input())
i=2
while i<x:
    s=0
    j=1
    while j<i:
        if i%j == 0:
            s += j
        j+=1
    if s == i:
        print(i)
    i+=1


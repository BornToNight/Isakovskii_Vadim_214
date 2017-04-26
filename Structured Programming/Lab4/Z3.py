a = 'лол лол rtr кек Кек кеК' #только 3 слова с строчными русскими буквами
b=(a.split(' '))
C='ёйцукенгшщзхъфывапролджэячсмитьбю'
d=''
q=0
k=0
for i in range (len(b)):
    d=b[i]
    q=0
    for i2 in range(len(d)):
        for i3 in range(len(C)):
            if d[i2] == C[i3]:
                q+=1
                if q==len(d):
                    k+=1
print(k)

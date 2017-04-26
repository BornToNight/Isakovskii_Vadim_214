a="privet kak delya?"
i=0
while i < len(a):
        if a[i] == ' ':
            a=a[:i] + ' ' + a[i:]
            i+=1
        i+=1
print(a)
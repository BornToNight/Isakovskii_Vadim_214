print("Введите продолжительность разговора и день недели")
d=int(input())
day=int(input())
if day>5:
    d=d-d*0.2
print(d)
def PrintPerfects(n):
    for i in range(1,n):
        if(IsPerfect(i)) : print(i)
def IsPerfect(ni):
    s  = 0
    for i in range(1, ni//2 + 1):
        if(ni % i == 0) : s += i
    return s == ni

PrintPerfects(30)
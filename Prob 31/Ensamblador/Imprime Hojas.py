def ImprimeHojas(L):
    n = len(L)
    for j in range(n // 2):
        if(L[j] == -1) : continue
        I = (j * 2 + 1)
        if(L[I] != -1) : continue
        R = (j * 2 + 2)
        if(L[R] != -1) : continue
        print (L[j])
    for i in range(n//2,len(L)):
        if(L[i] != -1) : print(L[i])

L = [1,2,6,-1,3,-1,-1,-1,-1,4,5,-1,-1,-1,-1]
ImprimeHojas(L)